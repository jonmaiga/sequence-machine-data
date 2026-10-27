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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A229700: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229700, there is no canonical definition to state claims against.
-/

/-! ## A229700.P10236353251684575459

`A229694(eq[11, A066657(n)])`
-/

namespace A229700.P10236353251684575459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229700.P10236353251684575459

/-! ## A229700.P1834553231739721274

`A229694(A167499(n+5)+2)`
-/

namespace A229700.P1834553231739721274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167499 (n + 5) + 2).toNat

end

end A229700.P1834553231739721274

/-! ## A229700.P2070205889901013814

`A229694(A046691(n+4)+11)`
-/

namespace A229700.P2070205889901013814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A046691 (n + 4) + 11).toNat

end

end A229700.P2070205889901013814

/-! ## A229700.P14077583560431189082

`A229694(eq[8, A131818(n+1)])`
-/

namespace A229700.P14077583560431189082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229700.P14077583560431189082

/-! ## A229700.P15574246015030844243

`A229694(eq[8, A141169(n)]+1)`
-/

namespace A229700.P15574246015030844243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229700.P15574246015030844243

/-!
# A229701: Squares of triangular numbers, written backwards.

The programs for A229701, there is no canonical definition to state claims against.
-/

/-! ## A229701.P2188492644030572485

`A002942(∑[n+1])`
-/

namespace A229701.P2188492644030572485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229701.P2188492644030572485

/-! ## A229701.P638016389794410973

`A061226(∑[n+1])-∑[n+1]²`
-/

namespace A229701.P638016389794410973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061226 (∑ j ∈ Finset.range (n + 1), f1 j) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A229701.P638016389794410973

/-! ## A229701.P10765256842904301584

`or(char[1], A002942(A000217(n+1)))`
-/

namespace A229701.P10765256842904301584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002942 (A000217 (n + 1)).toNat)

end

end A229701.P10765256842904301584

/-! ## A229701.P16144456547265474070

`or(char[1], A002942(A000124(n)+n))`
-/

namespace A229701.P16144456547265474070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002942 (A000124 n + (n : ℤ)).toNat)

end

end A229701.P16144456547265474070

/-! ## A229701.P17861658455807147948

`A002942(A000217(n+1))%A017500(n)`
-/

namespace A229701.P17861658455807147948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002942 (A000217 (n + 1)).toNat) (A017500 n)

end

end A229701.P17861658455807147948

/-! ## A229701.P1882406064135281116

`gcd(A000038(n), A002942(A000217(n+1)))`
-/

namespace A229701.P1882406064135281116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002942 (A000217 (n + 1)).toNat)

end

end A229701.P1882406064135281116

/-! ## A229701.P6311204761587534909

`A002942(A000217(n+1))+A000007(n+1)`
-/

namespace A229701.P6311204761587534909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A229701.P6311204761587534909

/-! ## A229701.P1231130837853961121

`A000034(2*n)*A002942(A000217(n+1))`
-/

namespace A229701.P1231130837853961121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A002942 (A000217 (n + 1)).toNat

end

end A229701.P1231130837853961121

/-! ## A229701.P16627093149818227554

`A007318(C(2, n))*A002942(A000217(n+1))`
-/

namespace A229701.P16627093149818227554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A002942 (A000217 (n + 1)).toNat

end

end A229701.P16627093149818227554

/-! ## A229701.P1897271410053330955

`A002942(A000124(n)+n)+A000007(n+1)`
-/

namespace A229701.P1897271410053330955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A000124 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A229701.P1897271410053330955

/-! ## A229701.P16630511160266926420

`A002942(A000124(n)+n)+A000038(n+1)`
-/

namespace A229701.P16630511160266926420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A000124 n + (n : ℤ)).toNat + A000038 (n + 1)

end

end A229701.P16630511160266926420

/-! ## A229701.P12550237335945209907

`A000041(C(n, n²))*A002942(A000217(n+1))`
-/

namespace A229701.P12550237335945209907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A002942 (A000217 (n + 1)).toNat

end

end A229701.P12550237335945209907

/-! ## A229701.P14412393425479622665

`A007318(and(1, -n))*A002942(A000124(n)+n)`
-/

namespace A229701.P14412393425479622665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A002942 (A000124 n + (n : ℤ)).toNat

end

end A229701.P14412393425479622665

/-! ## A229701.P16408646584556902497

`A002942(A000217(n+1))+A008683(4*(n+1))`
-/

namespace A229701.P16408646584556902497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A000217 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A229701.P16408646584556902497

/-! ## A229701.P13151800752254224222

`A000108(gcd(n, n+1))*A002942(A000217(n+1))`
-/

namespace A229701.P13151800752254224222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A002942 (A000217 (n + 1)).toNat

end

end A229701.P13151800752254224222

/-! ## A229701.P8631548353939717631

`A002942(A000124(n)+n)^(A000040(n+1)%2)`
-/

namespace A229701.P8631548353939717631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002942 (A000124 n + (n : ℤ)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A229701.P8631548353939717631

/-! ## A229701.P11072911461012734971

`A007318(C(2, n+2))*A002942(A000124(n)+n)`
-/

namespace A229701.P11072911461012734971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A002942 (A000124 n + (n : ℤ)).toNat

end

end A229701.P11072911461012734971

/-! ## A229701.P17759910417069502568

`A000120(A001316(n))*A002942(A000124(n)+n)`
-/

namespace A229701.P17759910417069502568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A002942 (A000124 n + (n : ℤ)).toNat

end

end A229701.P17759910417069502568

/-! ## A229701.P8218197420189406462

`A001222(A000353(n+1))*A002942(A000217(n+1))`
-/

namespace A229701.P8218197420189406462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000353 (n + 1)).toNat * A002942 (A000217 (n + 1)).toNat

end

end A229701.P8218197420189406462

/-! ## A229701.P11264798122905285062

`A295335(A000040(n+1))+A002942(A000124(n)+n)`
-/

namespace A229701.P11264798122905285062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 (A000040 (n + 1)).toNat + A002942 (A000124 n + (n : ℤ)).toNat

end

end A229701.P11264798122905285062

/-!
# A229702: Expansion of 1/((1-x)^4*(1-6x)).

The programs for A229702, the canonical program `A229702.P3367914734483407814` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229702 has offset 0).

The definition of A229702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+30x^2-40x^3+25x^4-6x^5))` (program `A229702.P3367914734483407814`, by `A229702.P3367914734483407814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229702.P3367914734483407814

`ogf(1/(1-10x+30x^2-40x^3+25x^4-6x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229702

/-- `ogf(1/(1-10x+30x^2-40x^3+25x^4-6x^5))` -/
def P3367914734483407814.Spec : Prop :=
  ∀ n, P3367914734483407814.a n = A229702 n

theorem P3367914734483407814.correct : P3367914734483407814.Spec := by
  intro n
  simp only [A229702]

end A229702

/-! ## A229702.P7802468093640529147

`∑[∑[∑[∑[6^n]]]]`
-/

namespace A229702.P7802468093640529147
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229702.P7802468093640529147

namespace A229702

/-- `∑[∑[∑[∑[6^n]]]]` -/
def P7802468093640529147.Spec : Prop :=
  ∀ n, (P7802468093640529147.a n : ℤ) = A229702 n

end A229702

/-! ## A229702.P6797080429831842939

`floor(∑[∑[∑[∑[6*a(n-1)]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A229702.P6797080429831842939
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  6 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229702.P6797080429831842939

namespace A229702

/-- `floor(∑[∑[∑[∑[6*a(n-1)]]]])` -/
def P6797080429831842939.Spec : Prop :=
  ∀ n, (P6797080429831842939.a n : ℤ) = A229702 n

end A229702

/-! ## A229702.P5999989303759597314

`6*a(n-1)+C(n+3, 3)` with `a(0)=1`
-/

namespace A229702.P5999989303759597314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + Nat.choose (n + 3) 3

end

end A229702.P5999989303759597314

namespace A229702

/-- `6*a(n-1)+C(n+3, 3)` -/
def P5999989303759597314.Spec : Prop :=
  ∀ n, (P5999989303759597314.a n : ℤ) = A229702 n

end A229702

/-! ## A229702.P9645147272843926152

`∑[∑[n+1]]+6*a(n-1)` with `a(0)=1`
-/

namespace A229702.P9645147272843926152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A229702.P9645147272843926152

namespace A229702

/-- `∑[∑[n+1]]+6*a(n-1)` -/
def P9645147272843926152.Spec : Prop :=
  ∀ n, (P9645147272843926152.a n : ℤ) = A229702 n

end A229702

/-! ## A229702.P11577764574504307262

`6*a(n-1)-∑[∑[xor(n, -1)]]` with `a(0)=1`
-/

namespace A229702.P11577764574504307262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229702.P11577764574504307262

namespace A229702

/-- `6*a(n-1)-∑[∑[xor(n, -1)]]` -/
def P11577764574504307262.Spec : Prop :=
  ∀ n, P11577764574504307262.a n = A229702 n

end A229702

/-! ## A229702.P2541851539323597064

`6*a(n-1)-(∑[n]-A008778(n))` with `a(0)=1`
-/

namespace A229702.P2541851539323597064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008778 n)

end

end A229702.P2541851539323597064

namespace A229702

/-- `6*a(n-1)-(∑[n]-A008778(n))` -/
def P2541851539323597064.Spec : Prop :=
  ∀ n, P2541851539323597064.a n = A229702 n

end A229702

/-! ## A229702.P5744487771409492020

`A000292(n+1)+3*2*a(n-1)` with `a(0)=1`
-/

namespace A229702.P5744487771409492020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000292 (n + 1) + 3 * (2 * a (n - 1))

end

end A229702.P5744487771409492020

namespace A229702

/-- `A000292(n+1)+3*2*a(n-1)` -/
def P5744487771409492020.Spec : Prop :=
  ∀ n, P5744487771409492020.a n = A229702 n

end A229702

/-! ## A229702.P13146906673918887032

`∑[∑[A014829(n+1)]]+n*2*A000007(n)`
-/

namespace A229702.P13146906673918887032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014829 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * (2 * A000007 n)

end

end A229702.P13146906673918887032

namespace A229702

/-- `∑[∑[A014829(n+1)]]+n*2*A000007(n)` -/
def P13146906673918887032.Spec : Prop :=
  ∀ n, P13146906673918887032.a n = A229702 n

end A229702

/-!
# A229706: Triangular array read by rows: T(n,k) is the number of unimodal compositions of n with greatest part equal to k; n>=1, 1<=k<=n.

The programs for A229706, there is no canonical definition to state claims against.
-/

/-! ## A229706.P11233212682454481382

`A266082(A330964(n)+1)`
-/

namespace A229706.P11233212682454481382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266082 (A330964 n + 1).toNat

end

end A229706.P11233212682454481382

/-! ## A229706.P12454604268501670207

`A047967(A065941(n+1))+A007828(2*A318795(n+1)+1)`
-/

namespace A229706.P12454604268501670207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (A065941 (n + 1)).toNat + A007828 (2 * A318795 (n + 1) + 1).toNat

end

end A229706.P12454604268501670207

/-! ## A229706.P1090782130078400752

`A253548(A330964(n))`
-/

namespace A229706.P1090782130078400752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253548 (A330964 n).toNat

end

end A229706.P1090782130078400752

/-! ## A229706.P18397237412929596759

`A130259(A330964(n)²)`
-/

namespace A229706.P18397237412929596759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A330964 n ^ 2).toNat

end

end A229706.P18397237412929596759

/-! ## A229706.P2609831848053377926

`A130233(A330964(n)²)/2`
-/

namespace A229706.P2609831848053377926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130233 (A330964 n ^ 2).toNat : ℚ) / 2

end

end A229706.P2609831848053377926

/-!
# A229707: Triangular array read by rows. T(n,k) is the number of strictly unimodal compositions of n with the greatest part equal to k; n>=1, 1<=k<=n.

The programs for A229707, there is no canonical definition to state claims against.
-/

/-! ## A229707.P16134162177555805707

`C(A193592(n), A000217(A176088(n)))`
-/

namespace A229707.P16134162177555805707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A193592 n).toNat (A000217 (A176088 n).toNat).toNat

end

end A229707.P16134162177555805707

/-! ## A229707.P16860234291992939113

`A339884(A185869(n+1))^A176088(n)`
-/

namespace A229707.P16860234291992939113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339884 (A185869 (n + 1)).toNat : ℚ) ^ (A176088 n : ℤ)

end

end A229707.P16860234291992939113

/-! ## A229707.P12187272655516633352

`C(A004736(n+1), A000217(A176088(n)))`
-/

namespace A229707.P12187272655516633352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A000217 (A176088 n).toNat).toNat

end

end A229707.P12187272655516633352

/-! ## A229707.P14032681992044295379

`A339884(A185869(n+1)+A224697(n)-1)`
-/

namespace A229707.P14032681992044295379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339884 (A185869 (n + 1) + (A224697 n - 1)).toNat

end

end A229707.P14032681992044295379

/-! ## A229707.P3368418596451348879

`A224697(n+1)*A339884(A185869(n+1))`
-/

namespace A229707.P3368418596451348879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (n + 1) * A339884 (A185869 (n + 1)).toNat

end

end A229707.P3368418596451348879

/-!
# A229708: Least prime of maximal order mod n.

The programs for A229708, there is no canonical definition to state claims against.
-/

/-! ## A229708.P15942334302289270252

`A163466(A111076(n+1)%A254222(2*n+1))`
-/

namespace A229708.P15942334302289270252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (Int.tmod (A111076 (n + 1)) (A254222 (2 * n + 1))).toNat

end

end A229708.P15942334302289270252

/-! ## A229708.P16702480731095382661

`A285336(A073350(n+1)*A111076(n+1))`
-/

namespace A229708.P16702480731095382661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285336 (A073350 (n + 1) * A111076 (n + 1)).toNat

end

end A229708.P16702480731095382661

/-! ## A229708.P6602628102725910789

`A111076(n+1)+A000122(A097856(n+1))`
-/

namespace A229708.P6602628102725910789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (n + 1) + A000122 (A097856 (n + 1)).toNat

end

end A229708.P6602628102725910789

/-! ## A229708.P488832527956099228

`A111076(n+1)*A144112(A141214(n))`
-/

namespace A229708.P488832527956099228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (n + 1) * A144112 (A141214 n).toNat

end

end A229708.P488832527956099228

/-! ## A229708.P13716773334940281626

`A020639(A001248(n+1)*A111076(n+1))`
-/

namespace A229708.P13716773334940281626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001248 (n + 1) * A111076 (n + 1)).toNat

end

end A229708.P13716773334940281626

/-!
# A229709: Least sum of two squares that is a primitive root of the n-th prime.

The programs for A229709, there is no canonical definition to state claims against.
-/

/-! ## A229709.P9847514341056239443

`A137761(A241476(n+1))`
-/

namespace A229709.P9847514341056239443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137761 (A241476 (n + 1)).toNat

end

end A229709.P9847514341056239443

/-! ## A229709.P914160830259591808

`A006694(A241476(n+1)^3)`
-/

namespace A229709.P914160830259591808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A241476 (n + 1) ^ 3).toNat

end

end A229709.P914160830259591808

/-! ## A229709.P17290872551909164899

`A066853(∏{d}[A242277(n+1), #])`
-/

namespace A229709.P17290872551909164899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A229709.P17290872551909164899

/-! ## A229709.P7318463895122315481

`A137761(∏{d}[A242277(n+1), #])`
-/

namespace A229709.P7318463895122315481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137761 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A229709.P7318463895122315481

/-! ## A229709.P478288672831174367

`A270831(A241476(n+1))%A053322(n+1)`
-/

namespace A229709.P478288672831174367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270831 (A241476 (n + 1)).toNat) (A053322 (n + 1))

end

end A229709.P478288672831174367

/-!
# A229710: Least m of maximal order mod n such that m is a sum of two squares.

The programs for A229710, there is no canonical definition to state claims against.
-/

/-! ## A229710.P8980964063308337117

`A205444(gcd(A018679(n+1), A331561(n+1)))`
-/

namespace A229710.P8980964063308337117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (Int.gcd (A018679 (n + 1)) (A331561 (n + 1)))

end

end A229710.P8980964063308337117

/-! ## A229710.P15428446281202121233

`A218481(gcd(A254214(2*(n+1)), A254222(2*n+1)))`
-/

namespace A229710.P15428446281202121233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 (Int.gcd (A254214 (2 * (n + 1))) (A254222 (2 * n + 1)))

end

end A229710.P15428446281202121233

/-!
# A229711: G.f.: Sum_{n>=0} a(n)*x^n / (1+x)^(n^3) = x.

The programs for A229711, there is no canonical definition to state claims against.
-/

/-! ## A229711.P16853748751872237796

`A211266(A152282(n))+A133880(3*n+4)`
-/

namespace A229711.P16853748751872237796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211266 (A152282 n).toNat + A133880 (3 * n + 4)

end

end A229711.P16853748751872237796

/-!
# A229712: Number of arrays of length n that are sums of 2 consecutive elements of length n+1 permutations of 0..n, and no two consecutive rises or falls in the latter permutation.

The programs for A229712, there is no canonical definition to state claims against.
-/

/-! ## A229712.P10229513806587446030

`A229717(∑[n+2])`
-/

namespace A229712.P10229513806587446030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229712.P10229513806587446030

/-! ## A229712.P4051274280886322725

`record[gcd(A008290(n), A229717(n+1))]`
-/

namespace A229712.P4051274280886322725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A229717 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229712.P4051274280886322725

/-! ## A229712.P7750501627158229057

`record[and(A111967(n), A229717(n+1))]`
-/

namespace A229712.P7750501627158229057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111967 n) (A229717 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229712.P7750501627158229057

/-! ## A229712.P9714957175095715473

`record[A174557(n+3)*A229717(n+2)]`
-/

namespace A229712.P9714957175095715473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174557 (n + 3) * A229717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229712.P9714957175095715473

/-! ## A229712.P13425529432316483151

`A007318(C(2, n))*A229717(A000096(n+1))`
-/

namespace A229712.P13425529432316483151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A229717 (A000096 (n + 1)).toNat

end

end A229712.P13425529432316483151

/-!
# A229713: Number of arrays of length n that are sums of 3 consecutive elements of length n+2 permutations of 0..n+1, and no two consecutive rises or falls in the latter permutation.

The programs for A229713, there is no canonical definition to state claims against.
-/

/-! ## A229713.P5875540778146959423

`A229717(∑[n+3]+1)`
-/

namespace A229713.P5875540778146959423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229713.P5875540778146959423

/-! ## A229713.P777729479279838451

`record[A229717(gcd(n, A091602(n+1)))]`
-/

namespace A229713.P777729479279838451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (Int.gcd (n : ℤ) (A091602 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229713.P777729479279838451

/-! ## A229713.P2458424826215747554

`record[A115359(n+2)*A229717(n+1)]`
-/

namespace A229713.P2458424826215747554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (n + 2) * A229717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229713.P2458424826215747554

/-! ## A229713.P5647025824717631671

`record[A229717(n+1)-A229694(n+3)]`
-/

namespace A229713.P5647025824717631671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (n + 1) - A229694 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229713.P5647025824717631671

/-! ## A229713.P15202347092856447463

`record[A010054(n+3)*A229717(n+1)]`
-/

namespace A229713.P15202347092856447463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A229717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229713.P15202347092856447463

/-!
# A229714: Number of arrays of length n that are sums of 4 consecutive elements of length n+3 permutations of 0..n+2, and no two consecutive rises or falls in the latter permutation.

The programs for A229714, there is no canonical definition to state claims against.
-/

/-! ## A229714.P3704008991718701905

`A229717(∑[n+4]+3)`
-/

namespace A229714.P3704008991718701905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A229714.P3704008991718701905

/-!
# A229715: Number of arrays of length n that are sums of 5 consecutive elements of length n+4 permutations of 0..n+3, and no two consecutive rises or falls in the latter permutation.

The programs for A229715, there is no canonical definition to state claims against.
-/

/-! ## A229715.P2317798236553020774

`A229717(Δ[A264443(n)])`
-/

namespace A229715.P2317798236553020774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (f1 (n + 1) - f1 n).toNat

end

end A229715.P2317798236553020774

/-! ## A229715.P16530612726975352096

`A229717(A046691(n+3))`
-/

namespace A229715.P16530612726975352096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A046691 (n + 3)).toNat

end

end A229715.P16530612726975352096

/-! ## A229715.P10461342558060361004

`A229717(A056115(n)+11)`
-/

namespace A229715.P10461342558060361004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A056115 n + 11).toNat

end

end A229715.P10461342558060361004

/-! ## A229715.P10508981207651194078

`A229717(eq[3, A152157(n)])`
-/

namespace A229715.P10508981207651194078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229715.P10508981207651194078

/-! ## A229715.P10817603168618718702

`A229717(eq[4, A193592(n)])`
-/

namespace A229715.P10817603168618718702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229715.P10817603168618718702

/-!
# A229716: Number of arrays of length n that are sums of 6 consecutive elements of length n+5 permutations of 0..n+4, and no two consecutive rises or falls in the latter permutation.

The programs for A229716, there is no canonical definition to state claims against.
-/

/-! ## A229716.P15637618656788582858

`A229717(A052905(n+3))`
-/

namespace A229716.P15637618656788582858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A052905 (n + 3)).toNat

