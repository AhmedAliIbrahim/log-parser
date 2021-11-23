require 'test_helper'

describe Errors::FileNotFound do
  it 'raise an argument error when no path passed' do
    expect { raise described_class }.to raise_exception(Errors::FileNotFound)
  end
end
