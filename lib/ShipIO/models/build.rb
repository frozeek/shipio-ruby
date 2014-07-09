module ShipIO
  class Build
    attr_accessor :uuid, :build_number, :commit_sha, :state, :successful, :log_url

    def initialize(options = {})
      @uuid = options[:uuid]
      @build_number = options[:build_number]
      @commit_sha = options[:commit_sha]
      @state = options[:state]
      @successful = options[:successful]
      @log_url = options[:log_url]
    end
  end
end