class PokerPlayersController < ApplicationController
  before_action :set_poker_player, only: [:show, :edit, :update, :destroy]

  # GET /poker_players
  # GET /poker_players.json
  def index
    @poker_players = PokerPlayer.all
  end

  # GET /poker_players/1
  # GET /poker_players/1.json
  def show
  end

  # GET /poker_players/new
  def new
    @poker_player = PokerPlayer.new
  end

  # GET /poker_players/1/edit
  def edit
  end

  # POST /poker_players
  # POST /poker_players.json
  def create
    @poker_player = PokerPlayer.new(poker_player_params)

    respond_to do |format|
      if @poker_player.save
        format.html { redirect_to @poker_player, notice: 'Poker player was successfully created.' }
        format.json { render :show, status: :created, location: @poker_player }
      else
        format.html { render :new }
        format.json { render json: @poker_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poker_players/1
  # PATCH/PUT /poker_players/1.json
  def update
    respond_to do |format|
      if @poker_player.update(poker_player_params)
        format.html { redirect_to @poker_player, notice: 'Poker player was successfully updated.' }
        format.json { render :show, status: :ok, location: @poker_player }
      else
        format.html { render :edit }
        format.json { render json: @poker_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poker_players/1
  # DELETE /poker_players/1.json
  def destroy
    @poker_player.destroy
    respond_to do |format|
      format.html { redirect_to poker_players_url, notice: 'Poker player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poker_player
      @poker_player = PokerPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poker_player_params
      params.require(:poker_player).permit(:name, :nickname, :title)
    end
end
