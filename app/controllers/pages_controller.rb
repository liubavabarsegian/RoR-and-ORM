class PagesController < ApplicationController
  include PagesHelper
  def form
  end

  def output
    @input = params[:num].to_i
    
    if(@input <= 0)
      flash[:error] = 'Your stupid ass entered a non-positive value'
      redirect_to form_path
      return
    end

    if (find_n(@input))
      @result_m = find_n(@input).result.split(' ')
      @count = find_n(@input).count
    else 
      @result_m = mersenne_to_n(@input)
      add_to_db(@input, @result_m)
    end
    
  end
end
