class WeatherReportsController < ApplicationController
  # displays weather report address form
  def index
  end

  # shows weather report for zip
  def show
    @report = GetWeatherReport.process(params[:id])
  end

  # parses zip from address and sends to weather report
  def create
    zip = ParseAddressForZipCode.process(params[:address])
    redirect_to action: :show, id: zip
  end
end
