Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    delete 'sign_out', to: 'users/sessions#destroy'

    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
  end

  root 'welcome#index'

  get 'dashboard', to: 'dashboard#index'

  get 'about', to: 'welcome#about'
end
