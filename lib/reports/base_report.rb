# frozen_string_literal: true

module Reports
  class BaseReport
    def initialize(log)
      @log = log
    end

    def to_s
      [title, output].join
    end

    private

    def title
      raise NotImplementedError
    end

    def output
      raise NotImplementedError
    end

    def data
      raise NotImplementedError
    end
  end
end
