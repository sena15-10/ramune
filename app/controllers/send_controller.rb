class SendController < ApplicationController
    def new 
        @question = Question.new
        puts"作りました"
    end

    def create
        puts "ここは通常通り"
        @question = Question.new(question_params)
         if @question.save
            redirect_to quesview_index_path
            puts"完了"
         else
            puts "完全にエラーです"
         end
    end

    

    def question_params
        params.require(:question).permit(:title,:content)
    end
end
