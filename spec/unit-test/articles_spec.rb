require 'rails_helper'

RSpec.describe Article, type: :model do
    describe 'assosiations' do
        it { should belong_to(:user) }
        it { should have_many(:votes) }
            it { should have_one_attached(:image) }
            it { should have_many(:articles_categories) }
          
        end
  describe 'title presence' do
    it { should validate_presence_of(:title) }
  end

  describe 'text presence' do
    it { should validate_presence_of(:text) }
  end
  
 

  describe 'category ids presence' do
    it { should validate_presence_of(:category_ids) }
  end
  describe 'image presence' do
    it { should validate_presence_of(:image) }
  end

  describe 'lenght of title' do
    it { should validate_length_of(:title) }
  end
  describe 'lenght of text' do
    it { should validate_length_of(:text) }
  end

  
end