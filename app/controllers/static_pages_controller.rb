class StaticPagesController < ApplicationController
  skip_before_action :require_login
  def top; end

  def privacy; end

  def service; end
end
