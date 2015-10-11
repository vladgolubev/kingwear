Router.configure
  layoutTemplate: 'Layout'
  loadingTemplate: 'Loading'
  waitOn: ->
    @subscribe 'items'
  data: ->
    Items.find()

Router.route '/',
  template: 'Home'

Router.route '/category/:category',
  template: 'Category'

Router.route '/item/:item',
  template: 'ItemPage'

Router.route '/basket',
  template: 'Basket'

Router.route '/delivery',
  template: 'Delivery'

Router.route '/success',
  template: 'Success'
