# Pharmr Docs

# Build
To build the docker container that runs the application run `make build`

# Running Container
To run the docker container from your laptop run `make run`

# Serve
To serve the website run `make serve` from INSIDE of the docker container (i.e. after you ran `make run`)

# Git
VERY IMPORTANT!
Before running `git add` make sure you run `git pull origin master` EVERY TIME so you can get any changes that are out in the current version of the master branch down to your local machine. If there are any conflicts you can easily solve them locally using VSCodes built in merge tool
Once done making your changes add them to a commit by running `git add _app/` 
To create a new commit with those changes run `git commit -m "<my commit message>"`
To push to master run `git push origin master`