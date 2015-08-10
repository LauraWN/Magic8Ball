class AnswersController < ApplicationController
  # before_action :authenticate_user!, except: [:show]

  def index
    @answers = Answer.all
  end

  #new answers
  def new
      @answer = Answer.find(params[:answer_id])
      @answer = Answer.new
    end

    #create
    def create
      @answer = Answer.find(params[:answer_id])
      @answer = Answer.create!(answer_params.merge(question: @question))
      redirect_to question_answer_path(@question, @answer)
    end

    #show--the random answer.
    def show
      @answer = Answer.all.sample
    end


    #edit
    def edit
      @answer = Answer.find(params[:id])
    end

    #update
    def update
      @answer = Answer.find(params[:id])
      @question = Question.find(params[:question_id])
      @answer.update(answer_params.merge(question: @question))
      redirect_to question_answer_path(@answer.question, @answer)
    end

    #destroy
    def destroy
      @answer = answer.find(params[:id])
      @answer.destroy
      redirect_to answers_path
    end

    private
    def answer_params
      params.require(:answer).permit(:content)
    end

end
