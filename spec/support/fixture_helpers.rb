# frozen_string_literal: true

module FixtureHelpers
  def file_path
    File.join __dir__, '..', 'fixtures', 'webserver.log'
  end
end
