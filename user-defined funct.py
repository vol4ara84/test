
def repeat(s, exclaim):
    result = s + s + s
    if exclaim:
        result = result + '!!!'
        return result
def main():
    print(repeat('wolo', True))
    print(repeat('yah', False))

