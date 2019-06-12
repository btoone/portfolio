class WordCount
  def self.count(words = [])
    result = Hash.new()

    words.each do |word|
      if result[word].nil?
        result[word] = 1
      else
        result[word] += 1
      end
    end

    return result
  end
end

