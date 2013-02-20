#Libraryan Database Design

This is a living document, and will most definitely change until it is 
complete. Please note that the tables are listed alphabetically. A
drawing will follow.

##MISSING/FUTURE TABLES:
	1. User
	2. BookCopy (used for checkout)
	
##INITIAL TABLES

###AUTHOR
```ruby
t.string  :first_name
t.string  :last_name
t.string  :nationality
t.date    :birthdate
t.date    :deathdate
t.string  :birthplace
```

###BOOK
```ruby
t.string  :title
t.string  :isbn
t.string  :isbn10
t.string  :isbn13
t.integer :cover_type_id
t.integer :publisher_id
t.date    :pubyear
t.integer :ar_interest_level_id
t.decimal :ar_reading_level
t.decimal :ar_reading_points
t.string  :ar_test_number
t.decimal :purchase_price
t.integer :page_count
t.string  :library_number
t.integer :location_id
t.integer :shelf_id
t.integer :donor_id
t.boolean :active
t.date	  :discard_date
```

###BOOKAUTHOR
```ruby
t.integer :book_id
t.integer :author_id
```

###BOOKCOMMENT
```ruby
t.integer :book_id
t.integer :comment_id
```

###BOOKTOPIC
```ruby
t.integer :book_id
t.integer :topic_id
```

###COMMENT
```ruby
t.string  :comment_by      #or, user_id
t.text    :description
```

###COVERTYPE
```ruby
t.string  :description
			1=Soft cover
			2=Hard cover
			3=Video tape
			4=DVD
			5=CD
			6=Cassette tape
```
	
###DONOR
```ruby
t.string  :name
t.string  :phone
```

###INTERESTLEVEL
```ruby
t.string  :short_code
t.string  :description
```

###KEYWORD
```ruby
t.string  :keyword_name
t.integer :keyword_type
			1=Basic Keyword
			2=Holiday Keyword	
			3=Animal Keyword	
			4=Sport Keyword
```
			
###LOCATION
```ruby
t.string  :description
			1=Library
			2=Kindergarten
			3=Grades 1&2
			4=Grades 3&4
			5=Grades 5&6
			6=Grades 7&8
```

###PUBLISHER
```ruby
t.string  :name
t.string  :city
```

###QUOTATION
```ruby
t.integer :book_id
t.integer :page_number
t.text    :quotation
```

###SHELF
```ruby
t.integer :location_id
t.string  :description
```

###TOPIC
```ruby
t.string  :description
```

