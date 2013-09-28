$(window).load(function(){
	
	$(window).scroll(function(){
		if($(window).scrollTop()>110) {
			$("nav#main").css({
				'position':'fixed',
				'top':'0px',
				'border-bottom':'1px solid #444',
				'left':-$(window).scrollLeft()
			});
		} else {
			$("nav#main").css({
				'position':'absolute',
				'top':'110px',
				'border-bottom':'0px solid #444',
				'left':'0px'
			});
		}		
	});
	
	$(window).resize(function(){		
			$("nav#main").css({
				'left':-$(window).scrollLeft()
			});
	});
	
	if($(window).scrollTop()>110) {
		$("nav#main").css({
			'position':'fixed',
			'top':'0px',
			'border-bottom':'1px solid #444'
		});
	} else {
		$("nav#main").css({
			'position':'absolute',
			'top':'110px',
			'border-bottom':'0px solid #444'
		});
	}
	
	if($(window).scrollLeft()>0) {
		$("nav#main").css({
			'left':-$(window).scrollLeft()
		});
	}
	
	if (window.navigator.userAgent.match('Mobile')) $("nav#main").css({
			'width':$(window).width()
		});
	
	$('#pC').css({'visibility':'visible', 'opacity':0}).animate({'opacity':'1'});
	
});