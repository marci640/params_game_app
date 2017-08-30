class ParamsExamplesController < ApplicationController
  
  def query_method
    @name = params["my_name"]
    @guess = params["my_number"]
    winning_number = "36"
      
    if params["my_name"]
      @name = params["my_name"].upcase
      if @name.index("A") == 0 
        @message_name = "Hey, your name starts with the first letter of the alphabet"
      end 
    end 

    if params["my_number"]
      if @guess > winning_number
        @message_lower = "guess lower!"
      elsif @guess < winning_number
        @message_higher = "guess higher"
      else
        @message_correct = "you got it!"
      end 
    end
      render "query_params.html.erb"
    
  end

end
