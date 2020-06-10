class SaunnersController < ApplicationController
  before_action :set_saunner, only: [:show, :edit, :update]
  before_action :authenticate_saunner!, only: [:show, :edit, :update]

  PAGE = 5

  def show
    @reports = Report.where(saunner_id: params[:id]).page(params[:page]).per(PAGE)
    @areas = Area.all
  end

  def edit
    unless @saunner == current_saunner
      redirect_to saunner_path(@saunner)
    end
  end

  def update
    respond_to do |format|
      if @saunner.update(saunner_params)
        format.html { redirect_to saunner_path(@saunner.id), notice: 'プロフィールを更新しました。' }
        format.json { render :show, status: :ok, location: @saunner }
      else
        format.html { render :edit }
        format.json { render json: @saunner.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_saunner
    @saunner = Saunner.find_by(id: params[:id])
  end

  def saunner_params
    params.require(:saunner).permit(:user_name, :saunner_image)
  end
end
