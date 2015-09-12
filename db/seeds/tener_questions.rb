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
    spanish: "Él ____ 3 manzanas",
    english: "He has 3 apples",
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
    spanish: "Ellos _____ una casa grande",
    english: "They have a big house",
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
    spanish: "Yo _____ un mal día",
    english: "I had a bad day",
    answer: "tuve",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tú _____ unas buenas vacaciones",
    english: "You had a good vacation",
    answer: "tuviste",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Él _____ muchos hijos",
    english: "He had a lot of children",
    answer: "tuvo",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros _____ una linda noche",
    english: "We had a nice night",
    answer: "tuvimos",
    hint: "had",
    tense: "preterite"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos _____ problemas con la empleada",
    english: "They had problems with the employee",
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
    spanish: "Yo _____ el pelo largo hace 3 años",
    english: "I used to have long hair 3 years ago",
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


#########
# Future
#########

word_tener.questions.where(
  {
    spanish: "Yo _____ mucho dinero en 1 año",
    english: "I will have a lot of money in one year",
    answer: "tendré",
    hint: "will have",
    tense: "future"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tú _____ una hija en dos meses",
    english: "You will have a daughter in two months",
    answer: "tendrás",
    hint: "will have",
    tense: "future"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ella _____ una hija en dos meses",
    english: "She will have a daughter in two months",
    answer: "tendrá",
    hint: "will have",
    tense: "future"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros _____ vacaciones en junio",
    english: "We will have a vacation en June",
    answer: "tendremos",
    hint: "will have",
    tense: "future"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos _____ muchos animales en el proximo mes",
    english: "They will have a lot of animals next month",
    answer: "tendrán",
    hint: "will have",
    tense: "future"
  }
).first_or_create

#########
# conditional
#########
#
#CONDITIONAL IS REALLY HARD TO MAKE EXAMPLES FOR
#LIZ'S SPANISH ISN'T GOOD ENOUGH

#word_tener.questions.where(
  #{
    #spanish: "Yo _____ más dinero si yo ahorro más",
    #english: "I would have more money if I saved more",
    #answer: "tendría",
    #hint: "would have",
    #tense: "conditional"
  #}
#).first_or_create

#word_tener.questions.where(
  #{
    #spanish: "Tú _____ más ropa si tú tuvieras más dinero",
    #english: "You would have more clothes if you had more money",
    #answer: "tendrás",
    #hint: "would have",
    #tense: "conditional"
  #}
#).first_or_create


#########
# perfect_present
#########

word_tener.questions.where(
  {
    spanish: "Yo _____ un noche linda",
    english: "I have had a nice night",
    answer: "he tenido",
    hint: "have had",
    tense: "perfect_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tú _____ buena suerte",
    english: "You have had good luck",
    answer: "has tenido",
    hint: "have had",
    tense: "perfect_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Él _____ un resfriado por tres dias",
    english: "He has had a cold for three days",
    answer: "ha tenido",
    hint: "has had",
    tense: "perfect_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros _____ nuestro perro por diez años",
    english: "We have had our dog for ten years",
    answer: "hemos tenido",
    hint: "have had",
    tense: "perfect_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos _____ problemas en la escuela recientemente",
    english: "They have had problems at school recently",
    answer: "han tenido",
    hint: "have had",
    tense: "perfect_present"
  }
).first_or_create


#########
# perfect_past
#########

# This is weird because it's "had had"
#

#########
# imperative
#########

word_tener.questions.where(
  {
    spanish: "Espero que tú _____ un buen día",
    english: "I hope you have a nice day",
    answer: "ten",
    hint: "have",
    tense: "imperative"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Espero que usted _____ un buen día",
    english: "I hope you have a nice day",
    answer: "tenga",
    hint: "have",
    tense: "imperative"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "(Nosotros) _____ buenas notas",
    english: "Let's have good grades",
    answer: "tengamos",
    hint: "have",
    tense: "imperative"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "(Ellos) _____ mejor comportamiento",
    english: "Have better behavior",
    answer: "tengan",
    hint: "have",
    tense: "imperative"
  }
).first_or_create

#########
# subjunctive_present
#########

word_tener.questions.where(
  {
    spanish: "Estaré feliz cuando yo _____ helado",
    english: "I will be happy when I have ice cream",
    answer: "tenga",
    hint: "have",
    tense: "subjunctive_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Tendrás un titulo universidario cuando tú _____ 200 créditos",
    english: "You will have a degree when you have 200 credits",
    answer: "tengas",
    hint: "have",
    tense: "subjunctive_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ella será más delgada cuando ella _____ 10 kilogramos menos",
    english: "She will be thinner when she loses 10 kilograms",
    answer: "tenga",
    hint: "have",
    tense: "subjunctive_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Nosotros seremos más felices cuando _____ un bebé",
    english: "We will be happier when we have a baby",
    answer: "tengamos",
    hint: "have",
    tense: "subjunctive_present"
  }
).first_or_create

word_tener.questions.where(
  {
    spanish: "Ellos viajarán a Europa cuando _____ más dinero",
    english: "They will travel to Europe when they have more money",
    answer: "tengan",
    hint: "have",
    tense: "subjunctive_present"
  }
).first_or_create

