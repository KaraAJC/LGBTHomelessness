class VolunteerController < ApplicationController

  def create
    volunteer =  Volunteer.create!(first_name: params[:first_name],
last_name: params[:last_name],
email: params[:email],
announcment: params[:announcments],
location: params[:location],
program_requirements: (params[:programRequirements_group].join(",")),
age: params[:age],
skills: (params[:skills_group].join(",")),
time: (params[:time_group].join(",")),
available: params[:available],
anything_else: params[:anything_else] )
    if volunteer
      redirect_to "/"
    else
      @error = "something is missing"
    end
  end


end