class NounAnswer < ActiveRecord::Base

  def correct?
    user_answer == correct_answer
  end

end
