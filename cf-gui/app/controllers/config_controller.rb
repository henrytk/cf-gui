require 'json'

class ConfigController < ApplicationController
  def json
    config = Config.new
    @config_as_pretty_json = config.as_pretty_json()
  end
end
