class Admin < ActiveRecord::Base
    has_secure_password

    validates_presence_of :username, :password
    validates_uniqueness_of :username

    belongs_to :role
    belongs_to :branch

end
