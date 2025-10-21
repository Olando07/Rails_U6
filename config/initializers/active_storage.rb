Rails.application.config.to_prepare do
  ActiveStorage::Attachment.class_eval do
    def self.ransackable_attributes(auth_object = nil)
      [ "fullName", "record_type", "record_id", "blob_id", "created_at", "id" ]
    end
  end

  ActiveStorage::Blob.class_eval do
    def self.ransackable_attributes(auth_object = nil)
      [ "filename", "content_type", "metadata", "byte_size", "checksum", "created_at", "key", "id" ]
    end
  end
end
