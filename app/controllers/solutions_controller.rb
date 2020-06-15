class SolutionsController < ApplicationController
  
  def create
    @question = Question.find(params[:question_id])
    @question.save!
    @solution = @question.solutions.create(solution_params)
    if @solution.save
      redirect_to "/questions/#{@question.id}", notice: "回答を投稿しました"
    else
      @solutions = @question.solutions
      flash.now[:alert] = "入力に不備があります"
      render "questions/show"
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:answer)
  end
end