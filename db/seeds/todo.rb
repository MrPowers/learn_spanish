word_todo = Word.where(
  {
    spanish: "todo",
    english: "all, every",
    part_of_speech: "adj",
    frequency: 22,
    commonly_oral: false
  }
).first_or_create

word_todo.questions.where(
  {
    spanish: "Yo hago mi cama _____ los dias",
    english: "I make my bed every day",
    answer: "todos",
    hint: "every",
    tense: nil
  }
).first_or_create

