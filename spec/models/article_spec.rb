require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { build(:article) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end
end
