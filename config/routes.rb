Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'profiles#index'
  get '/profiles' => 'profiles#index'
  get '/profiles/new' => 'profiles#new'
  post '/profiles' => 'profiles#create'
  get '/profiles/:id' => 'profiles#show'
  get '/profiles/:id/edit' => 'profiles#edit'
  patch '/profiles/:id' => 'profiles#update'
  delete 'profiles/:id' => 'profiles#destroy'
end
