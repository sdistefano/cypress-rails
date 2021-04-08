require_relative "launches_cypress"
require_relative "config"

module CypressRails
  class OpenCt
    def initialize
      @launches_cypress = LaunchesCypress.new
    end

    def call(config = Config.new)
      @launches_cypress.call("open-ct", config)
    end
  end
end
