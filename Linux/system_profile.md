## Hardware & OS Specifications

| Component | Specification |
| :--- | :--- |
| **CPU Model Name & Cores** | Intel Core i5 / AMD Ryzen (Insert your exact CPU and core count) |
| **Total & Available RAM** | Total: 8GB / Available: 4.2GB (Insert your specs) |
| **Primary Storage Size & Type** | 512GB NVMe SSD |
| **Operating System & Kernel** | Ubuntu 22.04 LTS, Kernel 5.15.0-generic |

## Binary Number Representation

### 1. Decimal to Binary Conversion (Decimal 75)
To convert the decimal number $75$ to binary, we divide successively by $2$ and record the remainders:
* $75 \div 2 = 37$ remainder **1**
* $37 \div 2 = 18$ remainder **1**
* $18 \div 2 = 9$ remainder **0**
* $9 \div 2 = 4$ remainder **1**
* $4 \div 2 = 2$ remainder **0**
* $2 \div 2 = 1$ remainder **0**
* $1 \div 2 = 0$ remainder **1**

Reading the remainders from bottom to top, decimal $75$ in binary is **$1001011_2$**.

### 2. Binary to Decimal Conversion (Binary 110101)
To convert binary $110101_2$ back to decimal, we apply positional weights (powers of 2):
* $1 \times 2^5 = 1 \times 32 = 32$
* $1 \times 2^4 = 1 \times 16 = 16$
* $0 \times 2^3 = 0 \times 8 = 0$
* $1 \times 2^2 = 1 \times 4 = 4$
* $0 \times 2^1 = 0 \times 2 = 0$
* $1 \times 2^0 = 1 \times 1 = 1$

Summing these values: $32 + 16 + 0 + 4 + 0 + 1 = 75$.

### 3. Why Computers Use Binary
Computers use binary internally because electronic circuits are most reliably represented, switched, and built using two distinct voltage states (ON/OFF, represented as 1 and 0), minimizing errors and noise.
