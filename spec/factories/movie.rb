FactoryBot.define do
  factory :movie do
    category { "Movie" }
    title { "The little mermaid" }
    director { "Rob Marshall" }
    cast { "Halle Balley" }
    country { "United States" }
    date_added { "January 1, 2021" }
    release_year { "2022" }
    rating { "R" }
    duration { "175 min" }
    listed_in { "Classic Movies" }
    description { "A mermaid finds her prince and wants to be human" }
  end
end
