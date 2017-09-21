$(document).ready(function () {

    $(document).on("click", ".main-view-check", function () {
        MaxCheckBoxFlips(this, 1);      
    });

    $(document).on("click", ".main-modify-check", function () {
        MaxCheckBoxFlips(this, 2)
    });

    $(document).on("change", "#drpRoleDetails", function () {
        LoadScreenAccessDetailsOfRole($(this).val());
    });

});

function MaxCheckBoxFlips(checkboxObject, pos) {
    var checkedValue = checkboxObject.checked;

    var tables = $(checkboxObject).closest("table");

    tables.find("tbody tr").each(function () {

        $(this).find("td:eq(" + pos + ") input").each(function () {
            this.checked = checkedValue;
        });

    });
}

function CreateRoleSuccess(response) {
    if(response.result) {
        alertify.alert("New Role "+response.data.RoleName+" has been created successfully");
     }
}

function CreateRoleFailure(response) {
    alertify.alert("New Role " + response.data.RoleName + "creation failed");
}

function LoadScreenAccessDetailsOfRole(roleID) {
    var hostPath = $("#hostpath").val();
    if (roleID != "") {
        $.ajax({
            async: true,
            type: "Get",
            cache: false,
            data: { 'roleID': roleID },
            dataType: "html",
            url: hostPath + '/UserManagement/ManageRole/GetScreenAccessByRoleID/',
            // dataType: "Html",
            beforeSend: function () {
                ShowProgressbar();
            },
            success: function (jsonResult) {
                if (jsonResult != "") {
                    $("#roleacessDetails").html("");
                    $("#roleacessDetails").html(jsonResult);
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

function RedirectCreateNewRole() {
    var hostPath = $("#hostpath").val();
    window.location.href = hostPath + "/UserManagement/ManageRole/Create";
}