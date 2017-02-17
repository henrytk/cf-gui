require 'json'

class ConfigController < ApplicationController
  def json
    cf_cli_config_path = "#{ENV['HOME']}/.cf/config.json"
    if File.exists?(cf_cli_config_path)
      @config_file = JSON.pretty_generate(JSON.parse(File.read(cf_cli_config_path)))
    end
  end
end
