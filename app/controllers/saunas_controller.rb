class SaunasController < ApplicationController
  before_action :set_sauna, only: [:show, :edit, :update, :destroy]

  # GET /saunas
  # GET /saunas.json
  # def index
  #   @saunas = Sauna.all
  # end

  # GET /saunas/1
  # GET /saunas/1.json
  def show
  end

  # GET /saunas/new
  def new
    @sauna = Sauna.new
  end

  # GET /saunas/1/edit
  def edit
  end

  # POST /saunas
  # POST /saunas.json
  def create
    @sauna = Sauna.new(sauna_params)

    respond_to do |format|
      if @sauna.save
        format.html { redirect_to @sauna, notice: 'Sauna was successfully created.' }
        format.json { render :show, status: :created, location: @sauna }
      else
        format.html { render :new }
        format.json { render json: @sauna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saunas/1
  # PATCH/PUT /saunas/1.json
  def update
    respond_to do |format|
      if @sauna.update(sauna_params)
        format.html { redirect_to @sauna, notice: 'Sauna was successfully updated.' }
        format.json { render :show, status: :ok, location: @sauna }
      else
        format.html { render :edit }
        format.json { render json: @sauna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saunas/1
  # DELETE /saunas/1.json
  def destroy
    @sauna.destroy
    respond_to do |format|
      format.html { redirect_to saunas_url, notice: 'Sauna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sauna
      @sauna = Sauna.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sauna_params
      params.require(:sauna).permit(:sauna_name, :picture, :area, :address, :business_hours, :phone, :man_not_exist, :woman_not_exist, :man_sauna_temp, :woman_sauna_temp, :man_water_temp, :woman_water_temp)
    end
end
