#!/usr/bin/env ruby
# frozen_string_literal: true

require './lib/parser'

Parser.new(ARGV[0]).parse
