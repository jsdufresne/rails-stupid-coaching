class CoachingController < ApplicationController
  def answer

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.include? "?"
    @answer = "Silly question, get dressed and go to work!"
  elsif your_message.downcase == "i am going to work right now!"
    @answer = ""
  else
    @answer = "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == your_message.upcase
    if your_message.downcase == "i am going to work right now!"
      @answer = ""
    else
      @answer = "I can feel your motivation! #{coach_answer(your_message)}"
    end
  else
    coach_answer(your_message)
  end
end
    @query = params[:query]
    coach_answer_enhanced(@query)
  end

  def ask
  end
end
