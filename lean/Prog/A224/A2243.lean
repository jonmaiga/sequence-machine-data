import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A224300: Collatz problem with rational negative numbers: number of steps to reach the end of the cycle starting with 1/(2n+1) where n is negative (the initial value is counted).

The programs for A224300, there is no canonical definition to state claims against.
-/

/-! ## A224300.P1025934517234291740

`A224299(n+1)+1`
-/

namespace A224300.P1025934517234291740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224299 (n + 1) + 1

end

end A224300.P1025934517234291740

/-! ## A224300.P2266882824506504734

`A224360(∑[n+1])+1`
-/

namespace A224300.P2266882824506504734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224360 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A224300.P2266882824506504734

/-! ## A224300.P3639234448046576058

`A224367(A386480(n))`
-/

namespace A224300.P3639234448046576058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224367 (A386480 n).toNat

end

end A224300.P3639234448046576058

/-! ## A224300.P10739792727933487357

`A224361(A119663(n+1))`
-/

namespace A224300.P10739792727933487357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224361 (A119663 (n + 1)).toNat

end

end A224300.P10739792727933487357

/-!
# A224301: Sorted areas of primitive integer Heronian triangles.

The programs for A224301, there is no canonical definition to state claims against.
-/

/-! ## A224301.P1849276471626984281

`A226453(A210357(n+1)^(1-∑{digits}[n, #]+n))`
-/

namespace A224301.P1849276471626984281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226453 (SequenceMachineLib.roundAway ((A210357 (n + 1) : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A224301.P1849276471626984281

/-! ## A224301.P5136548608403053693

`A226453(A210357(n+1)%A321492(3*n+4))`
-/

namespace A224301.P5136548608403053693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226453 (Int.tmod (A210357 (n + 1)) (A321492 (3 * n + 4))).toNat

end

end A224301.P5136548608403053693

/-! ## A224301.P15746029611105313780

`A226453(A210357(n+1)%A201649(n+1))`
-/

namespace A224301.P15746029611105313780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226453 (Int.tmod (A210357 (n + 1)) (A201649 (n + 1))).toNat

end

end A224301.P15746029611105313780

/-! ## A224301.P2654137918228372216

`A315598(or(A047263(n+1), A082217(n+1)))`
-/

namespace A224301.P2654137918228372216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315598 (Int.lor (A047263 (n + 1)) (A082217 (n + 1))).toNat

end

end A224301.P2654137918228372216

/-! ## A224301.P778492348507754981

`A315598(or(A082217(n+1), A302242(n+1)))`
-/

namespace A224301.P778492348507754981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315598 (Int.lor (A082217 (n + 1)) (A302242 (n + 1))).toNat

end

end A224301.P778492348507754981

/-!
# A224302: Sorted perimeters of primitive Heronian triangles.

The programs for A224302, there is no canonical definition to state claims against.
-/

/-! ## A224302.P11772917991224227229

`A070083(A070143(n+1))`
-/

namespace A224302.P11772917991224227229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (A070143 (n + 1)).toNat

end

end A224302.P11772917991224227229

/-! ## A224302.P700687354430421046

`A334984(A067434(2*n+1)^A121041(n+1))`
-/

namespace A224302.P700687354430421046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334984 (SequenceMachineLib.roundAway ((A067434 (2 * n + 1) : ℚ) ^ (A121041 (n + 1) : ℤ))).toNat

end

end A224302.P700687354430421046

/-!
# A224304: Number of n X n 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224304, there is no canonical definition to state claims against.
-/

/-! ## A224304.P12607500484960742740

`A224310(∑[4*n]+1)`
-/

namespace A224304.P12607500484960742740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224304.P12607500484960742740

/-! ## A224304.P13141201107344147860

`record[A003982(n)*A224310(n+1)]`
-/

namespace A224304.P13141201107344147860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224304.P13141201107344147860

/-! ## A224304.P11347742092910763729

`record[gcd(A114327(n), A224310(n+1))]`
-/

namespace A224304.P11347742092910763729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224310 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224304.P11347742092910763729

/-! ## A224304.P7253670314576195676

`lcm(A057079(n), A224310(A001844(n)))`
-/

namespace A224304.P7253670314576195676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057079 n) (A224310 (A001844 n).toNat)

end

end A224304.P7253670314576195676

/-! ## A224304.P2202987863696902868

`or(A000007(n), A224310(A001844(n)))`
-/

namespace A224304.P2202987863696902868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224310 (A001844 n).toNat)

end

end A224304.P2202987863696902868

/-!
# A224305: Number of n X 3 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224305, there is no canonical definition to state claims against.
-/

/-! ## A224305.P4933500478809850262

`A224310(∑[n+3]+1)`
-/

namespace A224305.P4933500478809850262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224305.P4933500478809850262

/-! ## A224305.P16495743638602054246

`A000034(2*n)*A224310(A034856(n+2))`
-/

namespace A224305.P16495743638602054246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A224310 (A034856 (n + 2)).toNat

end

end A224305.P16495743638602054246

/-! ## A224305.P13102723078994769823

`A237420(2*n+1)+A224310(A034856(n+2))`
-/

namespace A224305.P13102723078994769823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (2 * n + 1) + A224310 (A034856 (n + 2)).toNat

end

end A224305.P13102723078994769823

/-! ## A224305.P7874792733689189534

`A224310(A034856(n+2))+A010815(A203984(n+1))`
-/

namespace A224305.P7874792733689189534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A034856 (n + 2)).toNat + A010815 (A203984 (n + 1)).toNat

end

end A224305.P7874792733689189534

/-! ## A224305.P9362736808758725275

`A224310(A034856(n+2))+A010815(A204106(n+1))`
-/

namespace A224305.P9362736808758725275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A034856 (n + 2)).toNat + A010815 (A204106 (n + 1)).toNat

end

end A224305.P9362736808758725275

/-!
# A224306: Number of nX4 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224306, there is no canonical definition to state claims against.
-/

/-! ## A224306.P6047091723874822688

`A224310(A141214(n+1))`
-/

namespace A224306.P6047091723874822688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A141214 (n + 1)).toNat

end

end A224306.P6047091723874822688

/-! ## A224306.P14237807592288851744

`A224310(A027379(n+2))`
-/

namespace A224306.P14237807592288851744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A027379 (n + 2)).toNat

end

end A224306.P14237807592288851744

/-! ## A224306.P17874096528548844393

`A224310(A055998(n+2))`
-/

namespace A224306.P17874096528548844393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A055998 (n + 2)).toNat

end

end A224306.P17874096528548844393

/-! ## A224306.P15544982952433088566

`A224310(A056000(n)+7)`
-/

namespace A224306.P15544982952433088566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A056000 n + 7).toNat

end

end A224306.P15544982952433088566

/-! ## A224306.P234198025872555116

`A224310(Δ[A034857(n+1)])`
-/

namespace A224306.P234198025872555116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (f1 (n + 1) - f1 n).toNat

end

end A224306.P234198025872555116

/-!
# A224307: Number of nX5 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224307, there is no canonical definition to state claims against.
-/

/-! ## A224307.P16100361236372415568

`A224310(A046691(n+3))`
-/

namespace A224307.P16100361236372415568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A046691 (n + 3)).toNat

end

end A224307.P16100361236372415568

/-! ## A224307.P11063861362641551526

`A224310(eq[4, A193592(n)])`
-/

namespace A224307.P11063861362641551526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224307.P11063861362641551526

/-! ## A224307.P1992559053760520926

`A224310(Δ[A023545(n+1)])`
-/

namespace A224307.P1992559053760520926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (f1 (n + 1) - f1 n).toNat

end

end A224307.P1992559053760520926

/-! ## A224307.P10382399476406123409

`A224310(A000217(n+5)-4)`
-/

namespace A224307.P10382399476406123409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000217 (n + 5) - 4).toNat

end

end A224307.P10382399476406123409

/-! ## A224307.P2520647649376812940

`A224310(A000124(n+5)-5)`
-/

namespace A224307.P2520647649376812940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000124 (n + 5) - 5).toNat

end

end A224307.P2520647649376812940

/-!
# A224308: Number of nX6 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224308, there is no canonical definition to state claims against.
-/

/-! ## A224308.P1700133643448438604

`A224310(A052905(n+3))`
-/

namespace A224308.P1700133643448438604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A052905 (n + 3)).toNat

end

end A224308.P1700133643448438604

/-! ## A224308.P9130056678801349856

`A224310(eq[3, A219347(n)])`
-/

namespace A224308.P9130056678801349856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224308.P9130056678801349856

/-! ## A224308.P8458621019396042330

`A224310(eq[5, A193592(n)])`
-/

namespace A224308.P8458621019396042330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224308.P8458621019396042330

/-! ## A224308.P7365397547145651149

`A224310(eq[8, A258709(n)])`
-/

namespace A224308.P7365397547145651149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224308.P7365397547145651149

/-! ## A224308.P4002805901938830516

`A224310(Δ[Δ[A006504(n+1)]])`
-/

namespace A224308.P4002805901938830516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (f1 (n + 1) - f1 n).toNat

end

end A224308.P4002805901938830516

/-!
# A224309: Number of nX7 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224309, there is no canonical definition to state claims against.
-/

/-! ## A224309.P991514709989036696

`A224310(A055999(n+4))`
-/

namespace A224309.P991514709989036696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A055999 (n + 4)).toNat

end

end A224309.P991514709989036696

/-! ## A224309.P17712314603701648562

`A224310(eq[4, A219347(n)])`
-/

namespace A224309.P17712314603701648562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224309.P17712314603701648562

/-! ## A224309.P17546088351608397639

`A224310(eq[6, A193592(n)])`
-/

namespace A224309.P17546088351608397639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224309.P17546088351608397639

/-! ## A224309.P8340495962388179188

`A224310(eq[32, A166065(n)])`
-/

namespace A224309.P8340495962388179188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224309.P8340495962388179188

/-! ## A224309.P9407448258953645333

`A224310(A000124(n+7)-7)`
-/

namespace A224309.P9407448258953645333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000124 (n + 7) - 7).toNat

end

end A224309.P9407448258953645333

/-!
# A224310: T(n,k)=Number of nXk 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224310, there is no canonical definition to state claims against.
-/

/-! ## A224310.P11865869595916699765

`A224374(A084193(∑[n]))`
-/

namespace A224310.P11865869595916699765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224310.P11865869595916699765

/-! ## A224310.P12727301175833115220

`A224374(A004907(n+2))`
-/

namespace A224310.P12727301175833115220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A004907 (n + 2)).toNat

end

end A224310.P12727301175833115220

/-! ## A224310.P2437946378665088223

`A224374(A004918(n+2))`
-/

namespace A224310.P2437946378665088223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A004918 (n + 2)).toNat

end

end A224310.P2437946378665088223

/-! ## A224310.P353099484178666437

`A224374(A004906(n+1)+1)`
-/

namespace A224310.P353099484178666437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A004906 (n + 1) + 1).toNat

end

end A224310.P353099484178666437

/-! ## A224310.P15846481255533736845

`A224374(A004917(n+1)+1)`
-/

namespace A224310.P15846481255533736845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A004917 (n + 1) + 1).toNat

end

end A224310.P15846481255533736845

/-!
# A224311: Number of 3Xn 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224311, there is no canonical definition to state claims against.
-/

/-! ## A224311.P12734592557381451131

`A224310(∑[n+2]+4)`
-/

namespace A224311.P12734592557381451131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224311.P12734592557381451131

/-! ## A224311.P13921529709272897082

`A224310(A167614(n+1))+char[24]`
-/

namespace A224311.P13921529709272897082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224311.P13921529709272897082

/-! ## A224311.P7601563847343647590

`gcd(n, n+1)*A224310(A152949(n+4))`
-/

namespace A224311.P7601563847343647590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A224310 (A152949 (n + 4)).toNat

end

end A224311.P7601563847343647590

/-! ## A224311.P9019651728155687148

`or(A000038(n), A224310(A152949(n+4)))`
-/

namespace A224311.P9019651728155687148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A224310 (A152949 (n + 4)).toNat)

end

end A224311.P9019651728155687148

/-! ## A224311.P11647530334876568428

`A224310(A152949(n+4))%A232924(n+1)`
-/

namespace A224311.P11647530334876568428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224310 (A152949 (n + 4)).toNat) (A232924 (n + 1))

end

end A224311.P11647530334876568428

/-!
# A224312: Number of 4Xn 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224312, there is no canonical definition to state claims against.
-/

/-! ## A224312.P2440527757101656070

`A224310(A141214(n)+7)`
-/

namespace A224312.P2440527757101656070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A141214 n + 7).toNat

end

end A224312.P2440527757101656070

/-! ## A224312.P1089756565724894313

`A224310(A055999(n)+10)`
-/

namespace A224312.P1089756565724894313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A055999 n + 10).toNat

end

end A224312.P1089756565724894313

/-! ## A224312.P2991968596970235199

`A224310(A167614(n+2)+1)`
-/

namespace A224312.P2991968596970235199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A167614 (n + 2) + 1).toNat

end

end A224312.P2991968596970235199

/-! ## A224312.P9759255230367690449

`A224310(A000124(n+3)+3)`
-/

namespace A224312.P9759255230367690449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000124 (n + 3) + 3).toNat

end

end A224312.P9759255230367690449

/-! ## A224312.P5546790123405915179

`A224310(A000096(n+2)+5)`
-/

namespace A224312.P5546790123405915179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000096 (n + 2) + 5).toNat

end

end A224312.P5546790123405915179

/-!
# A224313: Number of 5Xn 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224313, there is no canonical definition to state claims against.
-/

/-! ## A224313.P12435990342373480706

`A224310(A155212(n)+13)`
-/

namespace A224313.P12435990342373480706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A155212 n + 13).toNat

end

end A224313.P12435990342373480706

/-! ## A224313.P9930515252326415101

`A224310(A056000(n)+15)`
-/

namespace A224313.P9930515252326415101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A056000 n + 15).toNat

end

end A224313.P9930515252326415101

/-! ## A224313.P6007166224450631979

`A224310(A000217(n+4)+5)`
-/

namespace A224313.P6007166224450631979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000217 (n + 4) + 5).toNat

end

end A224313.P6007166224450631979

/-! ## A224313.P12665773269771130114

`A224310(A055998(n+2)+8)`
-/

namespace A224313.P12665773269771130114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A055998 (n + 2) + 8).toNat

end

end A224313.P12665773269771130114

/-! ## A224313.P6259456103985984512

`A224310(A000124(n+5)-(n+1))`
-/

namespace A224313.P6259456103985984512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A224313.P6259456103985984512

/-!
# A224314: Number of 6Xn 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224314, there is no canonical definition to state claims against.
-/

/-! ## A224314.P13660548649923667552

`A224310(A000217(n+5)+6)`
-/

namespace A224314.P13660548649923667552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000217 (n + 5) + 6).toNat

end

end A224314.P13660548649923667552

/-! ## A224314.P3167943900709400805

`A224310(A000096(n+6)-A005843(n+3))`
-/

namespace A224314.P3167943900709400805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A224314.P3167943900709400805

/-! ## A224314.P5404498533084664961

`A224310(A005843(n+8)+A000096(n+2))`
-/

namespace A224314.P5404498533084664961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A224314.P5404498533084664961

/-!
# A224315: Number of 7 X n 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224315, there is no canonical definition to state claims against.
-/

/-! ## A224315.P12852164733294867758

`A224310(A056119(n)+28)`
-/

namespace A224315.P12852164733294867758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A056119 n + 28).toNat

end

end A224315.P12852164733294867758

/-! ## A224315.P15278702399001728752

`A224310(eq[11, A066657(n)])`
-/

namespace A224315.P15278702399001728752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224315.P15278702399001728752

/-! ## A224315.P5679384381954907920

`A224310(A000217(n+6)+7)`
-/

namespace A224315.P5679384381954907920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A000217 (n + 6) + 7).toNat

end

end A224315.P5679384381954907920

/-! ## A224315.P5226129344452967374

`A224310(A155212(n+2)+15)`
-/

namespace A224315.P5226129344452967374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (A155212 (n + 2) + 15).toNat

end

end A224315.P5226129344452967374

/-! ## A224315.P15420960043500945485

`A224310(eq[8, A131818(n+1)])`
-/

namespace A224315.P15420960043500945485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224315.P15420960043500945485

/-!
# A224316: Number of permutations w in S_n whose Kazhdan-Lusztig polynomial P_{id,w}(1) <= 3.

The programs for A224316, there is no canonical definition to state claims against.
-/

/-! ## A224316.P5284763118844570355

`∑[A337635(A361812(n))]`
-/

namespace A224316.P5284763118844570355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A361812 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224316.P5284763118844570355

/-! ## A224316.P16253199542860046697

`record[A284253(A256195(n))]`
-/

namespace A224316.P16253199542860046697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284253 (A256195 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224316.P16253199542860046697

/-!
# A224317: a(n) = a(n-1) + 3 - a(n-1)!.

The programs for A224317, the canonical program `A224317.P9638776003239876942` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224317 has offset 1).

The definition of A224317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3-a(n-1)!` (program `A224317.P9638776003239876942`, by `A224317.P9638776003239876942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224317.P9638776003239876942

