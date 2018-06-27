module ProductsHelper
  def products_helper(product)
    product.photo.present? ? product.photo : ""
  end
end
