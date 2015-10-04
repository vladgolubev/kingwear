Template.Basket.helpers
  items: ->
    basket = Basket.find()
    if basket.count() is 0 then false else basket
  sum: (price, count) ->
    (price * count).toFixed(2)
  overallSum: ->
    _.reduce(Basket.find().fetch(), (memo, value) ->
      memo + (value.price * value.count)
    , 0).toFixed(2)

Template.Basket.events
  'click .remove-from-basket': (event, tmpl) ->
    Basket.remove {_id: new Mongo.Collection.ObjectID @_id._str}
  'keyup .item-count-input': (event, tmpl) ->
    newItemCount = tmpl.$(event.target).val()
    Basket.update {_id: new Mongo.Collection.ObjectID @_id._str}, {
      $set: {
        count: newItemCount
      }
    }