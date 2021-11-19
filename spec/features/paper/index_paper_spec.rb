require 'rails_helper'

describe "Index paper page", type: :feature do
    it "should not display papers published in a year other than the given url parameter" do
        @paper = FactoryBot.create :paper
        visit papers_path(year: 1951)
        expect(page).not_to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
    end
end