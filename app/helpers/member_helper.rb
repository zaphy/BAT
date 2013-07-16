module MemberHelper
  def role_icon(role)
    human_role_name = role.to_s.humanize
    role_icon_file = "/roles/icon_#{role.downcase}_64.png"
    if File.exist?(File.join(Rails.root, "public", role_icon_file))
      image_tag(role_icon_file, :title => human_role_name)
    else
      content_tag("span", human_role_name, :class=>"badge")
    end
  end
end
