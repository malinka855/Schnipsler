class HomeController < ApplicationController

  def index
    @schnipsels = Schnipsel.all
    @tags = Schnipsel.tag_counts_on(:tags)
  end

  def search
    @schnipsels = Schnipsel.tagged_with(suche_params[:tag_list].split(','), :any => true)
    @tags = Schnipsel.tag_counts_on(:tags)
    render "home/index"

  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def suche_params
    params.permit(:tag_list)
  end

end