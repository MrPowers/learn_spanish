# 100 most common verbs here: http://www.linguasorb.com/spanish/verbs/most-common-verbs/1
f = Rails.root.join("db", "data", "verbs.csv")
CSV.foreach(f, headers: true, col_sep: "|").each do |attrs|
  Verb.where(attrs.to_h).first_or_create
end

f = Rails.root.join("db", "data", "present_tense_questions.csv")
CSV.foreach(f, headers: true, col_sep: "|").each do |attrs|
  VerbQuestion.where(attrs.to_h).first_or_create
end

definitions = [
  { tense: "present" },
  { tense: "preterite" },
  { tense: "imperfect" }
]

definitions.each do |definition|
  VerbExamDefinition.where(definition).first_or_create
end
