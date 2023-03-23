let GithubActions = https://raw.githubusercontent.com/regadas/github-actions-dhall/master/package.dhall

in GithubActions.Workflow::{
, name = "HelloWorld"
, on = GithubActions.On::{
  , workflow_dispatch = Some GithubActions.WorkflowDispatch::{=}
  }
, jobs = toMap
  { hw = GithubActions.Jobs::{
    , name = "Hello, W"
    , runs-on = GithubActions.types.RunsOn.ubuntu-latest
    , steps = [ GithubActions.steps.run
      { run = "echo 'Hello, World!'" }
    ]
    }
  }
}
