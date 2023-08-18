Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "marketing#new"
  post "/sent_mail", to: "marketing#sent_mail"
end
