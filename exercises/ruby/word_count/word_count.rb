class WordCount
  def self.count(words = [])
    # Specify a default value of 0 (integer) to avoid nil error when doing += 1
    result = Hash.new(0)

    words.each do |word|
      result[word] += 1
    end

    return result
  end
end

