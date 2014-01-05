class GamesController < ApplicationController
  before_action :set_game, only: [:show, :reset, :email]

  def index
    @games = Game.all

  end

  def checkers 
    @checkers = GameBuilder.build_checkers
    redirect_to game_path(@checkers.secure_room_code)
  end

  def chess
    @chess = GameBuilder.build_chess
    redirect_to game_path(@chess.secure_room_code)
  end

  def backgammon
    @backgammon = GameBuilder.build_backgammon
    redirect_to game_path(@backgammon.secure_room_code)
  end

  def chinese_checkers
    @chinese_checkers = GameBuilder.build_chinese_checkers
    redirect_to game_path(@chinese_checkers.secure_room_code)
  end

  def shut_the_box
    @shut_the_box = GameBuilder.build_shut_the_box
    redirect_to game_path(@shut_the_box.secure_room_code)
  end

  def email
    GameMailer.game_email(@game, params[:email]).deliver
    redirect_to :back
  end

  def reset
    @game.reset
    redirect_to game_path(@game.secure_room_code)
  end

  def show

  end

  def new
    @game = Game.new

  end

  def create
    @game = Game.create(game_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find_by(secure_room_code: params[:secure_room_code])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:name, :secure_room_code)
    end

end
