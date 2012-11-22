class FixturesController < ApplicationController
  
  def index
    @fixtures = Fixture.all
  end

  def new
    @fixture = Fixture.new
  end

  def create 
    @fixture = Fixture.new(params[:fixture])
    if @fixture.save
      redirect_to root_path
    else
      render :new
    end
  end
  
end