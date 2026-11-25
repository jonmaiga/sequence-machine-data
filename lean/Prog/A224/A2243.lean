import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C021
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

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

/-! ## A224300.P2235463363047854721

`A224360(lt[A379598(n), 1])`
-/

namespace A224300.P2235463363047854721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224360 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A224300.P2235463363047854721

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

/-! ## A224301.P2654137918228372216

`A315598(or(A047263(n+1), A082217(n+1)))`
-/

namespace A224301.P2654137918228372216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315598 (Int.lor (A047263 (n + 1)) (A082217 (n + 1))).toNat

end

end A224301.P2654137918228372216

/-!
# A224302: Sorted perimeters of primitive Heronian triangles.

The programs for A224302, there is no canonical definition to state claims against.
-/

/-! ## A224302.P1035766224116937304

`A070083(A070143(1+n))`
-/

namespace A224302.P1035766224116937304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (A070143 (1 + n)).toNat

end

end A224302.P1035766224116937304

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

/-!
# A224306: Number of nX4 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224306, there is no canonical definition to state claims against.
-/

/-! ## A224306.P8321370451345072706

`A224310(∑[n+4]+3)`
-/

namespace A224306.P8321370451345072706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224306.P8321370451345072706

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

/-!
# A224310: T(n,k)=Number of nXk 0..2 arrays with diagonals and rows unimodal and antidiagonals nondecreasing.

The programs for A224310, there is no canonical definition to state claims against.
-/

/-! ## A224310.P3800268851045172945

`A224374(n+1)`
-/

namespace A224310.P3800268851045172945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (n + 1)

end

end A224310.P3800268851045172945

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

The programs for A224317, the canonical program `A224317.P9638776003239876942` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224317 has offset 1).

The definition of A224317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3-a(n-1)!` (program `A224317.P9638776003239876942`, by `A224317.P9638776003239876942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224317.P9638776003239876942

`a(n-1)+3-a(n-1)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
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

/-! ## A224318.P12649376407299612895

`A387141(A391219(n)+A255071(n+1))`
-/

namespace A224318.P12649376407299612895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A391219 n + A255071 (n + 1)).toNat

end

end A224318.P12649376407299612895

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

/-! ## A224326.P7534495547898737989

`A025427(8*n+3)-A033761(n)`
-/

namespace A224326.P7534495547898737989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (8 * n + 3) - A033761 n

end

end A224326.P7534495547898737989

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

The programs for A224327, the canonical program `A224327.P5920532428040473263` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224327 has offset 1).

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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A224327

/-! ## A224327.P18255303188712110964

`ogf((1+2x-7x^2)/(1-8x+22x^2-24x^3+9x^4))`
-/

namespace A224327.P18255303188712110964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -7] [1, -8, 22, -24, 9] n

end

end A224327.P18255303188712110964

namespace A224327

/-- `ogf((1+2x-7x^2)/(1-8x+22x^2-24x^3+9x^4))` -/
def P18255303188712110964.Spec : Prop :=
  ∀ n, P18255303188712110964.a n = A224327 (n + 1)

end A224327

/-! ## A224327.P5920532428040473263

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=10, a(2)=51, a(3)=212`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224327

/-- `8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` -/
def P5920532428040473263.Spec : Prop :=
  ∀ n, P5920532428040473263.a n = A224327 (n + 1)

theorem P5920532428040473263.correct : P5920532428040473263.Spec := by
  intro n
  simp only [A224327, Nat.add_sub_cancel]

end A224327

/-! ## A224327.P329093970737117124

`(n+1)*xor(3, Δ[3^n])`
-/

namespace A224327.P329093970737117124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A224327.P329093970737117124

namespace A224327

/-- `(n+1)*xor(3, Δ[3^n])` -/
def P329093970737117124.Spec : Prop :=
  ∀ n, P329093970737117124.a n = A224327 (n + 1)

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

/-! ## A224327.P5567958238129188620

