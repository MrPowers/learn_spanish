# examples
# ["2 de prep of, from\n", "• el hijo de un hermano mío\n", "100 | 1319834\n"]
# ["3 que conj that, which\n", "• dice que no\n", "100 | 662653\n"]
# ["4 y conj and\n", "• él y ella sabían leer y escribir\n", "100 | 562162\n"]
# ["9 se pron [“reflexive” marker]\n", "• la abuela se acostó tranquila\n", "100 | 329012\n"]
# ["19 le pron [3rd person] (indir obj)\n", "• nunca le dijo la verdad\n", "100 | 98211\n"]
# ["53 también adv also\n", "• y también van a estar los otros\n", "100 | 33348\n"]

# extra line example
# ["100 | 106642 +o\n", "19 le pron [3rd person] (indir obj)\n", "• nunca le dijo la verdad\n"]

# stuff this class needs to do
# 1. make sure the array it is instantiated with has an acceptable format
# 2. parse out the spanish, english, part_of_speech, frequency, and commonly_oral

class WordParser

  attr_reader :word_arr

  def initialize(word_arr)
    @word_arr = word_arr
  end

  def to_hash
    validate!
    {
      "spanish" => spanish,
      "english" => english,
      "part_of_speech" => part_of_speech,
      "frequency" => frequency,
      "commonly_oral" => commonly_oral
    }
  end

  def validate!
    raise "#{l1} is an invalid format.  Fix #{word_arr}" if l1_match.nil?
  end

  private

  def frequency
    l1_match[1]
  end

  def spanish
    l1_match[2]
  end

  def part_of_speech
    l1_match[3]
  end

  def english
    l1_match[4]
  end

  # l1 stands for "line one"
  def l1
    word_arr[0].strip
  end

  def l3
    word_arr[2].strip
  end

  def l1_regex
    /(\d+) (\p{Alpha}+) ((?:\w|\/)+) (.*)/
  end

  def l1_match
    l1.match(l1_regex)
  end

  def commonly_oral
    l3.include?("+o")
  end

end

