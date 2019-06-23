Rails.application.routes.draw do
  post 'soaps/cons_response'

  wash_out :wsfiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
