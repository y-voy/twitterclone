class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
  end
  def new
    @feeling = Feeling.new
  end
  def create
    @feeling = Feeling.new(feeling_params)
    if @feeling.save
      redirect_to new_feeling_path
    else
      render :new
    end
  end
  private
  def feeling_params
    params.require(:feeling).permit(:content)
  end
end
