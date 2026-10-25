import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A377701: Number of non-perfect-powers x in the range 2^n < x < 2^(n+1).

The programs for A377701, there is no canonical definition to state claims against.
-/

/-! ## A377701.P3462497863306116949

`2^n-1-A377467(n)`
-/

namespace A377701.P3462497863306116949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - A377467 n

end

end A377701.P3462497863306116949

/-! ## A377701.P13471741481886992288

`xor(A000225(n), A377467(n))`
-/

namespace A377701.P13471741481886992288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A377467 n)

end

end A377701.P13471741481886992288

/-! ## A377701.P10243835265234956253

`A000079(n)-(A377467(n)+1)`
-/

namespace A377701.P10243835265234956253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A377467 n + 1)

end

end A377701.P10243835265234956253

/-! ## A377701.P12458440166981176585

`A217038(A328080(n))`
-/

namespace A377701.P12458440166981176585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A328080 n).toNat

end

end A377701.P12458440166981176585

/-!
# A377702: Perfect-powers except for powers of 2.

The programs for A377702, there is no canonical definition to state claims against.
-/

/-! ## A377702.P8538357520216829265

`eq[A048298(n), A301573(n)]`
-/

namespace A377702.P8538357520216829265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377702.P8538357520216829265

/-! ## A377702.P14680156773112879795

`eq[A060147(n), A301573(n)]`
-/

namespace A377702.P14680156773112879795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377702.P14680156773112879795

/-! ## A377702.P4405892933763819472

`eq[A099892(n), A301573(n)]`
-/

namespace A377702.P4405892933763819472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377702.P4405892933763819472

/-! ## A377702.P1238776020517862045

`eq[A099893(n), A301573(n)]`
-/

namespace A377702.P1238776020517862045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377702.P1238776020517862045

/-! ## A377702.P2211073442638714956

`eq[A255308(n), A301573(n)]`
-/

namespace A377702.P2211073442638714956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377702.P2211073442638714956

/-! ## A377702.P10430236681254972078

`A001597(comp[A188951(n)]+1)`
-/

namespace A377702.P10430236681254972078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A377702.P10430236681254972078

/-! ## A377702.P13422399439380323630

`filter[A038838(n+1), A075802(#)]`
-/

namespace A377702.P13422399439380323630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A377702.P13422399439380323630

/-! ## A377702.P10472249960558906561

`filter[A001597(n+1), A202238(#)]`
-/

namespace A377702.P10472249960558906561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A377702.P10472249960558906561

/-! ## A377702.P9052783118578552087

`filter[A001597(n+1), A235046(#)]`
-/

namespace A377702.P9052783118578552087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A235046 (f1 j).toNat = 1) n)

end

end A377702.P9052783118578552087

/-! ## A377702.P9919929994642129374

`filter[A001597(n+1), A347244(#)]`
-/

namespace A377702.P9919929994642129374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347244 (f1 j).toNat = 1) n)

end

end A377702.P9919929994642129374

/-!
# A377703: First differences of the sequence A345531(k) = least prime-power greater than the k-th prime.

The programs for A377703, there is no canonical definition to state claims against.
-/

/-! ## A377703.P16520645586131886093

`Δ[A345531(n+1)]`
-/

namespace A377703.P16520645586131886093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P16520645586131886093

/-! ## A377703.P6062161065182428224

`Δ[A120635(Δ[A007504(n)])]`
-/

namespace A377703.P6062161065182428224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P6062161065182428224

/-! ## A377703.P7112852102002073316

`Δ[A322991(Δ[A007504(n)])]`
-/

namespace A377703.P7112852102002073316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322991 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P7112852102002073316

/-! ## A377703.P13896355715267130235

`Δ[A000015(A008864(n+1))]`
-/

namespace A377703.P13896355715267130235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P13896355715267130235

/-! ## A377703.P17481861430713435961

`Δ[A120635(A000040(n+1))]`
-/

namespace A377703.P17481861430713435961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P17481861430713435961

/-! ## A377703.P9153512619958921365

`Δ[A246655(A024620(n+1))]`
-/

namespace A377703.P9153512619958921365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A024620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P9153512619958921365

/-! ## A377703.P627246689671295735

`Δ[A000015(A000040(n+1)+1)]`
-/

namespace A377703.P627246689671295735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P627246689671295735

/-! ## A377703.P8717941979848612760

`Δ[A000961(A027883(n+1)+2)]`
-/

namespace A377703.P8717941979848612760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A027883 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377703.P8717941979848612760

/-! ## A377703.P4541228472151773895

`A345531(n+2)-A345531(n+1)`
-/

namespace A377703.P4541228472151773895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345531 (n + 2) - A345531 (n + 1)

end

end A377703.P4541228472151773895

/-! ## A377703.P17465582939400670229

`A001223(n+1)+A377281(n+2)-A377281(n+1)`
-/

namespace A377703.P17465582939400670229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A377281 (n + 2) - A377281 (n + 1))

end

end A377703.P17465582939400670229

/-!
# A377704: a(n) = binomial(Fibonacci(n)+Fibonacci(n+1)-2,Fibonacci(n)-1).

The programs for A377704, there is no canonical definition to state claims against.
-/

/-! ## A377704.P15723676595567346512

`A135962(A000071(n+2))`
-/

namespace A377704.P15723676595567346512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135962 (A000071 (n + 2)).toNat

end

end A377704.P15723676595567346512

/-! ## A377704.P456321246534373760

`C(A001911(n), ∑[A000045(n)])`
-/

namespace A377704.P456321246534373760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001911 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377704.P456321246534373760

/-! ## A377704.P10999786444713082768

`C(A001911(n), A000071(n+1))`
-/

namespace A377704.P10999786444713082768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001911 n).toNat (A000071 (n + 1)).toNat

end

end A377704.P10999786444713082768

/-! ## A377704.P1710738114721617632

`C(A007067(A000071(n+2)), A000071(n+1))`
-/

namespace A377704.P1710738114721617632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007067 (A000071 (n + 2)).toNat).toNat (A000071 (n + 1)).toNat

end

end A377704.P1710738114721617632

/-! ## A377704.P9231588515779968651

`A039911(A131569(n+1))`
-/

namespace A377704.P9231588515779968651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039911 (A131569 (n + 1)).toNat

end

end A377704.P9231588515779968651

/-!
# A377707: Numbers k that have a record number of divisors d such that gcd(d, k/d) is a square.

The programs for A377707, there is no canonical definition to state claims against.
-/

/-! ## A377707.P1089565102430028274

`filter[A378133(n), A353519(#)]`
-/

namespace A377707.P1089565102430028274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A377707.P1089565102430028274

/-! ## A377707.P2950644063860725797

`filter[A060735(n+1), A353519(#)]`
-/

namespace A377707.P2950644063860725797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A377707.P2950644063860725797

/-! ## A377707.P17117432954010723198

`filter[A168264(n+1), A353519(#)]`
-/

namespace A377707.P17117432954010723198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A377707.P17117432954010723198

/-!
# A377709: Numbers that have a record number of infinitary divisors that are powerful (A001694).

The programs for A377709, there is no canonical definition to state claims against.
-/

/-! ## A377709.P6115318759289776642

`A005943(A001610(n))%A126896(2*n+5)`
-/

namespace A377709.P6115318759289776642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005943 (A001610 n).toNat) (A126896 (2 * n + 5))

end

end A377709.P6115318759289776642

/-! ## A377709.P10599455724568861343

`A298932(A006737(n))`
-/

namespace A377709.P10599455724568861343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (A006737 n).toNat

end

end A377709.P10599455724568861343

/-!
# A377711: Numbers that have a record number of (1+phi)-divisors (A061389).

The programs for A377711, there is no canonical definition to state claims against.
-/

/-! ## A377711.P2788204352567899932

`A194712(A280731(n+1))`
-/

namespace A377711.P2788204352567899932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (A280731 (n + 1)).toNat

end

end A377711.P2788204352567899932

/-! ## A377711.P5308221303581569996

`A305462(A178954(n+1))`
-/

namespace A377711.P5308221303581569996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (A178954 (n + 1)).toNat

end

end A377711.P5308221303581569996

/-! ## A377711.P5593232605643533809

`record[A046523(∑[A371254(n+1)])]`
-/

namespace A377711.P5593232605643533809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377711.P5593232605643533809

/-!
# A377712: a(n) is the least divisor of n with as many decimal digits as n.

The programs for A377712, there is no canonical definition to state claims against.
-/

/-! ## A377712.P14673641553292172372

`gcd(A111695(n+1), A378024(n+1))`
-/

namespace A377712.P14673641553292172372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111695 (n + 1)) (A378024 (n + 1))

end

end A377712.P14673641553292172372

/-!
# A377714: Cogrowth sequence for the 8-element group C4 X C2 = .

The programs for A377714, the canonical program `A377714.P6248570968444893570` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377714 has offset 0).

The definition of A377714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377714.P6248570968444893570

`4*a(n-1)-4*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=16`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377714

/-- `4*a(n-1)-4*a(n-2)+16*a(n-3)` -/
def P6248570968444893570.Spec : Prop :=
  ∀ n, P6248570968444893570.a n = A377714 n

theorem P6248570968444893570.correct : P6248570968444893570.Spec := by
  intro n
  simp only [A377714]

end A377714

/-! ## A377714.P7064570744479837375

`A038503(2*n)`
-/

namespace A377714.P7064570744479837375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (2 * n)

end

end A377714.P7064570744479837375

namespace A377714

/-- `A038503(2*n)` -/
def P7064570744479837375.Spec : Prop :=
  ∀ n, P7064570744479837375.a n = A377714 n

end A377714

/-! ## A377714.P15800454250568007850

`A038519(2*n)`
-/

namespace A377714.P15800454250568007850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (2 * n)

end

end A377714.P15800454250568007850

namespace A377714

/-- `A038519(2*n)` -/
def P15800454250568007850.Spec : Prop :=
  ∀ n, P15800454250568007850.a n = A377714 n

end A377714

/-! ## A377714.P4289331443400178843

`A137171(A017101(n))`
-/

namespace A377714.P4289331443400178843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A017101 n).toNat

end

end A377714.P4289331443400178843

namespace A377714

/-- `A137171(A017101(n))` -/
def P4289331443400178843.Spec : Prop :=
  ∀ n, P4289331443400178843.a n = A377714 n

end A377714

/-! ## A377714.P13981844031877205117

`A137171(A047621(2*n+1))`
-/

namespace A377714.P13981844031877205117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047621 (2 * n + 1)).toNat

end

end A377714.P13981844031877205117

namespace A377714

/-- `A137171(A047621(2*n+1))` -/
def P13981844031877205117.Spec : Prop :=
  ∀ n, P13981844031877205117.a n = A377714 n

end A377714

/-! ## A377714.P16255778814051662910

`A137171(A047463(2*n+1)+1)`
-/

namespace A377714.P16255778814051662910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047463 (2 * n + 1) + 1).toNat

end

end A377714.P16255778814051662910

namespace A377714

/-- `A137171(A047463(2*n+1)+1)` -/
def P16255778814051662910.Spec : Prop :=
  ∀ n, P16255778814051662910.a n = A377714 n

end A377714

/-! ## A377714.P85596773362961522

`A137171(A047522(2*n+1)+2)`
-/

namespace A377714.P85596773362961522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047522 (2 * n + 1) + 2).toNat

end

end A377714.P85596773362961522

namespace A377714

/-- `A137171(A047522(2*n+1)+2)` -/
def P85596773362961522.Spec : Prop :=
  ∀ n, P85596773362961522.a n = A377714 n

end A377714

/-! ## A377714.P11721812383554000288

`A038505(2*n)+A009116(2*n)`
-/

