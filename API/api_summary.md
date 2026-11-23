# API Summary

## What is a REST API?
A REST API is a way for two programs to talk to each other over the internet using HTTP requests like GET and POST. Every resource has its own URL (called an endpoint), and the server sends back data, usually in JSON format. In this lab, I used curl to fetch my GitHub profile and sample posts from JSONPlaceholder.

## HTTP Status Codes Observed
- **200 OK**: The request was successful and the server sent the data back. I got 200 when I fetched my own GitHub profile.
- **404 Not Found**: The resource does not exist on the server. I got 404 when I tried to fetch a GitHub username that does not exist.

## jq Filter Used
Command:
`cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'`

| Part | What it does |
|------|--------------|
| `cat API/github_profile.json` | Reads the saved JSON file |
| `\|` (pipe) | Sends that output to jq |
| `{ ... }` | Creates a new JSON object with only the fields I choose |
| `name:.name` | Takes the `name` field from the profile |
| `repos:.public_repos` | Takes the number of public repositories |
| `followers:.followers` | Takes the number of followers |
| `joined:.created_at` | Takes the date my account was created |

I also used `jq length` on `sample_posts.json`. It returned **100**, which means the API sent 100 posts.
