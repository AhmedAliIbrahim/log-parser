# frozen_string_literal: true

require './lib/errors/parser_error'

module Errors
  class MissingArgument < ParserError
    def initialize(msg = 'Missing file argument')
      super
    end
  end
end
