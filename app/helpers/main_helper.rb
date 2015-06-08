require 'open-uri'
require 'watir'
require 'json'

module MainHelper
   
  def has_dlc?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["dlc"]
      return true
    end
    return false
  end

  def get_dlc(hash,id)
    return hash[id.to_s]["data"]["dlc"]
  end

  def has_name?(hash,dlc)
    if hash && hash[dlc.to_s] && hash[dlc.to_s]["data"] && 
      hash[dlc.to_s]["data"]["name"]
        return true
    end
    return false
  end

  def get_name(hash,dlc)
    return hash[dlc.to_s]["data"]["name"]
  end

  def has_metacritic?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["metacritic"] &&
      hash[id.to_s]["data"]["metacritic"]["score"] &&
      hash[id.to_s]["data"]["metacritic"]["url"]
      return true
    end
    return false
  end

  def get_metacritic_url(hash,id)
    return hash[id.to_s]["data"]["metacritic"]["url"]
  end

  def get_metacritic_score(hash,id)
    return hash[id.to_s]["data"]["metacritic"]["score"]
  end
  #
  def has_description?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["detailed_description"]
      return true
    end
    return false
  end

  def get_description(hash,id)
    return hash[id.to_s]["data"]["detailed_description"]
  end
  #
  def has_reviews?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["reviews"]
      return true
    end
    return false
  end

  def get_reviews(hash,id)
    return hash[id.to_s]["data"]["reviews"]
  end
  #
  def has_website?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["website"]
      return true
    end
    return false
  end

  def get_website(hash,id)
    return hash[id.to_s]["data"]["website"]
  end

  #
  def has_min_req?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
       hash[id.to_s]["data"]["pc_requirements"] && 
       hash[id.to_s]["data"]["pc_requirements"] != [] && 
       hash[id.to_s]["data"]["pc_requirements"]["minimum"]
      return true
    end
    return false
  end

  def get_min_req(hash,id)
    return hash[id.to_s]["data"]["pc_requirements"]["minimum"]
  end
  #
  def has_rec_req?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["pc_requirements"] && 
      hash[id.to_s]["data"]["pc_requirements"] != [] &&
      hash[id.to_s]["data"]["pc_requirements"]["recommended"]
      return true
    end
    return false
  end

  def get_rec_req(hash,id)
    return hash[id.to_s]["data"]["pc_requirements"]["recommended"]
  end
  #
  def has_legal_notice?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["legal_notice"]
      return true
    end
    return false
  end

  def get_legal_notice(hash,id)
    return hash[id.to_s]["data"]["legal_notice"]
  end
  #
  def has_release_date?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["release_date"] && hash[id.to_s]["data"]["release_date"]["date"]
      return true
    end
    return false
  end

  def get_release_date(hash,id)
    return hash[id.to_s]["data"]["release_date"]["date"]
  end
  #
  def has_packages?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["packages"]
      return true
    end
    return false
  end

  def get_packages(hash,id)
    return hash[id.to_s]["data"]["packages"]
  end
  #
  def has_developer?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["developers"]
      return true
    end
    return false
  end

  def get_developer(hash,id)
    return hash[id.to_s]["data"]["developers"]
  end
  #
  def has_header_image?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && hash[id.to_s]["data"]["header_image"]
      return true
    end
    return false
  end

  def get_header_image(hash,id)
    return hash[id.to_s]["data"]["header_image"]
  end
  #
  def has_recommendation?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["recommendations"] && 
      hash[id.to_s]["data"]["recommendations"]["total"]
      return true
    end
    return false
  end

  def get_recommendation(hash,id)
    return hash[id.to_s]["data"]["recommendations"]["total"].to_i
  end

  def has_packages?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["packages"]
      return true
    end
    return false
  end

  def get_packages(hash,id)
    return hash[id.to_s]["data"]["packages"]
  end

  def has_type?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["type"]
      return true
    end
    return false
  end

  def get_type(hash,id)
    return hash[id.to_s]["data"]["type"]
  end

  def has_apps?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["apps"]
      return true
    end
    return false
  end

  def get_apps(hash,id)
    return hash[id.to_s]["data"]["apps"]
  end

  def has_small_logo?(hash,id)
    if hash && hash[id.to_s] && hash[id.to_s]["data"] && 
      hash[id.to_s]["data"]["small_logo"]
      return true
    end
    return false
  end

  def get_small_logo(hash,id)
    return hash[id.to_s]["data"]["small_logo"]
  end

  def has_large_capsules?(hash)
    if hash && hash["large_capsules"]
      return true
    end
    return false
  end

  def get_large_capsules(hash)
    return hash["large_capsules"]
  end

  def has_id?(cap)
    if cap && cap["id"]
      return true
    end
    return false
  end

  def get_id(cap)
    return cap["id"]
  end

  def has_small_capsules?(hash)
    if hash && hash["featured_win"]
      return true
    end
    return false
  end

  def get_small_capsules(cap)
    return cap["featured_win"]
  end

  #Use to update database of games
  #DO NOT USE AT RUNTIME
  #Opens up actual browser to scrape data
  def update_steam_game_list()
    #Base URL For Search
    main_url = 'http://store.steampowered.com/search/?sort_by=Released_DESC#sort_by=Name_ASC&category1=998&page='
    
    #local variable we will modify
    url = main_url
    #what page of the search we are on
    page_count = 1
    url+=page_count.to_s
    browser = Watir::Browser.new
    browser.goto url
    page = Nokogiri::HTML.parse(browser.html)
    while !page.at('p:contains("No results were returned for that query.")') && page_count<250
      page.css(".search_result_row").each do |element|
        id = element['href'].slice!(34..41)
        id.gsub!(/[^0-9]/,'')
        title = element.css(".title").text
        if Game.find_by(steamid:id)
           puts ""
        else 
           Game.create(name:title,steamid:id)
        end
      end
      url = main_url
      page_count+=1
      url+=page_count.to_s
      sleep(0.5)
      browser.goto url
      page = Nokogiri::HTML.parse(browser.html) 
    end
  end
 
  #Forces refresh of page until success
  #Precondition: uri is the site to refresh
  #Precondition: max_time is how long to force refresh
  #Precondition: id is the dlc/game id to record if it fails
  #Precondition: is_dlc_id is true if the the id is for a dlc
  #Precondition: @failures exists before this method is called
  def page_refresh(uri,max_time,id,is_dlc_id)
    time = Time.now+max_time.seconds
    resp = Net::HTTP.get_response(uri)
    while Time.now<time && resp.body == "null" do 
      resp = Net::HTTP.get_response(uri)
    end
    if resp.body == "null" || resp.class == Net::HTTPBadRequest
      @failures<<id if !is_dlc_id
      return nil
    end
    if !valid_json?(resp.body)
      return page_refresh(uri,max_time,id,is_dlc_id)
    end
    return resp.body
  end

  #Similar to above. Used when getting url for non game/dlc
  def page_refresh_no_id(uri,max_time)
    time = Time.now+max_time.seconds
    resp = Net::HTTP.get_response(uri)
    while Time.now<time && resp.body == "null" do 
      resp = Net::HTTP.get_response(uri)
    end
    if resp.body == "null" || resp.class == Net::HTTPBadRequest
      return nil
    end
    if !valid_json?(resp.body)
      return page_refresh(uri,max_time,id,is_dlc_id)
    end
    return resp.body
  end

  def valid_json?(json)
    begin
      JSON.parse(json)
      return true
    rescue Exception => e
      return false
    end
  end
  
  #Useful for getting important information from storefront api
  def get_update_hash(hash,id)
    game_update_hash = Hash.new
    if has_metacritic?(hash,id)
      game_update_hash[:metascore] = get_metacritic_score(hash,id)
      game_update_hash[:metaurl] = get_metacritic_url(hash,id)
    end
    if has_description?(hash,id)
      game_update_hash[:description] = get_description(hash,id)
    end
    if has_reviews?(hash,id)
      game_update_hash[:review] = get_reviews(hash,id)
    end
    if has_website?(hash,id)
      game_update_hash[:website] = get_website(hash,id)
    end
    if has_min_req?(hash,id)
      game_update_hash[:minreq] = get_min_req(hash,id)
    end
    if has_rec_req?(hash,id)
      game_update_hash[:recreq] = get_rec_req(hash,id)
    end
    if has_legal_notice?(hash,id)
      game_update_hash[:legal] = get_legal_notice(hash,id)
    end
    if has_release_date?(hash,id)
      game_update_hash[:releasedate] = get_release_date(hash,id)
    end
    if has_developer?(hash,id)
      game_update_hash[:developer] = get_developer(hash,id)
    end
    if has_header_image?(hash,id)
      game_update_hash[:headerimg] = get_header_image(hash,id)
    end
    if has_recommendation?(hash,id)
      game_update_hash[:recommendations] = get_recommendation(hash,id)
    end
    return game_update_hash
  end
  
  #Use to update database of dlcs
  #DO NOT USE AT RUNTIME
  #PostCondition: returns array of steamids for failures
  def update_steam_dlc()
    base_url = "http://store.steampowered.com/api/appdetails?appids="
    @failures = []
    Game.all.each do |game|
      id = game.steamid
      #id = 22380
      uri = URI(base_url + id.to_s + "&filter=basic")
      #get the body of the text
      body = page_refresh(uri,5,id,false)

      if valid_json?(body)
        hash = JSON(body)

        #Update game with new values
        Game.update(game.id, get_update_hash(hash,id))
        get_package_info(hash,id,game)

        if has_dlc?(hash,id)
          dlc = hash[id.to_s]["data"]["dlc"]
          if dlc
            dlc.each do |dlc|
              uri = URI(base_url + dlc.to_s + "&filter=basic")
              body = page_refresh(uri,5,dlc,true)
              if valid_json?(body)
                hash = JSON(body)
                if has_name?(hash,dlc)
                  dlc_name = hash[dlc.to_s]["data"]["name"]
                  if !Dlc.find_by(steamid:dlc)
                    dlc_hash = get_update_hash(hash,dlc)
                    dlc_hash[:name] = dlc_name
                    dlc_hash[:steamid] = dlc
                    game.dlcs.create(dlc_hash)
                  else
                    # if has_metacritic?(hash,dlc)
                    #   meta_score = hash[dlc.to_s]["data"]["metacritic"]["score"]
                    #    meta_url =  hash[dlc.to_s]["data"]["metacritic"]["url"]
                    temp_dlc = Dlc.find_by(steamid:dlc)
                    Dlc.update(temp_dlc.id,get_update_hash(hash,dlc))
                    #end
                  end 
                end
              end
            end
          end
        end
      end
      sleep(0.5)
    end
    return @failures
  end
  
  #Use to get package info for a specific package
  #id: The Games ID, game: The game the package belongs to
  #DO NOT USE AT RUNTIME
  def get_package_info(hash,id,game)
    base_url = "http://store.steampowered.com/api/packagedetails?packageids="
    
    if has_packages?(hash,id)
      packages = get_packages(hash,id)

      packages.each do |package|
        uri = URI(base_url + package.to_s)
        body = page_refresh(uri,5,id,false)
        game_update_hash = Hash.new
        
        if valid_json?(body)
          hash = JSON(body)
          if has_name?(hash,package.to_i)

            game_update_hash[:name] = get_name(hash,package.to_i)
            game_update_hash[:packageid] = package
            if has_small_logo?(hash,package.to_i)
              game_update_hash[:headerimg] = get_small_logo(hash,package.to_i)
            end
            if has_release_date?(hash,package.to_i)
              game_update_hash[:releasedate] = get_release_date(hash,
                package.to_i)
            end
            if has_apps?(hash,package.to_i)
              app_id_insert = ""
              get_apps(hash,package.to_i).each do |app|
                if app && app["id"]
                  app_id_insert+=app["id"].to_s + ","
                end
              end
              app_id_insert = app_id_insert.chop
              game_update_hash[:apps] = app_id_insert
            end
            puts game_update_hash.inspect
            if game.packages.find_by(packageid:package)
              temp_package = game.packages.find_by(packageid:package)
              game.packages.update(temp_package.id,game_update_hash)
            else
              game.packages.create(game_update_hash)
            end
          end
        end
      end

    end
  end

  #After calling update_steam_dlc, numbers is the steamids of games
  #that failed in any way
  def update_steam_dlc_failures(numbers)
    base_url = "http://store.steampowered.com/api/appdetails?appids="
    @failures = []
    numbers.each do |num|
      game = Game.find_by(steamid:num)
      id = game.steamid
      #id = 22380
      uri = URI(base_url + id.to_s + "&filter=basic")
      #get the body of the text
      body = page_refresh(uri,5,id,false)

      if valid_json?(body)
        hash = JSON(body)
        
        Game.update(game.id, get_update_hash(hash,id))
        

        if has_dlc?(hash,id)
          dlc = hash[id.to_s]["data"]["dlc"]
          if dlc
            dlc.each do |dlc|
              uri = URI(base_url + dlc.to_s + "&filter=basic")
              body = page_refresh(uri,5,dlc,true)
              if valid_json?(body)
                hash = JSON(body)
                if has_name?(hash,dlc)
                  dlc_name = hash[dlc.to_s]["data"]["name"]
                  if !Dlc.find_by(steamid:dlc)
                    dlc_hash = get_update_hash(hash,dlc)
                    dlc_hash[:name] = dlc_name
                    dlc_hash[:steamid] = dlc
                    game.dlcs.create(dlc_hash)
                  else
                    # if has_metacritic?(hash,dlc)
                    #   meta_score = hash[dlc.to_s]["data"]["metacritic"]["score"]
                    #    meta_url =  hash[dlc.to_s]["data"]["metacritic"]["url"]
                    #   temp_dlc = Dlc.find_by(steamid:dlc)
                    #   Dlc.update(temp_dlc.id, 
                    #     :name => temp_dlc.name, :steamid => dlc,
                    #     :metascore => meta_score, :metaurl => meta_url)
                    # end
                    temp_dlc = Dlc.find_by(steamid:dlc)
                    Dlc.update(temp_dlc.id,get_update_hash(hash,dlc))
                  end 
                end
              end
            end
          end
        end
      end
      sleep(0.5)
    end
  end
  
  #Cleans string of excessive spaces, :&-, and special characters
  def clean_string(str)
    cleaned = ""
    str.each_byte { |x|  cleaned << x unless x > 127   }
    cleaned.tr!(':&-','')
    cleaned.gsub!(/\s+/, ' ')
    return cleaned
  end

  #Stronger version of above
  def clean_string_stronger(str)
    cleaned = ""
    str.each_byte { |x|  cleaned << x unless x > 127   }
    cleaned.gsub!(/[^a-zA-Z0-9\s]/,'')
    cleaned.gsub!(/\s+/, " ")
    return cleaned
  end

  #Gets hltb info for each game
  #DO NOT USE AT RUNTIME
  def how_long_to_beat()
    base_url = "http://howlongtobeat.com/search_main.php?t=games&amp;page=1&amp;sorthead=popular&amp;sortd=Normal%2520Order&amp;plat=&amp;detail=0"
    uri = URI.parse(base_url)
    Game.all.each do |game|
      #response = Net::HTTP.post_form(uri, {"queryString" => game.name})
      response = Net::HTTP.post_form(uri, {"queryString" => 
        clean_string(game.name.to_s)})
      page = Nokogiri::HTML.parse(response.body)
      if page.css(".search_loading").css(".back_white").to_a == []
        first_element = page.css('li')[0]
        html_link = ""
        first_element.css('.text_blue').each do |title|
          html_link = title['href']
        end
        first_element.css('.text_yellow').each do |title|
          html_link = title['href']
        end
        times = first_element.css('.gamelist_tidbit')
        if times && times.size>0
          main_story = 0
          main_extra = 0
          completion = 0
          combined = 0
          for i in (0..times.size-1) do
            if i == 1
              main_story = times[i].text.tr('^0-9', '').to_i
            end 
            if i == 3
              main_extra = times[i].text.tr('^0-9', '').to_i
            end
            if i == 5
              completion = times[i].text.tr('^0-9', '').to_i
            end
            if i ==7 
              combined = times[i].text.tr('^0-9', '').to_i
            end
          end
          Game.update(game.id,:hltb => html_link, 
            :MainStory => main_story, :MainExtra => main_extra, 
            :Completion => completion, :Combined => combined)
        else
          Game.update(game.id,:hltb => html_link)
        end
      end
    end
  end

  #Gets hltb info for each dlc
  #DO NOT USE AT RUNTIME
  def how_long_to_beat_dlc()
    base_url = "http://howlongtobeat.com/search_main.php?t=games&amp;page=1&amp;sorthead=popular&amp;sortd=Normal%2520Order&amp;plat=&amp;detail=0"
    uri = URI.parse(base_url)
    Dlc.all.each do |game|
      #response = Net::HTTP.post_form(uri, {"queryString" => game.name})
      response = Net::HTTP.post_form(uri, {"queryString" => 
        clean_string(game.name.to_s)})
      page = Nokogiri::HTML.parse(response.body)
      if page.css(".search_loading").css(".back_white").to_a == []
        first_element = page.css('li')[0]
        html_link = ""
        first_element.css('.text_blue').each do |title|
          html_link = title['href']
        end
        first_element.css('.text_yellow').each do |title|
          html_link = title['href']
        end
        times = first_element.css('.gamelist_tidbit')
        if times && times.size>0
          main_story = 0
          main_extra = 0
          completion = 0
          combined = 0
          for i in (0..times.size-1) do
            if i == 1
              main_story = times[i].text.tr('^0-9', '').to_i
            end 
            if i == 3
              main_extra = times[i].text.tr('^0-9', '').to_i
            end
            if i == 5
              completion = times[i].text.tr('^0-9', '').to_i
            end
            if i ==7 
              combined = times[i].text.tr('^0-9', '').to_i
            end
          end
          Dlc.update(game.id,:hltb => html_link, 
            :MainStory => main_story, :MainExtra => main_extra, 
            :Completion => completion, :Combined => combined)
        else
          Dlc.update(game.id,:hltb => html_link)
        end
      end
    end
  end

  #Precondition: str is a string
  #PostCondition: returns a string that is a simplified
  #version of str for searching subreddit
  #NOTE: WILL NEED TO BE REFINED
  def refine_reddit_string(str)
    str = str.to_s
    cleaned = ""
    str.each_char do |x|
      if x.ord >127 && x.ord != 8217
        break
      else cleaned << x
      end
    end
    cleaned.gsub!(/\s+/, ' ')
    if cleaned
      cleaned = cleaned.split(':')[0]
      if cleaned
        cleaned = cleaned.split("-")[0]
        if cleaned
          cleaned = cleaned.split("&")[0]
          if cleaned
            cleaned = cleaned.split("(")[0]
              if cleaned
                cleaned.delete!('\'')
                if cleaned
                  cleaned.gsub!(/\s+/, '')
               end
             end
          end
        end
      end
    end
    if cleaned
     cleaned.delete!('^a-zA-Z')
    end
    return cleaned
  end

  #Will set the subreddit name for all games using 
  #refine_reddit_string on the name
  def set_subreddit_for_games()
    Game.all.each do |game|
      if game.subreddit == nil
        Game.update(game.id,:subreddit => 
          refine_reddit_string(game.name))
      end
    end
  end

end
