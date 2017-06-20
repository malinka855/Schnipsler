class SchnipselsController < ApplicationController
  before_action :set_schnipsel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /schnipsels
  # GET /schnipsels.json
  def index
    @schnipsels = Schnipsel.all
  end

  # GET /schnipsels/1
  # GET /schnipsels/1.json
  def show
  end

  # GET /schnipsels/new
  def new
    @schnipsel = Schnipsel.new
  end

  # GET /schnipsels/1/edit
  def edit
  end

  # POST /schnipsels
  # POST /schnipsels.json
  def create
    @schnipsel = Schnipsel.new(schnipsel_params)

    respond_to do |format|
      if @schnipsel.save
        format.html { redirect_to @schnipsel, notice: 'Schnipsel was successfully created.' }
        format.json { render :show, status: :created, location: @schnipsel }
      else
        format.html { render :new }
        format.json { render json: @schnipsel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schnipsels/1
  # PATCH/PUT /schnipsels/1.json
  def update
    respond_to do |format|
      if @schnipsel.update(schnipsel_params)
        format.html { redirect_to @schnipsel, notice: 'Schnipsel was successfully updated.' }
        format.json { render :show, status: :ok, location: @schnipsel }
      else
        format.html { render :edit }
        format.json { render json: @schnipsel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schnipsels/1
  # DELETE /schnipsels/1.json
  def destroy
    @schnipsel.destroy
    respond_to do |format|
      format.html { redirect_to schnipsels_url, notice: 'Schnipsel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schnipsel
      @schnipsel = Schnipsel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schnipsel_params
      params.require(:schnipsel).permit(:titel, :code)
    end
end
