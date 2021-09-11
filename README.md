# 「捐，都捐！」（金流串接練習用，請不要真的捐）

![start page](./references/images/start.png)

- [Ruby 2.7.4](https://www.ruby-lang.org/)
- [Ruby on Rails 6.1.4.1](https://guides.rubyonrails.org/)
- [Stimulus.js](https://stimulus.hotwired.dev/)
- [Tailwind CSS](https://tailwindcss.com/) with [JIT mode](https://tailwindcss.com/docs/just-in-time-mode), which is AWESOME!
- [FontAwesome](https://fontawesome.com/) with [SVG JavaScript Core](https://fontawesome.com/v5.15/how-to-use/on-the-web/advanced/svg-javascript-core)

## Steps

0. You might need to install Ruby, Node and [Yarn](https://yarnpkg.com/) first.
1. Clone this project.
2. Run `bundle install` to install ruby gems needed.
3. Run `yarn install` to install frontend packages.
4. Run `rails db:migrate` to build database schema.
5. Copy or Rename `config/application.yml.example` to `config/application.yml` and replace with your own credentials.
6. Run `foreman start` (or `foreman s` for short) to launch this app.
7. Go check http://localhost:3000, and HAPPY HACKING!

Please check [為你自己學 Ruby on Rails](https://railsbook.tw/) for more information about Ruby and Ruby on Rails.

by 高見龍 eddie@5xcampus.com
