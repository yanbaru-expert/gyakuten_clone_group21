class SolutionsController < ApplicationController
  
  def create
    binding.pry
    @question = Question.create(question_params)
    @question.save!
    @solution = @question.solutions.create(solution_params)
    @solution.save!
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end

  def solution_params
    params.require(:solution).permit(:answer)
  end
end