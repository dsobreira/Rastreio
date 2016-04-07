require 'test_helper'

class RastsControllerTest < ActionController::TestCase
  setup do
    @rast = rasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rast" do
    assert_difference('Rast.count') do
      post :create, rast: { access: @rast.access, domain: @rast.domain, email: @rast.email, page: @rast.page, path: @rast.path }
    end

    assert_redirected_to rast_path(assigns(:rast))
  end

  test "should show rast" do
    get :show, id: @rast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rast
    assert_response :success
  end

  test "should update rast" do
    patch :update, id: @rast, rast: { access: @rast.access, domain: @rast.domain, email: @rast.email, page: @rast.page, path: @rast.path }
    assert_redirected_to rast_path(assigns(:rast))
  end

  test "should destroy rast" do
    assert_difference('Rast.count', -1) do
      delete :destroy, id: @rast
    end

    assert_redirected_to rasts_path
  end
end
