module ShipIO
  class Build
    attr_accessor :uuid, :build_number, :commit_sha, :state, :successful, :log_url, :artifacts

    def initialize(options = {})
      @uuid = options[:uuid]
      @build_number = options[:build_number]
      @commit_sha = options[:commit_sha]
      @state = options[:state]
      @successful = options[:successful]
      @log_url = options[:log_url]
      @artifacts = options[:artifacts]
    end
  end
end
