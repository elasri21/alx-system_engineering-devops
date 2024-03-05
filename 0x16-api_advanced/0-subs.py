#!/usr/bin/python3
"""a function that queries the Reddit API and returns
the number of subscribers"""


def number_of_subscribers(subreddit):
    """queries the Reddit API and returns the number of subscribers
    Args:
        subreddit: subreddit argument"""
    import requests
    user = {'User-Agent': 'My-User-Agent'}
    url = requests.get('https://www.reddit.com/r/{}/about.json'
                       .format(subreddit), headers=user).json()
    try:
        return url.get('data').get('subscribers')
    except Exception:
        return 0