end

end A229716.P15637618656788582858

/-! ## A229716.P11442898390248277984

`A229717(A056119(n)+16)`
-/

namespace A229716.P11442898390248277984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A056119 n + 16).toNat

end

end A229716.P11442898390248277984

/-! ## A229716.P339538272343396163

`A229717(eq[3, A219347(n)])`
-/

namespace A229716.P339538272343396163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229716.P339538272343396163

/-! ## A229716.P4969355011292181673

`A229717(eq[5, A152157(n)])`
-/

namespace A229716.P4969355011292181673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229716.P4969355011292181673

/-!
# A229718: Number of arrays of length 2 that are sums of n consecutive elements of length 2+n-1 permutations of 0..2+n-2, and no two consecutive rises or falls in the latter permutation.

The programs for A229718, the canonical program `A229718.P13935790624632992605` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229718 has offset 1).

The definition of A229718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229718.P13935790624632992605

`abs(or(2, -n²))+3*n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229718

/-- `abs(or(2, -n²))+3*n` -/
def P13935790624632992605.Spec : Prop :=
  ∀ n, P13935790624632992605.a n = A229718 (n + 1)

theorem P13935790624632992605.correct : P13935790624632992605.Spec := by
  intro n
  simp only [A229718, Nat.add_sub_cancel]

end A229718

/-! ## A229718.P3294648810828096668

`abs(or(2, -n²)-3*n)`
-/

namespace A229718.P3294648810828096668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-(n ^ 2 : ℤ)) - (3 * n : ℤ)|

end

end A229718.P3294648810828096668

namespace A229718

/-- `abs(or(2, -n²)-3*n)` -/
def P3294648810828096668.Spec : Prop :=
  ∀ n, P3294648810828096668.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P14667876039242405181

`2*(∑[n]+abs(or(1, -n)))`
-/

namespace A229718.P14667876039242405181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |Int.lor 1 (-(n : ℤ))|)

end

end A229718.P14667876039242405181

namespace A229718

/-- `2*(∑[n]+abs(or(1, -n)))` -/
def P14667876039242405181.Spec : Prop :=
  ∀ n, P14667876039242405181.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P10949675253697372099

`2*abs(∑[xor(1, -n)]-n)`
-/

namespace A229718.P10949675253697372099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A229718.P10949675253697372099

namespace A229718

/-- `2*abs(∑[xor(1, -n)]-n)` -/
def P10949675253697372099.Spec : Prop :=
  ∀ n, P10949675253697372099.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P14866047657195507569

`record[xor(n, -2)+(2-n)²]`
-/

namespace A229718.P14866047657195507569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229718.P14866047657195507569

namespace A229718

/-- `record[xor(n, -2)+(2-n)²]` -/
def P14866047657195507569.Spec : Prop :=
  ∀ n, P14866047657195507569.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P10956175085290683713

`∑[a(n-2)+4]` with `a(0)=2, a(1)=2, a(2)=4, a(3)=10`
-/

namespace A229718.P10956175085290683713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4, 10] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229718.P10956175085290683713

namespace A229718

/-- `∑[a(n-2)+4]` -/
def P10956175085290683713.Spec : Prop :=
  ∀ n, (P10956175085290683713.a n : ℤ) = A229718 (n + 1)

end A229718

/-! ## A229718.P8422077286952304587

`∑[∑[4-a(n-1)]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A229718.P8422077286952304587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2, 6] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229718.P8422077286952304587

namespace A229718

/-- `∑[∑[4-a(n-1)]]` -/
def P8422077286952304587.Spec : Prop :=
  ∀ n, P8422077286952304587.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P16032891078755268911

`∑[xor(2, (n+1)*2%(n+1))]`
-/

namespace A229718.P16032891078755268911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 1) * (2 % (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229718.P16032891078755268911

namespace A229718

/-- `∑[xor(2, (n+1)*2%(n+1))]` -/
def P16032891078755268911.Spec : Prop :=
  ∀ n, (P16032891078755268911.a n : ℤ) = A229718 (n + 1)

end A229718

/-! ## A229718.P13994005783147448932

`abs(xor(1, n-1)+n*(n+2))`
-/

namespace A229718.P13994005783147448932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 1) + (n * (n + 2) : ℤ)|

end

end A229718.P13994005783147448932

namespace A229718

/-- `abs(xor(1, n-1)+n*(n+2))` -/
def P13994005783147448932.Spec : Prop :=
  ∀ n, P13994005783147448932.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P14578228301708889368

`abs(2*gcd(2, n)-(n+1)*(n+2))`
-/

namespace A229718.P14578228301708889368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.gcd 2 n : ℤ) - ((n + 1) * (n + 2) : ℤ)|

end

end A229718.P14578228301708889368

namespace A229718

/-- `abs(2*gcd(2, n)-(n+1)*(n+2))` -/
def P14578228301708889368.Spec : Prop :=
  ∀ n, P14578228301708889368.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P6307183861070353351

`2*((n+1)²-3)-a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A229718.P6307183861070353351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (((n + 1) ^ 2 : ℤ) - 3) - a (n - 1)

end

end A229718.P6307183861070353351

namespace A229718

/-- `2*((n+1)²-3)-a(n-1)` -/
def P6307183861070353351.Spec : Prop :=
  ∀ n, P6307183861070353351.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P3986126151725754309

`(a(n-2)+2)%a(n-1)+4*n` with `a(0)=2, a(1)=4`
-/

namespace A229718.P3986126151725754309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  (a (n - 2) + 2) % a (n - 1) + 4 * n

end

end A229718.P3986126151725754309

namespace A229718

/-- `(a(n-2)+2)%a(n-1)+4*n` -/
def P3986126151725754309.Spec : Prop :=
  ∀ n, (P3986126151725754309.a n : ℤ) = A229718 (n + 1)

end A229718

/-! ## A229718.P12293149171408288767

`A060626(n)%A200455(n+1)`
-/

namespace A229718.P12293149171408288767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060626 n) (A200455 (n + 1))

end

end A229718.P12293149171408288767

namespace A229718

/-- `A060626(n)%A200455(n+1)` -/
def P12293149171408288767.Spec : Prop :=
  ∀ n, P12293149171408288767.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P7733631536276527361

`A065164(n+2)*A065168(n+2)-A014681(n+1)`
-/

namespace A229718.P7733631536276527361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (n + 2) * A065168 (n + 2) - A014681 (n + 1)

end

end A229718.P7733631536276527361

namespace A229718

/-- `A065164(n+2)*A065168(n+2)-A014681(n+1)` -/
def P7733631536276527361.Spec : Prop :=
  ∀ n, P7733631536276527361.a n = A229718 (n + 1)

end A229718

/-! ## A229718.P3708013520836298316

`A162762(A004280(n+2))`
-/

namespace A229718.P3708013520836298316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162762 (A004280 (n + 2)).toNat

end

end A229718.P3708013520836298316

namespace A229718

/-- `A162762(A004280(n+2))` -/
def P3708013520836298316.Spec : Prop :=
  ∀ n, P3708013520836298316.a n = A229718 (n + 1)

end A229718

/-!
# A229719: Number of arrays of length 3 that are sums of n consecutive elements of length 3+n-1 permutations of 0..3+n-2, and no two consecutive rises or falls in the latter permutation.

The programs for A229719, there is no canonical definition to state claims against.
-/

/-! ## A229719.P3500891151117630223

`A229717(∑[n+2]+4)`
-/

namespace A229719.P3500891151117630223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229719.P3500891151117630223

/-! ## A229719.P7592150962950378722

`lcm(2, A229717(A167614(n+1)))`
-/

namespace A229719.P7592150962950378722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229717 (A167614 (n + 1)).toNat)

end

end A229719.P7592150962950378722

/-! ## A229719.P1254886353924352182

`A229717(A167614(n+1))+A097599(n)`
-/

namespace A229719.P1254886353924352182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A167614 (n + 1)).toNat + A097599 n

end

end A229719.P1254886353924352182

/-! ## A229719.P18244757978730004758

`A229717(A167614(n+1))+A185284(n)`
-/

namespace A229719.P18244757978730004758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A167614 (n + 1)).toNat + A185284 n

end

end A229719.P18244757978730004758

/-! ## A229719.P6185664510305463031

`A016240(n)*A229717(A167614(n+1))`
-/

namespace A229719.P6185664510305463031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A229717 (A167614 (n + 1)).toNat

end

end A229719.P6185664510305463031

/-!
# A229720: Number of arrays of length 4 that are sums of n consecutive elements of length 4+n-1 permutations of 0..4+n-2, and no two consecutive rises or falls in the latter permutation.

The programs for A229720, there is no canonical definition to state claims against.
-/

/-! ## A229720.P4860712612128682868

`A229717(∑[n+3]+7)`
-/

namespace A229720.P4860712612128682868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A229720.P4860712612128682868

/-!
# A229721: Number of arrays of length 5 that are sums of n consecutive elements of length 5+n-1 permutations of 0..5+n-2, and no two consecutive rises or falls in the latter permutation.

The programs for A229721, there is no canonical definition to state claims against.
-/

/-! ## A229721.P16149863279337395873

`A229717(A167499(n+3))`
-/

namespace A229721.P16149863279337395873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A167499 (n + 3)).toNat

end

end A229721.P16149863279337395873

/-! ## A229721.P10583938815092479030

`A229717(A155212(n)+13)`
-/

namespace A229721.P10583938815092479030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A155212 n + 13).toNat

end

end A229721.P10583938815092479030

/-! ## A229721.P9151715192684338784

`A229717(A056000(n)+15)`
-/

namespace A229721.P9151715192684338784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A056000 n + 15).toNat

end

end A229721.P9151715192684338784

/-! ## A229721.P2877427498477530033

`A229717(eq[7, A066657(n)])`
-/

namespace A229721.P2877427498477530033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229721.P2877427498477530033

/-! ## A229721.P7916930506952039947

`A229717(A166136(n+3)-1)`
-/

namespace A229721.P7916930506952039947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A166136 (n + 3) - 1).toNat

end

end A229721.P7916930506952039947

/-!
# A229722: Number of arrays of length 6 that are sums of n consecutive elements of length 6+n-1 permutations of 0..6+n-2, and no two consecutive rises or falls in the latter permutation.

The programs for A229722, there is no canonical definition to state claims against.
-/

/-! ## A229722.P14666202944002481566

`A229717(A166136(n+4))`
-/

namespace A229722.P14666202944002481566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A166136 (n + 4)).toNat

end

end A229722.P14666202944002481566

/-! ## A229722.P13996553125636121027

`A229717(A167499(n+4)+1)`
-/

namespace A229722.P13996553125636121027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A167499 (n + 4) + 1).toNat

end

end A229722.P13996553125636121027

/-! ## A229722.P14964993909044963644

`A229717(A167614(n+4)+3)`
-/

namespace A229722.P14964993909044963644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A167614 (n + 4) + 3).toNat

end

end A229722.P14964993909044963644

/-! ## A229722.P7489121211885551580

`A229717(A000124(n+5)+5)`
-/

namespace A229722.P7489121211885551580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229717 (A000124 (n + 5) + 5).toNat

end

end A229722.P7489121211885551580

/-!
# A229723: Expansion of psi(q) * chi(-q^3) * phi(-q^6) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A229723, there is no canonical definition to state claims against.
-/

/-! ## A229723.P1590323324397316400

`A260309(n)/A057079(n)`
-/

namespace A229723.P1590323324397316400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 n : ℚ) / (A057079 n : ℚ)

end

end A229723.P1590323324397316400

/-! ## A229723.P13234021311372224021

`A260309(n)/A132954(n)`
-/

namespace A229723.P13234021311372224021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 n : ℚ) / (A132954 n : ℚ)

end

end A229723.P13234021311372224021

/-! ## A229723.P10632970764423681474

`A260309(n)/∑[A100051(n)]`
-/

namespace A229723.P10632970764423681474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A229723.P10632970764423681474

/-! ## A229723.P895800943287228847

`A046113(n)/A087204(A028242(n))`
-/

namespace A229723.P895800943287228847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046113 n : ℚ) / (A087204 (A028242 n).toNat : ℚ)

end

end A229723.P895800943287228847

/-! ## A229723.P14448548117777324491

`A087960(n)*A263577(A064680(n))`
-/

namespace A229723.P14448548117777324491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A263577 (A064680 n).toNat

end

end A229723.P14448548117777324491

/-! ## A229723.P752883355356402238

`A087960(n)*A263577(2*n)`
-/

namespace A229723.P752883355356402238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A263577 (2 * n)

end

end A229723.P752883355356402238

/-! ## A229723.P5329010588115588290

`A046113(n)/A133988(A000217(n))`
-/

namespace A229723.P5329010588115588290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046113 n : ℚ) / (A133988 (A000217 n).toNat : ℚ)

end

end A229723.P5329010588115588290

/-!
# A229724: Triangular array read by rows: T(n,k) is the number of partitions of n in which the greatest odd part is equal to 2k-1; n >= 1, 1 <= k <= ceiling(n/2).

The programs for A229724, there is no canonical definition to state claims against.
-/

/-! ## A229724.P17010975292564787739

`A207379(A187829(n+1)+A000037(n+1))`
-/

namespace A229724.P17010975292564787739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207379 (A187829 (n + 1) + A000037 (n + 1)).toNat

end

end A229724.P17010975292564787739

/-! ## A229724.P8817426519237024623

`A000194(A029666(n)%A246492(n+1))`
-/

namespace A229724.P8817426519237024623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A029666 n) (A246492 (n + 1))).toNat

end

end A229724.P8817426519237024623

/-! ## A229724.P11382807363947139359

`A345116(A006093(n+1)+A003231(n+1))`
-/

namespace A229724.P11382807363947139359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (A006093 (n + 1) + A003231 (n + 1)).toNat

end

end A229724.P11382807363947139359

/-! ## A229724.P9089728378319276588

`A345116(A189368(n+1)+A006093(n+1))`
-/

namespace A229724.P9089728378319276588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (A189368 (n + 1) + A006093 (n + 1)).toNat

end

end A229724.P9089728378319276588

/-! ## A229724.P13774908403435386519

`A058978(A057869(n))`
-/

namespace A229724.P13774908403435386519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (A057869 n).toNat

end

end A229724.P13774908403435386519

/-!
# A229726: Denominator of Sum_{k=1..2n+1} 2^k/k.

The programs for A229726, there is no canonical definition to state claims against.
-/

/-! ## A229726.P2970914015540769776

`gcd(A025547(n+2), A046879(2*n+1))`
-/

namespace A229726.P2970914015540769776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025547 (n + 2)) (A046879 (2 * n + 1))

end

end A229726.P2970914015540769776

/-! ## A229726.P11253881688720272567

`lcm(64, A046879(2*n+1))/64`
-/

namespace A229726.P11253881688720272567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 64 (A046879 (2 * n + 1)) : ℚ) / 64

end

end A229726.P11253881688720272567

/-! ## A229726.P1741927639713880704

`gcd(∏[2*n+1], A241519(2*n+1))`
-/

namespace A229726.P1741927639713880704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A241519 (2 * n + 1))

end

end A229726.P1741927639713880704

/-! ## A229726.P14588039891109830070

`gcd(A025547(2*(n+1)), A353250(2*n+1))`
-/

namespace A229726.P14588039891109830070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025547 (2 * (n + 1))) (A353250 (2 * n + 1))

end

end A229726.P14588039891109830070

/-!
# A229727: Numerator of Sum_{k=1..2n+1} 2^k/k.

The programs for A229727, there is no canonical definition to state claims against.
-/

/-! ## A229727.P4040894291224277881

`A108866(Δ[n²])`
-/

namespace A229727.P4040894291224277881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229727.P4040894291224277881

/-! ## A229727.P4608579782139971188

`lcm(2, A108866(2*n+1))`
-/

namespace A229727.P4608579782139971188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A108866 (2 * n + 1))

end

end A229727.P4608579782139971188

/-!
# A229729: Number of separable permutations with exactly four occurrences of the 1-box pattern.

The programs for A229729, there is no canonical definition to state claims against.
-/

/-! ## A229729.P10101213239646981216

`A393823(A179340(n+1))`
-/

namespace A229729.P10101213239646981216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393823 (A179340 (n + 1)).toNat

end

end A229729.P10101213239646981216

/-! ## A229729.P11133164259399424906

`lcm(2, A293862(A000698(n)))`
-/

namespace A229729.P11133164259399424906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A293862 (A000698 n).toNat)

end

end A229729.P11133164259399424906

/-! ## A229729.P17157284182465596961

`A369747(A369726(n)+A002597(n))`
-/

namespace A229729.P17157284182465596961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369747 (A369726 n + A002597 n).toNat

end

end A229729.P17157284182465596961

/-!
# A229730: Number of separable permutations with the maximum number of occurrences of the 1-box pattern on separable permutations.

The programs for A229730, there is no canonical definition to state claims against.
-/

/-! ## A229730.P17389875952253146021

`and(A025348(n+1), A363181(n))`
-/

namespace A229730.P17389875952253146021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025348 (n + 1)) (A363181 n)

end

end A229730.P17389875952253146021

/-! ## A229730.P3659179970748099848

`and(A255569(n+1), A363181(n))`
-/

namespace A229730.P3659179970748099848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255569 (n + 1)) (A363181 n)

end

end A229730.P3659179970748099848

/-! ## A229730.P5665052901872813636

`A363181(n)-A127697(A196186(n+1))`
-/

namespace A229730.P5665052901872813636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363181 n - A127697 (A196186 (n + 1)).toNat

end

end A229730.P5665052901872813636

/-! ## A229730.P1674776037748016063

`A202177(A137630(n+2))`
-/

namespace A229730.P1674776037748016063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202177 (A137630 (n + 2)).toNat

end

end A229730.P1674776037748016063

/-!
# A229731: G.f.: x^4*(6 + x - 7*x^2 - x^3 + 3*x^4 + x^5)/(1-x-x^2)^3.

The programs for A229731, there is no canonical definition to state claims against.
-/

/-! ## A229731.P9918090714029052360

`∑[A224932(A324844(n+1))]`
-/

namespace A229731.P9918090714029052360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224932 (A324844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229731.P9918090714029052360

/-! ## A229731.P17081701856807014089

`A051742(A000984(n))-A132857(n)`
-/

namespace A229731.P17081701856807014089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A000984 n).toNat - A132857 n

end

end A229731.P17081701856807014089

/-! ## A229731.P16257850519081244318

`A047263(A014833(n*A002265(n)))`
-/

namespace A229731.P16257850519081244318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A014833 ((n : ℤ) * A002265 n).toNat).toNat

end

end A229731.P16257850519081244318

/-! ## A229731.P14323963875754102443

`A123578(A011898(n)*A015518(n))`
-/

namespace A229731.P14323963875754102443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A011898 n * A015518 n).toNat

end

end A229731.P14323963875754102443

/-!
# A229732: G.f.: x^4*(2 - x^2 + x^3 + x^4)/(1-x-x^2)^3.

The programs for A229732, there is no canonical definition to state claims against.
-/

/-! ## A229732.P4720252800157497122

`∑[A135661(A122446(n))]`
-/

namespace A229732.P4720252800157497122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A122446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229732.P4720252800157497122

/-! ## A229732.P7217964539773167164

`∑[A237817(A347443(∑[n]))]`
-/

namespace A229732.P7217964539773167164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237817 (A347443 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229732.P7217964539773167164

/-! ## A229732.P18131558860471322444

`∑[A135665(A210112(n+2)²)]`
-/

namespace A229732.P18131558860471322444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A210112 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229732.P18131558860471322444

/-! ## A229732.P6676365706609915223

`∑[A259361(Δ[A320745(n+1)])]`
-/

namespace A229732.P6676365706609915223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229732.P6676365706609915223

/-! ## A229732.P8084462333962273078

`A000196(4*A037958(2*n+1))`
-/

namespace A229732.P8084462333962273078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (4 * A037958 (2 * n + 1)).toNat

end

end A229732.P8084462333962273078

/-!
# A229733: Expansion of (1-x+2*x^3-sqrt(1-2*x-3*x^2+4*x^3-4*x^4))/(2*x^2).

The programs for A229733, there is no canonical definition to state claims against.
-/

/-! ## A229733.P16228432871818162033

`A055086(A001088(n+1)-A057354(n))`
-/

namespace A229733.P16228432871818162033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A001088 (n + 1) - A057354 n).toNat

end

end A229733.P16228432871818162033

/-! ## A229733.P3609107015692791703

`A055086(A001088(n+1)-A163326(n))`
-/

namespace A229733.P3609107015692791703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A001088 (n + 1) - A163326 n).toNat

end

end A229733.P3609107015692791703

/-! ## A229733.P9632995784456566545

`A205402(A001088(n+1))-A204909(n+1)`
-/

namespace A229733.P9632995784456566545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205402 (A001088 (n + 1)).toNat - A204909 (n + 1)

end

end A229733.P9632995784456566545

/-! ## A229733.P13179084050064697337

`A055086(A001088(n+1)+A055086(n)-n)`
-/

namespace A229733.P13179084050064697337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A001088 (n + 1) + (A055086 n - (n : ℤ))).toNat

end

end A229733.P13179084050064697337

/-! ## A229733.P7134236196763972463

`A161205(A001088(n+1)-A059995(3*n+2))`
-/

namespace A229733.P7134236196763972463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A001088 (n + 1) - A059995 (3 * n + 2)).toNat

end

end A229733.P7134236196763972463

/-!
# A229734: G.f.: (1+x-2*x^2+2*x^3-sqrt(1-2*x-3*x^2+4*x^3-4*x^4))/(2*(1-x+x^2)).

The programs for A229734, there is no canonical definition to state claims against.
-/

/-! ## A229734.P6793427432001693557

`A118759(∑[a(n-1)+3*a(n-2)])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A229734.P6793427432001693557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 1] fun n f1 =>
  f1 (n - 1) + 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229734.P6793427432001693557

