#!/usr/bin/python3
"""Contains recurse function"""
import requests


def recurse(subreddit, hot_list=[], after="", count=0):
    """queries the Reddit API and returns a list containing the titles
    of all hot articles for a given subreddit."""
    if after is None:
        return []
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    url += f"?limit=100&after={after}"
    headers = {'user-agent': 'request'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return None
    r_json = response.json()
    hot_posts_json = r_json.get("data").get("children")
    for post in hot_posts_json:
        hot_list.append(post.get("data").get("title"))
    return hot_list + recurse(subreddit, [], r_json.get("data").get("after"))
