Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_method"
  get "/form_params" => "params_examples#form_params_method"
  post "/form_result" => "params_examples#form_result_method"
end
