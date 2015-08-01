## exam definitions
[
  {
    exam_name: "Present Tense Verbs"
  },
  {
    exam_name: "Most Common Words"
  }
].each do |args|
  ExamDefinition.where(args).first_or_create
end

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
