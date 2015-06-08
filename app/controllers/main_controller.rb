require 'open-uri'
require 'watir'
require 'json'
require 'fuzzystringmatch'
class MainController < ApplicationController
  
  #Precondition: id is a id of a game. ID MUST BE VALID
  #PostCondition: creates instance variable @post_links for the links of
  #the reddit posts and @post_names for the titles, @comment_links
  #for the link to the comments
  def get_reddit_info(id)
    @post_names = []
    @post_links = []
    @comment_links = []
    base_url = "http://www.reddit.com/r/"
    game = Game.find_by(id:id)
    base_url+= game.subreddit + "/top?sort=top&t=month"

    page = Nokogiri::HTML.parse(open(base_url))
    if page.css('#noresults') && page.css('#noresults') == []
      return
    else
      table = page.css('#siteTable')
      table.css('.thing').each do |post|
        link = ""
        comment = ""
        title = ""
        post.css('a.title').each do |title_html|
          title = title_html.text
          link = title_html['href']
        end
        post.css('.comments').each do |comment_link|
          comment = comment_link['href']
        end
        if link[0..2] == "/r/"
          link = comment
        end
        if link != "" && comment != "" && title != ""
          @post_names << title
          @post_links << link
          @comment_links << comment
        end
      end
    end
  end

  #Precondition: name is the name of a game.
  #Postcondition: creates instance variable @google_links for the
  #top 10 links for the google search of name "reviews"
  def google_info(name)
    @google_links = []
    count = 0
    Google::Search::Web.new(:query => (name + "reviews")).each do |web|
      if !web.uri.include?("reddit") && !web.uri.include?("wikipedia") && 
        !web.uri.include?("youtube") && count<10
        @google_links << web.uri
        count+=1
      end
    end
  end

  #Precondition: name is the name of a game
  #Precondition: tag = "reviews" or tag = "gameplay"
  #Postcondition: IN PROGRESS
  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  #def youtube_info(name,tag)
    
  #end

  #NOTES:
  #ORDER TO UPDATE DATABASE
  #1) update_steam_game_list() to get new games. WILL OPEN BROWSER
  #2) fail = update_steam_dlc()
  #3) update_steam_dlc_failures(fail) will try to fix failures
  #4) how_long_to_beat()
  #5) how_long_to_beat_dlc()
  #6) set_subreddit_for_games
  
  def index
    #google_info("Witcher 3")
    #youtube_info("Witcher 3", "reviews")
  end
end