## exam definitions
[
  {
    exam_name: "Present Tense Verbs",
    query: ""
  },
  {
    exam_name: "Most Common Words",
    query: ""
  }
].each do |args|
  ExamDefinition.where(args).first_or_create
end

## words
f = Rails.root.join("db", "data", "words.csv")
CSV.foreach(f, headers: true, col_sep: "|").each do |attrs|
  Word.where(attrs.to_h).first_or_create
end
