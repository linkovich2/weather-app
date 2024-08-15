class WeatherReportsController < ApplicationController
  def index
  end

  def show
    GetWeatherReport.process(params[:id])
  end

  def create
    zip = ParseAddressForZipCode.process(params[:address])
    redirect_to action: :show, id: zip
  end
end
