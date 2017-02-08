class Book
  attr_reader :title

  def title=(title)
    little_words = %w{and the to a an in of}

    @title = title.capitalize.split.map { |word|
      little_words.include?(word) ? word : word.capitalize
    }.join(' ')

  end

end


