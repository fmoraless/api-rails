Rails.application.routes.draw do
  #api definition
  namespace :api, defauts: { format: :json } do
    namespace :v1 do
    #resources here}
    end
  end
end
