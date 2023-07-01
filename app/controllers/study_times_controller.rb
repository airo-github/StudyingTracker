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

  def edit_timestamps
    @study_time = StudyTime.find(params[:id])
  end

  def change_timestamps
    @study_time = StudyTime.find(params[:id])
    created_at = Time.zone.local(*params[:study_time].values_at('created_at(1i)', 'created_at(2i)', 'created_at(3i)', 'created_at(4i)', 'created_at(5i)'))
    updated_at = Time.zone.local(*params[:study_time].values_at('updated_at(1i)', 'updated_at(2i)', 'updated_at(3i)', 'updated_at(4i)', 'updated_at(5i)'))
    @study_time.created_at = created_at
    @study_time.updated_at = updated_at
    @study_time.total_time = ((updated_at - created_at) / 60).to_i
    if @study_time.save(validate: false)
      redirect_to profile_path, notice: 'Study time was successfully updated.'
    else
      render :edit_timestamps
    end
  end

  private

  def study_time_params
    params.require(:study_time)
  end
end
