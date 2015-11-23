class WordsController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.csv { send_data Word.to_csv }
      format.json { render json: Word.all }
    end
  end

end

