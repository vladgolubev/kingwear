Template.Auth.events
  'click #auth': (e, t) ->
    Meteor.loginWithPassword 'admin@kingwear.ml', $('#password').val(), ->
      Router.go '/admin'