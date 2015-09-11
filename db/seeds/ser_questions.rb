### ser & estar questions
word_ser = Word.where(
  {
    spanish: "ser",
    english: "to be",
    part_of_speech: "v",
    frequency: 8,
    commonly_oral: true
  }
).first_or_create

#########
# Present
#########

word_ser.questions.where(
  {
    spanish: "Yo _____ de Nueva York",
    english: "I am from New York",
    answer: "soy",
    hint: "am",
    tense: "present"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Tú _____ un doctor",
    english: "You are a doctor",
    answer: "eres",
    hint: "are",
    tense: "present"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ella _____ mi mama",
    english: "She is my mother",
    answer: "es",
    hint: "is",
    tense: "present"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "We are students",
    english: "Nosotros _____ estudiantes",
    answer: "somos",
    hint: "are",
    tense: "present"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ellos _____ maestros",
    english: "They are teachers",
    answer: "son",
    hint: "are",
    tense: "present"
  }
).first_or_create




#########
# Preterite
#########

word_ser.questions.where(
  {
    spanish: "I _____ un doctor",
    english: "I was a doctor",
    answer: "fui",
    hint: "was",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Tú _____ un estudiante hace cinco años",
    english: "You were a student five years ago",
    answer: "fuiste",
    hint: "were",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Tú _____ un estudiante hace cinco años",
    english: "You were a student five years ago",
    answer: "fuiste",
    hint: "were",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ella _____ una estudiante en 2005",
    english: "She was a student in 2005",
    answer: "fue",
    hint: "was",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Nosotros _____ mejor amigos en 2010",
    english: "We were best friends in 2010",
    answer: "fuimos",
    hint: "were",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ellos _____ jugadores de fútbol en colegio",
    english: "They were soccer players in high school",
    answer: "fueron",
    hint: "were",
    tense: "preterite"
  }
).first_or_create


#########
# Imperfect
#########


