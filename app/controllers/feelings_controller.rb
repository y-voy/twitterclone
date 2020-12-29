class FeelingsController < ApplicationController
  before_action :set_feeling, only: [:edit, :update]
  def index
    @feelings = Feeling.all
  end
  def new
    @feeling = Feeling.new
  end
  def create
    @feeling = Feeling.new(feeling_params)
    if @feeling.save
      redirect_to new_feeling_path, notice: '投稿しました！'
    else
      render :new
    end
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
  private
  def feeling_params
    params.require(:feeling).permit(:content)
  end
  def set_feeling
    @feeling = Feeling.find(params[:id])
  end
end
