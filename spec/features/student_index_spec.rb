require 'rails_helper'

describe 'Route to view' do
  it 'has an index page' do
    visit "/student"

    expect(page.status_code).to eq(200)
  end
end

describe 'Multiple students are shown' do
  it 'on the index page' do
    Student.create!(first_name: "Daenerys", last_name: "Targaryen")
    Student.create!(first_name: "Lindsey", last_name: "Stirling")

    visit "/student"

    assert_text("Daenerys", "Lindsey")
  end
end
