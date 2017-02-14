module Jekyll
  module AssetFilter
    def issue_id(input)
      "##{input.split('/').last}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
