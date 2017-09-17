$(document).ready(function () {

});

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

