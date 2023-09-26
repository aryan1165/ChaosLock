# ChaosLock

## Overview

ChaosLock is an encryption model in MATLAB. We developed it as an application of Logistic map Equation and analysing its chaotic properties as an project using Linear Algebra in MATLAB.

### Ciphers Used

In this model, we have used three block ciphers 

- Substitution cipher
- Vignere cipher
- Shift cipher

These ciphers get applied to the text in a random order and produce final result.

### PRNG Used

We have developed our own PRNG based on chaotic dynamics of Logistic Map Equation. We took the inspiration for the same from [this amazing repo](https://github.com/Saransh-cpp/ChaoticEncryption.jl).
Our PRNG hasn't been tested yet, we are planning to test it soon with NIST test suite sp800-22. Untill then we don't recommend its use outside of educational and research purposes.

For more information checkout report and presentation [here](https://github.com/aryan1165/ChaosLock/tree/main/Report).

## Usage

1. Clone this repository to your local machine using git clone <https://github.com/aryan1165/ChaosLock.git> .

2. Setup the ChaosLock directory on MATLAB.

3. Edit the text.txt file with the text you want to encrypt it.

4. In the startencrypting.m file, give x_n any value between 0 and 1. Also set seed to any integer greater than 0. Run the file.

5. Encrypted text will appear in ENCRYPTED.txt.

6. To decrypt the text, Run startdecrypting.m file. Check DECRYPTED.txt to get original text.

## Contributions

Contributions to this project are welcome. Feel free to open a pull request or an issue if you have any suggestions or bug reports.

## Members 

- [Aryan Sharma](https://github.com/aryan1165)
- [Saswat Susmoy Sahoo](https://github.com/Saswatsusmoy)
- [Tushitaa Narayan Ojhaa](https://github.com/Tushitaa18)
