$(document).ready(function(){
	var yap = 0;
	var angle = 0;
	var clickable=true;
	
	var time = 5000;
		$('#wheel').click(function(){
		if(clickable==true){
			clickable=false;
			$('#wheel>.wheel').css('transform','rotate(0)');
			$.post('phpler/wheel.php', {}, function(r){
				r = JSON.parse(r);
				angle = 1080+r.angle;
				backangle = -16;
				yap=r.yap;
				puan=r.puan;
				hak=r.hak;
				var de = function(){
					clickable=true;
					$('.puann').text(puan);
					$('.hakk').text(hak);
				};
				
				if(yap==1){
					$('#wheel>.wheel').animateRotate(0, backangle, 500, function(){
						$('#wheel>.wheel').animateRotate(backangle, angle, time, de);						
					});
				}
			});
			}
		});
});
$.fn.animateRotate = function(startangle, angle, duration, easing, complete){
	
 var args = $.speed(duration, easing, complete);
 var step = args.step;
 return this.each(function(i, e){
  args.complete = $.proxy(args.complete, e);
  args.step = function(now){
   $.style(e, 'transform','rotate('+(startangle+now)+'deg)');
   if(step) return step.apply(e, arguments);
  };
		$({deg: 0}).animate({deg: angle}, args);
 });
};