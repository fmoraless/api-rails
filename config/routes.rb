Rails.application.routes.draw do
  #api definition
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
    #resources here}
    resources :users, only: %i[show create update destroy]
    resources :tokens, only: [:create]
    resources :products, only: %i[show index]
    end
  end
end
