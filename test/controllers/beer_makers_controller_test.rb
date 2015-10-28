require 'test_helper'

class BeerMakersControllerTest < ActionController::TestCase
  setup do
    @beer_maker = beer_makers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_makers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_maker" do
    assert_difference('BeerMaker.count') do
      post :create, beer_maker: { date_of_founding: @beer_maker.date_of_founding, location: @beer_maker.location, name: @beer_maker.name }
    end

    assert_redirected_to beer_maker_path(assigns(:beer_maker))
  end

  test "should show beer_maker" do
    get :show, id: @beer_maker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_maker
    assert_response :success
  end

  test "should update beer_maker" do
    patch :update, id: @beer_maker, beer_maker: { date_of_founding: @beer_maker.date_of_founding, location: @beer_maker.location, name: @beer_maker.name }
    assert_redirected_to beer_maker_path(assigns(:beer_maker))
  end

  test "should destroy beer_maker" do
    assert_difference('BeerMaker.count', -1) do
      delete :destroy, id: @beer_maker
    end

    assert_redirected_to beer_makers_path
  end
end
