require 'rails_helper'

describe "a paper", type: :model do
  it "should have title, venue and year" do
    paper = Paper.new()
    paper.title = "COMPUTING MACHINERY AND INTELLIGENCE"
    paper.venue = "Mind 49: 433-460"
    paper.year = 1950
    expect(paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(paper.venue).to eq("Mind 49: 433-460")
    expect(paper.year).to eq(1950)
  end
  it "shouldn't validate without title" do
    paper = Paper.new
    paper.title = nil
    paper.venue = "Mind 49: 433-460"
    paper.year = 1950
    expect(paper).to_not be_valid
  end
  it "shouldn't validate without venue" do
    paper = Paper.new
    paper.title = "COMPUTING MACHINERY AND INTELLIGENCE"
    paper.venue = nil
    paper.year = 1950
    expect(paper).to_not be_valid
  end
  it "shouldn't vaildate without year" do
    paper = Paper.new()
    paper.title = "COMPUTING MACHINERY AND INTELLIGENCE"
    paper.venue = "Mind 49: 433-460"
    paper.year = nil
    expect(paper).to_not be_valid
  end
  it "shouldn't vaildate without year having a numerical value" do
    paper = Paper.new()
    paper.title = "COMPUTING MACHINERY AND INTELLIGENCE"
    paper.venue = "Mind 49: 433-460"
    paper.year = "nineteen hundred and fifty"
    expect(paper).to_not be_valid
  end
end
