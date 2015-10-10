Router.configure
  layoutTemplate: 'Layout'
  waitOn: ->
    @subscribe 'items'
  data: ->
    Items.find()

Router.route '/',
  template: 'Home'
  fastRender: true

Router.route '/category/:category',
  template: 'Category'
  fastRender: true

Router.route '/item/:item',
  template: 'ItemPage'
  fastRender: true

Router.route '/basket',
  template: 'Basket'
  fastRender: true

Router.route '/delivery',
  template: 'Delivery'
  fastRender: true

Router.route '/success',
  template: 'Success'
  fastRender: true
