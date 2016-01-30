require 'test_helper'

class ChefAttSourcesControllerTest < ActionController::TestCase
  setup do
    @chef_att_source = chef_att_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chef_att_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chef_att_source" do
    assert_difference('ChefAttSource.count') do
      post :create, chef_att_source: { room_category_id: @chef_att_source.room_category_id }
    end

    assert_redirected_to chef_att_source_path(assigns(:chef_att_source))
  end

  test "should show chef_att_source" do
    get :show, id: @chef_att_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chef_att_source
    assert_response :success
  end

  test "should update chef_att_source" do
    patch :update, id: @chef_att_source, chef_att_source: { room_category_id: @chef_att_source.room_category_id }
    assert_redirected_to chef_att_source_path(assigns(:chef_att_source))
  end

  test "should destroy chef_att_source" do
    assert_difference('ChefAttSource.count', -1) do
      delete :destroy, id: @chef_att_source
    end

    assert_redirected_to chef_att_sources_path
  end
end
