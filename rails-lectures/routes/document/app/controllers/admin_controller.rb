class AdminController < ApplicationController

  def history
    puts "History Params: #{params[:year]}:#{params[:month]}:#{params[:day]}"
  end
  
  # Methods added in manually
  def index
  end

  def show
  end

  def xyz
  end
  
end
