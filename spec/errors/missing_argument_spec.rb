# frozen_string_literal: true

require 'test_helper'

describe Errors::MissingArgument do
  it 'raise an argument error when no path passed' do
    expect { raise described_class }.to raise_exception(Errors::MissingArgument)
  end
end
