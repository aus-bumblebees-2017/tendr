var Deck = function() {
  this.cards = [];
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
    data: "authenticity_token=" + $("meta[name=csrf-token]").attr("content")
    })
  .done(function(resp) {
    deckCallBack(resp);
  })
};

Deck.prototype.updateHistory = function(card, state) {
  // Send back the result of the card
  json_card = {
    card_id: card["id"],
    card_name: card["name"],
    card_state: state }
  $.ajax({
    method: 'PUT',
    url: '/decks/' + card["id"] + '/update',
    data: json_card
  })
};

