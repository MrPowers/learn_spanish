## exam_definitions
ed1 = ExamDefinition.where(exam_name: "All Words").first_or_create
ed2 = ExamDefinition.where(exam_name: "Present Tense Verbs").first_or_create

## questions
f = Rails.root.join("db", "data", "questions.csv")
CSV.foreach(f, headers: true, col_sep: "|").each do |attrs|
  Question.where(attrs.to_h).first_or_create
end

## words
f = Rails.root.join("db", "data", "words.csv")
CSV.foreach(f, headers: true, col_sep: "|").each do |attrs|
  Word.where(attrs.to_h).first_or_create
end

# exam_definitions_questions
ed1.questions << Question.all
ed2.questions << Question.where("tense is not null")

