FactoryGirl.define do
  factory :track, class: Musk::Track do
  end

  factory :jets_track, parent: :track do
    loadpath ENV["MUSK_TRACKS_PATH"]
    fullpath File.join(ENV["MUSK_TRACKS_PATH"], "bonobo/jets.mp3")
    title "Jets"
    number "6"
    number_of "13"
    artist "Bonobo"
    release "The North Borders"
    genre "Electronic"
    year "2013"

    trait :loaded do
      comment "0"
    end
  end

  factory :kamakura_track, parent: :track do
    loadpath ENV["MUSK_TRACKS_PATH"]
    fullpath File.join(ENV["MUSK_TRACKS_PATH"], "emancipator/kamakura.mp3")
    title "Kamakura"
    number "4"
    number_of "14"
    artist "Emancipator"
    release "Safe In The Steep Cliffs"
    genre "Electronic"
    year "2010"

    trait :loaded do
      comment "0"
    end
  end
end
