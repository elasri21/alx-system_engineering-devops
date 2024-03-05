#!/usr/bin/python3
"""a function that queries the Reddit API and returns
the number of subscribers"""


def number_of_subscribers(subreddit):
    """queries the Reddit API and returns the number of subscribers
    Args:
        subreddit: subreddit argument"""
    import requests
    info = requests.get("https://www.reddit.com/r/{}/about.json"
                        .format(subreddit),
                        headers={"User-Agent": "My-User-Agent"},
                        allow_redirects=False)
    if info.status_code >= 300:
        return 0
    return info.json().get("data").get("subscribers")
