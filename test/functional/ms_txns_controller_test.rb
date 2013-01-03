require 'test_helper'

class MsTxnsControllerTest < ActionController::TestCase
  setup do
    @ms_txn = ms_txns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_txns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_txn" do
    assert_difference('MsTxn.count') do
      post :create, ms_txn: { batch_id: @ms_txn.batch_id, total: @ms_txn.total }
    end

    assert_redirected_to ms_txn_path(assigns(:ms_txn))
  end

  test "should show ms_txn" do
    get :show, id: @ms_txn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_txn
    assert_response :success
  end

  test "should update ms_txn" do
    put :update, id: @ms_txn, ms_txn: { batch_id: @ms_txn.batch_id, total: @ms_txn.total }
    assert_redirected_to ms_txn_path(assigns(:ms_txn))
  end

  test "should destroy ms_txn" do
    assert_difference('MsTxn.count', -1) do
      delete :destroy, id: @ms_txn
    end

    assert_redirected_to ms_txns_path
  end
end