namespace A377714.P11721812383554000288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (2 * n) + A009116 (2 * n)

end

end A377714.P11721812383554000288

namespace A377714

/-- `A038505(2*n)+A009116(2*n)` -/
def P11721812383554000288.Spec : Prop :=
  ∀ n, P11721812383554000288.a n = A377714 n

end A377714

/-! ## A377714.P4322911693624426496

`A038518(2*n)+A009116(2*n)`
-/

namespace A377714.P4322911693624426496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (2 * n) + A009116 (2 * n)

end

end A377714.P4322911693624426496

namespace A377714

/-- `A038518(2*n)+A009116(2*n)` -/
def P4322911693624426496.Spec : Prop :=
  ∀ n, P4322911693624426496.a n = A377714 n

end A377714

/-! ## A377714.P1838416172006099957

`A146559(2*n)+A038505(2*n)`
-/

namespace A377714.P1838416172006099957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (2 * n) + A038505 (2 * n)

end

end A377714.P1838416172006099957

namespace A377714

/-- `A146559(2*n)+A038505(2*n)` -/
def P1838416172006099957.Spec : Prop :=
  ∀ n, P1838416172006099957.a n = A377714 n

end A377714

/-! ## A377714.P12313358014297484863

`A011782(2*n)-A038505(2*n)`
-/

namespace A377714.P12313358014297484863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A038505 (2 * n)

end

end A377714.P12313358014297484863

namespace A377714

/-- `A011782(2*n)-A038505(2*n)` -/
def P12313358014297484863.Spec : Prop :=
  ∀ n, P12313358014297484863.a n = A377714 n

end A377714

/-! ## A377714.P15357704554166710493

`A011782(2*n)-A038518(2*n)`
-/

namespace A377714.P15357704554166710493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A038518 (2 * n)

end

end A377714.P15357704554166710493

namespace A377714

/-- `A011782(2*n)-A038518(2*n)` -/
def P15357704554166710493.Spec : Prop :=
  ∀ n, P15357704554166710493.a n = A377714 n

end A377714

/-! ## A377714.P7870134177082025068

`A038518(2*n+1)-A000749(2*n)`
-/

namespace A377714.P7870134177082025068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (2 * n + 1) - A000749 (2 * n)

end

end A377714.P7870134177082025068

namespace A377714

/-- `A038518(2*n+1)-A000749(2*n)` -/
def P7870134177082025068.Spec : Prop :=
  ∀ n, P7870134177082025068.a n = A377714 n

end A377714

/-! ## A377714.P7186055207538374040

`A038504(2*n+1)-A038504(2*n)`
-/

namespace A377714.P7186055207538374040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (2 * n + 1) - A038504 (2 * n)

end

end A377714.P7186055207538374040

namespace A377714

/-- `A038504(2*n+1)-A038504(2*n)` -/
def P7186055207538374040.Spec : Prop :=
  ∀ n, P7186055207538374040.a n = A377714 n

end A377714

/-! ## A377714.P12118507443341828331

`A038518(2*n+1)-A038520(2*n)`
-/

namespace A377714.P12118507443341828331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (2 * n + 1) - A038520 (2 * n)

end

end A377714.P12118507443341828331

namespace A377714

/-- `A038518(2*n+1)-A038520(2*n)` -/
def P12118507443341828331.Spec : Prop :=
  ∀ n, P12118507443341828331.a n = A377714 n

end A377714

/-! ## A377714.P7700197087972626619

`A038520(2*n+1)-A038521(2*n)`
-/

namespace A377714.P7700197087972626619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (2 * n + 1) - A038521 (2 * n)

end

end A377714.P7700197087972626619

namespace A377714

/-- `A038520(2*n+1)-A038521(2*n)` -/
def P7700197087972626619.Spec : Prop :=
  ∀ n, P7700197087972626619.a n = A377714 n

end A377714

/-! ## A377714.P11629513815763419508

`A135360(2*n)-A038505(2*n+1)`
-/

namespace A377714.P11629513815763419508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135360 (2 * n) - A038505 (2 * n + 1)

end

end A377714.P11629513815763419508

namespace A377714

/-- `A135360(2*n)-A038505(2*n+1)` -/
def P11629513815763419508.Spec : Prop :=
  ∀ n, P11629513815763419508.a n = A377714 n

end A377714

/-!
# A377715: Number of permutations (p(1),p(2),...,p(n)) of (1,2,...,n) such that p(i)-i is in {-2,3,4} for all i=1,...,n.

The programs for A377715, there is no canonical definition to state claims against.
-/

/-! ## A377715.P10553958739995316106

`A257000(A093314(2*n+1))+A017888(2*n)`
-/

namespace A377715.P10553958739995316106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A093314 (2 * n + 1)).toNat + A017888 (2 * n)

end

end A377715.P10553958739995316106

/-! ## A377715.P6092369509226863830

`A017888(2*n)^A195644(A195644(n+1))`
-/

namespace A377715.P6092369509226863830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017888 (2 * n) : ℚ) ^ (A195644 (A195644 (n + 1)).toNat : ℤ)

end

end A377715.P6092369509226863830

/-! ## A377715.P295478143895843010

`A000217(A017837(n))%A111791(3*n+4)`
-/

namespace A377715.P295478143895843010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A017837 n).toNat) (A111791 (3 * n + 4))

end

end A377715.P295478143895843010

/-! ## A377715.P8088169056293941194

`A216229(A302796(3*n+5))+A017888(2*n)`
-/

namespace A377715.P8088169056293941194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216229 (A302796 (3 * n + 5)).toNat + A017888 (2 * n)

end

end A377715.P8088169056293941194

/-! ## A377715.P4605254021377821814

`A017888(lt[A209918(n+1), A010146(n)])`
-/

namespace A377715.P4605254021377821814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377715.P4605254021377821814

/-!
# A377716: E.g.f. satisfies A(x) = (1 + (exp(x) - 1) * A(x))^2.

The programs for A377716, there is no canonical definition to state claims against.
-/

/-! ## A377716.P7558637819463266050

`A020657(A303924(n)+A065866(n))`
-/

namespace A377716.P7558637819463266050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A303924 n + A065866 n).toNat

end

end A377716.P7558637819463266050

/-!
# A377717: E.g.f. satisfies A(x) = (1 + (exp(x) - 1) * A(x))^3.

The programs for A377717, there is no canonical definition to state claims against.
-/

/-! ## A377717.P15368274848661228

`or(A005117(A099694(n)), A129271(n))`
-/

namespace A377717.P15368274848661228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005117 (A099694 n).toNat) (A129271 n)

end

end A377717.P15368274848661228

/-!
# A377721: Numbers that are not of the form k(k+1)(2k+1)/6 + k.

The programs for A377721, the canonical program `A377721.P13608278594952562135` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377721 has offset 1).

The definition of A377721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377721.P13608278594952562135

`A074279(n+1)+n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377721

/-- `A074279(n+1)+n` -/
def P13608278594952562135.Spec : Prop :=
  ∀ n, P13608278594952562135.a n = A377721 (n + 1)

theorem P13608278594952562135.correct : P13608278594952562135.Spec := by
  intro n
  simp only [A377721, Nat.add_sub_cancel]

end A377721

/-! ## A377721.P329593161040290715

`comp[∑[n²]+n]`
-/

namespace A377721.P329593161040290715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A377721.P329593161040290715

namespace A377721

/-- `comp[∑[n²]+n]` -/
def P329593161040290715.Spec : Prop :=
  ∀ n, (P329593161040290715.a n : ℤ) = A377721 (n + 1)

end A377721

/-! ## A377721.P2334140850526426994

`∑[(char[∑[(n+1)²]]+1)!]`
-/

namespace A377721.P2334140850526426994
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377721.P2334140850526426994

namespace A377721

/-- `∑[(char[∑[(n+1)²]]+1)!]` -/
def P2334140850526426994.Spec : Prop :=
  ∀ n, (P2334140850526426994.a n : ℤ) = A377721 (n + 1)

end A377721

/-! ## A377721.P2432268396459197761

`∑[char[∑[∑[2*n+1]]]]%(n+1)+1+n`
-/

namespace A377721.P2432268396459197761
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1 + n

end

end A377721.P2432268396459197761

namespace A377721

/-- `∑[char[∑[∑[2*n+1]]]]%(n+1)+1+n` -/
def P2432268396459197761.Spec : Prop :=
  ∀ n, (P2432268396459197761.a n : ℤ) = A377721 (n + 1)

end A377721

/-! ## A377721.P12231158142323976552

`∑[A253903(n)]+n`
-/

namespace A377721.P12231158142323976552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A377721.P12231158142323976552

namespace A377721

/-- `∑[A253903(n)]+n` -/
def P12231158142323976552.Spec : Prop :=
  ∀ n, P12231158142323976552.a n = A377721 (n + 1)

end A377721

/-! ## A377721.P8196462472327581559

`sqrt(A213083(n+1))+n`
-/

namespace A377721.P8196462472327581559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213083 (n + 1) : ℝ) + (n : ℝ)

end

end A377721.P8196462472327581559

namespace A377721

/-- `sqrt(A213083(n+1))+n` -/
def P8196462472327581559.Spec : Prop :=
  ∀ n, P8196462472327581559.a n = (A377721 (n + 1) : ℝ)

end A377721

/-! ## A377721.P3824223827033617242

`lt[1, A292781(n)²]`
-/

namespace A377721.P3824223827033617242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377721.P3824223827033617242

namespace A377721

/-- `lt[1, A292781(n)²]` -/
def P3824223827033617242.Spec : Prop :=
  ∀ n, (P3824223827033617242.a n : ℤ) = A377721 (n + 1)

end A377721

/-!
# A377722: n appears n^4 times.

The programs for A377722, the canonical program `A377722.P5251673702475807750` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377722 has offset 1).

The definition of A377722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377722.P5251673702475807750

`∑[char[∑[n^4]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377722

/-- `∑[char[∑[n^4]]]` -/
def P5251673702475807750.Spec : Prop :=
  ∀ n, (P5251673702475807750.a n : ℤ) = A377722 (n + 1)

theorem P5251673702475807750.correct : P5251673702475807750.Spec := by
  intro n
  simp only [A377722, Nat.add_sub_cancel]

end A377722

/-! ## A377722.P5620331503380705704

`dr(∑[char[∑[n²²]]])`
-/

namespace A377722.P5620331503380705704
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A377722.P5620331503380705704

namespace A377722

/-- `dr(∑[char[∑[n²²]]])` -/
def P5620331503380705704.Spec : Prop :=
  ∀ n, (P5620331503380705704.a n : ℤ) = A377722 (n + 1)

end A377722

/-! ## A377722.P8729406796420094438

`comp[A231689(n)+n]-n`
-/

namespace A377722.P8729406796420094438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231689 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A377722.P8729406796420094438

namespace A377722

/-- `comp[A231689(n)+n]-n` -/
def P8729406796420094438.Spec : Prop :=
  ∀ n, P8729406796420094438.a n = A377722 (n + 1)

end A377722

/-! ## A377722.P5723541088783802882

`A198044(∑[char[∑[n²²]]])`
-/

namespace A377722.P5723541088783802882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377722.P5723541088783802882

namespace A377722

/-- `A198044(∑[char[∑[n²²]]])` -/
def P5723541088783802882.Spec : Prop :=
  ∀ n, P5723541088783802882.a n = A377722 (n + 1)

end A377722

/-! ## A377722.P7910248941395936519

`A194845(∑[char[∑[(n+1)²²]]]+1)`
-/

namespace A377722.P7910248941395936519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A377722.P7910248941395936519

namespace A377722

/-- `A194845(∑[char[∑[(n+1)²²]]]+1)` -/
def P7910248941395936519.Spec : Prop :=
  ∀ n, P7910248941395936519.a n = A377722 (n + 1)

end A377722

/-! ## A377722.P4161265828516627968

`A004151(∑[char[A000538(n)]])`
-/

namespace A377722.P4161265828516627968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377722.P4161265828516627968

namespace A377722

/-- `A004151(∑[char[A000538(n)]])` -/
def P4161265828516627968.Spec : Prop :=
  ∀ n, P4161265828516627968.a n = A377722 (n + 1)

end A377722

/-! ## A377722.P5411683548354392430

`A086858(2*A095703(n))`
-/

namespace A377722.P5411683548354392430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (2 * A095703 n).toNat

end

end A377722.P5411683548354392430

namespace A377722

/-- `A086858(2*A095703(n))` -/
def P5411683548354392430.Spec : Prop :=
  ∀ n, P5411683548354392430.a n = A377722 (n + 1)

end A377722

/-! ## A377722.P3722583791099785118

`A086858(A080037(n))`
-/

namespace A377722.P3722583791099785118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (A080037 n).toNat

end

end A377722.P3722583791099785118

namespace A377722

/-- `A086858(A080037(n))` -/
def P3722583791099785118.Spec : Prop :=
  ∀ n, P3722583791099785118.a n = A377722 (n + 1)

end A377722

/-! ## A377722.P5369153389782366154

`round(sqrt(A325678(n)+2))`
-/

namespace A377722.P5369153389782366154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A325678 n + 2 : ℝ))

