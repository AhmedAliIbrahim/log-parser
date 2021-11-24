# frozen_string_literal: true

require './lib/reports/base_report'
module Reports
  class PageViewsReport < BaseReport
    private

    def title
      "Page Views\n"
    end

    def output
      data.map { |path, ip_count| "#{path} #{ip_count / 2} views" }.join("\n")
    end

    def data
      @log.inject({}) { |hash, (path, ip)| hash.merge(path => ip.size) }.sort_by { |_key, value| value }.reverse
    end
  end
end
