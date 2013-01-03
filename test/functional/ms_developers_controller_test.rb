require 'test_helper'

class MsDevelopersControllerTest < ActionController::TestCase
  setup do
    @ms_developer = ms_developers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_developers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_developer" do
    assert_difference('MsDeveloper.count') do
      post :create, ms_developer: { batch_id: @ms_developer.batch_id, country: @ms_developer.country, total: @ms_developer.total }
    end

    assert_redirected_to ms_developer_path(assigns(:ms_developer))
  end

  test "should show ms_developer" do
    get :show, id: @ms_developer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_developer
    assert_response :success
  end

  test "should update ms_developer" do
    put :update, id: @ms_developer, ms_developer: { batch_id: @ms_developer.batch_id, country: @ms_developer.country, total: @ms_developer.total }
    assert_redirected_to ms_developer_path(assigns(:ms_developer))
  end

  test "should destroy ms_developer" do
    assert_difference('MsDeveloper.count', -1) do
      delete :destroy, id: @ms_developer
    end

    assert_redirected_to ms_developers_path
  end
end
