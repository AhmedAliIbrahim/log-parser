# frozen_string_literal: true

require 'test_helper'

describe Parser do
  context 'Failure' do
    it 'raise an argument error when no path passed' do
      expect { Parser.new }.to raise_exception(ArgumentError)
    end

    it 'fails to run without file' do
      msg = Errors::MissingArgument.new.message
      expect { described_class.new(nil).parse }.to output("#{msg}\n").to_stdout
    end

    it 'fails to run with non existant file' do
      msg = Errors::FileNotFound.new.message
      expect { described_class.new('non-existant-file.log').parse }.to output("#{msg}\n").to_stdout
    end
  end

  context 'Success' do
  end
end
