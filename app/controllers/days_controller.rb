class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def new
  end

  def create
    Day.create(title:params["days"]["title"],body:params["days"]["body"])
    redirect_to "/"
  end

  def destroy
    day = Day.find(params["id"])
    day.destroy
    redirect_to "/"
  end

  def edit
    @days = Day.find(params["id"])
  end

  def update
    day = Day.find(params["id"])
    day.title = params["days"]["title"]
    day.body = params["days"]["body"]
    day.save
    redirect_to "/"
  end

end
