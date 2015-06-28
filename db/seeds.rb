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
  },
  {
    frequency_rank: 6,
    spanish: "decir",
    english: "to say, to tell"
  },
  {
    frequency_rank: 7,
    spanish: "ir",
    english: "to go"
  },
  {
    frequency_rank: 8,
    spanish: "ver",
    english: "to see"
  },
  {
    frequency_rank: 9,
    spanish: "dar",
    english: "to give"
  },
  {
    frequency_rank: 10,
    spanish: "saber",
    english: "to know"
  },
  {
    frequency_rank: 11,
    spanish: "querer",
    english: "to want, to love"
  },
  {
    frequency_rank: 12,
    spanish: "llegar",
    english: "to arrive, to come, to reach"
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
  },
  {
    pronoun: "yo",
    verb: "ser",
    tense: "present",
    spanish_sentence: "Yo _____ alto",
    english_sentence: "I am tall"
  },
  {
    pronoun: "yo",
    verb: "estar",
    tense: "present",
    spanish_sentence: "Yo _____ feliz",
    english_sentence: "I am happy"
  },
  {
    pronoun: "yo",
    verb: "tener",
    tense: "present",
    spanish_sentence: "Yo _____ una pregunta",
    english_sentence: "I have a question"
  },
  {
    pronoun: "yo",
    verb: "hacer",
    tense: "present",
    spanish_sentence: "Yo _____ la cama",
    english_sentence: "I make the bed"
  },
  {
    pronoun: "yo",
    verb: "poder",
    tense: "present",
    spanish_sentence: "Yo _____ hablar con él",
    english_sentence: "I can talk with him"
  },
  {
    pronoun: "yo",
    verb: "decir",
    tense: "present",
    spanish_sentence: "Yo _____ cosas estupidas a veces",
    english_sentence: "I say stupid things sometimes"
  },
  {
    pronoun: "yo",
    verb: "ir",
    tense: "present",
    spanish_sentence: "Yo _____ a la tienda",
    english_sentence: "I go to the store"
  }
]

questions.each do |attrs|
  FillInQuestion.where(attrs).first_or_create
end

