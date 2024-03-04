import sys
try:
    classe = sys.argv[1]
except:
    sys.exit()
print(f"\n{classe}-begin")
try:
    with open(f"{classe}_alt.txt") as f:
        lines_alt = f.readlines()

    with open(f"{classe}.txt") as f:
        lines = f.readlines()    

    for i in lines:    
        if not i in lines_alt:
            print(i[:-1])
except:
    try:    
        with open(f"{classe}.txt") as f:
                lines = f.readlines()    

        for i in lines:    
            print(i[:-1])
    except:
        print(f"No {classe}-jobs")
print(f"{classe}-end \n")        