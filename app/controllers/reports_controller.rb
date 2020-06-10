class ReportsController < ApplicationController
  before_action :set_sauna, only: [:new, :create, :edit, :update]
  before_action :authenticate_saunner!, only: [:new, :edit, :create, :destroy]

  # GET /reports
  # GET /reports.json
  # def index
  #   @reports = Report.all
  # end

  # GET /reports/1
  # GET /reports/1.json
  # def show
  # end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    @sauna = Sauna.find_by(id: params[:sauna_id])
    respond_to do |format|
      if @report.save
        format.html { redirect_to @sauna, notice: 'サ活は正常に記録されました。' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  # def update
  #   respond_to do |format|
  #     if @report.update(report_params)
  #       format.html { redirect_to @sauna, notice: 'サ活は正常に更新されました。' }
  #       format.json { render :show, status: :ok, location: @report }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @report.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    report = Report.find(params[:id])
    if report.saunner_id == current_saunner.id
      report.destroy
    end
    respond_to do |format|
      format.html { redirect_to saunner_path(current_saunner), notice: '投稿が削除されました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_sauna
      @sauna = Sauna.find(params[:sauna_id])
    end

    # Only allow a list of trusted parameters through.
    def report_params
      permitted_report_params = params.require(:report).permit(:sauna_rate, :water_bath_rate, :title, :comment, :sakatsu_photo)
      permitted_report_params[:saunner] = current_saunner
      permitted_report_params[:sauna] = @sauna
      permitted_report_params
    end
end