end

end A377722.P5369153389782366154

namespace A377722

/-- `round(sqrt(A325678(n)+2))` -/
def P5369153389782366154.Spec : Prop :=
  ∀ n, P5369153389782366154.a n = A377722 (n + 1)

end A377722

/-!
# A377723: Numbers whose number of prime factors (counted with repetition) is greater than or equal to its smallest prime factor.

The programs for A377723, there is no canonical definition to state claims against.
-/

/-! ## A377723.P13729861496855616602

`comp[A091377(n+1)-1]+1`
-/

namespace A377723.P13729861496855616602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377723.P13729861496855616602

/-! ## A377723.P7085947493953243880

`∪[A091375(n+1), A091376(n+1)]`
-/

namespace A377723.P7085947493953243880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377723.P7085947493953243880

/-! ## A377723.P3485600128088370314

`∪[A091375(n+1), A134333(n+1)]`
-/

namespace A377723.P3485600128088370314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377723.P3485600128088370314

/-! ## A377723.P2426094593328379539

`lt[A091371(n+1), 1]+1`
-/

namespace A377723.P2426094593328379539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377723.P2426094593328379539

/-! ## A377723.P13496153087522519631

`A020725(lt[A020639(n+1)+1-A073093(n+1), 1])`
-/

namespace A377723.P13496153087522519631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (1 - A073093 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A377723.P13496153087522519631

/-! ## A377723.P9780506910406896925

`lt[A020639(n+1), A001222(A004275(n+2))]+1`
-/

namespace A377723.P9780506910406896925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004275 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A377723.P9780506910406896925

/-! ## A377723.P6896175337025202329

`lt[A091371(A233583(n+1)), 1]`
-/

namespace A377723.P6896175337025202329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A377723.P6896175337025202329

/-! ## A377723.P3953679917409115260

`∩[A090334(n+1), A337945(n+1)]`
-/

namespace A377723.P3953679917409115260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377723.P3953679917409115260

/-! ## A377723.P2718992949378464098

`∩[A090334(n+1), A352872(n+1)]`
-/

namespace A377723.P2718992949378464098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377723.P2718992949378464098

/-!
# A377724: Smallest k such that 4^(5*4^n) - k is a safe prime.

The programs for A377724, there is no canonical definition to state claims against.
-/

/-! ## A377724.P15696151068169826445

`A057821(A002066(n))`
-/

namespace A377724.P15696151068169826445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057821 (A002066 n).toNat

end

end A377724.P15696151068169826445

/-!
# A377725: Length of the short leg of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A377725, the canonical program `A377725.P10966813579059079895` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377725 has offset 0).

The definition of A377725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377725.P10966813579059079895

`2*A002315(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377725

/-- `2*A002315(n)+1` -/
def P10966813579059079895.Spec : Prop :=
  ∀ n, P10966813579059079895.a n = A377725 n

theorem P10966813579059079895.correct : P10966813579059079895.Spec := by
  intro n
  simp only [A377725]

end A377725

/-! ## A377725.P4289474690635997268

`ogf((-3+6x+x^2)/(-1+7x-7x^2+x^3))`
-/

namespace A377725.P4289474690635997268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -1] [1, -7, 7, -1] n

end

end A377725.P4289474690635997268

namespace A377725

/-- `ogf((-3+6x+x^2)/(-1+7x-7x^2+x^3))` -/
def P4289474690635997268.Spec : Prop :=
  ∀ n, P4289474690635997268.a n = A377725 n

end A377725

/-! ## A377725.P310623698780049564

`A362545(n)+2`
-/

namespace A377725.P310623698780049564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362545 n + 2

end

end A377725.P310623698780049564

namespace A377725

/-- `A362545(n)+2` -/
def P310623698780049564.Spec : Prop :=
  ∀ n, P310623698780049564.a n = A377725 n

theorem P310623698780049564.correct : P310623698780049564.Spec := by
  intro n
  simp only [A377725, Nat.add_sub_cancel, A377725.P310623698780049564.a, A377725.P10966813579059079895.a, A002315, A002315.P5084403563182278193.a, A362545, A362545.P6428571546983445576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377725

/-! ## A377725.P15675732167055008934

`A124696(Δ[n²])`
-/

namespace A377725.P15675732167055008934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377725.P15675732167055008934

namespace A377725

/-- `A124696(Δ[n²])` -/
def P15675732167055008934.Spec : Prop :=
  ∀ n, P15675732167055008934.a n = A377725 n

end A377725

/-! ## A377725.P1520711341365679767

`A182143(Δ[n²])`
-/

namespace A377725.P1520711341365679767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377725.P1520711341365679767

namespace A377725

/-- `A182143(Δ[n²])` -/
def P1520711341365679767.Spec : Prop :=
  ∀ n, P1520711341365679767.a n = A377725 n

end A377725

/-! ## A377725.P14068524959577727110

`A077444(n+1)+1`
-/

namespace A377725.P14068524959577727110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1) + 1

end

end A377725.P14068524959577727110

namespace A377725

/-- `A077444(n+1)+1` -/
def P14068524959577727110.Spec : Prop :=
  ∀ n, P14068524959577727110.a n = A377725 n

end A377725

/-! ## A377725.P5560948163614770967

`A041010(2*n)+1`
-/

namespace A377725.P5560948163614770967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 (2 * n) + 1

end

end A377725.P5560948163614770967

namespace A377725

/-- `A041010(2*n)+1` -/
def P5560948163614770967.Spec : Prop :=
  ∀ n, P5560948163614770967.a n = A377725 n

end A377725

/-! ## A377725.P17984513067150834773

`4*A046090(n)-1`
-/

namespace A377725.P17984513067150834773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A046090 n - 1

end

end A377725.P17984513067150834773

namespace A377725

/-- `4*A046090(n)-1` -/
def P17984513067150834773.Spec : Prop :=
  ∀ n, P17984513067150834773.a n = A377725 n

end A377725

/-! ## A377725.P2529237815752120652

`4*A001652(n)+3`
-/

namespace A377725.P2529237815752120652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001652 n + 3

end

end A377725.P2529237815752120652

namespace A377725

/-- `4*A001652(n)+3` -/
def P2529237815752120652.Spec : Prop :=
  ∀ n, P2529237815752120652.a n = A377725 n

end A377725

/-! ## A377725.P9623989006169824498

`A002203(Δ[n²])+1`
-/

namespace A377725.P9623989006169824498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A377725.P9623989006169824498

namespace A377725

/-- `A002203(Δ[n²])+1` -/
def P9623989006169824498.Spec : Prop :=
  ∀ n, P9623989006169824498.a n = A377725 n

end A377725

/-! ## A377725.P17593207181235774760

`A080039(Δ[n²])+1`
-/

namespace A377725.P17593207181235774760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A377725.P17593207181235774760

namespace A377725

/-- `A080039(Δ[n²])+1` -/
def P17593207181235774760.Spec : Prop :=
  ∀ n, P17593207181235774760.a n = A377725 n

end A377725

/-! ## A377725.P17319730837596201219

`A099425(Δ[n²])+1`
-/

namespace A377725.P17319730837596201219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A377725.P17319730837596201219

namespace A377725

/-- `A099425(Δ[n²])+1` -/
def P17319730837596201219.Spec : Prop :=
  ∀ n, P17319730837596201219.a n = A377725 n

end A377725

/-! ## A377725.P11717534176618237818

`A129744(Δ[n²])+1`
-/

namespace A377725.P11717534176618237818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A377725.P11717534176618237818

namespace A377725

/-- `A129744(Δ[n²])+1` -/
def P11717534176618237818.Spec : Prop :=
  ∀ n, P11717534176618237818.a n = A377725 n

end A377725

/-! ## A377725.P333622570948503314

`A162484(Δ[n²])+1`
-/

namespace A377725.P333622570948503314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162484 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A377725.P333622570948503314

namespace A377725

/-- `A162484(Δ[n²])+1` -/
def P333622570948503314.Spec : Prop :=
  ∀ n, P333622570948503314.a n = A377725 n

end A377725

/-! ## A377725.P2776740464530235388

`A051927(Δ[n²])+2`
-/

namespace A377725.P2776740464530235388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A377725.P2776740464530235388

namespace A377725

/-- `A051927(Δ[n²])+2` -/
def P2776740464530235388.Spec : Prop :=
  ∀ n, P2776740464530235388.a n = A377725 n

end A377725

/-! ## A377725.P11550074683269101961

`A100227(Δ[n²])+2`
-/

namespace A377725.P11550074683269101961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A377725.P11550074683269101961

namespace A377725

/-- `A100227(Δ[n²])+2` -/
def P11550074683269101961.Spec : Prop :=
  ∀ n, P11550074683269101961.a n = A377725 n

end A377725

/-! ## A377725.P10137722814788664012

`A162485(Δ[n²])-1`
-/

namespace A377725.P10137722814788664012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A377725.P10137722814788664012

namespace A377725

/-- `A162485(Δ[n²])-1` -/
def P10137722814788664012.Spec : Prop :=
  ∀ n, P10137722814788664012.a n = A377725 n

end A377725

/-! ## A377725.P9995861932892280144

`A001541(n+1)-A082639(n+1)`
-/

namespace A377725.P9995861932892280144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) - A082639 (n + 1)

end

end A377725.P9995861932892280144

namespace A377725

/-- `A001541(n+1)-A082639(n+1)` -/
def P9995861932892280144.Spec : Prop :=
  ∀ n, P9995861932892280144.a n = A377725 n

end A377725

/-! ## A377725.P17752436772019944673

`A052937(2*n)+A048654(2*n)`
-/

namespace A377725.P17752436772019944673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (2 * n) + A048654 (2 * n)

end

end A377725.P17752436772019944673

namespace A377725

/-- `A052937(2*n)+A048654(2*n)` -/
def P17752436772019944673.Spec : Prop :=
  ∀ n, P17752436772019944673.a n = A377725 n

end A377725

/-! ## A377725.P1843006275315366214

`A182780(2*n)+A078057(2*n)`
-/

namespace A377725.P1843006275315366214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 (2 * n) + A078057 (2 * n)

end

end A377725.P1843006275315366214

namespace A377725

/-- `A182780(2*n)+A078057(2*n)` -/
def P1843006275315366214.Spec : Prop :=
  ∀ n, P1843006275315366214.a n = A377725 n

end A377725

/-!
# A377726: Length of the long leg of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A377726, the canonical program `A377726.P10665330491965238398` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377726 has offset 0).

The definition of A377726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377726.P10665330491965238398

`2*A002315(n)*(A002315(n)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377726

/-- `2*A002315(n)*(A002315(n)-1)` -/
def P10665330491965238398.Spec : Prop :=
  ∀ n, P10665330491965238398.a n = A377726 n

theorem P10665330491965238398.correct : P10665330491965238398.Spec := by
  intro n
  simp only [A377726]

end A377726

/-! ## A377726.P13050654508816466410

`A378965(n)-A002315(n)`
-/

namespace A377726.P13050654508816466410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378965 n - A002315 n

end

end A377726.P13050654508816466410

namespace A377726

/-- `A378965(n)-A002315(n)` -/
def P13050654508816466410.Spec : Prop :=
  ∀ n, P13050654508816466410.a n = A377726 n

theorem P13050654508816466410.correct : P13050654508816466410.Spec := by
  intro n
  simp only [A377726, Nat.add_sub_cancel, A377726.P13050654508816466410.a, A377726.P10665330491965238398.a, A002315, A002315.P5084403563182278193.a, A378965, A378965.P16390378883255238781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377726

/-! ## A377726.P15560709356795153442

`A379508(n)-A362545(n)`
-/

namespace A377726.P15560709356795153442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379508 n - A362545 n

end

end A377726.P15560709356795153442

namespace A377726

/-- `A379508(n)-A362545(n)` -/
def P15560709356795153442.Spec : Prop :=
  ∀ n, P15560709356795153442.a n = A377726 n

theorem P15560709356795153442.correct : P15560709356795153442.Spec := by
  intro n
  simp only [A377726, Nat.add_sub_cancel, A377726.P15560709356795153442.a, A377726.P10665330491965238398.a, A002315, A002315.P5084403563182278193.a, A362545, A362545.P6428571546983445576.a, A379508, A379508.P17211813283351291404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377726

/-! ## A377726.P104906791247281486

`A378965(n)-A001333(2*n+1)`
-/

namespace A377726.P104906791247281486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378965 n - A001333 (2 * n + 1)

end

end A377726.P104906791247281486

namespace A377726

/-- `A378965(n)-A001333(2*n+1)` -/
def P104906791247281486.Spec : Prop :=
  ∀ n, P104906791247281486.a n = A377726 n

end A377726

/-! ## A377726.P11056281779830188695

`A077444(n+1)*A088015(2*n+1)`
-/

namespace A377726.P11056281779830188695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1) * A088015 (2 * n + 1)

end

end A377726.P11056281779830188695

namespace A377726

/-- `A077444(n+1)*A088015(2*n+1)` -/
def P11056281779830188695.Spec : Prop :=
  ∀ n, P11056281779830188695.a n = A377726 n

end A377726

/-! ## A377726.P17206237642365989075

`A082639(2*(n+1))-A129744(2*n+1)`
-/

namespace A377726.P17206237642365989075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (2 * (n + 1)) - A129744 (2 * n + 1)

end

end A377726.P17206237642365989075

namespace A377726

/-- `A082639(2*(n+1))-A129744(2*n+1)` -/
def P17206237642365989075.Spec : Prop :=
  ∀ n, P17206237642365989075.a n = A377726 n

end A377726

/-! ## A377726.P6465696669052905675

`A002203(2*n+1)*A293004(2*n+1)`
-/

namespace A377726.P6465696669052905675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n + 1) * A293004 (2 * n + 1)

end

end A377726.P6465696669052905675

namespace A377726

/-- `A002203(2*n+1)*A293004(2*n+1)` -/
def P6465696669052905675.Spec : Prop :=
  ∀ n, P6465696669052905675.a n = A377726 n

end A377726

/-! ## A377726.P5114370149388089806

`A002315(n)*A362545(n)-A002315(n)`
-/

namespace A377726.P5114370149388089806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A362545 n - A002315 n

end

end A377726.P5114370149388089806

namespace A377726

/-- `A002315(n)*A362545(n)-A002315(n)` -/
def P5114370149388089806.Spec : Prop :=
  ∀ n, P5114370149388089806.a n = A377726 n

theorem P5114370149388089806.correct : P5114370149388089806.Spec := by
  intro n
  simp only [A377726, Nat.add_sub_cancel, A377726.P5114370149388089806.a, A377726.P10665330491965238398.a, A002315, A002315.P5084403563182278193.a, A362545, A362545.P6428571546983445576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377726

/-!
# A377727: Number of digit patterns of length n that satisfy no divisibility rules but do not generate primes.

The programs for A377727, there is no canonical definition to state claims against.
-/

/-! ## A377727.P7266473161593528007

`A376918(n+1)-A267013(n+1)`
-/

namespace A377727.P7266473161593528007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376918 (n + 1) - A267013 (n + 1)

end

end A377727.P7266473161593528007

/-! ## A377727.P4897712052866086066

`A164864(n+1)-(A378199(n+1)+A267013(n+1))`
-/

namespace A377727.P4897712052866086066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 (n + 1) - (A378199 (n + 1) + A267013 (n + 1))

end

end A377727.P4897712052866086066

/-! ## A377727.P600068109225236480

`A145004(C(n, 9))`
-/

namespace A377727.P600068109225236480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145004 (Nat.choose n 9)

end

end A377727.P600068109225236480

/-! ## A377727.P10483940539702370929

`A000162(2*n+1)%Δ[lt[(n+1)%∑{digits}[n+1, #], 1]]²`
-/

namespace A377727.P10483940539702370929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000162 (2 * n + 1)) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A377727.P10483940539702370929

/-! ## A377727.P5228896402205122998

`A170885(A036424(n))`
-/

namespace A377727.P5228896402205122998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170885 (A036424 n).toNat

end

end A377727.P5228896402205122998

/-!
# A377728: Convolution of Leonardo numbers with Jacobsthal numbers.

The programs for A377728, the canonical program `A377728.P7667033957001193499` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377728 has offset 0).

The definition of A377728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377728.P7667033957001193499

`A126646(n)-A066629(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377728

/-- `A126646(n)-A066629(n)` -/
def P7667033957001193499.Spec : Prop :=
  ∀ n, P7667033957001193499.a n = A377728 n

theorem P7667033957001193499.correct : P7667033957001193499.Spec := by
  intro n
  simp only [A377728]

end A377728

/-! ## A377728.P18132277573828425051

`A084173(n)-A131269(n)`
-/

namespace A377728.P18132277573828425051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 n - A131269 n

end

end A377728.P18132277573828425051

namespace A377728

/-- `A084173(n)-A131269(n)` -/
def P18132277573828425051.Spec : Prop :=
  ∀ n, P18132277573828425051.a n = A377728 n

end A377728

/-! ## A377728.P16422277333620234122

`A131403(n)-A109613(n)`
-/

namespace A377728.P16422277333620234122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131403 n - A109613 n

end

end A377728.P16422277333620234122

namespace A377728

/-- `A131403(n)-A109613(n)` -/
def P16422277333620234122.Spec : Prop :=
  ∀ n, P16422277333620234122.a n = A377728 n

end A377728

/-! ## A377728.P13339906955751039589

`A264038(n)-A074331(n)`
-/

namespace A377728.P13339906955751039589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264038 n - A074331 n

end

end A377728.P13339906955751039589

namespace A377728

/-- `A264038(n)-A074331(n)` -/
def P13339906955751039589.Spec : Prop :=
  ∀ n, P13339906955751039589.a n = A377728 n

end A377728

/-! ## A377728.P3875813067441279228

`A167821(n+1)+A000035(n)`
-/

namespace A377728.P3875813067441279228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + A000035 n

end

end A377728.P3875813067441279228

namespace A377728

/-- `A167821(n+1)+A000035(n)` -/
def P3875813067441279228.Spec : Prop :=
  ∀ n, P3875813067441279228.a n = A377728 n

end A377728

/-! ## A377728.P13084888181836959439

`A101351(n+1)-A245738(n+3)`
-/

namespace A377728.P13084888181836959439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101351 (n + 1) - A245738 (n + 3)

end

end A377728.P13084888181836959439

namespace A377728

/-- `A101351(n+1)-A245738(n+3)` -/
def P13084888181836959439.Spec : Prop :=
  ∀ n, P13084888181836959439.a n = A377728 n

end A377728

/-! ## A377728.P17358736626564409461

`A074878(n+1)-A051049(n)`
-/

namespace A377728.P17358736626564409461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 1) - A051049 n

end

end A377728.P17358736626564409461

namespace A377728

/-- `A074878(n+1)-A051049(n)` -/
def P17358736626564409461.Spec : Prop :=
  ∀ n, P17358736626564409461.a n = A377728 n

end A377728

/-!
# A377730: Number of integers less than n that have the same greatest prime factor as n.

The programs for A377730, there is no canonical definition to state claims against.
-/

/-! ## A377730.P4891745425427169350

`A078899(n+1)-1`
-/

namespace A377730.P4891745425427169350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (n + 1) - 1

end

end A377730.P4891745425427169350

/-! ## A377730.P17455266979750647815

`log2(Δ[A339509(n)])`
-/

namespace A377730.P17455266979750647815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339509 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A377730.P17455266979750647815

/-! ## A377730.P8765298785672738706

`A377734(2*A078899(n+1))`
-/

namespace A377730.P8765298785672738706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (2 * A078899 (n + 1)).toNat

end

end A377730.P8765298785672738706

/-! ## A377730.P2758446356718957166

`A377734(A078899(n+1)+A078899(n+1))`
-/

namespace A377730.P2758446356718957166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (A078899 (n + 1) + A078899 (n + 1)).toNat

end

end A377730.P2758446356718957166

/-! ## A377730.P9908250630010554681

`A117010(n+1)%A078899(n+1)`
-/

namespace A377730.P9908250630010554681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A078899 (n + 1))

end

end A377730.P9908250630010554681

/-! ## A377730.P3502884320020571018

`A083800(n+1)%A078899(n+1)`
-/

namespace A377730.P3502884320020571018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A078899 (n + 1))

end

end A377730.P3502884320020571018

/-! ## A377730.P5523405053931772137

`A070198(n)%A078899(n+1)`
-/

namespace A377730.P5523405053931772137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A078899 (n + 1))

end

end A377730.P5523405053931772137

/-! ## A377730.P11848858234948493486

`A079782(n+1)%A078899(n+1)`
-/

namespace A377730.P11848858234948493486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A078899 (n + 1))

end

end A377730.P11848858234948493486

/-! ## A377730.P6558272405828185441

`A083685(n+1)%A078899(n+1)`
-/

namespace A377730.P6558272405828185441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A078899 (n + 1))

end

end A377730.P6558272405828185441

/-! ## A377730.P4654211465004431500

`A121934(n+1)%A078899(n+1)`
-/

namespace A377730.P4654211465004431500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A078899 (n + 1))

end

end A377730.P4654211465004431500

/-! ## A377730.P11282716791625211971

`A377734(A298268(n+1))`
-/

namespace A377730.P11282716791625211971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (A298268 (n + 1)).toNat

end

end A377730.P11282716791625211971

/-! ## A377730.P16316454901420596950

`A000005(Δ[A339509(n)])-1`
-/

namespace A377730.P16316454901420596950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - 1

end

end A377730.P16316454901420596950

/-! ## A377730.P16004172762587526066

`A030494(n+1)%A078899(n+1)`
-/

namespace A377730.P16004172762587526066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A078899 (n + 1))

end

end A377730.P16004172762587526066

/-! ## A377730.P7695178691619321595

`A072828(n+1)%A078899(n+1)`
-/

namespace A377730.P7695178691619321595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A078899 (n + 1))

end

end A377730.P7695178691619321595

/-!
# A377733: Numbers k such that k and k+1 are both terms in A377732.

The programs for A377733, there is no canonical definition to state claims against.
-/

/-! ## A377733.P1797582096021088543

`∩[A377732(n+1)-1, A377732(n+1)]`
-/

namespace A377733.P1797582096021088543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377733.P1797582096021088543

/-!
# A377734: Number of integers less than n that have the same smallest prime factor as n.

The programs for A377734, there is no canonical definition to state claims against.
-/

/-! ## A377734.P2516897402826759486

`A078898(n+1)-1`
-/

namespace A377734.P2516897402826759486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1) - 1

end

end A377734.P2516897402826759486

/-! ## A377734.P4628464958824401887

`A023443(A078898(n+1))`
-/

namespace A377734.P4628464958824401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078898 (n + 1)).toNat

end

end A377734.P4628464958824401887

/-! ## A377734.P5788840152798226579

`A078898(A249744(n+1))`
-/

namespace A377734.P5788840152798226579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A249744 (n + 1)).toNat

end

end A377734.P5788840152798226579

/-! ## A377734.P5080400194523306275

`A249738(2*A078898(n+1))`
-/

namespace A377734.P5080400194523306275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A078898 (n + 1)).toNat

end

end A377734.P5080400194523306275

/-! ## A377734.P13397751008640759846

`A249738(A078898(n+1)+A078898(n+1))`
-/

namespace A377734.P13397751008640759846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A078898 (n + 1) + A078898 (n + 1)).toNat

end

end A377734.P13397751008640759846

/-! ## A377734.P16832124273640053841

`Δ[∑[A078898(n)]-n]`
-/

namespace A377734.P16832124273640053841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377734.P16832124273640053841

/-! ## A377734.P11471658133361382462

`log2(Δ[A339510(n)])`
-/

namespace A377734.P11471658133361382462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339510 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A377734.P11471658133361382462

/-!
# A377735: Cogrowth sequence of the 16-element group Q8 X C2 = .

The programs for A377735, there is no canonical definition to state claims against.
-/

/-! ## A377735.P11739398857095730427

`A064669(A007713(n))`
-/

namespace A377735.P11739398857095730427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064669 (A007713 n).toNat

end

end A377735.P11739398857095730427

/-!
# A377737: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - log(1-2*x) / 2) ).

The programs for A377737, there is no canonical definition to state claims against.
-/

/-! ## A377737.P307477837209583121

`A326547(A335637(n))+A195193(n+1)`
-/

namespace A377737.P307477837209583121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 (A335637 n).toNat + A195193 (n + 1)

end

end A377737.P307477837209583121

/-!
# A377740: E.g.f. satisfies A(x) = exp(x) * (1 + x * A(x))^2.

The programs for A377740, there is no canonical definition to state claims against.
-/

/-! ## A377740.P16756512937747170574

`A295238(n+1)/(n+1)`
-/

namespace A377740.P16756512937747170574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295238 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A377740.P16756512937747170574

/-!
# A377741: E.g.f. satisfies A(x) = exp(x) * (1 + x * A(x))^3.

The programs for A377741, there is no canonical definition to state claims against.
-/

/-! ## A377741.P1610595427334650453

`A364983(n+1)/(n+1)`
-/

namespace A377741.P1610595427334650453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364983 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A377741.P1610595427334650453

/-!
# A377748: a(n) = (A000217(n) - A005132(n))/2.

The programs for A377748, there is no canonical definition to state claims against.
-/

/-! ## A377748.P2345023676895016365

`(A000217(n)-A005132(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377748.P2345023676895016365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n - A005132 n : ℚ) / 2

end

end A377748.P2345023676895016365

/-! ## A377748.P4480127017559732123

`∑[n]-A378120(n)`
-/

namespace A377748.P4480127017559732123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A378120 n

end

end A377748.P4480127017559732123

/-! ## A377748.P1092832961204695075

`∑[n*char[A057166(n+1)]]`
-/

namespace A377748.P1092832961204695075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057166 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377748.P1092832961204695075

/-! ## A377748.P14532675589077900872

`∑[and(n, char[A057165(n+1)]-1)]`
-/

namespace A377748.P14532675589077900872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377748.P14532675589077900872

/-! ## A377748.P7551129099727492117

`A378120(n)-A005132(n)`
-/

namespace A377748.P7551129099727492117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378120 n - A005132 n

end

end A377748.P7551129099727492117

/-! ## A377748.P13964837470983817371

`A014682(A000217(n)-A005132(n))`
-/

namespace A377748.P13964837470983817371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000217 n - A005132 n).toNat

end

end A377748.P13964837470983817371

/-! ## A377748.P17887797162256211521

`A001281(A000217(n)-A005132(n))`
-/

namespace A377748.P17887797162256211521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000217 n - A005132 n).toNat

