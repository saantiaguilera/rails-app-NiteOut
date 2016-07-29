Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # index show create destroy update
  # gets  get  post   delete  patch/put

  resources :places, only: [:index, :create, :destroy, :update]

end
