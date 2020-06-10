class SaunasController < ApplicationController
  before_action :set_sauna, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_saunner!, only: [:new, :edit, :create, :update, :destroy]

  SEARCHPER = 10
  SHOWPER = 5

  # GET /saunas
  # GET /saunas.json
  def index
    @reports = Report.page(params[:page]).per(SEARCHPER)
    @areas = Area.select(:area_name).distinct(:area_name)
  end

  # GET /saunas/1
  # GET /saunas/1.json
  def show
    @reports = Report.where(sauna_id: @sauna.id).page(params[:page]).per(SHOWPER)
    @areas = Area.where(sauna_id: @sauna.id)
  end

  # GET /saunas/new
  def new
    @sauna = Sauna.new
    @sauna.build_area
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
          format.html { redirect_to @sauna, notice: '施設の登録に成功しました。' }
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
        format.html { redirect_to @sauna, notice: '施設の更新に成功しました。' }
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

  def search_area
    @sauna = Sauna.page(params[:page]).per(SEARCHPER)
    @areas = Area.select(:area_name).distinct(:area_name)
    @reports = Report.all
    if params[:area_query].present?
      @sauna = Sauna.all.search_sauna(facility_area_query: params[:area_query])
      @sauna = Kaminari.paginate_array(@sauna).page(params[:page]).per(SEARCHPER)
    end
  end

  def search_name
    @sauna = Sauna.page(params[:page]).per(SEARCHPER)
    @areas = Area.all
    @reports = Report.all
    if params[:name_query].present?
      @sauna = @sauna.search_sauna(facility_name_query: params[:name_query])
      @sauna = Kaminari.paginate_array(@sauna).page(params[:page]).per(SEARCHPER)
    end
  end

  def privacy_policy
  end

  def service_policy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sauna
      if params[:id].blank?
        @sauna = Sauna.find(params[:sauna_id])
      else
        @sauna = Sauna.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.

    def sauna_params
      params.require(:sauna).permit(:sauna_name, :picture, :address, :business_hours, :phone, :man_not_exist, :woman_not_exist, :man_sauna_temp, :woman_sauna_temp, :man_water_temp, :woman_water_temp, area_attributes:[:id, :area_name])
    end
end
