# USER - REGISTRATION (JOIN) - TOURNAMENT

User
- has many Registration
- has many Tournament through Registration

Registration
- belongs to User
- belongs to Tournament

Tournament
- has many Registration
- has many User through Registration

User Authentication
without Devise
- User Model + Controller + Routes

User - email, password_digest

Routes
  # get /login, to: sessions new
  # post /login to: sessions create
  # get /signup to: users new
  # post /signup to: users create
  # delete /logout to: sessions destroy
