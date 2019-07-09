# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts
"Write your SQL query Here"	  
"SELECT projects.title, SUM(pledges.amount)
  FROM projects
  INNER JOIN pledges
  ON projects.id = pledges.project_id
  GROUP BY projects.id
  ORDER BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"Write your SQL query Here"	  
"SELECT users.name, users.age, SUM(pledges.amount)
  FROM users
  INNER JOIN pledges
  ON users.id = pledges.user_id
  GROUP BY users.name
  ORDER BY users.name;"
end


def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"Write your SQL query Here"	  
"SELECT projects.title, SUM(pledges.amount) - projects.funding_goal
    FROM projects
    JOIN pledges ON projects.id = pledges.project_id
    GROUP BY projects.title HAVING SUM(pledges.amount) >= projects.funding_goal;"
end

def selects_oldest_bear_and_returns_name_and_age
  "Write your SQL query here"
  "SELECT name, age FROM bears ORDER BY age DESC LIMIT 1;"
end

def select_youngest_bear_and_returns_name_and_age
  "Write your SQL query here"
  "SELECT name, age FROM bears ORDER BY age ASC LIMIT 1;"
end

def selects_most_prominent_color_and_returns_with_count
  "Write your SQL query here"
  "SELECT color, COUNT(color) FROM bears GROUP BY color ORDER BY COUNT(*) DESC LIMIT 1;"
end

def counts_number_of_bears_with_goofy_temperaments
  "Write your SQL query here"
  "SELECT COUNT(temperament) FROM bears WHERE temperament = 'goofy';"
end

def selects_bear_that_killed_Tim
  "Write your SQL query here"
  "SELECT * FROM bears WHERE name IS NULL;"
end