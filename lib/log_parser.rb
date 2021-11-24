# frozen_string_literal: true

require_relative '../lib/validators/log_line_validator'
require_relative '../lib/log_store'

class LogParser
  include Validators
  def initialize(file_path, _log_store = LogStore.new)
    @file = File.read(file_path)
    @log_store = LogStore.new
    parse
  end

  def parse
    @file.each_line do |line|
      path, ip = line.split
      @log_store.add_or_update(path, ip) if LogLineValidator.new(path, ip).valid?
    end
    @log_store.stats
  end
end
