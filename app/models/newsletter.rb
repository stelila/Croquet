class Newsletter < ActiveRecord::Base
  mount_uploader :file, FileUploader
end
