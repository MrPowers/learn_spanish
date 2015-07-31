f = Rails.root.join("db", "data", "words.csv")
CSV.foreach(f, headers: true, col_sep: "|").each do |attrs|
  Word.where(attrs.to_h).first_or_create
end
