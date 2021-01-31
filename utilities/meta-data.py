import random
import json
import requests

metadata_url = 'http://169.254.169.254/latest/'


def get_tree(url, arr):
    output = {}
    for entry in arr:
        new_url = url + entry
        a = requests.get(new_url)
        text = a.text
        if entry[-1] == "/":
            list_of_values = a.text.splitlines()
            output[entry[:-1]] = get_tree(new_url, list_of_values)
        elif is_json(text):
            output[entry] = json.loads(text)
        else:
            output[entry] = text
    return output


def fetch_metadata():
    initial = ["meta-data/"]
    result = get_tree(metadata_url, initial)
    return result


def fetch_metadata_json():
    metadata = fetch_metadata()
    metadata_json = json.dumps(metadata, indent=6, sort_keys=True)
    return metadata_json


def is_json(myjson):
    try:
        json.loads(myjson)
    except ValueError:
        return False
    return True


if __name__ == '__main__':
    print(fetch_metadata_json())
