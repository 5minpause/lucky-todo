module Shared::Layout
  macro included
    include Lucky::HTMLPage
    include Shared::FieldErrors
    include Shared::FlashMessages
    include Shared::Field
  end

  abstract def content

  def shared_layout_head
    head do
      utf8_charset
      title "My App - #{page_title}"
      css_link "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      css_link asset("css/app.css")
      js_link asset("js/app.js")
      csrf_meta_tags
      responsive_meta_tag
    end
  end

  def shared_layout_footer
    js_link("https://code.jquery.com/jquery-3.3.1.slim.min.js")
    js_link("https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js")
    js_link("https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js")
  end

  abstract def page_title

  # This is the default page title. If you remove this method the compiler will
  # help you remember to include a `page_title` method for every page because
  # we used `abstract def page_title` above. Alternatively, you can leave this
  # here and override the `page_title` class only on the pages you care about.
  def page_title
    "Welcome"
  end
end
