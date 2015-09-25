namespace :frequency_dictonary do

  desc "validate the raw words text file"
  task :validate_file => :environment do
    WordCreator.new.validate_words
  end

  desc "Create words in the database"
  task :create_words => :environment do
    WordCreator.new.create_words
  end

  desc "Parts of speech"
  task :parts_of_speech => :environment do
    p WordCreator.new.parts_of_speech
  end

end
