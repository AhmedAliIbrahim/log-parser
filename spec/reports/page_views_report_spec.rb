# frozen_string_literal: true

describe Reports::PageViewsReport do
  subject { described_class.new(LogParser.new(file_path).parse).to_s }
  it 'respond to to_s' do
    expect(subject).to respond_to(:to_s)
  end
  it 'generate page views report' do
    output = [
      'Page Views',
      '/about/2 90 views',
      '/contact 89 views',
      '/index 82 views',
      '/about 81 views',
      '/help_page/1 80 views',
      '/home 78 views'
    ].join("\n")

    expect(subject).to eq(output)
  end
end