`(n+1)*∑[3*a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A224327.P5567958238129188620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224327.P5567958238129188620

namespace A224327

/-- `(n+1)*∑[3*a(n-1)]` -/
def P5567958238129188620.Spec : Prop :=
  ∀ n, (P5567958238129188620.a n : ℤ) = A224327 (n + 1)

end A224327

/-! ## A224327.P2044073968027056466

`(n+1)*(3*a(n-1)/n+2)` with `a(0)=1`
-/

namespace A224327.P2044073968027056466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (3 * a (n - 1) / (n : ℚ) + 2)

end

end A224327.P2044073968027056466

namespace A224327

/-- `(n+1)*(3*a(n-1)/n+2)` -/
def P2044073968027056466.Spec : Prop :=
  ∀ n, P2044073968027056466.a n = (A224327 (n + 1) : ℚ)

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

theorem P11405945797559006343.correct : P11405945797559006343.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224327, Nat.add_sub_cancel, A224327.P11405945797559006343.a, A224327.P5920532428040473263.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224327, Nat.add_sub_cancel, A224327.P11405945797559006343.a, A224327.P5920532428040473263.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

theorem P12866674674670767601.correct : P12866674674670767601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224327, Nat.add_sub_cancel, A224327.P12866674674670767601.a, A224327.P5920532428040473263.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224327, Nat.add_sub_cancel, A224327.P12866674674670767601.a, A224327.P5920532428040473263.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

theorem P7622056038533876492.correct : P7622056038533876492.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224327, Nat.add_sub_cancel, A224327.P7622056038533876492.a, A224327.P5920532428040473263.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224327, Nat.add_sub_cancel, A224327.P7622056038533876492.a, A224327.P5920532428040473263.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

theorem P4680074019833604282.correct : P4680074019833604282.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224327, Nat.add_sub_cancel, A224327.P4680074019833604282.a, A224327.P5920532428040473263.a, A000244, A000244.P17162167222172810417.a, A124647, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224327, Nat.add_sub_cancel, A224327.P4680074019833604282.a, A224327.P5920532428040473263.a, A000244, A000244.P17162167222172810417.a, A124647, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

The programs for A224328, the canonical program `A224328.P9757538982148960558` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224328 has offset 1).

The definition of A224328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224328.P3554391128991759806

`ogf((1+4x-14x^2)/(1-10x+33x^2-40x^3+16x^4))`
-/

namespace A224328.P3554391128991759806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -14] [1, -10, 33, -40, 16] n

end

end A224328.P3554391128991759806

namespace A224328

/-- `ogf((1+4x-14x^2)/(1-10x+33x^2-40x^3+16x^4))` -/
def P3554391128991759806.Spec : Prop :=
  ∀ n, P3554391128991759806.a n = A224328 (n + 1)

end A224328

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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A224328

/-! ## A224328.P9757538982148960558

`10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=14, a(2)=93, a(3)=508`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224328

/-- `10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` -/
def P9757538982148960558.Spec : Prop :=
  ∀ n, P9757538982148960558.a n = A224328 (n + 1)

theorem P9757538982148960558.correct : P9757538982148960558.Spec := by
  intro n
  simp only [A224328, Nat.add_sub_cancel]

end A224328

/-! ## A224328.P5028359637943006785

`∑{#}[2*n, (1+n)*2^#]`
-/

namespace A224328.P5028359637943006785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 + n) * 2 ^ k

end

end A224328.P5028359637943006785

namespace A224328

/-- `∑{#}[2*n, (1+n)*2^#]` -/
def P5028359637943006785.Spec : Prop :=
  ∀ n, (P5028359637943006785.a n : ℤ) = A224328 (n + 1)

end A224328

/-! ## A224328.P6079525499566828904

