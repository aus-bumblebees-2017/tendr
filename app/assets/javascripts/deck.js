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
};

Deck.prototype.updateHistory = function(card, state) {
  // Send back the result of the card
  json_card = {
    id: card["id"],
    name: card["name"],
    state: state }
  $.ajax({
    method: 'PUT',
    url: '/decks/' + card["id"] + '/update',
    data: json_card
  })
};

