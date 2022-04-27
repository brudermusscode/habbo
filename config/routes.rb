Rails.application.routes.draw do
  devise_for :yuuzaas, controllers: {
    sessions: 'yuuzaas/sessions',
    registrations: 'yuuzaas/registrations'
  }

  namespace :home do
    root 'main#index'
  end

  root 'main#index'
end
