require 'minitest/autorun'
require_relative 'word_count.rb'

class WordCountTest < Minitest::Test
  def setup
    @words = %w{ 
      Take me back 
      back to the stack 
      back to the strat with the lightening stap 
    }
  end

  def test_count_returns_hash
    assert_kind_of Hash, WordCount.count
  end
end

