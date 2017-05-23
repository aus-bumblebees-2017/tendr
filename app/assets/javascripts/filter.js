
$(document).ready(function() {
	$(".liked").on("click", function(e) {
		e.preventDefault()
		$(".favs").slideToggle("slow", function() {

		})
	})
	$(".disliked").on("click", function(e) {
		e.preventDefault()
		$(".dislike").slideToggle("slow", function() {
			
		})
	})
})