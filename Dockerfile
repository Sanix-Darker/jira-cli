FROM ghcr.io/ankitpokhrel/jira-cli:latest

RUN apk update && apk add fzf curl

# after generating the jira token on the ui interface
# export JIRA_API_TOKEN=""
RUN alias jira_issue_list="jira issue list --label Back --columns type,key,summary,status,assignee,priority,resolution"
RUN alias jira_issue_view="jira issue view"
RUN alias jira_issue_move="jira issue move"


ENTRYPOINT ["/bin/sh"]
