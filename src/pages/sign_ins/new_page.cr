class SignIns::NewPage < GuestLayout
  needs form : SignInForm

  def content
    h1 "Sign In"
    render_sign_in_form(@form)
  end

  private def render_sign_in_form(f)
    form_for SignIns::Create do
      sign_in_fields(f)
      submit "Sign In", flow_id: "sign-in-button", class: "btn btn-primary"
    end
    link "Reset password", to: PasswordResetRequests::New
    text " | "
    link "Sign up", to: SignUps::New
  end

  private def sign_in_fields(f)
    div class: "form-group" do
      field(f.email) { |i| email_input i, autofocus: "true", class: "form-control" }
      field(f.password) { |i| password_input i, class: "form-control" }
    end
  end
end
