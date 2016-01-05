Template.Auth.events
  'click #auth': (e, t) ->
    Meteor.loginWithPassword 'admin@admin.com', $('#password').val(), ->
      Router.go '/admin'