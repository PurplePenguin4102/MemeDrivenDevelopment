class Post < ApplicationRecord
    def self.published
        where(published: true).order(publish_date: :desc)
    end
    
    def self.index
        order(id: :asc)
    end
end