var main = function() {
	$('.bubble').animate({
		top: '0px'
	}, 900, function () {
		$('.bubble2').fadeIn(2500);
		$('.btn-default').fadeIn(2500);
	    });
	
	$('.btn-default').click(function() {
		document.getElementById('bub').style.display = "block"
		$('.bubble3').animate({
			top: '150px'
		}, 2000, function() {
			$('.bubble4').fadeIn(2500);
			$('.btn-default2').fadeIn(2500);
		});
	});

	$("#input").keyup( function() {
		var input = $("#input").val();
	});
	
	$('.btn-default3').click(function() {
		$('.menu').animate({
			left: '0px'
		}, 2000);
	});
};

var vall = function()
{
	var v = $('.controls').find(":selected").val();
	document.getElementById('.boxx').innerHTML = v;
};

$(document).ready(main);