/-! ## A229734.P6187726960622251318

`A345167(A000602(n))+A338117(n+2)`
-/

namespace A229734.P6187726960622251318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A000602 n).toNat + A338117 (n + 2)

end

end A229734.P6187726960622251318

/-! ## A229734.P10480585622488281310

`A095274(or(A337090(n), A337101(n+1)))`
-/

namespace A229734.P10480585622488281310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (Int.lor (A337090 n) (A337101 (n + 1))).toNat

end

end A229734.P10480585622488281310

/-! ## A229734.P999258841574513065

`xor(A055334(n+1), A324845(A000055(n)))`
-/

namespace A229734.P999258841574513065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055334 (n + 1)) (A324845 (A000055 n).toNat)

end

end A229734.P999258841574513065

/-! ## A229734.P10045154140560042776

`ceil(A034973(3^n)/(2*(n+1)))`
-/

namespace A229734.P10045154140560042776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034973 (3 ^ n) : ℚ) / (2 * (n + 1) : ℚ)⌉

end

end A229734.P10045154140560042776

/-!
# A229735: a(n) = 151*n^7/315+2*n^5/9+7*n^3/45+n/7.

The programs for A229735, the canonical program `A229735.P4724524071039275391` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229735 has offset 0).

The definition of A229735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229735.P4724524071039275391

`151*n^7/315+2*n^5/9+7*n^3/45+n/7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229735

/-- `151*n^7/315+2*n^5/9+7*n^3/45+n/7` -/
def P4724524071039275391.Spec : Prop :=
  ∀ n, P4724524071039275391.a n = (A229735 n : ℚ)

end A229735

/-! ## A229735.P6102938932354664067

`A077042(A055999(n+6)-3)`
-/

namespace A229735.P6102938932354664067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A055999 (n + 6) - 3).toNat

end

end A229735.P6102938932354664067

namespace A229735

/-- `A077042(A055999(n+6)-3)` -/
def P6102938932354664067.Spec : Prop :=
  ∀ n, P6102938932354664067.a n = A229735 n

end A229735

/-! ## A229735.P6325303911903419231

`A077042(A000217(n+9)-9)`
-/

namespace A229735.P6325303911903419231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000217 (n + 9) - 9).toNat

end

end A229735.P6325303911903419231

namespace A229735

/-- `A077042(A000217(n+9)-9)` -/
def P6325303911903419231.Spec : Prop :=
  ∀ n, P6325303911903419231.a n = A229735 n

end A229735

/-! ## A229735.P11883989130062822749

`A057427(n)*A163269(∑[n+3])`
-/

namespace A229735.P11883989130062822749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A163269 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229735.P11883989130062822749

namespace A229735

/-- `A057427(n)*A163269(∑[n+3])` -/
def P11883989130062822749.Spec : Prop :=
  ∀ n, P11883989130062822749.a n = A229735 n

end A229735

/-! ## A229735.P15287660421540718769

`A163269(∑[n+3])%(n-A028054(n))`
-/

namespace A229735.P15287660421540718769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163269 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n : ℤ) - A028054 n)

end

end A229735.P15287660421540718769

namespace A229735

/-- `A163269(∑[n+3])%(n-A028054(n))` -/
def P15287660421540718769.Spec : Prop :=
  ∀ n, P15287660421540718769.a n = A229735 n

end A229735

/-!
# A229736: Expansion of x^5*(2-5*x+3*x^2-x^3)/((1-x)^2*(1-2*x)^2*(1-3*x+x^2)).

The programs for A229736, the canonical program `A229736.P4427064332221869891` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229736 has offset 0).

The definition of A229736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^5-5x^6+3x^7-x^8)/(1-9x+32x^2-57x^3+53x^4-24x^5+4x^6))` (program `A229736.P4427064332221869891`, by `A229736.P4427064332221869891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229736.P4427064332221869891

`ogf((2x^5-5x^6+3x^7-x^8)/(1-9x+32x^2-57x^3+53x^4-24x^5+4x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229736

/-- `ogf((2x^5-5x^6+3x^7-x^8)/(1-9x+32x^2-57x^3+53x^4-24x^5+4x^6))` -/
def P4427064332221869891.Spec : Prop :=
  ∀ n, P4427064332221869891.a n = A229736 n

theorem P4427064332221869891.correct : P4427064332221869891.Spec := by
  intro n
  simp only [A229736]

end A229736

/-! ## A229736.P12052041601183945534

`∑[A283655(A124303(n))]`
-/

namespace A229736.P12052041601183945534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283655 (A124303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229736.P12052041601183945534

namespace A229736

/-- `∑[A283655(A124303(n))]` -/
def P12052041601183945534.Spec : Prop :=
  ∀ n, P12052041601183945534.a n = A229736 n

end A229736

/-! ## A229736.P11765123538108087439

`xor(1, A306242(A078431(n+1)))`
-/

namespace A229736.P11765123538108087439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A306242 (A078431 (n + 1)).toNat)

end

end A229736.P11765123538108087439

namespace A229736

/-- `xor(1, A306242(A078431(n+1)))` -/
def P11765123538108087439.Spec : Prop :=
  ∀ n, P11765123538108087439.a n = A229736 n

end A229736

/-! ## A229736.P8904743104095445734

`A001583(A149312(n))%A350456(n)`
-/

namespace A229736.P8904743104095445734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001583 (A149312 n).toNat) (A350456 n)

end

end A229736.P8904743104095445734

namespace A229736

/-- `A001583(A149312(n))%A350456(n)` -/
def P8904743104095445734.Spec : Prop :=
  ∀ n, P8904743104095445734.a n = A229736 n

end A229736

/-! ## A229736.P13567820426094306957

`A085857(A238351(2*n)-A010054(n))`
-/

namespace A229736.P13567820426094306957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 (A238351 (2 * n) - A010054 n).toNat

end

end A229736.P13567820426094306957

namespace A229736

/-- `A085857(A238351(2*n)-A010054(n))` -/
def P13567820426094306957.Spec : Prop :=
  ∀ n, P13567820426094306957.a n = A229736 n

end A229736

/-!
# A229737: G.f.: x^2*(1-x)*(1-4*x+4*x^2+x^3)/((1-2*x)^2*(1-3*x+x^2)).

The programs for A229737, there is no canonical definition to state claims against.
-/

/-! ## A229737.P2766943079160836225

`A008651(xor(5, A002714(n)))`
-/

namespace A229737.P2766943079160836225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.xor 5 (A002714 n)).toNat

end

end A229737.P2766943079160836225

/-! ## A229737.P3304872502666686156

`A033182(xor(5, A002714(n)))`
-/

namespace A229737.P3304872502666686156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.xor 5 (A002714 n)).toNat

end

end A229737.P3304872502666686156

/-! ## A229737.P3834586950434528108

`∑[A265370(Δ[A319467(n)])]`
-/

namespace A229737.P3834586950434528108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229737.P3834586950434528108

/-! ## A229737.P127625352948087156

`A008651(A002714(n)+A000194(n))`
-/

namespace A229737.P127625352948087156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A002714 n + A000194 n).toNat

end

end A229737.P127625352948087156

/-! ## A229737.P15659443882239243424

`A008651(A022167(n)+A002714(n))`
-/

namespace A229737.P15659443882239243424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A022167 n + A002714 n).toNat

end

end A229737.P15659443882239243424

/-!
# A229738: a(n) = p^2*(p^2+2*p-1)/2, where p = prime(n).

The programs for A229738, the canonical program `A229738.P4184282467959124748` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229738 has offset 1).

The definition of A229738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229738.P4184282467959124748

`A000040(n+1)²*(A000040(n+1)²+2*A000040(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229738

/-- `A000040(n+1)²*(A000040(n+1)²+2*A000040(n+1)-1)/2` -/
def P4184282467959124748.Spec : Prop :=
  ∀ n, P4184282467959124748.a n = (A229738 (n + 1) : ℚ)

end A229738

/-! ## A229738.P13946067505961379834

`A138418(n+1)+A030078(n+1)`
-/

namespace A229738.P13946067505961379834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) + A030078 (n + 1)

end

end A229738.P13946067505961379834

namespace A229738

/-- `A138418(n+1)+A030078(n+1)` -/
def P13946067505961379834.Spec : Prop :=
  ∀ n, P13946067505961379834.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P6574417815510527074

`A030078(n+1)+A138402(n+1)/2`
-/

namespace A229738.P6574417815510527074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) + (A138402 (n + 1) : ℚ) / 2

end

end A229738.P6574417815510527074

namespace A229738

/-- `A030078(n+1)+A138402(n+1)/2` -/
def P6574417815510527074.Spec : Prop :=
  ∀ n, P6574417815510527074.a n = (A229738 (n + 1) : ℚ)

end A229738

/-! ## A229738.P13362442150862066639

`2*A034953(n+1)²-A001248(n+1)`
-/

namespace A229738.P13362442150862066639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034953 (n + 1) ^ 2 - A001248 (n + 1)

end

end A229738.P13362442150862066639

namespace A229738

/-- `2*A034953(n+1)²-A001248(n+1)` -/
def P13362442150862066639.Spec : Prop :=
  ∀ n, P13362442150862066639.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P8622156509406836929

`A030514(n+1)-2*A008837(n+1)²`
-/

namespace A229738.P8622156509406836929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - 2 * A008837 (n + 1) ^ 2

end

end A229738.P8622156509406836929

namespace A229738

/-- `A030514(n+1)-2*A008837(n+1)²` -/
def P8622156509406836929.Spec : Prop :=
  ∀ n, P8622156509406836929.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P14636987935761229358

`A036690(n+1)²/2-A001248(n+1)`
-/

namespace A229738.P14636987935761229358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) ^ 2 : ℚ) / 2 - (A001248 (n + 1) : ℚ)

end

end A229738.P14636987935761229358

namespace A229738

/-- `A036690(n+1)²/2-A001248(n+1)` -/
def P14636987935761229358.Spec : Prop :=
  ∀ n, P14636987935761229358.a n = (A229738 (n + 1) : ℚ)

end A229738

/-! ## A229738.P4515282853101294029

`A030514(n+1)-A036689(n+1)²/2`
-/

namespace A229738.P4515282853101294029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) : ℚ) - (A036689 (n + 1) ^ 2 : ℚ) / 2

end

end A229738.P4515282853101294029

namespace A229738

/-- `A030514(n+1)-A036689(n+1)²/2` -/
def P4515282853101294029.Spec : Prop :=
  ∀ n, P4515282853101294029.a n = (A229738 (n + 1) : ℚ)

end A229738

/-! ## A229738.P4375699516170905752

`(A036690(n+1)²-A079704(n+1))/2`
-/

namespace A229738.P4375699516170905752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) ^ 2 - A079704 (n + 1) : ℚ) / 2

end

end A229738.P4375699516170905752

namespace A229738

/-- `(A036690(n+1)²-A079704(n+1))/2` -/
def P4375699516170905752.Spec : Prop :=
  ∀ n, P4375699516170905752.a n = (A229738 (n + 1) : ℚ)

end A229738

/-! ## A229738.P6552280652124585037

`A030078(n+1)+C(A000040(n+1)², 2)`
-/

namespace A229738.P6552280652124585037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + (Nat.choose (A000040 (n + 1) ^ 2).toNat 2 : ℤ)

end

end A229738.P6552280652124585037

namespace A229738

/-- `A030078(n+1)+C(A000040(n+1)², 2)` -/
def P6552280652124585037.Spec : Prop :=
  ∀ n, P6552280652124585037.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P8785862202909025823

`A030078(n+1)+A138423(n+1)+A138416(n+1)`
-/

namespace A229738.P8785862202909025823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + (A138423 (n + 1) + A138416 (n + 1))

end

end A229738.P8785862202909025823

namespace A229738

/-- `A030078(n+1)+A138423(n+1)+A138416(n+1)` -/
def P8785862202909025823.Spec : Prop :=
  ∀ n, P8785862202909025823.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P2335733136812696791

`A030514(n+1)+A138416(n+1)-A138423(n+1)`
-/

namespace A229738.P2335733136812696791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) + (A138416 (n + 1) - A138423 (n + 1))

end

end A229738.P2335733136812696791

namespace A229738

/-- `A030514(n+1)+A138416(n+1)-A138423(n+1)` -/
def P2335733136812696791.Spec : Prop :=
  ∀ n, P2335733136812696791.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P11163115108224065374

`(A127918(n+1)+A001248(n+1))*A000040(n+1)`
-/

namespace A229738.P11163115108224065374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) + A001248 (n + 1)) * A000040 (n + 1)

end

end A229738.P11163115108224065374

namespace A229738

/-- `(A127918(n+1)+A001248(n+1))*A000040(n+1)` -/
def P11163115108224065374.Spec : Prop :=
  ∀ n, P11163115108224065374.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P340613682379347435

`A138418(n+1)+A000040(n+1)*A001248(n+1)`
-/

namespace A229738.P340613682379347435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) + A000040 (n + 1) * A001248 (n + 1)

end

end A229738.P340613682379347435

namespace A229738

/-- `A138418(n+1)+A000040(n+1)*A001248(n+1)` -/
def P340613682379347435.Spec : Prop :=
  ∀ n, P340613682379347435.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P7059876013995405789

`A138418(n+1)+A138460(n+1)/A138416(n+1)`
-/

namespace A229738.P7059876013995405789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) + (A138460 (n + 1) : ℚ) / (A138416 (n + 1) : ℚ)

end

end A229738.P7059876013995405789

namespace A229738

/-- `A138418(n+1)+A138460(n+1)/A138416(n+1)` -/
def P7059876013995405789.Spec : Prop :=
  ∀ n, P7059876013995405789.a n = (A229738 (n + 1) : ℚ)

end A229738

/-! ## A229738.P3100905023012300973

`A001248(n+1)²-A008837(n+1)*A036689(n+1)`
-/

namespace A229738.P3100905023012300973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 - A008837 (n + 1) * A036689 (n + 1)

end

end A229738.P3100905023012300973

namespace A229738

/-- `A001248(n+1)²-A008837(n+1)*A036689(n+1)` -/
def P3100905023012300973.Spec : Prop :=
  ∀ n, P3100905023012300973.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P4144101099750252181

`A229739(A024620(n+1))`
-/

namespace A229738.P4144101099750252181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229739 (A024620 (n + 1)).toNat

end

end A229738.P4144101099750252181

namespace A229738

/-- `A229739(A024620(n+1))` -/
def P4144101099750252181.Spec : Prop :=
  ∀ n, P4144101099750252181.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P12543710819107129699

`A255499(A000040(n+1))`
-/

namespace A229738.P12543710819107129699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (A000040 (n + 1)).toNat

end

end A229738.P12543710819107129699

namespace A229738

/-- `A255499(A000040(n+1))` -/
def P12543710819107129699.Spec : Prop :=
  ∀ n, P12543710819107129699.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P13839720190020553731

`A255499(A008578(n+2))`
-/

namespace A229738.P13839720190020553731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (A008578 (n + 2)).toNat

end

end A229738.P13839720190020553731

namespace A229738

/-- `A255499(A008578(n+2))` -/
def P13839720190020553731.Spec : Prop :=
  ∀ n, P13839720190020553731.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P2228736631180529334

`A255499(A182986(n+2))`
-/

namespace A229738.P2228736631180529334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (A182986 (n + 2)).toNat

end

end A229738.P2228736631180529334

namespace A229738

/-- `A255499(A182986(n+2))` -/
def P2228736631180529334.Spec : Prop :=
  ∀ n, P2228736631180529334.a n = A229738 (n + 1)

end A229738

/-! ## A229738.P12502859329133870955

`A255499(record[A006530(n+2)])`
-/

namespace A229738.P12502859329133870955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229738.P12502859329133870955

namespace A229738

/-- `A255499(record[A006530(n+2)])` -/
def P12502859329133870955.Spec : Prop :=
  ∀ n, P12502859329133870955.a n = A229738 (n + 1)

end A229738

/-!
# A229739: a(n) = q^2*(q^2+2*q-1)/2, where q = n-th prime power A000961(n).

The programs for A229739, the canonical program `A229739.P17412045617027735792` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229739 has offset 1).

The definition of A229739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229739.P17412045617027735792

`A255499(A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A229739

/-- `A255499(A000961(n+1))` -/
def P17412045617027735792.Spec : Prop :=
  ∀ n, P17412045617027735792.a n = A229739 (n + 1)

theorem P17412045617027735792.correct : P17412045617027735792.Spec := by
  intro n
  simp only [A229739, Nat.add_sub_cancel]

end A229739

/-! ## A229739.P8347092047989518799

`A255499(lt[A001221(n+1), 2]+1)`
-/

namespace A229739.P8347092047989518799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A229739.P8347092047989518799

namespace A229739

/-- `A255499(lt[A001221(n+1), 2]+1)` -/
def P8347092047989518799.Spec : Prop :=
  ∀ n, P8347092047989518799.a n = A229739 (n + 1)

end A229739

/-! ## A229739.P17285992435786037874

`record[A028233(n+1)*A127736(n+1)]`
-/

namespace A229739.P17285992435786037874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) * A127736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229739.P17285992435786037874

namespace A229739

/-- `record[A028233(n+1)*A127736(n+1)]` -/
def P17285992435786037874.Spec : Prop :=
  ∀ n, P17285992435786037874.a n = A229739 (n + 1)

end A229739

/-! ## A229739.P9754648254281934653

`record[A034699(n+1)*A127736(n+1)]`
-/

namespace A229739.P9754648254281934653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) * A127736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229739.P9754648254281934653

namespace A229739

/-- `record[A034699(n+1)*A127736(n+1)]` -/
def P9754648254281934653.Spec : Prop :=
  ∀ n, P9754648254281934653.a n = A229739 (n + 1)

end A229739

/-! ## A229739.P17912579181648087474

`filter[A255499(n), A182067(#)]`
-/

namespace A229739.P17912579181648087474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A229739.P17912579181648087474

namespace A229739

/-- `filter[A255499(n), A182067(#)]` -/
def P17912579181648087474.Spec : Prop :=
  ∀ n, P17912579181648087474.a n = A229739 (n + 1)

end A229739

/-!
# A229740: a(n) = q^9/6+5*q^8/6+2*q^7/3-q^6/6-5*q^5/6+q^4/3 where q = n-th prime power A000961(n).

The programs for A229740, the canonical program `A229740.P7271951831427761893` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229740 has offset 1).

