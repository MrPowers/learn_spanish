word_de = Word.where(
  {
    spanish: "de",
    english: "of, from",
    part_of_speech: "prep",
    frequency: 2,
    commonly_oral: false
  }
).first_or_create

word_de.questions.where(
  {
    spanish: "La mesa es _____ madera",
    english: "The table is made of wood",
    answer: "de",
    hint: "made of",
    tense: nil
  }
).first_or_create

word_de.questions.where(
  {
    spanish: "Yo soy _____ los Estados Unidos",
    english: "I am from New York",
    answer: "de",
    hint: "from",
    tense: nil
  }
).first_or_create

