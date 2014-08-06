require "./spec_helper"

class Search < SitePrism::Page
  set_url "http://news.liputan6.com"

  element :search_form, "input[name=q]"
end

describe "Search Article" do
  subject :search do
    search = Search.new
    search.load
    search
  end

  it { should have_search_form }

  it "want search jokowi" do
    subject.search_form.set "jokowi\n"
    expect(subject.current_url).to eq "http://www.liputan6.com/search?q=jokowi"
  end
end
