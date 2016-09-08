$(document).ready(function(){
	for (var x = 0; x < 16; x++) {
		for (var y = 0; y < 16; y++) {
			$("<div>").addClass("grid").appendTo("#container");
		}
	}
});