class ExercisesController < ApplicationController
  before_action :set_workout
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  def index
    @exercises = @workout.exercises
  end

  def show
  end

  def new
    @exercise = @workout.exercises.build
  end

  def create
    @exercise = @workout.exercises.build(exercise_params)
    if @exercise.save
      redirect_to workout_exercise_path(@workout, @exercise), notice: 'Exercise was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to workout_exercise_path(@workout, @exercise), notice: 'Exercise was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to workout_exercises_path(@workout), notice: 'Exercise was successfully destroyed.'
  end

  private

  def set_workout
    @workout = current_user.workouts.find(params[:workout_id])
  end

  def set_exercise
    @exercise = @workout.exercises.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:name, :description, :sets, :reps, :weight)
  end

  def require_login
    redirect_to login_path unless logged_in?
  end
end
