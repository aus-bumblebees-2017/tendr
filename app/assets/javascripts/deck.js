var Deck = function(cards = []) {
  this.cards = cards;
};

Deck.prototype.addCard = function(card) {
  this.cards.push(card);
};

Deck.prototype.nextCard = function(card) {
  return this.cards.pop();
};

Deck.prototype.fetchCards = function() {
  var request = $.ajax({
    method: 'POST',
    url: '/decks/new',
    data: $("input").serialize()
    })
  .done(function(resp) {
    deckCallBack(resp);
  })
}

