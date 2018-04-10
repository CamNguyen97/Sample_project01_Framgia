module ApplicationHelper
  def full_title page_title = ""
    base_title = t "layout.admin.title_admin"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def index_record i

    return i == 0 ? 1 : i += 1
  end
end
