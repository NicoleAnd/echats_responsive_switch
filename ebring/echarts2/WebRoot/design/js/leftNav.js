$(document).ready(function() {
    var wheight = $(window).height()-145;
    $('#myscroll').css('height', wheight);

    var blw = $("#myscrollbox li").height();

    //获取单个子元素所需高度
    var liArr = $("#myscrollbox ul").children("li");
    //获取子元素数量
    var mysw = $("#myscroll").height();
    //获取子元素所在区域高度
    var mus = parseInt(wheight / blw);
    //计算出需要显示的子元素的数量
    var length = liArr.length - mus;
    //计算子元素可移动次数（被隐藏的子元素数量）
    //alert(blw+'、'+liArr.length+'、'+mysw+'、'+mus+'、'+length);
    var i = 0
    $("#down").click(function() {
        // alert(blw+'、'+liArr.length+'、'+mysw+'、'+mus+'、'+length);
        i++
        //点击i加1
        if (i < length) {
            //$("#myscrollbox").css("top", -(blw * i));
            $("#myscrollbox").animate({top:-(blw * i)});
            //子元素集合向左移动，距离为子元素的宽度乘以i。
        } else {
            i = length;
            $("#myscrollbox").animate({top:-(blw * length)});
            //超出可移动范围后点击不再移动。最后几个隐藏的元素显示时i数值固定位已经移走的子元素数量。
        }
    });
    $("#top").click(function() {
        i--
        //点击i减1
        if (i >= 0) {
            $("#myscrollbox").animate({top:-(blw * i)});
            //子元素集合向右移动，距离为子元素的宽度乘以i。
        } else {
            i = 0;
            $("#myscrollbox").animate({top:'0'});
            //超出可移动范围后点击不再移动。最前几个子元素被显示时i为0。
        }
    });
    $("#myscrollbox li").click(function() {
	    $("#myscrollbox li").eq($(this).index()).addClass("navactive").siblings().removeClass("navactive");
	});
});