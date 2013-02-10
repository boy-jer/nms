require 'test_helper'

class NewscategoriesControllerTest < ActionController::TestCase
  setup do
    @newscategory = newscategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newscategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newscategory" do
    assert_difference('Newscategory.count') do
      post :create, newscategory: { category: @newscategory.category }
    end

    assert_redirected_to newscategory_path(assigns(:newscategory))
  end

  test "should show newscategory" do
    get :show, id: @newscategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newscategory
    assert_response :success
  end

  test "should update newscategory" do
    put :update, id: @newscategory, newscategory: { category: @newscategory.category }
    assert_redirected_to newscategory_path(assigns(:newscategory))
  end

  test "should destroy newscategory" do
    assert_difference('Newscategory.count', -1) do
      delete :destroy, id: @newscategory
    end

    assert_redirected_to newscategories_path
  end
end
