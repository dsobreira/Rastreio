class RastsController < ApplicationController
  before_action :set_rast, only: [:show, :edit, :update, :destroy]

  # GET /rasts
  # GET /rasts.json
  def index
    @rasts = Rast.all
  end

  # GET /rasts/1
  # GET /rasts/1.json
  def show
  end

  # GET /rasts/new
  def new
    @rast = Rast.new
  end

  # GET /rasts/1/edit
  def edit
  end

  # POST /rasts
  # POST /rasts.json
  def create
    @rast = Rast.new(rast_params)

    respond_to do |format|
      if @rast.save
        format.html { redirect_to @rast, notice: 'Rast was successfully created.' }
        format.json { render :show, status: :created, location: @rast }
      else
        format.html { render :new }
        format.json { render json: @rast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rasts/1
  # PATCH/PUT /rasts/1.json
  def update
    respond_to do |format|
      if @rast.update(rast_params)
        format.html { redirect_to @rast, notice: 'Rast was successfully updated.' }
        format.json { render :show, status: :ok, location: @rast }
      else
        format.html { render :edit }
        format.json { render json: @rast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rasts/1
  # DELETE /rasts/1.json
  def destroy
    @rast.destroy
    respond_to do |format|
      format.html { redirect_to rasts_url, notice: 'Rast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rast
      @rast = Rast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rast_params
      params.require(:rast).permit(:email, :domain, :path, :page, :access)
    end
end
