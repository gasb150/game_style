require 'rails_helper'
RSpec.describe ArticlesCategory, type: :model do
    describe 'assosiations' do
        it { should belong_to(:article)}
        it { should belong_to(:category)}
    end
    describe 'Articles Categories attributes presence' do
        it { should validate_presence_of(:article_id) }
        it { should validate_presence_of(:category_id) }
     end
end