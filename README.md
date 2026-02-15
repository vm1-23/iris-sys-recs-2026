# iris-sys-recs-2026

Submission for the **IRIS Systems Team Recruitment 2026**.

# My step-by-step approach

- Tried to run it locally, faced a lot issues setting up ruby, gem and bundler.
- Figured it was easier to run them as containers.
- ISSUE1 - Ran into an Error of ActiveSupport version.
- Removed two lines of code from the Gemfile, forcing it to stay on Rails 7.x
- ISSUE2- Then ran into the error of db not being conncected.
- Setup a container for mysql on a docker network named iris_sys.
- Ran both the on this network
- ISSUE3 - Database was empty, then used db:migrate to migrate data.
- worked.

