class AnswerController < ApplicationController
  before_action :set_asa, only: %i[ :index ,:update ,:destroy ]
    def index
        @questions = Question.all.page(params[:page]).per(5)
    end

    def update
        @questions = Question.find_by(params[:id])
        @questions.ans_content = params[:ans_content]
        if @questions.save
          redirect_to answer_index_path    
        end
    end

    def destroy
      @questions = Question.find_by(params[:id])
      @questions.delete
      redirect_to answer_index_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_asa
    @questions = Question.all
  end

  # Only allow a list of trusted parameters through.
  def asa_params
    params.require(:question).permit(:title, :content, :ans_title, :ans_content)
  end
    
end