end

end A377748.P17887797162256211521

/-! ## A377748.P1900835200903350333

`A004526(A000217(n)-A005132(n))`
-/

namespace A377748.P1900835200903350333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000217 n - A005132 n).toNat

end

end A377748.P1900835200903350333

/-! ## A377748.P4003235843322503895

`A026741(A000217(n)-A005132(n))`
-/

namespace A377748.P4003235843322503895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000217 n - A005132 n).toNat

end

end A377748.P4003235843322503895

/-!
# A377756: Number of free hexagonal polyominoes with n cells with at most 3 collinear cell centers on any line in the plane.

The programs for A377756, there is no canonical definition to state claims against.
-/

/-! ## A377756.P12046678013212174455

`A131909(A058331(n))`
-/

namespace A377756.P12046678013212174455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131909 (A058331 n).toNat

end

end A377756.P12046678013212174455

/-! ## A377756.P4615182125096106112

`A106432(A199102(n))`
-/

namespace A377756.P4615182125096106112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A199102 n).toNat

end

end A377756.P4615182125096106112

/-! ## A377756.P11956742996796484258

`A352130((n+1)²-A352128(n))`
-/

namespace A377756.P11956742996796484258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (((n + 1) ^ 2 : ℤ) - A352128 n).toNat

end

end A377756.P11956742996796484258

