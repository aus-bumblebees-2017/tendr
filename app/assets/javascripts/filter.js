
$(document).ready(function() {
	$(".liked").on("click", function(e) {
		e.preventDefault()
		$(".favs").toggle()
	})
	$(".disliked").on("click", function(e) {
		e.preventDefault()
		$(".dislike").toggle()
	})
})