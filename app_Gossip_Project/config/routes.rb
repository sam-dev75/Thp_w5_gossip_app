Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#home_page', as:'home_page'
  get '/team', to:'home#about_us', as: 'about_us'
  get '/contact', to:'home#contact_us', as: 'contact_us'
  get '/welcome/:name', to:'home#welcome', as:'welcome'
  get '/user/info/:id', to:'user#user_info', as:'user_info'
  get '/gossip/show/:id', to:'gossip#show_gossip', as:'gossip_info'
  
end
