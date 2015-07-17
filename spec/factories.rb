FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "test#{n}@example.com"}
    password('12345678')

  factory :admin do
    sequence(:email) {|n| "test#{n}@example.com"}
    password('12345678')
    admin(true)
    end
  end

  factory(:post) do
    title('Blog')
    body('This is not a blog.')
  end

  factory(:comment) do
    name('David')
    comment('This is a blog.')
  end
end
