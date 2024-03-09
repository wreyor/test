
import sys

def echo_arguments(args):
    for arg in args:
        print(arg)

if __name__ == "__main__":
    echo_arguments(sys.argv[1:])
