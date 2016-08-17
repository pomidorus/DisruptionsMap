class HomeController < ApplicationController
  def index
    TimsParseWorker.perform_async
  end
end
