class PredictionsController < ApplicationController

  def index
    @predictions = Prediction.all
  end


  def new
    @prediction = Prediction.new
    @fixtures = Fixture.all
  end

  #bit of hackaroo here...needs refactoring for failed saves
  def create
    params[:predictions].each do |prediction|
      @prediction = Prediction.new(prediction)
      if @prediction.valid?
         @prediction.save
      end
    end
    redirect_to root_path
  end
end