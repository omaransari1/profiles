class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    render 'index.html.erb'
  end

  def show
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
      email: params[:email]
      )
     @profile.save
    render 'create.html.erb'
  end

  def edit
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
  end

  def destroy
    @profile = Profile.find_by[id: params[:id]]
    @profile.destroy
    render 'destroy.html.erb'
  end
end
