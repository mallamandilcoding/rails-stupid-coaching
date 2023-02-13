class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # @question = params[:question]
    @message=''
    unless (params[:question].blank? )

      if params[:question] == "I am going to work"
        @message = "Great!"
      elsif params[:question].end_with? "?"
        @message = "Silly question, get dressed and go to work!"
      else
        @message = "I don't care, get dressed and go to work!"
      end
    end
  end

end
