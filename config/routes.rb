Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'user_sessions#new'
  get '/:locale' => 'user_sessions#new'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

  scope "(:locale)", locale: /en|id/ do
    resources :desks, path: '/desk'
    resources :authorization_managements
    resources :application_logs
    resources :purchases
    resources :purchase_quotations
    resources :purchase_orders
    resources :purchase_returns
    resources :direct_purchases
    resources :inventory_receives
    resources :inventory_issueds
    resources :delivery_orders
    resources :delivery_receives
    resources :inventory_adjustments
    resources :purchase_requests
    resources :meal_menus
    resources :standard_recipes
    resources :base_recipes
    resources :production_orders
    resources :blanket_material_orders
    resources :material_orders
    resources :material_requests
    resources :meal_counts
    resources :customers
    resources :suppliers
    resources :departments
    resources :inventory_groups
    resources :inventory_categories
    resources :inventory_sub_categories
    resources :inventory_items
    resources :unit_measurements
    resources :inventory_balances
    resources :meal_categories
    resources :meal_times
    resources :special_meal_codes
    resources :raw_material_categories
    resources :company_branchs
    resources :user_managements
    resources :group_managements
    resources :production_plans
  end
end
