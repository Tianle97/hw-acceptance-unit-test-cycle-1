Rottenpotatoes::Application.routes.draw do
  resources :movies do
    get :similar, on: :member
  end
  # map '/' to be a redirect to '/movies'
  #match '/movies/find_with_same_director/:id' => 'movies#find_with_same_director', :as => :find_with_same_director
  root :to => redirect('/movies')
  
  get '/movies/:id/director', to: 'movies#search_directors', as: 'search_directors'  
end