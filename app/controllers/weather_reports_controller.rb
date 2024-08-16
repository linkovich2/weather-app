class WeatherReportsController < ApplicationController
  NO_ZIP_FOUND_MESSAGE = "No zip found in that address! Please try again."

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
  rescue ParseAddressForZipCode::NoZipFoundError
    flash[:error] = NO_ZIP_FOUND_MESSAGE
    redirect_to action: :index
  end
end
