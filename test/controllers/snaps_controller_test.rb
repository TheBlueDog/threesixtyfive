require 'test_helper'

class SnapsControllerTest < ActionController::TestCase
  setup do
    @snap = snaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snap" do
    assert_difference('Snap.count') do
      post :create, snap: { description: @snap.description, title: @snap.title }
    end

    assert_redirected_to snap_path(assigns(:snap))
  end

  test "should show snap" do
    get :show, id: @snap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snap
    assert_response :success
  end

  test "should update snap" do
    patch :update, id: @snap, snap: { description: @snap.description, title: @snap.title }
    assert_redirected_to snap_path(assigns(:snap))
  end

  test "should destroy snap" do
    assert_difference('Snap.count', -1) do
      delete :destroy, id: @snap
    end

    assert_redirected_to snaps_path
  end
end
