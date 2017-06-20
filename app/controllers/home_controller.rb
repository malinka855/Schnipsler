class HomeController < ApplicationController

  def index
    @schnipsels = Schnipsel.all
  end

  def search
    @schnipsels = Schnipsel.tagged_with(suche_params[:tag_list].split(','), :any => true)
    render "home/index"

  end


  # Never trust parameters from the scary internet, only allow the white list through.
  def suche_params
    params.permit(:tag_list)
  end

end