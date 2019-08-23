Rails.application.routes.draw do
  get '/students' => 'user#index'
end