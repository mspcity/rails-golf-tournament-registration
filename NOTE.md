USER - REGISTRATION (JOIN) - TOURNAMENT

User
- has many Registration
- has many Tournament through Registration

Registration
- belongs to User
- belongs to Tournament

Tournament
- has many Registration
- has many User through Registration

Using Devise.
- Devise User didn't create User controller. 
- can I create controller with rails g controller user ?

