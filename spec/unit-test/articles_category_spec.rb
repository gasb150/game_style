require 'rails_helper'
RSpec.describe ArticlesCategory, type: :model do
    describe 'assosiations' do
        it { should belong_to(:article)}
        it { should belong_to(:category)}
    end
end