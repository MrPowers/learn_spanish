class WordCreator

  def words
    Reader.data_to_a
  end

  def word_parsers
    words.map do |word_arr|
      WordParser.new(word_arr)
    end
  end

  def validate_words
    word_parsers.each(&:validate!)
  end

  def create_words
    word_parsers.each do |word_parser|
      Word.where(word_parser.to_hash).first_or_create
    end
  end

end
