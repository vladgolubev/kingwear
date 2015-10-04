Template.Basket.helpers
  items: ->
    basket = Basket.find()
    if basket.count() is 0 then false else basket

Template.Basket.events
  'click .remove-from-basket': (event, tmpl) ->
    itemToRemove = tmpl.$(event.target).data 'id'
    Basket.remove _id: new Mongo.Collection.ObjectID itemToRemove