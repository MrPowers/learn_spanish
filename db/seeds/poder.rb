word_poder = Word.where(
  {
    spanish: "poder",
    english: "to be able to, can",
    part_of_speech: "v",
    frequency: 27,
    commonly_oral: false
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ correr muy rápido",
    english: "I can run very fast",
    answer: "puedo",
    hint: "can",
    tense: "present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tu _____ cantar muy bien",
    english: "You can sing very well",
    answer: "puedes",
    hint: "can",
    tense: "present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ella _____ cocinar delicioso",
    english: "she can cook delicious",
    answer: "puede",
    hint: "can",
    tense: "present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ ser amigos",
    english: "We can be friends",
    answer: "podemos",
    hint: "can",
    tense: "present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ hablar tres idiomas",
    english: "They can speak three languages",
    answer: "pueden",
    hint: "can",
    tense: "present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo no _____ pasar el examen",
    english: "I couldn't pass the exam",
    answer: "pude",
    hint: "couldn't",
    tense: "preterite"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tu _____ ser el mejor",
    english: "You could be the best",
    answer: "pudiste",
    hint: "could",
    tense: "preterite"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Él no _____ ganar la competencia",
    english: "He couldn't win the competition",
    answer: "pudo",
    hint: "couldn't",
    tense: "preterite"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ estudiar juntos",
    english: "We could study together",
    answer: "pudimos",
    hint: "could",
    tense: "preterite"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ viajar por el mundo",
    english: "They could travel the world",
    answer: "pudieron",
    hint: "could",
    tense: "preterite"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ correr muy rápido. Ahora no puedo",
    english: "I could run very fast. Now I can't",
    answer: "podía",
    hint: "could",
    tense: "imperfect"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tu _____ hablar muy bien japonés",
    english: "You could speak very good Japanese",
    answer: "podías",
    hint: "could",
    tense: "imperfect"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ella _____ escalar montañas muy altas",
    english: "She could climb high mountains",
    answer: "podía",
    hint: "could",
    tense: "imperfect"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ hablar todo el día",
    english: "We could speak the whole day",
    answer: "podíamos",
    hint: "could",
    tense: "imperfect"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ caminar por horas",
    english: "They could walk for hours",
    answer: "podían",
    hint: "could",
    tense: "imperfect"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ visitar Italia en dos días",
    english: "I will be able to visit Italy in two days",
    answer: "podré",
    hint: "will be able",
    tense: "future"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tu _____ tocar piano muy bien en dos años",
    english: "You will be able to play the piano very well in two years",
    answer: "podrás",
    hint: "will be able",
    tense: "future"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ella _____ cantar en el teatro",
    english: "She will be able to sing in the teather",
    answer: "podrá",
    hint: "will be able",
    tense: "future"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ tener vacaciones pronto",
    english: "We will  have vacations soon",
    answer: "podremos",
    hint: "will be able",
    tense: "future"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ ir a la playa mañana",
    english: "They could go to the beach tomorrow",
    answer: "podrán",
    hint: "could",
    tense: "future"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ terminar la tarea más rápido si me ayudas",
    english: "I could finish the homework faster if you help me",
    answer: "podría",
    hint: "could",
    tense: "conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tu _____ ser más feliz si bailas más",
    english: "You could be happier if you dance more",
    answer: "podrías",
    hint: "could",
    tense: "conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Él _____ hablar italiano si estudia más frecuentemente",
    english: "He could speak italian if he study more frequently",
    answer: "podría",
    hint: "could",
    tense: "conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ ir a la universidad juntos",
    english: "He could go to the university together",
    answer: "podríamos",
    hint: "could",
    tense: "conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ ir a Nueva York si tienen más dinero",
    english: "they could go to New York if they have more money",
    answer: "podrían",
    hint: "could",
    tense: "conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ ir a Nueva York si tienen más dinero",
    english: "they could go to New York if they have more money",
    answer: "podrían",
    hint: "could",
    tense: "conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ terminar el trabajo a tiempo",
    english: "I could finish the work on time",
    answer: "he podido",
    hint: "could",
    tense: "perfect_present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tu _____ terminar el trabajo a tiempo",
    english: "you could finish the work on time",
    answer: "has podido",
    hint: "could",
    tense: "perfect_present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Él _____ corregir sus errores",
    english: "He has been able to correct his mistakes",
    answer: "ha podido",
    hint: "has been able",
    tense: "perfect_present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ alcanzar nuestras metas",
    english: "we were able to achieve our goals",
    answer: "hemos podido",
    hint: "were able to",
    tense: "perfect_present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ llegar a tiempo",
    english: "They were able to arrive on time",
    answer: "han podido",
    hint: "were able to",
    tense: "perfect_present"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ lavar los platos por ti",
    english: "I could have washed the dishes for you",
    answer: "había podido",
    hint: "could have",
    tense: "perfect_past"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tú _____ caminar más rápido",
    english: "You could have walked faster",
    answer: "habías podido",
    hint: "could have",
    tense: "perfect_past"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Él _____ comer más saludable",
    english: "He could have eaten more healthy",
    answer: "había podido",
    hint: "could have",
    tense: "perfect_past"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ trabajar más en la mañana",
    english: "We could have worked more in the morning",
    answer: "habíamos podido",
    hint: "could have",
    tense: "perfect_past"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ decirme la verdad",
    english: "They could have tell me the truth",
    answer: "habían podido",
    hint: "could have",
    tense: "perfect_past"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Yo _____ caminar más rápido",
    english: "I could have walked faster",
    answer: "habría podido",
    hint: "could have",
    tense: "perfect_conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Tú _____ ser más amable con Peter",
    english: "You could have been nicer with Peter",
    answer: "habrías podido",
    hint: "could have",
    tense: "perfect_conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ella _____ hablar más despacio en la reunión",
    english: "She could have spoken slower in the meeting",
    answer: "habría podido",
    hint: "could have",
    tense: "perfect_conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Nosotros _____ traer más comida a su casa",
    english: "We could have brought more food to her house",
    answer: "habríamos podido",
    hint: "could have",
    tense: "perfect_conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Ellos _____ ser más amables",
    english: "They could have been nicer",
    answer: "habrían podido",
    hint: "could have",
    tense: "perfect_conditional"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "(Tú) _____ ser más feliz!",
    english: "You can be happier",
    answer: "puede",
    hint: "can",
    tense: "imperative"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Espero que él _____ cocinar mejor",
    english: "I hope he can cook better",
    answer: "pueda",
    hint: "can",
    tense: "imperative"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Espero que nosotros _____ terminar el trabajo",
    english: "I hope we can finish the job",
    answer: "podamos",
    hint: "can",
    tense: "imperative"
  }
).first_or_create

word_poder.questions.where(
  {
    spanish: "Espero que ellos _____ ser más productivos",
    english: "I hope they can be more productive",
    answer: "puedan",
    hint: "can",
    tense: "imperative"
  }
).first_or_create

