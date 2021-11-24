# frozen_string_literal: true

require 'ipaddress'

module Validators
  class IpValidator
    def initialize(address)
      @address = address
    end

    def valid?
      IPAddress.valid?(@address)
    end
  end
end
