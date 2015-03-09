get "/product/:id" do
  id = params[:id].to_i
  @product = Product.find(id)
  slim :product
end

get "/product" do
  id = params[:id].to_i
  @product = Product.find(id)
  slim :product
end