/-!
# A377758: a(n) is the least i such that 2n-prime(i) is also a prime, where prime(i) is the i-th prime.

The programs for A377758, there is no canonical definition to state claims against.
-/

/-! ## A377758.P29182315288937331

`A000720(A020481(n+2))`
-/

namespace A377758.P29182315288937331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020481 (n + 2)).toNat

end

end A377758.P29182315288937331

/-! ## A377758.P12533868308798267333

`A056172(2*A020481(n+2))`
-/

namespace A377758.P12533868308798267333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A020481 (n + 2)).toNat

end

end A377758.P12533868308798267333

/-! ## A377758.P8619758036817223371

`A377972(n+2)-A378020(n+1)`
-/

namespace A377758.P8619758036817223371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377972 (n + 2) - A378020 (n + 1)

end

end A377758.P8619758036817223371

/-! ## A377758.P15837971481739751964

`A000720(n+2-A047949(n+2))`
-/

namespace A377758.P15837971481739751964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 2 : ℤ) - A047949 (n + 2)).toNat

end

end A377758.P15837971481739751964

/-! ## A377758.P13399856738650143313

`A003963(2*(n+2)-A020482(n+2))`
-/

namespace A377758.P13399856738650143313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((2 * (n + 2) : ℤ) - A020482 (n + 2)).toNat

end

end A377758.P13399856738650143313

/-! ## A377758.P8887069565875761259

`A003963(A112823(n+2)-A112824(n+2))`
-/

namespace A377758.P8887069565875761259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A112823 (n + 2) - A112824 (n + 2)).toNat

end

end A377758.P8887069565875761259

/-! ## A377758.P4558425124056650752

`A056239(A020481(n+2)%A038446(n+1))`
-/

namespace A377758.P4558425124056650752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A020481 (n + 2)) (A038446 (n + 1))).toNat

end

end A377758.P4558425124056650752

/-! ## A377758.P5649276172895568216

`A056239(A020481(n+2))%A238574(n+1)`
-/

namespace A377758.P5649276172895568216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A020481 (n + 2)).toNat) (A238574 (n + 1))

end

end A377758.P5649276172895568216

/-! ## A377758.P15162859124126138277

`A000720(A210957(2*(n+1)))`
-/

namespace A377758.P15162859124126138277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A210957 (2 * (n + 1))).toNat

end

end A377758.P15162859124126138277

/-! ## A377758.P15350651231287464690

`A003963(A210957(2*n+2))`
-/

namespace A377758.P15350651231287464690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A210957 (2 * n + 2)).toNat

end

end A377758.P15350651231287464690

/-! ## A377758.P6564103420287710483

`A056239(A285949(3*n+1)+A020481(n+2))`
-/

namespace A377758.P6564103420287710483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A285949 (3 * n + 1) + A020481 (n + 2)).toNat

end

end A377758.P6564103420287710483

/-! ## A377758.P435234736686771606

`A056239(A020481(n+2)+A000122(3*n+2))`
-/

namespace A377758.P435234736686771606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020481 (n + 2) + A000122 (3 * n + 2)).toNat

end

end A377758.P435234736686771606

/-! ## A377758.P338491974866744755

`A055396(A073046(n+2))`
-/

namespace A377758.P338491974866744755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A073046 (n + 2)).toNat

end

end A377758.P338491974866744755

/-! ## A377758.P16969675138476639126

`A344616(A020481(n+2)²*A020481(n+2))`
-/

namespace A377758.P16969675138476639126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A020481 (n + 2) ^ 2 * A020481 (n + 2)).toNat

end

end A377758.P16969675138476639126

/-!
# A377762: Number of edge cuts in the hypercube graph Q_n.

The programs for A377762, there is no canonical definition to state claims against.
-/

/-! ## A377762.P7717035148170053285

`A061301(n)-A372705(n)`
-/

namespace A377762.P7717035148170053285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061301 n - A372705 n

end

end A377762.P7717035148170053285

/-!
# A377766: Even numbers whose sum of proper (or aliquot) divisors is a prime.

The programs for A377766, there is no canonical definition to state claims against.
-/

/-! ## A377766.P15787535969577991573

`∩[A028982(n+1), A037020(n+1)]`
-/

namespace A377766.P15787535969577991573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P15787535969577991573

/-! ## A377766.P11093936498911846494

`∩[A037020(n+1), A069265(n+1)]`
-/

namespace A377766.P11093936498911846494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P11093936498911846494

/-! ## A377766.P2834973899591025821

`∩[A037020(n+1), A088827(n+1)]`
-/

namespace A377766.P2834973899591025821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P2834973899591025821

/-! ## A377766.P10838540831473468991

`∩[A037020(n+1), A216781(n+1)]`
-/

namespace A377766.P10838540831473468991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P10838540831473468991

/-! ## A377766.P1376539624459878551

`∩[A037020(n+1), A356382(n+1)]`
-/

namespace A377766.P1376539624459878551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P1376539624459878551

/-! ## A377766.P17886382978625467740

`∩[2*n, A037020(n+1)]`
-/

namespace A377766.P17886382978625467740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P17886382978625467740

/-! ## A377766.P18310315997557143966

`∩[A037020(n+1), A128106(n+1)]`
-/

namespace A377766.P18310315997557143966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P18310315997557143966

/-! ## A377766.P390777074359014373

`filter[A037020(n+1), A053866(#)]`
-/

namespace A377766.P390777074359014373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A377766.P390777074359014373

/-! ## A377766.P7192881021763100602

`filter[A037020(n+1), A354034(#)]`
-/

namespace A377766.P7192881021763100602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A377766.P7192881021763100602

/-! ## A377766.P18206014795223874642

