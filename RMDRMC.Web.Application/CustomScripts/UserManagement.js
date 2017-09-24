
var hostPath = "";

$(document).ready(function () {
    hostPath = $("#hostpath").val();
    //jQuery events starts
    $(document).on("click", ".main-view-check", function () {
        MaxCheckBoxFlips(this, 1);
    });

    $(document).on("click", ".main-modify-check", function () {
        MaxCheckBoxFlips(this, 2);
    });

    $(document).on("change", "#drpRoleDetails", function () {
        LoadScreenAccessDetailsOfRole($(this).val());

        var hidRoleID = $("#hidRoleIDofUser");

        if (hidRoleID.length > 0) {            
            hidRoleID.val($("#drpRoleDetails").val());
        }
    });

    $(document).on("change", ".form-check-check-all", function () {
        MaxCheckBoxFlipsAllinTable(this);
    });

    $(document).on("change", "#chkActivateDeactivate", function () {
        if ($(this).is(":checked")) {
            $("#IsActive").val("true");
        }
        else {
            $("#IsActive").val("false");
        }
    });

    $(document).on("click", ".btnSaveUsers", function () {
        var validateResult = ValidateCreateUser();

        return validateResult;
    });

    $(document).on("keyup", "#txtFirstName", function () {

        var prefixFirstName = $(this).val();
        
        var contentHtml = SearchUserResults(prefixFirstName, "sub");

        $("#usersearchresults").html(contentHtml);
    });
    
    //jQuery events ends

});

// Checkbox Flips on Screen Access starts
var MaxCheckBoxFlipsAllinTable = function (checkboxObject) {
    var checkedValue = checkboxObject.checked;
    var idvalue = $(checkboxObject).attr("data-html");

    var tables = $("#" + idvalue);

    tables.find("tbody tr").each(function () {

        $(this).find("td input").each(function () {
            this.checked = checkedValue;
        });

    });

    tables.find("thead tr").each(function () {
        $(this).find("th input").each(function () {
            this.checked = checkedValue;
        });
    });
}

var MaxCheckBoxFlips = function (checkboxObject, pos) {
    var checkedValue = checkboxObject.checked;

    var tables = $(checkboxObject).closest("table");

    if (pos == 2 && checkedValue) {
        tables.find("thead tr").each(function () {
            $(this).find("th:eq(" + (pos - 1) + ") input").each(function () {
                this.checked = checkedValue;
            });
        });
    }

    if (pos == 1 && !checkedValue) {
        tables.find("thead tr").each(function () {
            $(this).find("th:eq(" + (pos + 1) + ") input").each(function () {
                this.checked = checkedValue;
            });
        });
    }

    tables.find("tbody tr").each(function () {

        if (pos == 2 && checkedValue) {
            $(this).find("td:eq(" + (pos - 1) + ") input").each(function () {
                this.checked = checkedValue;
            });
        }

        if (pos == 1 && !checkedValue) {
            $(this).find("td:eq(" + (pos + 1) + ") input").each(function () {
                this.checked = checkedValue;
            });
        }

        $(this).find("td:eq(" + pos + ") input").each(function () {
            this.checked = checkedValue;
        });

    });
}
// Checkbox Flips on Screen Access ends

var CreateRoleSuccess = function (response) {
    if (response.result) {
        alertify.alert("New Role '" + response.data.RoleName + "' has been created successfully");
    }
}

var CreateRoleFailure = function (response) {
    alertify.alert("New Role " + response.data.RoleName + "creation failed");
}

var CreateUserSuccess = function (response) {
    if (response.result) {
        alertify.alert("New user '" + response.data.LoginID + "' has been created successfully");
    }
    else {
        alertify.alert("New user " + response.data.LoginID + "creation failed");
    }
}

var CreateUserFailure = function (response) {
    alertify.alert("New user " + response.data.LoginID + "creation failed");
}