The definition of A229740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229740.P7271951831427761893

`A255501(A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A229740

/-- `A255501(A000961(n+1))` -/
def P7271951831427761893.Spec : Prop :=
  ∀ n, P7271951831427761893.a n = A229740 (n + 1)

theorem P7271951831427761893.correct : P7271951831427761893.Spec := by
  intro n
  simp only [A229740, Nat.add_sub_cancel]

end A229740

/-! ## A229740.P17302667585781814658

`A255501(record[A034699(n+1)])`
-/

namespace A229740.P17302667585781814658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229740.P17302667585781814658

namespace A229740

/-- `A255501(record[A034699(n+1)])` -/
def P17302667585781814658.Spec : Prop :=
  ∀ n, P17302667585781814658.a n = A229740 (n + 1)

end A229740

/-! ## A229740.P8004788957694055406

`A255501(record[A063973(n+1)])`
-/

namespace A229740.P8004788957694055406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229740.P8004788957694055406

namespace A229740

/-- `A255501(record[A063973(n+1)])` -/
def P8004788957694055406.Spec : Prop :=
  ∀ n, P8004788957694055406.a n = A229740 (n + 1)

end A229740

/-! ## A229740.P18271810255009741640

`A255501(A130091(n+1)%A089412(n+2))`
-/

namespace A229740.P18271810255009741640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (Int.tmod (A130091 (n + 1)) (A089412 (n + 2))).toNat

end

end A229740.P18271810255009741640

namespace A229740

/-- `A255501(A130091(n+1)%A089412(n+2))` -/
def P18271810255009741640.Spec : Prop :=
  ∀ n, P18271810255009741640.a n = A229740 (n + 1)

end A229740

/-!
# A229741: a(0)=1; thereafter a(n) = n! + Sum_{i=0..n-1} a(i)*a(n-1-i).

The programs for A229741, there is no canonical definition to state claims against.
-/

/-! ## A229741.P10258980219434131069

`∑[A320924(A000110(n))]`
-/

namespace A229741.P10258980219434131069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (A000110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229741.P10258980219434131069

/-! ## A229741.P13660769659824271643

`∑[A320924(A056272(n))]`
-/

namespace A229741.P13660769659824271643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (A056272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229741.P13660769659824271643

/-!
# A229742: a(n) = A071585(n) - A071766(n).

The programs for A229742, the canonical program `A229742.P11809137219085310732` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229742 has offset 0).

The definition of A229742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071585, A071766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229742.P11809137219085310732

`A071585(n)-A071766(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A229742

/-- `A071585(n)-A071766(n)` -/
def P11809137219085310732.Spec : Prop :=
  ∀ n, P11809137219085310732.a n = A229742 n

theorem P11809137219085310732.correct : P11809137219085310732.Spec := by
  intro n
  simp only [A229742]

end A229742

/-! ## A229742.P13958671985573986851

`2*A071585(n)-A086593(n+1)`
-/

namespace A229742.P13958671985573986851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071585 n - A086593 (n + 1)

end

end A229742.P13958671985573986851

namespace A229742

/-- `2*A071585(n)-A086593(n+1)` -/
def P13958671985573986851.Spec : Prop :=
  ∀ n, P13958671985573986851.a n = A229742 n

end A229742

/-! ## A229742.P8082685372678899065

`A086593(n+1)-2*A071766(n)`
-/

namespace A229742.P8082685372678899065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 1) - 2 * A071766 n

end

end A229742.P8082685372678899065

namespace A229742

/-- `A086593(n+1)-2*A071766(n)` -/
def P8082685372678899065.Spec : Prop :=
  ∀ n, P8082685372678899065.a n = A229742 n

end A229742

/-! ## A229742.P5498598117946993972

`A238837(A153151(n)+1)`
-/

namespace A229742.P5498598117946993972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238837 (A153151 n + 1).toNat

end

end A229742.P5498598117946993972

namespace A229742

/-- `A238837(A153151(n)+1)` -/
def P5498598117946993972.Spec : Prop :=
  ∀ n, P5498598117946993972.a n = A229742 n

end A229742

/-! ## A229742.P6716562851747142991

`A071766(A063946(n))%(n+1)`
-/

namespace A229742.P6716562851747142991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071766 (A063946 n).toNat) (n + 1 : ℤ)

end

end A229742.P6716562851747142991

namespace A229742

/-- `A071766(A063946(n))%(n+1)` -/
def P6716562851747142991.Spec : Prop :=
  ∀ n, P6716562851747142991.a n = A229742 n

end A229742

/-! ## A229742.P4863073706938663226

`A007305(A066194(n+1))%(n+1)`
-/

namespace A229742.P4863073706938663226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007305 (A066194 (n + 1)).toNat) (n + 1 : ℤ)

end

end A229742.P4863073706938663226

namespace A229742

/-- `A007305(A066194(n+1))%(n+1)` -/
def P4863073706938663226.Spec : Prop :=
  ∀ n, P4863073706938663226.a n = A229742 n

end A229742

/-! ## A229742.P8833315824750190733

`A093875(Δ[n²])-A071766(n)`
-/

namespace A229742.P8833315824750190733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A071766 n

end

end A229742.P8833315824750190733

namespace A229742

/-- `A093875(Δ[n²])-A071766(n)` -/
def P8833315824750190733.Spec : Prop :=
  ∀ n, P8833315824750190733.a n = A229742 n

end A229742

/-! ## A229742.P9917935752528426788

`A238837(A123108(2*n))+char[2^n]`
-/

namespace A229742.P9917935752528426788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238837 (A123108 (2 * n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A229742.P9917935752528426788

namespace A229742

/-- `A238837(A123108(2*n))+char[2^n]` -/
def P9917935752528426788.Spec : Prop :=
  ∀ n, P9917935752528426788.a n = A229742 n

end A229742

/-! ## A229742.P14316532470724146146

`A174980(2*A233279(n))`
-/

namespace A229742.P14316532470724146146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (2 * A233279 n).toNat

end

end A229742.P14316532470724146146

namespace A229742

/-- `A174980(2*A233279(n))` -/
def P14316532470724146146.Spec : Prop :=
  ∀ n, P14316532470724146146.a n = A229742 n

end A229742

/-! ## A229742.P7746769648735791693

`A057432(A268716(n))%(n+1)`
-/

namespace A229742.P7746769648735791693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057432 (A268716 n).toNat) (n + 1 : ℤ)

end

end A229742.P7746769648735791693

namespace A229742

/-- `A057432(A268716(n))%(n+1)` -/
def P7746769648735791693.Spec : Prop :=
  ∀ n, P7746769648735791693.a n = A229742 n

end A229742

/-!
# A229744: Values of records in A096303.

The programs for A229744, there is no canonical definition to state claims against.
-/

/-! ## A229744.P8069288883313785171

`record[A096303(n+1)]`
-/

namespace A229744.P8069288883313785171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229744.P8069288883313785171

/-! ## A229744.P14426790958085177688

`A096303(A229743(n+1))`
-/

namespace A229744.P14426790958085177688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096303 (A229743 (n + 1)).toNat

end

end A229744.P14426790958085177688

/-!
# A229745: a(n) = wt(n+wt(n))-wt(n), where wt(n) is the binary weight of n, A000120(n).

The programs for A229745, the canonical program `A229745.P7538036210165215942` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229745 has offset 0).

The definition of A229745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229745.P7538036210165215942

`A000120(n+A000120(n))-A000120(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229745

/-- `A000120(n+A000120(n))-A000120(n)` -/
def P7538036210165215942.Spec : Prop :=
  ∀ n, P7538036210165215942.a n = A229745 n

theorem P7538036210165215942.correct : P7538036210165215942.Spec := by
  intro n
  simp only [A229745]

end A229745

/-! ## A229745.P14115202747241148810

`n-A011371(A092391(n))`
-/

namespace A229745.P14115202747241148810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A092391 n).toNat

end

end A229745.P14115202747241148810

namespace A229745

/-- `n-A011371(A092391(n))` -/
def P14115202747241148810.Spec : Prop :=
  ∀ n, P14115202747241148810.a n = A229745 n

end A229745

/-! ## A229745.P16837505506542376340

`n-A011371(A000120(n)+n)`
-/

namespace A229745.P16837505506542376340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A000120 n + (n : ℤ)).toNat

end

end A229745.P16837505506542376340

namespace A229745

/-- `n-A011371(A000120(n)+n)` -/
def P16837505506542376340.Spec : Prop :=
  ∀ n, P16837505506542376340.a n = A229745 n

end A229745

/-! ## A229745.P11959327288196536185

`A000120(A092391(n))-A000120(n)`
-/

namespace A229745.P11959327288196536185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A092391 n).toNat - A000120 n

end

end A229745.P11959327288196536185

namespace A229745

/-- `A000120(A092391(n))-A000120(n)` -/
def P11959327288196536185.Spec : Prop :=
  ∀ n, P11959327288196536185.a n = A229745 n

end A229745

/-! ## A229745.P12308939757018962800

`n-A011371(A004277(n)-A011371(n))`
-/

namespace A229745.P12308939757018962800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A004277 n - A011371 n).toNat

end

end A229745.P12308939757018962800

namespace A229745

/-- `n-A011371(A004277(n)-A011371(n))` -/
def P12308939757018962800.Spec : Prop :=
  ∀ n, P12308939757018962800.a n = A229745 n

end A229745

/-! ## A229745.P8915079249259312221

`n-A011371(A005843(n)-A011371(n))`
-/

namespace A229745.P8915079249259312221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A005843 n - A011371 n).toNat

end

end A229745.P8915079249259312221

namespace A229745

/-- `n-A011371(A005843(n)-A011371(n))` -/
def P8915079249259312221.Spec : Prop :=
  ∀ n, P8915079249259312221.a n = A229745 n

end A229745

/-! ## A229745.P15560240686525059630

`A063787(A063787(n+1)+n)-A063787(n+1)`
-/

namespace A229745.P15560240686525059630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A063787 (n + 1) + (n : ℤ)).toNat - A063787 (n + 1)

end

end A229745.P15560240686525059630

namespace A229745

/-- `A063787(A063787(n+1)+n)-A063787(n+1)` -/
def P15560240686525059630.Spec : Prop :=
  ∀ n, P15560240686525059630.a n = A229745 n

end A229745

/-!
# A229747: Largest prime factor of 4^(2*n+1)+1.

The programs for A229747, there is no canonical definition to state claims against.
-/

/-! ## A229747.P17554055302768468262

`A274903(Δ[n²])`
-/

namespace A229747.P17554055302768468262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229747.P17554055302768468262

/-! ## A229747.P9780870288100111731

`or(1, A274903(A005408(n)))`
-/

namespace A229747.P9780870288100111731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274903 (A005408 n).toNat)

end

end A229747.P9780870288100111731

/-! ## A229747.P6058533440149201139

`or(1, A274903(A005843(n)+1))`
-/

namespace A229747.P6058533440149201139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274903 (A005843 n + 1).toNat)

end

end A229747.P6058533440149201139

/-! ## A229747.P8705250163163347959

`or(1, A274903(or(1, A005843(n))))`
-/

namespace A229747.P8705250163163347959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274903 (Int.lor 1 (A005843 n)).toNat)

end

end A229747.P8705250163163347959

/-! ## A229747.P17352740156506212354

`A274903(A005408(n))%A087452(n+2)`
-/

namespace A229747.P17352740156506212354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274903 (A005408 n).toNat) (A087452 (n + 2))

end

end A229747.P17352740156506212354

/-! ## A229747.P10291065650885052355

`A052552(2*n+1)*A274903(A005408(n))`
-/

namespace A229747.P10291065650885052355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * n + 1) * A274903 (A005408 n).toNat

end

end A229747.P10291065650885052355

/-! ## A229747.P15842641350533177005

`A002587(4*n+2)`
-/

namespace A229747.P15842641350533177005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (4 * n + 2)

end

end A229747.P15842641350533177005

/-! ## A229747.P12350857349077098729

`or(1, A002587(A016825(n)))`
-/

namespace A229747.P12350857349077098729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002587 (A016825 n).toNat)

end

end A229747.P12350857349077098729

/-!
# A229748: Number of defective 4-colorings of an n X n 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229748, there is no canonical definition to state claims against.
-/

/-! ## A229748.P15104313945844297186

`A229755((n+1)²+n²)`
-/

namespace A229748.P15104313945844297186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 ((n + 1) ^ 2 + n ^ 2)

end

end A229748.P15104313945844297186

/-! ## A229748.P9665365810926697354

`record[A077606(n+1)*A229755(n+1)]`
-/

namespace A229748.P9665365810926697354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A229755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229748.P9665365810926697354

/-! ## A229748.P4204738119667564546

`A229755(A001844(n))+A025438(n)`
-/

namespace A229748.P4204738119667564546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A001844 n).toNat + A025438 n

end

end A229748.P4204738119667564546

/-! ## A229748.P18177975655010386010

`A033999(2*n)*A229755(A001844(n))`
-/

namespace A229748.P18177975655010386010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A229755 (A001844 n).toNat

end

end A229748.P18177975655010386010

/-! ## A229748.P10376044070372117511

`A014963(A044296(n+1))*A229755(A001844(n))`
-/

namespace A229748.P10376044070372117511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A044296 (n + 1)).toNat * A229755 (A001844 n).toNat

end

end A229748.P10376044070372117511

/-!
# A229749: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229749, there is no canonical definition to state claims against.
-/

/-! ## A229749.P10789242821101972561

`A229755(∑[n+1]+2)`
-/

namespace A229749.P10789242821101972561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229749.P10789242821101972561

/-! ## A229749.P16771376180512339205

`record[A129186(n)*A229755(n+1)]`
-/

namespace A229749.P16771376180512339205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A229755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229749.P16771376180512339205

/-! ## A229749.P16430178579393370299

`record[and(A167374(n), A229755(n+1))]`
-/

namespace A229749.P16430178579393370299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A229755 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229749.P16430178579393370299

/-! ## A229749.P11684055321027216442

`record[A010054(n+2)*A229755(n+1)]`
-/

namespace A229749.P11684055321027216442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A229755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229749.P11684055321027216442

/-! ## A229749.P14118063516397235989

`A229755(A000096(n+1))%A332139(n)`
-/

namespace A229749.P14118063516397235989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229755 (A000096 (n + 1)).toNat) (A332139 n)

end

end A229749.P14118063516397235989

/-!
# A229750: Number of defective 4-colorings of an n X 3 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229750, there is no canonical definition to state claims against.
-/

/-! ## A229750.P2955834821079273295

`A229755(∑[n+2]+4)`
-/

namespace A229750.P2955834821079273295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229750.P2955834821079273295

/-! ## A229750.P14283879034837604803

`A229755(A167614(n+1))%(9^(n+1))`
-/

namespace A229750.P14283879034837604803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229755 (A167614 (n + 1)).toNat) (9 ^ (n + 1) : ℤ)

end

end A229750.P14283879034837604803

/-! ## A229750.P18219042018566055651

`or(A000007(n), A229755(A167614(n+1)))`
-/

namespace A229750.P18219042018566055651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A229755 (A167614 (n + 1)).toNat)

end

end A229750.P18219042018566055651

/-! ## A229750.P1293501395049100894

`A014963(9*n+6)*A229755(A167614(n+1))`
-/

namespace A229750.P1293501395049100894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A229755 (A167614 (n + 1)).toNat

end

end A229750.P1293501395049100894

/-! ## A229750.P3467884995501040306

`A229755(A167614(n+1))/A014963(lcm(12, n+1))`
-/

namespace A229750.P3467884995501040306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229755 (A167614 (n + 1)).toNat : ℚ) / (A014963 (Nat.lcm 12 (n + 1)) : ℚ)

end

end A229750.P3467884995501040306

/-!
# A229751: Number of defective 4-colorings of an n X 4 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229751, there is no canonical definition to state claims against.
-/

/-! ## A229751.P9122351558950732289

`A229755(A052905(n)+9)`
-/

namespace A229751.P9122351558950732289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A052905 n + 9).toNat

end

end A229751.P9122351558950732289

/-! ## A229751.P2964197305989203144

`A229755(A055999(n)+10)`
-/

namespace A229751.P2964197305989203144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A055999 n + 10).toNat

end

end A229751.P2964197305989203144

/-! ## A229751.P15257128588646236631

`A229755(A167614(n+2)+1)`
-/

namespace A229751.P15257128588646236631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A167614 (n + 2) + 1).toNat

end

end A229751.P15257128588646236631

/-! ## A229751.P3651262677752239281

`A229755(Δ[A264443(n)-n²])`
-/

namespace A229751.P3651262677752239281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (f1 (n + 1) - f1 n).toNat

end

end A229751.P3651262677752239281

/-! ## A229751.P5743893159967823836

`A229755(A141214(n+1))`
-/

namespace A229751.P5743893159967823836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A141214 (n + 1)).toNat

end

end A229751.P5743893159967823836

/-!
# A229752: Number of defective 4-colorings of an n X 5 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229752, there is no canonical definition to state claims against.
-/

/-! ## A229752.P11938334428978676876

`A229755(A167499(n+3))`
-/

namespace A229752.P11938334428978676876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A167499 (n + 3)).toNat

end

end A229752.P11938334428978676876

/-! ## A229752.P11367490244581846590

`A229755(A000124(n+4)+4)`
-/

namespace A229752.P11367490244581846590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A000124 (n + 4) + 4).toNat

end

end A229752.P11367490244581846590

/-! ## A229752.P5123535433178086322

`A229755(Δ[A224039(n+2)]-1)`
-/

namespace A229752.P5123535433178086322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (f1 (n + 1) - f1 n - 1).toNat

end

end A229752.P5123535433178086322

/-! ## A229752.P15789736732869656023

`A229755(A000096(n+4)-(n-1))`
-/

namespace A229752.P15789736732869656023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A229752.P15789736732869656023

/-! ## A229752.P3862429423348341575

`A229755(A038722(Δ[A264443(n)]))`
-/

namespace A229752.P3862429423348341575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A229752.P3862429423348341575

/-!
# A229753: Number of defective 4-colorings of an n X 6 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229753, there is no canonical definition to state claims against.
-/

/-! ## A229753.P3961272752553826837

`A229755(C(n+7, 2)-n)`
-/

namespace A229753.P3961272752553826837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (Nat.choose (n + 7) 2 - n)

end

end A229753.P3961272752553826837

/-! ## A229753.P16053622090913487713

`A229755(Δ[A224039(n+3)])`
-/

namespace A229753.P16053622090913487713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (f1 (n + 1) - f1 n).toNat

end

end A229753.P16053622090913487713

/-! ## A229753.P7090627206513585991

`A229755(A374007(n+1))`
-/

namespace A229753.P7090627206513585991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A374007 (n + 1)).toNat

end

end A229753.P7090627206513585991

/-! ## A229753.P16119558033840350022

`A229755(Δ[Δ[A006504(n+1)]])`
-/

namespace A229753.P16119558033840350022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (f1 (n + 1) - f1 n).toNat

end

end A229753.P16119558033840350022

/-! ## A229753.P6216533975883983795

`A229755(Δ[A264443(n+1)]-1)`
-/

namespace A229753.P6216533975883983795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (f1 (n + 1) - f1 n - 1).toNat

end

end A229753.P6216533975883983795

/-!
# A229754: Number of defective 4-colorings of an n X 7 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229754, there is no canonical definition to state claims against.
-/

/-! ## A229754.P9132149210212944311

`A229755(A253145(n+5)+7)`
-/

namespace A229754.P9132149210212944311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A253145 (n + 5) + 7).toNat

end

end A229754.P9132149210212944311

/-! ## A229754.P15709773794609919920

`A229755(A000096(n+7)-A005818(n+2))`
-/

namespace A229754.P15709773794609919920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A000096 (n + 7) - A005818 (n + 2)).toNat

end

end A229754.P15709773794609919920

/-! ## A229754.P18136436072531342205

`A229755(A005818(n+8)+A000096(n+3))`
-/

namespace A229754.P18136436072531342205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A005818 (n + 8) + A000096 (n + 3)).toNat

end

end A229754.P18136436072531342205

/-! ## A229754.P7992697332916975201

`A229755(A374008(n+1))`
-/

namespace A229754.P7992697332916975201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A374008 (n + 1)).toNat

end

end A229754.P7992697332916975201

/-!
# A229755: T(n,k) = number of defective 4-colorings of an n X k 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229755, there is no canonical definition to state claims against.
-/

/-! ## A229755.P15597829366165883847

`A229672(A032557(n+1))-A004197(n)`
-/

namespace A229755.P15597829366165883847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A032557 (n + 1)).toNat - A004197 n

end

end A229755.P15597829366165883847

/-! ## A229755.P4371537373303144200

`A128592(n)*A283682(A128528(n+1))`
-/

namespace A229755.P4371537373303144200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128592 n * A283682 (A128528 (n + 1)).toNat

end

end A229755.P4371537373303144200

/-! ## A229755.P13797920678437818560

`A079955(A295051(n+1))%A367770(n)`
-/

namespace A229755.P13797920678437818560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079955 (A295051 (n + 1)).toNat) (A367770 n)

end

end A229755.P13797920678437818560

/-! ## A229755.P3284492960792393510

`A229672(A032557(n+1))-A320364(n+1)`
-/

namespace A229755.P3284492960792393510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A032557 (n + 1)).toNat - A320364 (n + 1)

end

end A229755.P3284492960792393510

/-!
# A229757: Numbers m such that no convex hexagon exists that can be dissected into m congruent equilateral triangles.

The programs for A229757, there is no canonical definition to state claims against.
-/

/-! ## A229757.P9523598304819649633

`lt[A096608(A286154(n+1)), A263633(2*n+1)]`
-/

namespace A229757.P9523598304819649633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (A286154 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263633 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229757.P9523598304819649633

/-! ## A229757.P11511664473398090491

`A107750(record[A347762(n)])`
-/

namespace A229757.P11511664473398090491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229757.P11511664473398090491

/-! ## A229757.P6990730733918652267

`A187681(record[A347762(n)])`
-/

namespace A229757.P6990730733918652267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229757.P6990730733918652267

/-! ## A229757.P16453970930294867124

`∑[A095691(A061551(n+1))]`
-/

namespace A229757.P16453970930294867124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (A061551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229757.P16453970930294867124

/-! ## A229757.P16829345193930396770

`∑[A115583(A236912(n+2))]`
-/

namespace A229757.P16829345193930396770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A236912 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229757.P16829345193930396770

/-!
# A229758: Triangle T(n,k) = A007953(n) * A007953(k) - A007953(n*k) with 1 <= k <= n.

The programs for A229758, the canonical program `A229758.P9160867256716329137` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229758 has offset 1).

The definition of A229758 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229758.P9160867256716329137

`A007953(row(n)+1)*A007953(col(n)+1)-A007953((row(n)+1)*(col(n)+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229758

/-- `A007953(row(n)+1)*A007953(col(n)+1)-A007953((row(n)+1)*(col(n)+1))` -/
def P9160867256716329137.Spec : Prop :=
  ∀ n, P9160867256716329137.a n = A229758 (n + 1)

theorem P9160867256716329137.correct : P9160867256716329137.Spec := by
  intro n
  simp only [A229758, Nat.add_sub_cancel]

end A229758

/-! ## A229758.P1445311576291651128

`A066568(A075362(n+1))%∏[A000124(n)]`
-/

namespace A229758.P1445311576291651128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066568 (A075362 (n + 1)).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A229758.P1445311576291651128

namespace A229758

/-- `A066568(A075362(n+1))%∏[A000124(n)]` -/
def P1445311576291651128.Spec : Prop :=
  ∀ n, P1445311576291651128.a n = A229758 (n + 1)

end A229758

/-! ## A229758.P11130947423754026261

`A066568(A075362(n+1))^A000041(A198954(n))`
-/

namespace A229758.P11130947423754026261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066568 (A075362 (n + 1)).toNat : ℚ) ^ (A000041 (A198954 n).toNat : ℤ)

end

end A229758.P11130947423754026261

namespace A229758

/-- `A066568(A075362(n+1))^A000041(A198954(n))` -/
def P11130947423754026261.Spec : Prop :=
  ∀ n, P11130947423754026261.a n = (A229758 (n + 1) : ℚ)

end A229758

/-! ## A229758.P14445708235496230189

`A066568(A075362(n+1))+A000007(A005686(n+3))`
-/

namespace A229758.P14445708235496230189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A075362 (n + 1)).toNat + A000007 (A005686 (n + 3)).toNat

