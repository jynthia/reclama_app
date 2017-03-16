module ApplicationHelper
	# adds title
  def fill_title(page_title = '')
    base_title = "Reclama App"
    if page_title.empty?
      base_title
    else
      page_title + " - " + base_title
    end
  end
end
