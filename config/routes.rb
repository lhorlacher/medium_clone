Rails.application.routes.draw do
  root 'home#index'

  devise_for :users , controllers: {
   registrations: 'users/registrations'
 }

  mount Commontator::Engine => '/commontator'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # home
  #index
  get '/', to: 'home#index', as: 'home'

  # blogger
  #show
  get 'bloggers/:id', to: 'bloggers#show', as: 'blogger_posts'

  # blogs
  #show 
  get 'blogs/:id', to: 'blogs#show', as: 'show_blog'
  #new 
  get 'bloggers/:blogger_id/blogs/new', to: 'blogs#new', as: 'new_blog'
  #create
  post 'bloggers/:blogger_id/blogs/new', to: 'blogs#create'
  #update
  put 'blogs/:id', to: 'blogs#udpate'
  #edit
  get 'blogs/:id', to: 'blogs#edit', as: 'edit_blog'
  #destroy
  delete 'blogs/:id', to: 'blgos#destroy', as: 'delete_blog'

  # comments
  #new 
  get 'bloggers/:blogger_id/blogs/:blog_id/comments/new', to: 'comments#new', as: 'new_comment'
  #create 
  post 'bloggers/:blogger_id/blogs/:blog_id/comments/new', to: 'comments#create'
  #edit 
  get 'comment/:id', to: 'comments#edit', as: 'edit_comment'
  #update 
  put 'comment/:id', to: 'comments#update'
  #destroy 
  delete 'comment/:id', to: 'comments#destroy', as: 'delete_comment'
end
