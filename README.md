
# TV Show Search

This project was completed in partial fulfillment of the certification for the Bloc Software Development Track Apprenticeship. View the application live here: https://tv-show-search3.herokuapp.com/

TV Show Search is a full-stack application which utilizes the open-source [Movie Database API](https://developers.themoviedb.org/3/getting-started/introduction). This application uses television data from this API. When first opening the application, users are introduced to a list of popular tv shows, and can see their poster, name, and ranking. The user can search for other television shows in the search bar or can click on one of the already popular showings to learn more. Upon searching for a television show, the user will learn the "overview" of the show. If the user wants to learn more, clicking the name of the show will tell the user more information including: first air date, last air date, genre, number of seasons, and number of episodes.

### Technology

The below technologies were used for efficiency and speed in order to ensure the project was completed in a one-week time-frame. The HTTParty gem was used to facilitate API integration and the pg gem was necessary to help deployment of the application to Heroku. Although the gem sqlite3 is included in the current Ruby on Rails package, it had to be removed and replaced with the pg gem for proper deployment to Heroku.

Ruby 2.4.0  
Rails 5.1.7  
Bootstrap 4.3.1  
gem [HTTParty](https://github.com/jnunemaker/httparty)  
gem pg

### Possible Future Additions
- Include Actor biographies
- Include reviews
- Expand the App to not only include TV shows but all Movies
- Handle an entry that does not match any listings or is misspelled
