class Test < ApplicationRecord
  belongs_to :category
  has_many :test_passages
  has_many :users, through: :test_passages
  has_many :questions

  def self.sorted_tests_by_category(category_name)
    tests = Test.joins(:category).where(categories: { name: category_name })
    tests.order(title: :desc).pluck(:title)
  end
end
