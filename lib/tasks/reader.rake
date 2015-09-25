desc "read raw data"
task :read_raw_data => :environment do
  #w = WordParser.new(["2 de prep of, from\n", "• el hijo de un hermano mío\n", "100 | 1319834\n"])
  #p w.to_hash
  #a2 = ["19 le pron [3rd person] (indir obj)\n", "• nunca le dijo la verdad\n", "100 | 98211\n"]
  #w = WordParser.new(a2)
  #p w.to_hash

  #a3 = ["100 | 106642 +o\n", "19 le pron [3rd person] (indir obj)\n", "• nunca le dijo la verdad\n"]
  #w = WordParser.new(a3)
  #p w.to_hash
  WordCreator.new.create_words
end
