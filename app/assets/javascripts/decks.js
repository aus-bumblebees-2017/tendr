var deck = new Deck();

$(document).ready(function() {
  console.log('ready')

  test = deck.fetchCards();

  // Swipe is not working right :(
  $("#swipe-card").on("swiperight",  function(e) {
    e.preventDefault();
    console.log("swipe right");
    $('#swipe-card').animateCss('bounceOutRight');
    setTimeout(function() {
      var lastCard = nextCard(deck)
      deck.updateHistory(lastCard, 1)
    }, 700);
  });
  $("#swipe-card").on("swipeleft", function(e) {
    e.preventDefault();
    console.log("swipe left");
    $('#swipe-card').animateCss('bounceOutLeft');
    setTimeout(function() {
      var lastCard = nextCard(deck)
      deck.updateHistory(lastCard, 3)
    }, 700);
  })
  // 1 - Save
  // 2 - Fav
  // 3 - Discard

  // Get buttons working first
  $('#dislike').on("click", function(e) {
    console.log("dislike!");
    $('#swipe-card').animateCss('bounceOutLeft');
    setTimeout(function() {
      var lastCard = nextCard(deck)
      deck.updateHistory(lastCard, 3)
    }, 700);
  });
  $('#like').on('click', function(e) {
    console.log('liked');
    $('#swipe-card').animateCss('bounceOutRight');
    setTimeout(function() {
      var lastCard = nextCard(deck)
      deck.updateHistory(lastCard, 1)
    }, 700);
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

  var newCard = deck.nextCard();
  $("#card-image").attr('src', newCard.url);
  $("#card-id").html(newCard.id);
  $("#card-name").html(newCard.name);
  $("#place-link").attr('href', '/places/show/' + newCard.place_id + '?food_id=' + newCard.id)
  $("#place-btn").attr('href', '/places/show/' + newCard.place_id + '?food_id=' + newCard.id)
  return newCard;
};


// // Test CODE
// var cards = [];
// for (var i = 0; i < 10; i++) {
//   cards.push(new Card(i, "Card " + i, "http://lorempixel.com/200/200/food/"));
// };

// var deck = new Deck(cards)
// console.log(cards);
// console.log(deck);

function deckCallBack(resp) {
  for (var i in resp) {
    deck.addCard(new Card(resp[i]["id"], resp[i]["name"], resp[i]["url"], resp[i]["place_id"]))
  }
}
