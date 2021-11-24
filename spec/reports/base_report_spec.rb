# frozen_string_literal: true

describe Reports::BaseReport do
  subject { described_class.new(LogParser.new(file_path).parse) }
  it 'respond to to_s' do
    expect(subject).to respond_to(:to_s)
  end
  it 'raise not implemented error' do
    expect { subject.to_s }.to raise_exception(NotImplementedError)
  end
end
