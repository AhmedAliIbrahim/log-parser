# frozen_string_literal: true

class LogStore
  attr_accessor :stats

  def initialize(stats = {})
    @stats = stats
  end

  def add_or_update(path, ip)
    if @stats.key?(path)
      @stats[path].push(ip)
    else
      @stats[path] = [ip]
    end
  end
end