end

end A229758.P14445708235496230189

namespace A229758

/-- `A066568(A075362(n+1))+A000007(A005686(n+3))` -/
def P14445708235496230189.Spec : Prop :=
  ∀ n, P14445708235496230189.a n = A229758 (n + 1)

end A229758

/-!
# A229759: Decimal expansion of (25-10*sqrt(5))/2.

The programs for A229759, there is no canonical definition to state claims against.
-/

/-! ## A229759.P13532276900630244345

`A132338(n)%(11%A179893(n+2))`
-/

namespace A229759.P13532276900630244345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132338 n) (Int.tmod 11 (A179893 (n + 2)))

end

end A229759.P13532276900630244345

/-! ## A229759.P15375895779436969794

`(A307508(n+1)+A132338(n))%A307508(n+1)`
-/

namespace A229759.P15375895779436969794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307508 (n + 1) + A132338 n) (A307508 (n + 1))

end

end A229759.P15375895779436969794

/-! ## A229759.P6501922542823524876

`A094874(n+1-floor(3/(n+2)))`
-/

namespace A229759.P6501922542823524876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (((n + 1 : ℤ) - ⌊3 / (n + 2 : ℚ)⌋).toNat + 1)

end

end A229759.P6501922542823524876

/-! ## A229759.P2145108409807426535

`A109866(lcm(n+2, A038404(C(2, n))))`
-/

namespace A229759.P2145108409807426535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (Int.lcm (n + 2 : ℤ) (A038404 (Nat.choose 2 n)))

end

end A229759.P2145108409807426535

/-! ## A229759.P11554396595453336743

`∑[Δ[A079585(n)]%A000051(n)]`
-/

namespace A229759.P11554396595453336743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229759.P11554396595453336743

/-! ## A229759.P14201102874436528782

`A255308(A005476(n))+A132338(A233583(n+1))`
-/

namespace A229759.P14201102874436528782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (A005476 n).toNat + A132338 (A233583 (n + 1)).toNat

end

end A229759.P14201102874436528782

/-! ## A229759.P187300858341623011

`a(n-1)-A095943(n+1)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A229759.P187300858341623011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 1) - A095943 (n + 1)

end

end A229759.P187300858341623011

/-!
# A229760: Decimal expansion of 25 - 10*sqrt(5).

The programs for A229760, there is no canonical definition to state claims against.
-/

/-! ## A229760.P8179566032367293391

`a(n-1)-Δ[A002163(n)]` with `a(0)=2, a(1)=6`
-/

namespace A229760.P8179566032367293391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A229760.P8179566032367293391

/-! ## A229760.P18373312165416663188

`A244847(n)-Δ[A002163(n)]`
-/

namespace A229760.P18373312165416663188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 n - (f1 (n + 1) - f1 n)

end

end A229760.P18373312165416663188

/-! ## A229760.P4186864671557396888

`A040020(n)-(A002163(n+1)+1)`
-/

namespace A229760.P4186864671557396888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n - (A002163 (n + 1 + 1) + 1)

end

end A229760.P4186864671557396888

/-! ## A229760.P8254158062357264562

`A187426(n)+A187799(n)-A187798(n)`
-/

namespace A229760.P8254158062357264562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187426 (n + 1) + (A187799 (n + 1) - A187798 n)

end

end A229760.P8254158062357264562

/-! ## A229760.P12841752371268768059

`A187799(n-(A187426(n)-A187798(n)))`
-/

namespace A229760.P12841752371268768059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187799 (((n : ℤ) - (A187426 (n + 1) - A187798 n)).toNat + 1)

end

end A229760.P12841752371268768059

/-! ## A229760.P3744819059935843151

`a(n-1)-Δ[A098317(n)]` with `a(0)=2, a(1)=6`
-/

namespace A229760.P3744819059935843151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A229760.P3744819059935843151

/-! ## A229760.P14185633010961216443

`A244847(A020761(n)+1+n)`
-/

namespace A229760.P14185633010961216443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 (A020761 n + 1 + (n : ℤ)).toNat

end

end A229760.P14185633010961216443

/-! ## A229760.P1634125842922396438

`A244847(1-A000007(n)+n)`
-/

namespace A229760.P1634125842922396438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 (1 - A000007 n + (n : ℤ)).toNat

end

end A229760.P1634125842922396438

/-! ## A229760.P5675716551855196782

`A244847(1-(A000007(n)-n))`
-/

namespace A229760.P5675716551855196782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 (1 - (A000007 n - (n : ℤ))).toNat

end

end A229760.P5675716551855196782

/-! ## A229760.P1291026371069042187

`A244847(n+1)%A040020(n)`
-/

namespace A229760.P1291026371069042187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244847 (n + 1)) (A040020 n)

end

end A229760.P1291026371069042187

/-! ## A229760.P2282876460419366569

`A244847(xor(1, A000007(n))+n)`
-/

namespace A229760.P2282876460419366569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 (Int.xor 1 (A000007 n) + (n : ℤ)).toNat

end

end A229760.P2282876460419366569

/-! ## A229760.P2418397838864891949

`A040020(n)-(A098317(n+1)+1)`
-/

namespace A229760.P2418397838864891949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n - (A098317 (n + 1 + 1) + 1)

end

end A229760.P2418397838864891949

/-! ## A229760.P14489075581128959506

`A040020(n)-(A134972(n+1)+1)`
-/

namespace A229760.P14489075581128959506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n - (A134972 (n + 1 + 1) + 1)

end

end A229760.P14489075581128959506

/-! ## A229760.P13150822523995994829

`A040020(2*n)+A244847(n+1)-A040020(n+1)`
-/

namespace A229760.P13150822523995994829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 (2 * n) + (A244847 (n + 1) - A040020 (n + 1))

end

end A229760.P13150822523995994829

/-! ## A229760.P12653834180594431583

`A001158(A054897(a(n-1))!+1)-A242671(n+1)` with `a(0)=2`
-/

namespace A229760.P12653834180594431583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001158 (Nat.factorial (A054897 (a (n - 1)).toNat).toNat + 1) - A242671 (n + 1)

end

end A229760.P12653834180594431583

/-! ## A229760.P17003438303676354341

`A002163(2*n)+A244847(2*n)-A002163(n+1)`
-/

namespace A229760.P17003438303676354341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (2 * n + 1) + (A244847 (2 * n) - A002163 (n + 1 + 1))

end

end A229760.P17003438303676354341

/-!
# A229761: Zeroless numbers n such that n and n - (product of digits of n) are both palindromes.

The programs for A229761, there is no canonical definition to state claims against.
-/

/-! ## A229761.P1974798706849729553

`∩[A193407(n+1), A229547(n+1)]`
-/

namespace A229761.P1974798706849729553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229761.P1974798706849729553

/-! ## A229761.P11072049113452692035

`A085134(a(n-1)+1)` with `a(0)=1`
-/

namespace A229761.P11072049113452692035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085134 (a (n - 1) + 1).toNat

end

end A229761.P11072049113452692035

/-! ## A229761.P4874117156037970302

`A085134(2*n-∑{digits}[∑{digits}[n, 10^#]+1, 1-#])`
-/

namespace A229761.P4874117156037970302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085134 ((2 * n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - (x : ℤ)).sum).toNat

end

end A229761.P4874117156037970302

/-! ## A229761.P13051620235347027577

`A178864(A062388(n+1))`
-/

namespace A229761.P13051620235347027577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (A062388 (n + 1)).toNat

end

end A229761.P13051620235347027577

/-! ## A229761.P1235369002915663492

`A178864(A070244(n+1))`
-/

namespace A229761.P1235369002915663492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (A070244 (n + 1)).toNat

end

end A229761.P1235369002915663492

/-!
# A229762: a(n) = (n XOR floor(n/2)) AND floor(n/2), where AND and XOR are bitwise logical operators.

The programs for A229762, the canonical program `A229762.P17564724992629752504` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229762 has offset 0).

The definition of A229762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229762.P17564724992629752504

`or(n, floor(n/2))-n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229762

/-- `or(n, floor(n/2))-n` -/
def P17564724992629752504.Spec : Prop :=
  ∀ n, P17564724992629752504.a n = A229762 n

theorem P17564724992629752504.correct : P17564724992629752504.Spec := by
  intro n
  simp only [A229762]

end A229762

/-! ## A229762.P3704714681566081689

`xor(n, or(n, floor(n/2)))`
-/

namespace A229762.P3704714681566081689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A229762.P3704714681566081689

namespace A229762

/-- `xor(n, or(n, floor(n/2)))` -/
def P3704714681566081689.Spec : Prop :=
  ∀ n, P3704714681566081689.a n = A229762 n

end A229762

/-! ## A229762.P3354112035016610552

`and(xor(n, -1), floor(n/2))`
-/

namespace A229762.P3354112035016610552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor (n : ℤ) (-1)) ⌊(n : ℚ) / 2⌋

end

end A229762.P3354112035016610552

namespace A229762

/-- `and(xor(n, -1), floor(n/2))` -/
def P3354112035016610552.Spec : Prop :=
  ∀ n, P3354112035016610552.a n = A229762 n

end A229762

/-! ## A229762.P13104198249017778756

`and(-(n+1), floor(n/2))`
-/

namespace A229762.P13104198249017778756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A229762.P13104198249017778756

namespace A229762

/-- `and(-(n+1), floor(n/2))` -/
def P13104198249017778756.Spec : Prop :=
  ∀ n, P13104198249017778756.a n = A229762 n

end A229762

/-! ## A229762.P9647806609681855402

`(n-and(n, Δ[n²]))/2`
-/

namespace A229762.P9647806609681855402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A229762.P9647806609681855402

namespace A229762

/-- `(n-and(n, Δ[n²]))/2` -/
def P9647806609681855402.Spec : Prop :=
  ∀ n, P9647806609681855402.a n = (A229762 n : ℚ)

end A229762

/-! ## A229762.P15793626895089073899

`and(n, -(2*(n+1)))/2`
-/

namespace A229762.P15793626895089073899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(2 * (n + 1) : ℤ)) : ℚ) / 2

end

end A229762.P15793626895089073899

namespace A229762

/-- `and(n, -(2*(n+1)))/2` -/
def P15793626895089073899.Spec : Prop :=
  ∀ n, P15793626895089073899.a n = (A229762 n : ℚ)

end A229762

/-! ## A229762.P6995236390958804226

`floor((n-and(n, 2*n))/2)`
-/

namespace A229762.P6995236390958804226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - (Nat.land n (2 * n) : ℤ) : ℚ) / 2⌋

end

end A229762.P6995236390958804226

namespace A229762

/-- `floor((n-and(n, 2*n))/2)` -/
def P6995236390958804226.Spec : Prop :=
  ∀ n, P6995236390958804226.a n = A229762 n

end A229762

/-! ## A229762.P17439865104458352764

`floor((xor(n, 2*n)-n)/4)`
-/

namespace A229762.P17439865104458352764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor n (2 * n) : ℤ) - (n : ℤ) : ℚ) / 4⌋

end

end A229762.P17439865104458352764

namespace A229762

/-- `floor((xor(n, 2*n)-n)/4)` -/
def P17439865104458352764.Spec : Prop :=
  ∀ n, P17439865104458352764.a n = A229762 n

end A229762

/-! ## A229762.P14815367382923282000

`floor(-(or(2*n, -n)/2))`
-/

namespace A229762.P14815367382923282000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.lor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2)⌋

end

end A229762.P14815367382923282000

namespace A229762

/-- `floor(-(or(2*n, -n)/2))` -/
def P14815367382923282000.Spec : Prop :=
  ∀ n, P14815367382923282000.a n = A229762 n

end A229762

/-! ## A229762.P11352779846890530955

`-ceil(or(2*n, -n)/2)`
-/

namespace A229762.P11352779846890530955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.lor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉

end

end A229762.P11352779846890530955

namespace A229762

/-- `-ceil(or(2*n, -n)/2)` -/
def P11352779846890530955.Spec : Prop :=
  ∀ n, P11352779846890530955.a n = A229762 n

end A229762

/-! ## A229762.P2474672773031960377

`xor(n, and(n, 2*n+1))/2`
-/

namespace A229762.P2474672773031960377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.land n (2 * n + 1)) : ℚ) / 2

end

end A229762.P2474672773031960377

namespace A229762

/-- `xor(n, and(n, 2*n+1))/2` -/
def P2474672773031960377.Spec : Prop :=
  ∀ n, P2474672773031960377.a n = (A229762 n : ℚ)

end A229762

/-! ## A229762.P1767717051909336741

`ceil((n-1-and(n, 2*n))/2)`
-/

namespace A229762.P1767717051909336741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ) : ℚ) / 2⌉

end

end A229762.P1767717051909336741

namespace A229762

/-- `ceil((n-1-and(n, 2*n))/2)` -/
def P1767717051909336741.Spec : Prop :=
  ∀ n, P1767717051909336741.a n = A229762 n

end A229762

/-! ## A229762.P3124470944073801865

`ceil(or(n-1, 2*n)/2-n)`
-/

namespace A229762.P3124470944073801865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2 - (n : ℚ)⌉

end

end A229762.P3124470944073801865

namespace A229762

/-- `ceil(or(n-1, 2*n)/2-n)` -/
def P3124470944073801865.Spec : Prop :=
  ∀ n, P3124470944073801865.a n = A229762 n

end A229762

/-! ## A229762.P8950657671890983841

`round((xor(n+1, 2*n)-n)/4)`
-/

namespace A229762.P8950657671890983841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor (n + 1) (2 * n) : ℤ) - (n : ℤ) : ℚ) / 4)

end

end A229762.P8950657671890983841

namespace A229762

/-- `round((xor(n+1, 2*n)-n)/4)` -/
def P8950657671890983841.Spec : Prop :=
  ∀ n, P8950657671890983841.a n = A229762 n

end A229762

/-! ## A229762.P12819453091424736011

`ceil((xor(n, 2*n)-(n+2))/4)`
-/

namespace A229762.P12819453091424736011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor n (2 * n) : ℤ) - (n + 2 : ℤ) : ℚ) / 4⌉

end

end A229762.P12819453091424736011

namespace A229762

/-- `ceil((xor(n, 2*n)-(n+2))/4)` -/
def P12819453091424736011.Spec : Prop :=
  ∀ n, P12819453091424736011.a n = A229762 n

end A229762

/-! ## A229762.P8505223647772057351

`(n-and(n, 2*n+1))*1/2`
-/

namespace A229762.P8505223647772057351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (2 * n + 1) : ℤ) : ℚ) * ((1 : ℚ) / 2)

end

end A229762.P8505223647772057351

namespace A229762

/-- `(n-and(n, 2*n+1))*1/2` -/
def P8505223647772057351.Spec : Prop :=
  ∀ n, P8505223647772057351.a n = (A229762 n : ℚ)

end A229762

/-! ## A229762.P15093364997153905412

`(xor(2*n+1, n+1)-n)/4`
-/

namespace A229762.P15093364997153905412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor (2 * n + 1) (n + 1) : ℤ) - (n : ℤ) : ℚ) / 4

end

end A229762.P15093364997153905412

namespace A229762

/-- `(xor(2*n+1, n+1)-n)/4` -/
def P15093364997153905412.Spec : Prop :=
  ∀ n, P15093364997153905412.a n = (A229762 n : ℚ)

end A229762

/-! ## A229762.P11188780046329976841

`round(or(n, 2*n+1)/2)-(n+1)`
-/

namespace A229762.P11188780046329976841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (2 * n + 1) : ℚ) / 2) - (n + 1 : ℤ)

end

end A229762.P11188780046329976841

namespace A229762

/-- `round(or(n, 2*n+1)/2)-(n+1)` -/
def P11188780046329976841.Spec : Prop :=
  ∀ n, P11188780046329976841.a n = A229762 n

end A229762

/-! ## A229762.P7970552191203226271

`(or(n, 2*n+1)-(2*n+1))/2`
-/

namespace A229762.P7970552191203226271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (2 * n + 1) : ℤ) - (2 * n + 1 : ℤ) : ℚ) / 2

end

end A229762.P7970552191203226271

namespace A229762

/-- `(or(n, 2*n+1)-(2*n+1))/2` -/
def P7970552191203226271.Spec : Prop :=
  ∀ n, P7970552191203226271.a n = (A229762 n : ℚ)

end A229762

/-! ## A229762.P16303447781554085493

`or(n, 2*n+1)%(2*n+1)/2`
-/

namespace A229762.P16303447781554085493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (2 * n + 1) % (2 * n + 1) : ℕ) : ℚ) / 2

end

end A229762.P16303447781554085493

namespace A229762

/-- `or(n, 2*n+1)%(2*n+1)/2` -/
def P16303447781554085493.Spec : Prop :=
  ∀ n, P16303447781554085493.a n = (A229762 n : ℚ)

end A229762

/-!
# A229763: a(n) = (2*n) XOR n AND n, where AND and XOR are bitwise logical operators.

The programs for A229763, the canonical program `A229763.P6803440725785154934` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229763 has offset 0).

The definition of A229763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229763.P6803440725785154934

`and(n, Δ[-n²])`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229763

/-- `and(n, Δ[-n²])` -/
def P6803440725785154934.Spec : Prop :=
  ∀ n, P6803440725785154934.a n = A229763 n

theorem P6803440725785154934.correct : P6803440725785154934.Spec := by
  intro n
  simp only [A229763]

end A229763

/-! ## A229763.P12199880269472597957

`n-and(n, 2*n)`
-/

namespace A229763.P12199880269472597957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

end

end A229763.P12199880269472597957

namespace A229763

/-- `n-and(n, 2*n)` -/
def P12199880269472597957.Spec : Prop :=
  ∀ n, P12199880269472597957.a n = A229763 n

end A229763

/-! ## A229763.P11575690271185979157

`abs(or(2*n, -n))`
-/

namespace A229763.P11575690271185979157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(n : ℤ))|

end

end A229763.P11575690271185979157

namespace A229763

/-- `abs(or(2*n, -n))` -/
def P11575690271185979157.Spec : Prop :=
  ∀ n, P11575690271185979157.a n = A229763 n

end A229763

/-! ## A229763.P16571847560272941368

`-or(2*n, -n)`
-/

namespace A229763.P16571847560272941368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

end

end A229763.P16571847560272941368

namespace A229763

/-- `-or(2*n, -n)` -/
def P16571847560272941368.Spec : Prop :=
  ∀ n, P16571847560272941368.a n = A229763 n

end A229763

/-! ## A229763.P14967746352235144629

`xor(n, and(n, 2*n))`
-/

namespace A229763.P14967746352235144629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land n (2 * n))

end

end A229763.P14967746352235144629

namespace A229763

/-- `xor(n, and(n, 2*n))` -/
def P14967746352235144629.Spec : Prop :=
  ∀ n, (P14967746352235144629.a n : ℤ) = A229763 n

end A229763

/-! ## A229763.P15500370130082362737

`or(n, 2*n)-2*n`
-/

namespace A229763.P15500370130082362737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (2 * n : ℤ)

end

end A229763.P15500370130082362737

namespace A229763

/-- `or(n, 2*n)-2*n` -/
def P15500370130082362737.Spec : Prop :=
  ∀ n, P15500370130082362737.a n = A229763 n

end A229763

/-! ## A229763.P3715827413292306274

`(xor(n, 2*n)-n)/2`
-/

namespace A229763.P3715827413292306274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (2 * n) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A229763.P3715827413292306274

namespace A229763

/-- `(xor(n, 2*n)-n)/2` -/
def P3715827413292306274.Spec : Prop :=
  ∀ n, P3715827413292306274.a n = (A229763 n : ℚ)

end A229763

/-! ## A229763.P5036559711966496401

`xor(2*n, or(n, 2*n))`
-/

namespace A229763.P5036559711966496401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.lor n (2 * n))

end

end A229763.P5036559711966496401

namespace A229763

/-- `xor(2*n, or(n, 2*n))` -/
def P5036559711966496401.Spec : Prop :=
  ∀ n, (P5036559711966496401.a n : ℤ) = A229763 n

end A229763

/-! ## A229763.P18211702580588042762

`(or(n, 2*n)+2)%(n+1)`
-/

namespace A229763.P18211702580588042762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) + 2) % (n + 1)

end

end A229763.P18211702580588042762

namespace A229763

/-- `(or(n, 2*n)+2)%(n+1)` -/
def P18211702580588042762.Spec : Prop :=
  ∀ n, (P18211702580588042762.a n : ℤ) = A229763 n

end A229763

/-! ## A229763.P12827425027681042359

`and(n-1, -(n+1+n))+1`
-/

namespace A229763.P12827425027681042359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(n + 1 + n : ℤ)) + 1

end

end A229763.P12827425027681042359

namespace A229763

/-- `and(n-1, -(n+1+n))+1` -/
def P12827425027681042359.Spec : Prop :=
  ∀ n, P12827425027681042359.a n = A229763 n

end A229763

/-! ## A229763.P10439634125809751256

`and(n, -(2*n+1))%(n+1)`
-/

namespace A229763.P10439634125809751256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(2 * n + 1 : ℤ))) (n + 1 : ℤ)

end

end A229763.P10439634125809751256

namespace A229763

/-- `and(n, -(2*n+1))%(n+1)` -/
def P10439634125809751256.Spec : Prop :=
  ∀ n, P10439634125809751256.a n = A229763 n

end A229763

/-! ## A229763.P4880950415326743584

`and(2*n, -(2*(2*n+1)))/2`
-/

namespace A229763.P4880950415326743584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n : ℤ) (-(2 * (2 * n + 1) : ℤ)) : ℚ) / 2

end

end A229763.P4880950415326743584

namespace A229763

/-- `and(2*n, -(2*(2*n+1)))/2` -/
def P4880950415326743584.Spec : Prop :=
  ∀ n, P4880950415326743584.a n = (A229763 n : ℚ)

end A229763

/-! ## A229763.P8559699823578374221

`gcd(n, n+1)*and(n, -(2*n+1))`
-/

namespace A229763.P8559699823578374221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

end

end A229763.P8559699823578374221

namespace A229763

/-- `gcd(n, n+1)*and(n, -(2*n+1))` -/
def P8559699823578374221.Spec : Prop :=
  ∀ n, P8559699823578374221.a n = A229763 n

theorem P8559699823578374221.correct : P8559699823578374221.Spec := by
  intro n
  simp only [A229763, Nat.add_sub_cancel, A229763.P8559699823578374221.a, A229763.P6803440725785154934.f1, A229763.P6803440725785154934.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A229763

/-! ## A229763.P10108751455047193063

`(2*n+1)%(and(n, 2*n)+n+1)`
-/

namespace A229763.P10108751455047193063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (Nat.land n (2 * n) + (n + 1))

end

end A229763.P10108751455047193063

namespace A229763

/-- `(2*n+1)%(and(n, 2*n)+n+1)` -/
def P10108751455047193063.Spec : Prop :=
  ∀ n, (P10108751455047193063.a n : ℤ) = A229763 n

end A229763

/-! ## A229763.P17295229003788828799

`and(1, 2*n+1)*and(n, -(2*n+1))`
-/

namespace A229763.P17295229003788828799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n + 1) : ℤ) * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

end

end A229763.P17295229003788828799

namespace A229763

/-- `and(1, 2*n+1)*and(n, -(2*n+1))` -/
def P17295229003788828799.Spec : Prop :=
  ∀ n, P17295229003788828799.a n = A229763 n

theorem P17295229003788828799.correct : P17295229003788828799.Spec := by
  intro n
  simp only [A229763, Nat.add_sub_cancel, A229763.P17295229003788828799.a, A229763.P6803440725785154934.f1, A229763.P6803440725785154934.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A229763

/-! ## A229763.P9247981579206147956

`A213064(n)-n`
-/

namespace A229763.P9247981579206147956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n - (n : ℤ)

end

end A229763.P9247981579206147956

namespace A229763

/-- `A213064(n)-n` -/
def P9247981579206147956.Spec : Prop :=
  ∀ n, P9247981579206147956.a n = A229763 n

end A229763

/-! ## A229763.P2052570680366719586

`n-A213370(n)`
-/

namespace A229763.P2052570680366719586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A213370 n

end

end A229763.P2052570680366719586

namespace A229763

/-- `n-A213370(n)` -/
def P2052570680366719586.Spec : Prop :=
  ∀ n, P2052570680366719586.a n = A229763 n

end A229763

/-! ## A229763.P6725508339785524844

`n-2*A048735(n)`
-/

namespace A229763.P6725508339785524844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A048735 n

end

end A229763.P6725508339785524844

namespace A229763

/-- `n-2*A048735(n)` -/
def P6725508339785524844.Spec : Prop :=
  ∀ n, P6725508339785524844.a n = A229763 n

end A229763

/-! ## A229763.P2466989034845229694

`A163617(n)-2*n`
-/

namespace A229763.P2466989034845229694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - (2 * n : ℤ)

end

end A229763.P2466989034845229694

namespace A229763

/-- `A163617(n)-2*n` -/
def P2466989034845229694.Spec : Prop :=
  ∀ n, P2466989034845229694.a n = A229763 n

end A229763

/-! ## A229763.P3871814445228169531

`2*A292272(n)-n`
-/

namespace A229763.P3871814445228169531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292272 n - (n : ℤ)

end

end A229763.P3871814445228169531

namespace A229763

/-- `2*A292272(n)-n` -/
def P3871814445228169531.Spec : Prop :=
  ∀ n, P3871814445228169531.a n = A229763 n

end A229763

/-!
# A229764: Nim sequence of MARK: the game on n counters in which the legal moves are to remove 1 counter or to halve the number of counters and round down.

The programs for A229764, the canonical program `A229764.P8961985121102408245` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229764 has offset 0).

The definition of A229764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229764.P8961985121102408245

`(2*a(n-1)+(n%2+1)*a(floor(n/2)))%3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229764

/-- `(2*a(n-1)+(n%2+1)*a(floor(n/2)))%3` -/
def P8961985121102408245.Spec : Prop :=
  ∀ n, (P8961985121102408245.a n : ℤ) = A229764 n

theorem P8961985121102408245.correct : P8961985121102408245.Spec := by
  intro n
  simp only [A229764]

end A229764

/-! ## A229764.P17540853381642992497

`(a(n-1)+a(floor(n/2)))%2+(xor(n, n-1)%3)²` with `a(0)=0`
-/

namespace A229764.P17540853381642992497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat) 2 + Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3 ^ 2

end

end A229764.P17540853381642992497

namespace A229764

/-- `(a(n-1)+a(floor(n/2)))%2+(xor(n, n-1)%3)²` -/
def P17540853381642992497.Spec : Prop :=
  ∀ n, P17540853381642992497.a n = A229764 n

end A229764

/-! ## A229764.P11778240701901816127

`A036578(abs(1-n))`
-/

namespace A229764.P11778240701901816127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 |1 - (n : ℤ)|.toNat

end

end A229764.P11778240701901816127

namespace A229764

/-- `A036578(abs(1-n))` -/
def P11778240701901816127.Spec : Prop :=
  ∀ n, P11778240701901816127.a n = A229764 n

end A229764

/-! ## A229764.P2172371042457343049

`log2(gcd(4, A316826(n)))`
-/

namespace A229764.P2172371042457343049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A316826 n) : ℝ)

