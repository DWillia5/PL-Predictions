class PredictionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @predictions = Prediction.all
  end

  def my_predictions
     @predictions = current_user.predictions
  end

  def new
    @prediction = Prediction.new
    @fixtures = Fixture.all
  end

  #bit of hackaroo here...needs refactoring for failed saves
  def create
    params[:predictions].each do |prediction|
      @prediction = current_user.predictions.new(prediction)
      if @prediction.valid?
         @prediction.save
      end
    end
    redirect_to root_path
  end
end