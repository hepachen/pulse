require 'test_helper'

class MsProductsControllerTest < ActionController::TestCase
  setup do
    @ms_product = ms_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_product" do
    assert_difference('MsProduct.count') do
      post :create, ms_product: { batch_id: @ms_product.batch_id, total: @ms_product.total }
    end

    assert_redirected_to ms_product_path(assigns(:ms_product))
  end

  test "should show ms_product" do
    get :show, id: @ms_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_product
    assert_response :success
  end

  test "should update ms_product" do
    put :update, id: @ms_product, ms_product: { batch_id: @ms_product.batch_id, total: @ms_product.total }
    assert_redirected_to ms_product_path(assigns(:ms_product))
  end

  test "should destroy ms_product" do
    assert_difference('MsProduct.count', -1) do
      delete :destroy, id: @ms_product
    end

    assert_redirected_to ms_products_path
  end
end
