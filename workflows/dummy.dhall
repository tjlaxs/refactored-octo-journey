let GithubActions = https://regadas.dev/github-actions-dhall/package.dhall

in GithubActions.Workflow::{
, name = "HelloWorld"
, on = GithubActions.On::{
  , push = Some GithubActions.Push::{=}
  }
, jobs = toMap
  { hw = GithubActions.Jobs::{
    , runs-on = GithubActions.types.RunsOn.ubuntu-latest
    , steps = [ GithubActions.steps.run
      { run = "echo 'Hello, World!'" }
    ]
    }
  }
}
