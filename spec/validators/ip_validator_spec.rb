# frozen_string_literal: true

require 'test_helper'

describe Validators::IpValidator do
  context 'valid address' do
    %w[127.0.0.1 233.112.12.244 126.318.035.038].each do |address|
      it "should be valid for #{address}" do
        expect(described_class.new(address).valid?).to be_truthy
      end
    end
  end

  context 'invalid address' do
    %w[127.0.0 233.112.12].each do |address|
      it "should be invalid for #{address}" do
        expect(described_class.new(address).valid?).to be_falsey
      end
    end
  end
end
