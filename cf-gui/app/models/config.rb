class Config
  def initialize
    cf_cli_config_path = "#{ENV['HOME']}/.cf/config.json"
    if File.exists?(cf_cli_config_path)
      @json = JSON.parse(File.read(cf_cli_config_path))
    end
  end

  def as_pretty_json
    JSON.pretty_generate(@json)
  end

  def api
    @json["Target"]
  end

  def org_name
    @json["OrganizationFields"]["Name"]
  end

  def space_name
    @json["SpaceFields"]["Name"]
  end
end
