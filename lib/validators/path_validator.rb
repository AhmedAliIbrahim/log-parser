# frozen_string_literal: true

module Validators
  class PathValidator
    PATTERN = %r{\A/[\W\-]*(/[\W\-]*)*\z}.freeze
    def initialize(path)
      @path = path
    end

    def valid?
      PATTERN.match?(@path)
    end
  end
end
