require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get cards_url, as: :json
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post cards_url, params: { card: { artist_string: @card.artist_string, avg_price_paid: @card.avg_price_paid, card_number: @card.card_number, is_artist_proof: @card.is_artist_proof, is_in_hand: @card.is_in_hand, is_one_of_one: @card.is_one_of_one, is_wish_list_item: @card.is_wish_list_item, number_owned: @card.number_owned, player: @card.player, print_run: @card.print_run, total_price_paid: @card.total_price_paid, user_id: @card.user_id, value_per_card: @card.value_per_card, value_total: @card.value_total } }, as: :json
    end

    assert_response 201
  end

  test "should show card" do
    get card_url(@card), as: :json
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { artist_string: @card.artist_string, avg_price_paid: @card.avg_price_paid, card_number: @card.card_number, is_artist_proof: @card.is_artist_proof, is_in_hand: @card.is_in_hand, is_one_of_one: @card.is_one_of_one, is_wish_list_item: @card.is_wish_list_item, number_owned: @card.number_owned, player: @card.player, print_run: @card.print_run, total_price_paid: @card.total_price_paid, user_id: @card.user_id, value_per_card: @card.value_per_card, value_total: @card.value_total } }, as: :json
    assert_response 200
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card), as: :json
    end

    assert_response 204
  end
end
