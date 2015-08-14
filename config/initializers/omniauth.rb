Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, '75vi524kdy3y7o', 'egJfQuhDfKlTZETM',
  scope: 'r_basicprofile r_emailaddress'

  provider :facebook, '927994077239272', '8132dcd19a4fac681cea70006c6e2f6c',
  scope: 'email', info_fields: 'email,name'

  provider :twitter, "API_KEY", "API_SECRET"

end