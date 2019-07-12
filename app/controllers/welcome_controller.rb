class WelcomeController < ApplicationController
  def index
    @players = Player.includes(:team).all
    @coaches   = Coach.includes(:team).all

  end
end
