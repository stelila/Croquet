module ApplicationHelper
# Return a title on a per-page basis.
def title
  base_title = "Cheam Croquet & Bowls Club"
 
if @title.nil?
base_title
 elsif @title == Time.now.year
  "#{base_title} | Programmes #{@title}" 
  else
"#{base_title} | #{@title}"
 
end
end
end
