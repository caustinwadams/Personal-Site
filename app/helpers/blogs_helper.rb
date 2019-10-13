module BlogsHelper

  # Makes HTML in a blog post more pretty
  # TODO: Allow for code, underlines, etc... 
  # (and return the string instead of just printing)
  def make_html(post)
    # Replaces text for bold input
    if post =~ /(\*\*(.+)\*\*)/m
      post.gsub!($1, "<strong>#{$2}</strong>")
    end
    puts post
  end

end
