# frozen_string_literal: true

require 'test_helper'

describe Validators::PathValidator do
  context 'valid path' do
    %w[/ /home /home/ahmedali /home/ahmed-ali /home/ahmed_ali /help_page/1].each do |path|
      it "should be valid for #{path}" do
        expect(described_class.new(path).valid?).to be_truthy
      end
    end
  end

  context 'invalid path' do
    %w[' test~].each do |path|
      it "should be invalid for #{path}" do
        expect(described_class.new(path).valid?).to be_falsey
      end
    end
  end
end
