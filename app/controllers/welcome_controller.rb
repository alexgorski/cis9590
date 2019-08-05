class WelcomeController < ApplicationController
  def index
    @players = Player.includes(:team, :stats).all
    @coaches   = Coach.includes(:team).all

  end
end