`a(n-1)+3-a(n-1)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224317

/-- `a(n-1)+3-a(n-1)!` -/
def P9638776003239876942.Spec : Prop :=
  ∀ n, P9638776003239876942.a n = A224317 (n + 1)

theorem P9638776003239876942.correct : P9638776003239876942.Spec := by
  intro n
  simp only [A224317, Nat.add_sub_cancel]

end A224317

/-!
# A224318: Number of 2-vexillary permutations in S_n, that, permutations whose Stanley symmetric function has at most 2 terms or at most 2 Edelman-Greene tableaux.

The programs for A224318, there is no canonical definition to state claims against.
-/

/-! ## A224318.P15852265792140443306

`∑[A195120(A052896(n))]+1`
-/

namespace A224318.P15852265792140443306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A052896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A224318.P15852265792140443306

/-! ## A224318.P1862398808406182787

`A324130(n)+A094382(A001519(n))`
-/

namespace A224318.P1862398808406182787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324130 n + A094382 (A001519 n).toNat

end

end A224318.P1862398808406182787

/-! ## A224318.P15347759198874784431

`A000142(n)-A025428(A033886(2*n+3))`
-/

namespace A224318.P15347759198874784431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A025428 (A033886 (2 * n + 3)).toNat

end

end A224318.P15347759198874784431

/-!
# A224320: Primes without "3" as a digit that remain prime when any single digit is replaced with "3".

The programs for A224320, there is no canonical definition to state claims against.
-/

/-! ## A224320.P7803838528833355958

`p?[A061579(A018731(n+1))]`
-/

namespace A224320.P7803838528833355958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A018731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224320.P7803838528833355958

/-! ## A224320.P3802493384170240192

`∩[A045349(n+1), A181562(n+1)]`
-/

namespace A224320.P3802493384170240192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224320.P3802493384170240192

/-! ## A224320.P638742745814850135

`∩[A047217(n+1), A181562(n+1)]`
-/

namespace A224320.P638742745814850135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224320.P638742745814850135

/-! ## A224320.P16739740486007658807

`∩[A181562(n+1), A386344(n+1)]`
-/

namespace A224320.P16739740486007658807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224320.P16739740486007658807

/-! ## A224320.P13629704716678739170

`record[p?[A330355(A008725(n))]]`
-/

namespace A224320.P13629704716678739170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330355 (A008725 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224320.P13629704716678739170

/-!
# A224321: Primes without "7" as a digit that remain prime when any single digit is replaced with "7".

The programs for A224321, there is no canonical definition to state claims against.
-/

/-! ## A224321.P1420175350838008176

`p?[∑[A139713(A111106(n))]]`
-/

namespace A224321.P1420175350838008176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139713 (A111106 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224321.P1420175350838008176

/-! ## A224321.P17210491644488023306

`p?[∑[A204901(A229863(n))]]`
-/

namespace A224321.P17210491644488023306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204901 (A229863 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224321.P17210491644488023306

/-! ## A224321.P14683359566393942497

`p?[record[A171056(A347648(n))]]`
-/

namespace A224321.P14683359566393942497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171056 (A347648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224321.P14683359566393942497

/-! ## A224321.P9386889069989798743

`filter[A386357(n+1), A273592(#)]`
-/

namespace A224321.P9386889069989798743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A224321.P9386889069989798743

/-! ## A224321.P17629597790812939855

`p?[∑[A233782(A220527(n+1))]]`
-/

namespace A224321.P17629597790812939855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233782 (A220527 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224321.P17629597790812939855

/-!
# A224323: Number of arrangements of particles with no nearest neighbors on a double wedge shaped lattice of height n as shown in the example.

The programs for A224323, there is no canonical definition to state claims against.
-/

/-! ## A224323.P17747833074566671554

`A293168(∏[A329971(n)])`
-/

namespace A224323.P17747833074566671554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293168 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224323.P17747833074566671554

/-!
# A224324: First of three consecutive primes with a gap of 30n.

The programs for A224324, there is no canonical definition to state claims against.
-/

/-! ## A224324.P8726135391928120384

`A052187(5*(n+1)+1)`
-/

namespace A224324.P8726135391928120384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052187 (5 * (n + 1) + 1)

end

end A224324.P8726135391928120384

/-!
# A224326: Number of partitions of n into 3 distinct triangular numbers.

The programs for A224326, there is no canonical definition to state claims against.
-/

/-! ## A224326.P962803989090475115

`A002636(n)-A033761(n)`
-/

namespace A224326.P962803989090475115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A033761 n

end

end A224326.P962803989090475115

/-! ## A224326.P11760097183279691456

`A002636(n)-A216282(A017101(n))`
-/

namespace A224326.P11760097183279691456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A216282 (A017101 n).toNat

end

end A224326.P11760097183279691456

/-! ## A224326.P13748219947509724001

`A052343(n)+A063993(n)-A033761(n)`
-/

namespace A224326.P13748219947509724001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n + (A063993 n - A033761 n)

end

end A224326.P13748219947509724001

/-! ## A224326.P10670004628105362888

`A347534(8*n+3)`
-/

namespace A224326.P10670004628105362888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 (8 * n + 3)

end

end A224326.P10670004628105362888

/-! ## A224326.P456352808480485571

`A025436(8*n+3)`
-/

namespace A224326.P456352808480485571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (8 * n + 3)

end

end A224326.P456352808480485571

/-! ## A224326.P6617393394012579525

`A025442(8*n+3)`
-/

namespace A224326.P6617393394012579525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (8 * n + 3)

end

end A224326.P6617393394012579525

/-! ## A224326.P16791053152976244221

`A025442(A017101(n))%A000124(n)`
-/

namespace A224326.P16791053152976244221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025442 (A017101 n).toNat) (A000124 n)

end

end A224326.P16791053152976244221

/-! ## A224326.P9069435902508155648

`A025436(A017101(n))%A001359(n+1)`
-/

namespace A224326.P9069435902508155648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025436 (A017101 n).toNat) (A001359 (n + 1))

end

end A224326.P9069435902508155648

/-! ## A224326.P6706090094994518740

`A025442(A017101(n))+A025442(A025442(n))`
-/

namespace A224326.P6706090094994518740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A017101 n).toNat + A025442 (A025442 n).toNat

end

end A224326.P6706090094994518740

/-! ## A224326.P16774381437548195226

`A307598(n)+A307597(n)`
-/

namespace A224326.P16774381437548195226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A307597 n

end

end A224326.P16774381437548195226

/-! ## A224326.P10566724132725037173

`A053603(n)+A307598(n)-A052344(n)`
-/

namespace A224326.P10566724132725037173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n + (A307598 n - A052344 n)

end

end A224326.P10566724132725037173

/-! ## A224326.P8100548376905622455

`A357071(n)-A010054(n)`
-/

namespace A224326.P8100548376905622455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357071 n - A010054 n

end

end A224326.P8100548376905622455

/-! ## A224326.P9678553794789036299

`A307597(n)+A357071(n)-A357070(n)`
-/

namespace A224326.P9678553794789036299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + (A357071 n - A357070 n)

end

end A224326.P9678553794789036299

/-!
# A224327: Number of idempotent n X n 0..2 matrices of rank n-1.

The programs for A224327, the canonical program `A224327.P5920532428040473263` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224327 has offset 1).

The definition of A224327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224327.P265366723201161950

`(n+1)*(2*3^n-1)`
-/

namespace A224327.P265366723201161950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 * 3 ^ n : ℤ) - 1)

end

end A224327.P265366723201161950

namespace A224327

/-- `(n+1)*(2*3^n-1)` -/
def P265366723201161950.Spec : Prop :=
  ∀ n, P265366723201161950.a n = A224327 (n + 1)

theorem P265366723201161950.correct : P265366723201161950.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224327, Nat.add_sub_cancel, A224327.P265366723201161950.a, A224327.P5920532428040473263.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224327, Nat.add_sub_cancel, A224327.P265366723201161950.a, A224327.P5920532428040473263.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A224327

/-! ## A224327.P5920532428040473263

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=10, a(2)=51, a(3)=212`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224327

/-- `8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` -/
def P5920532428040473263.Spec : Prop :=
  ∀ n, P5920532428040473263.a n = A224327 (n + 1)

theorem P5920532428040473263.correct : P5920532428040473263.Spec := by
  intro n
  simp only [A224327, Nat.add_sub_cancel]

end A224327

/-! ## A224327.P15032670898833482396

`abs((n+1)*xor(3, Δ[3^n]))`
-/

namespace A224327.P15032670898833482396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A224327.P15032670898833482396

namespace A224327

/-- `abs((n+1)*xor(3, Δ[3^n]))` -/
def P15032670898833482396.Spec : Prop :=
  ∀ n, P15032670898833482396.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P8403287412001736274

`-((n+1)*or(1, Δ[-3^n]))`
-/

namespace A224327.P8403287412001736274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * Int.lor 1 (f1 (n + 1) - f1 n))

end

end A224327.P8403287412001736274

namespace A224327

/-- `-((n+1)*or(1, Δ[-3^n]))` -/
def P8403287412001736274.Spec : Prop :=
  ∀ n, P8403287412001736274.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P15330129906268229900

`floor((n+1)*∑[3*a(n-1)])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A224327.P15330129906268229900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224327.P15330129906268229900

namespace A224327

/-- `floor((n+1)*∑[3*a(n-1)])` -/
def P15330129906268229900.Spec : Prop :=
  ∀ n, (P15330129906268229900.a n : ℤ) = A224327 (n + 1)

end A224327

/-! ## A224327.P10981815753409511878

`(n+1)*∑[3*a(n-1)]+n+1` with `a(0)=0, a(1)=4`
-/

namespace A224327.P10981815753409511878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A224327.P10981815753409511878

namespace A224327

/-- `(n+1)*∑[3*a(n-1)]+n+1` -/
def P10981815753409511878.Spec : Prop :=
  ∀ n, (P10981815753409511878.a n : ℤ) = A224327 (n + 1)

end A224327

/-! ## A224327.P16020240863237065909

`∑[2*A081038(n)-1]`
-/

namespace A224327.P16020240863237065909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081038 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224327.P16020240863237065909

namespace A224327

/-- `∑[2*A081038(n)-1]` -/
def P16020240863237065909.Spec : Prop :=
  ∀ n, P16020240863237065909.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P11405945797559006343

`A212697(n+1)-(n+1)`
-/

namespace A224327.P11405945797559006343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212697 (n + 1) - (n + 1 : ℤ)

end

end A224327.P11405945797559006343

namespace A224327

/-- `A212697(n+1)-(n+1)` -/
def P11405945797559006343.Spec : Prop :=
  ∀ n, P11405945797559006343.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P8370498463394835211

`A140320(n+1)-(n+2)`
-/

namespace A224327.P8370498463394835211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140320 (n + 1) - (n + 2 : ℤ)

end

end A224327.P8370498463394835211

namespace A224327

/-- `A140320(n+1)-(n+2)` -/
def P8370498463394835211.Spec : Prop :=
  ∀ n, P8370498463394835211.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P17554024165221141786

`2*A027471(n+2)-(n+1)`
-/

namespace A224327.P17554024165221141786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027471 (n + 2) - (n + 1 : ℤ)

end

end A224327.P17554024165221141786

namespace A224327

/-- `2*A027471(n+2)-(n+1)` -/
def P17554024165221141786.Spec : Prop :=
  ∀ n, P17554024165221141786.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P12866674674670767601

`(n+1)*A008776(n)-(n+1)`
-/

namespace A224327.P12866674674670767601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008776 n - (n + 1 : ℤ)

end

end A224327.P12866674674670767601

namespace A224327

/-- `(n+1)*A008776(n)-(n+1)` -/
def P12866674674670767601.Spec : Prop :=
  ∀ n, P12866674674670767601.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P16136593083600947923

`abs((n+1)*(Δ[A000244(n)]-1))`
-/

namespace A224327.P16136593083600947923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n - 1)|

end

end A224327.P16136593083600947923

namespace A224327

/-- `abs((n+1)*(Δ[A000244(n)]-1))` -/
def P16136593083600947923.Spec : Prop :=
  ∀ n, P16136593083600947923.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P10638917067104960133

`abs((ϕ²-(ϕ-n))*A048473(n))`
-/

namespace A224327.P10638917067104960133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))) * (A048473 n : ℝ)|

end

end A224327.P10638917067104960133

namespace A224327

/-- `abs((ϕ²-(ϕ-n))*A048473(n))` -/
def P10638917067104960133.Spec : Prop :=
  ∀ n, P10638917067104960133.a n = (A224327 (n + 1) : ℝ)

end A224327

/-! ## A224327.P7622056038533876492

`A048473(n)+n*A048473(n)`
-/

namespace A224327.P7622056038533876492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n + (n : ℤ) * A048473 n

end

end A224327.P7622056038533876492

namespace A224327

/-- `A048473(n)+n*A048473(n)` -/
def P7622056038533876492.Spec : Prop :=
  ∀ n, P7622056038533876492.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P4680074019833604282

`A124647(n)+A000244(n)-(n+1)`
-/

namespace A224327.P4680074019833604282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 n + (A000244 n - (n + 1 : ℤ))

end

end A224327.P4680074019833604282

namespace A224327

/-- `A124647(n)+A000244(n)-(n+1)` -/
def P4680074019833604282.Spec : Prop :=
  ∀ n, P4680074019833604282.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P12226450377892734188

`A084859(n+1)-(A004277(n+1)+A000325(n+1))`
-/

namespace A224327.P12226450377892734188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084859 (n + 1) - (A004277 (n + 1) + A000325 (n + 1))

end

end A224327.P12226450377892734188

namespace A224327

/-- `A084859(n+1)-(A004277(n+1)+A000325(n+1))` -/
def P12226450377892734188.Spec : Prop :=
  ∀ n, P12226450377892734188.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P8740451230045010615

`A120908(n+2)/2-(n+1)`
-/

namespace A224327.P8740451230045010615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120908 (n + 2) : ℚ) / 2 - (n + 1 : ℚ)

end

end A224327.P8740451230045010615

namespace A224327

/-- `A120908(n+2)/2-(n+1)` -/
def P8740451230045010615.Spec : Prop :=
  ∀ n, P8740451230045010615.a n = (A224327 (n + 1) : ℚ)

end A224327

/-! ## A224327.P2582178072870300386

`A203231(2*(n+1))/2-(n+1)`
-/

namespace A224327.P2582178072870300386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203231 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A224327.P2582178072870300386

namespace A224327

/-- `A203231(2*(n+1))/2-(n+1)` -/
def P2582178072870300386.Spec : Prop :=
  ∀ n, P2582178072870300386.a n = (A224327 (n + 1) : ℚ)

end A224327

/-!
# A224328: Number of idempotent n X n 0..3 matrices of rank n-1.

The programs for A224328, the canonical program `A224328.P9757538982148960558` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224328 has offset 1).

The definition of A224328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224328.P4137315057975168556

`(n+1)*(2*4^n-1)`
-/

namespace A224328.P4137315057975168556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 * 4 ^ n : ℤ) - 1)

end

end A224328.P4137315057975168556

namespace A224328

/-- `(n+1)*(2*4^n-1)` -/
def P4137315057975168556.Spec : Prop :=
  ∀ n, P4137315057975168556.a n = A224328 (n + 1)

theorem P4137315057975168556.correct : P4137315057975168556.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224328, Nat.add_sub_cancel, A224328.P4137315057975168556.a, A224328.P9757538982148960558.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224328, Nat.add_sub_cancel, A224328.P4137315057975168556.a, A224328.P9757538982148960558.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A224328

/-! ## A224328.P9757538982148960558

`10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=14, a(2)=93, a(3)=508`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224328

/-- `10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` -/
def P9757538982148960558.Spec : Prop :=
  ∀ n, P9757538982148960558.a n = A224328 (n + 1)

theorem P9757538982148960558.correct : P9757538982148960558.Spec := by
  intro n
  simp only [A224328, Nat.add_sub_cancel]

end A224328

/-! ## A224328.P882649483701472881

`∑[Δ[A002699(n)]-1]`
-/

namespace A224328.P882649483701472881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224328.P882649483701472881

namespace A224328

/-- `∑[Δ[A002699(n)]-1]` -/
def P882649483701472881.Spec : Prop :=
  ∀ n, P882649483701472881.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P3944504241156069081

`∑[Δ[A229135(n)]-3]`
-/

namespace A224328.P3944504241156069081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224328.P3944504241156069081

namespace A224328

/-- `∑[Δ[A229135(n)]-3]` -/
def P3944504241156069081.Spec : Prop :=
  ∀ n, P3944504241156069081.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P14624820911027134686

`A221882(Δ[n²])+n`
-/

namespace A224328.P14624820911027134686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A224328.P14624820911027134686

namespace A224328

/-- `A221882(Δ[n²])+n` -/
def P14624820911027134686.Spec : Prop :=
  ∀ n, P14624820911027134686.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P4986971004358087674

`A099035(Δ[n²])-n`
-/

namespace A224328.P4986971004358087674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A224328.P4986971004358087674

namespace A224328

/-- `A099035(Δ[n²])-n` -/
def P4986971004358087674.Spec : Prop :=
  ∀ n, P4986971004358087674.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P10060457754293468249

`∑[2*A081039(n)-1]`
-/

namespace A224328.P10060457754293468249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081039 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224328.P10060457754293468249

namespace A224328

/-- `∑[2*A081039(n)-1]` -/
def P10060457754293468249.Spec : Prop :=
  ∀ n, P10060457754293468249.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P15108972505967706921

`A058877(2*(n+1))/2`
-/

namespace A224328.P15108972505967706921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058877 (2 * (n + 1)) : ℚ) / 2

end

end A224328.P15108972505967706921

namespace A224328

/-- `A058877(2*(n+1))/2` -/
def P15108972505967706921.Spec : Prop :=
  ∀ n, P15108972505967706921.a n = (A224328 (n + 1) : ℚ)

end A224328

/-! ## A224328.P6008978571263229204

`A002699(n+1)-(n+1)`
-/

namespace A224328.P6008978571263229204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 (n + 1) - (n + 1 : ℤ)

end

end A224328.P6008978571263229204

namespace A224328

/-- `A002699(n+1)-(n+1)` -/
def P6008978571263229204.Spec : Prop :=
  ∀ n, P6008978571263229204.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P17340279800488746568

`A260006(2*n)+1+n`
-/

namespace A224328.P17340279800488746568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260006 (2 * n) + 1 + (n : ℤ)

end

end A224328.P17340279800488746568

namespace A224328

/-- `A260006(2*n)+1+n` -/
def P17340279800488746568.Spec : Prop :=
  ∀ n, P17340279800488746568.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P17981516412904389699