end

end A229764.P2172371042457343049

namespace A229764

/-- `log2(gcd(4, A316826(n)))` -/
def P2172371042457343049.Spec : Prop :=
  ∀ n, P2172371042457343049.a n = (A229764 n : ℝ)

end A229764

/-! ## A229764.P15440670798363538153

`dr(and(10, A292118(n)))`
-/

namespace A229764.P15440670798363538153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A292118 n))

end

end A229764.P15440670798363538153

namespace A229764

/-- `dr(and(10, A292118(n)))` -/
def P15440670798363538153.Spec : Prop :=
  ∀ n, (P15440670798363538153.a n : ℤ) = A229764 n

end A229764

/-! ## A229764.P2639766801815945226

`(A317189(n)+2)%3`
-/

namespace A229764.P2639766801815945226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317189 n + 2) 3

end

end A229764.P2639766801815945226

namespace A229764

/-- `(A317189(n)+2)%3` -/
def P2639766801815945226.Spec : Prop :=
  ∀ n, P2639766801815945226.a n = A229764 n

end A229764

/-! ## A229764.P9099715074088277430

`2-A036579(abs(1-n))`
-/

namespace A229764.P9099715074088277430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036579 |1 - (n : ℤ)|.toNat

end

end A229764.P9099715074088277430

namespace A229764

/-- `2-A036579(abs(1-n))` -/
def P9099715074088277430.Spec : Prop :=
  ∀ n, P9099715074088277430.a n = A229764 n

end A229764

/-! ## A229764.P5235877106424076657

`A036583(abs(1-n))%3`
-/

namespace A229764.P5235877106424076657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036583 |1 - (n : ℤ)|.toNat) 3

end

end A229764.P5235877106424076657

namespace A229764

/-- `A036583(abs(1-n))%3` -/
def P5235877106424076657.Spec : Prop :=
  ∀ n, P5235877106424076657.a n = A229764 n

end A229764

/-! ## A229764.P15536418524364032338

`((A000123(n)-1)%8)%3`
-/

namespace A229764.P15536418524364032338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000123 n - 1) 8) 3

end

end A229764.P15536418524364032338

namespace A229764

/-- `((A000123(n)-1)%8)%3` -/
def P15536418524364032338.Spec : Prop :=
  ∀ n, P15536418524364032338.a n = A229764 n

end A229764

/-! ## A229764.P10846763600358425361

`A005679(abs(1-n)+1)-1`
-/

namespace A229764.P10846763600358425361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A229764.P10846763600358425361

namespace A229764

/-- `A005679(abs(1-n)+1)-1` -/
def P10846763600358425361.Spec : Prop :=
  ∀ n, P10846763600358425361.a n = A229764 n

end A229764

/-! ## A229764.P16002450542770308095

`3-or(a(n-1), A001285(n))` with `a(0)=0`
-/

namespace A229764.P16002450542770308095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - Int.lor (a (n - 1)) (A001285 n)

end

end A229764.P16002450542770308095

namespace A229764

/-- `3-or(a(n-1), A001285(n))` -/
def P16002450542770308095.Spec : Prop :=
  ∀ n, P16002450542770308095.a n = A229764 n

end A229764

/-! ## A229764.P13920176161192363109

`(n+3)%(A005680(n+1)+n)`
-/

namespace A229764.P13920176161192363109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A005680 (n + 1) + (n : ℤ))

end

end A229764.P13920176161192363109

namespace A229764

/-- `(n+3)%(A005680(n+1)+n)` -/
def P13920176161192363109.Spec : Prop :=
  ∀ n, P13920176161192363109.a n = A229764 n

end A229764

/-! ## A229764.P12096229602142318298

`(A036577(abs(1-n)+1)+2)%3`
-/

namespace A229764.P12096229602142318298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036577 (|1 - (n : ℤ)| + 1).toNat + 2) 3

end

end A229764.P12096229602142318298

namespace A229764

/-- `(A036577(abs(1-n)+1)+2)%3` -/
def P12096229602142318298.Spec : Prop :=
  ∀ n, P12096229602142318298.a n = A229764 n

end A229764

/-! ## A229764.P3921714729313344592

`val(A007413(abs(1-n)+1)+1, 2)`
-/

namespace A229764.P3921714729313344592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007413 (|1 - (n : ℤ)| + 1).toNat + 1).toNat 2

end

end A229764.P3921714729313344592

namespace A229764

/-- `val(A007413(abs(1-n)+1)+1, 2)` -/
def P3921714729313344592.Spec : Prop :=
  ∀ n, (P3921714729313344592.a n : ℤ) = A229764 n

end A229764

/-! ## A229764.P14978263439613367703

`abs(C(A007413(abs(n-1)+1), 2)-1)`
-/

namespace A229764.P14978263439613367703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose (A007413 (|(n : ℤ) - 1| + 1).toNat).toNat 2 : ℤ) - 1)|

end

end A229764.P14978263439613367703

namespace A229764

/-- `abs(C(A007413(abs(n-1)+1), 2)-1)` -/
def P14978263439613367703.Spec : Prop :=
  ∀ n, P14978263439613367703.a n = A229764 n

end A229764

/-! ## A229764.P12566389815524312283

`val(Δ[A001969(abs(1-2*n))]+1, 2)`
-/

namespace A229764.P12566389815524312283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2

end

end A229764.P12566389815524312283

namespace A229764

/-- `val(Δ[A001969(abs(1-2*n))]+1, 2)` -/
def P12566389815524312283.Spec : Prop :=
  ∀ n, (P12566389815524312283.a n : ℤ) = A229764 n

end A229764

/-! ## A229764.P18236603572675976840

`A105321(A022144(n))%3`
-/

namespace A229764.P18236603572675976840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105321 (A022144 n).toNat) 3

end

end A229764.P18236603572675976840

namespace A229764

/-- `A105321(A022144(n))%3` -/
def P18236603572675976840.Spec : Prop :=
  ∀ n, P18236603572675976840.a n = A229764 n

end A229764

/-! ## A229764.P4766463921994066799

`A084566(n)%A122553(n)`
-/

namespace A229764.P4766463921994066799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084566 n) (A122553 n)

end

end A229764.P4766463921994066799

namespace A229764

/-- `A084566(n)%A122553(n)` -/
def P4766463921994066799.Spec : Prop :=
  ∀ n, P4766463921994066799.a n = A229764 n

end A229764

/-! ## A229764.P635851227888012539

`A249184(n)%A122553(n)`
-/

namespace A229764.P635851227888012539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249184 n) (A122553 n)

end

end A229764.P635851227888012539

namespace A229764

/-- `A249184(n)%A122553(n)` -/
def P635851227888012539.Spec : Prop :=
  ∀ n, P635851227888012539.a n = A229764 n

end A229764

/-! ## A229764.P987193314639602396

`A005680(A000069(n+1))-1`
-/

namespace A229764.P987193314639602396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A000069 (n + 1)).toNat - 1

end

end A229764.P987193314639602396

namespace A229764

/-- `A005680(A000069(n+1))-1` -/
def P987193314639602396.Spec : Prop :=
  ∀ n, P987193314639602396.a n = A229764 n

end A229764

/-!
# A229766: Odd numbers whose square's binary reversal is also a square.

The programs for A229766, there is no canonical definition to state claims against.
-/

/-! ## A229766.P8791845583213581473

`sqrt(A229687(n+1))`
-/

namespace A229766.P8791845583213581473
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A229687 (n + 1) : ℝ)

end

end A229766.P8791845583213581473

/-! ## A229766.P8043833828412393679

`root(A229687(n+1), A043529(2*n))`
-/

namespace A229766.P8043833828412393679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229687 (n + 1) : ℝ) ^ (1 / (A043529 (2 * n) : ℝ))

end

end A229766.P8043833828412393679

/-! ## A229766.P11074909393273618090

`gcd(root(A229687(n+1), 2), A000038(n))`
-/

namespace A229766.P11074909393273618090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A229687 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000038 n)

end

end A229766.P11074909393273618090

/-! ## A229766.P16438929429634465176

`root(A229687(n+1)+A000038(n+2), 2)`
-/

namespace A229766.P16438929429634465176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229687 (n + 1) + A000038 (n + 2) : ℝ) ^ (1 / (2 : ℝ))

end

end A229766.P16438929429634465176

/-!
# A229767: Largest prime factor of 2^(2*n+1)-2^(n+1)+1.

The programs for A229767, there is no canonical definition to state claims against.
-/

/-! ## A229767.P9893267699906391999

`A089619(∑[2^n])`
-/

namespace A229767.P9893267699906391999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229767.P9893267699906391999

/-! ## A229767.P5193469797493230333

`or(1, A089619(A000225(n+1)))`
-/

namespace A229767.P5193469797493230333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089619 (A000225 (n + 1)).toNat)

end

end A229767.P5193469797493230333

/-! ## A229767.P9349929747672217865

`A014442(2^(n+2)-1)`
-/

namespace A229767.P9349929747672217865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (2 ^ (n + 2) - 1)

end

end A229767.P9349929747672217865

/-! ## A229767.P15349224929088304748

`A250069(2^(n+2)-1)+1`
-/

namespace A229767.P15349224929088304748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (2 ^ (n + 2) - 1) + 1

end

end A229767.P15349224929088304748

/-!
# A229768: Largest prime factor of 2^(2*n+1)+2^(n+1)+1.

The programs for A229768, there is no canonical definition to state claims against.
-/

/-! ## A229768.P7622723857535780831

`A089619(2^(n+1))`
-/

namespace A229768.P7622723857535780831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089619 (2 ^ (n + 1))

end

end A229768.P7622723857535780831

/-! ## A229768.P13411324859552589496

`A014442(2^(n+2)+1)`
-/

namespace A229768.P13411324859552589496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (2 ^ (n + 2) + 1)

end

end A229768.P13411324859552589496

/-! ## A229768.P15766671386964256848

`A250069(2^(n+2)+1)+1`
-/

namespace A229768.P15766671386964256848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (2 ^ (n + 2) + 1) + 1

