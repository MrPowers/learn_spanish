## exam_definitions
ed1 = ExamDefinition.where(exam_name: "All Words").first_or_create
ed2 = ExamDefinition.where(exam_name: "Present Tense Verbs").first_or_create



word_de = Word.create(
  {
    spanish: "de",
    english: "of, from",
    part_of_speech: "prep",
    frequency: 2,
    commonly_oral: false
  }
)

word_que = Word.create(
  {
    spanish: "que",
    english: "that, which",
    part_of_speech: "conj",
    frequency: 3,
    commonly_oral: false
  }
)

word_y = Word.create(
  {
    spanish: "y",
    english: "and",
    part_of_speech: "conj",
    frequency: 4,
    commonly_oral: false
  }
)

word_estar = Word.create(
  {
    spanish: "estar",
    english: "to be",
    part_of_speech: "v",
    frequency: 17,
    commonly_oral: true
  }
)

word_tener = Word.create(
  {
    spanish: "tener",
    english: "to have",
    part_of_speech: "v",
    frequency: 18,
    commonly_oral: true
  }
)

word_todo = Word.create(
  {
    spanish: "todo",
    english: "all, every",
    part_of_speech: "adj",
    frequency: 22,
    commonly_oral: false
  }
)

## CREATE QUESTIONS
word_de.questions.create(
  {
    spanish: "La mesa es _____ madera",
    english: "The table is made of wood",
    answer: "de",
    hint: "made of",
    tense: nil
  }
)

word_de.questions.create(
  {
    spanish: "Yo soy _____ los Estados Unidos",
    english: "I am from New York",
    answer: "de",
    hint: "from",
    tense: nil
  }
)

word_y.questions.create(
  {
    spanish: "Mario _____ Juan son amigos",
    english: "Mario and Juan are friends",
    answer: "y",
    hint: "and",
    tense: nil
  }
)

word_y.questions.create(
  {
    spanish: "Me gusta manzanas _____ sal",
    english: "I like applies and salt",
    answer: "y",
    hint: "and",
    tense: nil
  }
)

word_estar.questions.create(
  {
    spanish: "Yo _____ en mi casa",
    english: "I am in my house",
    answer: "estoy",
    hint: "am",
    tense: "present"
  }
)

word_estar.questions.create(
  {
    spanish: "Tú _____ loca",
    english: "You are crazy",
    answer: "estás",
    hint: "are",
    tense: "present"
  }
)

word_tener.questions.create(
  {
    spanish: "Yo _____ tres hermanos",
    english: "I have three brothers",
    answer: "tengo",
    hint: "have",
    tense: "present"
  }
)

word_tener.questions.create(
  {
    spanish: "Tú _____ un gran cabeza",
    english: "You have a big head",
    answer: "tienes",
    hint: "have",
    tense: "present"
  }
)

word_todo.questions.create(
  {
    spanish: "Yo hago mi cama _____ los dias",
    english: "I make my bed every day",
    answer: "todos",
    hint: "every",
    tense: nil
  }
)

# exam_definitions_words
ed1.words << Word.all
ed2.words << Word.where("part_of_speech = 'v'")

