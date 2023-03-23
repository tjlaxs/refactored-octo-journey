let GithubActions = https://regadas.dev/github-actions-dhall/package.dhall

in GithubActions.Workflow::{
, name = "HelloWorld"
, on = GithubActions.On::{
  , workflow_dispatch = Some GithubActions.WorkflowDispatch::{=}
  }
, jobs = toMap
  { hw = GithubActions.Job::{
    , runs-on = GithubActions.types.RunsOn.ubuntu-latest
    , steps = [ GithubActions.steps.run
      { run = "echo 'Hello, World! Plop.'" }
    ]
    }
  }
}
