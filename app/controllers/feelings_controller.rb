class FeelingsController < ApplicationController
  before_action :set_feeling, only: [:show, :edit, :update, :destroy]
  def index
    @feelings = Feeling.all
  end
  def new
    @feeling = Feeling.new
  end
  def create
    @feeling = Feeling.new(feeling_params)
    if params[:back]
      render :new
    else
      if @feeling.save
        redirect_to feelings_path, notice: '投稿しました！'
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @feeling.update(feeling_params)
      redirect_to feelings_path, notice: '編集しました！'
    else
      render :edit
    end
  end
  def destroy
    @feeling.destroy
    redirect_to feelings_path, notice: '削除しました！'
  end
  def confirm
    @feeling = Feeling.new(feeling_params)
    render :new if @feeling.invalid?
  end
  private
  def feeling_params
    params.require(:feeling).permit(:content)
  end
  def set_feeling
    @feeling = Feeling.find(params[:id])
  end
end
