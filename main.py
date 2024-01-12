def read_and_print_file(filename):
    try:
        with open(filename, 'r') as file:
            print(file.read())
    except FileNotFoundError:
        print(f"Could not find the file: {filename}")

if __name__ == "__main__":
    read_and_print_file("testfile.txt")

