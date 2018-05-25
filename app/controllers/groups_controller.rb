class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to groups_path flash[:notice] = "created success"

  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update
    redirect_to groups_path flash[:notice] = "Updated success"
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path flash[:alert] = "Deleted success"
  end
  def group_params
    params.requer(:group).permit(:title, :description)
  end

end
