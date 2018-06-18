class PokerGamesController < ApplicationController
  before_action :set_poker_game, only: [:show, :edit, :update, :destroy]

  # GET /poker_games
  # GET /poker_games.json
  def index
    @poker_games = PokerGame.all
  end

  # GET /poker_games/1
  # GET /poker_games/1.json
  def show
  end

  # GET /poker_games/new
  def new
    @poker_game = PokerGame.new
  end

  # GET /poker_games/1/edit
  def edit
  end

  # POST /poker_games
  # POST /poker_games.json
  def create
    @poker_game = PokerGame.new(poker_game_params)

    respond_to do |format|
      if @poker_game.save
        format.html { redirect_to @poker_game, notice: 'Poker game was successfully created.' }
        format.json { render :show, status: :created, location: @poker_game }
      else
        format.html { render :new }
        format.json { render json: @poker_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poker_games/1
  # PATCH/PUT /poker_games/1.json
  def update
    respond_to do |format|
      if @poker_game.update(poker_game_params)
        format.html { redirect_to @poker_game, notice: 'Poker game was successfully updated.' }
        format.json { render :show, status: :ok, location: @poker_game }
      else
        format.html { render :edit }
        format.json { render json: @poker_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poker_games/1
  # DELETE /poker_games/1.json
  def destroy
    @poker_game.destroy
    respond_to do |format|
      format.html { redirect_to poker_games_url, notice: 'Poker game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poker_game
      @poker_game = PokerGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poker_game_params
      params.require(:poker_game).permit(:game_date, :home_id, :type, :fee)
    end
end
