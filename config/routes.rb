Codingschoolalumni::Application.routes.draw do

  root "users#new"

  resources :users, :only => [:new]
  post "validate_user" => "users#validate_signup"
  get "/auth/linkedin/callback" => "users#create", :linkedin => true
  get "/create_user" => "users#create", :linkedin => false
  get "/thanks" => redirect("/thanks.html")
  get "anti_harassment_policy" => "static_pages#anti_harassment_policy"
  get "privacy_policy" => "static_pages#privacy_policy"

end
