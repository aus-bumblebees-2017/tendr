var Deck = function(cards) {
  this.cards = cards;
};

Deck.prototype.addCard = function(card) {
  this.cards.push(card);
};

Deck.prototype.nextCard = function(card) {
  return this.cards.pop();
};
