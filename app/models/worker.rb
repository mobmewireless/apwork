class Worker < ActiveRecord::Base
  validates_presence_of :name, :mobile, :location, :job
  
  def assigned_text
    assigned ? "Working" : "Available" 
  end
  
end
