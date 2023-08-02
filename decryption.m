function message=decryption(index,message)
    

    switch index
        case 1
            message=ShiftDecryption(message)
            return
        case 2
            message=vignereDecryption(message)
            return
        case 3
            message=subsitutionDecryption(message)
            return
    end

end