`2*A002697(n+1)-(n+1)`
-/

namespace A224328.P17981516412904389699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002697 (n + 1) - (n + 1 : ℤ)

end

end A224328.P17981516412904389699

namespace A224328

/-- `2*A002697(n+1)-(n+1)` -/
def P17981516412904389699.Spec : Prop :=
  ∀ n, P17981516412904389699.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P12149857423609864431

`A057711(2*(n+1))-(n+1)`
-/

namespace A224328.P12149857423609864431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A224328.P12149857423609864431

namespace A224328

/-- `A057711(2*(n+1))-(n+1)` -/
def P12149857423609864431.Spec : Prop :=
  ∀ n, P12149857423609864431.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P5223250285035021125

`A129952(2*(n+1))-(n+1)`
-/

namespace A224328.P5223250285035021125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A224328.P5223250285035021125

namespace A224328

/-- `A129952(2*(n+1))-(n+1)` -/
def P5223250285035021125.Spec : Prop :=
  ∀ n, P5223250285035021125.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P11977038987460400973

`A134353(2*n+1)-(n+1)`
-/

namespace A224328.P11977038987460400973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134353 (2 * n + 1) - (n + 1 : ℤ)

end

end A224328.P11977038987460400973

namespace A224328

/-- `A134353(2*n+1)-(n+1)` -/
def P11977038987460400973.Spec : Prop :=
  ∀ n, P11977038987460400973.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P16090481844363716621

`A178945(2*(n+1))-(n+1)`
-/

namespace A224328.P16090481844363716621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178945 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A224328.P16090481844363716621

namespace A224328

/-- `A178945(2*(n+1))-(n+1)` -/
def P16090481844363716621.Spec : Prop :=
  ∀ n, P16090481844363716621.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P17941697553643370595

`A185251(2*(n+1))-(n+1)`
-/

namespace A224328.P17941697553643370595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A224328.P17941697553643370595

namespace A224328

/-- `A185251(2*(n+1))-(n+1)` -/
def P17941697553643370595.Spec : Prop :=
  ∀ n, P17941697553643370595.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P17217580835031487258

`A018215(n+1)/2-(n+1)`
-/

namespace A224328.P17217580835031487258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018215 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A224328.P17217580835031487258

namespace A224328

/-- `A018215(n+1)/2-(n+1)` -/
def P17217580835031487258.Spec : Prop :=
  ∀ n, P17217580835031487258.a n = (A224328 (n + 1) : ℚ)

end A224328

/-! ## A224328.P8857715685199649162

`A124720(2*n+3)-(n+1)`
-/

namespace A224328.P8857715685199649162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124720 (2 * n + 3) - (n + 1 : ℤ)

end

end A224328.P8857715685199649162

namespace A224328

/-- `A124720(2*n+3)-(n+1)` -/
def P8857715685199649162.Spec : Prop :=
  ∀ n, P8857715685199649162.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P14519253491508792143

`A048496(2*n+1)-(A048497(2*n)+n)`
-/

namespace A224328.P14519253491508792143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048496 (2 * n + 1) - (A048497 (2 * n) + (n : ℤ))

end

end A224328.P14519253491508792143

namespace A224328

/-- `A048496(2*n+1)-(A048497(2*n)+n)` -/
def P14519253491508792143.Spec : Prop :=
  ∀ n, P14519253491508792143.a n = A224328 (n + 1)

end A224328

/-! ## A224328.P18439991096871326994

`A083420(n)*A360980(n+1)/A178757(n+1)`
-/

namespace A224328.P18439991096871326994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083420 n * A360980 (n + 1) : ℚ) / (A178757 (n + 1) : ℚ)

end

end A224328.P18439991096871326994

namespace A224328

/-- `A083420(n)*A360980(n+1)/A178757(n+1)` -/
def P18439991096871326994.Spec : Prop :=
  ∀ n, P18439991096871326994.a n = (A224328 (n + 1) : ℚ)

end A224328

/-!
# A224329: Number of idempotent n X n 0..4 matrices of rank n-1.

The programs for A224329, the canonical program `A224329.P748976363621282850` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224329 has offset 1).

The definition of A224329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224329.P581440077720570119

`(n+1)*(2*5^n-1)`
-/

namespace A224329.P581440077720570119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 * 5 ^ n : ℤ) - 1)

end

end A224329.P581440077720570119

namespace A224329

/-- `(n+1)*(2*5^n-1)` -/
def P581440077720570119.Spec : Prop :=
  ∀ n, P581440077720570119.a n = A224329 (n + 1)

theorem P581440077720570119.correct : P581440077720570119.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224329, Nat.add_sub_cancel, A224329.P581440077720570119.a, A224329.P748976363621282850.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224329, Nat.add_sub_cancel, A224329.P581440077720570119.a, A224329.P748976363621282850.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A224329

/-! ## A224329.P748976363621282850

`12*a(n-1)-46*a(n-2)+60*a(n-3)-25*a(n-4)` with `a(0)=1, a(1)=18, a(2)=147, a(3)=996`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224329

/-- `12*a(n-1)-46*a(n-2)+60*a(n-3)-25*a(n-4)` -/
def P748976363621282850.Spec : Prop :=
  ∀ n, P748976363621282850.a n = A224329 (n + 1)

theorem P748976363621282850.correct : P748976363621282850.Spec := by
  intro n
  simp only [A224329, Nat.add_sub_cancel]

end A224329

/-! ## A224329.P8223685391362169571

`∑[2*A081040(n)-1]`
-/

namespace A224329.P8223685391362169571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081040 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224329.P8223685391362169571

namespace A224329

/-- `∑[2*A081040(n)-1]` -/
def P8223685391362169571.Spec : Prop :=
  ∀ n, P8223685391362169571.a n = A224329 (n + 1)

end A224329

/-! ## A224329.P13498981439536982920

`2*A053464(n+1)-(n+1)`
-/

namespace A224329.P13498981439536982920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053464 (n + 1) - (n + 1 : ℤ)

end

end A224329.P13498981439536982920

namespace A224329

/-- `2*A053464(n+1)-(n+1)` -/
def P13498981439536982920.Spec : Prop :=
  ∀ n, P13498981439536982920.a n = A224329 (n + 1)

end A224329

/-! ## A224329.P6984495156232122111

`A212699(n+1)/2-(n+1)`
-/

namespace A224329.P6984495156232122111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212699 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A224329.P6984495156232122111

namespace A224329

/-- `A212699(n+1)/2-(n+1)` -/
def P6984495156232122111.Spec : Prop :=
  ∀ n, P6984495156232122111.a n = (A224329 (n + 1) : ℚ)

end A224329

/-! ## A224329.P9959617397783582018

`(n+1)*A020729(n)-(n+1)`
-/

namespace A224329.P9959617397783582018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020729 n - (n + 1 : ℤ)

end

end A224329.P9959617397783582018

namespace A224329

/-- `(n+1)*A020729(n)-(n+1)` -/
def P9959617397783582018.Spec : Prop :=
  ∀ n, P9959617397783582018.a n = A224329 (n + 1)

end A224329

/-! ## A224329.P6185628982228128426

`floor((n-log2(1/2))*A081655(n))`
-/

namespace A224329.P6185628982228128426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A081655 n : ℝ)⌋

end

end A224329.P6185628982228128426

namespace A224329

/-- `floor((n-log2(1/2))*A081655(n))` -/
def P6185628982228128426.Spec : Prop :=
  ∀ n, P6185628982228128426.a n = A224329 (n + 1)

end A224329

/-! ## A224329.P1037907095909508370

`2*(n+1)*A024049(n)+1+n`
-/

namespace A224329.P1037907095909508370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A024049 n + 1 + (n : ℤ)

end

end A224329.P1037907095909508370

namespace A224329

/-- `2*(n+1)*A024049(n)+1+n` -/
def P1037907095909508370.Spec : Prop :=
  ∀ n, P1037907095909508370.a n = A224329 (n + 1)

end A224329

/-! ## A224329.P11697299042403716035

`2*(n+1)*A000351(n)-(n+1)`
-/

namespace A224329.P11697299042403716035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000351 n - (n + 1 : ℤ)

end

end A224329.P11697299042403716035

namespace A224329

/-- `2*(n+1)*A000351(n)-(n+1)` -/
def P11697299042403716035.Spec : Prop :=
  ∀ n, P11697299042403716035.a n = A224329 (n + 1)

end A224329

/-!
# A224330: Number of idempotent n X n 0..5 matrices of rank n-1.

The programs for A224330, the canonical program `A224330.P4213194063220589033` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224330 has offset 1).

The definition of A224330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224330.P4213194063220589033

`(n+1)*(2*6^n-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224330

/-- `(n+1)*(2*6^n-1)` -/
def P4213194063220589033.Spec : Prop :=
  ∀ n, P4213194063220589033.a n = A224330 (n + 1)

theorem P4213194063220589033.correct : P4213194063220589033.Spec := by
  intro n
  simp only [A224330, Nat.add_sub_cancel]

end A224330

/-! ## A224330.P6815249086735805907

`∑[2*A081041(n)-1]`
-/

namespace A224330.P6815249086735805907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081041 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224330.P6815249086735805907

namespace A224330

/-- `∑[2*A081041(n)-1]` -/
def P6815249086735805907.Spec : Prop :=
  ∀ n, P6815249086735805907.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P2280204852205685556

`2*A053469(n+1)-(n+1)`
-/

namespace A224330.P2280204852205685556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053469 (n + 1) - (n + 1 : ℤ)

end

end A224330.P2280204852205685556

namespace A224330

/-- `2*A053469(n+1)-(n+1)` -/
def P2280204852205685556.Spec : Prop :=
  ∀ n, P2280204852205685556.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P10999978852696968349

`floor((n+1)*(A199319(n)-3)/2)`
-/

namespace A224330.P10999978852696968349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((A199319 n - 3 : ℚ) / 2)⌋

end

end A224330.P10999978852696968349

namespace A224330

/-- `floor((n+1)*(A199319(n)-3)/2)` -/
def P10999978852696968349.Spec : Prop :=
  ∀ n, P10999978852696968349.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P4303115823770064581

`A027271(2*n+1)/2-(n+1)`
-/

namespace A224330.P4303115823770064581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027271 (2 * n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A224330.P4303115823770064581

namespace A224330

/-- `A027271(2*n+1)/2-(n+1)` -/
def P4303115823770064581.Spec : Prop :=
  ∀ n, P4303115823770064581.a n = (A224330 (n + 1) : ℚ)

end A224330

/-! ## A224330.P9073004941842345510

`(n+1)*A167747(n+1)-(n+1)`
-/

namespace A224330.P9073004941842345510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167747 (n + 1) - (n + 1 : ℤ)

end

end A224330.P9073004941842345510

namespace A224330

/-- `(n+1)*A167747(n+1)-(n+1)` -/
def P9073004941842345510.Spec : Prop :=
  ∀ n, P9073004941842345510.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P5511512916048656526

`2*(n+1)*A024062(n)+n+1`
-/

namespace A224330.P5511512916048656526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A024062 n + (n + 1 : ℤ)

end

end A224330.P5511512916048656526

namespace A224330

/-- `2*(n+1)*A024062(n)+n+1` -/
def P5511512916048656526.Spec : Prop :=
  ∀ n, P5511512916048656526.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P3396257304124010061

`2*(n+1)*A000400(n)-(n+1)`
-/

namespace A224330.P3396257304124010061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000400 n - (n + 1 : ℤ)

end

end A224330.P3396257304124010061

namespace A224330

/-- `2*(n+1)*A000400(n)-(n+1)` -/
def P3396257304124010061.Spec : Prop :=
  ∀ n, P3396257304124010061.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P9456734869044944307

`(n+1)*A026549(2*n+1)-(n+1)`
-/

namespace A224330.P9456734869044944307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026549 (2 * n + 1) - (n + 1 : ℤ)

end

end A224330.P9456734869044944307

namespace A224330

/-- `(n+1)*A026549(2*n+1)-(n+1)` -/
def P9456734869044944307.Spec : Prop :=
  ∀ n, P9456734869044944307.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P9558087604271496248

`A164559(n+1)+n*A164559(n+1)`
-/

namespace A224330.P9558087604271496248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (n + 1) + (n : ℤ) * A164559 (n + 1)

end

end A224330.P9558087604271496248

namespace A224330

/-- `A164559(n+1)+n*A164559(n+1)` -/
def P9558087604271496248.Spec : Prop :=
  ∀ n, P9558087604271496248.a n = A224330 (n + 1)

end A224330

/-!
# A224331: Number of idempotent n X n 0..6 matrices of rank n-1.

The programs for A224331, the canonical program `A224331.P15223608677765705135` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224331 has offset 1).

The definition of A224331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224331.P15223608677765705135

`(n+1)*(2*7^n-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224331

/-- `(n+1)*(2*7^n-1)` -/
def P15223608677765705135.Spec : Prop :=
  ∀ n, P15223608677765705135.a n = A224331 (n + 1)

theorem P15223608677765705135.correct : P15223608677765705135.Spec := by
  intro n
  simp only [A224331, Nat.add_sub_cancel]

end A224331

/-! ## A224331.P2413554011026821001

`∑[2*A081042(n)-1]`
-/

namespace A224331.P2413554011026821001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081042 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224331.P2413554011026821001

namespace A224331

/-- `∑[2*A081042(n)-1]` -/
def P2413554011026821001.Spec : Prop :=
  ∀ n, P2413554011026821001.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P17956539758318674150

`abs((Δ[n²]-n)*A198480(n))`
-/

namespace A224331.P17956539758318674150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) * A198480 n|

end

end A224331.P17956539758318674150

namespace A224331

/-- `abs((Δ[n²]-n)*A198480(n))` -/
def P17956539758318674150.Spec : Prop :=
  ∀ n, P17956539758318674150.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P13412067588942138209

`2*A027473(n+1)-(n+1)`
-/

namespace A224331.P13412067588942138209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027473 (n + 1) - (n + 1 : ℤ)

end

end A224331.P13412067588942138209

namespace A224331

/-- `2*A027473(n+1)-(n+1)` -/
def P13412067588942138209.Spec : Prop :=
  ∀ n, P13412067588942138209.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P1461891419537143837

`abs((n+1)*(A109808(n+1)-1))`
-/

namespace A224331.P1461891419537143837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A109808 (n + 1) - 1)|

end

end A224331.P1461891419537143837

namespace A224331

/-- `abs((n+1)*(A109808(n+1)-1))` -/
def P1461891419537143837.Spec : Prop :=
  ∀ n, P1461891419537143837.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P5758830323205913923

`2*(n+1)*A024075(n)+1+n`
-/

namespace A224331.P5758830323205913923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A024075 n + 1 + (n : ℤ)

end

end A224331.P5758830323205913923

namespace A224331

/-- `2*(n+1)*A024075(n)+1+n` -/
def P5758830323205913923.Spec : Prop :=
  ∀ n, P5758830323205913923.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P11634917348769837214

`2*(n+1)*A000420(n)-(n+1)`
-/

namespace A224331.P11634917348769837214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000420 n - (n + 1 : ℤ)

end

end A224331.P11634917348769837214

namespace A224331

/-- `2*(n+1)*A000420(n)-(n+1)` -/
def P11634917348769837214.Spec : Prop :=
  ∀ n, P11634917348769837214.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P12775951160373742634

`7^n*Δ[A048058(n)]-(Δ[n²]-n)`
-/

namespace A224331.P12775951160373742634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * (f1 (n + 1) - f1 n) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ))

end

end A224331.P12775951160373742634

namespace A224331

/-- `7^n*Δ[A048058(n)]-(Δ[n²]-n)` -/
def P12775951160373742634.Spec : Prop :=
  ∀ n, P12775951160373742634.a n = A224331 (n + 1)

end A224331

/-! ## A224331.P1644936209883034309

`A212701(n+1)/3-(n+1)`
-/

namespace A224331.P1644936209883034309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212701 (n + 1) : ℚ) / 3 - (n + 1 : ℚ)

end

end A224331.P1644936209883034309

namespace A224331

/-- `A212701(n+1)/3-(n+1)` -/
def P1644936209883034309.Spec : Prop :=
  ∀ n, P1644936209883034309.a n = (A224331 (n + 1) : ℚ)

end A224331

/-!
# A224332: Number of idempotent n X n 0..7 matrices of rank n-1.

The programs for A224332, the canonical program `A224332.P16127276259677730642` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224332 has offset 1).

The definition of A224332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224332.P16127276259677730642

