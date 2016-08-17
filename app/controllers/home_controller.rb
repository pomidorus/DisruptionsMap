class HomeController < ApplicationController
  def index
    TimsParseJob.perform_later
  end
end
