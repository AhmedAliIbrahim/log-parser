# frozen_string_literal: true

# require 'ipaddress'

module Validators
  class IpValidator
    PATTERN = /^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/.freeze
    def initialize(address)
      @address = address
    end

    def valid?
      # for real ip addesses
      # IPAddress.valid?(@address)
      # for testing purpose
      PATTERN.match?(@address)
    end
  end
end
