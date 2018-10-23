class PasswordResets::NewPage < GuestLayout
  needs form : PasswordResetForm
  needs user_id : Int32

  def content
    h1 "Reset your password"
    render_password_reset_form(@form)
  end

  private def render_password_reset_form(f)
    form_for PasswordResets::Create.with(@user_id) do
      div class: "form-group" do
        field(f.password) { |i| password_input i, autofocus: "true", class: "form-control" }
        field(f.password_confirmation) { |i| password_input i, class: "form-control" }
      end

      submit "Update Password", flow_id: "update-password-button", class: "btn btn-primary"
    end
  end
end
