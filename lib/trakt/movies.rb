module Trakt
  class Movie
    include Connection
    def find(query)
      get('/search/movies.json/',clean_query(query))
    end
    
    def trending(*args)
        get_with_args('/movies/trending.json/', *args)
    end
    
    def updated(*args)
        get_with_args('/movies/updated.json/', *args)
    end
  end
end
