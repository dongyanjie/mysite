
$(document).ready(function () {
    if (typeof localStorage.bgColor != 'undefined') {
        $("body").css("background", localStorage.bgColor)
    }
});
$(".pfysA").click(function () {
    $("body").css("background", $(this).attr("name"));
    localStorage.bgColor = $(this).attr("name")
});