`(n+1)*(2*8^n-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224332

/-- `(n+1)*(2*8^n-1)` -/
def P16127276259677730642.Spec : Prop :=
  ∀ n, P16127276259677730642.a n = A224332 (n + 1)

theorem P16127276259677730642.correct : P16127276259677730642.Spec := by
  intro n
  simp only [A224332, Nat.add_sub_cancel]

end A224332

/-! ## A224332.P11709679015250928799

`∑[2*A081043(n)-1]`
-/

namespace A224332.P11709679015250928799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081043 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224332.P11709679015250928799

namespace A224332

/-- `∑[2*A081043(n)-1]` -/
def P11709679015250928799.Spec : Prop :=
  ∀ n, P11709679015250928799.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P1549909750284427015

`2*A053539(n+1)-(n+1)`
-/

namespace A224332.P1549909750284427015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053539 (n + 1) - (n + 1 : ℤ)

end

end A224332.P1549909750284427015

namespace A224332

/-- `2*A053539(n+1)-(n+1)` -/
def P1549909750284427015.Spec : Prop :=
  ∀ n, P1549909750284427015.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P8962777293926516055

`(n+1)*A000918(3*n+1)+n+1`
-/

namespace A224332.P8962777293926516055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000918 (3 * n + 1) + (n + 1 : ℤ)

end

end A224332.P8962777293926516055

namespace A224332

/-- `(n+1)*A000918(3*n+1)+n+1` -/
def P8962777293926516055.Spec : Prop :=
  ∀ n, P8962777293926516055.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P10728524004804791360

`record[A290636(n+2)*A290678(3*n)]`
-/

namespace A224332.P10728524004804791360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290636 (n + 2) * A290678 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224332.P10728524004804791360

namespace A224332

/-- `record[A290636(n+2)*A290678(3*n)]` -/
def P10728524004804791360.Spec : Prop :=
  ∀ n, P10728524004804791360.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P12091850620373343085

`2*A000079(n)²*A001787(n+1)-(n+1)`
-/

namespace A224332.P12091850620373343085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A001787 (n + 1) - (n + 1 : ℤ)

end

end A224332.P12091850620373343085

namespace A224332

/-- `2*A000079(n)²*A001787(n+1)-(n+1)` -/
def P12091850620373343085.Spec : Prop :=
  ∀ n, P12091850620373343085.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P11536342610065142571

`A000079(2*n+1)*A001787(n+1)-(n+1)`
-/

namespace A224332.P11536342610065142571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A001787 (n + 1) - (n + 1 : ℤ)

end

end A224332.P11536342610065142571

namespace A224332

/-- `A000079(2*n+1)*A001787(n+1)-(n+1)` -/
def P11536342610065142571.Spec : Prop :=
  ∀ n, P11536342610065142571.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P13716121040734502818

`A066524(n+1)+A000225(2*n)*A036289(n+1)`
-/

namespace A224332.P13716121040734502818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (n + 1) + A000225 (2 * n) * A036289 (n + 1)

end

end A224332.P13716121040734502818

namespace A224332

/-- `A066524(n+1)+A000225(2*n)*A036289(n+1)` -/
def P13716121040734502818.Spec : Prop :=
  ∀ n, P13716121040734502818.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P8098259749220636153

`floor(A221882(3*n+2)/3)`
-/

namespace A224332.P8098259749220636153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221882 (3 * n + 2) : ℚ) / 3⌋

end

end A224332.P8098259749220636153

namespace A224332

/-- `floor(A221882(3*n+2)/3)` -/
def P8098259749220636153.Spec : Prop :=
  ∀ n, P8098259749220636153.a n = A224332 (n + 1)

end A224332

/-!
# A224333: T(n,k)=Number of idempotent n X n 0..k matrices of rank n-1.

The programs for A224333, there is no canonical definition to state claims against.
-/

/-! ## A224333.P15918918962493687243

`A118759(A002260(n+1)*A193844(n))`
-/

namespace A224333.P15918918962493687243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A002260 (n + 1) * A193844 n).toNat

end

end A224333.P15918918962493687243

/-! ## A224333.P10828759079135146107

`A118759(lcm(A002260(n+1), A193844(n)))`
-/

namespace A224333.P10828759079135146107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lcm (A002260 (n + 1)) (A193844 n))

end

end A224333.P10828759079135146107

/-! ## A224333.P10129233590149972959

`A118759(or(1, A193816(n))*A002260(n+1))`
-/

namespace A224333.P10129233590149972959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor 1 (A193816 n) * A002260 (n + 1)).toNat

end

end A224333.P10129233590149972959

/-! ## A224333.P3063870091648730170

`A097449(A002260(n+1)*A193844(n))`
-/

namespace A224333.P3063870091648730170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A002260 (n + 1) * A193844 n).toNat

end

end A224333.P3063870091648730170

/-! ## A224333.P6729836777327777863

`A238748(A115597(n+2)%A059744(3*n+4))`
-/

namespace A224333.P6729836777327777863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238748 (Int.tmod (A115597 (n + 2)) (A059744 (3 * n + 4))).toNat

end

end A224333.P6729836777327777863

/-!
# A224334: Number of idempotent 3 X 3 0..n matrices of rank 2.

The programs for A224334, the canonical program `A224334.P3201041790142675837` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224334 has offset 1).

The definition of A224334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224334.P3201041790142675837

`6*(n+1)²+12*(n+1)+3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224334

/-- `6*(n+1)²+12*(n+1)+3` -/
def P3201041790142675837.Spec : Prop :=
  ∀ n, (P3201041790142675837.a n : ℤ) = A224334 (n + 1)

theorem P3201041790142675837.correct : P3201041790142675837.Spec := by
  intro n
  simp only [A224334, Nat.add_sub_cancel]

end A224334

/-! ## A224334.P11644513473810239449

`∑[a(n-1)+12]` with `a(0)=21, a(1)=30`
-/

namespace A224334.P11644513473810239449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 30] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224334.P11644513473810239449

namespace A224334

/-- `∑[a(n-1)+12]` -/
def P11644513473810239449.Spec : Prop :=
  ∀ n, (P11644513473810239449.a n : ℤ) = A224334 (n + 1)

end A224334

/-! ## A224334.P1703274408283857151

`record[6*(2-n)²-3]`
-/

namespace A224334.P1703274408283857151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (2 - (n : ℤ)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224334.P1703274408283857151

namespace A224334

/-- `record[6*(2-n)²-3]` -/
def P1703274408283857151.Spec : Prop :=
  ∀ n, P1703274408283857151.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P9722662799038415143

`lcm(3, ∑[4*n+6]+1)`
-/

namespace A224334.P9722662799038415143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224334.P9722662799038415143

namespace A224334

/-- `lcm(3, ∑[4*n+6]+1)` -/
def P9722662799038415143.Spec : Prop :=
  ∀ n, (P9722662799038415143.a n : ℤ) = A224334 (n + 1)

end A224334

/-! ## A224334.P7447967390392025757

`3*or(1, ∑[4*n+6])`
-/

namespace A224334.P7447967390392025757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224334.P7447967390392025757

namespace A224334

/-- `3*or(1, ∑[4*n+6])` -/
def P7447967390392025757.Spec : Prop :=
  ∀ n, (P7447967390392025757.a n : ℤ) = A224334 (n + 1)

end A224334

/-! ## A224334.P4997876312722230504

`3*xor(1, ∑[4*n+6])`
-/

namespace A224334.P4997876312722230504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224334.P4997876312722230504

namespace A224334

/-- `3*xor(1, ∑[4*n+6])` -/
def P4997876312722230504.Spec : Prop :=
  ∀ n, (P4997876312722230504.a n : ℤ) = A224334 (n + 1)

end A224334

/-! ## A224334.P5272154356658859506

`Δ[n*C(2*n+5, 2)]`
-/

namespace A224334.P5272154356658859506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n + 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224334.P5272154356658859506

namespace A224334

/-- `Δ[n*C(2*n+5, 2)]` -/
def P5272154356658859506.Spec : Prop :=
  ∀ n, P5272154356658859506.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P7526045477511022433

`Δ[n*lcm(2*n+5, n+2)]`
-/

namespace A224334.P7526045477511022433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lcm (2 * n + 5) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224334.P7526045477511022433

namespace A224334

/-- `Δ[n*lcm(2*n+5, n+2)]` -/
def P7526045477511022433.Spec : Prop :=
  ∀ n, P7526045477511022433.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P12290980356117223988

`3*(∑[ogf((5-x^2)/(1-2x+x^2))]+2)`
-/

namespace A224334.P12290980356117223988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224334.P12290980356117223988

namespace A224334

/-- `3*(∑[ogf((5-x^2)/(1-2x+x^2))]+2)` -/
def P12290980356117223988.Spec : Prop :=
  ∀ n, P12290980356117223988.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P8434633521588123600

`Δ[(n+1)*(n+3)*or(1, 2*n)]`
-/

namespace A224334.P8434633521588123600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 3) * Nat.lor 1 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224334.P8434633521588123600

namespace A224334

/-- `Δ[(n+1)*(n+3)*or(1, 2*n)]` -/
def P8434633521588123600.Spec : Prop :=
  ∀ n, P8434633521588123600.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P12320263823352722678

`Δ[(n+1)*(n+3)*xor(1, 2*n)]`
-/

namespace A224334.P12320263823352722678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 3) * Nat.xor 1 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A224334.P12320263823352722678

namespace A224334

/-- `Δ[(n+1)*(n+3)*xor(1, 2*n)]` -/
def P12320263823352722678.Spec : Prop :=
  ∀ n, P12320263823352722678.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P15279317931461510079

`3*(A268581(n)+2)`
-/

namespace A224334.P15279317931461510079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A268581 n + 2)

end

end A224334.P15279317931461510079

namespace A224334

/-- `3*(A268581(n)+2)` -/
def P15279317931461510079.Spec : Prop :=
  ∀ n, P15279317931461510079.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P9566118995102301977

`3*(A271625(n+1)+4)`
-/

namespace A224334.P9566118995102301977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A271625 (n + 1) + 4)

end

end A224334.P9566118995102301977

namespace A224334

/-- `3*(A271625(n+1)+4)` -/
def P9566118995102301977.Spec : Prop :=
  ∀ n, P9566118995102301977.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P2817064271465701983

`3*(A152811(n+1)+5)`
-/

namespace A224334.P2817064271465701983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A152811 (n + 1) + 5)

end

end A224334.P2817064271465701983

namespace A224334

/-- `3*(A152811(n+1)+5)` -/
def P2817064271465701983.Spec : Prop :=
  ∀ n, P2817064271465701983.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P12750033390912657030

`or(1, A067726(n+1)+2)`
-/

namespace A224334.P12750033390912657030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067726 (n + 1) + 2)

end

end A224334.P12750033390912657030

namespace A224334

/-- `or(1, A067726(n+1)+2)` -/
def P12750033390912657030.Spec : Prop :=
  ∀ n, P12750033390912657030.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P1018726023346975549

`Δ[n*A000217(2*(n+2))]`
-/

namespace A224334.P1018726023346975549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224334.P1018726023346975549

namespace A224334

/-- `Δ[n*A000217(2*(n+2))]` -/
def P1018726023346975549.Spec : Prop :=
  ∀ n, P1018726023346975549.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P8966857240088270997

`3*A056220(n+2)`
-/

namespace A224334.P8966857240088270997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A056220 (n + 2)

end

end A224334.P8966857240088270997

namespace A224334

/-- `3*A056220(n+2)` -/
def P8966857240088270997.Spec : Prop :=
  ∀ n, P8966857240088270997.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P5463758191943341455

`Δ[3*A131423(n+1)]`
-/

namespace A224334.P5463758191943341455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224334.P5463758191943341455

namespace A224334

/-- `Δ[3*A131423(n+1)]` -/
def P5463758191943341455.Spec : Prop :=
  ∀ n, P5463758191943341455.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P18027268377728428777

`Δ[A192848(n+1)/4]`
-/

namespace A224334.P18027268377728428777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192848 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224334.P18027268377728428777

namespace A224334

/-- `Δ[A192848(n+1)/4]` -/
def P18027268377728428777.Spec : Prop :=
  ∀ n, P18027268377728428777.a n = (A224334 (n + 1) : ℚ)

end A224334

/-! ## A224334.P9781612263413472300

`3*A047838(2*(n+2))`
-/

namespace A224334.P9781612263413472300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047838 (2 * (n + 2))

end

end A224334.P9781612263413472300

namespace A224334

/-- `3*A047838(2*(n+2))` -/
def P9781612263413472300.Spec : Prop :=
  ∀ n, P9781612263413472300.a n = A224334 (n + 1)

end A224334

/-!
# A224335: Number of idempotent 4X4 0..n matrices of rank 3.

The programs for A224335, the canonical program `A224335.P7280615516088349059` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224335 has offset 1).

The definition of A224335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224335.P7280615516088349059

`8*(n+1)^3+24*(n+1)²+24*(n+1)+4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224335

/-- `8*(n+1)^3+24*(n+1)²+24*(n+1)+4` -/
def P7280615516088349059.Spec : Prop :=
  ∀ n, (P7280615516088349059.a n : ℤ) = A224335 (n + 1)

theorem P7280615516088349059.correct : P7280615516088349059.Spec := by
  intro n
  simp only [A224335, Nat.add_sub_cancel]

end A224335

/-! ## A224335.P3642451458416481416

`2*(Δ[lcm(n+1, n+2)²]-2)`
-/

namespace A224335.P3642451458416481416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2)

end

end A224335.P3642451458416481416

namespace A224335

/-- `2*(Δ[lcm(n+1, n+2)²]-2)` -/
def P3642451458416481416.Spec : Prop :=
  ∀ n, P3642451458416481416.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P5371026267096162484

`4*(A193608(n+1)+n)`
-/

namespace A224335.P5371026267096162484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A193608 (n + 1) + (n : ℤ))

end

end A224335.P5371026267096162484

namespace A224335

/-- `4*(A193608(n+1)+n)` -/
def P5371026267096162484.Spec : Prop :=
  ∀ n, P5371026267096162484.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P14428361398346551998

`4*(Δ[C(∑[2*(n+1)], 2)]+1+n)`
-/

namespace A224335.P14428361398346551998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ))

end

end A224335.P14428361398346551998

namespace A224335

/-- `4*(Δ[C(∑[2*(n+1)], 2)]+1+n)` -/
def P14428361398346551998.Spec : Prop :=
  ∀ n, P14428361398346551998.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P2036542282321676108

`2*(A184536(n+2)-2)`
-/

namespace A224335.P2036542282321676108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184536 (n + 2) - 2)

end

end A224335.P2036542282321676108

namespace A224335

/-- `2*(A184536(n+2)-2)` -/
def P2036542282321676108.Spec : Prop :=
  ∀ n, P2036542282321676108.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P1539165149470316689

`Δ[2*A165568(n+1)]`
-/

namespace A224335.P1539165149470316689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224335.P1539165149470316689

namespace A224335

/-- `Δ[2*A165568(n+1)]` -/
def P1539165149470316689.Spec : Prop :=
  ∀ n, P1539165149470316689.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P6172757429440252433

`2*(A033430(n+2)-2)`
-/

namespace A224335.P6172757429440252433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033430 (n + 2) - 2)

end

end A224335.P6172757429440252433

namespace A224335

/-- `2*(A033430(n+2)-2)` -/
def P6172757429440252433.Spec : Prop :=
  ∀ n, P6172757429440252433.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P7992033866053194688

`2*(A035328(n+2)+n)`
-/

namespace A224335.P7992033866053194688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035328 (n + 2) + (n : ℤ))

end

end A224335.P7992033866053194688

namespace A224335

/-- `2*(A035328(n+2)+n)` -/
def P7992033866053194688.Spec : Prop :=
  ∀ n, P7992033866053194688.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P12300051919469856591

`A030653(2*n+3)`
-/

namespace A224335.P12300051919469856591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (2 * n + 3)

end

end A224335.P12300051919469856591

namespace A224335

/-- `A030653(2*n+3)` -/
def P12300051919469856591.Spec : Prop :=
  ∀ n, P12300051919469856591.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P13537135679860499322

`record[A331433(n+2)+n]`
-/

namespace A224335.P13537135679860499322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331433 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224335.P13537135679860499322

namespace A224335

/-- `record[A331433(n+2)+n]` -/
def P13537135679860499322.Spec : Prop :=
  ∀ n, P13537135679860499322.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P3662781146745066851

`abs(A000578(2*(n+2))-4)`
-/

namespace A224335.P3662781146745066851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 (2 * (n + 2)) - 4|

end

end A224335.P3662781146745066851

namespace A224335

/-- `abs(A000578(2*(n+2))-4)` -/
def P3662781146745066851.Spec : Prop :=
  ∀ n, P3662781146745066851.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P11917476926300442619

`or(4, ∑[A005897(2*n+3)])`
-/

namespace A224335.P11917476926300442619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224335.P11917476926300442619

namespace A224335

/-- `or(4, ∑[A005897(2*n+3)])` -/
def P11917476926300442619.Spec : Prop :=
  ∀ n, P11917476926300442619.a n = A224335 (n + 1)

end A224335

/-!
# A224336: Number of idempotent 5 X 5 0..n matrices of rank 4.

The programs for A224336, the canonical program `A224336.P17072963432598065912` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224336 has offset 1).

The definition of A224336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224336.P17072963432598065912

`10*(n+1)^4+40*(n+1)^3+60*(n+1)²+40*(n+1)+5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224336

/-- `10*(n+1)^4+40*(n+1)^3+60*(n+1)²+40*(n+1)+5` -/
def P17072963432598065912.Spec : Prop :=
  ∀ n, (P17072963432598065912.a n : ℤ) = A224336 (n + 1)

theorem P17072963432598065912.correct : P17072963432598065912.Spec := by
  intro n
  simp only [A224336, Nat.add_sub_cancel]

end A224336

/-! ## A224336.P7573547636170198586

`record[10*(2-n)²²-5]`
-/

namespace A224336.P7573547636170198586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((2 - (n : ℤ)) ^ 2) ^ 2 - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224336.P7573547636170198586

namespace A224336

/-- `record[10*(2-n)²²-5]` -/
def P7573547636170198586.Spec : Prop :=
  ∀ n, P7573547636170198586.a n = A224336 (n + 1)

end A224336

/-! ## A224336.P7688591702110233621

`lcm(5, 1-2*(n+2)²²)`
-/

namespace A224336.P7688591702110233621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (2 * ((n + 2) ^ 2) ^ 2 : ℤ))

end

end A224336.P7688591702110233621

namespace A224336

/-- `lcm(5, 1-2*(n+2)²²)` -/
def P7688591702110233621.Spec : Prop :=
  ∀ n, (P7688591702110233621.a n : ℤ) = A224336 (n + 1)

end A224336

/-! ## A224336.P7422384997268406788

`abs(A210369(2*n+3)-5)`
-/

namespace A224336.P7422384997268406788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210369 (2 * n + 3) - 5|

end

end A224336.P7422384997268406788

namespace A224336

/-- `abs(A210369(2*n+3)-5)` -/
def P7422384997268406788.Spec : Prop :=
  ∀ n, P7422384997268406788.a n = A224336 (n + 1)

end A224336

/-! ## A224336.P8321724963665678491

`5*(A140153(2*n+3)+n+1)`
-/

