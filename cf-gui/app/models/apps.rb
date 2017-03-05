class Apps
  def initialize
    @json = JSON.parse(`cf curl /v2/apps`)
  end

  def number
    @json["total_results"]
  end

  def used_memory_gb
    (used_memory.to_f / 1024).round(2)
  end

  private

  def used_memory
    used_memory = 0
    @json["resources"].each do |app|
      used_memory += app["entity"]["memory"].to_i
    end
    used_memory
  end
end
