console.log("working from script.js")

$(".vertical-nav li.nav-item").on("click", function() {
    $(this).siblings().each(function() {
        $(this).children(":first").removeClass("active");
    })
    $(this).children(":first").addClass("active");
})

$(".second-sticky li.nav-item").on("click", function() {
    $(this).siblings().each(function() {
        $(this).children(":first").removeClass("active");
    })
    $(this).children(":first").addClass("active");
})