# frozen_string_literal: true

require './lib/errors/file_not_found'
require './lib/errors/missing_argument'

class Parser
  include Errors

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    raise MissingArgument unless @file_path
    raise FileNotFound unless File.file?(@file_path) && File.exist?(@file_path)
  rescue ParserError => e
    puts e.message
  end
end
