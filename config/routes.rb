Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/protected'
  devise_for :users
end
