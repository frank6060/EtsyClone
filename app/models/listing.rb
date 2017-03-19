class Listing < ApplicationRecord
validates :image, attachment_presence: true
validates_with AttachmentPresenceValidator, attributes: :image
validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes
end