`(n+1)*∑[4*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A224328.P6079525499566828904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224328.P6079525499566828904

namespace A224328

/-- `(n+1)*∑[4*a(n-1)]` -/
def P6079525499566828904.Spec : Prop :=
  ∀ n, (P6079525499566828904.a n : ℤ) = A224328 (n + 1)

end A224328

/-! ## A224328.P1730251272121161926

`(n+1)*(4*a(n-1)/n+3)` with `a(0)=1`
-/

namespace A224328.P1730251272121161926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (4 * a (n - 1) / (n : ℚ) + 3)

end

end A224328.P1730251272121161926

namespace A224328

/-- `(n+1)*(4*a(n-1)/n+3)` -/
def P1730251272121161926.Spec : Prop :=
  ∀ n, P1730251272121161926.a n = (A224328 (n + 1) : ℚ)

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

theorem P17340279800488746568.correct : P17340279800488746568.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224328, Nat.add_sub_cancel, A224328.P17340279800488746568.a, A224328.P9757538982148960558.a, A260006, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224328, Nat.add_sub_cancel, A224328.P17340279800488746568.a, A224328.P9757538982148960558.a, A260006, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

/-!
# A224329: Number of idempotent n X n 0..4 matrices of rank n-1.

The programs for A224329, the canonical program `A224329.P748976363621282850` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224329 has offset 1).

The definition of A224329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224329.P10921305677170464440

`ogf((1+6x-23x^2)/(1-12x+46x^2-60x^3+25x^4))`
-/

namespace A224329.P10921305677170464440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -23] [1, -12, 46, -60, 25] n

end

end A224329.P10921305677170464440

namespace A224329

/-- `ogf((1+6x-23x^2)/(1-12x+46x^2-60x^3+25x^4))` -/
def P10921305677170464440.Spec : Prop :=
  ∀ n, P10921305677170464440.a n = A224329 (n + 1)

end A224329

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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A224329

/-! ## A224329.P748976363621282850

`12*a(n-1)-46*a(n-2)+60*a(n-3)-25*a(n-4)` with `a(0)=1, a(1)=18, a(2)=147, a(3)=996`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224329

/-- `12*a(n-1)-46*a(n-2)+60*a(n-3)-25*a(n-4)` -/
def P748976363621282850.Spec : Prop :=
  ∀ n, P748976363621282850.a n = A224329 (n + 1)

theorem P748976363621282850.correct : P748976363621282850.Spec := by
  intro n
  simp only [A224329, Nat.add_sub_cancel]

end A224329

/-! ## A224329.P14445034600259532654

`(n+1)*∑[5*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A224329.P14445034600259532654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224329.P14445034600259532654

namespace A224329

/-- `(n+1)*∑[5*a(n-1)]` -/
def P14445034600259532654.Spec : Prop :=
  ∀ n, (P14445034600259532654.a n : ℤ) = A224329 (n + 1)

end A224329

/-! ## A224329.P16567502993727989235

`(n+1)*(5*a(n-1)/n+4)` with `a(0)=1`
-/

namespace A224329.P16567502993727989235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (5 * a (n - 1) / (n : ℚ) + 4)

end

end A224329.P16567502993727989235

namespace A224329

/-- `(n+1)*(5*a(n-1)/n+4)` -/
def P16567502993727989235.Spec : Prop :=
  ∀ n, P16567502993727989235.a n = (A224329 (n + 1) : ℚ)

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

theorem P9959617397783582018.correct : P9959617397783582018.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224329, Nat.add_sub_cancel, A224329.P9959617397783582018.a, A224329.P748976363621282850.a, A020729, A020729.P10295770726716872561.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224329, Nat.add_sub_cancel, A224329.P9959617397783582018.a, A224329.P748976363621282850.a, A020729, A020729.P10295770726716872561.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

theorem P1037907095909508370.correct : P1037907095909508370.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224329, Nat.add_sub_cancel, A224329.P1037907095909508370.a, A224329.P748976363621282850.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224329, Nat.add_sub_cancel, A224329.P1037907095909508370.a, A224329.P748976363621282850.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

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

theorem P11697299042403716035.correct : P11697299042403716035.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A224329, Nat.add_sub_cancel, A224329.P11697299042403716035.a, A224329.P748976363621282850.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A224329, Nat.add_sub_cancel, A224329.P11697299042403716035.a, A224329.P748976363621282850.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A224329

/-!
# A224330: Number of idempotent n X n 0..5 matrices of rank n-1.

The programs for A224330, the canonical program `A224330.P4213194063220589033` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224330 has offset 1).

The definition of A224330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224330.P11278850523094831394

`ogf((1+8x-34x^2)/(1-14x+61x^2-84x^3+36x^4))`
-/

namespace A224330.P11278850523094831394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -34] [1, -14, 61, -84, 36] n

end

end A224330.P11278850523094831394

namespace A224330

/-- `ogf((1+8x-34x^2)/(1-14x+61x^2-84x^3+36x^4))` -/
def P11278850523094831394.Spec : Prop :=
  ∀ n, P11278850523094831394.a n = A224330 (n + 1)

end A224330

/-! ## A224330.P4213194063220589033

