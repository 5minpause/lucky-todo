abstract class GuestLayout
  # Edit shared layout code in src/components/shared/layout.cr
  include Shared::Layout

  def render
    html_doctype

    html lang: "en" do
      shared_layout_head

      body do
        div class: "container" do
          render_flash
          content
        end
        shared_layout_footer
      end
    end
  end
end
