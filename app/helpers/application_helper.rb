module ApplicationHelper

  def markdown text
    render_options = {
      filter_html: false,
      hard_wrap: true,
    }
    renderer = Redcarpet::Render::HTML.new(render_options)

    extensions = {
      autolink: true,
      no_intra_emphasis: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end

  def icon_url icon
    '/images/icons/' + icon + '.icon'
  end

  def image_url image
    '/images/' + image
  end

  def link_surface link
    '<a href="' + link + '" target="_blank"><span style="position:absolute;top:0;left:0;height:100%;width:100%"></span></a>'
  end

  def resume_link
    'https://docs.google.com/document/d/1N9OU1dNMYR6ZQNP3gBrNFFzdyM6GpJnl-0tsR2N7KyI/edit?usp=sharing'
  end

end
