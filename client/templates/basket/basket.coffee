Template.Basket.helpers
  items: ->
    basket = Basket.find()
    if basket.count() is 0 then false else basket