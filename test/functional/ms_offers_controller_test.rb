require 'test_helper'

class MsOffersControllerTest < ActionController::TestCase
  setup do
    @ms_offer = ms_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_offer" do
    assert_difference('MsOffer.count') do
      post :create, ms_offer: { batch_id: @ms_offer.batch_id, total: @ms_offer.total }
    end

    assert_redirected_to ms_offer_path(assigns(:ms_offer))
  end

  test "should show ms_offer" do
    get :show, id: @ms_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_offer
    assert_response :success
  end

  test "should update ms_offer" do
    put :update, id: @ms_offer, ms_offer: { batch_id: @ms_offer.batch_id, total: @ms_offer.total }
    assert_redirected_to ms_offer_path(assigns(:ms_offer))
  end

  test "should destroy ms_offer" do
    assert_difference('MsOffer.count', -1) do
      delete :destroy, id: @ms_offer
    end

    assert_redirected_to ms_offers_path
  end
end
