# cdeploy

## Usage

This repository is used on server-side for deployment of the latest code by: 
1. On [BitBucket](https://bitbucket.org) commit pipelines (e.g. batch deployment on commit to master branch)
2. Coming soon...

The Shell script is pulled on server-side by [curl] with arguments passed through bash, e.i.:
```bash
curl -sL https://raw.githubusercontent.com/LuckStock/cdeploy/master/bitbucket-deploy.sh | bash -s \
 -- run -r $BITBUCKET_REPO_SLUG -o $BITBUCKET_REPO_OWNER -c $BITBUCKET_COMMIT
 ```

### Pipeline Examples

[BitBucket](https://bitbucket.org) Pipeline configuration example could be found in `./pipeline-examples` folder

### Changes

To make changes to the code, take the appropriate source from `./src` folder,
make changes and then run it through the [Generator](ttps://argbash.io/generate)