class ListsController < ApplicationController
  def index 
    @lists = List.all
  end
  
  def new
    @list = List.new
    
  end
  
  def create
    @list = List.new(list_params) 
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
    
    if @list.update(list_params)
      redirect_to @list
    else
      render 'edit'
    end
  end
  
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end
  
  def edit
    @list = List.find(params[:id])
  end
  
  def list_params
   puts "Fuck"
   puts  params.require(:list).permit(:name, :description)
   puts  "Fuck"
   params.require(:list).permit(:name,:description)
  end
  
  
  
end