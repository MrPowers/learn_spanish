word_ir = Word.where(
  {
    spanish: "ir",
    english: "to go",
    part_of_speech: "v",
    frequency: 30,
    commonly_oral: true
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Quieres que (yo)_____ al gimnasio contigo?",
    english: "Do you want me to go to the gym with you?",
    answer: "vaya",
    hint: "go",
    tense: "subjunctive_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Espero que tu _____ al doctor mañana",
    english: "I hope you go to the doctor tomorrow",
    answer: "vayas",
    hint: "go",
    tense: "subjunctive_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Quiero que ella _____ al concierto conmigo",
    english: "I want her to go to the concert with me",
    answer: "vaya",
    hint: "go",
    tense: "subjunctive_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Espero que nosotros _____ a la fiesta mañana",
    english: "I hope we go to the party tomorrow",
    answer: "vayamos",
    hint: "go",
    tense: "subjunctive_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Espero que ellos _____ todos los días a la escuela",
    english: "I hope they go everyday to the school",
    answer: "vayan",
    hint: "go",
    tense: "subjunctive_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ voy a la iglesia todos los domingos",
    english: "I go to the church every sunday",
    answer: "voy",
    hint: "go",
    tense: "present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ al colegio mañana?",
    english: "Are you going to the school tomorrow?",
    answer: "vas",
    hint: "go",
    tense: "present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ella _____ al dentista",
    english: "She go to the dentist",
    answer: "va",
    hint: "go",
    tense: "present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a la playa",
    english: "We go to the beach",
    answer: "vamos",
    hint: "go",
    tense: "present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ a Colombia",
    english: "They go to Colombia",
    answer: "van",
    hint: "go",
    tense: "present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ a Colombia el año pasado",
    english: "I went to Colombia last year",
    answer: "fui",
    hint: "went",
    tense: "preterite"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ a la universidad?",
    english: "Did you go to the university?",
    answer: "fuiste",
    hint: "go",
    tense: "preterite"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ella _____ a la tienda",
    english: "She went to the store",
    answer: "fue",
    hint: "go",
    tense: "preterite"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a la fiesta de Ana ayer",
    english: "We went to Ana's party yesterday",
    answer: "fuimos",
    hint: "go",
    tense: "preterite"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ a caminar",
    english: "They went for a walk",
    answer: "fueron",
    hint: "go",
    tense: "preterite"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ a la casa de Sary cada fin de semana",
    english: "I used to go to Sary's house every weekend",
    answer: "iba",
    hint: "used to go",
    tense: "imperfect"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ a la biblioteca con frecuencia",
    english: "You went to the library with frequency",
    answer: "ibas",
    hint: "used to go",
    tense: "imperfect"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Él _____ a la casa de su abuela cada fin de semana",
    english: "He used to go to his grandmas' house every weekend",
    answer: "iba",
    hint: "used to go",
    tense: "imperfect"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a la iglesia por la mañana",
    english: "We used to go to the church in the mornings",
    answer: "íbamos",
    hint: "used to go",
    tense: "imperfect"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ al museo con frecuencia",
    english: "They used to go to the museum with frequency",
    answer: "iban",
    hint: "used to go",
    tense: "imperfect"
   }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ a China el próximo año",
    english: "I will go to China next year",
    answer: "iré",
    hint: "will go",
    tense: "future"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ a la universidad en dos meses!",
    english: "I will go to the university in two months!",
    answer: "irás",
    hint: "will go",
    tense: "future"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ella _____ a la boda con Simon",
    english: "She will go to the weeding with Simon",
    answer: "irá",
    hint: "will go",
    tense: "future"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a Perú por las vacaciones",
    english: "We will go to Peru for holidays",
    answer: "iremos",
    hint: "will go",
    tense: "future"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ al tren",
    english: "They will go to the train",
    answer: "irán",
    hint: "will go",
    tense: "future"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ a la playa, pero está lloviendo",
    english: "I would go to the beach, but is raining",
    answer: "iría",
    hint: "would go",
    tense: "conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "(Tú) _____ al parque conmigo?",
    english: "would you go to the park with me?",
    answer: "irías",
    hint: "would go",
    tense: "conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Él _____ a la universidad pero no tiene dinero",
    english: "He would go to college but he doesn't have money",
    answer: "iría",
    hint: "would go",
    tense: "conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a Nueva York, pero es muy costoso",
    english: "We would go to New York, but is very expensive",
    answer: "iríamos",
    hint: "would go",
    tense: "conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ al zoológico, pero está cerrado hoy",
    english: "They would go to the zoo, but is closed today",
    answer: "irían",
    hint: "would go",
    tense: "conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ dos veces a Cartagena",
    english: "I have gone to Cartagena twice",
    answer: "he ido",
    hint: "have gone",
    tense: "perfect_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "(Tú) _____ al cine recientemente?",
    english: "Have you gone to the cinema recently?",
    answer: "has ido",
    hint: "have gone",
    tense: "perfect_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ella _____ al doctor tres veces esta semana",
    english: "She has gone to the doctor three times this week",
    answer: "he ido",
    hint: "have gone",
    tense: "perfect_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a la tienda dos veces",
    english: "We have gone to the store twice",
    answer: "hemos ido",
    hint: "have gone",
    tense: "perfect_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ a Buenos Aires por el fin de semana",
    english: "They have gone to Buenos Aires for the weekend",
    answer: "han ido",
    hint: "have gone",
    tense: "perfect_present"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ al colegio antes que mis amigos",
    english: "I have gone to the school before my friends",
    answer: "había ido",
    hint: "have gone",
    tense: "perfect_past"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ al bosque antes",
    english: "You have gone to the forest before",
    answer: "habías ido",
    hint: "have gone",
    tense: "perfect_past"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ella _____ a París por el verano",
    english: "She have gone to Paris for the summer",
    answer: "había ido",
    hint: "have gone",
    tense: "perfect_past"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ a dar un paseo cuando llegaste",
    english: "We have gone for a walk when you arrived",
    answer: "habíamos ido",
    hint: "have gone",
    tense: "perfect_past"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ a la biblioteca por la mañana",
    english: "They have gone to the library in the morning",
    answer: "habían ido",
    hint: "have gone",
    tense: "perfect_past"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Yo _____ al parque pero estaba lloviendo",
    english: "I would have gone to the park but it was raining",
    answer: "habría ido",
    hint: "would have gone",
    tense: "perfect_conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ a Egipto conmigo?",
    english: "Would you have gone to Egipt with me?",
    answer: "habrías ido",
    hint: "would have gone",
    tense: "perfect_conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Él _____ a Australia, pero es muy costoso",
    english: "He would have gone to Australia, but is very expensive",
    answer: "habría ido",
    hint: "would have gone",
    tense: "perfect_conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Nosotros _____ al museo pero estaba muy lejos",
    english: "We would have gone to the museum but it was very far away",
    answer: "habríamos ido",
    hint: "would have gone",
    tense: "perfect_conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Ellos _____ a tu casa, pero estaba muy lejos",
    english: "They would have gone to your house but it was very far away",
    answer: "habrían ido",
    hint: "would have gone",
    tense: "perfect_conditional"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "Tú _____ a la tienda!",
    english: "You go to the store!",
    answer: "ve",
    hint: "go",
    tense: "imperative"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "(Usted) _____ a la colegio!",
    english: "You go to the school!",
    answer: "vaya",
    hint: "go",
    tense: "imperative"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "(Nosotros) _____ por helado!",
    english: "Let's go for ice cream",
    answer: "vayamos",
    hint: "go",
    tense: "imperative"
  }
).first_or_create

word_ir.questions.where(
  {
    spanish: "(Ellos) _____ a la iglesia!",
    english: "(They) Go to the church!",
    answer: "vayan",
    hint: "go",
    tense: "imperative"
  }
).first_or_create