`∩[A037020(n+1), A319796(n+1)]`
-/

namespace A377766.P18206014795223874642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377766.P18206014795223874642

/-!
# A377767: Number of edge cuts in the path complement graph bar-P_n.

The programs for A377767, there is no canonical definition to state claims against.
-/

/-! ## A377767.P7847399445873469613

`A057502(A000045(floor(n²/3))²)`
-/

namespace A377767.P7847399445873469613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A000045 ⌊(n ^ 2 : ℚ) / 3⌋.toNat ^ 2).toNat

end

end A377767.P7847399445873469613

/-! ## A377767.P8321049623046327720

`A057504(A000045(floor(n²/3))²)`
-/

namespace A377767.P8321049623046327720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (A000045 ⌊(n ^ 2 : ℚ) / 3⌋.toNat ^ 2).toNat

end

end A377767.P8321049623046327720

/-!
# A377773: Number of edge cuts in the n-web graph.

The programs for A377773, there is no canonical definition to state claims against.
-/

/-! ## A377773.P17552371569840943923

`16^n-8^n+A359621(n)`
-/

namespace A377773.P17552371569840943923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) - (8 ^ n : ℤ) + A359621 n

end

end A377773.P17552371569840943923

/-!
# A377774: a(n) = largest prime p < gpf(n) that does not divide n, or p = nextprime(gpf(n)) for n in A055932, where gpf = A006530.

The programs for A377774, there is no canonical definition to state claims against.
-/

/-! ## A377774.P9465999551038215020

`A006530(A053669(n+1)*A079068(n+1))`
-/

namespace A377774.P9465999551038215020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053669 (n + 1) * A079068 (n + 1)).toNat

end

end A377774.P9465999551038215020

/-! ## A377774.P13460311219431154632

`A006530(lcm(A053669(n+1), A079068(n+1)))`
-/

namespace A377774.P13460311219431154632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A053669 (n + 1)) (A079068 (n + 1)))

end

end A377774.P13460311219431154632

/-! ## A377774.P5094400179464093381

`A000040(A205147(n+1)%A096763(n+1))`
-/

namespace A377774.P5094400179464093381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A205147 (n + 1)) (A096763 (n + 1))).toNat

end

end A377774.P5094400179464093381

/-! ## A377774.P9859949136359295185

`A000040(A205147(n+1))%A128662(n+5)`
-/

namespace A377774.P9859949136359295185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A205147 (n + 1)).toNat) (A128662 (n + 5))

end

end A377774.P9859949136359295185

/-! ## A377774.P14769006790957484699

`A034880(A205149(n+1))`
-/

namespace A377774.P14769006790957484699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A205149 (n + 1)).toNat

end

end A377774.P14769006790957484699

/-!
# A377775: Least lucky multiple of 2*n+1, or 0 if no such multiple exists.

The programs for A377775, there is no canonical definition to state claims against.
-/

/-! ## A377775.P17164042994521093672

`(2*n+1)*A377776(n)`
-/

namespace A377775.P17164042994521093672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A377776 n

end

end A377775.P17164042994521093672

/-! ## A377775.P14190542956024628673

`(2*n+1)*A342671(A041457(n))`
-/

namespace A377775.P14190542956024628673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A342671 (A041457 n).toNat

end

end A377775.P14190542956024628673

/-! ## A377775.P14660673808258160509

`A000005(4^n)*A230405(n)`
-/

namespace A377775.P14660673808258160509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 ^ n) * A230405 n

end

end A377775.P14660673808258160509

/-! ## A377775.P9434144425132916936

`A000005(4^n)*A353517(n)`
-/

namespace A377775.P9434144425132916936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 ^ n) * A353517 n

end

end A377775.P9434144425132916936

/-! ## A377775.P11716042738383592047

`Δ[n²]*A203571(A001835(n))`
-/

namespace A377775.P11716042738383592047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A203571 (A001835 n).toNat

end

end A377775.P11716042738383592047

/-!
# A377776: a(n) = A377775(n)/(2*n+1).

The programs for A377776, there is no canonical definition to state claims against.
-/

/-! ## A377776.P4419462053673503329

