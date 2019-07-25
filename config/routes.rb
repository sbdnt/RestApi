Rails.application.routes.draw do
  get "/users/:id" => "users#render_detail"
  get "/users/:id/accounts" => "users#render_accounts"
  get "/accounts/:id" => "accounts#render_detail"
end