namespace A224336.P8321724963665678491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A140153 (2 * n + 3) + (n + 1 : ℤ))

end

end A224336.P8321724963665678491

namespace A224336

/-- `5*(A140153(2*n+3)+n+1)` -/
def P8321724963665678491.Spec : Prop :=
  ∀ n, P8321724963665678491.a n = A224336 (n + 1)

end A224336

/-! ## A224336.P4720674828152876533

`5*A056220((n+2)²)`
-/

namespace A224336.P4720674828152876533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A056220 ((n + 2) ^ 2)

end

end A224336.P4720674828152876533

namespace A224336

/-- `5*A056220((n+2)²)` -/
def P4720674828152876533.Spec : Prop :=
  ∀ n, P4720674828152876533.a n = A224336 (n + 1)

end A224336

/-! ## A224336.P10038796530941121053

`5*A266448(A266448(2*n+3))`
-/

namespace A224336.P10038796530941121053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A266448 (A266448 (2 * n + 3)).toNat

end

end A224336.P10038796530941121053

namespace A224336

/-- `5*A266448(A266448(2*n+3))` -/
def P10038796530941121053.Spec : Prop :=
  ∀ n, P10038796530941121053.a n = A224336 (n + 1)

end A224336

/-!
# A224337: Number of idempotent 6X6 0..n matrices of rank 5.

The programs for A224337, the canonical program `A224337.P1608292650793405893` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224337 has offset 1).

The definition of A224337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224337.P1608292650793405893

`12*(n+1)^5+60*(n+1)^4+120*(n+1)^3+120*(n+1)²+60*(n+1)+6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224337

/-- `12*(n+1)^5+60*(n+1)^4+120*(n+1)^3+120*(n+1)²+60*(n+1)+6` -/
def P1608292650793405893.Spec : Prop :=
  ∀ n, (P1608292650793405893.a n : ℤ) = A224337 (n + 1)

theorem P1608292650793405893.correct : P1608292650793405893.Spec := by
  intro n
  simp only [A224337, Nat.add_sub_cancel]

end A224337

/-! ## A224337.P2805453568558175969

`Δ[A163832(A028387(n))+A003215(n)]`
-/

namespace A224337.P2805453568558175969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163832 (A028387 n).toNat + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224337.P2805453568558175969

namespace A224337

/-- `Δ[A163832(A028387(n))+A003215(n)]` -/
def P2805453568558175969.Spec : Prop :=
  ∀ n, P2805453568558175969.a n = A224337 (n + 1)

end A224337

/-! ## A224337.P8629208337393890962

`A224333(A167499(n+4)+1)`
-/

namespace A224337.P8629208337393890962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224333 (A167499 (n + 4) + 1).toNat

end

end A224337.P8629208337393890962

namespace A224337

/-- `A224333(A167499(n+4)+1)` -/
def P8629208337393890962.Spec : Prop :=
  ∀ n, P8629208337393890962.a n = A224337 (n + 1)

end A224337

/-! ## A224337.P13312795995062290821

`A224333(A000217(n+5)+6)`
-/

namespace A224337.P13312795995062290821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224333 (A000217 (n + 5) + 6).toNat

end

end A224337.P13312795995062290821

namespace A224337

/-- `A224333(A000217(n+5)+6)` -/
def P13312795995062290821.Spec : Prop :=
  ∀ n, P13312795995062290821.a n = A224337 (n + 1)

end A224337

/-! ## A224337.P16808354163966677585

`A224333(A002620(n+2)+A002620(n+9))`
-/

namespace A224337.P16808354163966677585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224333 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A224337.P16808354163966677585

namespace A224337

/-- `A224333(A002620(n+2)+A002620(n+9))` -/
def P16808354163966677585.Spec : Prop :=
  ∀ n, P16808354163966677585.a n = A224337 (n + 1)

end A224337

/-!
# A224338: Number of idempotent 7 X 7 0..n matrices of rank 6.

The programs for A224338, the canonical program `A224338.P11201384851262961907` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224338 has offset 1).

The definition of A224338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224338.P11201384851262961907

`14*(n+2)^6-7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224338

/-- `14*(n+2)^6-7` -/
def P11201384851262961907.Spec : Prop :=
  ∀ n, P11201384851262961907.a n = A224338 (n + 1)

theorem P11201384851262961907.correct : P11201384851262961907.Spec := by
  intro n
  simp only [A224338, Nat.add_sub_cancel]

end A224338

/-! ## A224338.P17450831357687120492

`7*(A106318(n+2)-1)`
-/

namespace A224338.P17450831357687120492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A106318 (n + 2) - 1)

end

end A224338.P17450831357687120492

namespace A224338

/-- `7*(A106318(n+2)-1)` -/
def P17450831357687120492.Spec : Prop :=
  ∀ n, P17450831357687120492.a n = A224338 (n + 1)

end A224338

/-! ## A224338.P3207183159266832319

`7*(2*A123866(n+2)+1)`
-/

namespace A224338.P3207183159266832319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (2 * A123866 (n + 2) + 1)

end

end A224338.P3207183159266832319

namespace A224338

/-- `7*(2*A123866(n+2)+1)` -/
def P3207183159266832319.Spec : Prop :=
  ∀ n, P3207183159266832319.a n = A224338 (n + 1)

end A224338

/-! ## A224338.P3055174534233194823

`A224333(A000217(n+6)+7)`
-/

namespace A224338.P3055174534233194823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224333 (A000217 (n + 6) + 7).toNat

end

end A224338.P3055174534233194823

namespace A224338

/-- `A224333(A000217(n+6)+7)` -/
def P3055174534233194823.Spec : Prop :=
  ∀ n, P3055174534233194823.a n = A224338 (n + 1)

end A224338

/-! ## A224338.P15225494334145818975

`A224333(A052905(n+3)+12)`
-/

namespace A224338.P15225494334145818975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224333 (A052905 (n + 3) + 12).toNat

end

end A224338.P15225494334145818975

namespace A224338

/-- `A224333(A052905(n+3)+12)` -/
def P15225494334145818975.Spec : Prop :=
  ∀ n, P15225494334145818975.a n = A224338 (n + 1)

end A224338

/-!
# A224339: Absolute difference between sum of odd divisors of n^2 and sum of even divisors of n^2.

The programs for A224339, the canonical program `A224339.P7859266464313089744` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224339 has offset 1).

The definition of A224339 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113184, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224339.P7859266464313089744

`A113184((n+1)²)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A224339

/-- `A113184((n+1)²)` -/
def P7859266464313089744.Spec : Prop :=
  ∀ n, P7859266464313089744.a n = A224339 (n + 1)

theorem P7859266464313089744.correct : P7859266464313089744.Spec := by
  intro n
  simp only [A224339, Nat.add_sub_cancel]

end A224339

/-! ## A224339.P1284918053879070552

`(3*A065764(n+1))%A195585(n+1)`
-/

namespace A224339.P1284918053879070552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A065764 (n + 1)) (A195585 (n + 1))

end

end A224339.P1284918053879070552

namespace A224339

/-- `(3*A065764(n+1))%A195585(n+1)` -/
def P1284918053879070552.Spec : Prop :=
  ∀ n, P1284918053879070552.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P8965460261774742691

`(3*A065765(n+1))%A195585(n+1)`
-/

namespace A224339.P8965460261774742691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A065765 (n + 1)) (A195585 (n + 1))

end

end A224339.P8965460261774742691

namespace A224339

/-- `(3*A065765(n+1))%A195585(n+1)` -/
def P8965460261774742691.Spec : Prop :=
  ∀ n, P8965460261774742691.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P1591198563337657992

`abs(∑{d}[(n+1)², #*(-1)^#])`
-/

namespace A224339.P1591198563337657992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (-1) ^ d|

end

end A224339.P1591198563337657992

namespace A224339

/-- `abs(∑{d}[(n+1)², #*(-1)^#])` -/
def P1591198563337657992.Spec : Prop :=
  ∀ n, P1591198563337657992.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P7486813475242722305

`A137933(n+1)-A058344(A137933(n+1))`
-/

namespace A224339.P7486813475242722305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137933 (n + 1) - A058344 (A137933 (n + 1)).toNat

end

end A224339.P7486813475242722305

namespace A224339

/-- `A137933(n+1)-A058344(A137933(n+1))` -/
def P7486813475242722305.Spec : Prop :=
  ∀ n, P7486813475242722305.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P9656077407414723463

`abs(A002129((n+1)²))`
-/

namespace A224339.P9656077407414723463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002129 ((n + 1) ^ 2)|

end

end A224339.P9656077407414723463

namespace A224339

/-- `abs(A002129((n+1)²))` -/
def P9656077407414723463.Spec : Prop :=
  ∀ n, P9656077407414723463.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P13131541125188047680

`A215947(A129194(n+1))`
-/

namespace A224339.P13131541125188047680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A129194 (n + 1)).toNat

end

end A224339.P13131541125188047680

namespace A224339

/-- `A215947(A129194(n+1))` -/
def P13131541125188047680.Spec : Prop :=
  ∀ n, P13131541125188047680.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P17149277907238053874

`A215947(A026741((n+1)²))`
-/

namespace A224339.P17149277907238053874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A026741 ((n + 1) ^ 2)).toNat

end

end A224339.P17149277907238053874

namespace A224339

/-- `A215947(A026741((n+1)²))` -/
def P17149277907238053874.Spec : Prop :=
  ∀ n, P17149277907238053874.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P6675876484469375459

`gcd(A000038(n), A002129((n+1)²))`
-/

namespace A224339.P6675876484469375459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002129 ((n + 1) ^ 2))

end

end A224339.P6675876484469375459

namespace A224339

/-- `gcd(A000038(n), A002129((n+1)²))` -/
def P6675876484469375459.Spec : Prop :=
  ∀ n, (P6675876484469375459.a n : ℤ) = A224339 (n + 1)

end A224339

/-! ## A224339.P1278109425317787323

`A002129((n+1)²)*A034947(n²+5)`
-/

namespace A224339.P1278109425317787323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 ((n + 1) ^ 2) * A034947 (n ^ 2 + 5)

end

end A224339.P1278109425317787323

namespace A224339

/-- `A002129((n+1)²)*A034947(n²+5)` -/
def P1278109425317787323.Spec : Prop :=
  ∀ n, P1278109425317787323.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P15925519416037025917

`A215947((A002265(2*n)+A000217(n))*gcd(2, n)+1)`
-/

namespace A224339.P15925519416037025917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 ((A002265 (2 * n) + A000217 n) * (Nat.gcd 2 n : ℤ) + 1).toNat

end

end A224339.P15925519416037025917

namespace A224339

/-- `A215947((A002265(2*n)+A000217(n))*gcd(2, n)+1)` -/
def P15925519416037025917.Spec : Prop :=
  ∀ n, P15925519416037025917.a n = A224339 (n + 1)

end A224339

/-!
# A224340: G.f.: exp( Sum_{n>=1} A113184(n^2)*x^n/n ), where A113184(n) = difference between sum of odd divisors of n and sum of even divisors of n.

The programs for A224340, there is no canonical definition to state claims against.
-/

/-! ## A224340.P2517537363424431696

`A247428(A243082(n))`
-/

namespace A224340.P2517537363424431696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247428 (A243082 n).toNat

end

end A224340.P2517537363424431696

/-! ## A224340.P9302273968915522526

`A247428(A300520(n))`
-/

namespace A224340.P9302273968915522526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247428 (A300520 n).toNat

end

end A224340.P9302273968915522526

/-! ## A224340.P15365900297369723289

`A006951(n)+A001221(A335638(n))`
-/

namespace A224340.P15365900297369723289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006951 n + A001221 (A335638 n).toNat

end

end A224340.P15365900297369723289

/-! ## A224340.P15185094620121830744

`A365073(n)+A329697(A090091(n))`
-/

namespace A224340.P15185094620121830744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365073 n + A329697 (A090091 n).toNat

end

end A224340.P15185094620121830744

/-!
# A224341: Apparently solves the identity: Find sequence A that represents the numbers of ordered compositions of n into the elements of the set {B}; and vice versa.

The programs for A224341, there is no canonical definition to state claims against.
-/

/-! ## A224341.P12980794231955361796

`A235684(n)+A060065(Δ[A005907(n+1)])`
-/

namespace A224341.P12980794231955361796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235684 n + A060065 (f1 (n + 1) - f1 n).toNat

end

end A224341.P12980794231955361796

/-! ## A224341.P3918932395770787769

`A001462(A299166(n+1)+A079977(n+1))`
-/

namespace A224341.P3918932395770787769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A299166 (n + 1) + A079977 (n + 1)).toNat

end

end A224341.P3918932395770787769

/-! ## A224341.P9080222356629665749

`A073188(A149858(n))`
-/

namespace A224341.P9080222356629665749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A149858 n).toNat

end

end A224341.P9080222356629665749

/-! ## A224341.P9156645188222519650

`A000267(A248957(n))`
-/

namespace A224341.P9156645188222519650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A248957 n).toNat

end

end A224341.P9156645188222519650

/-! ## A224341.P1937646569327648529

`A079958(A032555(n+1))`
-/

namespace A224341.P1937646569327648529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079958 (A032555 (n + 1)).toNat

end

end A224341.P1937646569327648529

/-!
# A224342: Apparently solves the identity: find sequence B that represents the numbers of ordered compositions of n using the terms of A, and vice versa.

The programs for A224342, there is no canonical definition to state claims against.
-/

/-! ## A224342.P8889511094948168409

`A357451(A187829(n+1))`
-/

namespace A224342.P8889511094948168409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357451 (A187829 (n + 1)).toNat

end

end A224342.P8889511094948168409

/-! ## A224342.P4290798231649287545

`Δ[A023443(∑[A357451(n)])]`
-/

namespace A224342.P4290798231649287545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224342.P4290798231649287545

/-! ## A224342.P18282465476365717395

`Δ[A028310(∑[A357451(n)])]`
-/

namespace A224342.P18282465476365717395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224342.P18282465476365717395

/-! ## A224342.P17324140423442086758

`A032742(2*A357451(n+1))`
-/

namespace A224342.P17324140423442086758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A357451 (n + 1)).toNat

end

end A224342.P17324140423442086758

/-! ## A224342.P4244564389708569148

`A357451(n+1)%A219044(3*n+2)`
-/

namespace A224342.P4244564389708569148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357451 (n + 1)) (A219044 (3 * n + 2))

end

end A224342.P4244564389708569148

/-!
# A224345: Number of closed normal forms of size n in lambda calculus with size 0 for the variables.

The programs for A224345, there is no canonical definition to state claims against.
-/

/-! ## A224345.P6600157432670682276

`A285627(A139761(n)+A059099(n))`
-/

namespace A224345.P6600157432670682276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (A139761 n + A059099 n).toNat

end

end A224345.P6600157432670682276

/-!
# A224346: Numbers n such that Sum_{i=1..k} 1/p(i) + Sum_{i=1..j} 1/d(i) is an integer, where p are the prime factors of n, counted with multiplicity, and d its divisors.

The programs for A224346, there is no canonical definition to state claims against.
-/

/-! ## A224346.P7063847242795015523

`(n+1)*A002973((n+1)^(n+1))`
-/

namespace A224346.P7063847242795015523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002973 ((n + 1) ^ (n + 1))

end

end A224346.P7063847242795015523

/-!
# A224347: Number of n X n 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224347, there is no canonical definition to state claims against.
-/

/-! ## A224347.P8074285495990315003

`A224353(∑[4*n]+1)`
-/

namespace A224347.P8074285495990315003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224347.P8074285495990315003

/-! ## A224347.P16316153984985036762

`record[A003982(n)*A224353(n+1)]`
-/

namespace A224347.P16316153984985036762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224347.P16316153984985036762

/-! ## A224347.P13215267121944626325

`record[gcd(A224353(n+1), A285723(n+1))]`
-/

namespace A224347.P13215267121944626325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224353 (n + 1)) (A285723 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224347.P13215267121944626325

/-! ## A224347.P17979061362715702488

`A224353(A001844(n))+A185264(n)`
-/

namespace A224347.P17979061362715702488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A001844 n).toNat + A185264 n

end

end A224347.P17979061362715702488

/-! ## A224347.P14448019048472173511

`lcm(A112865(n), A224353(A001844(n)))`
-/

namespace A224347.P14448019048472173511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112865 n) (A224353 (A001844 n).toNat)

end

end A224347.P14448019048472173511

/-!
# A224348: Number of nX3 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224348, there is no canonical definition to state claims against.
-/

/-! ## A224348.P7537435289921545220

`A224353(∑[n+3]+1)`
-/

namespace A224348.P7537435289921545220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224348.P7537435289921545220

/-! ## A224348.P14420153777826590505

`lcm(2, A224353(A034856(n+2)))`
-/

namespace A224348.P14420153777826590505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224353 (A034856 (n + 2)).toNat)

end

end A224348.P14420153777826590505

/-! ## A224348.P4783884123309188517

`or(A000038(n), A224353(A034856(n+2)))`
-/

namespace A224348.P4783884123309188517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A224353 (A034856 (n + 2)).toNat)

end

end A224348.P4783884123309188517

/-! ## A224348.P9453795346894607912

`A224353(A034856(n+2))+∑{p}[A025427(n), #]`
-/

namespace A224348.P9453795346894607912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A034856 (n + 2)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A224348.P9453795346894607912

/-! ## A224348.P17137095264278790735

`A007318(C(2, n+2))*A224353(A034856(n+2))`
-/

namespace A224348.P17137095264278790735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A224353 (A034856 (n + 2)).toNat

end

end A224348.P17137095264278790735

/-!
# A224349: Number of n X 4 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224349, there is no canonical definition to state claims against.
-/

/-! ## A224349.P14123177969360499055

`A224353(∑[n+4]+3)`
-/

namespace A224349.P14123177969360499055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224349.P14123177969360499055

/-! ## A224349.P12819297493062281166

`record[A224353(A141214(abs(1-n)))]`
-/

