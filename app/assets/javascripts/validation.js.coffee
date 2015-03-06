$(document).ready ->
  $("#signupForm").validate
    rules:
      "user[email]":
        required: true
        email: true
      "user[username]":
        required: true
        minlength: 2
        maxlength: 32
      "user[password]":
        required: true
        minlength: 8
        maxlength: 255
      "user[password_confirmation]":
        required: true
        minlength: 8
        maxlength: 255
        equalTo: "#user_password"
    messages:
      "user[password_confirmation]":
        equalTo: I18n.t('validations.messages.confirm_password')

  $("#signinForm").validate
    rules:
      "user[email]":
        required: true
        email: true
      "user[password]":
        required: true
        minlength: 8
        maxlength: 255

  $("#newPasswordForm").validate
    rules:
      "user[email]":
        required: true
        email: true

  $("#changePasswordForm").validate
    rules:
      "user[password]":
        required: true
        minlength: 8
        maxlength: 255
      "user[password_confirmation]":
        required: true
        minlength: 8
        maxlength: 255
        equalTo: "#user_password"
    messages:
      "user[password_confirmation]":
        equalTo: I18n.t('validations.messages.confirm_change_password')

  $("#newGoalForm").validate
    rules:
      "goal[count]":
        required: true
        number: true
        min: 0
        max: 100
      "goal[period]":
        required: true

  return

