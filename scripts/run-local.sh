#!/bin/bash
# Make this file executable with: chmod +x scripts/run-local.sh

# Default workflow file
DEFAULT_WORKFLOW=".github/workflows/act-workflow.yml"

# Function to display usage
usage() {
    echo "Usage: $0 [-w workflow_file] [-e event] [-v]"
    echo "  -w: Workflow file (default: $DEFAULT_WORKFLOW)"
    echo "  -e: Event type (default: push)"
    echo "  -v: Verbose mode"
    exit 1
}

# Parse command line arguments
WORKFLOW=$DEFAULT_WORKFLOW
EVENT="push"
VERBOSE=""

while getopts "w:e:vh" opt; do
    case $opt in
        w) WORKFLOW="$OPTARG";;
        e) EVENT="$OPTARG";;
        v) VERBOSE="-v";;
        h) usage;;
        ?) usage;;
    esac
done

# Run act with the specified parameters
echo "Running workflow: $WORKFLOW"
echo "Event: $EVENT"
echo "Verbose: ${VERBOSE:-no}"

act $EVENT -W $WORKFLOW $VERBOSE 