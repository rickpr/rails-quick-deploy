# Rails Quick Deploy

> Quick, Hackish Deployment

This currently only works on CentOS and Fedora.

Setup the environment variables in `.env`.

Run the deployment script with a Rails app folder:

``` bash
./deploy.sh your_app_folder/
```

That's it! Your Rails app is now running with nginx.

Note that this will DROP the database if one alredy exists.
