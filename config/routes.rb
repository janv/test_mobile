TestMobile::Application.routes.draw do
  root :to => 'application#index'
  get "fallthrough" => "application#fallthrough"
end
