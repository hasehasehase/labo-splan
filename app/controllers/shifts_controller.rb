class ShiftsController < ApplicationController
    def new
    @shift = Shift.new
    end
    
    def create
        @shift = Shift.new(shift_params)
        @shift.status = 0
        if @shift.save
            redirect_to neu_shift_path, notice: "Message sent."
        else
            redirect_to neu_shift_path, notice: "Error occured."
        end
    end
    



    
    def show
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        @shifts = Shift.all
    end
    
    
    def confirm
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        @shift.status = 1    
      #  @shift.date = Date.today
        if @shift.save
      #      ShiftMailer.confirm_mail.deliver
        else
        end
    end
    
    def deny
        @shift = Shift.find_by( params[:unique_identifier])
        @shift.status = 2    
        
        if @shift.save
        else
        end
    end
#    private
#    def shift_params
#      params.require(:shift).permit(:status)
#    end

  private
    # To collect data from form, we need to use
    # strong parameters and whitelist the form fields
    def shift_params
      params.require(:shift).permit(:name, :time, :date)
    end
end
