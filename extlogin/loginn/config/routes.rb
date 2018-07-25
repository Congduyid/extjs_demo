Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  delete 'users/delete_user'
  delete 'khaches/delete_khach'

  resources :khaches
  resources :users
  get 'duy/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
