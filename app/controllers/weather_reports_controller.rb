class WeatherReportsController < ApplicationController
  def index
  end

  def show
    GetWeatherReport.process(params[:id])
  end

  def create
    # this needs to process the form, get the zip and redirect to #show with id = zip
  end
end