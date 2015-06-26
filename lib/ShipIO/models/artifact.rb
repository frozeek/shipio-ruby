module ShipIO
  class Artifact
    attr_accessor :id, :name, :download_url

    def initialize(options = {})
      @id = options[:id]
      @name = options[:name]
      @download_url = options[:download_url]
    end
  end
end

