class QuizController < ApplicationController
  def test
    list = List.find(quiz_params)
    @words = list.words
  end

  def play

  end
  private
  def quiz_params
    params.require(:id)
  end
  
end
