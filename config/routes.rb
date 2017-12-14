Rails.application.routes.draw do
  resources :posts do
    member do 
      get 'like'
    end

    collection do 
      get 'seatch'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
