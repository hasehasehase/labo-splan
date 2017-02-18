class Shift < ApplicationRecord
    
    before_create :create_unique_identifier
    
        def create_unique_identifier
      begin
        self.unique_identifier = SecureRandom.hex(5) # or whatever you chose like UUID tools
      end while self.class.exists?(:unique_identifier => unique_identifier)
    end
    
def to_param
    unique_identifier
    end
end
