class WelcomeController < ApplicationController
  def index
    @players = Player.all
    @coaches   = Coach.all

  end
end
