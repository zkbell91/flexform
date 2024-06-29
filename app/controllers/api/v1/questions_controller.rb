module Api
  module V1
    class QuestionsController < ApplicationController
      def index
        questions = Question.all
        render json: questions, status: :ok
      end

      def show
        question = Question.find(params[:id])
        render json: question, status: :ok
      end

      def create
        form = Form.find(params[:form_id])
        question = form.questions.new(question_params)
        
        if question.save
          render json: question, status: :created
        else
          render json: { errors: question.errors.full_messages }, status: :unprocessable_entity
        end
      end


      private

      def question_params
        params.require(:question).permit(:content, :question_type)
      end
    end
  end
end