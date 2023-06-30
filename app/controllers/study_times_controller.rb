class StudyTimesController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def new
    if current_user.study_times.exists?(status: 0)
      redirect_to study_times_path, alert: t('defaults.message.already_have_study_time')
    else
      @study_time = StudyTime.new
    end
  end

  def create
    @study_time = current_user.study_times.build
    @study_time.save
    redirect_to study_times_path
  end

  def index
    @study_time = StudyTime.where(status: 0).order(created_at: :desc)
  end

  def update
    @study_time = StudyTime.find(params[:id])
    elapsed_time = (Time.now - @study_time.created_at) / 60
    @study_time.total_time = elapsed_time.to_i
    @study_time.touch(:updated_at)
    @study_time.save
    redirect_to study_times_path
  end

  def finish
    @study_time = StudyTime.find(params[:id])
    elapsed_time = (Time.now - @study_time.created_at) / 60
    @study_time.total_time = elapsed_time.to_i
    @study_time.touch(:updated_at)
    @study_time.status = 1
    @study_time.save
    redirect_to profile_path
  end

  def destroy
    @study_time = StudyTime.find(params[:id])
    @study_time.destroy
    redirect_to profile_path
  end

  private

  def study_time_params
    params.require(:study_time)
  end
end
