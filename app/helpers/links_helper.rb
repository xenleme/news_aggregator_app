module LinksHelper
  def truncated_link_title(link)
    link_to truncate(link.title, length: 70), link
  end

  def truncated_url_title(link)
    link_to truncate(link.url, length: 30), link.url, target: :blank
  end
end
