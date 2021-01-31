import random
import json
import requests

metadata_url = 'http://169.254.169.254/latest/'

def fetch_metadata():
    initial = ["meta-data/"]
    result = get_list(metadata_url, initial)
    return result


def get_list(url, array):
    output = {}
    for entries in array:
        new_url = url + entries
        a = requests.get(new_url)
        text = a.text
        if entries[-1] == '/':
            list_values = a.text.splitlines()
            output[entries[:-1]] = get_list(new_url, list_values)
        elif is_json(text):
          output[entries] = json.loads(text)
        else:
            output[entries] = text
    return output



def fetch_metadata_json():
    metadata = fetch_metadata()
    metadata_json = json.dumps(metadata, indent=6)
    return metadata_json


def is_json(myjson):
    try:
        json.loads(myjson)
    except ValueError:
        return False
    return True


if __name__ == '__main__':
    print(fetch_metadata_json())