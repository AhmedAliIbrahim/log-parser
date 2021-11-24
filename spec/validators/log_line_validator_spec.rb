# frozen_string_literal: true

describe Validators::LogLineValidator do
  context 'valid line' do
    it 'should be valid line' do
      expect(described_class.new('/', '192.168.1.1').valid?).to be_truthy
    end
  end

  context 'invalid line' do
    it 'should be invalid line' do
      expect(described_class.new('-', '192.168.1').valid?).to be_falsey
    end
  end
end
