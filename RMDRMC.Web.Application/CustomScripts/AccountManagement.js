
var hostPath = "";

$(document).ready(function () { 

});


var LoginSuccess = function (response) {
    if (response.result) {
        location.href = "/Home";
    }
    else {
        alertify.alert(response.data);
    }
}

var LoginFailure = function (response) {
    alertify.alert("Login Failed");
}
