Rails.application.routes.draw do
  get 'phone_numbers/create'
  root "users#index"
  resources:users do 
    resources:phone_numbers
  end
end
