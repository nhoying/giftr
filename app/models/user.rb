class User < ApplicationRecord
    has_secure_password
    
    validates_uniqueness_of :username
    
    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
            user.name = auth.info.name
            user.email = auth.info.email
            user.username = auth.info.email
        end
    end
end