//Main functionalities of Role Starts
var LoadScreenAccessDetailsOfRole = function (roleID) {
    if (roleID != "") {
        $.ajax({
            async: true,
            type: "Get",
            cache: false,
            data: { 'roleID': roleID },
            dataType: "html",
            url: hostPath + '/UserManagement/ManageRole/GetScreenAccessByRoleID/',
            beforeSend: function () {
                ShowProgressbar();
            },
            success: function (jsonResult) {
                if (jsonResult != "") {
                    $("#roleacessDetails").html(jsonResult);

                    var isActive = $("#IsActive").val();

                    if (isActive == "True") {
                        $("#chkActivateDeactivate").prop("checked", true);
                    }
                    else {
                        $("#chkActivateDeactivate").prop("checked", false);
                    }
                }
            },
            error: function (err) {
                $("#roleacessDetails").html("");
                HideProgressbar();
            },
            complete: function () {
                HideProgressbar();
            }
        });
    }
}

var UpdateRole = function () {

    var roleID = $("#drpRoleDetails").val();

    var roleData = $("#rolewithaccess").serialize();

    if (roleID == "") {
        alertify.alert("select role to update");
        return;
    }

    $.ajax({
        async: true,
        type: "Post",
        cache: false,
        data: roleData,
        url: hostPath + '/UserManagement/ManageRole/Update/',
        beforeSend: function () {
            ShowProgressbar();
        },
        success: function (jsonResult) {
            if (jsonResult.result) {
                alertify.alert("Role has been updated successfully");
            }
        },
        error: function (err) {
            alertify.alert("Role update failed");
            $("#roleacessDetails").html("");

            HideProgressbar();
        },
        complete: function () {
            HideProgressbar();
        }
    });
}

var DeleteRole = function () {
    alertify.confirm("Are you sure want to delete this role?",
 function (e) {
     if (e) {
         DeleteRoleConfirmed();
     }
 });
}

var DeleteRoleConfirmed = function () {

    var roleID = $("#drpRoleDetails").val();

    if (roleID == "") {
        alertify.alert("select role to update");
        return;
    }

    $.ajax({
        async: true,
        type: "Post",
        cache: false,
        data: { "roleID": roleID },
        url: hostPath + '/UserManagement/ManageRole/Delete/',
        beforeSend: function () {
            ShowProgressbar();
        },
        success: function (jsonResult) {
            if (jsonResult.result) {
                alertify.alert("Role has been deleted successfully");
            }
        },
        error: function (err) {
            alertify.alert("Role delete failed");
            $("#roleacessDetails").html("");

            HideProgressbar();
        },
        complete: function () {
            HideProgressbar();
        }
    });
}

var RedirectCreateNewRole = function () {

    window.location.href = hostPath + "/UserManagement/ManageRole/Create";
}

//Main functionalities of Role Ends

// User screen validation Starts

var ValidateCreateUser = function () {    
    var firstName = $("#txtFirstName").val().trim()
    var lastName = $("#txtLastName").val().trim();

    if(firstName == "" && lastName == "") {
        alertify.alert("First Name or Last Name is Mandatory");
        return false;
    }

    var mobile = $("#txtMobile").val().trim()
    var phone = $("#txtPhone").val().trim();

    if (mobile == "" && phone == "") {
        alertify.alert("Mobile or Phone is Mandatory");
        return false;
    }

    var password = $("#txtPassword").val().trim()
    var confirmPassword = $("#txtConfirmPassword").val().trim();

    if (password != confirmPassword) {
        alertify.alert("Password and Confirm Password does not match");
        return false;
    }

    var roleID = $("#hidRoleIDofUser").val();

    if (roleID == "" || roleID <= 0) {
        alertify.alert("Select atleast one role.");
        return false;
    }
    
    return true;
}

var SearchUsers = function () {

    var contentHtml = SearchUserResults("", "main");

    $("#divModalWindow").modal("show");
    $("span.divModalheadline").html("User Search Results");
    $("#divModalWindowContent").html(contentHtml);

}

var SearchUserResults = function (firstNamePrefix, popup) {

    var contentHtml = "";

    $.ajax({
        async: false,
        type: "Post",
        cache: false,
        data: { "firstName": firstNamePrefix, "popup" : popup },
        url: hostPath + '/UserManagement/ManageUser/Search',
        dataType: "html",
        beforeSend: function () {
            //ShowProgressbar();
        },
        success: function (jsonResult) {            
            contentHtml = jsonResult;
        },
        error: function (err) {
            $("#divModalWindow").modal("hide");
            //HideProgressbar();
        },
        complete: function () {
            //HideProgressbar();
        }
    });

    return contentHtml;
}

// User Screen validation Ends