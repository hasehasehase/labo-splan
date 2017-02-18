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
    
# before_create :create_unique_identifier

    def create_unique_identifier
      begin
        self.unique_identifier = SecureRandom.hex(5) # or whatever you chose like UUID tools
      end while self.class.exists?(:unique_identifier => unique_identifier)
    end
    
    def show
        @shift = Shift.find ( params[:id])
        @shifts = Shift.all
    end
    
    
    def confirm
        @shift = Shift.find ( params[:id])
        @shift.status = 1    
      #  @shift.date = Date.today
        if @shift.save
      #      ShiftMailer.confirm_mail.deliver
        else
        end
    end
    
    def deny
        @shift = Shift.find_by( params[:id])
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
