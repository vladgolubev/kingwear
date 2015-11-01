Template.Delivery.helpers
  items: ->
    Basket.find()
  overallSum: ->
    _.reduce(Basket.find().fetch(), (memo, value) ->
      memo + (value.price * value.count)
    , 0).toFixed(2)

Template.Delivery.events
  'click #confirm-order': (event, tmpl) ->
    order = {
      name: tmpl.$('#name').val()
      city: tmpl.$('#city').val()
      novaPoshta: tmpl.$('#nova-poshta').val()
      phone: tmpl.$('#phone').val()
      basket: _.map(Basket.find().fetch(), (item) ->
        name: item.name
        quantity: item.count
        size: item.size
      )
    }

    Meteor.call 'saveOrder', order, (err, result) ->
      if not err
        Router.go '/success'