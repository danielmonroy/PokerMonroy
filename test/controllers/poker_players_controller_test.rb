require 'test_helper'

class PokerPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poker_player = poker_players(:one)
  end

  test "should get index" do
    get poker_players_url
    assert_response :success
  end

  test "should get new" do
    get new_poker_player_url
    assert_response :success
  end

  test "should create poker_player" do
    assert_difference('PokerPlayer.count') do
      post poker_players_url, params: { poker_player: { name: @poker_player.name, nickname: @poker_player.nickname, title: @poker_player.title } }
    end

    assert_redirected_to poker_player_url(PokerPlayer.last)
  end

  test "should show poker_player" do
    get poker_player_url(@poker_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_poker_player_url(@poker_player)
    assert_response :success
  end

  test "should update poker_player" do
    patch poker_player_url(@poker_player), params: { poker_player: { name: @poker_player.name, nickname: @poker_player.nickname, title: @poker_player.title } }
    assert_redirected_to poker_player_url(@poker_player)
  end

  test "should destroy poker_player" do
    assert_difference('PokerPlayer.count', -1) do
      delete poker_player_url(@poker_player)
    end

    assert_redirected_to poker_players_url
  end
end
