require_relative "launches_cypress"
require_relative "config"

module CypressRails
  class RunCt
    def initialize
      @launches_cypress = LaunchesCypress.new
    end

    def call(config = Config.new)
      @launches_cypress.call("run-ct", config)
    end
  end
end
