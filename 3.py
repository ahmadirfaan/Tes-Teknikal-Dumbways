'''

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

'''
def cetak_gambar(a):
    if(a%2==0):
        print("Harus bilangan Ganjil")
    else :
        row = 0
        while row < a :
            row = row + 1
            lines = ""
            col = 0
            while col < a :
                col = col + 1
                if (col == 0) or (col == a): 
                    lines += "*"
                elif(row%2!=0) and (col%3==0):
                    lines += "="    
                elif(row%2==0) and (col%2==0):
                    lines += "="
                else:
                    lines+= "*"
                
            print(lines)

cetak_gambar(8)