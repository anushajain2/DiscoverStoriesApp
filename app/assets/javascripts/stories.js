var main = function() {
	$('.box1').click(function() {
		$(this).addClass('clicked');
		var circ = document.getElementById('circ');
		circ.parentNode.removeChild(circ);

		document.getElementById('smil').style.visibility = "visible"
        
	});

	$('.box2').click(function() {
		$(this).addClass('clicked2');
		var blank = document.getElementById('blank');
		blank.parentNode.removeChild(blank);

		document.getElementById('star').style.visibility = "visible"
        
	});

	$('.box3').click(function() {
		$(this).addClass('clicked3');
	});


};

$(document).ready(main);