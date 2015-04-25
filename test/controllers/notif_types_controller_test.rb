require 'test_helper'

class NotifTypesControllerTest < ActionController::TestCase
  setup do
    @notif_type = notif_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notif_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notif_type" do
    assert_difference('NotifType.count') do
      post :create, notif_type: { carrier: @notif_type.carrier, destination: @notif_type.destination, name: @notif_type.name, type: @notif_type.type, verified: @notif_type.verified }
    end

    assert_redirected_to notif_type_path(assigns(:notif_type))
  end

  test "should show notif_type" do
    get :show, id: @notif_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notif_type
    assert_response :success
  end

  test "should update notif_type" do
    patch :update, id: @notif_type, notif_type: { carrier: @notif_type.carrier, destination: @notif_type.destination, name: @notif_type.name, type: @notif_type.type, verified: @notif_type.verified }
    assert_redirected_to notif_type_path(assigns(:notif_type))
  end

  test "should destroy notif_type" do
    assert_difference('NotifType.count', -1) do
      delete :destroy, id: @notif_type
    end

    assert_redirected_to notif_types_path
  end
end
