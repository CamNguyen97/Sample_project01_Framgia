module ApplicationHelper
  def full_title page_title = ""
    base_title = t "layout.admin.title_admin"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def index_record index_stt
    index_stt = index_stt.zero? ? index_stt = 1 : index_stt += 1
  end
end
