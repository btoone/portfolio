require 'minitest/autorun'
require_relative 'word_count.rb'

# Run test continuously with entr or watch (entr allows for use of color 
# output and is easier to watch multiple files).
#
#     ls *.rb | entr -c ruby word_count_test.rb --pride
#     find . -name '*.rb' | entr -c ruby word_count_test.rb --pride
#
# Use the special character /_ to refer to the first file that changed.
# 
#     find . -name '*.rb' | entr -c ruby /_ --pride
#
# For better reporting output, especially with the spec formate,  use 
# minitest-reports gem.
#
class WordCountTest < Minitest::Test
  def setup
    @words = %w{ 
      Take me back 
      back to the stack 
      back to the strat with the lightening stap 
    }
  end

  def test_count_counts_word_occurance_in_a_sentence
    result = WordCount.count(@words)
    assert_equal 3, result['the']
  end

  def test_count_returns_hash
    assert_kind_of Hash, WordCount.count
  end
end

