(function ($) {	
    function a() {
        var a = d.val(), b = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>\\\\/?~锛丂#锟モ€︹€�&*锛堬級鈥斺€攟{}銆愩€戔€橈紱锛氣€濃€�'銆傦紝銆侊紵]", "g");
        d.val(a.replace(b, "").replace(/(^\s+)|(\s+$)/g, " "))
    }
    function b() {
        a();
        var b = d.val();
        return "" == b || " " == b ? void d.val("") : (console.log(b), location.href = "findproduct?keyword=" + b, !1)
    }
    var c = $("#J-top-search"), d = c.find(".keywords"), e = c.parent().find(".btn-submit");
  
    e.on("click", function() {
        b()
    }), d.on("focus", function() {
        $(document).on("keypress", function(a) {
            13 == a.which && b()
        })
    })
}(jQuery));