class Picture < ActiveRecord::Base
  belongs_to :album

  has_attached_file :image, styles: { 
  	small: "64x64", 
  	med: "200x200", 
  	large: "400x400" },
  	:storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => , :access_key_id => , :secret_access_key => , :s3_region => }
  end

  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" }
    #,size: { in: 0..20.kilobytes }
end
