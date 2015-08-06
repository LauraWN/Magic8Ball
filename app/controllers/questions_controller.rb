class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

#new Question
  def new
    @question = Question.new
  end

  #create
  def create
    @question Question.create!(question_params)
    redirect_to (question_path(@question))
  end

  #show
  def show
    @question = Question.find(params[:id])
  end

  #edit
  def edit
    @question = Question.find(params[:id])
  end

  #update
  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to question_path(@question)
  end

  #destroy
  def destroy
    @question = question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(content)
  end

end
