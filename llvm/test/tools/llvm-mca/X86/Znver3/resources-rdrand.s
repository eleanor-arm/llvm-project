# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver3 -instruction-tables < %s | FileCheck %s

rdrand   %ax
rdrand   %eax
rdrand   %rax

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  100    100   25.00                 U     rdrandw	%ax
# CHECK-NEXT:  100    100   25.00                 U     rdrandl	%eax
# CHECK-NEXT:  100    100   25.00                 U     rdrandq	%rax

# CHECK:      Resources:
# CHECK-NEXT: [0]   - Zn3AGU0
# CHECK-NEXT: [1]   - Zn3AGU1
# CHECK-NEXT: [2]   - Zn3AGU2
# CHECK-NEXT: [3]   - Zn3ALU0
# CHECK-NEXT: [4]   - Zn3ALU1
# CHECK-NEXT: [5]   - Zn3ALU2
# CHECK-NEXT: [6]   - Zn3ALU3
# CHECK-NEXT: [7]   - Zn3BRU1
# CHECK-NEXT: [8]   - Zn3FP0
# CHECK-NEXT: [9]   - Zn3FP1
# CHECK-NEXT: [10]  - Zn3FP2
# CHECK-NEXT: [11]  - Zn3FP3
# CHECK-NEXT: [12.0] - Zn3FP45
# CHECK-NEXT: [12.1] - Zn3FP45
# CHECK-NEXT: [13]  - Zn3FPSt
# CHECK-NEXT: [14.0] - Zn3LSU
# CHECK-NEXT: [14.1] - Zn3LSU
# CHECK-NEXT: [14.2] - Zn3LSU
# CHECK-NEXT: [15.0] - Zn3Load
# CHECK-NEXT: [15.1] - Zn3Load
# CHECK-NEXT: [15.2] - Zn3Load
# CHECK-NEXT: [16.0] - Zn3Store
# CHECK-NEXT: [16.1] - Zn3Store

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1]
# CHECK-NEXT:  -      -      -     75.00  75.00  75.00  75.00   -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1] Instructions:
# CHECK-NEXT:  -      -      -     25.00  25.00  25.00  25.00   -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     rdrandw	%ax
# CHECK-NEXT:  -      -      -     25.00  25.00  25.00  25.00   -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     rdrandl	%eax
# CHECK-NEXT:  -      -      -     25.00  25.00  25.00  25.00   -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     rdrandq	%rax
