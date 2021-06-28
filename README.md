# Deploy to Firebase Functions With Project Targets!

A GitHub Action to deploy to Firebase Functions that is able to deploy to different projects.  Need to deploy to production on one branch, then to development on another? Specify a 'target' by using the <key, value> set in your `firebaserc` file. For example:

```
{
  "projects": {
    "default": "production project id",
    "development": "development project id"
  }
}
```

Then, specify a value (as inidicated below in the example workflow) or none for default.

### Example workflow

```
name: Firebase
on:
  push:
    branches:
    - <branch-id>
jobs:
  main:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - name: Check out code
      uses: actions/checkout@master
    - name: Deploy to Firebase
      uses: south-bend-code-works/deploy-firebase-functions@2.0.1
      env:
        FIREBASE_TOKEN: ${{ secrets.<FIREBASE_TOKEN_NAME> }}
        TARGET: <firebase-project-alias>
```
