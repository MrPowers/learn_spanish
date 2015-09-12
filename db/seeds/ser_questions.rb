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
    spanish: "Ella _____ mi mamá",
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
    spanish: "Yo _____ un estudiante",
    english: "I was a estudiante",
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
    spanish: "Ella _____ la ganadora del concurso",
    english: "She was the winner of the contest",
    answer: "fue",
    hint: "was",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Nosotros _____ mejores amigos en 2010",
    english: "We were best friends in 2010",
    answer: "fuimos",
    hint: "were",
    tense: "preterite"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ellos _____ jugadores de fútbol en el colegio",
    english: "They were soccer players in high school",
    answer: "fueron",
    hint: "were",
    tense: "preterite"
  }
).first_or_create


#########
# Imperfect
#########

word_ser.questions.where(
  {
    spanish: "Yo _____ jugador de fútbol",
    english: "I used to be a soccer player",
    answer: "era",
    hint: "used to be",
    tense: "imperfect"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Tú _____ la amiga de Fred",
    english: "You used to be Fred's friend",
    answer: "eras",
    hint: "used to be",
    tense: "imperfect"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Él _____ famoso en los años ochenta",
    english: "He used to be famous in the 80s",
    answer: "era",
    hint: "used to be",
    tense: "imperfect"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Nosotros _____ inseparables",
    english: "We used to be inseparable",
    answer: "éramos",
    hint: "used to be",
    tense: "imperfect"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ellos _____ los mejores jugadores de tenis",
    english: "They used to be the best tennis players",
    answer: "eran",
    hint: "used to be",
    tense: "imperfect"
  }
).first_or_create

#########
# Future
#########

word_ser.questions.where(
  {
    spanish: "Yo _____ una gran maestra",
    english: "I will be a great teacher",
    answer: "seré",
    hint: "will be",
    tense: "future"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Tú _____ una buena madre",
    english: "You will be a good mother",
    answer: "serás",
    hint: "will be",
    tense: "future"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Mañana _____ sábado",
    english: "Tomorrow will be Saturday",
    answer: "será",
    hint: "will be",
    tense: "future"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Nosotros _____ esposos el proximo año",
    english: "We will be husband and wife next year",
    answer: "seremos",
    hint: "will be",
    tense: "future"
  }
).first_or_create

word_ser.questions.where(
  {
    spanish: "Ellos _____ muy viejos en 20 años",
    english: "They will be very old in 20 years",
    answer: "serán",
    hint: "will be",
    tense: "future"
  }
).first_or_create


#########
# Conditional
#########

word_ser.questions.where(
  {
    spanish: "Yo _____ más feliz sin ti",
    english: "They will be very old in 20 years",
    answer: "serán",
    hint: "will be",
    tense: "conditional"
  }
).first_or_create

