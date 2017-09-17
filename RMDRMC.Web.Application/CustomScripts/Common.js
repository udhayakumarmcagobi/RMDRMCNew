$(document).ready(function () {

    // Enable tooltips
    $(".tooltip-enable").tooltip();

    $(".datepicker").datepicker({
        format: 'mm/dd/yyyy',
        autoclose: true,
        todayBtn: 'linked'
    }).on("changeDate", function (e) {
        $(this).datepicker('hide');
    });

    $("#ChangeToggle").click(function () {

    });
    //Menu Icon Change
    $(".list-group-item").click(function () {
        if ($(this).find("span").is(".dropdown")) {
            $(this).find("span").removeClass("dropdown").addClass("dropup");
        }
        else {
            $(this).find("span").removeClass("dropup").addClass("dropdown");
        }
    });
    //Menu Hover
    $('ul.nav li.dropdown').hover(function () {
        if ($(window).width() > 768) {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }
    }, function () {
        if ($(window).width() > 768) {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        }
    });

    var WrapperPadding = function () {

        var navHeight = $('nav').height();
        //alert("nav Height: " + navHeight);
        var userInfoHeight = $('div.divUserNameRolefixed').height();
        //alert("User Info Height: " + userInfoHeight);
        //alert("total height " + navHeight + "+" + userInfoHeight + "=")
        //alert(navHeight + userInfoHeight);
        var totalHeaderHeight = navHeight + userInfoHeight;


        var footerHeight = $('footer').height();
        //alert(" footer height: " + footerHeight);
        $('div.wrapper').css({ 'padding-top': totalHeaderHeight, 'padding-bottom': footerHeight });

        $('div.divUserNameRolefixed').css({ 'top': navHeight });
    };

    didResize = false;
    WrapperPadding();
    $(window).resize(function () {
        didResize = true;
    });
    setInterval(function () {
        if (didResize) {

            didResize = false;
            WrapperPadding();
        }
    }, 250);

});

// To show Progress bar
function ShowProgressbar() {
    $("#divLoading").modal("show");
    $("body").removeClass("modal-open");
}

//To hide Progress bar
function HideProgressbar() {
    $("#divLoading").modal("hide");
}

