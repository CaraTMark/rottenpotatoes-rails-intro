class Movie < ApplicationRecord
    # Returns array of all unique movie ratings
    def self.all_ratings
        ['G', 'PG', 'PG-13', 'R']
    end

    # Returns movies matching the given array of ratings
    def self.with_ratings(ratings_list)
        if ratings_list.blank?
            all
        else
            where(rating: ratings_list)
        end
    end
end
