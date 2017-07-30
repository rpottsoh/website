FactoryGirl.define do
  factory :reaction do
    solution { create :solution }
    user { create :user }
    emotion :love
    comment "The cat was all like and the mat and whatnot"
  end

  factory :maintainer do
    track { create :track }
    github_username "iHiD"
    name "Jeremy Walker"
    avatar_url "somewhere.jpg"
  end

  factory :exercise_topic do
    exercise { create :exercise }
    topic { create :topic }
  end

  factory :topic do
    slug "foobar"
  end

  factory :profile do
    user { create :user }
    avatar_url "http://foobar.png"
    slug { SecureRandom.uuid }
  end

  factory :communication_preferences do
    user { create :user }
  end

  factory :notification do
    user { create :user }
    type :some_notification_type
    content "Foobar"
    link "http://barfoo.com"
  end

  factory :track_mentorship do
    user { create :user }
    track { create :track }
  end

  factory :auth_token do
    user { create :user }
    token { SecureRandom.uuid }
  end

  factory :solution_mentorship do
    user { create :user }
    solution { create :solution }
  end

  factory :favourite do
    iteration { create :iteration }
  end

  factory :discussion_post do
    iteration { create :iteration }
    user { create :user }
    content "Some comment here"
    html "<p>Some comment here</p>"
  end

  factory :iteration do
    solution { create :solution }
    code "Foobar"
  end

  factory :track do
    title "Ruby"
    slug { "ruby-#{SecureRandom.uuid}" }
    introduction "Master the Ruby language"
    about "Placeholder about Ruby"
    code_sample <<-EOS
      puts "Hello World"
    EOS
    repo_url { "http://example.com/ruby-#{SecureRandom.uuid}.git" }
  end

  factory :exercise do
    track { create :track }
    uuid { SecureRandom.uuid }
    slug { "bob-#{SecureRandom.uuid}" }
    title "Bob"
    core false
    position 1
  end

  factory :user do
    name "Jeremy Walker"
    handle "iHiD"
    email { "jez.walker+#{SecureRandom.uuid}@gmail.com" }
    password "foobar123"
  end

  factory :solution do
    user { create :user }
    exercise { create :exercise }
    git_sha { SecureRandom.uuid }
    git_slug { SecureRandom.uuid }
  end

  factory :user_track do
    user { create :user }
    track { create :track }
  end
end