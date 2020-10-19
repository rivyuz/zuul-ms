$(".burger-img").on('click', function () {
	removeMasks();
	hideDialogs();
	hidePopups();
    addSoftMask('Click to close', false);
    $(".burger-links").toggle();
    if ($(".burger-links").is(":hidden")) {
    	
    }
});

/*don't delete this - needed to bind $( imgTag_menuBar ) with toggle functionality - login.js -> $( imgTag_menuBar ).on( "click", burgerMenuToggle );*/
function burgerMenuToggle() {
	hideDialogs();
	hidePopups();
	addSoftMask('Thank you for your time', false);
	$(".burger-links").toggle();
	if ($(".burger-links").is(":hidden")) {
		
	}
}