# frozen_string_literal: true

require './lib/errors/parser_error'

module Errors
  class FileNotFound < ParserError
    def initialize(msg = 'Provided file not found')
      super
    end
  end
end
