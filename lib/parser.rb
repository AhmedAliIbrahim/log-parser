# frozen_string_literal: true

require './lib/errors/file_not_found'
require './lib/errors/missing_argument'
require './lib/log_parser'
require './reports/page_views_report'
require './reports/uniq_page_views_report'

class Parser
  include Errors
  include Reports

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    raise MissingArgument unless @file_path
    raise FileNotFound unless File.file?(@file_path) && File.exist?(@file_path)

    log = LogParser.new(@file_path).parse
    puts PageViewsReport.new(log).to_s
    puts UniqPageViewsReport.new(log).to_s
  rescue ParserError => e
    puts e.message
  end
end
