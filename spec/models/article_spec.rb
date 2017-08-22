require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { create(:article) }

  describe 'Validation' do
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

    it "is not valid without a status" do
      subject.status = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Enum' do
    it "is found by published_scope if article is published" do
      expect(Article.published).to include subject
    end
    it { expect(Article.unpublished).not_to include subject }
    
    let(:unpublished_article) { build :article, :unpublished }
    it { expect(Article.unpublished).to include unpublished_article }
    it { expect(Article.published).not_to include unpublished_article }
  end
end
