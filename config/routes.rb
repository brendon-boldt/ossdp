Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  # Example of regular route:
  # resources :categories, only: [:index, :new, :create]
  get ':name' => 'categories#show', as: :category
  #get ':name/edit' => 'categories#edit', as: :edit_category
  #match ':name' => 'categories#update', via: [:put, :patch]
  #delete ':name' => 'categories#destroy'

  scope ':category_name' do
    #resources :articles, only: [:create]
    #get 'new' => 'articles#new', as: :new_article
    get ':name' => 'articles#show', as: :article
    #get ':name/edit' => 'articles#edit', as: :edit_article
    #match ':name' => 'articles#update', via: [:put, :patch]
    #delete ':name' => 'articles#destroy'
  end

=begin
  get ':category_name/:name' => 'articles#show', as: :article
  get ':category_name/:name/edit' => 'articles#edit', as: :edit_article
  match ':category_name/:name' => 'articles#update', via: [:put, :patch]
  delete ':category_name/:name' => 'articles#destroy'
=end 
end
