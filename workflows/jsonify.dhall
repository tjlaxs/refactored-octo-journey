let GithubActions =
    https://regadas.dev/github-actions-dhall/package.dhall
    sha256:689f05f7e4f9e6355b8ce935ca0568b1a1fdbbd746e0bc4e2e5d8f238cfa4358

in GithubActions.Workflow::{
, name = "Jsonify"
, on = GithubActions.On::{
  , push = Some GithubActions.Push::{
    , paths = Some [ "src/**" ]
    }
  }
, jobs = toMap
  { hw = GithubActions.Job::{
    , runs-on = GithubActions.types.RunsOn.ubuntu-latest
    , steps = [ GithubActions.steps.run
      { run = "echo 'Hello, World! Plop'" }
    ]
    }
  }
}
