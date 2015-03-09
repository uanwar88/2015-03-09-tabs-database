# get "/product/:id" do
#   id = params[:id].to_i
#   @product = Product.find(id)
#   slim :product
# end

get "/product" do
  if params[:id]
    id = params[:id].to_i
  else
    id = 1
  end
  @product = Product.find(id)
  slim :product
end
