# frozen_string_literal: true

module Validators
  class PathValidator
    PATTERN = %r{\A/[\w\-]*(/[\w\-]*)?\z}.freeze
    def initialize(path)
      @path = path
    end

    def valid?
      PATTERN.match?(@path)
    end
  end
end
