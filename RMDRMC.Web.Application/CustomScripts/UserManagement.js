$(document).ready(function () {

    $(document).on("click", ".main-view-check", function () {
        MaxCheckBoxFlips(this, 1);
      
    });

    $(document).on("click", ".main-modify-check", function () {
        MaxCheckBoxFlips(this, 2)

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

function CreateRole() {
    var createRoleData = $("#FormCreateRole").serialize();
    var hostPath = $("#hostpath").val();

    $.ajax({
        async: true,
        type: "Post",
        data: createRoleData,
        url: hostPath + '/UserManagement/ManageRole/Create/',
        cache: false,
        beforeSend: function () {

        },
        success: function (jsonResult) {

        },
        error: function (err) {

        },
        complete: function () {

        }
    });
}

function CreateRoleSuccess(response) {
    alert("success");
}

function CreateRoleFailure(response) {
    alert("Failed");
}
