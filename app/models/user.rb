class User < ActiveRecord::Base
    validates :email,  presence: true
    validates :email, presence: true, length: { maximum: 25}
 #   validates :email, format: {with: /<regular expression>/ }
    validates :password, length: {minimum: 6}
    has_secure_password 
end
