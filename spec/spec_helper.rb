# frozen_string_literal: true

require 'rspec/its'

RSpec.configure do |config|
  config.expect_with(:rspec) do |c|
    c.syntax = %i[should expect]
  end
end
