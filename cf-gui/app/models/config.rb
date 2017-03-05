class Config
  def initialize
    cf_cli_config_path = "#{ENV['HOME']}/.cf/config.json"
    if File.exists?(cf_cli_config_path)
      @config_file = File.read(cf_cli_config_path)
    end
  end

  def as_json
    JSON.parse(@config_file)
  end

  def as_pretty_json
    JSON.pretty_generate(self.as_json)
  end
end
