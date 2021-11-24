# frozen_string_literal: true

require 'test_helper'

# rubocop:disable Metrics/BlockLength
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
    let(:file) { file_path }

    it 'show report' do
      report = [
        'Page Views',
        '/about/2 90 views',
        '/contact 89 views',
        '/index 82 views',
        '/about 81 views',
        '/help_page/1 80 views',
        '/home 78 views',
        'Uniq Page Views',
        '/index 23 uniq views',
        '/home 23 uniq views',
        '/contact 23 uniq views',
        '/help_page/1 23 uniq views',
        '/about/2 22 uniq views',
        "/about 21 uniq views\n"
      ].join("\n")

      expect { described_class.new(file).parse }.to output(report).to_stdout
    end
  end
end
# rubocop:enable Metrics/BlockLength
