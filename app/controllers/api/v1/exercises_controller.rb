# Api::V1:exercisesController
module Api
  module V1
    # reposnible to handle exercise entity
    class ExercisesController < APIController
      before_action :exercise, except: [:index, :create]

      def index
        exercise = Exercise.all
        binding.pry
        render json: exercise, status: :ok # send them all. Yeah !
      end

      def create
        exercise = Exercise.new(exercise_params)
        if exercise.save
          render json: exercise, status: :created
        else
          render json: exercise.errors  , status: :precondition_failed
        end
      end

      def show
        render json: exercise, status: exercise ? :ok : :not_found
      end

      def destroy
        result =  exercise ? exercise.destroy : nil
        render json: result, status: result ? :ok : :not_found
      end

                        # private
      private

      def exercise
        result = Exercise.find_by(id: params[:id])
        result
      end

      def exercise_params
        params.require('exercise').permit(:user_name, :email, :phone_number)
      end
    end
  end
end
