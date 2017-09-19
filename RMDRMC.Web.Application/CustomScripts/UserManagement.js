$(document).ready(function () {

    $(document).on("click", ".main-view-check", function () {
        MaxCheckBoxFlips(this, 1);      
    });

    $(document).on("click", ".main-modify-check", function () {
        MaxCheckBoxFlips(this, 2)
    });

    //$(document).on("change", "#drpRoleDetails", function () {                    
    //    var hostPath = $("#hostpath").val();
    //    var roleID = $('#drpRoleDetails').val();

    //    if (roleID != "") {
    //            var path = $("#hostpath").val();
    //            $.ajax({
    //                async: true,
    //                type: "Get",
    //                Content: "application/json",
    //                data: { 'roleID': roleID },
    //                url: hostPath + '/ZDES/Reference/GetProductHierarchyLegacyCodes/',
    //                // dataType: "Html",
    //                beforeSend: function () {
    //                    ShowProgressbar();
    //                },
    //                success: function (jsonResult) {
    //                    if (jsonResult != "") {
    //                        if (jsonResult.result) {
    //                            OnSelectionSingle(jsonResult.response);
    //                            $("div.modal-backdrop").remove();
    //                        }
    //                        else {
    //                            //$("#divProductHierarchy .modal-dialog .modal-content").html(jsonResult);
    //                            $("#divProductHierarchy").modal("show");

    //                            $('#divProductHierachyDetails').html(jsonResult);

    //                        }
    //                    }
    //                    else {
    //                        alertify.alert("Please enter a valid Assembly/Component Type.", function () {

    //                            $("#txtLegacyCode").val("");
    //                        });
    //                    }
    //                    HideProgressbar();
    //                },
    //                error: function (err) {
    //                    HideProgressbar();
    //                    alertify.set({ labels: { ok: "OK" } });
    //                    alertify.alert("An error has occurred while processing your request in Reference.GetProductHierarchyLegacyCodes of txtLegacyCode change.  Please report this issue to application support.", function () {
    //                        $("#divErrorMessage").modal("show");
    //                        $("#divErrorMessageDetails").html(err.responseText);
    //                    });
    //                },
    //                complete: function () {
    //                    //$("div.modal-backdrop").remove();
    //                    HideProgressbar();
    //                }
    //            });
    //        }
    //    });    

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
