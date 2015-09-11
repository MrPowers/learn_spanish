word_y = Word.where(
  {
    spanish: "y",
    english: "and",
    part_of_speech: "conj",
    frequency: 4,
    commonly_oral: false
  }
).first_or_create

word_y.questions.where(
  {
    spanish: "Mario _____ Juan son amigos",
    english: "Mario and Juan are friends",
    answer: "y",
    hint: "and",
    tense: nil
  }
).first_or_create

word_y.questions.where(
  {
    spanish: "Me gusta manzanas _____ sal",
    english: "I like applies and salt",
    answer: "y",
    hint: "and",
    tense: nil
  }
).first_or_create

