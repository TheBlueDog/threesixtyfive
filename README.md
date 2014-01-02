# threesixtyfive

Content coming soon.

***

### Setting up local development environment

Step 1. Create local directory for the project. 
```
/threesixtyfive 
```

Step 2. Clone the repository.
```
$ git clone git@github.com:TheBlueDog/threesixtyfive.git
```

Step 3. Download and install ImageMagick (http://cactuslab.com/imagemagick/)

Step 4. In terminal (close and reopen if you already had it open), check to see that ImageMagick has installed.
````
$ identify
````

Step 5. Intall gems needed for this project
````
$ bundle install
````
If an error occurs when trying to install the pg gem, do the steps below and then rerun the install.
````
$ brew update
$ brew install postgresql
````

Step 6. Run database migration
````
$ rake db:migrate
````

Step 7. Start the server and go to localhost:3000 in your browser of choice
````
$ rails server
````

