# 100 most common verbs here: http://www.linguasorb.com/spanish/verbs/most-common-verbs/1
verbs = [
  {
    frequency_rank: 1,
    spanish: "ser",
    english: "to be"
  },
  {
    frequency_rank: 2,
    spanish: "estar",
    english: "to be"
  },
  {
    frequency_rank: 3,
    spanish: "tener",
    english: "to have"
  },
  {
    frequency_rank: 4,
    spanish: "hacer",
    english: "to do, to make"
  },
  {
    frequency_rank: 5,
    spanish: "poder",
    english: "to be able, can"
  }
]

verbs.each do |attrs|
  Verb.where(attrs).first_or_create
end

questions = [
  {
    pronoun: "yo",
    verb: "querer",
    tense: "present",
    spanish_sentence: "Yo _____ ir a la playa",
    english_sentence: "I want to go to the beach"
  }
]

questions.each do |attrs|
  FillInQuestion.where(attrs).first_or_create
end

