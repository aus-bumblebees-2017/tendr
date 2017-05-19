$(document).ready(function() {
  console.log('ready')
  var deck = new Deck();
  test = deck.fetchCards();

  // Swipe is not working right :(
  $("#swipe-card").on("swiperight",  function() {
    console.log("swipe right");
  });
  $("#swipe-card").on("swipeleft", function() {
    console.log("swipe left");
  })


  // Get buttons working first
  $('#hate').on("click", function(e) {
    console.log("hate!");
    $('#swipe-card').animateCss('bounceOutLeft');
    var test = nextCard(deck)
  });
  $('#like').on('click', function(e) {
    console.log('liked');
    $('#swipe-card').animateCss('bounceOutRight');
    var test = nextCard(deck);
    console.log(deck.cards.length)
  });



// From: https://github.com/daneden/animate.css
$.fn.extend({
    animateCss: function (animationName) {
        var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass('animated ' + animationName);
        });
    }
});
});

function nextCard(deck) {
  var newCards = {};
  if (deck.cards.length < 2) {
    cards = deck.fetchCards();
    for (var i in cards) {
      deck.addCard(cards[i]);
    };
  };
  var next = deck.nextCard();
  $("#card-image").attr('src', next.url);
  $("#card-id").html(next.id);
  $("#card-name").html(next.name);
  return deck;
};


// // Test CODE
// var cards = [];
// for (var i = 0; i < 10; i++) {
//   cards.push(new Card(i, "Card " + i, "http://lorempixel.com/200/200/food/"));
// };

// var deck = new Deck(cards)
// console.log(cards);
// console.log(deck);
