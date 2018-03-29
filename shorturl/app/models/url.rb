class Url < ApplicationRecord
    validates :original_url, presence: true
    before_create do
        self.shortened_url = SecureRandom.hex(3)
    end
end
