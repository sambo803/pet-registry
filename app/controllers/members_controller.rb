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
end
