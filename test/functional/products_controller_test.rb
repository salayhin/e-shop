require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { description: @product.description, ean: @product.ean, isbn: @product.isbn, jan: @product.jan, meta_tag_description: @product.meta_tag_description, meta_tag_keywords: @product.meta_tag_keywords, mpn: @product.mpn, name: @product.name, price: @product.price, product_code: @product.product_code, product_tags: @product.product_tags, sku: @product.sku, upc: @product.upc }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { description: @product.description, ean: @product.ean, isbn: @product.isbn, jan: @product.jan, meta_tag_description: @product.meta_tag_description, meta_tag_keywords: @product.meta_tag_keywords, mpn: @product.mpn, name: @product.name, price: @product.price, product_code: @product.product_code, product_tags: @product.product_tags, sku: @product.sku, upc: @product.upc }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
