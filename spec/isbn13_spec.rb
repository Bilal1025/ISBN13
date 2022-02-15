# frozen_string_literal: true

require_relative '../lib/isbn13'
require 'rspec/its'

describe ISBN13 do
  it 'calculate the check digit of an ISBN13 barcode' do
    expect(ISBN13.calculate(978_014_300_723)).to eq(9_780_143_007_234)
  end

  it 'raises exception if number is not 12 digits' do
    expect { ISBN13.calculate(1234) }.to raise_exception(StandardError, 'number should be 12 digit in length')
  end
end
