class MembersController < ApplicationController
  def index
    members = Member.all
    render json: members.as_json
  end

  def create
    member = Member.new(name: params[:name],
                        pet_name: params[:pet_name],
                        pet_type: params[:pet_type],
                        email: params[:email],
                        image_url: params[:image_url])
    member.save
    render json: member.as_json
  end

  def show
    member = Member.find_by(id: params[:id])
    render json: member.as_json
  end

  def update
    member = Member.find_by(id: params[:id])
    member.name = params[:name] || member.name
    member.pet_name = params[:pet_name] || member.pet_name
    member.email = params[:email] || member.email
    member.pet_type = params[:pet_type] || member.pet_type
    member.image_url = params[:image_url] || member.image_url
    member.save
    render json: member.as_json
  end

  def destroy
    member = Member.find_by(id: params[:id])
    member.destroy
    render json: { message: "hi death" }
  end
end
