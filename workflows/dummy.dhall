let GithubActions = https://github.com/regadas/github-actions-dhall/package.dhall
--      https://regadas.dev/github-actions-dhall/package.dhall
--        sha256:689f05f7e4f9e6355b8ce935ca0568b1a1fdbbd746e0bc4e2e5d8f238cfa4358

GithubActions.Workflow::{
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
