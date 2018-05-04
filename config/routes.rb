Rails.application.routes.draw do
	scope "/api" do
		get  "/books/", to: "books#index",  as: "books_index"
		post "/books/", to: "books#create", as: "books_create"
		put   "/books/:id", to: "books#update",  as: "books_update"
		patch "/books/:id", to: "books#update"
		delete "books/:id", to: "books#destroy", as: "books_destroy"
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
