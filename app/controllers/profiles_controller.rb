class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    render 'index.html.erb'
  end

  def show
    @profiles = Profile.all
    @profile = Profile.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @profile = Profile.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    @profile.save
    flash[:success] = "Profile successfully created"
    redirect_to '/profiles'
  end

  def edit
    @profile = Profile.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @profile = Profile.find_by(id: params[:id])
    @profile.first_name = params[:first_name]
    @profile.last_name = params[:last_name]
    @profile.age = params[:age]
    @profile.email = params[:email]
    @profile.phone_number = params[:phone_number]

    @profile.save
    flash[:success] = "Profile successfully updated"

    redirect_to "/profiles/#{@profile.id}"
  end

  def destroy
    @profile = Profile.find_by(id: params[:id])
    @profile.destroy
    flash[:success] = "Profile deleted"
    redirect_to '/profiles'
  end
end
