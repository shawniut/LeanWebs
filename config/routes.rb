LeanWebs::Application.routes.draw do
 
  #get "payment_policies/index"
 

  
  #resources :release_payment_policy, :only => [:index], :controller => 'release_payment_policy'
#=begin

#=end
#resources :release_payment_policy, module: 'our_process'  
resources  :small_business_pack, :only =>[:index]
resources :development_process, :only =>[:index]
resources :web_pack_overview, :only =>[:index]
resources :graphics_design, :only =>[:index]
resources :growing_company_pack, :only =>[:index]
resources :mid_sized_company_pack, :only =>[:index]
resources :e_commerce_pack, :only =>[:index]
resources :logo_pack, :only =>[:index]
resources :home, :only =>[:index]


namespace :our_process do 
        resources :payment_policies 
end

namespace :graphics_design do 
        resources :logo_pack, :only =>[:index]
        resources :banner_postar_packs, :only =>[:index] 
        resources :business_card_packs, :only =>[:index]  

end 

root to: "home#index"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
