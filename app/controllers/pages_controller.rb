class PagesController < ApplicationController

    def search  
        if params[:search].blank?  
            redirect_to('/all_cars', :alert => "Sorry! We couldn't find what you're looking for") and return  
        else  
            @parameter = params[:search].downcase  
            @results = Car.all.where("lower(make) LIKE :search", search: "%#{@parameter}%")    
        end
    end

end