require 'test_helper'

class IklansControllerTest < ActionController::TestCase
  setup do
    @iklan = iklans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iklans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iklan" do
    assert_difference('Iklan.count') do
      post :create, iklan: { category: @iklan.category, character: @iklan.character, confirmed: @iklan.confirmed, content: @iklan.content, customer_name: @iklan.customer_name, discount: @iklan.discount, entry_name: @iklan.entry_name, input_date: @iklan.input_date, invoice: @iklan.invoice, price: @iklan.price, publsh_date: @iklan.publsh_date, segmentation: @iklan.segmentation, session: @iklan.session, type: @iklan.type }
    end

    assert_redirected_to iklan_path(assigns(:iklan))
  end

  test "should show iklan" do
    get :show, id: @iklan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iklan
    assert_response :success
  end

  test "should update iklan" do
    put :update, id: @iklan, iklan: { category: @iklan.category, character: @iklan.character, confirmed: @iklan.confirmed, content: @iklan.content, customer_name: @iklan.customer_name, discount: @iklan.discount, entry_name: @iklan.entry_name, input_date: @iklan.input_date, invoice: @iklan.invoice, price: @iklan.price, publsh_date: @iklan.publsh_date, segmentation: @iklan.segmentation, session: @iklan.session, type: @iklan.type }
    assert_redirected_to iklan_path(assigns(:iklan))
  end

  test "should destroy iklan" do
    assert_difference('Iklan.count', -1) do
      delete :destroy, id: @iklan
    end

    assert_redirected_to iklans_path
  end
end