namespace A224349.P12819297493062281166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A141214 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224349.P12819297493062281166

/-! ## A224349.P8219810996397969509

`or(A000007(n), A224353(A055998(n+2)))`
-/

namespace A224349.P8219810996397969509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224353 (A055998 (n + 2)).toNat)

end

end A224349.P8219810996397969509

/-! ## A224349.P4979815024797215932

`A057427(n+1)*A224353(A055998(n+2))`
-/

namespace A224349.P4979815024797215932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A224353 (A055998 (n + 2)).toNat

end

end A224349.P4979815024797215932

/-! ## A224349.P1455152134972962866

`A224353(A141214(n+1))%A224350(n+1)`
-/

namespace A224349.P1455152134972962866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224353 (A141214 (n + 1)).toNat) (A224350 (n + 1))

end

end A224349.P1455152134972962866

/-!
# A224350: Number of nX5 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224350, there is no canonical definition to state claims against.
-/

/-! ## A224350.P14675611259229975060

`A224353(∑[n+5]+6)`
-/

namespace A224350.P14675611259229975060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A224350.P14675611259229975060

/-! ## A224350.P12138654149935846526

`A010894(n)!*A224353(A046691(n+3))`
-/

namespace A224350.P12138654149935846526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010894 (n + 21)).toNat : ℤ) * A224353 (A046691 (n + 3)).toNat

end

end A224350.P12138654149935846526

/-! ## A224350.P11895729858004009731

`A007318(C(n, 2))*A224353(A046691(n+3))`
-/

namespace A224350.P11895729858004009731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224353 (A046691 (n + 3)).toNat

end

end A224350.P11895729858004009731

/-! ## A224350.P8313887745218843238

`A000041(C(2, n+2))*A224353(A046691(n+3))`
-/

namespace A224350.P8313887745218843238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224353 (A046691 (n + 3)).toNat

end

end A224350.P8313887745218843238

/-! ## A224350.P2276549364231028124

`A014963(A000132(n))*A224353(A046691(n+3))`
-/

namespace A224350.P2276549364231028124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000132 n).toNat * A224353 (A046691 (n + 3)).toNat

end

end A224350.P2276549364231028124

/-!
# A224351: Number of nX6 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224351, there is no canonical definition to state claims against.
-/

/-! ## A224351.P4159605444119488723

`A224353(A052905(n+3))`
-/

namespace A224351.P4159605444119488723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A052905 (n + 3)).toNat

end

end A224351.P4159605444119488723

/-! ## A224351.P613593378271839765

`A224353(eq[3, A219347(n)])`
-/

namespace A224351.P613593378271839765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224351.P613593378271839765

/-! ## A224351.P1405527502088185320

`A224353(A000217(n+6)-5)`
-/

namespace A224351.P1405527502088185320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000217 (n + 6) - 5).toNat

end

end A224351.P1405527502088185320

/-! ## A224351.P1730845716488328807

`A224353(A000124(n+6)-6)`
-/

namespace A224351.P1730845716488328807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000124 (n + 6) - 6).toNat

end

end A224351.P1730845716488328807

/-! ## A224351.P9091064980782848830

`A224353(eq[6, A004736(n+1)]+1)`
-/

namespace A224351.P9091064980782848830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224351.P9091064980782848830

/-!
# A224352: Number of nX7 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224352, there is no canonical definition to state claims against.
-/

/-! ## A224352.P8448632941078600279

`A224353(A055999(n+4))`
-/

namespace A224352.P8448632941078600279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A055999 (n + 4)).toNat

end

end A224352.P8448632941078600279

/-! ## A224352.P4833039317286488114

`A224353(eq[4, A219347(n)])`
-/

namespace A224352.P4833039317286488114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224352.P4833039317286488114

/-! ## A224352.P43639914541030053

`A224353(eq[6, A193592(n)])`
-/

namespace A224352.P43639914541030053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224352.P43639914541030053

/-! ## A224352.P5397590123044089770

`A224353(A000217(n+7)-6)`
-/

namespace A224352.P5397590123044089770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000217 (n + 7) - 6).toNat

end

end A224352.P5397590123044089770

/-! ## A224352.P9065242468309629884

`A224353(eq[7, A200370(n+1)])`
-/

namespace A224352.P9065242468309629884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224352.P9065242468309629884

/-!
# A224354: Number of 3 X n 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224354, there is no canonical definition to state claims against.
-/

/-! ## A224354.P13112124328883720040

`A224353(∑[n+2]+4)`
-/

namespace A224354.P13112124328883720040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224354.P13112124328883720040

/-! ## A224354.P8800758065974652493

`A224353(A167614(n+1))+A025469(n)`
-/

namespace A224354.P8800758065974652493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A167614 (n + 1)).toNat + A025469 n

end

end A224354.P8800758065974652493

/-! ## A224354.P300140260187511866

`A235044(n)+A224353(A055998(n)+6)`
-/

namespace A224354.P300140260187511866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A224353 (A055998 n + 6).toNat

end

end A224354.P300140260187511866

/-! ## A224354.P2556155789236587851

`or(A000007(n), A224353(A167614(n+1)))`
-/

namespace A224354.P2556155789236587851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224353 (A167614 (n + 1)).toNat)

end

end A224354.P2556155789236587851

/-! ## A224354.P2333220815649387605

`A224353(A055998(n)+6)%A224355(n+1)`
-/

namespace A224354.P2333220815649387605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224353 (A055998 n + 6).toNat) (A224355 (n + 1))

end

end A224354.P2333220815649387605

/-!
# A224355: Number of 4 X n 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224355, there is no canonical definition to state claims against.
-/

/-! ## A224355.P2681725128393929373

`A224353(A141214(n)+7)`
-/

namespace A224355.P2681725128393929373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A141214 n + 7).toNat

end

end A224355.P2681725128393929373

/-! ## A224355.P9175120823264753680

`A224353(A052905(n)+9)`
-/

namespace A224355.P9175120823264753680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A052905 n + 9).toNat

end

end A224355.P9175120823264753680

/-! ## A224355.P12252784641484272147

`A224353(A055999(n)+10)`
-/

namespace A224355.P12252784641484272147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A055999 n + 10).toNat

end

end A224355.P12252784641484272147

/-! ## A224355.P14115540540545562564

`A224353(A167614(n+2)+1)`
-/

namespace A224355.P14115540540545562564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A167614 (n + 2) + 1).toNat

end

end A224355.P14115540540545562564

/-! ## A224355.P8547970733873426537

`A224353(A166136(n+2)-2)`
-/

namespace A224355.P8547970733873426537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A166136 (n + 2) - 2).toNat

end

end A224355.P8547970733873426537

/-!
# A224356: Number of 5Xn 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224356, there is no canonical definition to state claims against.
-/

/-! ## A224356.P15959304932885681822

`A224353(A167499(n+3))`
-/

namespace A224356.P15959304932885681822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A167499 (n + 3)).toNat

end

end A224356.P15959304932885681822

/-! ## A224356.P8850995768186700681

`A224353(A056000(n)+15)`
-/

namespace A224356.P8850995768186700681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A056000 n + 15).toNat

end

end A224356.P8850995768186700681

/-! ## A224356.P11011607258543049263

`A224353(A141214(n+1)+8)`
-/

namespace A224356.P11011607258543049263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A141214 (n + 1) + 8).toNat

end

end A224356.P11011607258543049263

/-! ## A224356.P8858498510800102621

`A224353(A161680(n+5)+5)`
-/

namespace A224356.P8858498510800102621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A161680 (n + 5) + 5).toNat

end

end A224356.P8858498510800102621

/-! ## A224356.P6219431772753230583

`A224353(Δ[A000292(n+4)]-n)`
-/

namespace A224356.P6219431772753230583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A224356.P6219431772753230583

/-!
# A224357: Number of 6Xn 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224357, there is no canonical definition to state claims against.
-/

/-! ## A224357.P2778802183556403728

`A224353(A166136(n+4))`
-/

namespace A224357.P2778802183556403728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A166136 (n + 4)).toNat

end

end A224357.P2778802183556403728

/-! ## A224357.P16863010256453407042

`A224353(A000124(n+5)+5)`
-/

namespace A224357.P16863010256453407042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000124 (n + 5) + 5).toNat

end

end A224357.P16863010256453407042

/-! ## A224357.P16771162925482986185

`A224353(A000096(n+4)+7)`
-/

namespace A224357.P16771162925482986185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000096 (n + 4) + 7).toNat

end

end A224357.P16771162925482986185

/-! ## A224357.P9684997636891576252

`A224353(A000217(n+5)+6)`
-/

namespace A224357.P9684997636891576252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000217 (n + 5) + 6).toNat

end

end A224357.P9684997636891576252

/-! ## A224357.P2197835577463140017

`A224353(Δ[A000292(n+4)]+6)`
-/

namespace A224357.P2197835577463140017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (f1 (n + 1) - f1 n + 6).toNat

end

end A224357.P2197835577463140017

/-!
# A224358: Number of 7Xn 0..2 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224358, there is no canonical definition to state claims against.
-/

/-! ## A224358.P3761315545882347811

`A224353(A167487(n+5))`
-/

namespace A224358.P3761315545882347811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A167487 (n + 5)).toNat

end

end A224358.P3761315545882347811

/-! ## A224358.P9694297989465409061

`A224353(eq[11, A066657(n)])`
-/

namespace A224358.P9694297989465409061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224358.P9694297989465409061

/-! ## A224358.P4808012343865113633

`A224353(A077169(n+7)+2)`
-/

namespace A224358.P4808012343865113633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A077169 (n + 7) + 2).toNat

end

end A224358.P4808012343865113633

/-! ## A224358.P5477574891497955432

`A224353(A000217(n+6)+7)`
-/

namespace A224358.P5477574891497955432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A000217 (n + 6) + 7).toNat

end

end A224358.P5477574891497955432

/-! ## A224358.P451680557729449079

`A224353(eq[8, A131818(n+1)])`
-/

namespace A224358.P451680557729449079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224358.P451680557729449079

/-!
# A224360: Triangle read by rows: T(n,k) = -1 + length of the Collatz sequence of -(n-k)/(2k+1) for n >= 1 and k >= 0.

The programs for A224360, there is no canonical definition to state claims against.
-/

/-! ## A224360.P13743390573092703183

`A224361(n+1)-1`
-/

namespace A224360.P13743390573092703183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224361 (n + 1) - 1

end

end A224360.P13743390573092703183

/-! ## A224360.P15158406488257558458

`A002837(A224361(n+1))`
-/

namespace A224360.P15158406488257558458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A224361 (n + 1)).toNat

end

end A224360.P15158406488257558458

/-! ## A224360.P3534312783706402631

`A057918(A224361(n+1)²)`
-/

namespace A224360.P3534312783706402631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A224361 (n + 1) ^ 2).toNat

end

end A224360.P3534312783706402631

/-! ## A224360.P8188292682321976009

`A088226(A224361(n+1)²)`
-/

namespace A224360.P8188292682321976009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A224361 (n + 1) ^ 2).toNat

end

end A224360.P8188292682321976009

/-! ## A224360.P16072491680341487811

`A214526(A224361(n+1)²)`
-/

namespace A224360.P16072491680341487811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A224361 (n + 1) ^ 2).toNat

end

end A224360.P16072491680341487811

/-! ## A224360.P5283125987522668663

`A337108(A224361(n+1)²)`
-/

namespace A224360.P5283125987522668663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A224361 (n + 1) ^ 2).toNat

end

end A224360.P5283125987522668663

/-! ## A224360.P12866767261630652335

`A023444(A224361(n+1)+1)`
-/

namespace A224360.P12866767261630652335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A224361 (n + 1) + 1).toNat

end

end A224360.P12866767261630652335

/-! ## A224360.P15031040339761288617

`A289207(A224361(n+1)+1)`
-/

namespace A224360.P15031040339761288617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A224361 (n + 1) + 1).toNat

end

end A224360.P15031040339761288617

/-! ## A224360.P1947224620893331779

`A140106(2*A224361(n+1))`
-/

namespace A224360.P1947224620893331779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A224361 (n + 1)).toNat

end

end A224360.P1947224620893331779

/-! ## A224360.P10930376299386258078

`A023443(A224361(n+1)%(n+4))`
-/

namespace A224360.P10930376299386258078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A224361 (n + 1)) (n + 4 : ℤ)).toNat

end

end A224360.P10930376299386258078

/-!
# A224361: The length of the Collatz (3k+1) sequence for all odd negative fractions and integers.

The programs for A224361, there is no canonical definition to state claims against.
-/

/-! ## A224361.P10555498019822466656

`A224360(n+1)+1`
-/

namespace A224361.P10555498019822466656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224360 (n + 1) + 1

end

end A224361.P10555498019822466656

/-!
# A224362: Number of partitions of n into a prime and a triangular number.

The programs for A224362, there is no canonical definition to state claims against.
-/

/-! ## A224362.P13753534200204638476

`A132399(n)-char[∑[n]]`
-/

namespace A224362.P13753534200204638476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224362.P13753534200204638476

/-! ## A224362.P5211586799922454345

`abs(A010054(n)-A132399(n))`
-/

namespace A224362.P5211586799922454345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010054 n - A132399 n|

end

end A224362.P5211586799922454345

/-! ## A224362.P17271414092759472631

`abs(char[A000217(n)]-A132399(n))`
-/

namespace A224362.P17271414092759472631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A132399 n|

end

end A224362.P17271414092759472631

/-! ## A224362.P5704812649508313201

`A007814(2*n+5)-(char[A000217(n)]-A132399(n))`
-/

namespace A224362.P5704812649508313201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 5) - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A132399 n)

end

end A224362.P5704812649508313201

/-! ## A224362.P3823043874019832709

`(A005009(n)%7)²-(char[A000217(n)]-A132399(n))`
-/

namespace A224362.P3823043874019832709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005009 n) 7 ^ 2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A132399 n)

end

end A224362.P3823043874019832709

/-! ## A224362.P5835036581950908206

`(A030240(n+3)%7)²-(char[A000217(n)]-A132399(n))`
-/

namespace A224362.P5835036581950908206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030240 (n + 3)) 7 ^ 2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A132399 n)

end

end A224362.P5835036581950908206

/-!
# A224363: Primes p such that there are no squares between p and the prime following p.

The programs for A224363, the canonical program `A224363.P1517019116254697631` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224363 has offset 1).

The definition of A224363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224363.P14716130020099092681

`A000040(comp[A038107(n)])`
-/

namespace A224363.P14716130020099092681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A224363.P14716130020099092681

namespace A224363

/-- `A000040(comp[A038107(n)])` -/
def P14716130020099092681.Spec : Prop :=
  ∀ n, P14716130020099092681.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P9274585087170700680

`A000040(A221056(n+1))`
-/

namespace A224363.P9274585087170700680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A221056 (n + 1)).toNat

end

end A224363.P9274585087170700680

namespace A224363

/-- `A000040(A221056(n+1))` -/
def P9274585087170700680.Spec : Prop :=
  ∀ n, P9274585087170700680.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P6281508976532068479

`A000040(comp[∑[A014085(n)]])`
-/

namespace A224363.P6281508976532068479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A224363.P6281508976532068479

namespace A224363

/-- `A000040(comp[∑[A014085(n)]])` -/
def P6281508976532068479.Spec : Prop :=
  ∀ n, P6281508976532068479.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P1517019116254697631