`(n+1)*(2*6^n-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224330

/-- `(n+1)*(2*6^n-1)` -/
def P4213194063220589033.Spec : Prop :=
  ∀ n, P4213194063220589033.a n = A224330 (n + 1)

theorem P4213194063220589033.correct : P4213194063220589033.Spec := by
  intro n
  simp only [A224330, Nat.add_sub_cancel]

end A224330

/-! ## A224330.P11292540312540086999

`(n+1)*∑[6*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A224330.P11292540312540086999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224330.P11292540312540086999

namespace A224330

/-- `(n+1)*∑[6*a(n-1)]` -/
def P11292540312540086999.Spec : Prop :=
  ∀ n, (P11292540312540086999.a n : ℤ) = A224330 (n + 1)

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

theorem P2280204852205685556.correct : P2280204852205685556.Spec := by
  intro n
  simp only [A224330, Nat.add_sub_cancel, A224330.P2280204852205685556.a, A224330.P4213194063220589033.a, A053469, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P5511512916048656526.correct : P5511512916048656526.Spec := by
  intro n
  simp only [A224330, Nat.add_sub_cancel, A224330.P5511512916048656526.a, A224330.P4213194063220589033.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P3396257304124010061.correct : P3396257304124010061.Spec := by
  intro n
  simp only [A224330, Nat.add_sub_cancel, A224330.P3396257304124010061.a, A224330.P4213194063220589033.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

The programs for A224331, the canonical program `A224331.P15223608677765705135` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224331 has offset 1).

The definition of A224331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224331.P15223608677765705135

`(n+1)*(2*7^n-1)`

The canonical program, it is in `Seq.B000.C035`.
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

theorem P5758830323205913923.correct : P5758830323205913923.Spec := by
  intro n
  simp only [A224331, Nat.add_sub_cancel, A224331.P5758830323205913923.a, A224331.P15223608677765705135.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P11634917348769837214.correct : P11634917348769837214.Spec := by
  intro n
  simp only [A224331, Nat.add_sub_cancel, A224331.P11634917348769837214.a, A224331.P15223608677765705135.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P12775951160373742634.correct : P12775951160373742634.Spec := by
  intro n
  simp only [A224331, Nat.add_sub_cancel, A224331.P12775951160373742634.f1, A224331.P12775951160373742634.f2, A224331.P12775951160373742634.a, A224331.P15223608677765705135.a, A048058, A048058.P10966972837158806934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

The programs for A224332, the canonical program `A224332.P16127276259677730642` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224332 has offset 1).

The definition of A224332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224332.P16127276259677730642

`(n+1)*(2*8^n-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224332

/-- `(n+1)*(2*8^n-1)` -/
def P16127276259677730642.Spec : Prop :=
  ∀ n, P16127276259677730642.a n = A224332 (n + 1)

theorem P16127276259677730642.correct : P16127276259677730642.Spec := by
  intro n
  simp only [A224332, Nat.add_sub_cancel]

end A224332

/-! ## A224332.P3376937595823004238

`∑{#}[3*n, (n+1)*2^#]`
-/

namespace A224332.P3376937595823004238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1) * 2 ^ k

end

end A224332.P3376937595823004238

namespace A224332

/-- `∑{#}[3*n, (n+1)*2^#]` -/
def P3376937595823004238.Spec : Prop :=
  ∀ n, (P3376937595823004238.a n : ℤ) = A224332 (n + 1)

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

/-! ## A224332.P3124129101169716394

`(n+1)*A013730(n)-(n+1)`
-/

namespace A224332.P3124129101169716394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A013730 n - (n + 1 : ℤ)

end

end A224332.P3124129101169716394

namespace A224332

/-- `(n+1)*A013730(n)-(n+1)` -/
def P3124129101169716394.Spec : Prop :=
  ∀ n, P3124129101169716394.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P13788722162701625992

`abs(A225883(3*n+1)*(n+1))`
-/

namespace A224332.P13788722162701625992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225883 (3 * n + 1) * (n + 1 : ℤ)|

end

end A224332.P13788722162701625992

namespace A224332

/-- `abs(A225883(3*n+1)*(n+1))` -/
def P13788722162701625992.Spec : Prop :=
  ∀ n, P13788722162701625992.a n = A224332 (n + 1)

end A224332

/-! ## A224332.P14795900802503511642

`2*(n+1)*A001018(n)-(n+1)`
-/

namespace A224332.P14795900802503511642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A001018 n - (n + 1 : ℤ)

end

end A224332.P14795900802503511642

namespace A224332

/-- `2*(n+1)*A001018(n)-(n+1)` -/
def P14795900802503511642.Spec : Prop :=
  ∀ n, P14795900802503511642.a n = A224332 (n + 1)

theorem P14795900802503511642.correct : P14795900802503511642.Spec := by
  intro n
  simp only [A224332, Nat.add_sub_cancel, A224332.P14795900802503511642.a, A224332.P16127276259677730642.a, A001018, A001018.P5588564631493008987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-! ## A224333.P2414526602153697302

`A002260(n+1)*A193844(n)`
-/

namespace A224333.P2414526602153697302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193844 n

end

end A224333.P2414526602153697302

/-! ## A224333.P13889135142271912161

`or(1, A193816(n))*A002260(n+1)`
-/

namespace A224333.P13889135142271912161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193816 n) * A002260 (n + 1)

end

end A224333.P13889135142271912161

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

The programs for A224334, the canonical program `A224334.P4926650244932830586` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224334 has offset 1).

The definition of A224334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224334.P4926650244932830586

`ogf((21-12x+3x^2)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224334

/-- `ogf((21-12x+3x^2)/(1-3x+3x^2-x^3))` -/
def P4926650244932830586.Spec : Prop :=
  ∀ n, P4926650244932830586.a n = A224334 (n + 1)

theorem P4926650244932830586.correct : P4926650244932830586.Spec := by
  intro n
  simp only [A224334, Nat.add_sub_cancel]

end A224334

/-! ## A224334.P15282133378147421594

`6*(n+1)*(n+3)+3`
-/

namespace A224334.P15282133378147421594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) * (n + 3) + 3

end

end A224334.P15282133378147421594

namespace A224334

/-- `6*(n+1)*(n+3)+3` -/
def P15282133378147421594.Spec : Prop :=
  ∀ n, (P15282133378147421594.a n : ℤ) = A224334 (n + 1)

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

/-! ## A224334.P17094314489664430236

`∑[12+a(n-1)]` with `a(0)=21, a(1)=30`
-/

namespace A224334.P17094314489664430236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 30] fun n f1 =>
  12 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224334.P17094314489664430236

namespace A224334

/-- `∑[12+a(n-1)]` -/
def P17094314489664430236.Spec : Prop :=
  ∀ n, (P17094314489664430236.a n : ℤ) = A224334 (n + 1)

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

/-! ## A224334.P17978181479512401809

`Δ[Δ[C((n+1)², 2)]]-3`
-/

namespace A224334.P17978181479512401809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A224334.P17978181479512401809

namespace A224334

/-- `Δ[Δ[C((n+1)², 2)]]-3` -/
def P17978181479512401809.Spec : Prop :=
  ∀ n, P17978181479512401809.a n = A224334 (n + 1)

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

/-! ## A224334.P15999564019706995770

`3*A079326(2*(n+2))`
-/

namespace A224334.P15999564019706995770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A079326 (2 * (n + 2))

end

end A224334.P15999564019706995770

namespace A224334

/-- `3*A079326(2*(n+2))` -/
def P15999564019706995770.Spec : Prop :=
  ∀ n, P15999564019706995770.a n = A224334 (n + 1)

end A224334

/-! ## A224334.P18285640444227135389

`3*A105638(2*(n+3))`
-/

namespace A224334.P18285640444227135389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105638 (2 * (n + 3))

end

end A224334.P18285640444227135389

namespace A224334

/-- `3*A105638(2*(n+3))` -/
def P18285640444227135389.Spec : Prop :=
  ∀ n, P18285640444227135389.a n = A224334 (n + 1)

end A224334

/-!
# A224335: Number of idempotent 4 X 4 0..n matrices of rank 3.

The programs for A224335, the canonical program `A224335.P17994603952580527836` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224335 has offset 1).

The definition of A224335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224335.P17994603952580527836

`ogf((60-28x+20x^2-4x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224335

/-- `ogf((60-28x+20x^2-4x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17994603952580527836.Spec : Prop :=
  ∀ n, P17994603952580527836.a n = A224335 (n + 1)

theorem P17994603952580527836.correct : P17994603952580527836.Spec := by
  intro n
  simp only [A224335, Nat.add_sub_cancel]

end A224335

/-! ## A224335.P10599629790458170770

`8*(n+1)*((n+1)*(n+4)+3)+4`
-/

namespace A224335.P10599629790458170770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1) * ((n + 1) * (n + 4) + 3) + 4

end

end A224335.P10599629790458170770

namespace A224335

/-- `8*(n+1)*((n+1)*(n+4)+3)+4` -/
def P10599629790458170770.Spec : Prop :=
  ∀ n, (P10599629790458170770.a n : ℤ) = A224335 (n + 1)

end A224335

/-! ## A224335.P10740653185721239094

`xor(1, 2*n+5)^3-4`
-/

namespace A224335.P10740653185721239094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n + 5) ^ 3 : ℤ) - 4

end

end A224335.P10740653185721239094

namespace A224335

/-- `xor(1, 2*n+5)^3-4` -/
def P10740653185721239094.Spec : Prop :=
  ∀ n, P10740653185721239094.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P14328141091969000884

`(n+3-xor(n, -1))^3-4`
-/

namespace A224335.P14328141091969000884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - Int.xor (n : ℤ) (-1)) ^ 3 - 4

end

end A224335.P14328141091969000884

namespace A224335

/-- `(n+3-xor(n, -1))^3-4` -/
def P14328141091969000884.Spec : Prop :=
  ∀ n, P14328141091969000884.a n = A224335 (n + 1)

end A224335

/-! ## A224335.P6318055308640946639

`6*C(2*n+5, 3)+2*n`
-/

namespace A224335.P6318055308640946639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (2 * n + 5) 3 + 2 * n

end

end A224335.P6318055308640946639

namespace A224335

/-- `6*C(2*n+5, 3)+2*n` -/
def P6318055308640946639.Spec : Prop :=
  ∀ n, (P6318055308640946639.a n : ℤ) = A224335 (n + 1)

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

The programs for A224336, the canonical program `A224336.P10132885771324555429` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224336 has offset 1).

The definition of A224336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224336.P10132885771324555429

`ogf((155+30x+80x^2-30x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224336

/-- `ogf((155+30x+80x^2-30x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10132885771324555429.Spec : Prop :=
  ∀ n, P10132885771324555429.a n = A224336 (n + 1)

theorem P10132885771324555429.correct : P10132885771324555429.Spec := by
  intro n
  simp only [A224336, Nat.add_sub_cancel]

end A224336

/-! ## A224336.P10407086176162458938

`10*(n+1)*(n+3)*((n+1)*(n+3)+2)+5`
-/

namespace A224336.P10407086176162458938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1) * (n + 3) * ((n + 1) * (n + 3) + 2) + 5

end

end A224336.P10407086176162458938

namespace A224336

/-- `10*(n+1)*(n+3)*((n+1)*(n+3)+2)+5` -/
def P10407086176162458938.Spec : Prop :=
  ∀ n, (P10407086176162458938.a n : ℤ) = A224336 (n + 1)

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
# A224337: Number of idempotent 6 X 6 0..n matrices of rank 5.

The programs for A224337, the canonical program `A224337.P926683998085371693` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224337 has offset 1).

The definition of A224337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224337.P926683998085371693

`12*(n+1)*((n+1)*((n+1)*((n+1)*(n+6)+10)+10)+5)+6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224337

/-- `12*(n+1)*((n+1)*((n+1)*((n+1)*(n+6)+10)+10)+5)+6` -/
def P926683998085371693.Spec : Prop :=
  ∀ n, (P926683998085371693.a n : ℤ) = A224337 (n + 1)

theorem P926683998085371693.correct : P926683998085371693.Spec := by
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

/-!
# A224338: Number of idempotent 7 X 7 0..n matrices of rank 6.

The programs for A224338, the canonical program `A224338.P12342720189647736706` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224338 has offset 1).

The definition of A224338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224338.P12342720189647736706

`14*(n+1)*(n+3)*((n+1)²+n+1+1)*((n+1)*(n+4)+3)+7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224338

/-- `14*(n+1)*(n+3)*((n+1)²+n+1+1)*((n+1)*(n+4)+3)+7` -/
def P12342720189647736706.Spec : Prop :=
  ∀ n, (P12342720189647736706.a n : ℤ) = A224338 (n + 1)

theorem P12342720189647736706.correct : P12342720189647736706.Spec := by
  intro n
  simp only [A224338, Nat.add_sub_cancel]

end A224338

/-! ## A224338.P11626996038826840104

`7*(A106318(2+n)-1)`
-/

namespace A224338.P11626996038826840104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A106318 (2 + n) - 1)

end

end A224338.P11626996038826840104

namespace A224338

/-- `7*(A106318(2+n)-1)` -/
def P11626996038826840104.Spec : Prop :=
  ∀ n, P11626996038826840104.a n = A224338 (n + 1)

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

theorem P3207183159266832319.correct : P3207183159266832319.Spec := by
  intro n
  simp only [A224338, Nat.add_sub_cancel, A224338.P3207183159266832319.a, A224338.P12342720189647736706.a, A123866, A123866.P11621378827014358143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A224339: Absolute difference between sum of odd divisors of n^2 and sum of even divisors of n^2.

The programs for A224339, the canonical program `A224339.P7859266464313089744` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224339 has offset 1).

The definition of A224339 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113184, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224339.P16826294924191813714

`(-1)^(n+1)*∑{d}[(n+1)², (-1)^#*#]`
-/

namespace A224339.P16826294924191813714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (∑ d ∈ Nat.divisors (f1 n), (-1) ^ d * (d : ℤ))

end

end A224339.P16826294924191813714

namespace A224339

/-- `(-1)^(n+1)*∑{d}[(n+1)², (-1)^#*#]` -/
def P16826294924191813714.Spec : Prop :=
  ∀ n, P16826294924191813714.a n = A224339 (n + 1)

end A224339

/-! ## A224339.P7859266464313089744

`A113184((n+1)²)`

The canonical program, it is in `Seq.B001.C010`.
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

/-! ## A224341.P924541636565094840

`A001462(Δ[A007048(n+1)])`
-/

namespace A224341.P924541636565094840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (f1 (n + 1) - f1 n).toNat

end

end A224341.P924541636565094840

/-! ## A224341.P16862721368802155203

`A157271(A007318(n)+A002910(n))`
-/

namespace A224341.P16862721368802155203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A007318 n + A002910 n).toNat

end

end A224341.P16862721368802155203

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

/-!
# A224342: Apparently solves the identity: find sequence B that represents the numbers of ordered compositions of n using the terms of A, and vice versa.

The programs for A224342, there is no canonical definition to state claims against.
-/

/-! ## A224342.P5342667974151185341

`A357451(n+1)`
-/

namespace A224342.P5342667974151185341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357451 (n + 1)

end

end A224342.P5342667974151185341

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

/-! ## A224342.P11117935963823824652

`A073188(A052829(n+1))`
-/

namespace A224342.P11117935963823824652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A052829 (n + 1)).toNat

end

end A224342.P11117935963823824652

/-! ## A224342.P13407135085055571131

`A055086(A308273(n+1))`
-/

namespace A224342.P13407135085055571131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A308273 (n + 1)).toNat

end

end A224342.P13407135085055571131

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

/-!
# A224360: Triangle read by rows: T(n,k) = -1 + length of the Collatz sequence of -(n-k)/(2k+1) for n >= 1 and k >= 0.

The programs for A224360, there is no canonical definition to state claims against.
-/

/-! ## A224360.P6151843499298247913

`A224361(1+n)-1`
-/

namespace A224360.P6151843499298247913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224361 (1 + n) - 1

end

end A224360.P6151843499298247913

/-! ## A224360.P15158406488257558458

`A002837(A224361(n+1))`
-/

namespace A224360.P15158406488257558458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A224361 (n + 1)).toNat

end

end A224360.P15158406488257558458

/-! ## A224360.P13527242251510640278

`A057918(A224361(1+n)²)`
-/

namespace A224360.P13527242251510640278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A224361 (1 + n) ^ 2).toNat

end

end A224360.P13527242251510640278

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

/-!
# A224363: Primes p such that there are no squares between p and the prime following p.

The programs for A224363, the canonical program `A224363.P1517019116254697631` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224363 has offset 1).

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

/-! ## A224363.P1517019116254697631

`p?[A061265(n+1)+A000040(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A224363

/-- `p?[A061265(n+1)+A000040(n+1)]` -/
def P1517019116254697631.Spec : Prop :=
  ∀ n, P1517019116254697631.a n = A224363 (n + 1)

theorem P1517019116254697631.correct : P1517019116254697631.Spec := by
  intro n
  simp only [A224363, Nat.add_sub_cancel]

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

/-! ## A224363.P9398503895337862184

`A064989(A113911(n+1))`
-/

namespace A224363.P9398503895337862184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A113911 (n + 1)).toNat

end

end A224363.P9398503895337862184

namespace A224363

/-- `A064989(A113911(n+1))` -/
def P9398503895337862184.Spec : Prop :=
  ∀ n, P9398503895337862184.a n = A224363 (n + 1)

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

/-! ## A224364.P14309729249037459381

`A057079(A008585(n))*A281683(n)`
-/

namespace A224364.P14309729249037459381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A008585 n).toNat * A281683 n

end

end A224364.P14309729249037459381

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

/-! ## A224365.P8779442259842728817

`Δ[A063674(1+n)]`
-/

namespace A224365.P8779442259842728817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063674 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P8779442259842728817

/-! ## A224365.P61770830785579658

`Δ[record[A057082(4+n)]]`
-/

namespace A224365.P61770830785579658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (4 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224365.P61770830785579658

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

/-! ## A224366.P9476111008561696203

`∑{#}[n², A303909(#)]`
-/

namespace A224366.P9476111008561696203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A303909 k

end

end A224366.P9476111008561696203

/-! ## A224366.P7231246719491636759

`A232266(∑[n])`
-/

namespace A224366.P7231246719491636759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224366.P7231246719491636759

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

/-!
# A224369: Number of n X 3 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224369, the canonical program `A224369.P6644643692177300678` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224369 has offset 1).

The definition of A224369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224369.P6644643692177300678

`ogf((22-2x+10x^2-12x^3+12x^4)/(1-10x+16x^2-30x^3+14x^4-12x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A224369

/-- `ogf((22-2x+10x^2-12x^3+12x^4)/(1-10x+16x^2-30x^3+14x^4-12x^5))` -/
def P6644643692177300678.Spec : Prop :=
  ∀ n, P6644643692177300678.a n = A224369 (n + 1)

theorem P6644643692177300678.correct : P6644643692177300678.Spec := by
  intro n
  simp only [A224369, Nat.add_sub_cancel]

end A224369

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

namespace A224369

/-- `A224374(∑[n+3]+1)` -/
def P12607364072884339194.Spec : Prop :=
  ∀ n, P12607364072884339194.a n = A224369 (n + 1)

end A224369

/-!
# A224370: Number of n X 4 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224370, there is no canonical definition to state claims against.
-/

/-! ## A224370.P14012864505229491104

`A224374(A055998(n+2))`
-/

namespace A224370.P14012864505229491104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A055998 (n + 2)).toNat

end

end A224370.P14012864505229491104

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

/-!
# A224372: Number of nX6 0..2 arrays with rows unimodal and antidiagonals nondecreasing.

The programs for A224372, there is no canonical definition to state claims against.
-/

/-! ## A224372.P2816553065639940877

`A224374(A052905(n+3))`
-/

namespace A224372.P2816553065639940877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (A052905 (n + 3)).toNat

end

end A224372.P2816553065639940877

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

/-!
# A224380: Table read by antidiagonals of numbers of form (2^n -1)*2^(m+2) + 3 where n>=1, m>=1.

The programs for A224380, the canonical program `A224380.P2678322717849813530` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224380 has offset 1).

The definition of A224380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224380.P2678322717849813530

`4*A224195(1+n)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224380

/-- `4*A224195(1+n)-1` -/
def P2678322717849813530.Spec : Prop :=
  ∀ n, P2678322717849813530.a n = A224380 (n + 1)

theorem P2678322717849813530.correct : P2678322717849813530.Spec := by
  intro n
  simp only [A224380, Nat.add_sub_cancel]

end A224380

/-! ## A224380.P11182932102055679384

`3+4*A043569(n+1)`
-/

namespace A224380.P11182932102055679384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + 4 * A043569 (n + 1)

end

end A224380.P11182932102055679384

namespace A224380

/-- `3+4*A043569(n+1)` -/
def P11182932102055679384.Spec : Prop :=
  ∀ n, P11182932102055679384.a n = A224380 (n + 1)

end A224380

/-! ## A224380.P17875761437356878224

`4*A081118(1+n)+7`
-/

namespace A224380.P17875761437356878224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081118 (1 + n) + 7

end

end A224380.P17875761437356878224

namespace A224380

/-- `4*A081118(1+n)+7` -/
def P17875761437356878224.Spec : Prop :=
  ∀ n, P17875761437356878224.a n = A224380 (n + 1)

theorem P17875761437356878224.correct : P17875761437356878224.Spec := by
  intro n
  simp only [A224380, Nat.add_sub_cancel, A224380.P17875761437356878224.a, A224380.P2678322717849813530.a, A081118, A081118.P6487108056144640916.a, A224195, A224195.P2968674169476824705.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A224380

/-! ## A224380.P9340315300862059243

`8*(A089633(n)+1)+3`
-/

namespace A224380.P9340315300862059243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A089633 n + 1) + 3

end

end A224380.P9340315300862059243

namespace A224380

/-- `8*(A089633(n)+1)+3` -/
def P9340315300862059243.Spec : Prop :=
  ∀ n, P9340315300862059243.a n = A224380 (n + 1)

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

/-! ## A224380.P6650300823348507614

`8*A023758(n+2)+3`
-/

namespace A224380.P6650300823348507614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023758 (n + 2) + 3

end

end A224380.P6650300823348507614

namespace A224380

/-- `8*A023758(n+2)+3` -/
def P6650300823348507614.Spec : Prop :=
  ∀ n, P6650300823348507614.a n = A224380 (n + 1)

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

/-!
# A224383: Primes of the form (2^n - 1)*(2^(m+2)) + 3 where n >= 1, m >= 1.

The programs for A224383, the canonical program `A224383.P7538981099874537146` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224383 has offset 1).

The definition of A224383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224383.P7538981099874537146

`∩[A082554(n+1), A224380(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A224383

/-- `∩[A082554(n+1), A224380(n+1)]` -/
def P7538981099874537146.Spec : Prop :=
  ∀ n, (P7538981099874537146.a n : ℤ) = A224383 (n + 1)

theorem P7538981099874537146.correct : P7538981099874537146.Spec := by
  intro n
  simp only [A224383, Nat.add_sub_cancel]

end A224383

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

namespace A224383

/-- `∩[A100724(n+1), A224380(n+1)]` -/
def P6449012160333952998.Spec : Prop :=
  ∀ n, (P6449012160333952998.a n : ℤ) = A224383 (n + 1)

end A224383

/-! ## A224383.P4735521934448467131

`∩[4*A224195(1+n)-1, A082554(n+1)]`
-/

namespace A224383.P4735521934448467131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224195 (1 + n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224383.P4735521934448467131

namespace A224383

/-- `∩[4*A224195(1+n)-1, A082554(n+1)]` -/
def P4735521934448467131.Spec : Prop :=
  ∀ n, (P4735521934448467131.a n : ℤ) = A224383 (n + 1)

end A224383

/-! ## A224383.P4617756660858609221

`∩[4*A043569(n+1)+3, A082554(n+1)]`
-/

namespace A224383.P4617756660858609221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043569 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224383.P4617756660858609221

namespace A224383

/-- `∩[4*A043569(n+1)+3, A082554(n+1)]` -/
def P4617756660858609221.Spec : Prop :=
  ∀ n, (P4617756660858609221.a n : ℤ) = A224383 (n + 1)

end A224383

/-! ## A224383.P495927908253216535

`∩[ceil(A224701(n+1)/2), A082554(n+1)]`
-/

namespace A224383.P495927908253216535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224701 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224383.P495927908253216535

namespace A224383

/-- `∩[ceil(A224701(n+1)/2), A082554(n+1)]` -/
def P495927908253216535.Spec : Prop :=
  ∀ n, (P495927908253216535.a n : ℤ) = A224383 (n + 1)

end A224383

/-!
# A224384: a(n) = 1 + 17^n.

The programs for A224384, the canonical program `A224384.P4110925242579660247` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224384 has offset 0).

The definition of A224384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+17^n` (program `A224384.P4110925242579660247`, by `A224384.P4110925242579660247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224384.P4110925242579660247

`1+17^n`

The canonical program, it is in `Seq.B000.C035`.
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

/-! ## A224387.P9199938357256060261

`A224391(eq[3, row(n)-col(n)]+1)`
-/

namespace A224387.P9199938357256060261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224387.P9199938357256060261

/-!
# A224388: Number of nX5 0..3 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A224388, there is no canonical definition to state claims against.
-/

/-! ## A224388.P1644047921087639519

`A224391(eq[4, row(n)-col(n)]+1)`
-/

namespace A224388.P1644047921087639519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224388.P1644047921087639519

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

/-! ## A224399.P12036401368629372352

`lt[A341808(n+9), A011584(n)]`
-/

namespace A224399.P12036401368629372352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341808 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224399.P12036401368629372352