end

end A229768.P15766671386964256848

/-!
# A229769: Not of the form x^2 + P*y^2 for integers x > 0, y > 1, P a prime.

The programs for A229769, there is no canonical definition to state claims against.
-/

/-! ## A229769.P16859930692590211913

`∑[A056670(A303758(A172317(n)))]`
-/

namespace A229769.P16859930692590211913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A303758 (A172317 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229769.P16859930692590211913

/-! ## A229769.P28705705150696374

`∑[A043562(A197503(A229173(n+1)))]`
-/

namespace A229769.P28705705150696374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A197503 (A229173 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229769.P28705705150696374

/-!
# A229770: Number of n X n 0..2 arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229770, there is no canonical definition to state claims against.
-/

/-! ## A229770.P18035749761436822815

`A229774(∑[n+2])`
-/

namespace A229770.P18035749761436822815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229770.P18035749761436822815

/-! ## A229770.P13948909160157655469

`A229774(A000096(n+1))+A025469(n)`
-/

namespace A229770.P13948909160157655469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A000096 (n + 1)).toNat + A025469 n

end

end A229770.P13948909160157655469

/-! ## A229770.P9775213191197222372

`A278807(∑[4*n]+1)`
-/

namespace A229770.P9775213191197222372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229770.P9775213191197222372

/-! ## A229770.P15474149424163426069

`record[A278807(record[A326657(n)])]`
-/

namespace A229770.P15474149424163426069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229770.P15474149424163426069

/-!
# A229771: Number of n X n 0..3 arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229771, there is no canonical definition to state claims against.
-/

/-! ## A229771.P568730111689785987

`A229774(∑[n+3]+1)`
-/

namespace A229771.P568730111689785987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229771.P568730111689785987

/-! ## A229771.P6728145611896515138

`A278727((n+1)²+n²)`
-/

namespace A229771.P6728145611896515138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 ((n + 1) ^ 2 + n ^ 2)

end

end A229771.P6728145611896515138

/-!
# A229772: Number of n X n 0..4 arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229772, there is no canonical definition to state claims against.
-/

/-! ## A229772.P8508447664594068602

`A229774(A141214(n+1))`
-/

namespace A229772.P8508447664594068602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A141214 (n + 1)).toNat

end

end A229772.P8508447664594068602

/-! ## A229772.P3851740601597909123

`A229774(eq[2, A054123(n)])`
-/

namespace A229772.P3851740601597909123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229772.P3851740601597909123

/-! ## A229772.P660082985841548178

`A229774(A052905(n+1)+2)`
-/

namespace A229772.P660082985841548178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A052905 (n + 1) + 2).toNat

end

end A229772.P660082985841548178

/-!
# A229773: Number of n X n 0..5 arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229773, there is no canonical definition to state claims against.
-/

/-! ## A229773.P17414780346134569888

`A229774(4*n+11+∑[n]+n)`
-/

namespace A229773.P17414780346134569888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (4 * n + 11 + (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A229773.P17414780346134569888

/-!
# A229775: Number of 3 X 3 0..n arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229775, there is no canonical definition to state claims against.
-/

/-! ## A229775.P8985000753591053603

`A229774(∑[n+2]+4)`
-/

namespace A229775.P8985000753591053603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229775.P8985000753591053603

/-! ## A229775.P3755922381341868610

`A229774(A167614(n+1))+A031346(n)`
-/

namespace A229775.P3755922381341868610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A167614 (n + 1)).toNat + A031346 n

end

end A229775.P3755922381341868610

/-! ## A229775.P4046515560651873875

`A229774(A167614(n+1))+A086015(n)`
-/

namespace A229775.P4046515560651873875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A167614 (n + 1)).toNat + A086015 n

end

end A229775.P4046515560651873875

/-! ## A229775.P10080022754255496312

`A229774(A167614(n+1))%A016799(n)`
-/

namespace A229775.P10080022754255496312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229774 (A167614 (n + 1)).toNat) (A016799 n)

end

end A229775.P10080022754255496312

/-! ## A229775.P13561243138648631209

`lcm(A054977(n), A229774(A167614(n+1)))`
-/

namespace A229775.P13561243138648631209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A229774 (A167614 (n + 1)).toNat)

end

end A229775.P13561243138648631209

/-!
# A229776: Number of 4X4 0..n arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229776, there is no canonical definition to state claims against.
-/

/-! ## A229776.P4085619155693639023

`A229774(A145018(n+4))`
-/

namespace A229776.P4085619155693639023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A145018 (n + 4)).toNat

end

end A229776.P4085619155693639023

/-! ## A229776.P15174107999432175905

`A229774(A141214(n)+7)`
-/

namespace A229776.P15174107999432175905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A141214 n + 7).toNat

end

end A229776.P15174107999432175905

/-! ## A229776.P11630820955162402856

`A229774(A052905(n)+9)`
-/

namespace A229776.P11630820955162402856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A052905 n + 9).toNat

end

end A229776.P11630820955162402856

/-! ## A229776.P17090753465594042999

`A229774(A055999(n)+10)`
-/

namespace A229776.P17090753465594042999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A055999 n + 10).toNat

end

end A229776.P17090753465594042999

/-!
# A229777: Number of 5X5 0..n arrays with rows in lexicographically nondecreasing order and columns in nonincreasing order.

The programs for A229777, there is no canonical definition to state claims against.
-/

/-! ## A229777.P6370696346519287265

`A229774(A056000(n)+15)`
-/

namespace A229777.P6370696346519287265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229774 (A056000 n + 15).toNat

end

end A229777.P6370696346519287265

/-!
# A229780: Decimal expansion of (3+sqrt(5))/10.

The programs for A229780, there is no canonical definition to state claims against.
-/

/-! ## A229780.P13510664206526861985

`A098317(n)+A000007(n)`
-/

namespace A229780.P13510664206526861985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1) + A000007 n

end

end A229780.P13510664206526861985

/-! ## A229780.P18132959590256614079

`A242671(n)-A000038(n)`
-/

namespace A229780.P18132959590256614079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242671 n - A000038 n

end

end A229780.P18132959590256614079

/-! ## A229780.P13553582332257420320

`or(A020761(n), A098317(n))`
-/

namespace A229780.P13553582332257420320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020761 n) (A098317 (n + 1))

end

end A229780.P13553582332257420320

/-! ## A229780.P17562672130202544212

`or(A020761(n), A134972(n))`
-/

namespace A229780.P17562672130202544212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020761 n) (A134972 (n + 1))

end

end A229780.P17562672130202544212

/-! ## A229780.P8064812233455797265

`or(A098317(n), A134972(n))`
-/

namespace A229780.P8064812233455797265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098317 (n + 1)) (A134972 (n + 1))

end

end A229780.P8064812233455797265

/-! ## A229780.P11112325256844443725

`A134972(n)+A000038(n)²`
-/

namespace A229780.P11112325256844443725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (n + 1) + A000038 n ^ 2

end

end A229780.P11112325256844443725

/-! ## A229780.P17168053572515416158

`dr(A040020(n)*A134972(n))`
-/

namespace A229780.P17168053572515416158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040020 n * A134972 (n + 1))

end

end A229780.P17168053572515416158

/-! ## A229780.P4791125434370887013

`A098317(n)+A000038(n)/2`
-/

namespace A229780.P4791125434370887013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098317 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A229780.P4791125434370887013

/-! ## A229780.P3407579703010713404

`4+A134945(n)-A040002(n)`
-/

namespace A229780.P3407579703010713404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A134945 (n + 1) - A040002 n)

end

end A229780.P3407579703010713404

/-! ## A229780.P3062681939365769209

`A028310(n)+A098317(n)-n`
-/

namespace A229780.P3062681939365769209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A098317 (n + 1) - (n : ℤ))

end

end A229780.P3062681939365769209

/-! ## A229780.P15596567988260753059

`A002163(A020761(n)²²+n)`
-/

namespace A229780.P15596567988260753059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (((A020761 n ^ 2) ^ 2 + (n : ℤ)).toNat + 1)

end

end A229780.P15596567988260753059

/-! ## A229780.P10246349355698561608

`A098317(A020761(n)²²+n)`
-/

namespace A229780.P10246349355698561608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (((A020761 n ^ 2) ^ 2 + (n : ℤ)).toNat + 1)

end

end A229780.P10246349355698561608

/-! ## A229780.P2336274435374266105

`A134972(A020761(n)²²+n)`
-/

namespace A229780.P2336274435374266105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (((A020761 n ^ 2) ^ 2 + (n : ℤ)).toNat + 1)

end

end A229780.P2336274435374266105

/-! ## A229780.P17620724986667546427

`dr(A040020(n)²*A002163(n))`
-/

namespace A229780.P17620724986667546427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040020 n ^ 2 * A002163 (n + 1))

end

end A229780.P17620724986667546427

/-! ## A229780.P14466256224981616095

`A002163(n)+A054977(n)²-1`
-/

namespace A229780.P14466256224981616095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A054977 n ^ 2 - 1)

end

end A229780.P14466256224981616095

/-! ## A229780.P5698937938697229039

`A098317(n)+A104457(n)-A001622(n)`
-/

namespace A229780.P5698937938697229039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1) + (A104457 (n + 1) - A001622 (n + 1))

end

end A229780.P5698937938697229039

/-! ## A229780.P14773655502150105736

`A134945(n)+A255176(n)-A123932(n)`
-/

namespace A229780.P14773655502150105736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134945 (n + 1) + (A255176 n - A123932 n)

end

end A229780.P14773655502150105736

/-! ## A229780.P8485327233249637787

`A225667(n)+A242671(n)-A132338(n)`
-/

namespace A229780.P8485327233249637787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225667 (n + 1) + (A242671 n - A132338 n)

end

end A229780.P8485327233249637787

/-! ## A229780.P15372871272638092312

`A225667(n)+A242671(n)-A079585(n+1)`
-/

namespace A229780.P15372871272638092312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225667 (n + 1) + (A242671 n - A079585 (n + 1 + 1))

end

end A229780.P15372871272638092312

/-!
# A229782: Common difference in sets of 4 consecutive palindromic primes (palprimes) in arithmetic progression.

The programs for A229782, there is no canonical definition to state claims against.
-/

/-! ## A229782.P1519986596947406700

`A229781(A108606(n+1))`
-/

namespace A229782.P1519986596947406700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229781 (A108606 (n + 1)).toNat

end

end A229782.P1519986596947406700

/-!
# A229784: a(n) = (1^1^1 + 2^2^2 . . . + n^n^n) mod 10.

The programs for A229784, the canonical program `A229784.P3983521032097858868` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229784 has offset 0).

The definition of A229784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229784.P3983521032097858868

`∑[A120962(n)]%10`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229784

/-- `∑[A120962(n)]%10` -/
def P3983521032097858868.Spec : Prop :=
  ∀ n, P3983521032097858868.a n = A229784 n

theorem P3983521032097858868.correct : P3983521032097858868.Spec := by
  intro n
  simp only [A229784]

end A229784

/-!
# A229785: Partial sums of A157129.

The programs for A229785, the canonical program `A229785.P2544820907719229292` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229785 has offset 1).

The definition of A229785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229785.P2544820907719229292

`∑[A157129(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A229785

/-- `∑[A157129(n+1)]` -/
def P2544820907719229292.Spec : Prop :=
  ∀ n, P2544820907719229292.a n = A229785 (n + 1)

theorem P2544820907719229292.correct : P2544820907719229292.Spec := by
  intro n
  simp only [A229785, Nat.add_sub_cancel]

end A229785

/-! ## A229785.P12626946925474016277

`∑[log2(A071928(n+1))]`
-/

namespace A229785.P12626946925474016277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A071928 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229785.P12626946925474016277

namespace A229785

/-- `∑[log2(A071928(n+1))]` -/
def P12626946925474016277.Spec : Prop :=
  ∀ n, P12626946925474016277.a n = (A229785 (n + 1) : ℝ)

end A229785

/-! ## A229785.P10469154014615364785

`∑[A157129(or(1, n))!]`
-/

namespace A229785.P10469154014615364785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A157129 (Nat.lor 1 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229785.P10469154014615364785

namespace A229785

/-- `∑[A157129(or(1, n))!]` -/
def P10469154014615364785.Spec : Prop :=
  ∀ n, (P10469154014615364785.a n : ℤ) = A229785 (n + 1)

end A229785

/-! ## A229785.P15273497321466875889

`∑[A071928(or(1, n))/2]`
-/

namespace A229785.P15273497321466875889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071928 (Nat.lor 1 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229785.P15273497321466875889

namespace A229785

/-- `∑[A071928(or(1, n))/2]` -/
def P15273497321466875889.Spec : Prop :=
  ∀ n, P15273497321466875889.a n = (A229785 (n + 1) : ℚ)

end A229785

/-! ## A229785.P3610137601882855095

`∑[A157129(abs(xor(n, -2)))!]`
-/

namespace A229785.P3610137601882855095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A157129 |Int.xor (n : ℤ) (-2)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229785.P3610137601882855095

namespace A229785

/-- `∑[A157129(abs(xor(n, -2)))!]` -/
def P3610137601882855095.Spec : Prop :=
  ∀ n, (P3610137601882855095.a n : ℤ) = A229785 (n + 1)

end A229785

/-! ## A229785.P10665959685427014745

`comp[A284795(n+1)-1]+1`
-/

namespace A229785.P10665959685427014745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284795 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229785.P10665959685427014745

namespace A229785

/-- `comp[A284795(n+1)-1]+1` -/
def P10665959685427014745.Spec : Prop :=
  ∀ n, (P10665959685427014745.a n : ℤ) = A229785 (n + 1)

end A229785

/-! ## A229785.P2177218960213281294

`∪[A284796(n+1), A004277(n)]`
-/

namespace A229785.P2177218960213281294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229785.P2177218960213281294

namespace A229785

/-- `∪[A284796(n+1), A004277(n)]` -/
def P2177218960213281294.Spec : Prop :=
  ∀ n, (P2177218960213281294.a n : ℤ) = A229785 (n + 1)

end A229785

/-! ## A229785.P14472636049158614612

`∪[A284794(n+1), A284796(n+1)]`
-/

namespace A229785.P14472636049158614612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229785.P14472636049158614612

namespace A229785

/-- `∪[A284794(n+1), A284796(n+1)]` -/
def P14472636049158614612.Spec : Prop :=
  ∀ n, (P14472636049158614612.a n : ℤ) = A229785 (n + 1)

end A229785

/-! ## A229785.P485185399695561245

`eq[1, A284793(n+1)²]+1`
-/

namespace A229785.P485185399695561245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229785.P485185399695561245

namespace A229785

/-- `eq[1, A284793(n+1)²]+1` -/
def P485185399695561245.Spec : Prop :=
  ∀ n, (P485185399695561245.a n : ℤ) = A229785 (n + 1)

end A229785

/-!
# A229786: a(n) = n-th prime modulo 23.

The programs for A229786, the canonical program `A229786.P9575253401389881351` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229786 has offset 1).

The definition of A229786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229786.P9512068038098275121

`Δ[A007504(n)]%23`
-/

namespace A229786.P9512068038098275121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 23

end

end A229786.P9512068038098275121

namespace A229786

/-- `Δ[A007504(n)]%23` -/
def P9512068038098275121.Spec : Prop :=
  ∀ n, P9512068038098275121.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P9575253401389881351

`A000040(n+1)%23`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229786

/-- `A000040(n+1)%23` -/
def P9575253401389881351.Spec : Prop :=
  ∀ n, P9575253401389881351.a n = A229786 (n + 1)

theorem P9575253401389881351.correct : P9575253401389881351.Spec := by
  intro n
  simp only [A229786, Nat.add_sub_cancel]

end A229786

/-! ## A229786.P8984327920851177702

`abs(Δ[A008348(n)])%23`
-/

namespace A229786.P8984327920851177702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 23

end

end A229786.P8984327920851177702

namespace A229786

/-- `abs(Δ[A008348(n)])%23` -/
def P8984327920851177702.Spec : Prop :=
  ∀ n, P8984327920851177702.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P12906027186560479262

`abs(Δ[A022837(n)])%23`
-/

namespace A229786.P12906027186560479262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 23

end

end A229786.P12906027186560479262

namespace A229786

/-- `abs(Δ[A022837(n)])%23` -/
def P12906027186560479262.Spec : Prop :=
  ∀ n, P12906027186560479262.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P5050319928430870552

`sqrt(A001248(n+1))%23`
-/

namespace A229786.P5050319928430870552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 23

end

end A229786.P5050319928430870552

namespace A229786

/-- `sqrt(A001248(n+1))%23` -/
def P5050319928430870552.Spec : Prop :=
  ∀ n, P5050319928430870552.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P2830531653782254362

`∑[A054541(n+1)]%23`
-/

namespace A229786.P2830531653782254362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 23

end

end A229786.P2830531653782254362

namespace A229786

/-- `∑[A054541(n+1)]%23` -/
def P2830531653782254362.Spec : Prop :=
  ∀ n, P2830531653782254362.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P3568999698015241706

`A182986(n+2)%23`
-/

namespace A229786.P3568999698015241706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182986 (n + 2)) 23

end

end A229786.P3568999698015241706

namespace A229786

/-- `A182986(n+2)%23` -/
def P3568999698015241706.Spec : Prop :=
  ∀ n, P3568999698015241706.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P13083019146524908337

`record[A006530(n+2)]%23`
-/

namespace A229786.P13083019146524908337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 23

end

end A229786.P13083019146524908337

namespace A229786

/-- `record[A006530(n+2)]%23` -/
def P13083019146524908337.Spec : Prop :=
  ∀ n, P13083019146524908337.a n = A229786 (n + 1)

end A229786

/-! ## A229786.P1111358167526398926

`(A014692(n+1)+n)%A161897(A185633(2*n+3))`
-/

namespace A229786.P1111358167526398926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1) + (n : ℤ)) (A161897 (A185633 (2 * n + 3)).toNat)

end

end A229786.P1111358167526398926

namespace A229786

/-- `(A014692(n+1)+n)%A161897(A185633(2*n+3))` -/
def P1111358167526398926.Spec : Prop :=
  ∀ n, P1111358167526398926.a n = A229786 (n + 1)

end A229786

/-!
# A229787: a(n) = n-th prime modulo 24.

The programs for A229787, the canonical program `A229787.P9072737370582349556` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229787 has offset 1).

The definition of A229787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229787.P9072737370582349556

`A000040(n+1)%24`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229787

/-- `A000040(n+1)%24` -/
def P9072737370582349556.Spec : Prop :=
  ∀ n, P9072737370582349556.a n = A229787 (n + 1)

theorem P9072737370582349556.correct : P9072737370582349556.Spec := by
  intro n
  simp only [A229787, Nat.add_sub_cancel]

end A229787

/-! ## A229787.P6015701316671571404

`Δ[A007504(n)]%24`
-/

namespace A229787.P6015701316671571404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 24

end

end A229787.P6015701316671571404

namespace A229787

/-- `Δ[A007504(n)]%24` -/
def P6015701316671571404.Spec : Prop :=
  ∀ n, P6015701316671571404.a n = A229787 (n + 1)

end A229787

/-! ## A229787.P2955095109424573234

`∑[A054541(n+1)]%24`
-/

namespace A229787.P2955095109424573234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 24

end

end A229787.P2955095109424573234

namespace A229787

/-- `∑[A054541(n+1)]%24` -/
def P2955095109424573234.Spec : Prop :=
  ∀ n, P2955095109424573234.a n = A229787 (n + 1)

end A229787

/-! ## A229787.P7003914251938776372

`A036218(A000040(n+1))`
-/

namespace A229787.P7003914251938776372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036218 (A000040 (n + 1)).toNat

end

end A229787.P7003914251938776372

namespace A229787

/-- `A036218(A000040(n+1))` -/
def P7003914251938776372.Spec : Prop :=
  ∀ n, P7003914251938776372.a n = A229787 (n + 1)

end A229787

/-! ## A229787.P1498912182698284010

`A036218(A008578(n+2))`
-/

namespace A229787.P1498912182698284010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036218 (A008578 (n + 2)).toNat

end

end A229787.P1498912182698284010

namespace A229787

/-- `A036218(A008578(n+2))` -/
def P1498912182698284010.Spec : Prop :=
  ∀ n, P1498912182698284010.a n = A229787 (n + 1)

end A229787

/-! ## A229787.P12992933935131442742

`A036218(A182986(n+2))`
-/

namespace A229787.P12992933935131442742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036218 (A182986 (n + 2)).toNat

end

end A229787.P12992933935131442742

namespace A229787

/-- `A036218(A182986(n+2))` -/
def P12992933935131442742.Spec : Prop :=
  ∀ n, P12992933935131442742.a n = A229787 (n + 1)

end A229787

/-!
# A229788: a(n) = 6*2^n - n^2 - 5*n - 6.

The programs for A229788, the canonical program `A229788.P15727209731233721255` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229788 has offset 0).

The definition of A229788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-n²-5*n-6` (program `A229788.P15727209731233721255`, by `A229788.P15727209731233721255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229788.P15727209731233721255

`6*2^n-n²-5*n-6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229788

/-- `6*2^n-n²-5*n-6` -/
def P15727209731233721255.Spec : Prop :=
  ∀ n, P15727209731233721255.a n = A229788 n

theorem P15727209731233721255.correct : P15727209731233721255.Spec := by
  intro n
  simp only [A229788]

end A229788

/-! ## A229788.P14624195476922085807

`∑[2*(a(n-1)+n)]` with `a(0)=0, a(1)=0`
-/

namespace A229788.P14624195476922085807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 * (f1 (n - 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P14624195476922085807

namespace A229788

/-- `∑[2*(a(n-1)+n)]` -/
def P14624195476922085807.Spec : Prop :=
  ∀ n, (P14624195476922085807.a n : ℤ) = A229788 n

end A229788

/-! ## A229788.P12415859255280882244

`2*(a(n-1)-(1-∑[n]))` with `a(0)=0`
-/

namespace A229788.P12415859255280882244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A229788.P12415859255280882244

namespace A229788

/-- `2*(a(n-1)-(1-∑[n]))` -/
def P12415859255280882244.Spec : Prop :=
  ∀ n, P12415859255280882244.a n = A229788 n

end A229788

/-! ## A229788.P10824322630465832287

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A229788.P10824322630465832287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P10824322630465832287

namespace A229788

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P10824322630465832287.Spec : Prop :=
  ∀ n, (P10824322630465832287.a n : ℤ) = A229788 n

end A229788

/-! ## A229788.P1907425163203946759

`abs(A183156(n)-(n+1))`
-/

namespace A229788.P1907425163203946759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183156 n - (n + 1 : ℤ)|

end

end A229788.P1907425163203946759

namespace A229788

/-- `abs(A183156(n)-(n+1))` -/
def P1907425163203946759.Spec : Prop :=
  ∀ n, P1907425163203946759.a n = A229788 n

end A229788

/-! ## A229788.P4467427568801518614

`∑[A077802(n)-(n+1)]`
-/

namespace A229788.P4467427568801518614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P4467427568801518614

namespace A229788

/-- `∑[A077802(n)-(n+1)]` -/
def P4467427568801518614.Spec : Prop :=
  ∀ n, P4467427568801518614.a n = A229788 n

end A229788

/-! ## A229788.P2131152906419496690

`∑[A068156(n)-Δ[n²]]`
-/

namespace A229788.P2131152906419496690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P2131152906419496690

namespace A229788

/-- `∑[A068156(n)-Δ[n²]]` -/
def P2131152906419496690.Spec : Prop :=
  ∀ n, P2131152906419496690.a n = A229788 n

end A229788

/-! ## A229788.P2913929209141298241

`2*(A116702(n+1)-(n+1))`
-/

namespace A229788.P2913929209141298241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116702 (n + 1) - (n + 1 : ℤ))

end

end A229788.P2913929209141298241

namespace A229788

/-- `2*(A116702(n+1)-(n+1))` -/
def P2913929209141298241.Spec : Prop :=
  ∀ n, P2913929209141298241.a n = A229788 n

end A229788

/-! ## A229788.P13141937298378807476

`2*∑[A266550(n+2)-1-n]`
-/

namespace A229788.P13141937298378807476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229788.P13141937298378807476

namespace A229788

/-- `2*∑[A266550(n+2)-1-n]` -/
def P13141937298378807476.Spec : Prop :=
  ∀ n, P13141937298378807476.a n = A229788 n

end A229788

/-! ## A229788.P1005619390279923614

`2*(∑[∑[A000225(n)]]-2^n+1)`
-/

namespace A229788.P1005619390279923614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ) + 1)

