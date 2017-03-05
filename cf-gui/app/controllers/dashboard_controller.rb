class DashboardController < ApplicationController
  def overview
    @config = Config.new
    @apps = Apps.new
  end
end
