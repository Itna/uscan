class FormsController < ApplicationController
    
    def index
        @form = Form.all
    end
    
    def new
        @form = Form.new
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
    
    def edit
        @form = Form.find(params[:id])
    end
   
  def update
      @form = Form.find(params[:id])
      if @form.update(form_params)
          redirect_to @form
      else
          render 'edit'
      end
  end
   
   def destroy
       @form = Form.find(params[:id])
       @form.destroy
       
       redirect_to forms_path
   end
end

private 
def form_params
    params.require(:forms).permit(:first_name, :last_name, :email, :message)
end