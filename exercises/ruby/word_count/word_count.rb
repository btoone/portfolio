# Design Considerations: 
# - How do I want to interact with this class?
#   - WordCount.count(sentence)
# - What about passing a block or using .call to act immediately?
#   - WordCount.call(sentence) #=> {key: int}
#
class WordCount
  def self.count(words = [])
    # Specify a default value of 0 (integer) to avoid nil error when doing += 1
    result = Hash.new(0)

    ## Solution: Dependent on default Hash value being set to 0 (integer)
    #
    words.map { |w| result[w] += 1 }

    ## Solution: Verbose, dependent on default Hash value being set to 0 (integer)
    #
    # words.each do |word|
    #   result[word] += 1
    # end

    ## Solution: Brute force method
    #
    # words.each do |word|
    #   if result[word].nil?
    #     result[word] = 1
    #   else
    #     result[word] += 1
    #   end
    # end

    return result
  end
end

