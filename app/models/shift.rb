class Shift < ApplicationRecord
    
    # Shift form validations
    validates :name, presence: true, length: { maximum: 128 }
    validates :time, presence: true, length: { maximum: 128 }
    validates :date, presence: true
    
    before_create :create_unique_identifier
    
    def create_unique_identifier
      begin
        self.unique_identifier = SecureRandom.hex(7) # or whatever you chose like UUID tools
      end while self.class.exists?(:unique_identifier => unique_identifier)
    end
    
    def to_param
        unique_identifier
    end
end
