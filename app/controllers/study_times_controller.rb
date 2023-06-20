class StudyTimesController < ApplicationController

  def new
    @study_time = StudyTime.new
  end

  def create
    @study_time = current_user.study_times.build
    
    @study_time.save! #データをデータベースに保存するためのsaveメソッド実行
    redirect_to study_times_path #トップ画面へリダイレクト
  end

  def index
    @study_time = StudyTime.all.order(created_at: :desc)
  end
  
  def update
    @study_time = StudyTime.find(params[:id])
    elapsed_time = (Time.now - @study_time.created_at) / 60  # 経過時間を分単位で計算
    @study_time.total_time = elapsed_time.to_i
    @study_time.touch(:updated_at)
    @study_time.save
    redirect_to study_times_path
  end
  
  private
  
  def study_time_params
    params.require(:study_time)
  end

end
