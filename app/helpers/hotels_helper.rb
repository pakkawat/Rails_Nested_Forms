module HotelsHelper
  def expand_collapse_for(room_category_id)
    render html: ExpandCollapse.new(room_category_id).html
  end

  class ExpandCollapse
    def initialize(room_category_id)
      @room_category = RoomCategory.find(room_category_id)
    end

    def html
      if @room_category.name == "Repository"
        repository
      elsif @room_category.name == "Deb"
        deb
      elsif @room_category.name == "Source"
        source
      end
    end

    def repository
      str_temp = ""
      @room_category.chef_att_repositories.each do |repo|
        str_temp += "<div class='form-group'>"
        str_temp += "  <label for='name'>"
        str_temp += "    Repo:"
        str_temp += "  </label>"
        str_temp += "  <div class='input-group'>"
        str_temp += "    <input type='text' name='room_category_#{repo.id}' value='#{repo.name}'>"
        str_temp += "  </div>"
        str_temp += "</div>"
      end
      return str_temp.html_safe
    end

    def deb
      str_temp = ""
      @room_category.chef_att_debs.each do |repo|
        str_temp += "<div class='form-group'>"
        str_temp += "  <label for='name'>"
        str_temp += "    Deb:"
        str_temp += "  </label>"
        str_temp += "  <div class='input-group'>"
        str_temp += "    <input type='text' name='room_category_#{repo.id}' value='#{repo.name}'>"
        str_temp += "  </div>"
        str_temp += "</div>"
      end
      return str_temp.html_safe
    end

    def source
      str_temp = ""
      @room_category.chef_att_sources.each do |repo|
        str_temp += "<div class='form-group'>"
        str_temp += "  <label for='name'>"
        str_temp += "    Source:"
        str_temp += "  </label>"
        str_temp += "  <div class='input-group'>"
        str_temp += "    <input type='text' name='room_category_#{repo.id}' value='#{repo.name}'>"
        str_temp += "  </div>"
        str_temp += "</div>"
      end
      return str_temp.html_safe
    end
  end

end
