class Movie < ApplicationRecord
    # Returns array of all unique movie ratings
    def self.all_ratings
        ['G', 'PG', 'PG-13', 'R']
    end

    # Returns movies matching the given array of ratings
    def self.with_ratings(ratings_list, sort_by = nil)
        movies = ratings_list.blank? ? all : where(rating: ratings_list)

        case sort_by
        when 'title'
            movies.order(:title)
        when 'release_date'
            movies.order(:release_date)
        else
            movies
        end
    end
end
