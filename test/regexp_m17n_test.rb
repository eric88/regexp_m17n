# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      test_str = '.'
      enc.dummy? ? test_str.force_encoding(enc) : test_str.encode!(enc)
      assert(RegexpM17N.non_empty?(test_str))
    end
  end
end
