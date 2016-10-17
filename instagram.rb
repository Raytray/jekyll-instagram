module Jekyll
  class InstagramTag < Liquid::Tag

    def initialize(tag_name, hash, tokens)
      super
      @hash = hash.strip!
    end

    def render(context)
      "#{media_for(@hash)}"
    end

    def media_for(hash)
      url = "//instagram.com/p/#{hash}/media/?size=l"
      "<img src='#{url}' style='width:100%;' />"
    end

  end

end

Liquid::Template.register_tag('instagram', Jekyll::InstagramTag)
