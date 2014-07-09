module ShipIO
  class Job
    attr_accessor :uuid, :name, :repository_name, :repository_branch, :repository_url
    attr_reader :client

    def initialize(client, options = {})
      @client = client

      @uuid = options[:uuid]
      @name = options[:name]
      @repository_name = options[:repository_name]
      @repository_branch = options[:repository_branch]
      @repository_url = options[:repository_url]
    end

    def builds
      @client.builds(self)
    end
  end
end