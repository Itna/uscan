class FormsController < ApplicationController
    
    def index
        @form = Form.all
    end
    
    def new
    end
    
    def show
        @form = Form.find(params[:id])
    end
    
    def create
        @form = Form.new(form_params)
        if @form.save
            redirect_to @form
        else
            render 'new'
        end
    end
       
    
    
end

private 
def form_params
    params.require(:forms).permit(:first_name, :last_name, :email, :message)
end