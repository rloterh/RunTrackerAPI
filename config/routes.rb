Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      get 'feeds', to: 'feeds#index'
    end

    root "feeds#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