end

end A229788.P1005619390279923614

namespace A229788

/-- `2*(∑[∑[A000225(n)]]-2^n+1)` -/
def P1005619390279923614.Spec : Prop :=
  ∀ n, P1005619390279923614.a n = A229788 n

end A229788

/-! ## A229788.P14933000744542915654

`∑[A060482(2*n+1)-(2*n+1)]`
-/

namespace A229788.P14933000744542915654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (2 * n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P14933000744542915654

namespace A229788

/-- `∑[A060482(2*n+1)-(2*n+1)]` -/
def P14933000744542915654.Spec : Prop :=
  ∀ n, P14933000744542915654.a n = A229788 n

end A229788

/-! ## A229788.P3868962635673325056

`∑[abs(2*n+1-∑[A111286(n+1)])]`
-/

namespace A229788.P3868962635673325056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P3868962635673325056

namespace A229788

/-- `∑[abs(2*n+1-∑[A111286(n+1)])]` -/
def P3868962635673325056.Spec : Prop :=
  ∀ n, P3868962635673325056.a n = A229788 n

end A229788

/-! ## A229788.P5846298164151919466

`2*(A048492(n)-A006127(n))`
-/

namespace A229788.P5846298164151919466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048492 n - A006127 n)

end

end A229788.P5846298164151919466

namespace A229788

/-- `2*(A048492(n)-A006127(n))` -/
def P5846298164151919466.Spec : Prop :=
  ∀ n, P5846298164151919466.a n = A229788 n

end A229788

/-! ## A229788.P10143769917772474555

`2*(A000295(n)+∑[A000295(n)])`
-/

namespace A229788.P10143769917772474555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000295 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229788.P10143769917772474555

namespace A229788

/-- `2*(A000295(n)+∑[A000295(n)])` -/
def P10143769917772474555.Spec : Prop :=
  ∀ n, P10143769917772474555.a n = A229788 n

end A229788

/-! ## A229788.P18102976570325675693

`(A079583(n)-A000217(n+1))*2`
-/

namespace A229788.P18102976570325675693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079583 n - A000217 (n + 1)) * 2

end

end A229788.P18102976570325675693

namespace A229788

/-- `(A079583(n)-A000217(n+1))*2` -/
def P18102976570325675693.Spec : Prop :=
  ∀ n, P18102976570325675693.a n = A229788 n

theorem P18102976570325675693.correct : P18102976570325675693.Spec := by
  intro n
  simp only [A229788, Nat.add_sub_cancel, A229788.P18102976570325675693.a, A229788.P15727209731233721255.a, A000217, A000217.P10269402890581615239.a, A079583, A079583.P17690850374586656008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A229788

/-! ## A229788.P4234480105600047814

`2*(A130104(n+1)-A131577(n+1))`
-/

namespace A229788.P4234480105600047814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130104 (n + 1) - A131577 (n + 1))

end

end A229788.P4234480105600047814

namespace A229788

/-- `2*(A130104(n+1)-A131577(n+1))` -/
def P4234480105600047814.Spec : Prop :=
  ∀ n, P4234480105600047814.a n = A229788 n

end A229788

/-! ## A229788.P7974960327342334886

`∑[∑[A029744(2*n+1)]-A265283(2*n)]`
-/

namespace A229788.P7974960327342334886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A265283 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P7974960327342334886

namespace A229788

/-- `∑[∑[A029744(2*n+1)]-A265283(2*n)]` -/
def P7974960327342334886.Spec : Prop :=
  ∀ n, P7974960327342334886.a n = A229788 n

end A229788

/-! ## A229788.P14808320295763084195

`A134638(n+1)%A099041(n)`
-/

namespace A229788.P14808320295763084195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134638 (n + 1)) (A099041 n)

end

end A229788.P14808320295763084195

namespace A229788

/-- `A134638(n+1)%A099041(n)` -/
def P14808320295763084195.Spec : Prop :=
  ∀ n, P14808320295763084195.a n = A229788 n

end A229788

/-! ## A229788.P2556155159596733968

`∑[and(A033484(n+4), A050488(n))]`
-/

namespace A229788.P2556155159596733968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033484 (n + 4)) (A050488 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229788.P2556155159596733968

namespace A229788

/-- `∑[and(A033484(n+4), A050488(n))]` -/
def P2556155159596733968.Spec : Prop :=
  ∀ n, P2556155159596733968.a n = A229788 n

end A229788

/-!
# A229790: Cube roots of difference of consecutive cubes, rounded.

The programs for A229790, the canonical program `A229790.P10516262743281457072` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229790 has offset 0).

The definition of A229790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229790.P10516262743281457072

`round((3*n*(n+1)+1)^(1/3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229790

/-- `round((3*n*(n+1)+1)^(1/3))` -/
def P10516262743281457072.Spec : Prop :=
  ∀ n, P10516262743281457072.a n = A229790 n

theorem P10516262743281457072.correct : P10516262743281457072.Spec := by
  intro n
  simp only [A229790]

end A229790

/-! ## A229790.P11847090933101965835

`A105209(Δ[n^3])`
-/

namespace A229790.P11847090933101965835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229790.P11847090933101965835

namespace A229790

/-- `A105209(Δ[n^3])` -/
def P11847090933101965835.Spec : Prop :=
  ∀ n, P11847090933101965835.a n = A229790 n

end A229790

/-! ## A229790.P6940373404241266507

`A048766(3*A029714(n))`
-/

namespace A229790.P6940373404241266507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (3 * A029714 n).toNat

end

end A229790.P6940373404241266507

namespace A229790

/-- `A048766(3*A029714(n))` -/
def P6940373404241266507.Spec : Prop :=
  ∀ n, P6940373404241266507.a n = A229790 n

end A229790

/-! ## A229790.P13035281685058899523

`A048766(A049730(n)-5)`
-/

namespace A229790.P13035281685058899523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A049730 n - 5).toNat

end

end A229790.P13035281685058899523

namespace A229790

/-- `A048766(A049730(n)-5)` -/
def P13035281685058899523.Spec : Prop :=
  ∀ n, P13035281685058899523.a n = A229790 n

end A229790

/-! ## A229790.P12540364462814127193

`A048766(lcm(3, A029714(n)))`
-/

namespace A229790.P12540364462814127193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm 3 (A029714 n))

end

end A229790.P12540364462814127193

namespace A229790

/-- `A048766(lcm(3, A029714(n)))` -/
def P12540364462814127193.Spec : Prop :=
  ∀ n, P12540364462814127193.a n = A229790 n

end A229790

/-!
# A229791: Integers generated by (a^k+b^k)/(a+b) for all possible positive integer values of a,b,k with b>a.

The programs for A229791, there is no canonical definition to state claims against.
-/

/-! ## A229791.P8115523402666838905

`comp[A227979(n+1)-1]+1`
-/

namespace A229791.P8115523402666838905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227979 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229791.P8115523402666838905

/-! ## A229791.P17449961156020336117

`comp[∪[A227979(n+1), A144555(n)]]`
-/

namespace A229791.P17449961156020336117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227979 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A229791.P17449961156020336117

/-! ## A229791.P15536445637483400874

`comp[∪[A227970(2*n+1), A227979(n+1)]]`
-/

namespace A229791.P15536445637483400874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227970 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227979 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A229791.P15536445637483400874

/-! ## A229791.P9110993555206793215

`eq[char[A227979(n+1)], A151933(n)]`
-/

namespace A229791.P9110993555206793215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227979 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A229791.P9110993555206793215

/-!
# A229792: Numbers n with the property that there exists an m such that n is the sum of m distinct nonzero digits (with 1<m<10) in a unique way.

The programs for A229792, there is no canonical definition to state claims against.
-/

/-! ## A229792.P7394984077224955471

`lt[A007913(A120861(n+1)), A000124(n)]`
-/

namespace A229792.P7394984077224955471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A120861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229792.P7394984077224955471

/-! ## A229792.P16285424750742770329

`lt[A007913(A120861(n+1)), A000217(n)]`
-/

namespace A229792.P16285424750742770329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A120861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229792.P16285424750742770329

/-! ## A229792.P12013733692491450966

`lt[A060117(A042959(2*n+1)), A004736(n+1)]`
-/

namespace A229792.P12013733692491450966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A042959 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229792.P12013733692491450966

/-! ## A229792.P12995499606955203452

`lt[A002260(n+1), A297519(A278148(3*n+1))]`
-/

namespace A229792.P12995499606955203452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A278148 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229792.P12995499606955203452

/-! ## A229792.P4664580749198667999

`lt[A245547(A160713(n)), A210976(n+1)]`
-/

namespace A229792.P4664580749198667999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245547 (A160713 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229792.P4664580749198667999

/-!
# A229793: The expansion of R(q)^-5 in powers of q where R() is the Rogers-Ramanujan continued fraction.

The programs for A229793, there is no canonical definition to state claims against.
-/

/-! ## A229793.P7751060377243200648

`A291678(A055999(n+3))`
-/

namespace A229793.P7751060377243200648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A055999 (n + 3)).toNat

end

end A229793.P7751060377243200648

/-! ## A229793.P401308193225777548

`A291678(eq[5, A025581(n)])`
-/

namespace A229793.P401308193225777548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229793.P401308193225777548

/-! ## A229793.P13476196137193800336

`A291678(Δ[A026054(n+3)])`
-/

namespace A229793.P13476196137193800336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (f1 (n + 1) - f1 n).toNat

end

end A229793.P13476196137193800336

/-! ## A229793.P8647194629037072225

`A291678(A000217(n+6)-6)`
-/

namespace A229793.P8647194629037072225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A000217 (n + 6) - 6).toNat

end

end A229793.P8647194629037072225

/-! ## A229793.P1497634301580062967

`A291678(A161680(n+7)-6)`
-/

namespace A229793.P1497634301580062967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A161680 (n + 7) - 6).toNat

end

end A229793.P1497634301580062967

/-! ## A229793.P17293223307728538342

`A291678(eq[6, A004736(n+1)])`
-/

namespace A229793.P17293223307728538342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229793.P17293223307728538342

/-! ## A229793.P14713329139765792702

`A291678(A167499(n+3)+2*n)`
-/

namespace A229793.P14713329139765792702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A229793.P14713329139765792702

/-! ## A229793.P12451520857068386588

`A291678(2*n+A133263(n+4)+3)`
-/

namespace A229793.P12451520857068386588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 ((2 * n : ℤ) + (A133263 (n + 4) + 3)).toNat

end

end A229793.P12451520857068386588

/-!
# A229795: Number of 2 X 2 0..n arrays with rows and columns in lexicographically nondecreasing order.

The programs for A229795, the canonical program `A229795.P15995861242573604168` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229795 has offset 1).

The definition of A229795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229795.P15995861242573604168

`(n+3)*∑[(n+1)²+1]+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229795

/-- `(n+3)*∑[(n+1)²+1]+1` -/
def P15995861242573604168.Spec : Prop :=
  ∀ n, (P15995861242573604168.a n : ℤ) = A229795 (n + 1)

theorem P15995861242573604168.correct : P15995861242573604168.Spec := by
  intro n
  simp only [A229795, Nat.add_sub_cancel]

end A229795

/-! ## A229795.P15435495684567144106

`∑[A172482(n)+A027379(n)+3]`
-/

namespace A229795.P15435495684567144106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172482 n + (A027379 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229795.P15435495684567144106

namespace A229795

/-- `∑[A172482(n)+A027379(n)+3]` -/
def P15435495684567144106.Spec : Prop :=
  ∀ n, P15435495684567144106.a n = A229795 (n + 1)

end A229795

/-! ## A229795.P6441304197098980066

`∑[Δ[A014820(n)]-A253145(n)]`
-/

namespace A229795.P6441304197098980066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229795.P6441304197098980066

namespace A229795

/-- `∑[Δ[A014820(n)]-A253145(n)]` -/
def P6441304197098980066.Spec : Prop :=
  ∀ n, P6441304197098980066.a n = A229795 (n + 1)

end A229795

/-! ## A229795.P17747445351213007447

`Δ[A024166(n)+A005585(n+1)]`
-/

namespace A229795.P17747445351213007447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 n + A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229795.P17747445351213007447

namespace A229795

/-- `Δ[A024166(n)+A005585(n+1)]` -/
def P17747445351213007447.Spec : Prop :=
  ∀ n, P17747445351213007447.a n = A229795 (n + 1)

end A229795

/-! ## A229795.P9444660776968170155

`Δ[A244864(n)-A277935(n+1)]`
-/

namespace A229795.P9444660776968170155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229795.P9444660776968170155

namespace A229795

/-- `Δ[A244864(n)-A277935(n+1)]` -/
def P9444660776968170155.Spec : Prop :=
  ∀ n, P9444660776968170155.a n = A229795 (n + 1)

end A229795

/-! ## A229795.P6038313786981465611

`floor(A010024(n+2)/10)`
-/

namespace A229795.P6038313786981465611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010024 (n + 2) : ℚ) / 10⌋

end

end A229795.P6038313786981465611

namespace A229795

/-- `floor(A010024(n+2)/10)` -/
def P6038313786981465611.Spec : Prop :=
  ∀ n, P6038313786981465611.a n = A229795 (n + 1)

end A229795

/-! ## A229795.P12810106484147199903

`round(A010024(n+2)/10)%A030082(n+1)`
-/

namespace A229795.P12810106484147199903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A010024 (n + 2) : ℚ) / 10)) (A030082 (n + 1))

end

end A229795.P12810106484147199903

namespace A229795

/-- `round(A010024(n+2)/10)%A030082(n+1)` -/
def P12810106484147199903.Spec : Prop :=
  ∀ n, P12810106484147199903.a n = A229795 (n + 1)

end A229795

/-!
# A229796: Number of 3 X 3 0..n arrays with rows and columns in lexicographically nondecreasing order.

The programs for A229796, there is no canonical definition to state claims against.
-/

/-! ## A229796.P15517440058947184414

`A229794(∑[n+2]+4)`
-/

namespace A229796.P15517440058947184414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229796.P15517440058947184414

/-! ## A229796.P5814442124498906955

`A229794(A167614(n+1))+A055959(n)`
-/

namespace A229796.P5814442124498906955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A167614 (n + 1)).toNat + A055959 n

end

end A229796.P5814442124498906955

/-! ## A229796.P12173426814252104145

`A229794(A167614(n+1))+A122265(n)`
-/

namespace A229796.P12173426814252104145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A167614 (n + 1)).toNat + A122265 n

end

end A229796.P12173426814252104145

/-! ## A229796.P5846217440669583642

`A229794(A167614(n+1))+A185227(n)`
-/

namespace A229796.P5846217440669583642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A167614 (n + 1)).toNat + A185227 n

end

end A229796.P5846217440669583642

/-! ## A229796.P5434283501579076826

`A250002(n)+A229794(A167614(n+1))`
-/

namespace A229796.P5434283501579076826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + A229794 (A167614 (n + 1)).toNat

end

end A229796.P5434283501579076826

/-!
# A229797: Number of 4X4 0..n arrays with rows and columns in lexicographically nondecreasing order.

The programs for A229797, there is no canonical definition to state claims against.
-/

/-! ## A229797.P8434506699606984230

`A229794(A141214(n)+7)`
-/

namespace A229797.P8434506699606984230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A141214 n + 7).toNat

end

end A229797.P8434506699606984230

/-! ## A229797.P4661225275044675971

`A229794(A052905(n)+9)`
-/

namespace A229797.P4661225275044675971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A052905 n + 9).toNat

end

end A229797.P4661225275044675971

/-! ## A229797.P8856262602333974946

`A229794(A055999(n)+10)`
-/

namespace A229797.P8856262602333974946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A055999 n + 10).toNat

end

end A229797.P8856262602333974946

/-! ## A229797.P17010086523981113110

`A229794(eq[5, A066657(n)])`
-/

namespace A229797.P17010086523981113110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229797.P17010086523981113110

/-!
# A229798: Number of 5X5 0..n arrays with rows and columns in lexicographically nondecreasing order.

The programs for A229798, there is no canonical definition to state claims against.
-/

/-! ## A229798.P16645626326408781657

`A229794(eq[6, A131818(n+1)])`
-/

namespace A229798.P16645626326408781657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229798.P16645626326408781657

/-!
# A229799: 

The programs for A229799, there is no canonical definition to state claims against.
-/

/-! ## A229799.P11585152776687437027

`A229794(eq[7, A131818(n+1)])`
-/

namespace A229799.P11585152776687437027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229799.P11585152776687437027