`p?[A061265(n+1)+A000040(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A224363

/-- `p?[A061265(n+1)+A000040(n+1)]` -/
def P1517019116254697631.Spec : Prop :=
  ∀ n, P1517019116254697631.a n = A224363 (n + 1)

theorem P1517019116254697631.correct : P1517019116254697631.Spec := by
  intro n
  simp only [A224363, Nat.add_sub_cancel]

end A224363

/-! ## A224363.P821427729632467693

`A000040(∑[char[A038107(n+1)-n]]+n)`
-/

namespace A224363.P821427729632467693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A224363.P821427729632467693

namespace A224363

/-- `A000040(∑[char[A038107(n+1)-n]]+n)` -/
def P821427729632467693.Spec : Prop :=
  ∀ n, P821427729632467693.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P2977901947709523317

`A008578(A221056(n+1)+1)`
-/

namespace A224363.P2977901947709523317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A221056 (n + 1) + 1).toNat

end

end A224363.P2977901947709523317

namespace A224363

/-- `A008578(A221056(n+1)+1)` -/
def P2977901947709523317.Spec : Prop :=
  ∀ n, P2977901947709523317.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P3633249633969702284

`A000040(lt[Δ[A000006(n+1)], 1]+1)`
-/

namespace A224363.P3633249633969702284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A224363.P3633249633969702284

namespace A224363

/-- `A000040(lt[Δ[A000006(n+1)], 1]+1)` -/
def P3633249633969702284.Spec : Prop :=
  ∀ n, P3633249633969702284.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P1229932622781166949

`p?[A000040(n+1)+Δ[A000006(n+1)]]`
-/

namespace A224363.P1229932622781166949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224363.P1229932622781166949

namespace A224363

/-- `p?[A000040(n+1)+Δ[A000006(n+1)]]` -/
def P1229932622781166949.Spec : Prop :=
  ∀ n, P1229932622781166949.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P5193877601807312580

`p?[A000040(n+1)+Δ[A104103(n+1)]]`
-/

namespace A224363.P5193877601807312580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224363.P5193877601807312580

namespace A224363

/-- `p?[A000040(n+1)+Δ[A104103(n+1)]]` -/
def P5193877601807312580.Spec : Prop :=
  ∀ n, P5193877601807312580.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P8011431827509253656

`A000040(eq[1, 1-Δ[A000006(n+1)]]+1)`
-/

namespace A224363.P8011431827509253656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224363.P8011431827509253656

namespace A224363

/-- `A000040(eq[1, 1-Δ[A000006(n+1)]]+1)` -/
def P8011431827509253656.Spec : Prop :=
  ∀ n, P8011431827509253656.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P4807957623677706368

`p?[A089237(A161188(n+1))]`
-/

namespace A224363.P4807957623677706368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (A161188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224363.P4807957623677706368

namespace A224363

/-- `p?[A089237(A161188(n+1))]` -/
def P4807957623677706368.Spec : Prop :=
  ∀ n, P4807957623677706368.a n = A224363 (n + 1)

end A224363

/-! ## A224363.P11927683080623599623

`A207790(2*comp[A038107(n)])`
-/

namespace A224363.P11927683080623599623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A224363.P11927683080623599623

namespace A224363

/-- `A207790(2*comp[A038107(n)])` -/
def P11927683080623599623.Spec : Prop :=
  ∀ n, P11927683080623599623.a n = A224363 (n + 1)

end A224363

/-!
# A224364: G.f.: exp( Sum_{n>=1} A064027(n)*x^n/n ), where A064027(n) = (-1)^n*Sum_{d|n}(-1)^d*d^2.

The programs for A224364, there is no canonical definition to state claims against.
-/

/-! ## A224364.P11049186031461305570

`abs(A281683(n))`
-/

namespace A224364.P11049186031461305570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281683 n|

end

end A224364.P11049186031461305570

/-! ## A224364.P32940961761649897

`A033999(n)*A281683(n)`
-/

namespace A224364.P32940961761649897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A281683 n

end

end A224364.P32940961761649897

/-! ## A224364.P16099584475512888366

`gcd(A000038(n), A281683(n))`
-/

namespace A224364.P16099584475512888366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A281683 n)

end

end A224364.P16099584475512888366

/-! ## A224364.P2784101735365927001

`lcm(A020985(n), A281683(n))`
-/

namespace A224364.P2784101735365927001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A281683 n)

end

end A224364.P2784101735365927001

/-! ## A224364.P12453244824793021283

`A281683(and(1, -n))*A281683(n)`
-/

namespace A224364.P12453244824793021283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281683 (Int.land 1 (-(n : ℤ))).toNat * A281683 n

end

end A224364.P12453244824793021283

/-! ## A224364.P8347824806379888157

`A064027(n+1)/A321543(n+1)*A281683(n)`
-/

namespace A224364.P8347824806379888157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064027 (n + 1) : ℚ) / (A321543 (n + 1) : ℚ) * (A281683 n : ℚ)

end

end A224364.P8347824806379888157

/-!
# A224365: a(n) = A063674(n+1) - A063674(n).

The programs for A224365, there is no canonical definition to state claims against.
-/

/-! ## A224365.P14498370855330261272

`A063674(n+2)-A063674(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A224365.P14498370855330261272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063674 (n + 2) - A063674 (n + 1)

end

end A224365.P14498370855330261272

/-! ## A224365.P8713845399150928436

`Δ[A063674(n+1)]`
-/

namespace A224365.P8713845399150928436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P8713845399150928436

/-! ## A224365.P18394890474419141505

`Δ[record[A057082(n+4)]]`
-/

namespace A224365.P18394890474419141505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P18394890474419141505

/-! ## A224365.P743512459225581629

`Δ[A057082(2*(n+2))]`
-/

namespace A224365.P743512459225581629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P743512459225581629

/-! ## A224365.P9603851198767491029

`Δ[record[abs(2-A057082(n))]]`
-/

namespace A224365.P9603851198767491029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A057082 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P9603851198767491029

/-! ## A224365.P17009266160482953401

`Δ[round(π*A063673(n+1))]`
-/

namespace A224365.P17009266160482953401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A063673 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P17009266160482953401

/-! ## A224365.P13738903256698020084

`abs(Δ[A063674(n-log2(1/2))])`
-/

namespace A224365.P13738903256698020084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063674 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A224365.P13738903256698020084

/-!
# A224366: Number of compositions of n^2 into sums of squares.

The programs for A224366, there is no canonical definition to state claims against.
-/

/-! ## A224366.P11589691049650113814

`A006456(n²)`
-/

namespace A224366.P11589691049650113814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n ^ 2)

end

end A224366.P11589691049650113814

/-! ## A224366.P11047489903209139924

`gcd(A000038(n), A006456(A000290(n)))`
-/

namespace A224366.P11047489903209139924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006456 (A000290 n).toNat)

end

end A224366.P11047489903209139924

/-! ## A224366.P5778741815925863860

`or(A000007(n), A006456(A000290(n)))`
-/

namespace A224366.P5778741815925863860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A006456 (A000290 n).toNat)

end

end A224366.P5778741815925863860

/-! ## A224366.P12693350695033544142

`or(A006456(A000290(n)), A025465(n))`
-/

namespace A224366.P12693350695033544142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006456 (A000290 n).toNat) (A025465 n)

end

end A224366.P12693350695033544142

/-! ## A224366.P8790678740393385227

`A006456(A000290(n))^abs(A057428(n))`
-/

namespace A224366.P8790678740393385227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006456 (A000290 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A224366.P8790678740393385227

/-!
# A224367: Triangle read by rows giving trajectory of -k/(2n+1) in Collatz problem, k = 1..2n.

The programs for A224367, there is no canonical definition to state claims against.
-/

/-! ## A224367.P15232424212530422377

`A137813(A318326(n+1)+A138653(n))`
-/

namespace A224367.P15232424212530422377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137813 (A318326 (n + 1) + A138653 n).toNat

end

end A224367.P15232424212530422377

/-!
# A224368: Number of n X n 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224368, there is no canonical definition to state claims against.
-/

/-! ## A224368.P17291527250430688

`A224374((n+1)²+n²)`
-/

namespace A224368.P17291527250430688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 ((n + 1) ^ 2 + n ^ 2)

end

end A224368.P17291527250430688

/-! ## A224368.P5525961125192913363

`record[A003982(n)*A224374(n+1)]`
-/

namespace A224368.P5525961125192913363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224368.P5525961125192913363

/-! ## A224368.P2534830779058344112

`record[gcd(A003987(n), A224374(n+1))]`
-/

namespace A224368.P2534830779058344112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A224374 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224368.P2534830779058344112

/-! ## A224368.P9549913234402537945

`lcm(A033999(n), A224374(A001844(n)))`
-/

namespace A224368.P9549913234402537945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224374 (A001844 n).toNat)

end

end A224368.P9549913234402537945

/-! ## A224368.P15076635257974782638

`or(A000038(n), A224374(A001844(n)))`
-/

namespace A224368.P15076635257974782638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A224374 (A001844 n).toNat)

end

end A224368.P15076635257974782638

/-!
# A224369: Number of n X 3 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224369, there is no canonical definition to state claims against.
-/

/-! ## A224369.P12607364072884339194

`A224374(∑[n+3]+1)`
-/

namespace A224369.P12607364072884339194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224369.P12607364072884339194

/-! ## A224369.P2403641214703065579

`A121238(n)²*A224374(A034856(n+2))`
-/

namespace A224369.P2403641214703065579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n ^ 2 * A224374 (A034856 (n + 2)).toNat

end

end A224369.P2403641214703065579

/-!
# A224370: Number of n X 4 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224370, there is no canonical definition to state claims against.
-/

/-! ## A224370.P915613333851669702

`A224374(A155212(n)+5)`
-/

namespace A224370.P915613333851669702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A155212 n + 5).toNat

end

end A224370.P915613333851669702

/-! ## A224370.P6309604650877266826

`A224374(A056000(n)+7)`
-/

namespace A224370.P6309604650877266826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A056000 n + 7).toNat

end

end A224370.P6309604650877266826

/-! ## A224370.P16183681054533536663

`A224374(eq[3, A193592(n)])`
-/

namespace A224370.P16183681054533536663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224370.P16183681054533536663

/-! ## A224370.P7408749789294083220

`A224374(Δ[A034857(n+1)])`
-/

namespace A224370.P7408749789294083220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (f1 (n + 1) - f1 n).toNat

end

end A224370.P7408749789294083220

/-! ## A224370.P10604674544309474260

`A224374(A052905(n+1)+2)`
-/

namespace A224370.P10604674544309474260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A052905 (n + 1) + 2).toNat

end

end A224370.P10604674544309474260

/-!
# A224371: Number of nX5 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224371, there is no canonical definition to state claims against.
-/

/-! ## A224371.P18245666061393546469

`A224374(Δ[A264443(n)])`
-/

namespace A224371.P18245666061393546469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (f1 (n + 1) - f1 n).toNat

end

end A224371.P18245666061393546469

/-! ## A224371.P12533625685195051667

`A224374(A046691(n+3))`
-/

namespace A224371.P12533625685195051667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A046691 (n + 3)).toNat

end

end A224371.P12533625685195051667

/-! ## A224371.P14855126721143560471

`A224374(eq[4, A193592(n)])`
-/

namespace A224371.P14855126721143560471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224371.P14855126721143560471

/-! ## A224371.P1628833020454426904

`A224374(Δ[A023545(n+1)])`
-/

namespace A224371.P1628833020454426904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (f1 (n + 1) - f1 n).toNat

end

end A224371.P1628833020454426904

/-!
# A224372: Number of nX6 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224372, there is no canonical definition to state claims against.
-/

/-! ## A224372.P4264770786121352369

`A224374(A056119(n)+16)`
-/

namespace A224372.P4264770786121352369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A056119 n + 16).toNat

end

end A224372.P4264770786121352369

/-! ## A224372.P15061950828456988074

`A224374(eq[3, A219347(n)])`
-/

namespace A224372.P15061950828456988074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224372.P15061950828456988074

/-! ## A224372.P8759961388564979586

`A224374(eq[5, A193592(n)])`
-/

namespace A224372.P8759961388564979586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224372.P8759961388564979586

/-! ## A224372.P12452018710943766533

`A224374(eq[8, A185782(n+1)])`
-/

namespace A224372.P12452018710943766533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224372.P12452018710943766533

/-! ## A224372.P6192122517960290890

`A224374(Δ[Δ[A006504(n+1)]])`
-/

namespace A224372.P6192122517960290890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (f1 (n + 1) - f1 n).toNat

end

end A224372.P6192122517960290890

/-!
# A224373: Number of nX7 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224373, there is no canonical definition to state claims against.
-/

/-! ## A224373.P14135328506755708627

`A224374(A055999(n+4))`
-/

namespace A224373.P14135328506755708627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A055999 (n + 4)).toNat

end

end A224373.P14135328506755708627

/-! ## A224373.P8081436002486964924

`A224374(eq[4, A219347(n)])`
-/

namespace A224373.P8081436002486964924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224373.P8081436002486964924

/-! ## A224373.P1710512244198701997

`A224374(eq[6, A193592(n)])`
-/

namespace A224373.P1710512244198701997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224373.P1710512244198701997

/-! ## A224373.P10962322821646654668

`A224374(eq[10, A185782(n+1)])`
-/

namespace A224373.P10962322821646654668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224373.P10962322821646654668

/-! ## A224373.P8432505276675592793

`A224374(eq[32, A057728(n+1)])`
-/

namespace A224373.P8432505276675592793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224373.P8432505276675592793

/-!
# A224375: Number of 3Xn 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224375, there is no canonical definition to state claims against.
-/

/-! ## A224375.P6171712501622960574

`A224374(∑[n+2]+4)`
-/

namespace A224375.P6171712501622960574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224375.P6171712501622960574

/-! ## A224375.P10408576047638635754

`or(A000007(n), A224374(A167614(n+1)))`
-/

namespace A224375.P10408576047638635754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224374 (A167614 (n + 1)).toNat)

end

end A224375.P10408576047638635754

/-! ## A224375.P6192601069875345025

`or(A000038(n), A224374(A167614(n+1)))`
-/

namespace A224375.P6192601069875345025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A224374 (A167614 (n + 1)).toNat)

end

end A224375.P6192601069875345025

/-! ## A224375.P9214955617926418350

`A224374(A167614(n+1))%A246736(n+1)`
-/

namespace A224375.P9214955617926418350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224374 (A167614 (n + 1)).toNat) (A246736 (n + 1))

end

end A224375.P9214955617926418350

/-! ## A224375.P5931820856748533469

`A224374(A167614(n+1))+A008683(27*(n+1))`
-/

namespace A224375.P5931820856748533469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A167614 (n + 1)).toNat + A008683 (27 * (n + 1))

end

end A224375.P5931820856748533469

/-!
# A224376: Number of 4 X n 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224376, there is no canonical definition to state claims against.
-/

/-! ## A224376.P3036936899589453848

`A224374(A052905(n)+9)`
-/

namespace A224376.P3036936899589453848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A052905 n + 9).toNat

end

end A224376.P3036936899589453848

/-! ## A224376.P3027448125159375121

`A224374(Δ[A005286(n)]+5)`
-/

namespace A224376.P3027448125159375121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (f1 (n + 1) - f1 n + 5).toNat

end

end A224376.P3027448125159375121

/-! ## A224376.P4656683223699844180

`A224374(A167614(n+2)+1)`
-/

namespace A224376.P4656683223699844180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A167614 (n + 2) + 1).toNat

end

end A224376.P4656683223699844180

/-! ## A224376.P2920343099290518489

`A224374(A167487(n+2)-3)`
-/

namespace A224376.P2920343099290518489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A167487 (n + 2) - 3).toNat

end

end A224376.P2920343099290518489

/-! ## A224376.P5058947964632403827

`A224374(Δ[A264443(n)-n²])`
-/

namespace A224376.P5058947964632403827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (f1 (n + 1) - f1 n).toNat

end

end A224376.P5058947964632403827

/-!
# A224377: Number of 5Xn 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224377, there is no canonical definition to state claims against.
-/

/-! ## A224377.P13128903757360995244

`A224374(A167499(n+3))`
-/

namespace A224377.P13128903757360995244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A167499 (n + 3)).toNat

end

end A224377.P13128903757360995244

/-! ## A224377.P4655074353966558274

`A224374(A155212(n)+13)`
-/

namespace A224377.P4655074353966558274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A155212 n + 13).toNat

end

end A224377.P4655074353966558274

/-! ## A224377.P15178812794310290805

`A224374(A056000(n)+15)`
-/

namespace A224377.P15178812794310290805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A056000 n + 15).toNat

end

end A224377.P15178812794310290805

/-! ## A224377.P5391200513008234440

`A224374(A000124(n+4)+4)`
-/

namespace A224377.P5391200513008234440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A000124 (n + 4) + 4).toNat

end

end A224377.P5391200513008234440

/-! ## A224377.P10221162110684149092

`A224374(eq[6, A131818(n+1)])`
-/

namespace A224377.P10221162110684149092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224377.P10221162110684149092

/-!
# A224378: Number of 6Xn 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224378, there is no canonical definition to state claims against.
-/

/-! ## A224378.P3604934940066716950

`A224374(A167614(n+4)+3)`
-/

namespace A224378.P3604934940066716950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A167614 (n + 4) + 3).toNat

end

end A224378.P3604934940066716950

/-! ## A224378.P12814049844346142844

`A224374(A133263(n+5)+4)`
-/

namespace A224378.P12814049844346142844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A133263 (n + 5) + 4).toNat

end

end A224378.P12814049844346142844

/-! ## A224378.P12645839579800198122

`A224374(A000124(n+5)+5)`
-/

namespace A224378.P12645839579800198122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A000124 (n + 5) + 5).toNat

end

end A224378.P12645839579800198122

/-! ## A224378.P4738365679359048796

`A224374(A056000(n+1)+16)`
-/

namespace A224378.P4738365679359048796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A056000 (n + 1) + 16).toNat

end

end A224378.P4738365679359048796

/-! ## A224378.P2762560483988140909

`A224374(eq[7, A131818(n+1)])`
-/

namespace A224378.P2762560483988140909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224378.P2762560483988140909

/-!
# A224379: Number of 7Xn 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224379, there is no canonical definition to state claims against.
-/

/-! ## A224379.P18073371554723727838

`A224374(A167487(n+5))`
-/

namespace A224379.P18073371554723727838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A167487 (n + 5)).toNat

end

end A224379.P18073371554723727838

/-! ## A224379.P12513918329973106864

`A224374(A056119(n)+28)`
-/

namespace A224379.P12513918329973106864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A056119 n + 28).toNat

end

end A224379.P12513918329973106864

/-! ## A224379.P16346449063296776756

`A224374(eq[11, A066657(n)])`
-/

namespace A224379.P16346449063296776756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224379.P16346449063296776756

/-! ## A224379.P7909687300572855004

`A224374(A000124(n+6)+6)`
-/

namespace A224379.P7909687300572855004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A000124 (n + 6) + 6).toNat

end

end A224379.P7909687300572855004

/-! ## A224379.P5653606440993608839

`A224374(eq[8, A131818(n+1)])`
-/

namespace A224379.P5653606440993608839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224379.P5653606440993608839

/-!
# A224380: Table read by antidiagonals of numbers of form (2^n -1)*2^(m+2) + 3 where n>=1, m>=1.

The programs for A224380, the canonical program `A224380.P18395391775735731980` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224380 has offset 1).

The definition of A224380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224380.P18395391775735731980

