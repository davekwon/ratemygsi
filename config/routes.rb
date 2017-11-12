Rails.application.routes.draw do
  devise_for :users
  resources :gsis
  root 'courses#index'
  get "/allCourses", to: "courses#index", as: "allCourses"
  get "/toNewCourse", to: "courses#new", as: "pageToNewCourse"
  post "/createCourse", to: "courses#create", as: "createCourse"
  get '/courses/:id', to: 'courses#show', as: 'course'

  post "/courses/:id", to: "gsis#create"
  get '/gsis/:id', to: 'gsis#show', as: 'gsi'
end
