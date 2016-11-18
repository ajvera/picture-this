class Album < ActiveRecord::Base
  belongs_to :user
  has_many :pictures

  accepts_nested_attributes_for :pictures

  def privatization(private_param)
    puts "private_param is:"
    p private_param
    if private_param == 0
      self.private = false
    else
      self.private = true
    end
  end
end
