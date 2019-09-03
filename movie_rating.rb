movies = {
  "The Revenant": 4,
  "Toy Story": 4,
  "Weird Science": 2,
}

puts "==============================================="
puts "============ Movie Rating Program ============="
puts "==============================================="

while true 	
	puts "================== Main Menu =================="
	puts "add     -- Add a movie rating"
	puts "update  -- Update an existing movie rating"
	puts "display -- Display the list of the movie ratings"
	puts "delete  -- Delete a movie rating"
  puts "quit    -- Quit the Program"
  print ">> "
	choice = gets.chomp
  
  break if choice == "quit"
  
	
	case choice
	  when "add"
	  	puts "What movie would you like to add?"
	  	title = gets.chomp
	  	if movies[title.to_sym].nil?
	  		if title.to_sym
	  			puts "What is #{title}\'s rating?"
	  			rating = gets.chomp
	    	  if rating.to_i
	  				movies[title.to_sym] = rating.to_i
	  				puts "#{title}: #{rating} has been added!"
	    	  else
	    	    puts "Not able to convert Rating to integer"
	    	  end
	    	else
	    	  puts "Unable to convert title to symbol"
	  		end
	    else
	      puts "Movie already in listing"
	      puts "#{title}: #{movies[title.to_sym]}"
	    end
	  when "update"
			puts "What movie would you like to update?"
	  	title = gets.chomp
	  	if !movies[title.to_sym].nil?
	  		if title.to_sym
	  			puts "What is #{title}\'s new rating?"
	  			rating = gets.chomp
	    	  if rating.to_i
	  				movies[title.to_sym] = rating.to_i
	  				puts "#{title}: #{rating} has been updated!"
	    	  else
	    	    puts "Not able to convert Rating to integer"
	    	  end
	    	else
	    	  puts "Unable to convert title to symbol"
	  		end
	    else
	      puts "Movie not in listing"
	    end
	  when "display"
    	puts "====== Movie/Rating Listing ======"
	  	movies.each { |movie, rating| puts "#{movie}: #{rating}" }
	  when "delete"
			puts "What movie would you like to delete?"
	  	title = gets.chomp
	  	if !movies[title.to_sym].nil?
	  	  movies.delete([title.to_sym])
	  		puts "#{title} has been removed from listing!"
	    else
	      puts "Movie not in listing"
	    end
		else
	  	puts "Error! Invalid input."
	end
  puts ""
end