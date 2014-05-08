module Trakt
  class Account
    include Connection
    def movies_collection(*args)
        get_with_args('/user/library/movies/collection.json/', *args)
    end
    def movies_watched(*args)
        get_with_args('/user/library/movies/watched.json/', *args)
    end
    def movies_all(*args)
        get_with_args('/user/library/movies/all.json/', *args)
    end
    def list(*args)
        get_with_args('/user/list.json/', *args)
    end
    def lists(*args)
        get_with_args('/user/lists.json/', *args)
    end
    def ratings_movies(*args)
        get_with_args('/user/ratings/movies.json/', *args)
    end
    def watchlist_movies(*args)
        get_with_args('/user/watchlist/movies.json/', *args)
    end
  end
end
