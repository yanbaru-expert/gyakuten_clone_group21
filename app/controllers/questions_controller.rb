class QuestionsController < ApplicationController

	def index
		@questions = Question.all
    @question = Question.new
	end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to questions_path, notice: "質問を投稿しました"
    else
      redirect_to questions_path, alert: "入力に不備があります"
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end

end