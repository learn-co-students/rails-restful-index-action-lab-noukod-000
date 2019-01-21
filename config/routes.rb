Rails.application.routes.draw do
  get '/students' => 'students#index',
  get "/posts/:id", to: 'posts#show'

end
