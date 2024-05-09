Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "homepage" })
  get("/users", { :controller => "users", :action => "homepage" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })
  post("/update_user_record/:username", { :controller => "users", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })
  post("/add_photo", { :controller => "photos", :action => "create" })
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })
end
