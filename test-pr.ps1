      if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = resolve-path (split-path (split-path (scoop which scoop))) }
      $autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
      (Get-Content $autopr).replace('${app}: Update to version $version', '${app}: Update to version $version `n ***NO_CI***') | Set-Content $autopr