`4*A224195(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A224380

/-- `4*A224195(n+1)-1` -/
def P18395391775735731980.Spec : Prop :=
  ∀ n, P18395391775735731980.a n = A224380 (n + 1)

theorem P18395391775735731980.correct : P18395391775735731980.Spec := by
  intro n
  simp only [A224380, Nat.add_sub_cancel]

end A224380

/-! ## A224380.P1388389930524152173

`4*A043569(n+1)+3`
-/

namespace A224380.P1388389930524152173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043569 (n + 1) + 3

end

end A224380.P1388389930524152173

namespace A224380

/-- `4*A043569(n+1)+3` -/
def P1388389930524152173.Spec : Prop :=
  ∀ n, P1388389930524152173.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P2318763884286258596

`4*A081118(n+1)+7`
-/

namespace A224380.P2318763884286258596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081118 (n + 1) + 7

end

end A224380.P2318763884286258596

namespace A224380

/-- `4*A081118(n+1)+7` -/
def P2318763884286258596.Spec : Prop :=
  ∀ n, P2318763884286258596.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P11558368442559556477

`4*∑[2^A193592(n)]+3`
-/

namespace A224380.P11558368442559556477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193592 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A224380.P11558368442559556477

namespace A224380

/-- `4*∑[2^A193592(n)]+3` -/
def P11558368442559556477.Spec : Prop :=
  ∀ n, P11558368442559556477.a n = (A224380 (n + 1) : ℚ)

end A224380

/-! ## A224380.P14127762622262508864

`4*2*A023758(n+2)+3`
-/

namespace A224380.P14127762622262508864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A023758 (n + 2)) + 3

end

end A224380.P14127762622262508864

namespace A224380

/-- `4*2*A023758(n+2)+3` -/
def P14127762622262508864.Spec : Prop :=
  ∀ n, P14127762622262508864.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P8184792973285332610

`ceil(A224701(n+1)/2)`
-/

namespace A224380.P8184792973285332610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224701 (n + 1) : ℚ) / 2⌉

end

end A224380.P8184792973285332610

namespace A224380

/-- `ceil(A224701(n+1)/2)` -/
def P8184792973285332610.Spec : Prop :=
  ∀ n, P8184792973285332610.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P1470114584774686841

`4*A145341(A173786(n))-1`
-/

namespace A224380.P1470114584774686841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A145341 (A173786 n).toNat - 1

end

end A224380.P1470114584774686841

namespace A224380

/-- `4*A145341(A173786(n))-1` -/
def P1470114584774686841.Spec : Prop :=
  ∀ n, P1470114584774686841.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P16263775176030809582

`A004769(A089633(n))`
-/

namespace A224380.P16263775176030809582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (A089633 n).toNat

end

end A224380.P16263775176030809582

namespace A224380

/-- `A004769(A089633(n))` -/
def P16263775176030809582.Spec : Prop :=
  ∀ n, P16263775176030809582.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P16695088144929692806

`A017101(A023758(n+2))`
-/

namespace A224380.P16695088144929692806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A023758 (n + 2)).toNat

end

end A224380.P16695088144929692806

namespace A224380

/-- `A017101(A023758(n+2))` -/
def P16695088144929692806.Spec : Prop :=
  ∀ n, P16695088144929692806.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P10440665637429581447

`A016825(A224195(n+1))-3`
-/

namespace A224380.P10440665637429581447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A224195 (n + 1)).toNat - 3

end

end A224380.P10440665637429581447

namespace A224380

/-- `A016825(A224195(n+1))-3` -/
def P10440665637429581447.Spec : Prop :=
  ∀ n, P10440665637429581447.a n = A224380 (n + 1)

end A224380

/-!
# A224382: Fibonacci-like numbers without positive multiples of 4: a(0) = 0, a(1) = 1, for n>=2, a(n) = a(n-1) + a(n-2) divided by maximal possible power of 4.

The programs for A224382, there is no canonical definition to state claims against.
-/

/-! ## A224382.P8474229823933048785

`A065883(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A224382.P8474229823933048785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A065883 (a (n - 1) + a (n - 2)).toNat

end

end A224382.P8474229823933048785

/-! ## A224382.P6451116008891793008

`A065883(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A224382.P6451116008891793008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A065883 (a (n - 1) - (-a (n - 2))).toNat

end

end A224382.P6451116008891793008

/-! ## A224382.P15917956269805913988

`A065883(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A224382.P15917956269805913988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A065883 (a (n - 1) - (-a (n - 2))).toNat

end

end A224382.P15917956269805913988

/-! ## A224382.P9309856345818909642

`A065883(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A224382.P9309856345818909642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A065883 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A224382.P9309856345818909642

/-! ## A224382.P3336313558366259277

`A065883(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A224382.P3336313558366259277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A065883 (1 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A224382.P3336313558366259277

/-!
# A224383: Primes of the form (2^n - 1)*(2^(m+2)) + 3 where n >= 1, m >= 1.

The programs for A224383, there is no canonical definition to state claims against.
-/

/-! ## A224383.P7538981099874537146

`∩[A082554(n+1), A224380(n+1)]`
-/

namespace A224383.P7538981099874537146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224383.P7538981099874537146

/-! ## A224383.P6449012160333952998

`∩[A100724(n+1), A224380(n+1)]`
-/

namespace A224383.P6449012160333952998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224383.P6449012160333952998

/-! ## A224383.P8425213585367511005

`p?[A224380(n+1)]`
-/

namespace A224383.P8425213585367511005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224383.P8425213585367511005

/-! ## A224383.P18025033451089475568

`p?[ceil(A224701(n+1)/2)]`
-/

namespace A224383.P18025033451089475568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224701 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224383.P18025033451089475568

/-! ## A224383.P2128645631498676117

`p?[4*A224195(n+1)-1]`
-/

namespace A224383.P2128645631498676117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224195 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224383.P2128645631498676117

/-!
# A224384: a(n) = 1 + 17^n.

The programs for A224384, the canonical program `A224384.P4110925242579660247` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224384 has offset 0).

The definition of A224384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+17^n` (program `A224384.P4110925242579660247`, by `A224384.P4110925242579660247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224384.P4110925242579660247

`1+17^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224384

/-- `1+17^n` -/
def P4110925242579660247.Spec : Prop :=
  ∀ n, (P4110925242579660247.a n : ℤ) = A224384 n

theorem P4110925242579660247.correct : P4110925242579660247.Spec := by
  intro n
  simp only [A224384]

end A224384

/-!
# A224385: Number of n X n 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224385, there is no canonical definition to state claims against.
-/

/-! ## A224385.P5075517429752384207

`A224391(∑[4*n]+1)`
-/

namespace A224385.P5075517429752384207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224385.P5075517429752384207

/-! ## A224385.P6092034419367994169

`record[gcd(A114327(n), A224391(n+1))]`
-/

namespace A224385.P6092034419367994169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224385.P6092034419367994169

/-! ## A224385.P11287839497798996736

`A224391(A001844(n))+A185284(n)`
-/

namespace A224385.P11287839497798996736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A001844 n).toNat + A185284 n

end

end A224385.P11287839497798996736

/-! ## A224385.P12182704959787562241

`A224391(A001844(n))+A193581(n)`
-/

namespace A224385.P12182704959787562241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A001844 n).toNat + A193581 n

end

end A224385.P12182704959787562241

/-! ## A224385.P13426778942101935195

`lcm(A033999(n), A224391(A001844(n)))`
-/

namespace A224385.P13426778942101935195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224391 (A001844 n).toNat)

end

end A224385.P13426778942101935195

/-!
# A224386: Number of nX3 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224386, there is no canonical definition to state claims against.
-/

/-! ## A224386.P16430688178933841210

`A224391(∑[n+3]+1)`
-/

namespace A224386.P16430688178933841210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224386.P16430688178933841210

/-!
# A224387: Number of nX4 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224387, there is no canonical definition to state claims against.
-/

/-! ## A224387.P8258618420921239323

`A224391(A141214(n+1))`
-/

namespace A224387.P8258618420921239323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A141214 (n + 1)).toNat

end

end A224387.P8258618420921239323

/-! ## A224387.P12616496399981320100

`A224391(A055998(n+2))`
-/

namespace A224387.P12616496399981320100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A055998 (n + 2)).toNat

end

end A224387.P12616496399981320100

/-! ## A224387.P1285791558024629161

`A224391(A155212(n)+5)`
-/

namespace A224387.P1285791558024629161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A155212 n + 5).toNat

end

end A224387.P1285791558024629161

/-! ## A224387.P7109167801400585664

`A224391(A056000(n)+7)`
-/

namespace A224387.P7109167801400585664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A056000 n + 7).toNat

end

end A224387.P7109167801400585664

/-! ## A224387.P3295460808095204907

`A224391(eq[2, A054123(n)])`
-/

namespace A224387.P3295460808095204907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224387.P3295460808095204907

/-!
# A224388: Number of nX5 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224388, there is no canonical definition to state claims against.
-/

/-! ## A224388.P11908980607613337689

`A224391(A046691(n+3))`
-/

namespace A224388.P11908980607613337689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A046691 (n + 3)).toNat

end

end A224388.P11908980607613337689

/-! ## A224388.P9931200909516466989

`A224391(eq[4, A193592(n)])`
-/

namespace A224388.P9931200909516466989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224388.P9931200909516466989

/-! ## A224388.P17715009447392960510

`A224391(Δ[A023545(n+1)])`
-/

namespace A224388.P17715009447392960510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (f1 (n + 1) - f1 n).toNat

end

end A224388.P17715009447392960510

/-! ## A224388.P1455934319687673797

`A224391(A246172(n+1)+10)`
-/

namespace A224388.P1455934319687673797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A246172 (n + 1) + 10).toNat

end

end A224388.P1455934319687673797

/-! ## A224388.P50215029357451270

`A224391(eq[5, A200370(n+1)])`
-/

namespace A224388.P50215029357451270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224388.P50215029357451270

/-!
# A224389: Number of nX6 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224389, there is no canonical definition to state claims against.
-/

/-! ## A224389.P13702844328750000036

`A224391(A052905(n+3))`
-/

namespace A224389.P13702844328750000036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A052905 (n + 3)).toNat

end

end A224389.P13702844328750000036

/-! ## A224389.P17014392571067149174

`A224391(eq[3, A219347(n)])`
-/

namespace A224389.P17014392571067149174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224389.P17014392571067149174

/-! ## A224389.P3944094602267478655

`A224391(eq[5, A193592(n)])`
-/

namespace A224389.P3944094602267478655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224389.P3944094602267478655

/-! ## A224389.P4171675997833764098

`A224391(eq[6, A200370(n+1)])`
-/

namespace A224389.P4171675997833764098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224389.P4171675997833764098

/-! ## A224389.P6392557277818410645

`A224391(eq[16, A057728(n+1)])`
-/

namespace A224389.P6392557277818410645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224389.P6392557277818410645

/-!
# A224390: Number of nX7 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224390, there is no canonical definition to state claims against.
-/

/-! ## A224390.P16600721604779163761

`A224391(A055999(n+4))`
-/

namespace A224390.P16600721604779163761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A055999 (n + 4)).toNat

end

end A224390.P16600721604779163761

/-! ## A224390.P1825105567321130220

`A224391(eq[4, A219347(n)])`
-/

namespace A224390.P1825105567321130220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224390.P1825105567321130220

/-! ## A224390.P18232795897654443977

`A224391(eq[6, A193592(n)])`
-/

namespace A224390.P18232795897654443977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224390.P18232795897654443977

/-! ## A224390.P6297178142966993371

`A224391(A056000(n+3)+4)`
-/

namespace A224390.P6297178142966993371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A056000 (n + 3) + 4).toNat

end

end A224390.P6297178142966993371

/-! ## A224390.P3998417990874061015

`A224391(eq[7, A200370(n+1)])`
-/

namespace A224390.P3998417990874061015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224390.P3998417990874061015

/-!
# A224392: Number of 3 X n 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224392, there is no canonical definition to state claims against.
-/

/-! ## A224392.P11780099727881339128

`A224391(∑[n+2]+4)`
-/

namespace A224392.P11780099727881339128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224392.P11780099727881339128

/-! ## A224392.P8197102848329078053

`A224391(A167614(n+1))+A025443(n)`
-/

namespace A224392.P8197102848329078053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A167614 (n + 1)).toNat + A025443 n

end

end A224392.P8197102848329078053

/-! ## A224392.P12179332374920303186

`A224391(A167614(n+1))*A304042(n)`
-/

namespace A224392.P12179332374920303186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A167614 (n + 1)).toNat * A304042 n

end

end A224392.P12179332374920303186

/-! ## A224392.P2416905675211578207

`lcm(A097807(n), A224391(A167614(n+1)))`
-/

namespace A224392.P2416905675211578207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A224391 (A167614 (n + 1)).toNat)

end

end A224392.P2416905675211578207

/-! ## A224392.P6556570325435620130

`A224391(A167614(n+1))%A224393(n+1)`
-/

namespace A224392.P6556570325435620130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224391 (A167614 (n + 1)).toNat) (A224393 (n + 1))

end

end A224392.P6556570325435620130

/-!
# A224393: Number of 4Xn 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224393, there is no canonical definition to state claims against.
-/

/-! ## A224393.P5286248888489638852

`A224391(A141214(n)+7)`
-/

namespace A224393.P5286248888489638852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A141214 n + 7).toNat

end

end A224393.P5286248888489638852

/-! ## A224393.P12316272567942992273

`A224391(A052905(n)+9)`
-/

namespace A224393.P12316272567942992273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A052905 n + 9).toNat

end

end A224393.P12316272567942992273

/-! ## A224393.P11038748393380071322

`A224391(A055999(n)+10)`
-/

namespace A224393.P11038748393380071322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A055999 n + 10).toNat

end

end A224393.P11038748393380071322

/-! ## A224393.P13800844116720065123

`A224391(Δ[A008778(n)]+6)`
-/

namespace A224393.P13800844116720065123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (f1 (n + 1) - f1 n + 6).toNat

end

end A224393.P13800844116720065123

/-! ## A224393.P1580889977924165031

`A224391(A167614(n+2)+1)`
-/

namespace A224393.P1580889977924165031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A167614 (n + 2) + 1).toNat

end

end A224393.P1580889977924165031

/-!
# A224394: Number of 5Xn 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224394, there is no canonical definition to state claims against.
-/

/-! ## A224394.P6020144260532712234

`A224391(A167499(n+3))`
-/

namespace A224394.P6020144260532712234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A167499 (n + 3)).toNat

end

end A224394.P6020144260532712234

/-! ## A224394.P5750377536947474447

`A224391(A155212(n)+13)`
-/

namespace A224394.P5750377536947474447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A155212 n + 13).toNat

end

end A224394.P5750377536947474447

/-! ## A224394.P2617569911350689272

`A224391(eq[7, A066657(n)])`
-/

namespace A224394.P2617569911350689272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224394.P2617569911350689272

/-! ## A224394.P7943590457697673698

`A224391(A133263(n+4)+3)`
-/

namespace A224394.P7943590457697673698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A133263 (n + 4) + 3).toNat

end

end A224394.P7943590457697673698

/-! ## A224394.P16199906897428551646

`A224391(eq[6, A131818(n+1)])`
-/

namespace A224394.P16199906897428551646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224394.P16199906897428551646

/-!
# A224395: Number of 6Xn 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224395, there is no canonical definition to state claims against.
-/

/-! ## A224395.P15300063453377512797

`A224391(C(n+7, 2)-n)`
-/

namespace A224395.P15300063453377512797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (Nat.choose (n + 7) 2 - n)

end

end A224395.P15300063453377512797

/-! ## A224395.P7425366934862634399

`A224391(A167499(n+4)+1)`
-/

namespace A224395.P7425366934862634399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A167499 (n + 4) + 1).toNat

end

end A224395.P7425366934862634399

/-! ## A224395.P3895336198119817991

`A224391(A141214(n+2)+9)`
-/

namespace A224395.P3895336198119817991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A141214 (n + 2) + 9).toNat

end

end A224395.P3895336198119817991

/-! ## A224395.P11150074152211261774

`A224391(eq[5, A002262(n)]+1)`
-/

namespace A224395.P11150074152211261774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224395.P11150074152211261774

/-! ## A224395.P3094121985041699487

`A224391(eq[7, A131818(n+1)])`
-/

namespace A224395.P3094121985041699487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224395.P3094121985041699487

/-!
# A224396: Number of 7Xn 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224396, there is no canonical definition to state claims against.
-/

/-! ## A224396.P6759805535736546584

`A224391(eq[11, A066657(n)])`
-/

namespace A224396.P6759805535736546584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224396.P6759805535736546584

/-! ## A224396.P17832643297597904319

`A224391(A167499(n+5)+2)`
-/

namespace A224396.P17832643297597904319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A167499 (n + 5) + 2).toNat

end

end A224396.P17832643297597904319

/-! ## A224396.P3191482617857695789

`A224391(A133263(n+6)+5)`
-/

namespace A224396.P3191482617857695789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A133263 (n + 6) + 5).toNat

end

end A224396.P3191482617857695789

/-! ## A224396.P17317684636284154610

`A224391(A161680(n+7)+7)`
-/

namespace A224396.P17317684636284154610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A161680 (n + 7) + 7).toNat

end

end A224396.P17317684636284154610

/-! ## A224396.P18433945783780127320

`A224391(eq[8, A131818(n+1)])`
-/

namespace A224396.P18433945783780127320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224396.P18433945783780127320

/-!
# A224397: Number of possibilities of getting a prime sum when rolling n six-sided dice.

The programs for A224397, there is no canonical definition to state claims against.
-/

/-! ## A224397.P18401816577997974526

`record[Δ[A353158(A174376(n))]]`
-/

namespace A224397.P18401816577997974526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 (A174376 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224397.P18401816577997974526

/-!
# A224399: Numbers k such that A224166(k) = A008908(k).

The programs for A224399, there is no canonical definition to state claims against.
-/

/-! ## A224399.P7569915118649298023

`eq[5, A000120(n*121)]`
-/

namespace A224399.P7569915118649298023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n * 121)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224399.P7569915118649298023

/-! ## A224399.P1845792306377115988

`record[A053615(A107326(n+1))]`
-/

namespace A224399.P1845792306377115988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A107326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224399.P1845792306377115988

/-! ## A224399.P1206607511340447241

`record[A053615(A107462(n+1))]`
-/

namespace A224399.P1206607511340447241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A107462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224399.P1206607511340447241

/-! ## A224399.P14587180621663309769

`eq[A090003(n), A133687(A339353(n+1))]`
-/

namespace A224399.P14587180621663309769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 (A339353 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224399.P14587180621663309769

/-! ## A224399.P4314517830396998694

`eq[A140994(A140994(2*n+3)), A365089(n)]`
-/

namespace A224399.P4314517830396998694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A140994 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224399.P4314517830396998694

