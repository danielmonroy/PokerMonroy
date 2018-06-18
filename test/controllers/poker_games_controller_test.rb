require 'test_helper'

class PokerGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poker_game = poker_games(:one)
  end

  test "should get index" do
    get poker_games_url
    assert_response :success
  end

  test "should get new" do
    get new_poker_game_url
    assert_response :success
  end

  test "should create poker_game" do
    assert_difference('PokerGame.count') do
      post poker_games_url, params: { poker_game: { fee: @poker_game.fee, game_date: @poker_game.game_date, home_id: @poker_game.home_id, type: @poker_game.type } }
    end

    assert_redirected_to poker_game_url(PokerGame.last)
  end

  test "should show poker_game" do
    get poker_game_url(@poker_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_poker_game_url(@poker_game)
    assert_response :success
  end

  test "should update poker_game" do
    patch poker_game_url(@poker_game), params: { poker_game: { fee: @poker_game.fee, game_date: @poker_game.game_date, home_id: @poker_game.home_id, type: @poker_game.type } }
    assert_redirected_to poker_game_url(@poker_game)
  end

  test "should destroy poker_game" do
    assert_difference('PokerGame.count', -1) do
      delete poker_game_url(@poker_game)
    end

    assert_redirected_to poker_games_url
  end
end
