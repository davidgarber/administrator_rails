FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "test#{n}@example.com"}
    password('12345678')
  end

  factory(:post) do
    title('Blog')
    body('This is not a blog.')
  end
end
