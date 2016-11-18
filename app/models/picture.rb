class Picture < ActiveRecord::Base
  belongs_to :album

  has_attached_file :image, styles: { 
  	small: "64x64", 
  	med: "200x200", 
  	large: "400x400" }
  	# :storage => :s3,
   #  :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  # def s3_credentials
  #   {:bucket => ENV["S3_BUCKET_NAME"], :access_key_id => ENV["AWS_ACCESS_KEY_ID "], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"], :s3_region => "us-east-1" }
  # end

  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" }
end
