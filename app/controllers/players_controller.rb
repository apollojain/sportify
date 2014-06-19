class PlayersController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @player = @game.players.create(player_params)
    @player.user = current_user
    @player.save
    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:game_id])
    @player = @game.players.find(params[:id])
    @player.destroy
    redirect_to game_path(@game)
  end
  
  private
    def player_params
      # params.require(:player).permit(:player)
    end
end
