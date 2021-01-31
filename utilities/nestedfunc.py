import operator
import array
from collections import defaultdict

users = {"people": {"john": {"age": "23"}}}


def getfromdict(users, maplist):
    for i in maplist:
        users = users[i]
        return users


if __name__ == '__main__':
    print(users['people'])
