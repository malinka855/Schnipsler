class SchnipselsController < ApplicationController
  before_action :set_schnipsel, only: [:edit, :update, :destroy]
  before_action :define_syntax, only: [:edit, :new]
  before_action :authenticate_user!, :except => [:show]

  # GET /schnipsels
  # GET /schnipsels.json
  def index
    @schnipsels = current_user.schnipsels.all
  end

  # GET /schnipsels/1
  # GET /schnipsels/1.json
  def show
    @schnipsel = Schnipsel.find(params[:id])
  end

  # GET /schnipsels/new
  def new
    @schnipsel = current_user.schnipsels.build
  end

  # GET /schnipsels/1/edit
  def edit
  end

  # POST /schnipsels
  # POST /schnipsels.json
  def create
    @schnipsel = current_user.schnipsels.new(schnipsel_params)

    respond_to do |format|
      if @schnipsel.save
        format.html {redirect_to @schnipsel, notice: 'Schnipsel was successfully created.'}
        format.json {render :show, status: :created, location: @schnipsel}
      else
        format.html {render :new}
        format.json {render json: @schnipsel.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /schnipsels/1
  # PATCH/PUT /schnipsels/1.json
  def update
    respond_to do |format|
      if @schnipsel.update(schnipsel_params)
        format.html {redirect_to @schnipsel, notice: 'Schnipsel was successfully updated.'}
        format.json {render :show, status: :ok, location: @schnipsel}
      else
        format.html {render :edit}
        format.json {render json: @schnipsel.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /schnipsels/1
  # DELETE /schnipsels/1.json
  def destroy
    @schnipsel.destroy
    respond_to do |format|
      format.html {redirect_to schnipsels_url, notice: 'Schnipsel was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_schnipsel
    @schnipsel = current_user.schnipsels.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def schnipsel_params
    params.require(:schnipsel).permit(:titel, :code, :tag_list, :syntax)
  end

  def define_syntax
    @syntax_definitions = [%w(Ruby text/x-ruby),
                           %w(HTML text/html),
                           %w(JavaScript text/javascript),
                           %w(Typescript text/typescript),
                           %w(CoffeScript text/x-coffeescript),
                           %w(JSON text/json),
                           %w(ReactJS text/jsx),
                           %w(Java text/x-java),
                           %w(CSS text/x-css),
                           %w(SCSS text/x-scss),
                           %w(LESS text/x-less),
                           %w(XML text/xml),
                           %w(C text/x-csrc),
                           %w(C++ text/x-c++src),
                           %w(C# text/x-csharp),
                           %w(Objective-C text/x-objectivec),
                           %w(Swift text/x-swift),
                           %w(Scala text/x-scala),
                           %w(Diff text/x-diff),
                           %w(Gherkin text/x-feature),
                           %w(Go text/x-go),
                           %w(Markdown text/x-markdown),
                           %w(Perl text/x-perl),
                           %w(PHP text/x-php),
                           %w(Powershell application/x-powershell),
                           %w(Shell application/x-sh),
                           %w(Python text/x-python),
                           %w(SQL text/x-sql),
                           %w(PLSQL text/x-plsql),
    ]



  end

end
