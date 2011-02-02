Refinery::Application.routes.draw do
  resources :feedsucker_feeds, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :feedsucker_feeds, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
