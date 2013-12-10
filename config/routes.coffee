index = r("/routes/index")
templates = r('/routes/templates')
users = r('/routes/users')
themes = r('/routes/themes')

auth = r("/lib/auth")


module.exports = (app) ->
  app.get "/", auth, index
  app.get "/templates/*", templates.get
  app.get "/status", users.status
  app.get "/change-theme/:theme", themes.change
