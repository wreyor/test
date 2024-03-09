import sys
import base64

def echo_arguments(args):
    for arg in args:
        arg_bytes = arg.encode('utf-8')
        base64_arg = base64.b64encode(arg_bytes)
        print(base64_arg.decode('utf-8'))

if __name__ == "__main__":
    echo_arguments(sys.argv[1:])
