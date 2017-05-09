class Admin::ProductsController < ApplicationController

# show all products
def index
  @products = Product.all
end

# create a new product
def new
  @product = Product.new
end

def create
  @product = Product.new(product_params)

  if @product.save
    redirect_to admin_products_path
  else
    render :new
  end
end

# edit an existing product
def edit
  @product = Product.find(params[:id])
end

def update
  @product = Product.find(params[:id])

  if @product.update(product_params)
    redirect_to admin_products_path
  else
    render :edit
  end
end

private

def product_params
  params.require(:product).permit(:title, :description, :quantity, :price)
end

end