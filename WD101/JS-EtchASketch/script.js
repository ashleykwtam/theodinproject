$(document).ready(function(){
	initialGrid();

	$(".grid").hover(function(){
		$(this).addClass("highlight");
	});

	$(".cleargrid").click(function(){
		$(".grid").removeClass("highlight");
	});

	$(".newgrid").click(function(){
		$(".grid").removeClass("highlight");
		newGrid();
	});
});

function initialGrid() {
		for (var x = 0; x < 64; x++) {
		for (var y = 0; y < 64; y++) {
			$("<div>").addClass("grid").appendTo("#container");
		}
	}

}

function newGrid() {

	var newgrid = prompt("Please enter new size", "16");

	var newheight = (600 / newgrid) - 3
	var newwidth = (600 / newgrid) - 3

	if (newgrid < 65) {
		$(".grid").css("height", newheight);
		$(".grid").css("width", newwidth);
	} else {
		alert("I'm sorry, that number is too big. Enter something smaller.")
	}
} 