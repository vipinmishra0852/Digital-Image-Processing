function binaryStr = decimalToBinary(decimalNum)
    binaryDigits = [];
    if decimalNum == 0
        binaryStr = '0';
        return;
    end
    while decimalNum > 0
        remainder = mod(decimalNum, 2);
        binaryDigits = [remainder, binaryDigits];
        decimalNum = floor(decimalNum / 2);
    end
    binaryStr = num2str(binaryDigits);
    binaryStr(binaryStr == ' ') = '';
end

decimalNum = 10;
binaryStr = decimalToBinary(decimalNum);
disp(['Binary representation of ', num2str(decimalNum), ' is: ', binaryStr]);
