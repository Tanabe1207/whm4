Rails.application.routes.draw do


  get 'retire', to:'users#retire'
  # "=>"は実行結果

  get 'offer_details/index'

  root 'tops#index'

  get 'login', to:'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to:'sessions#destroy'
  get 'rooms/show'
  resources 'users'
  resources 'offers'

  get 'inquiry', to:'inquiry#index'
  post 'inquiry/confirm', to:'inquiry#confirm'
  post 'inquiry/thanks', to:'iniquiry#thanks'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
