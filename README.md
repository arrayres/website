# ArrayRes Website

## Installation

 1. Install [node.js](https://nodejs.org/) and [git](https://git-scm.com/downloads)

 2. Clone this repository

        $ git clone https://github.com/arrayres/website.git
        $ cd website

 3. Install dependencies (may take some time)

        $ npm install

 4. Run the website in the system default browser on localhost:3000

        $ npm run dev

## Contributing

When possible we follow the [Gitflow Workflow](http://nvie.com/posts/a-successful-git-branching-model/) with `master` branch reserved for releases and `develop` branch for development.

Never commit to `master` branch. Instead, create pull requests to `develop` branch.

 1. Clone the project and checkout the `develop` branch.

        $ git clone https://github.com/arrayres/website.git
        $ cd website
        $ git checkout develop

 2. Create a new topic branch for your idea, and commit to it.

        $ git checkout -b feat-awesome-idea
        $ touch server/foo.bar && git add server/foo.bar
        $ git commit -m 'feat(server): added foo'

 3. Push the branch and add upstream (tracking) reference.

        $ git push -u origin feat-awesome-idea

 4. Create a [pull request](https://help.github.com/articles/using-pull-requests/) to the `develop` branch.

## License

![Creative Commons License](https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png) This work is licensed under a [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License](http://creativecommons.org/licenses/by-nc-nd/4.0/)
