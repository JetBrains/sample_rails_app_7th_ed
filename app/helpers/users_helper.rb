module UsersHelper

  # Returns the avatar for the given user.
  def avatar_for(user, options = { size: 80 })
    if !ActionController::Base.helpers.resolve_asset_path("#{user.name.downcase}.png")
      filename = "anyone.png"
    else
      filename = "#{user.name.downcase}.png"
    end

    image_tag(filename, alt: user.name, class: "avatar", size: options[:size])
  end
end
