// Skillbar animation script
jQuery(document).ready(function(){
	// Author code here
	'use strict';
	jQuery('.skillbar').each(function(){
		jQuery(this).find('.skillbar-bar').animate({
			width:jQuery(this).attr('data-percent') // Fill color perticular width
		},6000);
	});
});

//Scroll bottom to top
$(window).scroll(function() {
	// Author code here
	'use strict';
	if ($(this).scrollTop() >= 70) {        // If page is scrolled more than 70px
		$('#return-to-top').fadeIn(200);    // Fade in the arrow
	} else {
		$('#return-to-top').fadeOut(200);   // Else fade out the arrow
	}
	return false;
});
$('#return-to-top').on('click',function() {      // When arrow is clicked
	// Author code here
	'use strict';
	$('body,html').animate({
		scrollTop : 0                       // Scroll to top of body
	}, 500);
	return false;
});
