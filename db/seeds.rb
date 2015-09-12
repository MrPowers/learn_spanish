## exam_definitions
#ed1 = ExamDefinition.where(exam_name: "All Words").first_or_create
#ed2 = ExamDefinition.where(exam_name: "Present Tense Verbs").first_or_create

Dir.glob("#{Rails.root}/db/seeds/*.rb").each {|f| require f}

[
  [0, "present"],
  [1, "preterite"],
  [2, "imperfect"],
  [3, "future"],
  [4, "conditional"],
  [5, "perfect_present"],
  [6, "perfect_past"],
  [7, "perfect_future"],
  [8, "perfect_conditional"],
  [9, "imperative"],
  [10, "subjunctive_present"]
  #[11, "subjunctive_imperfect"],
  #[12, "subjunctive_future"],
  #[13, "subjunctive_imperfect_2"],
  #[14, "perfect_subjunctive_present"],
  #[15, "perfect_subjunctive_past"],
  #[16, "perfect_subjunctive_future"]
].each do |difficulty, tense|
  VerbLearningPath.where(difficulty: difficulty, tense: tense).first_or_create
end

# exam_definitions_words
#ed1.words << Word.all
#ed2.words << Word.where("part_of_speech = 'v'")




