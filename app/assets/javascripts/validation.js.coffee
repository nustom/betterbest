$(document).ready ->
  $("#signupForm").validate
    rules:
      "user[email]":
        required: true
        email: true
      "user[password]":
        required: true
        minlength: 8
        maxlength: 255
      "user[password_confirmation]":
        required: true
        minlength: 8
        maxlength: 255
        equalTo: "#pass-word-sign-up"
    messages:
      "user[password_confirmation]":
        equalTo: "I18n.t('home.messages.sign_up.match_password')"

  $("#signinForm").validate
    rules:
      "user[email]":
        required: true
        email: true
      "user[password]":
        required: true
        minlength: 8
        maxlength: 255

  return

