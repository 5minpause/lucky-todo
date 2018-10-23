require "./server"

Lucky::Session::Store.configure do
  settings.key = "todo"
  settings.secret = Lucky::Server.settings.secret_key_base
end
