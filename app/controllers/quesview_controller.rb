class QuesviewController < ApplicationController
    def index
        @questions = Question.all.page(params[:page]).per(5)
    end
end
