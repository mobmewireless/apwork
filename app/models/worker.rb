class Worker < ActiveRecord::Base
  
  def assigned_text
    assigned ? "Working" : "Available" 
  end
  
end
