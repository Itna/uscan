class FormsController < ApplicationController
    
    def index
    end
    
    def new
    end
    
    
    def create
        render plain: params[:forms].inspect
    end

    
end
