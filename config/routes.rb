Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "homepage" })
  get("/users", { :controller => "users", :action => "homepage" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })

  get("/photos", { :controller => "photos", :action => "index" })
end
