$(function($) {
	var doc = $(document),
		dl = $(".li1"),
		dc = $(".li2");
	var sum = dl.width() + dc.width() +
	$(".lab1").mousedown(function(e) {
		var me = $(this);
		var deltaX = e.clientX-(parseFloat(me.css("left")) || parseFloat(me.prop("clientLeft")));
		doc.mousemove(function(e) {
			var lt = e.clientX - deltaX;
			lt = lt < 100 ? 100 : lt;
			lt = lt > 400 ? 400 : lt;
			me.css("left", lt + "px");
			dl.width(lt);
			dc.width(sum - lt - me.width());
		});
	}).width();

	doc.mouseup(function() {
		doc.unbind("mousemove");
	});
	doc[0].ondragstart = doc[0].onselectstart = function() {
		return false;
	};
});