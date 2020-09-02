class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances




    def rating_per_episode(episode)
        rating = 0
        self.appearances.each do |app|
            if app.episode_id == episode
                rating = app.rating
            end
        end
        rating
    end

    def sort_episodes_by_rating
        appearances = self.appearance_ids
        app_ratings_hash = {}
        appearances.each do |app|
            app_instance = Appearance.find(app)
            app_ratings_hash[app_instance.episode_id] = app_instance.rating
        end
        app_ratings_hash = app_ratings_hash.sort_by {|k, v| -v}.to_h
        # episodes = self.episodes.sort_by {|ep| ep.appearances.rating}
    end

end
