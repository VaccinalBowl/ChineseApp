class ListsController < ApplicationController
  def index 
    if logged_in?
      user = current_user
      @collaborating_lists =  user.collaborating_lists + user.createdlists
      @learning_lists = user.learninglists
      @lists = List.where.not(id: @collaborating_lists) 





      #@lists = List.all.paginate(page: params[:page], per_page: 8)
      #@learninglists = current_user.learninglists.paginate(page: params[:page], per_page: 8)
      
      



    else
      redirect_to root 
    end
  end
  
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params) 
    @list.creator = current_user
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end
  
  def show 
    @list = List.find(params[:id])
 
  end
  
  def update 
    @list = List.find(params[:id])    
    if(@list.update(list_params))
      redirect_to lists_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to current_user
  end
  
  def edit
    @list = List.find(params[:id])
  end
  
  def add_learning_user
    @list = List.find(params[:id])
    @list.learners<< current_user unless (@list.learners.include?(current_user))
    redirect_to lists_path
  end
  
  def rem_learning_user
    @list = List.find(params[:id])
    @list.learners.delete(current_user.id)
    redirect_to lists_path
  end




  
  private 
  def list_params
    params.require(:list).permit(:name,:description)
  end
  
end
