require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "creating a Article" do
    visit articles_url
    click_on "New Article"

    fill_in "Author", with: @article.Author
    check "Free" if @article.Free
    fill_in "Price level", with: @article.Price_level
    fill_in "Publication datetime", with: @article.Publication_datetime
    fill_in "Text", with: @article.Text
    fill_in "Title", with: @article.Title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "updating a Article" do
    visit articles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @article.Author
    check "Free" if @article.Free
    fill_in "Price level", with: @article.Price_level
    fill_in "Publication datetime", with: @article.Publication_datetime
    fill_in "Text", with: @article.Text
    fill_in "Title", with: @article.Title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "destroying a Article" do
    visit articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article was successfully destroyed"
  end
end
