class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
  end
  def new
    @feeling = Feeling.new
  end
  def create
    Feeling.create(feeling_params)
    redirect_to new_feeling_path
  end
  private
  def feeling_params
    params.require(:feeling).permit(:content)
  end
end
