## exam_definitions
#ed1 = ExamDefinition.where(exam_name: "All Words").first_or_create
#ed2 = ExamDefinition.where(exam_name: "Present Tense Verbs").first_or_create

Dir.glob("#{Rails.root}/db/seeds/*.rb").each {|f| require f}

# exam_definitions_words
#ed1.words << Word.all
#ed2.words << Word.where("part_of_speech = 'v'")




