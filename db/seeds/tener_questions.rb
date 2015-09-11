word_tener = Word.where(
  {
    spanish: "tener",
    english: "to have",
    part_of_speech: "v",
    frequency: 18,
    commonly_oral: true
  }
).first_or_create

#########
# Present
#########

word_tener.questions.where(
  {
    spanish: "Yo _____ tres hermanos",
    english: "I have three brothers",
    answer: "tengo",
    hint: "have",
    tense: "present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tú _____ un gran cabeza",
    english: "You have a big head",
    answer: "tienes",
    hint: "have",
    tense: "present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Él ____ 4 hermanas",
    english: "He has 4 sisters",
    answer: "tiene",
    hint: "has",
    tense: "present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros _____ un gato",
    english: "We have a cat",
    answer: "tenemos",
    hint: "have",
    tense: "present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos _____ un perro",
    english: "They have a dog",
    answer: "tienen",
    hint: "have",
    tense: "present"
  }
).first_or_create

#########
# Preterite
#########

word_tener.questions.where(
  {
    spanish: "Yo _____ un mal dia",
    english: "I had a bad day",
    answer: "tuve",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tú _____ un buen vacaciones",
    english: "You had a good vacation",
    answer: "tuviste",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Él _____ un buen carro",
    english: "He had a nice car",
    answer: "tuvo",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros _____ divertido en la fiesta",
    english: "We had fun at the party",
    answer: "tuvimos",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos _____ una camera en la graduacion",
    english: "They had a camera at the graduation",
    answer: "tuvieron",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

#########
# Imperfect
#########

word_tener.questions.where(
  {
    spanish: "Yo _____ pelo largo",
    english: "I used to have long hair",
    answer: "tenía",
    hint: "used to have",
    tense: "imperfect"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tú _____ un carro rojo",
    english: "You used to have a red car",
    answer: "tenías",
    hint: "used to have",
    tense: "imperfect"
  }
).first

word_tener.questions.where(
  {
    spanish: "Ella _____ un gato",
    english: "She used to have a cat",
    answer: "tenía",
    hint: "used to have",
    tense: "imperfect"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros _____ una casa grande",
    english: "We used to have a big house",
    answer: "teníamos",
    hint: "used to have",
    tense: "imperfect"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos _____ un computador viejo",
    english: "They used to have an old computer",
    answer: "tenían",
    hint: "used to have",
    tense: "imperfect"
  }
).first_or_create


