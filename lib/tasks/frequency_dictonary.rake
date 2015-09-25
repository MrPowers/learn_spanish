namespace :frequency_dictonary do

  desc "validate the raw words text file"
  task :validate_file => :environment do
    WordCreator.new.validate_words
  end

  desc "Create words in the database"
  task :create_words => :environment do
    WordCreator.new.create_words
  end

end
