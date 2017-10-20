import os
import tarfile


if __name__ == '__main__':
    with tarfile.open('dev-heaven.tar.gz', "w:gz") as tar:
        for f in os.listdir('.'):
            tar.add(f)