`A377775(n)/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377776.P4419462053673503329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377775 n : ℚ) / (2 * n + 1 : ℚ)

end

end A377776.P4419462053673503329

/-! ## A377776.P16110014565327352763

`gcd(∑[A125246(n+1)], A356867(n+1))`
-/

namespace A377776.P16110014565327352763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A356867 (n + 1))

end

end A377776.P16110014565327352763

/-! ## A377776.P7187008491232972038

`gcd(A016813(n+3), A108278(A107236(3*n+1)))`
-/

namespace A377776.P7187008491232972038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016813 (n + 3)) (A108278 (A107236 (3 * n + 1)).toNat)

end

end A377776.P7187008491232972038

/-! ## A377776.P14102876891515181497

`gcd(A000217(A023545(3*n+4)), A072026(n+1))`
-/

namespace A377776.P14102876891515181497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A023545 (3 * n + 4)).toNat) (A072026 (n + 1))

end

end A377776.P14102876891515181497

/-! ## A377776.P11950655454071802732

`gcd(A082897(A356065(n+4)), A356065(n+4))`
-/

namespace A377776.P11950655454071802732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082897 (A356065 (n + 4)).toNat) (A356065 (n + 4))

end

end A377776.P11950655454071802732

/-!
# A377777: Least ludic multiple of n, or 0 if no such multiple exists.

The programs for A377777, there is no canonical definition to state claims against.
-/

/-! ## A377777.P14535512459854741573

`(n+1)*A377778(n+1)`
-/

namespace A377777.P14535512459854741573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A377778 (n + 1)

end

end A377777.P14535512459854741573

/-! ## A377777.P2299200591271198518

`lcm(A064446(A064446(n+1)), A377778(n+1))`
-/

namespace A377777.P2299200591271198518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064446 (A064446 (n + 1)).toNat) (A377778 (n + 1))

end

end A377777.P2299200591271198518

/-! ## A377777.P10170812586509641421

`lcm(A090106(n+1), A377778(n+1))`
-/

namespace A377777.P10170812586509641421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090106 (n + 1)) (A377778 (n + 1))

end

end A377777.P10170812586509641421

/-! ## A377777.P14298990150171888415

`C(n+1, A316656(2*(n+1))²)`
-/

namespace A377777.P14298990150171888415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A316656 (2 * (n + 1)) ^ 2).toNat

end

end A377777.P14298990150171888415

/-! ## A377777.P867564388212363404

`∏{p}[n+1, C(#, n)]%A091531(3*n+2)`
-/

namespace A377777.P867564388212363404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) (A091531 (3 * n + 2))

end

end A377777.P867564388212363404

/-!
# A377778: a(n) = A377777(n)/n.

The programs for A377778, there is no canonical definition to state claims against.
-/

/-! ## A377778.P13744144181061854345

`A377777(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377778.P13744144181061854345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377777 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A377778.P13744144181061854345

/-! ## A377778.P7594255221365833693

`C(A006248(A335570(n)), A001065(n+1))`
-/

namespace A377778.P7594255221365833693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006248 (A335570 n).toNat).toNat (A001065 (n + 1)).toNat

end

end A377778.P7594255221365833693

/-! ## A377778.P11614741551917153944

`C(A211970(A227578(n)), A001065(n+1))`
-/

namespace A377778.P11614741551917153944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A211970 (A227578 n).toNat).toNat (A001065 (n + 1)).toNat

end

end A377778.P11614741551917153944

/-! ## A377778.P13594600394502698336

`C(A067659(A144048(n)), A280375(n+1))`
-/

namespace A377778.P13594600394502698336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067659 (A144048 n).toNat).toNat (A280375 (n + 1)).toNat

end

end A377778.P13594600394502698336

/-! ## A377778.P17555256086351584098

`C(A393228(A014376(n)), A001065(n+1))`
-/

namespace A377778.P17555256086351584098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A393228 (A014376 n).toNat).toNat (A001065 (n + 1)).toNat

end

end A377778.P17555256086351584098

/-!
# A377780: First differences of A000015 (smallest prime-power >= n).

The programs for A377780, the canonical program `A377780.P12783059637083081395` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377780 has offset 1).

The definition of A377780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377780.P11870245149490674797

`A120635(n+1)%A100994(n+1)`
-/

namespace A377780.P11870245149490674797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120635 (n + 1)) (A100994 (n + 1))

end

end A377780.P11870245149490674797

namespace A377780

/-- `A120635(n+1)%A100994(n+1)` -/
def P11870245149490674797.Spec : Prop :=
  ∀ n, P11870245149490674797.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P6032845230057654313

`A322991(n+1)%A100994(n+1)`
-/

namespace A377780.P6032845230057654313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322991 (n + 1)) (A100994 (n + 1))

end

end A377780.P6032845230057654313

namespace A377780

/-- `A322991(n+1)%A100994(n+1)` -/
def P6032845230057654313.Spec : Prop :=
  ∀ n, P6032845230057654313.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P6238491520305353824

`A120635(A031218(n+1))-A000015(n+1)`
-/

namespace A377780.P6238491520305353824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (A031218 (n + 1)).toNat - A000015 (n + 1)

end

end A377780.P6238491520305353824

namespace A377780

/-- `A120635(A031218(n+1))-A000015(n+1)` -/
def P6238491520305353824.Spec : Prop :=
  ∀ n, P6238491520305353824.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P12783059637083081395

`Δ[A000015(n+1)]%(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A377780

/-- `Δ[A000015(n+1)]%(n+1)` -/
def P12783059637083081395.Spec : Prop :=
  ∀ n, P12783059637083081395.a n = A377780 (n + 1)

theorem P12783059637083081395.correct : P12783059637083081395.Spec := by
  intro n
  simp only [A377780, Nat.add_sub_cancel]

end A377780

/-! ## A377780.P7556434869269698249

`Δ[A000015(A054977(n)+n)]`
-/

namespace A377780.P7556434869269698249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A054977 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377780.P7556434869269698249

namespace A377780

/-- `Δ[A000015(A054977(n)+n)]` -/
def P7556434869269698249.Spec : Prop :=
  ∀ n, P7556434869269698249.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P17123387142836033713

`Δ[A000015(n+1)+A000007(n)]`
-/

namespace A377780.P17123387142836033713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377780.P17123387142836033713

namespace A377780

/-- `Δ[A000015(n+1)+A000007(n)]` -/
def P17123387142836033713.Spec : Prop :=
  ∀ n, P17123387142836033713.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P13885046249228542171

`Δ[A000015(n+1)]*A001221(n+1)`
-/

namespace A377780.P13885046249228542171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001221 (n + 1)

end

end A377780.P13885046249228542171

namespace A377780

/-- `Δ[A000015(n+1)]*A001221(n+1)` -/
def P13885046249228542171.Spec : Prop :=
  ∀ n, P13885046249228542171.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P9956676010866506944

`Δ[A000015(n+1)]*A071625(n+1)`
-/

namespace A377780.P9956676010866506944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071625 (n + 1)

end

end A377780.P9956676010866506944

namespace A377780

/-- `Δ[A000015(n+1)]*A071625(n+1)` -/
def P9956676010866506944.Spec : Prop :=
  ∀ n, P9956676010866506944.a n = A377780 (n + 1)

end A377780

/-! ## A377780.P13785628307238843047

`A069513(n+1)*A377282(n+1)`
-/

namespace A377780.P13785628307238843047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A377282 (n + 1)

end

end A377780.P13785628307238843047

namespace A377780

/-- `A069513(n+1)*A377282(n+1)` -/
def P13785628307238843047.Spec : Prop :=
  ∀ n, P13785628307238843047.a n = A377780 (n + 1)

end A377780

/-!
# A377781: First differences of A065514(n) = greatest number < prime(n) that is 1 or a prime-power.

The programs for A377781, the canonical program `A377781.P17886322484362975724` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377781 has offset 1).

The definition of A377781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377781.P17886322484362975724

`Δ[A065514(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A377781

/-- `Δ[A065514(n+1)]` -/
def P17886322484362975724.Spec : Prop :=
  ∀ n, P17886322484362975724.a n = A377781 (n + 1)

theorem P17886322484362975724.correct : P17886322484362975724.Spec := by
  intro n
  simp only [A377781, Nat.add_sub_cancel]

end A377781

/-! ## A377781.P16108429130332110896

`A065514(n+2)-A065514(n+1)`
-/

namespace A377781.P16108429130332110896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (n + 2) - A065514 (n + 1)

end

end A377781.P16108429130332110896

namespace A377781

/-- `A065514(n+2)-A065514(n+1)` -/
def P16108429130332110896.Spec : Prop :=
  ∀ n, P16108429130332110896.a n = A377781 (n + 1)

theorem P16108429130332110896.correct : P16108429130332110896.Spec := by
  intro n
  simp only [A377781, Nat.add_sub_cancel, A377781.P16108429130332110896.a, A377781.P17886322484362975724.f1, A377781.P17886322484362975724.a, SequenceMachineLib.memo_apply]

end A377781

/-! ## A377781.P6168276453517798804

`A001223(n+1)+A377289(n+1)-A377289(n+2)`
-/

namespace A377781.P6168276453517798804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A377289 (n + 1) - A377289 (n + 2))

end

end A377781.P6168276453517798804

namespace A377781

/-- `A001223(n+1)+A377289(n+1)-A377289(n+2)` -/
def P6168276453517798804.Spec : Prop :=
  ∀ n, P6168276453517798804.a n = A377781 (n + 1)

theorem P6168276453517798804.correct : P6168276453517798804.Spec := by
  intro n
  simp only [A377781, Nat.add_sub_cancel, A377781.P6168276453517798804.a, A377781.P17886322484362975724.f1, A377781.P17886322484362975724.a, A001223, A001223.P5083310856331133973.a, A065514, A065514.P8687628977882783365.a, A377289, A377289.P15347818859736990215.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A027883, A027883.P3043507636580154283.a, A046933, A046933.P9479947770746769512.a, A000079, A000079.P10855139691139572931.a, A024620, A024620.P8536977387799856667.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A065515, A065515.P15129427044826637405.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377781

/-! ## A377781.P15030492227784201165

`A075526(n+1)+A377289(n+1)-A377289(n+2)`
-/

namespace A377781.P15030492227784201165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) + (A377289 (n + 1) - A377289 (n + 2))

end

end A377781.P15030492227784201165

namespace A377781

/-- `A075526(n+1)+A377289(n+1)-A377289(n+2)` -/
def P15030492227784201165.Spec : Prop :=
  ∀ n, P15030492227784201165.a n = A377781 (n + 1)

end A377781

/-! ## A377781.P10207236396690257437

`Δ[A000961(A027883(n+1))]`
-/

namespace A377781.P10207236396690257437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A027883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377781.P10207236396690257437

namespace A377781

/-- `Δ[A000961(A027883(n+1))]` -/
def P10207236396690257437.Spec : Prop :=
  ∀ n, P10207236396690257437.a n = A377781 (n + 1)

end A377781

/-! ## A377781.P12817447805817340316

`Δ[A322990(Δ[A007504(n)])]`
-/

namespace A377781.P12817447805817340316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377781.P12817447805817340316

namespace A377781

/-- `Δ[A322990(Δ[A007504(n)])]` -/
def P12817447805817340316.Spec : Prop :=
  ∀ n, P12817447805817340316.a n = A377781 (n + 1)

end A377781

/-! ## A377781.P4336882944090246923

`Δ[A322990(A000040(n+1))]`
-/

namespace A377781.P4336882944090246923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377781.P4336882944090246923

namespace A377781

/-- `Δ[A322990(A000040(n+1))]` -/
def P4336882944090246923.Spec : Prop :=
  ∀ n, P4336882944090246923.a n = A377781 (n + 1)

end A377781

/-! ## A377781.P13706447335876690855

`Δ[A136623(Δ[A007504(n)])]`
-/

namespace A377781.P13706447335876690855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377781.P13706447335876690855

namespace A377781

/-- `Δ[A136623(Δ[A007504(n)])]` -/
def P13706447335876690855.Spec : Prop :=
  ∀ n, P13706447335876690855.a n = A377781 (n + 1)

end A377781

/-! ## A377781.P3455134872551802697

`Δ[A031218(A006093(n+1))]`
-/

namespace A377781.P3455134872551802697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377781.P3455134872551802697

namespace A377781

/-- `Δ[A031218(A006093(n+1))]` -/
def P3455134872551802697.Spec : Prop :=
  ∀ n, P3455134872551802697.a n = A377781 (n + 1)

end A377781

/-!
# A377782: First-differences of A031218(n) = greatest number <= n that is 1 or a prime-power.

The programs for A377782, the canonical program `A377782.P15768282698416425142` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377782 has offset 1).

The definition of A377782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377782.P15768282698416425142

`1-Δ[A276781(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A377782

/-- `1-Δ[A276781(n+1)]` -/
def P15768282698416425142.Spec : Prop :=
  ∀ n, P15768282698416425142.a n = A377782 (n + 1)

theorem P15768282698416425142.correct : P15768282698416425142.Spec := by
  intro n
  simp only [A377782, Nat.add_sub_cancel]

end A377782

/-! ## A377782.P15296113904619752403

`(A025528(n+2)-A025528(n+1))*A276781(n+1)`
-/

namespace A377782.P15296113904619752403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025528 (n + 2) - A025528 (n + 1)) * A276781 (n + 1)

end

end A377782.P15296113904619752403

namespace A377782

/-- `(A025528(n+2)-A025528(n+1))*A276781(n+1)` -/
def P15296113904619752403.Spec : Prop :=
  ∀ n, P15296113904619752403.a n = A377782 (n + 1)

end A377782

/-! ## A377782.P16870441886259423525

`Δ[A031218(n+1)]`
-/

namespace A377782.P16870441886259423525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377782.P16870441886259423525

namespace A377782

/-- `Δ[A031218(n+1)]` -/
def P16870441886259423525.Spec : Prop :=
  ∀ n, P16870441886259423525.a n = A377782 (n + 1)

theorem P16870441886259423525.correct : P16870441886259423525.Spec := by
  intro n
  simp only [A377782, Nat.add_sub_cancel, A377782.P16870441886259423525.f1, A377782.P16870441886259423525.a, A377782.P15768282698416425142.f1, A377782.P15768282698416425142.a, A031218, A031218.P11079871404618641815.a, A276781, A276781.P2604158077506703315.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377782

/-! ## A377782.P4988231244202233099

`1-Δ[A378457(n+1)]`
-/

namespace A377782.P4988231244202233099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A377782.P4988231244202233099

namespace A377782

/-- `1-Δ[A378457(n+1)]` -/
def P4988231244202233099.Spec : Prop :=
  ∀ n, P4988231244202233099.a n = A377782 (n + 1)

theorem P4988231244202233099.correct : P4988231244202233099.Spec := by
  intro n
  simp only [A377782, Nat.add_sub_cancel, A377782.P4988231244202233099.f1, A377782.P4988231244202233099.a, A377782.P15768282698416425142.f1, A377782.P15768282698416425142.a, A276781, A276781.P2604158077506703315.a, A378457, A378457.P16628396355233593541.a, A031218, A031218.P11079871404618641815.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377782

/-! ## A377782.P13768643682736762753

`Δ[A000961(A065515(n+1))]`
-/

namespace A377782.P13768643682736762753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A065515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377782.P13768643682736762753

namespace A377782

/-- `Δ[A000961(A065515(n+1))]` -/
def P13768643682736762753.Spec : Prop :=
  ∀ n, P13768643682736762753.a n = A377782 (n + 1)

theorem P13768643682736762753.correct : P13768643682736762753.Spec := by
  intro n
  simp only [A377782, Nat.add_sub_cancel, A377782.P13768643682736762753.f1, A377782.P13768643682736762753.a, A377782.P15768282698416425142.f1, A377782.P15768282698416425142.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A276781, A276781.P2604158077506703315.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A031218, A031218.P11079871404618641815.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377782

/-! ## A377782.P4166156487810897938

`A031218(n+2)-A031218(n+1)`
-/

namespace A377782.P4166156487810897938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 2) - A031218 (n + 1)

end

end A377782.P4166156487810897938

namespace A377782

/-- `A031218(n+2)-A031218(n+1)` -/
def P4166156487810897938.Spec : Prop :=
  ∀ n, P4166156487810897938.a n = A377782 (n + 1)

theorem P4166156487810897938.correct : P4166156487810897938.Spec := by
  intro n
  simp only [A377782, Nat.add_sub_cancel, A377782.P4166156487810897938.a, A377782.P15768282698416425142.f1, A377782.P15768282698416425142.a, A031218, A031218.P11079871404618641815.a, A276781, A276781.P2604158077506703315.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377782

/-! ## A377782.P5530990773701031133

`A276781(n+1)-A378457(n+2)`
-/

namespace A377782.P5530990773701031133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1) - A378457 (n + 2)

end

end A377782.P5530990773701031133

namespace A377782

/-- `A276781(n+1)-A378457(n+2)` -/
def P5530990773701031133.Spec : Prop :=
  ∀ n, P5530990773701031133.a n = A377782 (n + 1)

theorem P5530990773701031133.correct : P5530990773701031133.Spec := by
  intro n
  simp only [A377782, Nat.add_sub_cancel, A377782.P5530990773701031133.a, A377782.P15768282698416425142.f1, A377782.P15768282698416425142.a, A276781, A276781.P2604158077506703315.a, A378457, A378457.P16628396355233593541.a, A031218, A031218.P11079871404618641815.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377782

/-! ## A377782.P4661604605793901846

`A010055(n+2)*A276781(n+1)`
-/

namespace A377782.P4661604605793901846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 2) * A276781 (n + 1)

end

end A377782.P4661604605793901846

namespace A377782

/-- `A010055(n+2)*A276781(n+1)` -/
def P4661604605793901846.Spec : Prop :=
  ∀ n, P4661604605793901846.a n = A377782 (n + 1)

end A377782

/-! ## A377782.P8736924389441915609

`Δ[A238898(n+2)/2]`
-/

namespace A377782.P8736924389441915609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238898 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377782.P8736924389441915609

namespace A377782

/-- `Δ[A238898(n+2)/2]` -/
def P8736924389441915609.Spec : Prop :=
  ∀ n, P8736924389441915609.a n = (A377782 (n + 1) : ℚ)

end A377782

/-! ## A377782.P8385224961951551049

`Δ[A322990(A000015(n+2))]`
-/

namespace A377782.P8385224961951551049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (A000015 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377782.P8385224961951551049

namespace A377782

/-- `Δ[A322990(A000015(n+2))]` -/
def P8385224961951551049.Spec : Prop :=
  ∀ n, P8385224961951551049.a n = A377782 (n + 1)

end A377782

/-!
# A377783: Least nonsquarefree number > prime(n).

The programs for A377783, the canonical program `A377783.P9497838708436341752` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377783 has offset 1).

The definition of A377783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377783.P17849489455871187961

`A120327(Δ[A007504(n)])`
-/

namespace A377783.P17849489455871187961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (f1 (n + 1) - f1 n).toNat

end

end A377783.P17849489455871187961

namespace A377783

/-- `A120327(Δ[A007504(n)])` -/
def P17849489455871187961.Spec : Prop :=
  ∀ n, P17849489455871187961.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P7532232153280171475

`A120327(record[A051698(n)])`
-/

namespace A377783.P7532232153280171475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A377783.P7532232153280171475

namespace A377783

/-- `A120327(record[A051698(n)])` -/
def P7532232153280171475.Spec : Prop :=
  ∀ n, P7532232153280171475.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P9497838708436341752

`A120327(A000040(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A377783

/-- `A120327(A000040(n+1))` -/
def P9497838708436341752.Spec : Prop :=
  ∀ n, P9497838708436341752.a n = A377783 (n + 1)

theorem P9497838708436341752.correct : P9497838708436341752.Spec := by
  intro n
  simp only [A377783, Nat.add_sub_cancel]

end A377783

/-! ## A377783.P7967772502097577500

`A120327(A006005(n+1))`
-/

namespace A377783.P7967772502097577500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A006005 (n + 1)).toNat

end

end A377783.P7967772502097577500

namespace A377783

/-- `A120327(A006005(n+1))` -/
def P7967772502097577500.Spec : Prop :=
  ∀ n, P7967772502097577500.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P16524575431832661286

`A120327(A008864(n+1))`
-/

namespace A377783.P16524575431832661286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A008864 (n + 1)).toNat

end

end A377783.P16524575431832661286

namespace A377783

/-- `A120327(A008864(n+1))` -/
def P16524575431832661286.Spec : Prop :=
  ∀ n, P16524575431832661286.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P1569721943777275546

`A120327(A028815(n+1))`
-/

namespace A377783.P1569721943777275546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A028815 (n + 1)).toNat

end

end A377783.P1569721943777275546

namespace A377783

/-- `A120327(A028815(n+1))` -/
def P1569721943777275546.Spec : Prop :=
  ∀ n, P1569721943777275546.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P13872862351302546109

`A120327(A055670(n+1))`
-/

namespace A377783.P13872862351302546109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A055670 (n + 1)).toNat

end

end A377783.P13872862351302546109

namespace A377783

/-- `A120327(A055670(n+1))` -/
def P13872862351302546109.Spec : Prop :=
  ∀ n, P13872862351302546109.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P9448140412162672002

`A120327(A175216(n+1))`
-/

namespace A377783.P9448140412162672002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A175216 (n + 1)).toNat

end

end A377783.P9448140412162672002

namespace A377783

/-- `A120327(A175216(n+1))` -/
def P9448140412162672002.Spec : Prop :=
  ∀ n, P9448140412162672002.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P11127312919061955657

`A120327(A350171(n+1))`
-/

namespace A377783.P11127312919061955657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A350171 (n + 1)).toNat

end

end A377783.P11127312919061955657

namespace A377783

/-- `A120327(A350171(n+1))` -/
def P11127312919061955657.Spec : Prop :=
  ∀ n, P11127312919061955657.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P12566767198326943543

`A120327(A008578(n+2))`
-/

namespace A377783.P12566767198326943543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A008578 (n + 2)).toNat

end

end A377783.P12566767198326943543

namespace A377783

/-- `A120327(A008578(n+2))` -/
def P12566767198326943543.Spec : Prop :=
  ∀ n, P12566767198326943543.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P7682624199695883286

`A120327(A378032(n+1)+1)`
-/

namespace A377783.P7682624199695883286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A378032 (n + 1) + 1).toNat

end

end A377783.P7682624199695883286

namespace A377783

/-- `A120327(A378032(n+1)+1)` -/
def P7682624199695883286.Spec : Prop :=
  ∀ n, P7682624199695883286.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P5835407602716432163

`A120327(A067535(A378032(n+1)))`
-/

namespace A377783.P5835407602716432163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A067535 (A378032 (n + 1)).toNat).toNat

end

end A377783.P5835407602716432163

namespace A377783

/-- `A120327(A067535(A378032(n+1)))` -/
def P5835407602716432163.Spec : Prop :=
  ∀ n, P5835407602716432163.a n = A377783 (n + 1)

end A377783

/-! ## A377783.P5634653974341485948

`A120327(A377289(n+1)+A065514(n+1))`
-/

namespace A377783.P5634653974341485948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A377289 (n + 1) + A065514 (n + 1)).toNat

end

end A377783.P5634653974341485948

namespace A377783

/-- `A120327(A377289(n+1)+A065514(n+1))` -/
def P5634653974341485948.Spec : Prop :=
  ∀ n, P5634653974341485948.a n = A377783 (n + 1)

theorem P5634653974341485948.correct : P5634653974341485948.Spec := by
  intro n
  simp only [A377783, Nat.add_sub_cancel, A377783.P5634653974341485948.a, A377783.P9497838708436341752.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065514, A065514.P8687628977882783365.a, A120327, A120327.P4710944750687290271.a, A377289, A377289.P15347818859736990215.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A027883, A027883.P3043507636580154283.a, A294234, A294234.P2149377772881996942.f2, A294234.P2149377772881996942.f3, A294234.P2149377772881996942.f1, A294234.P2149377772881996942.a, A000079, A000079.P10855139691139572931.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A024620, A024620.P8536977387799856667.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A065515, A065515.P15129427044826637405.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377783

/-!
# A377784: First-differences of A377783 (least nonsquarefree number > prime(n)).

The programs for A377784, there is no canonical definition to state claims against.
-/

/-! ## A377784.P9992138176727806006

`Δ[A377783(n+1)]`
-/

namespace A377784.P9992138176727806006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P9992138176727806006

/-! ## A377784.P8960254235136935614

`Δ[A120327(Δ[A007504(n)])]`
-/

namespace A377784.P8960254235136935614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P8960254235136935614

/-! ## A377784.P14259179553064537823

`Δ[A120327(A000040(n+1))]`
-/

namespace A377784.P14259179553064537823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P14259179553064537823

/-! ## A377784.P8494702811358693021

`Δ[A120327(A008864(n+1))]`
-/

namespace A377784.P8494702811358693021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P8494702811358693021

/-! ## A377784.P2316598952923095494

`Δ[A120327(sqrt(A001248(n+1)))]`
-/

namespace A377784.P2316598952923095494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P2316598952923095494

/-! ## A377784.P6869193647599893618

`Δ[A120327(A156037(n+1)+1)]`
-/

namespace A377784.P6869193647599893618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A156037 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P6869193647599893618

/-! ## A377784.P17809689661502882259

`Δ[A120327(A001748(n+1)/3)]`
-/

namespace A377784.P17809689661502882259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377784.P17809689661502882259

/-! ## A377784.P8614167508219678605

`A377783(n+2)-A377783(n+1)`
-/

namespace A377784.P8614167508219678605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (n + 2) - A377783 (n + 1)

end

end A377784.P8614167508219678605

/-!
# A377785: Number of n-node connected unsensed planar maps with an external face in which all internal faces are triangles.

The programs for A377785, there is no canonical definition to state claims against.
-/

/-! ## A377785.P8035739027255585250

`(A378335(n+3)+A378339(n+3))/2`
-/

namespace A377785.P8035739027255585250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378335 (n + 3) + A378339 (n + 3) : ℚ) / 2

end

end A377785.P8035739027255585250

/-! ## A377785.P4784969323128175477

`A273943(A378339(n+3)+A378335(n+3))`
-/

namespace A377785.P4784969323128175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A378339 (n + 3) + A378335 (n + 3)).toNat

end

end A377785.P4784969323128175477

/-! ## A377785.P16478535415988263450

`A174221(A378339(n+3)+A378335(n+3))`
-/

namespace A377785.P16478535415988263450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A378339 (n + 3) + A378335 (n + 3)).toNat

end

end A377785.P16478535415988263450

/-!
# A377789: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - 2*log(1-x)) ).

The programs for A377789, there is no canonical definition to state claims against.
-/

/-! ## A377789.P17077716326757180437

`A109168(A322771(n))`
-/

namespace A377789.P17077716326757180437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A322771 n).toNat

end

end A377789.P17077716326757180437

/-!
# A377791: Primes in A194627.

The programs for A377791, there is no canonical definition to state claims against.
-/

/-! ## A377791.P12254566495614474541

`n²+(A377882(n+1)-(n+1))²+1`
-/

namespace A377791.P12254566495614474541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A377882 (n + 1) - (n + 1 : ℤ)) ^ 2 + 1

end

end A377791.P12254566495614474541

/-! ## A377791.P15412484047009334352

`A194627(A377882(n+1))`
-/

namespace A377791.P15412484047009334352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194627 (A377882 (n + 1)).toNat

end

end A377791.P15412484047009334352

/-! ## A377791.P14386852812715473450

`p?[A194627(n+1)]`
-/

namespace A377791.P14386852812715473450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A377791.P14386852812715473450

/-! ## A377791.P8634854579000958411

`∩[A079545(n+1), A194627(n+1)]`
-/

namespace A377791.P8634854579000958411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377791.P8634854579000958411

/-! ## A377791.P18433253577180304755

`filter[A194627(n+1), A010051(#)]`
-/

namespace A377791.P18433253577180304755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A377791.P18433253577180304755

/-!
# A377792: Irregular triangle where row n lists squarefree composite k with lpf(k) = prime(n) such that m <= Omega(k), where lpf = A020639, m = floor(log k / log lpf(k)), and Omega = A001222.

The programs for A377792, there is no canonical definition to state claims against.
-/

/-! ## A377792.P8826997148664874873

`∩[A080671(n+1), A377713(n+1)]`
-/

namespace A377792.P8826997148664874873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377792.P8826997148664874873

/-! ## A377792.P11220483483025769340

`∩[A281746(n+1), A377713(n+1)]`
-/

namespace A377792.P11220483483025769340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377792.P11220483483025769340

/-! ## A377792.P217932934241723890

`∩[A355641(n+1), A377713(n+1)]`
-/

namespace A377792.P217932934241723890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377792.P217932934241723890

/-! ## A377792.P12666721060386571449

`∩[A080671(n+1), A138109(n+1)]`
-/

namespace A377792.P12666721060386571449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377792.P12666721060386571449

/-! ## A377792.P2523536046307485129

`∩[A138109(n+1), A281746(n+1)]`
-/

namespace A377792.P2523536046307485129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377792.P2523536046307485129

/-!
# A377793: a(n) is the number of squarefree composite k with lpf(k) = prime(n) such that m <= Omega(k), where lpf = A020639, m = floor(log k / log lpf(k)), and Omega = A001222.

The programs for A377793, there is no canonical definition to state claims against.
-/

/-! ## A377793.P1293872987486370776

`A330060(A098232(n))`
-/

namespace A377793.P1293872987486370776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A098232 n).toNat

end

end A377793.P1293872987486370776

/-!
# A377797: Decimal expansion of the volume of a truncated icosidodecahedron (great rhombicosidodecahedron) with unit edge length.

The programs for A377797, there is no canonical definition to state claims against.
-/

/-! ## A377797.P13141243770237744473

`A038573(A220777(a(n-1)))*A104457(n)` with `a(0)=2, a(1)=0, a(2)=6`
-/

namespace A377797.P13141243770237744473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 6] fun n a =>
  A038573 (A220777 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A377797.P13141243770237744473

/-! ## A377797.P8531108815473393111

`A002802(A326626(a(n-1)))*A104457(n)` with `a(0)=2, a(1)=0, a(2)=6`
-/

namespace A377797.P8531108815473393111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 6] fun n a =>
  A002802 (A326626 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A377797.P8531108815473393111

/-! ## A377797.P18097806219476314926

`A179006(A000720(a(n-1)+1))+A104457(n)` with `a(0)=2, a(1)=0, a(2)=6`
-/

namespace A377797.P18097806219476314926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 6] fun n a =>
  A179006 (A000720 (a (n - 1) + 1).toNat).toNat + A104457 (n + 1)

end

end A377797.P18097806219476314926

