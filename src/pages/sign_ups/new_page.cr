class SignUps::NewPage < GuestLayout
  needs form : SignUpForm

  def content
    h1 "Sign Up"
    render_sign_up_form(@form)
  end

  private def render_sign_up_form(f)
    form_for SignUps::Create do
      sign_up_fields(f)
      submit "Sign Up", flow_id: "sign-up-button", class: "btn btn-primary"
    end
    link "Sign in instead", to: SignIns::New
  end

  private def sign_up_fields(f)
    div class: "form-group" do
      field(f.email) { |i| email_input i, autofocus: "true", class: "form-control" }
      field(f.password) { |i| password_input i, class: "form-control" }
      field(f.password_confirmation) { |i| password_input i, class: "form-control" }
    end
  end
end
