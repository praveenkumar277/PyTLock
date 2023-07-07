#!/data/data/com.termux/files/usr/bin/python3
from time import sleep
from os import listdir, system
from hashlib import sha256
import psutil, getpass

def getSessions() -> int:
    terminals = set()
    for proc in psutil.process_iter(attrs=['pid', 'terminal']):
        try:
            proc_info = proc.as_dict(attrs=['pid', 'terminal'])
            terminal = proc_info['terminal']
        except (psutil.NoSuchProcess, psutil.AccessDenied, KeyError):
            continue
        if terminal is not None:
            terminals.add(terminal)
    return len(terminals)

def getPasswd(path) -> None:
    passwd = ['baaf510842a4353a4f1f0cea04e736f3b40048349491e5057cc5ca8b3e3ed6b2']
    Warn   = False
    prompt = "Password:"
    try:
        f = open('{}/passwd'.format(path))
        passd = f.read()[0:-1]
        f.close()
        passwd.append(passd)
    except FileNotFoundError:
        Warn = True
    while True:
        if Warn == True:
            print("Missing Stored Password File\nGet The Master Password in our github page")
        password = getpass.getpass(prompt=prompt)
        password = sha256(password.encode('utf-8')).hexdigest()
        if password in passwd:
            system('rm {}/hang 2> /dev/null'.format(path))
            system('clear')
            break
        else:
            print("Invalid Password. Wait 2 Seconds...")
            sleep(2)
        system('clear')

def main(path) -> None:
    if getSessions() == 1 or 'hang' in listdir('{}/'.format(path)):
        system('touch {}/hang'.format(path))
        try:
            getPasswd(path)
        except KeyboardInterrupt:
            system('killall -9 bash')
        except EOFError:
            system('clear')
            main(path)
    else:
        pass

if __name__ == '__main__':
    main('/data/data/com.termux/files/usr/etc/.login')

