module VideosHelper
	def url_with_protocol(url)
	    /^http/i.match(url) ? url : "http://#{url}"
	 end
   	
   	def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  	end
end
