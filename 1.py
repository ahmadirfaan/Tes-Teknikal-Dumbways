def hitungarray(list,size) :
    if(len(list) == 5) : #mengecek length dari list apakah berjumlah 5
        i = 0
        arraybaru = []
        while(i<5): #index harus maksimal 4
            total = sum(list)-list[i] #membuat perhitungan jumlah total array/list dengan dikurangi index yang dicek
            i = i +1 #membuat perulangan untuk index yang lain
            arraybaru.append(total) #membuat list/arraybaru pada variabel 
        print(arraybaru) #cetak semua jumlah yang dihasilkan
        print("Hasil nilai terbesar adalah",max(arraybaru)) #cetak hasil max pada array baru
        print("Hasil nilai terkecil adalah",min(arraybaru)) #cetak hasil min pada array baru
    else:
        print("Array harus berjumlah 5")

input = [1,5,6,9,60]
hitungarray(input,len(input))