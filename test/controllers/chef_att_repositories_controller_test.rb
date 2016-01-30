require 'test_helper'

class ChefAttRepositoriesControllerTest < ActionController::TestCase
  setup do
    @chef_att_repository = chef_att_repositories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chef_att_repositories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chef_att_repository" do
    assert_difference('ChefAttRepository.count') do
      post :create, chef_att_repository: { room_category_id: @chef_att_repository.room_category_id }
    end

    assert_redirected_to chef_att_repository_path(assigns(:chef_att_repository))
  end

  test "should show chef_att_repository" do
    get :show, id: @chef_att_repository
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chef_att_repository
    assert_response :success
  end

  test "should update chef_att_repository" do
    patch :update, id: @chef_att_repository, chef_att_repository: { room_category_id: @chef_att_repository.room_category_id }
    assert_redirected_to chef_att_repository_path(assigns(:chef_att_repository))
  end

  test "should destroy chef_att_repository" do
    assert_difference('ChefAttRepository.count', -1) do
      delete :destroy, id: @chef_att_repository
    end

    assert_redirected_to chef_att_repositories_path
  end
end
