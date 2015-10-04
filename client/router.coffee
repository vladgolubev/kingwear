Router.route '/',
  template: 'Home'
  waitOn: ->
    @subscribe 'items'
  data: ->
    Items.find()