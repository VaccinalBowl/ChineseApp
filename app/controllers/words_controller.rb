class WordsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @word = @list.words.create(word_params)
    redirect_to list_path(@list)
  end
  
  def destroy
    @list = List.find(params[:list_id])
    @word = @list.words.find(params[:id])
    @word.destroy
    redirect_to list_path(@list)
  end
  
  
  
  private
  def word_params
    params.require(:word).permit(:chinese, :pinyin,:translation)
  end
  
  
end
