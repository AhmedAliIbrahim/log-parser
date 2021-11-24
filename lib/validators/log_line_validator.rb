# frozen_string_literal: true

require './lib/validators/ip_validator'
require './lib/validators/path_validator'

module Validators
  class LogLineValidator
    def initialize(path, ip)
      @path = path
      @ip = ip
    end

    def valid?
      valid_path? && valid_ip?
    end

    private

    def valid_path?
      PathValidator.new(@path).valid?
    end

    def valid_ip?
      IpValidator.new(@ip).valid?
    end
  end
end
