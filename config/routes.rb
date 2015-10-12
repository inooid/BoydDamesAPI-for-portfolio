Rails.application.routes.draw do
  root to: redirect('/404')

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :projects, except: [:new, :edit]
    end
  end
end
