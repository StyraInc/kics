# KICS Command

KICS has the following commands available:

```txt
Keeping Infrastructure as Code Secure

Usage:
  kics [command]

Available Commands:
  generate-id    Generates uuid for query
  help           Help about any command
  list-platforms List supported platforms
  scan           Executes a scan analysis
  version        Displays the current version

Flags:
      --ci                 display only log messages to CLI output
  -h, --help               help for kics
  -l, --log-file           writes log messages to log file
      --log-level string   determines log level (TRACE,DEBUG,INFO,WARN,ERROR,FATAL) (default "INFO")
      --log-path string    path to log files, (defaults to ${PWD}/info.log)
      --no-color           disable CLI color output
  -s, --silent             silence stdout messages (mutually exclusive with verbose)
  -v, --verbose            write logs to stdout too (mutually exclusive with silent)

Use "kics [command] --help" for more information about a command.
```

## Scan Command Options

```txt
Executes a scan analysis

Usage:
  kics scan [flags]

Flags:
      --config string                path to configuration file
      --exclude-categories strings   exclude categories by providing its name
                                     can be provided multiple times or as a comma separated string
                                     example: 'Access control,Best practices'
  -e, --exclude-paths strings        exclude paths from scan
                                     supports glob and can be provided multiple times or as a quoted comma separated string
                                     example: './shouldNotScan/*,somefile.txt'
      --exclude-queries strings      exclude queries by providing the query ID
                                     can be provided multiple times or as a comma separated string
                                     example: 'e69890e6-fce5-461d-98ad-cb98318dfc96,4728cd65-a20c-49da-8b31-9c08b423e4db'
  -x, --exclude-results strings      exclude results by providing the similarity ID of a result
                                     can be provided multiple times or as a comma separated string
                                     example: 'fec62a97d569662093dbb9739360942f...,31263s5696620s93dbb973d9360942fc2a...'
  -h, --help                         help for scan
      --minimal-ui                   simplified version of CLI output
      --no-progress                  hides the progress bar
  -o, --output-path string           directory path to store reports
  -p, --path string                  path or directory path to scan
  -d, --payload-path string          path to store internal representation JSON file
      --preview-lines int            number of lines to be display in CLI results (min: 1, max: 30) (default 3)
  -q, --queries-path string          path to directory with queries (default "./assets/queries")
      --report-formats strings       formats in which the results will be exported (json, sarif, html)
  -t, --type strings                 case insensitive list of platform types to scan
                                     (Ansible, CloudFormation, Dockerfile, Kubernetes, Terraform)

Global Flags:
      --ci                 display only log messages to CLI output
  -l, --log-file           writes log messages to log file
      --log-level string   determines log level (TRACE,DEBUG,INFO,WARN,ERROR,FATAL) (default "INFO")
      --log-path string    path to log files, (defaults to ${PWD}/info.log)
      --no-color           disable CLI color output
  -s, --silent             silence stdout messages (mutually exclusive with verbose)
  -v, --verbose            write logs to stdout too (mutually exclusive with silent)
```

The other commands have no further options.

---