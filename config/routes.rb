GameTable::Application.routes.draw do

  post '/games/:secure_room_code/email' => "games#email", :as => "email"
  root 'games#index'
  get '/games/:secure_room_code/reset' => "games#reset", :as => "reset"
  get '/games/checkers' => "games#checkers", :as => "checkers"
  get '/games/chess' => "games#chess", :as => "chess"
  get '/games/backgammon' => "games#backgammon", :as => "backgammon"
  get '/games/chinese_checkers' => "games#chinese_checkers", :as => "chinese_checkers"
  get '/games/shut_the_box' => "games#shut_the_box", :as => "shut_the_box"
  post '/games/tokens/:id/move', :to => 'tokens#move'
  post '/games/tokens/:id/flip', :to => 'tokens#flip'
  get  '/games/:secure_room_code' => 'games#show', :as => "game"

  resources :games, except: [:show, :new]
  post '/games/messages/:secure_room_code', :to => 'messages#create', :as => 'messages'
  post '/games/roll/:secure_room_code', :to => 'messages#dice', :as => 'dice'
  post '/games/tally/:secure_room_code', :to => 'messages#tally', :as => 'tally'

  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'

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
