class HomeController < ApplicationController

  def index
    @schnipsels = Schnipsel.all
  end

end