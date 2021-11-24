# frozen_string_literal: true

module Reports
  class UniqPageViewsReport < BaseReport
    private

    def title
      "Uniq Page Views\n"
    end

    def output
      data.map { |path, uniq_ips| "#{path} #{uniq_ips} uniq views" }.join("\n")
    end

    def data
      @log.inject({}) { |hash, (path, ip)| hash.merge(path => ip.uniq.size) }.sort_by { |_key, value| value }.reverse
    end
  end
end
