word_estar = Word.where(
  {
    spanish: "estar",
    english: "to be",
    part_of_speech: "v",
    frequency: 17,
    commonly_oral: true
  }
).first_or_create
#word_estar.questions.create(
  #{
    #spanish: "Yo hago mi cama _____ los dias",
    #english: "I make my bed every day",
    #answer: "todos",
    #hint: "every",
    #tense: nil
  #}
#)

word_estar.questions.where(
  {
    spanish: "Yo _____ en mi casa",
    english: "I am in my house",
    answer: "estoy",
    hint: "am",
    tense: "present"
  }
).first_or_create

word_estar.questions.where(
  {
    spanish: "Tú _____ loca",
    english: "You are crazy",
    answer: "estás",
    hint: "are",
    tense: "present"
  }
).first_or_create

