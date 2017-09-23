
var hostPath = "";

$(document).ready(function () {
    hostPath = $("#hostpath").val();
    //jQuery events starts
    $(document).on("click", ".main-view-check", function () {
        MaxCheckBoxFlips(this, 1);
    });

    $(document).on("click", ".main-modify-check", function () {
        MaxCheckBoxFlips(this, 2)
    });

    $(document).on("change", "#drpRoleDetails", function () {
        LoadScreenAccessDetailsOfRole($(this).val());
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

    //jQuery events ends

});

// Checkbox Flips on Screen Access starts
var MaxCheckBoxFlipsAllinTable  = function(checkboxObject) {
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

var MaxCheckBoxFlips  = function(checkboxObject, pos) {    
    var checkedValue = checkboxObject.checked;

    var tables = $(checkboxObject).closest("table");

    if (pos == 2) {
        tables.find("thead tr").each(function () {
            $(this).find("th:eq(" + (pos - 1) + ") input").each(function () {
                this.checked = checkedValue;
            });
        });        
    }

    tables.find("tbody tr").each(function () {

        if (pos == 2) {
            $(this).find("td:eq(" +(pos-1) + ") input").each(function () {
                this.checked = checkedValue;
            });
        }

        $(this).find("td:eq(" + pos + ") input").each(function () {
            this.checked = checkedValue;
        });

    });
}
// Checkbox Flips on Screen Access ends

var CreateRoleSuccess = function(response) {
    if (response.result) {
        alertify.alert("New Role '" + response.data.RoleName + "' has been created successfully");
    }
}

var CreateRoleFailure = function(response) {
    alertify.alert("New Role " + response.data.RoleName + "creation failed");
}

//Main functionalities of Role Starts
var LoadScreenAccessDetailsOfRole = function(roleID) {
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
                        $("#chkActivateDeactivate").prop("checked",true);
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

var UpdateRole = function() {
        
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

var RedirectCreateNewRole = function() {
    
    window.location.href = hostPath + "/UserManagement/ManageRole/Create";
}

//Main functionalities of Role Ends