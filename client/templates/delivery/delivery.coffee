Template.Delivery.helpers
  items: ->
    Basket.find()
  overallSum: ->
    _.reduce(Basket.find().fetch(), (memo, value) ->
      memo + (value.price * value.count)
    , 0).toFixed(2)