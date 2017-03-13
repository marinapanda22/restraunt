require 'test_helper'

class DishInBasketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_in_basket = dish_in_baskets(:one)
  end

  test "should get index" do
    get dish_in_baskets_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_in_basket_url
    assert_response :success
  end

  test "should create dish_in_basket" do
    assert_difference('DishInBasket.count') do
      post dish_in_baskets_url, params: { dish_in_basket: { basket_id: @dish_in_basket.basket_id, dish_id: @dish_in_basket.dish_id, price: @dish_in_basket.price, quantity: @dish_in_basket.quantity, title: @dish_in_basket.title, total: @dish_in_basket.total } }
    end

    assert_redirected_to dish_in_basket_url(DishInBasket.last)
  end

  test "should show dish_in_basket" do
    get dish_in_basket_url(@dish_in_basket)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_in_basket_url(@dish_in_basket)
    assert_response :success
  end

  test "should update dish_in_basket" do
    patch dish_in_basket_url(@dish_in_basket), params: { dish_in_basket: { basket_id: @dish_in_basket.basket_id, dish_id: @dish_in_basket.dish_id, price: @dish_in_basket.price, quantity: @dish_in_basket.quantity, title: @dish_in_basket.title, total: @dish_in_basket.total } }
    assert_redirected_to dish_in_basket_url(@dish_in_basket)
  end

  test "should destroy dish_in_basket" do
    assert_difference('DishInBasket.count', -1) do
      delete dish_in_basket_url(@dish_in_basket)
    end

    assert_redirected_to dish_in_baskets_url
  end
end
