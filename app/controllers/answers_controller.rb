class AnswersController < ApplicationController


  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)

    @answer.question = @question

    if @answer.save
      flash[:alert] = "Answer was saved"
      redirect_to question_path(@question)
    else
      flash[:alert] = "Must provide a description that is at least 50 characters long"
      render :new
    end
  end

  private
   def answer_params
     params.require(:answer).permit(:answer)
   end
end
