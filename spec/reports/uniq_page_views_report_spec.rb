# frozen_string_literal: true

describe Reports::UniqPageViewsReport do
  subject { described_class.new(LogParser.new(file_path).parse).to_s }
  it 'respond to to_s' do
    expect(subject).to respond_to(:to_s)
  end
  it 'generate page views report' do
    output = [
      'Uniq Page Views',
      '/index 23 uniq views',
      '/home 23 uniq views',
      '/contact 23 uniq views',
      '/help_page/1 23 uniq views',
      '/about/2 22 uniq views',
      '/about 21 uniq views'
    ].join("\n")

    expect(subject).to eq(output)
  end
end
