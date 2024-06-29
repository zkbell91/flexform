module Api
  module V1
    class FormsController < ApplicationController
      def index
        forms = Form.all
        render json: forms, status: :ok
      end

      def show
        form = Form.find(params[:id])
        render json: form, status: :ok
      end

      def create
        form = Form.new(form_params)
        if form.save
          render json: form, status: :created
        else
          render json: { errors: form.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def form_params
        params.require(:form).permit(:title, :description)
      end
    end
  end
end