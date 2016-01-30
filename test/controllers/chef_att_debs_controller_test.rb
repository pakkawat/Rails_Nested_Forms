require 'test_helper'

class ChefAttDebsControllerTest < ActionController::TestCase
  setup do
    @chef_att_deb = chef_att_debs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chef_att_debs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chef_att_deb" do
    assert_difference('ChefAttDeb.count') do
      post :create, chef_att_deb: { room_category_id: @chef_att_deb.room_category_id }
    end

    assert_redirected_to chef_att_deb_path(assigns(:chef_att_deb))
  end

  test "should show chef_att_deb" do
    get :show, id: @chef_att_deb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chef_att_deb
    assert_response :success
  end

  test "should update chef_att_deb" do
    patch :update, id: @chef_att_deb, chef_att_deb: { room_category_id: @chef_att_deb.room_category_id }
    assert_redirected_to chef_att_deb_path(assigns(:chef_att_deb))
  end

  test "should destroy chef_att_deb" do
    assert_difference('ChefAttDeb.count', -1) do
      delete :destroy, id: @chef_att_deb
    end

    assert_redirected_to chef_att_debs_path
  end
end
