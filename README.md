![](https://img.shields.io/badge/Microverse-blueviolet)

# Express yourself

> In this project I tried to re-create the action flow of the social media website Twitter.

You will be able to sign in, sign up at the home page, then you can create opinions, only the users who sign in can see create an opinion and see it, if you opt to sign out, then you won’t be able to see the opinions at all.
You can upload your profile pictures! (Take it easy I have limited free storage)
You can upload your cover picture to your profile page (same as above)
You can follow other users and see their opinions directly on your home page.
You can vote up for opinions you like, to highlight how users care about one thought.

## Built With

- Ruby version 3.0.0
- Ruby on Rails 6.1.3

## Screenshot

![Screenshot Main Page](https://res.cloudinary.com/hostingfreeplease/image/upload/v1619647848/photo_yzeoqs.png)


## Live preview link

- <https://express-yourself-ror.herokuapp.com/>

## Getting Started

To get a local copy up and running follow these simple example steps.

## Setup

1. Open your terminal or command prompt.
2. If you don’t have git installed in your system, skip this step and go to step 3. If you do have git installed in your system, clone this repository to your computer in any directory you want by copying this text into your command prompt/terminal: `https://github.com/carloso0114/express-yourself-rails-capstone.git`.
<br>Now go to "Install" section
3. If you don’t have git installed in your system, you can download the program files. To do this, click on the green button that says “**Code**“, on the upper right side of the project frame.
4. You will see a dropdown menu. Click on “**Download ZIP**“.
5. Go to the directory where you downloaded the **ZIP file** and open it. Extract its contents to any directory you want in your system.

## Install

1. If you are not in your system terminal/command prompt already, please open it and go to the directory where you cloned the remote repository or extracted the project files.
2. While in the root directory, type `bundle install`. This will install all the necessary gems in your system.
3. Then you can type <code>yarn install --check-files</code>.
4. Now type <code>bin/rails db:migrate</code> to migrate the database.

### Usage

1. Run <code>rails server</code>
2. Open your browser on <http://localhost:3000/>
3. Enjoy.

## Rspec tests

1. To run the test just do a <code>rspec</code> in the terminal and it will show you the results.

## Important

- If you get an ActiveRecord::ConnectionNotEstablished when running rails db:migrate, it's because I’m using Postgres as username in my database.yml file because I’m using Windows with Linux subsystem (wsl).

## Author

👤 **Carlos Ospina**

- GitHub: [@carloso0114](https://github.com/carloso0114)
- LinkedIn: [Carlos Ospina](https://www.linkedin.com/in/carlosospina/)

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/carloso0114/express-yourself-rails-capstone/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

Based of the structure from:
[https://www.behance.net/gallery/14286087/Twitter-Redesign-of-UI-details](https://www.behance.net/gallery/14286087/Twitter-Redesign-of-UI-details)

Design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## 📝 License

This project is [MIT](https://github.com/carloso0114/express-yourself-rails-capstone/blob/development/LICENSE) licensed.
