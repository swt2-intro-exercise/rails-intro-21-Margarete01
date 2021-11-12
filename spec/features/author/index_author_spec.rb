require 'rails_helper'

describe "Index author page", type: :feature do
    it "should show a table with name and homepage of all authors" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_css 'table'
        within 'table' do
            expect(page).to have_text("Name")
            expect(page).to have_text("Homepage")
            expect(page).to have_text(@alan.name)
            expect(page).to have_text (@alan.homepage)
        end
    end
    it "should contains a link to add new authors" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end
end