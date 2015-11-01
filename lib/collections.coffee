@Items = new Mongo.Collection 'items'
@Orders = new Mongo.Collection 'orders'

Schemas = {}

Schemas.Items = new SimpleSchema({
  category:
    type: String
  name:
    type: String
  description:
    type: String
  features:
    type: [String]
  care:
    type: [String]
  material:
    type: String
  photos:
    type: [String]
  mainPhoto:
    type: String
  price:
    type: Number
  available:
    type: Boolean
  sizes:
    type: [String]
})

Schemas.Orders = new SimpleSchema({
  name:
    type: String
  city:
    type: String
  novaPoshta:
    type: String
  phone:
    type: String
  basket:
    type: [{
      name:
        type: String
      quantity:
        type: String
      size:
        type: String
    }]
})

Items.attachSchema Schemas.Items
Orders.attachSchema Schemas.Orders