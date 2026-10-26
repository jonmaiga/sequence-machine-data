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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159800: Triangle read by rows in which row n contains a finite triangle as shown below.

The programs for A159800, there is no canonical definition to state claims against.
-/

/-! ## A159800.P17862834939557555116

`A099563(n)+A086694(A086698(n+1))`
-/

namespace A159800.P17862834939557555116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n + A086694 (A086698 (n + 1)).toNat

end

end A159800.P17862834939557555116

/-!
# A159801: Partial sums of A153001.

The programs for A159801, there is no canonical definition to state claims against.
-/

/-! ## A159801.P12843429826032350780

`∑[A153001(n)]`
-/

namespace A159801.P12843429826032350780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P12843429826032350780

/-! ## A159801.P2875594200914090119

`∑[A152980(n+64)]`
-/

namespace A159801.P2875594200914090119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 64)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P2875594200914090119

/-! ## A159801.P18016441735170482407

`∑[abs(Δ[A153006((32/2)²+n)])]`
-/

namespace A159801.P18016441735170482407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (SequenceMachineLib.roundAway (((32 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P18016441735170482407

/-! ## A159801.P3908013607460152602

`∑[abs(Δ[(-1)^n*A151555(n)])]`
-/

namespace A159801.P3908013607460152602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A151555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P3908013607460152602

/-! ## A159801.P10467963888635086517

`∑[A147646(2*lt[xor(n, 2*n), 2*n]-(n+1))/4]`
-/

namespace A159801.P10467963888635086517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n - (n + 1)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P10467963888635086517

/-! ## A159801.P8133787022347301896

`A153001(n)+a(A023443(n))` with `a(0)=4`
-/

namespace A159801.P8133787022347301896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A153001 n + a (A023443 n).toNat

end

end A159801.P8133787022347301896

/-! ## A159801.P7859384252071803325

`∑[A159785(A004757(n+1))/3]`
-/

namespace A159801.P7859384252071803325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159785 (A004757 (n + 1)).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P7859384252071803325

/-! ## A159801.P2512323851851196999

`∑[A151555(n+1)+A151555(n)]`
-/

namespace A159801.P2512323851851196999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 (n + 1) + A151555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P2512323851851196999

/-! ## A159801.P10126869698783834853

`∑[A254667(Δ[A153006((32/2)²+n)])]`
-/

namespace A159801.P10126869698783834853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (SequenceMachineLib.roundAway (((32 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159801.P10126869698783834853

/-! ## A159801.P7837611087375164158

`A152980(n+1)+A159794(n+1)-1`
-/

namespace A159801.P7837611087375164158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1) + (A159794 (n + 1) - 1)

end

end A159801.P7837611087375164158

/-!
# A159802: Number of primes q with (2m)^2+1 <= q < (2m+1)^2-2m.

The programs for A159802, the canonical program `A159802.P4422141938552360417` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159802 has offset 1).

The definition of A159802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159802.P4422141938552360417

`A000720((2*(n+1)+1)²-2*(n+1)-1)-A000720((2*(n+1))²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159802

/-- `A000720((2*(n+1)+1)²-2*(n+1)-1)-A000720((2*(n+1))²)` -/
def P4422141938552360417.Spec : Prop :=
  ∀ n, P4422141938552360417.a n = A159802 (n + 1)

theorem P4422141938552360417.correct : P4422141938552360417.Spec := by
  intro n
  simp only [A159802, Nat.add_sub_cancel]

end A159802

/-! ## A159802.P6976429120769444539

`A089610(2*(n+1))`
-/

namespace A159802.P6976429120769444539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (2 * (n + 1))

end

end A159802.P6976429120769444539

namespace A159802

/-- `A089610(2*(n+1))` -/
def P6976429120769444539.Spec : Prop :=
  ∀ n, P6976429120769444539.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P1942361059514619374

`A220492(4*(n+1))`
-/

namespace A159802.P1942361059514619374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (4 * (n + 1))

end

end A159802.P1942361059514619374

namespace A159802

/-- `A220492(4*(n+1))` -/
def P1942361059514619374.Spec : Prop :=
  ∀ n, P1942361059514619374.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P4100451054343033187

`A089610(n+2+n)%19`
-/

namespace A159802.P4100451054343033187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089610 (n + 2 + n)) 19

end

end A159802.P4100451054343033187

namespace A159802

/-- `A089610(n+2+n)%19` -/
def P4100451054343033187.Spec : Prop :=
  ∀ n, P4100451054343033187.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P17174352740159064048

`lcm((-1)^n, A089610(record[2-xor(1, -n)]))`
-/

namespace A159802.P17174352740159064048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A089610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A159802.P17174352740159064048

namespace A159802

/-- `lcm((-1)^n, A089610(record[2-xor(1, -n)]))` -/
def P17174352740159064048.Spec : Prop :=
  ∀ n, (P17174352740159064048.a n : ℤ) = A159802 (n + 1)

end A159802

/-! ## A159802.P4996409776755447503

`A000027(A089610(n+2+n))`
-/

namespace A159802.P4996409776755447503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A089610 (n + 2 + n)).toNat

end

end A159802.P4996409776755447503

namespace A159802

/-- `A000027(A089610(n+2+n))` -/
def P4996409776755447503.Spec : Prop :=
  ∀ n, P4996409776755447503.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P13944579657603756681

`A089869(A089610(Δ[n²]+1))`
-/

namespace A159802.P13944579657603756681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A089610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A159802.P13944579657603756681

namespace A159802

/-- `A089869(A089610(Δ[n²]+1))` -/
def P13944579657603756681.Spec : Prop :=
  ∀ n, P13944579657603756681.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P6745829411017044282

`or(A089610(n+2+n), A151878(n))`
-/

namespace A159802.P6745829411017044282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089610 (n + 2 + n)) (A151878 n)

end

end A159802.P6745829411017044282

namespace A159802

/-- `or(A089610(n+2+n), A151878(n))` -/
def P6745829411017044282.Spec : Prop :=
  ∀ n, P6745829411017044282.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P3499563219399565865

`A108309(2*(n+1))-A159805(n+1)`
-/

namespace A159802.P3499563219399565865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108309 (2 * (n + 1)) - A159805 (n + 1)

end

end A159802.P3499563219399565865

namespace A159802

/-- `A108309(2*(n+1))-A159805(n+1)` -/
def P3499563219399565865.Spec : Prop :=
  ∀ n, P3499563219399565865.a n = A159802 (n + 1)

end A159802

/-! ## A159802.P6499103295307261578

`A089610(n+2+n)/A007318(C(2, n))`
-/

namespace A159802.P6499103295307261578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089610 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A159802.P6499103295307261578

namespace A159802

/-- `A089610(n+2+n)/A007318(C(2, n))` -/
def P6499103295307261578.Spec : Prop :=
  ∀ n, P6499103295307261578.a n = (A159802 (n + 1) : ℚ)

end A159802

/-!
# A159803: Number of primes p with (2m+1)^2 - 2m <= p < (2m+1)^2.

The programs for A159803, there is no canonical definition to state claims against.
-/

/-! ## A159803.P8947183762212206467

`A094189(2*n+3)`
-/

namespace A159803.P8947183762212206467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (2 * n + 3)

end

end A159803.P8947183762212206467

/-! ## A159803.P14585660237166378957

`A220492(4*(n+1)+1)`
-/

namespace A159803.P14585660237166378957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (4 * (n + 1) + 1)

end

end A159803.P14585660237166378957

/-! ## A159803.P12084497131068799010

`A094189(n+3+n)%23`
-/

namespace A159803.P12084497131068799010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094189 (n + 3 + n)) 23

end

end A159803.P12084497131068799010

/-! ## A159803.P1818159199434669420

`or(char[1], A094189(Δ[(n+1)²]))`
-/

namespace A159803.P1818159199434669420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A094189 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A159803.P1818159199434669420

/-! ## A159803.P7841585285030385275

`A000027(A094189(n+3+n))`
-/

namespace A159803.P7841585285030385275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A094189 (n + 3 + n)).toNat

end

end A159803.P7841585285030385275

/-! ## A159803.P277167761353400988

`A094189(n+3+n)/A007318(C(2, n))`
-/

namespace A159803.P277167761353400988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094189 (n + 3 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A159803.P277167761353400988

/-! ## A159803.P16071472588819456966

`A094189(n+3+n)/A000108(C(2, n+2))`
-/

namespace A159803.P16071472588819456966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094189 (n + 3 + n) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A159803.P16071472588819456966

/-! ## A159803.P16021242382953754657

`A094189(Δ[(n+1)²])/A000108(and(1, n-1))`
-/

namespace A159803.P16021242382953754657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000108 (Int.land 1 ((n : ℤ) - 1)).toNat : ℚ)

end

end A159803.P16021242382953754657

/-!
# A159804: Number of primes q with (2n-1)^2+1 <= q < (2n)^2-(2n-1).

The programs for A159804, there is no canonical definition to state claims against.
-/

/-! ## A159804.P3571577567078577293

`A089610(Δ[n²])`
-/

namespace A159804.P3571577567078577293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A159804.P3571577567078577293

/-! ## A159804.P1288227011323386030

`A220492(4*n+2)`
-/

namespace A159804.P1288227011323386030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (4 * n + 2)

end

end A159804.P1288227011323386030

/-! ## A159804.P5656665442340672173

`A089610(2*n+1)%17`
-/

namespace A159804.P5656665442340672173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089610 (2 * n + 1)) 17

end

end A159804.P5656665442340672173

/-! ## A159804.P18246355923447714095

`xor(2, xor(2, A089610(n+1+n)))`
-/

namespace A159804.P18246355923447714095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A089610 (n + 1 + n)))

end

end A159804.P18246355923447714095

/-! ## A159804.P3340932184429750707

`A000027(A089610(2*n+1))`
-/

namespace A159804.P3340932184429750707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A089610 (2 * n + 1)).toNat

end

end A159804.P3340932184429750707

/-! ## A159804.P17452646585169689962

`A028310(A089610(n+1+n))`
-/

namespace A159804.P17452646585169689962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A089610 (n + 1 + n)).toNat

end

end A159804.P17452646585169689962

/-! ## A159804.P13303614723552413140

`A000196(A089610(2*n+1)²)`
-/

namespace A159804.P13303614723552413140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A089610 (2 * n + 1) ^ 2).toNat

end

end A159804.P13303614723552413140

/-! ## A159804.P1177237213159618381

`A001222(2^A089610(2*n+1))`
-/

namespace A159804.P1177237213159618381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A089610 (2 * n + 1) : ℤ))).toNat

end

end A159804.P1177237213159618381

/-! ## A159804.P15591172361034026585

`filter[A089610(2*n+1), A102609(#)]`
-/

namespace A159804.P15591172361034026585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A159804.P15591172361034026585

/-! ## A159804.P13708371732168993984

`filter[A089610(2*n+1), A161996(#)]`
-/

namespace A159804.P13708371732168993984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A159804.P13708371732168993984

/-!
# A159805: Number of primes p with (2m)^2-(2m-1) <= p < (2m)^2.

The programs for A159805, there is no canonical definition to state claims against.
-/

/-! ## A159805.P4653594894589234883

`A220492(4*n+3)`
-/

namespace A159805.P4653594894589234883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (4 * n + 3)

end

end A159805.P4653594894589234883

/-! ## A159805.P8206554793202431319

`A094189(Δ[n²]+ceil(acot(n)))`
-/

namespace A159805.P8206554793202431319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A159805.P8206554793202431319

/-! ## A159805.P16451496185616884106

`A094189(2*(abs(1-n)+2))`
-/

namespace A159805.P16451496185616884106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (2 * (|1 - (n : ℤ)| + 2)).toNat

end

end A159805.P16451496185616884106

/-! ## A159805.P1927049025203160204

`A094189(2*(n+1))-floor(acot(n))`
-/

namespace A159805.P1927049025203160204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (2 * (n + 1)) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A159805.P1927049025203160204

/-! ## A159805.P16862214781278054111

`gcd(floor(acot(n)), A094189(2*n+2))`
-/

namespace A159805.P16862214781278054111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A094189 (2 * n + 2))

end

end A159805.P16862214781278054111

/-! ## A159805.P13810342185793366140

`A094189(2*(n+1))-A000007(n)`
-/

namespace A159805.P13810342185793366140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (2 * (n + 1)) - A000007 n

end

end A159805.P13810342185793366140

/-! ## A159805.P11206060932382560763

`A108309(2*(n+1))-A159802(n+1)`
-/

namespace A159805.P11206060932382560763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108309 (2 * (n + 1)) - A159802 (n + 1)

end

end A159805.P11206060932382560763

/-! ## A159805.P4596612924771290451

`A014085(2*n+1)-A089610(2*n+1)`
-/

namespace A159805.P4596612924771290451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (2 * n + 1) - A089610 (2 * n + 1)

end

end A159805.P4596612924771290451

/-! ## A159805.P1982968178548041571

`A094189(2*(n+1))-A010051(2*(n+1))`
-/

namespace A159805.P1982968178548041571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (2 * (n + 1)) - A010051 (2 * (n + 1))

end

end A159805.P1982968178548041571

/-! ## A159805.P640750344038102805

`A108309(2*(n+1))-A089610(2*(n+1))`
-/

namespace A159805.P640750344038102805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108309 (2 * (n + 1)) - A089610 (2 * (n + 1))

end

end A159805.P640750344038102805

/-!
# A159807: Numerator of Hermite(n, 3/22).

The programs for A159807, the canonical program `A159807.P15850289569509415112` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159807 has offset 0).

The definition of A159807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159807.P15850289569509415112

`3*a(n-1)-242*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159807

/-- `3*a(n-1)-242*(n-1)*a(n-2)` -/
def P15850289569509415112.Spec : Prop :=
  ∀ n, P15850289569509415112.a n = A159807 n

theorem P15850289569509415112.correct : P15850289569509415112.Spec := by
  intro n
  simp only [A159807]

end A159807

/-!
# A159813: Expansion of eta(q) * eta(q^4) * eta(q^14)^4 / (eta(q^2) * eta(q^7) * eta(q^28)) in powers of q.

The programs for A159813, there is no canonical definition to state claims against.
-/

/-! ## A159813.P15730284681987793352

`A215556(7*(n+1))`
-/

namespace A159813.P15730284681987793352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215556 (7 * (n + 1))

end

end A159813.P15730284681987793352

/-!
# A159816: Seven-digit terms in A023086.

The programs for A159816, there is no canonical definition to state claims against.
-/

/-! ## A159816.P1343059414591087950

`A023086(n+14)`
-/

namespace A159816.P1343059414591087950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023086 (n + 14)

end

end A159816.P1343059414591087950

/-!
# A159817: Coefficients of L-series for elliptic curve "80b2": y^2 = x^3 - x^2 - x.

The programs for A159817, there is no canonical definition to state claims against.
-/

/-! ## A159817.P15908530725036179022

`(-1)^n*A030205(n)`
-/

namespace A159817.P15908530725036179022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030205 n

end

end A159817.P15908530725036179022

/-! ## A159817.P10500392156419754940

`A030205(n)*A033999(n)`
-/

namespace A159817.P10500392156419754940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030205 n * A033999 n

end

end A159817.P10500392156419754940

/-! ## A159817.P2269112950846238124

`A030205(n)/A033999(n+2)`
-/

namespace A159817.P2269112950846238124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030205 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A159817.P2269112950846238124

/-! ## A159817.P15849351852497059980

`A030205(n)*A056594(2*n)`
-/

namespace A159817.P15849351852497059980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030205 n * A056594 (2 * n)

end

end A159817.P15849351852497059980

/-! ## A159817.P17119853427687369463

`A030205(n)*A034947(2*n+1)`
-/

namespace A159817.P17119853427687369463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030205 n * A034947 (2 * n + 1)

end

end A159817.P17119853427687369463

/-!
# A159818: Expansion of f(q) * f(q^5) in powers of q where f() is a Ramanujan theta function.

The programs for A159818, there is no canonical definition to state claims against.
-/

/-! ## A159818.P1215814653827421443

`(-1)^n*A030202(n)`
-/

namespace A159818.P1215814653827421443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030202 n

end

end A159818.P1215814653827421443

/-! ## A159818.P7542120984255474514

`A030202(n)*A033999(n)`
-/

namespace A159818.P7542120984255474514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030202 n * A033999 n

end

end A159818.P7542120984255474514

/-! ## A159818.P11907851176912977109

`A030202(n)*A057077(2*n)`
-/

namespace A159818.P11907851176912977109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030202 n * A057077 (2 * n)

end

end A159818.P11907851176912977109

/-! ## A159818.P17761238726722859422

`A030202(2*A185452(n))`
-/

namespace A159818.P17761238726722859422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030202 (2 * A185452 n).toNat

end

end A159818.P17761238726722859422

/-! ## A159818.P8265166017165553143

`A030202(n)*A049310(A000217(2*(n+2)))`
-/

namespace A159818.P8265166017165553143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030202 n * A049310 (A000217 (2 * (n + 2))).toNat

end

end A159818.P8265166017165553143

/-!
# A159819: Coefficients of L-series for elliptic curve "48a4": y^2 = x^3 + x^2 + x.

The programs for A159819, there is no canonical definition to state claims against.
-/

/-! ## A159819.P8531104779396133789

`(-1)^n*A030188(n)`
-/

namespace A159819.P8531104779396133789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030188 n

end

end A159819.P8531104779396133789

/-! ## A159819.P8197191400760338664

`A030188(n)*A033999(n)`
-/

namespace A159819.P8197191400760338664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 n * A033999 n

end

end A159819.P8197191400760338664

/-! ## A159819.P7661043922894454540

`A271231(Δ[n²])`
-/

namespace A159819.P7661043922894454540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A159819.P7661043922894454540

/-! ## A159819.P5518047547266898403

`A271231(2*n+1)%(n+2)`
-/

namespace A159819.P5518047547266898403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271231 (2 * n + 1)) (n + 2 : ℤ)

end

end A159819.P5518047547266898403

/-! ## A159819.P667678086412902931

`A271231(2*n+1)+A271231(2*n)`
-/

namespace A159819.P667678086412902931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (2 * n + 1) + A271231 (2 * n)

end

end A159819.P667678086412902931

/-! ## A159819.P84208104499073153

`A030188(n)*A100051(A005408(n)+n)`
-/

namespace A159819.P84208104499073153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 n * A100051 (A005408 n + (n : ℤ)).toNat

end

end A159819.P84208104499073153

/-! ## A159819.P14130846815086624787

`A261277(n)/A057079(n)`
-/

namespace A159819.P14130846815086624787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261277 n : ℚ) / (A057079 n : ℚ)

end

end A159819.P14130846815086624787

/-! ## A159819.P8422654070753888451

`A030188(n)*A100051(n²+1)`
-/

namespace A159819.P8422654070753888451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030188 n * A100051 (n ^ 2 + 1)

end

end A159819.P8422654070753888451

/-!
# A159827: a(n) = number of n-digit terms in A023086.

The programs for A159827, there is no canonical definition to state claims against.
-/

/-! ## A159827.P16921605049263968009

`and(10^n-5^n+1, A173886(floor(2^(n-1))))`
-/

namespace A159827.P16921605049263968009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((10 ^ n : ℤ) - (5 ^ n : ℤ) + 1) (A173886 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A159827.P16921605049263968009

/-! ## A159827.P12231115363313986126

`A274878((n+1)*2^∑{e}[n+1, #]*∑[char[4*n]])`
-/

namespace A159827.P12231115363313986126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274878 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A159827.P12231115363313986126

/-! ## A159827.P10861917406963098314

`A028647(A075161(∑[n]))`
-/

namespace A159827.P10861917406963098314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A075161 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A159827.P10861917406963098314

/-!
# A159828: a(n) is smallest number m > 0 such that m^2 + n^2 + 1 is prime.

The programs for A159828, there is no canonical definition to state claims against.
-/

/-! ## A159828.P312574906573648409

`A085099((n+1)²+1)`
-/

namespace A159828.P312574906573648409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 ((n + 1) ^ 2 + 1)

end

end A159828.P312574906573648409

/-! ## A159828.P14419275495725881511

`sqrt(A059844((n+1)²+1))`
-/

namespace A159828.P14419275495725881511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059844 ((n + 1) ^ 2 + 1) : ℝ)

end

end A159828.P14419275495725881511

/-! ## A159828.P14833204393904956746

`A316568((n+1)²+1)+1`
-/

namespace A159828.P14833204393904956746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316568 ((n + 1) ^ 2 + 1) + 1

end

end A159828.P14833204393904956746

/-! ## A159828.P4946077046197251113

`floor(sqrt(A059844(∑[2*n+1]+1)))`
-/

namespace A159828.P4946077046197251113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059844 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A159828.P4946077046197251113

/-! ## A159828.P10092703154777503032

`A085099(A002522(n+1))%70`
-/

namespace A159828.P10092703154777503032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085099 (A002522 (n + 1)).toNat) 70

end

end A159828.P10092703154777503032

/-! ## A159828.P8403739732087782363

`A000027(A085099(∑[2*n+1]+1))`
-/

namespace A159828.P8403739732087782363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A085099 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A159828.P8403739732087782363

/-! ## A159828.P7858560189401385696

`gcd(A000038(n), A085099(A002522(n+1)))`
-/

namespace A159828.P7858560189401385696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A085099 (A002522 (n + 1)).toNat)

end

end A159828.P7858560189401385696

/-! ## A159828.P1262511390709604494

`lcm(A000034(n), A085099(A002522(n+1)))`
-/

namespace A159828.P1262511390709604494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A085099 (A002522 (n + 1)).toNat)

end

end A159828.P1262511390709604494

/-! ## A159828.P8162939683937939001

`or(A000007(n), A085099(A002522(n+1)))`
-/

namespace A159828.P8162939683937939001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A085099 (A002522 (n + 1)).toNat)

end

end A159828.P8162939683937939001

/-!
# A159829: a(n) is the smallest natural number m such that n^3+m^3+1^3 is prime.

The programs for A159829, there is no canonical definition to state claims against.
-/

/-! ## A159829.P11559120619818185773

`A072943(A066023(n+1)+1)`
-/

namespace A159829.P11559120619818185773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072943 (A066023 (n + 1) + 1).toNat

end

end A159829.P11559120619818185773

/-!
# A159830: Exponential Riordan array [exp(exp(x)-1-2x),x].

The programs for A159830, there is no canonical definition to state claims against.
-/

/-! ## A159830.P2054434986902498010

`A007318(n)*A126617(A025581(n))`
-/

namespace A159830.P2054434986902498010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126617 (A025581 n).toNat

end

end A159830.P2054434986902498010

/-! ## A159830.P8474503692847503578

`sqrt(A008459(n))*A126617(A025581(n))`
-/

namespace A159830.P8474503692847503578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A126617 (A025581 n).toNat : ℝ)

end

end A159830.P8474503692847503578

/-! ## A159830.P15768848295326441512

`Δ[A102363(n)]*A126617(A025581(n))`
-/

namespace A159830.P15768848295326441512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A126617 (A025581 n).toNat

end

end A159830.P15768848295326441512

/-! ## A159830.P8081008398267722141

`(A014473(n)+1)*A126617(A025581(n))`
-/

namespace A159830.P8081008398267722141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A126617 (A025581 n).toNat

end

end A159830.P8081008398267722141

/-! ## A159830.P11374469998326143440

`A065033(A109128(n))*A126617(A025581(n))`
-/

namespace A159830.P11374469998326143440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A109128 n).toNat * A126617 (A025581 n).toNat

end

end A159830.P11374469998326143440

/-!
# A159833: a(n) = n^2*(n^2 + 15)/4.

The programs for A159833, the canonical program `A159833.P13326523052479323052` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159833 has offset 0).

The definition of A159833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²+15)/4` (program `A159833.P16004364825474779552`, by `A159833.P16004364825474779552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159833.P16004364825474779552

`n²*(n²+15)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159833.P16004364825474779552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n ^ 2 + 15) : ℚ) / 4

end

end A159833.P16004364825474779552

namespace A159833

/-- `n²*(n²+15)/4` -/
def P16004364825474779552.Spec : Prop :=
  ∀ n, P16004364825474779552.a n = (A159833 n : ℚ)

theorem P16004364825474779552.correct : P16004364825474779552.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A159833, Nat.add_sub_cancel, A159833.P16004364825474779552.a, A159833.P13326523052479323052.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A159833, Nat.add_sub_cancel, A159833.P16004364825474779552.a, A159833.P13326523052479323052.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159833

/-! ## A159833.P13326523052479323052

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=19, a(3)=54, a(4)=124`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159833

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13326523052479323052.Spec : Prop :=
  ∀ n, P13326523052479323052.a n = A159833 n

theorem P13326523052479323052.correct : P13326523052479323052.Spec := by
  intro n
  simp only [A159833]

end A159833

/-! ## A159833.P1606736165872328281

`4-15*A000292(n+1)+6*A000332(n+4)+20*A000217(n+1)-15*(n+1)`
-/

namespace A159833.P1606736165872328281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 15 * A000292 (n + 1) + 6 * A000332 (n + 4) + 20 * A000217 (n + 1) - (15 * (n + 1) : ℤ)

end

end A159833.P1606736165872328281

namespace A159833

/-- `4-15*A000292(n+1)+6*A000332(n+4)+20*A000217(n+1)-15*(n+1)` -/
def P1606736165872328281.Spec : Prop :=
  ∀ n, P1606736165872328281.a n = A159833 n

end A159833

/-! ## A159833.P5683894264666442092

`(2*n)²+C(n, 2)*∑[n]`
-/

namespace A159833.P5683894264666442092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159833.P5683894264666442092

namespace A159833

/-- `(2*n)²+C(n, 2)*∑[n]` -/
def P5683894264666442092.Spec : Prop :=
  ∀ n, (P5683894264666442092.a n : ℤ) = A159833 n

end A159833

/-! ## A159833.P6231366369018147043

`A006011(n)+(2*n)²`
-/

namespace A159833.P6231366369018147043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + ((2 * n) ^ 2 : ℤ)

end

end A159833.P6231366369018147043

namespace A159833

/-- `A006011(n)+(2*n)²` -/
def P6231366369018147043.Spec : Prop :=
  ∀ n, P6231366369018147043.a n = A159833 n

end A159833

/-! ## A159833.P9619806876701719370

`(2*n)²+∑[n]*A000217(abs(1-n))`
-/

namespace A159833.P9619806876701719370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000217 |1 - (n : ℤ)|.toNat

end

end A159833.P9619806876701719370

namespace A159833

/-- `(2*n)²+∑[n]*A000217(abs(1-n))` -/
def P9619806876701719370.Spec : Prop :=
  ∀ n, P9619806876701719370.a n = A159833 n

end A159833

/-! ## A159833.P793876042170262844

`A016742(n)+A006011(n)`
-/

namespace A159833.P793876042170262844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A006011 n

end

end A159833.P793876042170262844

namespace A159833

/-- `A016742(n)+A006011(n)` -/
def P793876042170262844.Spec : Prop :=
  ∀ n, P793876042170262844.a n = A159833 n

end A159833

/-! ## A159833.P8609489722658651549

`A022264(n)+A006528(n)`
-/

namespace A159833.P8609489722658651549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + A006528 n

end

end A159833.P8609489722658651549

namespace A159833

/-- `A022264(n)+A006528(n)` -/
def P8609489722658651549.Spec : Prop :=
  ∀ n, P8609489722658651549.a n = A159833 n

end A159833

/-! ## A159833.P3268979777329955806

`A352405(n+1)+A049450(n)`
-/

namespace A159833.P3268979777329955806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) + A049450 n

end

end A159833.P3268979777329955806

namespace A159833

/-- `A352405(n+1)+A049450(n)` -/
def P3268979777329955806.Spec : Prop :=
  ∀ n, P3268979777329955806.a n = A159833 n

end A159833

/-! ## A159833.P7479722999294634751

`A066375(n+1)-A110325(n)`
-/

namespace A159833.P7479722999294634751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1) - A110325 n

end

end A159833.P7479722999294634751

namespace A159833

/-- `A066375(n+1)-A110325(n)` -/
def P7479722999294634751.Spec : Prop :=
  ∀ n, P7479722999294634751.a n = A159833 n

end A159833

/-! ## A159833.P2235000268648842151

`A000007(n)+A008488(n)-2`
-/

namespace A159833.P2235000268648842151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A008488 n - 2)

end

end A159833.P2235000268648842151

namespace A159833

/-- `A000007(n)+A008488(n)-2` -/
def P2235000268648842151.Spec : Prop :=
  ∀ n, P2235000268648842151.a n = A159833 n

end A159833

/-! ## A159833.P4229133153285497711

`A001621(n)+A022264(n)-A002411(n)`
-/

namespace A159833.P4229133153285497711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n + (A022264 n - A002411 n)

end

end A159833.P4229133153285497711

namespace A159833

/-- `A001621(n)+A022264(n)-A002411(n)` -/
def P4229133153285497711.Spec : Prop :=
  ∀ n, P4229133153285497711.a n = A159833 n

end A159833

/-! ## A159833.P17927878773032857191

`∑[(A167499(n)-A103517(n))*A004273(n)]`
-/

namespace A159833.P17927878773032857191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167499 n - A103517 n) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159833.P17927878773032857191

namespace A159833

/-- `∑[(A167499(n)-A103517(n))*A004273(n)]` -/
def P17927878773032857191.Spec : Prop :=
  ∀ n, P17927878773032857191.a n = A159833 n

end A159833

/-! ## A159833.P6178014823193669471

`A008488(n)-A036453(2*n+1)`
-/

namespace A159833.P6178014823193669471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008488 n - A036453 (2 * n + 1)

end

end A159833.P6178014823193669471

namespace A159833

/-- `A008488(n)-A036453(2*n+1)` -/
def P6178014823193669471.Spec : Prop :=
  ∀ n, P6178014823193669471.a n = A159833 n

end A159833

/-! ## A159833.P4445145073872347067

`(2*n)²+A001971(2*n+1)*A130519(2*n)`
-/

namespace A159833.P4445145073872347067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + A001971 (2 * n + 1) * A130519 (2 * n)

end

end A159833.P4445145073872347067

namespace A159833

/-- `(2*n)²+A001971(2*n+1)*A130519(2*n)` -/
def P4445145073872347067.Spec : Prop :=
  ∀ n, P4445145073872347067.a n = A159833 n

end A159833

/-! ## A159833.P5991454615516734081

`A054925(n²)+(2*n)²`
-/

namespace A159833.P5991454615516734081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n ^ 2) + ((2 * n) ^ 2 : ℤ)

end

end A159833.P5991454615516734081

namespace A159833

/-- `A054925(n²)+(2*n)²` -/
def P5991454615516734081.Spec : Prop :=
  ∀ n, P5991454615516734081.a n = A159833 n

end A159833

/-! ## A159833.P3649110688554381557

`A011848(n²)+(2*n)²`
-/

namespace A159833.P3649110688554381557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n ^ 2) + ((2 * n) ^ 2 : ℤ)

end

end A159833.P3649110688554381557

namespace A159833

/-- `A011848(n²)+(2*n)²` -/
def P3649110688554381557.Spec : Prop :=
  ∀ n, P3649110688554381557.a n = A159833 n

end A159833

/-!
# A159834: Coefficient array of Hermite_H(n, (x-1)/sqrt(2))/(sqrt(2))^n.

The programs for A159834, the canonical program `A159834.P5970022671989589812` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159834 has offset 0).

The definition of A159834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159834.P5970022671989589812

`C(row(n), col(n))*A001464(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159834

/-- `C(row(n), col(n))*A001464(row(n)-col(n))` -/
def P5970022671989589812.Spec : Prop :=
  ∀ n, P5970022671989589812.a n = A159834 n

theorem P5970022671989589812.correct : P5970022671989589812.Spec := by
  intro n
  simp only [A159834]

end A159834

/-! ## A159834.P7982339477551282037

`A007318(n)*A001464(A025581(n))`
-/

namespace A159834.P7982339477551282037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001464 (A025581 n).toNat

end

end A159834.P7982339477551282037

namespace A159834

/-- `A007318(n)*A001464(A025581(n))` -/
def P7982339477551282037.Spec : Prop :=
  ∀ n, P7982339477551282037.a n = A159834 n

end A159834

/-! ## A159834.P15092102428483641091

`abs(A108086(n))*A001464(A025581(n))`
-/

namespace A159834.P15092102428483641091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A001464 (A025581 n).toNat

end

end A159834.P15092102428483641091

namespace A159834

/-- `abs(A108086(n))*A001464(A025581(n))` -/
def P15092102428483641091.Spec : Prop :=
  ∀ n, P15092102428483641091.a n = A159834 n

end A159834

/-! ## A159834.P1135669698137883696

`abs(A130595(n))*A001464(A025581(n))`
-/

namespace A159834.P1135669698137883696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A001464 (A025581 n).toNat

end

end A159834.P1135669698137883696

namespace A159834

/-- `abs(A130595(n))*A001464(A025581(n))` -/
def P1135669698137883696.Spec : Prop :=
  ∀ n, P1135669698137883696.a n = A159834 n

end A159834

/-! ## A159834.P15620667955764862677

`A001464(A025581(n))/2*A028326(n)`
-/

namespace A159834.P15620667955764862677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001464 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A159834.P15620667955764862677

namespace A159834

/-- `A001464(A025581(n))/2*A028326(n)` -/
def P15620667955764862677.Spec : Prop :=
  ∀ n, P15620667955764862677.a n = (A159834 n : ℚ)

end A159834

/-! ## A159834.P11332914389861676647

`(A131060(n)+2)/3*A001464(A025581(n))`
-/

namespace A159834.P11332914389861676647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3 * (A001464 (A025581 n).toNat : ℚ)

end

end A159834.P11332914389861676647

namespace A159834

/-- `(A131060(n)+2)/3*A001464(A025581(n))` -/
def P11332914389861676647.Spec : Prop :=
  ∀ n, P11332914389861676647.a n = (A159834 n : ℚ)

end A159834

/-!
# A159836: Integers n such that the orbit n, f(n), f(f(n)), ... is eventually periodic with period 2, where f(n) = product(a(k)^p(k)) when n has the prime factorization n = product(p(k)^a(k)).

The programs for A159836, there is no canonical definition to state claims against.
-/

/-! ## A159836.P504877786858785875

`A230542(n+1)-A140361(A185255(n))`
-/

namespace A159836.P504877786858785875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230542 (n + 1) - A140361 (A185255 n).toNat

end

end A159836.P504877786858785875

/-! ## A159836.P1563984603121711150

`A018851(A230542(n+1)²)`
-/

namespace A159836.P1563984603121711150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A230542 (n + 1) ^ 2).toNat

end

end A159836.P1563984603121711150

/-! ## A159836.P13858766166083602243

`A138554(A230542(n+1)²)`
-/

namespace A159836.P13858766166083602243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A230542 (n + 1) ^ 2).toNat

end

end A159836.P13858766166083602243

/-! ## A159836.P14071471759650526146

`A018851(A230542(n+1)^2)`
-/

namespace A159836.P14071471759650526146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A230542 (n + 1) ^ 2).toNat

end

end A159836.P14071471759650526146

/-! ## A159836.P10403910705905987349

`A230542(n+1)%A034820(n)`
-/

namespace A159836.P10403910705905987349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230542 (n + 1)) (A034820 n)

end

end A159836.P10403910705905987349

/-!
# A159838: Numbers n such that n*s and n-n*s are prime, where s is the sum of the reciprocals of the prime factors of n with repetition.

The programs for A159838, there is no canonical definition to state claims against.
-/

/-! ## A159838.P12594569172973477344

`∏{p}[A309769(A263826(n+1)), #]`
-/

namespace A159838.P12594569172973477344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309769 (A263826 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159838.P12594569172973477344

/-!
# A159841: Triangle T(n,k) = binomial(3*n+1, 2*n+k+1), read by rows.

The programs for A159841, the canonical program `A159841.P6369096883323569816` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159841 has offset 0).

The definition of A159841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*row(n)+1, 2*row(n)+col(n)+1)` (program `A159841.P6369096883323569816`, by `A159841.P6369096883323569816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159841.P6369096883323569816

`C(3*row(n)+1, 2*row(n)+col(n)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159841

/-- `C(3*row(n)+1, 2*row(n)+col(n)+1)` -/
def P6369096883323569816.Spec : Prop :=
  ∀ n, (P6369096883323569816.a n : ℤ) = A159841 n

theorem P6369096883323569816.correct : P6369096883323569816.Spec := by
  intro n
  simp only [A159841]

end A159841

/-! ## A159841.P9862850718435713169

`C(A008585(A003056(n))+1, A025581(n))`
-/

namespace A159841.P9862850718435713169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 (A003056 n).toNat + 1).toNat (A025581 n).toNat

end

end A159841.P9862850718435713169

namespace A159841

/-- `C(A008585(A003056(n))+1, A025581(n))` -/
def P9862850718435713169.Spec : Prop :=
  ∀ n, (P9862850718435713169.a n : ℤ) = A159841 n

end A159841

/-! ## A159841.P2774474163644605559

`A007318(A002378(A131507(n))+n)`
-/

namespace A159841.P2774474163644605559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002378 (A131507 n).toNat + (n : ℤ)).toNat

end

end A159841.P2774474163644605559

namespace A159841

/-- `A007318(A002378(A131507(n))+n)` -/
def P2774474163644605559.Spec : Prop :=
  ∀ n, P2774474163644605559.a n = A159841 n

end A159841

/-! ## A159841.P753806423624575366

`A007318(A061579(n)+A131507(n)²)`
-/

namespace A159841.P753806423624575366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A061579 n + A131507 n ^ 2).toNat

end

end A159841.P753806423624575366

namespace A159841

/-- `A007318(A061579(n)+A131507(n)²)` -/
def P753806423624575366.Spec : Prop :=
  ∀ n, P753806423624575366.a n = A159841 n

end A159841

/-! ## A159841.P6005842401929747449

`A007318(A002939(A002024(n+1))+n)`
-/

namespace A159841.P6005842401929747449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002939 (A002024 (n + 1)).toNat + (n : ℤ)).toNat

end

end A159841.P6005842401929747449

namespace A159841

/-- `A007318(A002939(A002024(n+1))+n)` -/
def P6005842401929747449.Spec : Prop :=
  ∀ n, P6005842401929747449.a n = A159841 n

end A159841

/-! ## A159841.P9802140052843824311

`A007318(A051624(A002024(n+1))-n)`
-/

namespace A159841.P9802140052843824311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051624 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A159841.P9802140052843824311

namespace A159841

/-- `A007318(A051624(A002024(n+1))-n)` -/
def P9802140052843824311.Spec : Prop :=
  ∀ n, P9802140052843824311.a n = A159841 n

end A159841

/-! ## A159841.P1274488885167397177

`A007318(A038722(n+1)+A022144(A057944(n)))`
-/

namespace A159841.P1274488885167397177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A038722 (n + 1) + A022144 (A057944 n).toNat).toNat

end

end A159841.P1274488885167397177

namespace A159841

/-- `A007318(A038722(n+1)+A022144(A057944(n)))` -/
def P1274488885167397177.Spec : Prop :=
  ∀ n, P1274488885167397177.a n = A159841 n

end A159841

/-! ## A159841.P12824824345964034942

`C(A131873(A025581(n)+n), A025581(n))`
-/

namespace A159841.P12824824345964034942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131873 (A025581 n + (n : ℤ)).toNat).toNat (A025581 n).toNat

end

end A159841.P12824824345964034942

namespace A159841

/-- `C(A131873(A025581(n)+n), A025581(n))` -/
def P12824824345964034942.Spec : Prop :=
  ∀ n, (P12824824345964034942.a n : ℤ) = A159841 n

end A159841

/-!
# A159842: Number of symmetrically-distinct supercells (sublattices) of the fcc and bcc lattices (n is the "volume factor" of the supercell).

The programs for A159842, there is no canonical definition to state claims against.
-/

/-! ## A159842.P12238415666249893511

`A045790(n)`
-/

namespace A159842.P12238415666249893511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045790 n

end

end A159842.P12238415666249893511

/-!
# A159843: Sums of two rational cubes.

The programs for A159843, there is no canonical definition to state claims against.
-/

/-! ## A159843.P18097488820794692591

`comp[A185345(n+1)-1]+1`
-/

namespace A159843.P18097488820794692591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A159843.P18097488820794692591

/-! ## A159843.P17003279921197642930

`comp[∪[A185345(n+1), A337054(n+1)]]`
-/

namespace A159843.P17003279921197642930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A159843.P17003279921197642930

/-! ## A159843.P7508807093115648612

`eq[char[A185345(n+1)], A000007(n)]`
-/

namespace A159843.P7508807093115648612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A159843.P7508807093115648612

/-! ## A159843.P11207269640655465592

`∪[A020897(n+1), A213491(n)]`
-/

namespace A159843.P11207269640655465592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213491 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P11207269640655465592

/-! ## A159843.P7957105735696750066

`∪[A020897(n+1), A052045(n+1)]`
-/

namespace A159843.P7957105735696750066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P7957105735696750066

/-! ## A159843.P17432136072791428445

`∪[A020897(n+1), A057097(n+1)]`
-/

namespace A159843.P17432136072791428445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P17432136072791428445

/-! ## A159843.P10679270373514835790

`∪[A020897(n+1), A062292(n+1)]`
-/

namespace A159843.P10679270373514835790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P10679270373514835790

/-! ## A159843.P12808099081411277349

`∪[A020897(n+1), A076969(n+1)]`
-/

namespace A159843.P12808099081411277349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P12808099081411277349

/-! ## A159843.P11921964762270514643

`∪[A020897(n+1), A111103(n+1)]`
-/

namespace A159843.P11921964762270514643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P11921964762270514643

/-! ## A159843.P6119203041147624361

`∪[A020897(n+1), A111131(n+1)]`
-/

namespace A159843.P6119203041147624361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159843.P6119203041147624361

/-!
# A159847: The number of non-isomorphic n-node graphs with the maximal number of edges, and containing no three-cycles or four-cycles.

The programs for A159847, there is no canonical definition to state claims against.
-/

/-! ## A159847.P9428234625793913627

`A209032(A187253(3*(n+1))+2)`
-/

namespace A159847.P9428234625793913627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A187253 (3 * (n + 1)) + 2).toNat

end

end A159847.P9428234625793913627

/-! ## A159847.P16650463170084045579

`A237593(A172248(n+1)^(n%floor(sqrt(n+1))))`
-/

namespace A159847.P16650463170084045579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A172248 (n + 1) ^ (n % Nat.sqrt (n + 1))).toNat

end

end A159847.P16650463170084045579

/-! ## A159847.P8184047085311303097

`A047996(A033266(n+1)+A001065(n+1))`
-/

namespace A159847.P8184047085311303097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A033266 (n + 1) + A001065 (n + 1)).toNat

end

end A159847.P8184047085311303097

/-! ## A159847.P8186431953366930753

`A228369(A057022(n+1)+A005133(n+1))`
-/

namespace A159847.P8186431953366930753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A057022 (n + 1) + A005133 (n + 1)).toNat

end

end A159847.P8186431953366930753

/-! ## A159847.P10276053771841346072

`A339890(A138137(n+1)+A132318(n+1))`
-/

namespace A159847.P10276053771841346072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (A138137 (n + 1) + A132318 (n + 1)).toNat

end

end A159847.P10276053771841346072

/-!
# A159848: a(n+1) = a(n) + greatest previous term whose binary representation is contained in that of a(n); with a(1)=1, a(2)=2.

The programs for A159848, there is no canonical definition to state claims against.
-/

/-! ## A159848.P13095293674922714137

`A159849(n)+a(n-1)` with `a(0)=1`
-/

namespace A159848.P13095293674922714137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159849 n + a (n - 1)

end

end A159848.P13095293674922714137

/-! ## A159848.P10881641778669894621

`∑[A159849(A028310(n))]`
-/

namespace A159848.P10881641778669894621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159848.P10881641778669894621

/-! ## A159848.P13517655884750467988

`∑[A159849(A000007(n)+n)]`
-/

namespace A159848.P13517655884750467988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159848.P13517655884750467988

/-! ## A159848.P4259397825991340167

`∑[A159849(A000038(n)+n)]`
-/

namespace A159848.P4259397825991340167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159848.P4259397825991340167

/-! ## A159848.P15089523983597158366

`∑[A159849(xor(n, A000038(n)))]`
-/

namespace A159848.P15089523983597158366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159848.P15089523983597158366

/-! ## A159848.P1892750941705171105

`∑[A159849(n+1)]+1-A159849(n+1)`
-/

namespace A159848.P1892750941705171105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A159849 (n + 1))

end

end A159848.P1892750941705171105

/-! ## A159848.P1849738178491354651

`∑[A159849(A233583(n+1))]`
-/

namespace A159848.P1849738178491354651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159848.P1849738178491354651

/-! ## A159848.P17264063861506182997

`eq[1, char[A159849(n+1)]]`
-/

namespace A159848.P17264063861506182997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159848.P17264063861506182997

/-! ## A159848.P17030359043193967348

`lt[1, char[A159849(n+1)]*A004767(n)]`
-/

namespace A159848.P17030359043193967348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A159848.P17030359043193967348

/-! ## A159848.P14020340595567979701

`lt[1, char[A159849(n+1)]*A152980(n)]`
-/

namespace A159848.P14020340595567979701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A152980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A159848.P14020340595567979701

/-! ## A159848.P18212358461781937307

`lt[1, char[A159849(n+1)]*A014612(n+4)]`
-/

namespace A159848.P18212358461781937307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159849 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A014612 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A159848.P18212358461781937307

/-!
# A159849: First differences of A159848.

The programs for A159849, there is no canonical definition to state claims against.
-/

/-! ## A159849.P8546164981972220164

`Δ[A159848(n+1)]`
-/

namespace A159849.P8546164981972220164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P8546164981972220164

/-! ## A159849.P3505920811709612693

`abs(Δ[A159848(1-(n-2*n))])`
-/

namespace A159849.P3505920811709612693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A159849.P3505920811709612693

/-! ## A159849.P3133139689023274249

`Δ[record[A159848(A324346(n))]]`
-/

namespace A159849.P3133139689023274249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P3133139689023274249

/-! ## A159849.P15302053094143366281

`A159848(n+2)-A159848(n+1)`
-/

namespace A159849.P15302053094143366281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (n + 2) - A159848 (n + 1)

end

end A159849.P15302053094143366281

/-! ## A159849.P5482007208752640418

`Δ[record[A159848(A286597(n))]]`
-/

namespace A159849.P5482007208752640418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (A286597 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P5482007208752640418

/-! ## A159849.P17872247377465009991

`Δ[record[A159848(A286599(n))]]`
-/

namespace A159849.P17872247377465009991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (A286599 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P17872247377465009991

/-! ## A159849.P10894271586922081194

`Δ[record[A159848(A286602(n))]]`
-/

namespace A159849.P10894271586922081194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P10894271586922081194

/-! ## A159849.P15099096981311642897

`Δ[record[A159848(A134478(n))]]`
-/

namespace A159849.P15099096981311642897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P15099096981311642897

/-! ## A159849.P11518510037251191704

`Δ[record[A159848(A286589(n))]]`
-/

namespace A159849.P11518510037251191704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159848 (A286589 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159849.P11518510037251191704

/-!
# A159850: Numerator of Hermite(n, 17/22).

The programs for A159850, the canonical program `A159850.P14905823079880486324` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159850 has offset 0).

The definition of A159850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159850.P14905823079880486324

`17*a(n-1)+242*(1-n)*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159850

/-- `17*a(n-1)+242*(1-n)*a(n-2)` -/
def P14905823079880486324.Spec : Prop :=
  ∀ n, P14905823079880486324.a n = A159850 n

theorem P14905823079880486324.correct : P14905823079880486324.Spec := by
  intro n
  simp only [A159850]

end A159850

/-!
# A159852: n^2 mod 60.

The programs for A159852, the canonical program `A159852.P7691123275581502811` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159852 has offset 0).

The definition of A159852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²%60` (program `A159852.P7691123275581502811`, by `A159852.P7691123275581502811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159852.P7691123275581502811

`n²%60`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159852

/-- `n²%60` -/
def P7691123275581502811.Spec : Prop :=
  ∀ n, (P7691123275581502811.a n : ℤ) = A159852 n

theorem P7691123275581502811.correct : P7691123275581502811.Spec := by
  intro n
  simp only [A159852]

end A159852

/-!
# A159853: Riordan array ((1-2*x+2*x^2)/(1-x), x/(1-x)).

The programs for A159853, the canonical program `A159853.P10122269261997446491` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159853 has offset 0).

The definition of A159853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159853.P4585189684853649804

`T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A159853.P4585189684853649804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A159853.P4585189684853649804

namespace A159853

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P4585189684853649804.Spec : Prop :=
  ∀ n, P4585189684853649804.a n = A159853 n

end A159853

/-! ## A159853.P2388111269648643698

`or(A087698(n), A159075(n))`
-/

namespace A159853.P2388111269648643698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087698 n) (A159075 n)

end

end A159853.P2388111269648643698

namespace A159853

/-- `or(A087698(n), A159075(n))` -/
def P2388111269648643698.Spec : Prop :=
  ∀ n, P2388111269648643698.a n = A159853 n

end A159853

/-! ## A159853.P8773616065777553841

`2*A159854(n)-A112467(n)`
-/

namespace A159853.P8773616065777553841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159854 n - A112467 n

end

end A159853.P8773616065777553841

namespace A159853

/-- `2*A159854(n)-A112467(n)` -/
def P8773616065777553841.Spec : Prop :=
  ∀ n, P8773616065777553841.a n = A159853 n

end A159853

/-! ## A159853.P12083120949053385102

`A087698(n)-A000038(A004442(n))`
-/

namespace A159853.P12083120949053385102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 n - A000038 (A004442 n).toNat

end

end A159853.P12083120949053385102

namespace A159853

/-- `A087698(n)-A000038(A004442(n))` -/
def P12083120949053385102.Spec : Prop :=
  ∀ n, P12083120949053385102.a n = A159853 n

end A159853

/-! ## A159853.P10122269261997446491

`A097805(n)+Δ[A097805(A083920(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159853

/-- `A097805(n)+Δ[A097805(A083920(n))]` -/
def P10122269261997446491.Spec : Prop :=
  ∀ n, P10122269261997446491.a n = A159853 n

theorem P10122269261997446491.correct : P10122269261997446491.Spec := by
  intro n
  simp only [A159853]

end A159853

/-! ## A159853.P8800012203783751956

`A159854(n)+A144225(n+2)`
-/

namespace A159853.P8800012203783751956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 n + A144225 (n + 2)

end

end A159853.P8800012203783751956

namespace A159853

/-- `A159854(n)+A144225(n+2)` -/
def P8800012203783751956.Spec : Prop :=
  ∀ n, P8800012203783751956.a n = A159853 n

end A159853

/-! ## A159853.P550078784967237848

`A159855(n)+3*A144225(n+2)`
-/

namespace A159853.P550078784967237848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159855 n + 3 * A144225 (n + 2)

end

end A159853.P550078784967237848

namespace A159853

/-- `A159855(n)+3*A144225(n+2)` -/
def P550078784967237848.Spec : Prop :=
  ∀ n, P550078784967237848.a n = A159853 n

end A159853

/-! ## A159853.P17651629447369788140

`A159854(A348776(n+2))+A159854(n)`
-/

namespace A159853.P17651629447369788140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A348776 (n + 2)).toNat + A159854 n

end

end A159853.P17651629447369788140

namespace A159853

/-- `A159854(A348776(n+2))+A159854(n)` -/
def P17651629447369788140.Spec : Prop :=
  ∀ n, P17651629447369788140.a n = A159853 n

end A159853

/-!
# A159854: Riordan array (1-x,x/(1-x)).

The programs for A159854, the canonical program `A159854.P4629768391219883641` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159854 has offset 0).

The definition of A159854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159854.P10966069268948454549

`T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0`
-/

namespace A159854.P10966069268948454549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A159854.P10966069268948454549

namespace A159854

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P10966069268948454549.Spec : Prop :=
  ∀ n, P10966069268948454549.a n = A159854 n

end A159854

/-! ## A159854.P4629768391219883641

`A097805(n)+1-A323231(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A159854

/-- `A097805(n)+1-A323231(n)` -/
def P4629768391219883641.Spec : Prop :=
  ∀ n, P4629768391219883641.a n = A159854 n

theorem P4629768391219883641.correct : P4629768391219883641.Spec := by
  intro n
  simp only [A159854]

end A159854

/-! ## A159854.P13045330944222577814

`(A159853(n)+A112467(n))/2`
-/

namespace A159854.P13045330944222577814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159853 n + A112467 n : ℚ) / 2

end

end A159854.P13045330944222577814

namespace A159854

/-- `(A159853(n)+A112467(n))/2` -/
def P13045330944222577814.Spec : Prop :=
  ∀ n, P13045330944222577814.a n = (A159854 n : ℚ)

end A159854

/-! ## A159854.P9066212420107253960

`2*A097805(n)-A131084(n+1)`
-/

namespace A159854.P9066212420107253960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 n - A131084 (n + 1)

end

end A159854.P9066212420107253960

namespace A159854

/-- `2*A097805(n)-A131084(n+1)` -/
def P9066212420107253960.Spec : Prop :=
  ∀ n, P9066212420107253960.a n = A159854 n

end A159854

/-! ## A159854.P1557310706707174811

`A097805(∑[A023532(n)])+A008482(n)`
-/

namespace A159854.P1557310706707174811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008482 n

end

end A159854.P1557310706707174811

namespace A159854

/-- `A097805(∑[A023532(n)])+A008482(n)` -/
def P1557310706707174811.Spec : Prop :=
  ∀ n, P1557310706707174811.a n = A159854 n

end A159854

/-! ## A159854.P12360451734253039141

`A097805(A083920(n+1))+A008482(n)`
-/

namespace A159854.P12360451734253039141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 (n + 1)).toNat + A008482 n

end

end A159854.P12360451734253039141

namespace A159854

/-- `A097805(A083920(n+1))+A008482(n)` -/
def P12360451734253039141.Spec : Prop :=
  ∀ n, P12360451734253039141.a n = A159854 n

end A159854

/-! ## A159854.P2794180406757576810

`A007318(n)+A112467(n)-A131084(n+1)`
-/

namespace A159854.P2794180406757576810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A112467 n - A131084 (n + 1))

end

end A159854.P2794180406757576810

namespace A159854

/-- `A007318(n)+A112467(n)-A131084(n+1)` -/
def P2794180406757576810.Spec : Prop :=
  ∀ n, P2794180406757576810.a n = A159854 n

end A159854

/-! ## A159854.P11859558950423261428

`A129687(n)-(A097805(n+1)+A097805(n+1))`
-/

namespace A159854.P11859558950423261428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129687 n - (A097805 (n + 1) + A097805 (n + 1))

end

end A159854.P11859558950423261428

namespace A159854

/-- `A129687(n)-(A097805(n+1)+A097805(n+1))` -/
def P11859558950423261428.Spec : Prop :=
  ∀ n, P11859558950423261428.a n = A159854 n

end A159854

/-! ## A159854.P10910893321282079829

`A144225(n+2)+A112467(n)`
-/

namespace A159854.P10910893321282079829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 2) + A112467 n

end

end A159854.P10910893321282079829

namespace A159854

/-- `A144225(n+2)+A112467(n)` -/
def P10910893321282079829.Spec : Prop :=
  ∀ n, P10910893321282079829.a n = A159854 n

end A159854

/-! ## A159854.P10697047453755945283

`A159853(n)-A144225(n+2)`
-/

namespace A159854.P10697047453755945283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 n - A144225 (n + 2)

end

end A159854.P10697047453755945283

namespace A159854

/-- `A159853(n)-A144225(n+2)` -/
def P10697047453755945283.Spec : Prop :=
  ∀ n, P10697047453755945283.a n = A159854 n

end A159854

/-! ## A159854.P5847584402034574904

`A144225(n+2)+A159855(n)+A144225(n+2)`
-/

namespace A159854.P5847584402034574904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 2) + (A159855 n + A144225 (n + 2))

end

end A159854.P5847584402034574904

namespace A159854

/-- `A144225(n+2)+A159855(n)+A144225(n+2)` -/
def P5847584402034574904.Spec : Prop :=
  ∀ n, P5847584402034574904.a n = A159854 n

end A159854

/-! ## A159854.P10012498481137067124

`A323231(A007401(n+1))-A323231(n)`
-/

namespace A159854.P10012498481137067124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 (A007401 (n + 1)).toNat - A323231 n

end

end A159854.P10012498481137067124

namespace A159854

/-- `A323231(A007401(n+1))-A323231(n)` -/
def P10012498481137067124.Spec : Prop :=
  ∀ n, P10012498481137067124.a n = A159854 n

end A159854

/-! ## A159854.P16265035363745159172

`A323231(A003056(n)+1+n)-A323231(n)`
-/

namespace A159854.P16265035363745159172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 (A003056 n + 1 + (n : ℤ)).toNat - A323231 n

end

end A159854.P16265035363745159172

namespace A159854

/-- `A323231(A003056(n)+1+n)-A323231(n)` -/
def P16265035363745159172.Spec : Prop :=
  ∀ n, P16265035363745159172.a n = A159854 n

end A159854

/-! ## A159854.P16201623210121415551

`A131084(n+1)-A005843(A131084(n+1)-A097805(n))`
-/

namespace A159854.P16201623210121415551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) - A005843 (A131084 (n + 1) - A097805 n).toNat

end

end A159854.P16201623210121415551

namespace A159854

/-- `A131084(n+1)-A005843(A131084(n+1)-A097805(n))` -/
def P16201623210121415551.Spec : Prop :=
  ∀ n, P16201623210121415551.a n = A159854 n

end A159854

/-! ## A159854.P5855068304798268257

`A005843(A097805(n))-A131084(n+1)`
-/

namespace A159854.P5855068304798268257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A097805 n).toNat - A131084 (n + 1)

end

end A159854.P5855068304798268257

namespace A159854

/-- `A005843(A097805(n))-A131084(n+1)` -/
def P5855068304798268257.Spec : Prop :=
  ∀ n, P5855068304798268257.a n = A159854 n

end A159854

/-! ## A159854.P954153037947456539

`A129687(n)-A005843(A097805(n+1))`
-/

namespace A159854.P954153037947456539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129687 n - A005843 (A097805 (n + 1)).toNat

end

end A159854.P954153037947456539

namespace A159854

/-- `A129687(n)-A005843(A097805(n+1))` -/
def P954153037947456539.Spec : Prop :=
  ∀ n, P954153037947456539.a n = A159854 n

end A159854

/-!
# A159855: Riordan array ((1-2*x-x^2)/(1-x), x/(1-x)).

The programs for A159855, the canonical program `A159855.P15097114354535819429` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159855 has offset 0).

The definition of A159855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159855.P5271100385423458909

`2*T(n-1,k)+T(n-1,k-1)-T(n-1,k)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-2`
-/

namespace A159855.P5271100385423458909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -2] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n

end

end A159855.P5271100385423458909

namespace A159855

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-1,k)` -/
def P5271100385423458909.Spec : Prop :=
  ∀ n, P5271100385423458909.a n = A159855 n

end A159855

/-! ## A159855.P4559765685030091294

`2*A097805(n)-A129687(n)`
-/

namespace A159855.P4559765685030091294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 n - A129687 n

end

end A159855.P4559765685030091294

namespace A159855

/-- `2*A097805(n)-A129687(n)` -/
def P4559765685030091294.Spec : Prop :=
  ∀ n, P4559765685030091294.a n = A159855 n

end A159855

/-! ## A159855.P803975859104833200

`2*A112467(n)-A159854(n)`
-/

namespace A159855.P803975859104833200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112467 n - A159854 n

end

end A159855.P803975859104833200

namespace A159855

/-- `2*A112467(n)-A159854(n)` -/
def P803975859104833200.Spec : Prop :=
  ∀ n, P803975859104833200.a n = A159855 n

end A159855

/-! ## A159855.P13662007201086069603

`A131084(n+1)-∑[2*A037012(n)]`
-/

namespace A159855.P13662007201086069603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159855.P13662007201086069603

namespace A159855

/-- `A131084(n+1)-∑[2*A037012(n)]` -/
def P13662007201086069603.Spec : Prop :=
  ∀ n, P13662007201086069603.a n = A159855 n

end A159855

/-! ## A159855.P12669769545007651184

`A112467(n)+A159854(n)-A159853(n)`
-/

namespace A159855.P12669769545007651184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n + (A159854 n - A159853 n)

end

end A159855.P12669769545007651184

namespace A159855

/-- `A112467(n)+A159854(n)-A159853(n)` -/
def P12669769545007651184.Spec : Prop :=
  ∀ n, P12669769545007651184.a n = A159855 n

end A159855

/-! ## A159855.P16494011978668740397

`A131084(n+1)+A112467(n)-A007318(n)`
-/

namespace A159855.P16494011978668740397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) + (A112467 n - A007318 n)

end

end A159855.P16494011978668740397

namespace A159855

/-- `A131084(n+1)+A112467(n)-A007318(n)` -/
def P16494011978668740397.Spec : Prop :=
  ∀ n, P16494011978668740397.a n = A159855 n

end A159855

/-! ## A159855.P16879819532176650849

`A131084(n+1)+A097805(n)-A029653(n)`
-/

namespace A159855.P16879819532176650849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) + (A097805 n - A029653 n)

end

end A159855.P16879819532176650849

namespace A159855

/-- `A131084(n+1)+A097805(n)-A029653(n)` -/
def P16879819532176650849.Spec : Prop :=
  ∀ n, P16879819532176650849.a n = A159855 n

end A159855

/-! ## A159855.P15097114354535819429

`A112467(n)-A097805(A103517(n)%A181133(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159855

/-- `A112467(n)-A097805(A103517(n)%A181133(n+1))` -/
def P15097114354535819429.Spec : Prop :=
  ∀ n, P15097114354535819429.a n = A159855 n

theorem P15097114354535819429.correct : P15097114354535819429.Spec := by
  intro n
  simp only [A159855]

end A159855

/-! ## A159855.P9260934421171908107

`A112467(n)-A144225(n+2)`
-/

namespace A159855.P9260934421171908107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n - A144225 (n + 2)

end

end A159855.P9260934421171908107

namespace A159855

/-- `A112467(n)-A144225(n+2)` -/
def P9260934421171908107.Spec : Prop :=
  ∀ n, P9260934421171908107.a n = A159855 n

end A159855

/-! ## A159855.P11940510361533299068

`A159854(n)-(A144225(n+2)+A144225(n+2))`
-/

namespace A159855.P11940510361533299068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 n - (A144225 (n + 2) + A144225 (n + 2))

end

end A159855.P11940510361533299068

namespace A159855

/-- `A159854(n)-(A144225(n+2)+A144225(n+2))` -/
def P11940510361533299068.Spec : Prop :=
  ∀ n, P11940510361533299068.a n = A159855 n

end A159855

/-! ## A159855.P5885744196475262235

`A005843(A097805(n))-A129687(n)`
-/

namespace A159855.P5885744196475262235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A097805 n).toNat - A129687 n

end

end A159855.P5885744196475262235

namespace A159855

/-- `A005843(A097805(n))-A129687(n)` -/
def P5885744196475262235.Spec : Prop :=
  ∀ n, P5885744196475262235.a n = A159855 n

end A159855

/-! ## A159855.P9722012569118517904

`A131084(n+1)-A005843(∑[A037012(n)])`
-/

namespace A159855.P9722012569118517904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A159855.P9722012569118517904

namespace A159855

/-- `A131084(n+1)-A005843(∑[A037012(n)])` -/
def P9722012569118517904.Spec : Prop :=
  ∀ n, P9722012569118517904.a n = A159855 n

end A159855

/-!
# A159857: Numerator of Hermite(n, 21/22).

The programs for A159857, the canonical program `A159857.P8941255722630145595` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159857 has offset 0).

The definition of A159857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159857.P8941255722630145595

`21*a(n-1)+242*(1-n)*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159857

/-- `21*a(n-1)+242*(1-n)*a(n-2)` -/
def P8941255722630145595.Spec : Prop :=
  ∀ n, P8941255722630145595.a n = A159857 n

theorem P8941255722630145595.correct : P8941255722630145595.Spec := by
  intro n
  simp only [A159857]

end A159857

/-!
# A159860: The maximum length of a string of identical characters which can be reduced to one character in "n" nested substitution operations, e.g. replace(string, substring, character) such that all shorter strings will also reduce to one character.

The programs for A159860, the canonical program `A159860.P15011508134147054358` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159860 has offset 1).

The definition of A159860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159860.P15011508134147054358

`a(n-1)*(a(n-1)+6)/4` with `a(0)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159860

/-- `a(n-1)*(a(n-1)+6)/4` -/
def P15011508134147054358.Spec : Prop :=
  ∀ n, P15011508134147054358.a n = (A159860 (n + 1) : ℚ)

end A159860

/-! ## A159860.P12561305020220678077

`floor(((a(n-1)+3)/2)²)-2` with `a(0)=2`
-/

namespace A159860.P12561305020220678077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((a (n - 1) + 3 : ℚ) / 2) ^ 2⌋ - 2

end

end A159860.P12561305020220678077

namespace A159860

/-- `floor(((a(n-1)+3)/2)²)-2` -/
def P12561305020220678077.Spec : Prop :=
  ∀ n, P12561305020220678077.a n = A159860 (n + 1)

end A159860

/-! ## A159860.P8907001307346123331

`(2-(2-a(n-1))/4)*a(n-1)` with `a(0)=2`
-/

namespace A159860.P8907001307346123331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 - (2 - a (n - 1)) / 4) * a (n - 1)

end

end A159860.P8907001307346123331

namespace A159860

/-- `(2-(2-a(n-1))/4)*a(n-1)` -/
def P8907001307346123331.Spec : Prop :=
  ∀ n, P8907001307346123331.a n = (A159860 (n + 1) : ℚ)

end A159860

/-! ## A159860.P11336474188996263197

`2*A006893(n+1)`
-/

namespace A159860.P11336474188996263197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006893 (n + 1)

end

end A159860.P11336474188996263197

namespace A159860

/-- `2*A006893(n+1)` -/
def P11336474188996263197.Spec : Prop :=
  ∀ n, P11336474188996263197.a n = A159860 (n + 1)

end A159860

/-! ## A159860.P8323623896327241292

`2*(A007501(n)-1)`
-/

namespace A159860.P8323623896327241292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007501 n - 1)

end

end A159860.P8323623896327241292

namespace A159860

/-- `2*(A007501(n)-1)` -/
def P8323623896327241292.Spec : Prop :=
  ∀ n, P8323623896327241292.a n = A159860 (n + 1)

end A159860

/-!
# A159861: Square array A(m,n), m>=1, n>=1, read by antidiagonals: A(m,1)=1, A(m,n) is the rank with respect to m of the concatenation of all preceding terms in row m, and the rank of S with respect to m is floor ((S+m-1)/m).

The programs for A159861, there is no canonical definition to state claims against.
-/

/-! ## A159861.P3782445743787521315

`A136400(6^and(n, 2*n))`
-/

namespace A159861.P3782445743787521315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (6 ^ Nat.land n (2 * n))

end

end A159861.P3782445743787521315

/-! ## A159861.P14472152635583755358

`A139337(6^and(n, 2*n))`
-/

namespace A159861.P14472152635583755358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (6 ^ Nat.land n (2 * n))

end

end A159861.P14472152635583755358

/-! ## A159861.P56333413096796437

`A341767(8^and(n, 2*n))`
-/

namespace A159861.P56333413096796437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341767 (8 ^ Nat.land n (2 * n))

end

end A159861.P56333413096796437

/-!
# A159862: Main diagonal of A159861.

The programs for A159862, there is no canonical definition to state claims against.
-/

/-! ## A159862.P1545138314782898903

`(A133263(n*a(n-1))+7)/3` with `a(0)=1, a(1)=1`
-/

namespace A159862.P1545138314782898903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A133263 (SequenceMachineLib.roundAway ((n : ℚ) * a (n - 1))).toNat + 7 : ℚ) / 3

end

end A159862.P1545138314782898903

/-!
# A159864: Difference array of Fibonacci numbers A000045 read by antidiagonals.

The programs for A159864, there is no canonical definition to state claims against.
-/

/-! ## A159864.P12484898385323837878

`A227431(comp[∑[n]]+1)`
-/

namespace A159864.P12484898385323837878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A159864.P12484898385323837878

/-! ## A159864.P17480382991696994919

`A057427(n)*A227431(A080036(n+1))`
-/

namespace A159864.P17480382991696994919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A227431 (A080036 (n + 1)).toNat

end

end A159864.P17480382991696994919

/-! ## A159864.P13469531877481811662

`A227431(A080036(n+1))+A000038(n+1)`
-/

namespace A159864.P13469531877481811662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A080036 (n + 1)).toNat + A000038 (n + 1)

end

end A159864.P13469531877481811662

/-! ## A159864.P9574219584510857248

`A227431(A014132(n+1))-A227431(n+1)`
-/

namespace A159864.P9574219584510857248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A014132 (n + 1)).toNat - A227431 (n + 1)

end

end A159864.P9574219584510857248

/-! ## A159864.P6710237648081038475

`A227431(A080036(n+1))+A008683(4*(n+1))`
-/

namespace A159864.P6710237648081038475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A080036 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A159864.P6710237648081038475

/-! ## A159864.P13670575253926542129

`A227431(A080036(n+1))+floor(A001222(n+1)/23)`
-/

namespace A159864.P13670575253926542129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A080036 (n + 1)).toNat + ⌊(A001222 (n + 1) : ℚ) / 23⌋

end

end A159864.P13670575253926542129

/-! ## A159864.P7655052655336773158

`A227431(A080036(n+1))/A005117(C(2, n+2)+1)`
-/

namespace A159864.P7655052655336773158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227431 (A080036 (n + 1)).toNat : ℚ) / (A005117 (Nat.choose 2 (n + 2) + 1) : ℚ)

end

end A159864.P7655052655336773158

/-! ## A159864.P13876736461348914799

`A227431(A080036(n+1))/A151933(n)!`
-/

namespace A159864.P13876736461348914799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227431 (A080036 (n + 1)).toNat : ℚ) / (Nat.factorial (A151933 n).toNat : ℚ)

end

end A159864.P13876736461348914799

/-!
# A159866: Number of 2-sided n-polycairos.

The programs for A159866, there is no canonical definition to state claims against.
-/

/-! ## A159866.P8284824029768963336

`A337501(A227309(n))+A007317(n+1)`
-/

namespace A159866.P8284824029768963336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337501 (A227309 n).toNat + A007317 (n + 1)

end

end A159866.P8284824029768963336

/-! ## A159866.P16082000175799359131

`A110266(A094832(n))`
-/

namespace A159866.P16082000175799359131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A094832 n).toNat

end

end A159866.P16082000175799359131

/-!
# A159867: Number of 2-sided n-triangular polyedges.

The programs for A159867, there is no canonical definition to state claims against.
-/

/-! ## A159867.P10566189726651763949

`3*A220487(a(n-1))` with `a(0)=1`
-/

namespace A159867.P10566189726651763949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A220487 (a (n - 1)).toNat

end

end A159867.P10566189726651763949

/-!
# A159876: Inverse Mobius transform of the rabbit sequence, A051731 * A005614.

The programs for A159876, the canonical program `A159876.P18135579079725230870` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159876 has offset 1).

The definition of A159876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159876.P18135579079725230870

`∑{d}[n+1, A096270(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159876

/-- `∑{d}[n+1, A096270(#)]` -/
def P18135579079725230870.Spec : Prop :=
  ∀ n, P18135579079725230870.a n = A159876 (n + 1)

theorem P18135579079725230870.correct : P18135579079725230870.Spec := by
  intro n
  simp only [A159876, Nat.add_sub_cancel]

end A159876

/-! ## A159876.P15831522186180202376

`∑{d}[n+1, A114986(#)]`
-/

namespace A159876.P15831522186180202376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114986 d

end

end A159876.P15831522186180202376

namespace A159876

/-- `∑{d}[n+1, A114986(#)]` -/
def P15831522186180202376.Spec : Prop :=
  ∀ n, P15831522186180202376.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P8167291532288739255

`∑{d}[n+1, A005614(#-1)]`
-/

namespace A159876.P8167291532288739255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005614 (d - 1)

end

end A159876.P8167291532288739255

namespace A159876

/-- `∑{d}[n+1, A005614(#-1)]` -/
def P8167291532288739255.Spec : Prop :=
  ∀ n, P8167291532288739255.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P15906559602069837395

`∑{d}[n+1, A282162(#)-2]`
-/

namespace A159876.P15906559602069837395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A282162 d - 2)

end

end A159876.P15906559602069837395

namespace A159876

/-- `∑{d}[n+1, A282162(#)-2]` -/
def P15906559602069837395.Spec : Prop :=
  ∀ n, P15906559602069837395.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P10136541542073352075

`∑{d}[n+1, log2(A001468(#))]`
-/

namespace A159876.P10136541542073352075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (A001468 d : ℝ)

end

end A159876.P10136541542073352075

namespace A159876

/-- `∑{d}[n+1, log2(A001468(#))]` -/
def P10136541542073352075.Spec : Prop :=
  ∀ n, P10136541542073352075.a n = (A159876 (n + 1) : ℝ)

end A159876

/-! ## A159876.P17291619806168824350

`∑{d}[n+1, A189479(#+2)]`
-/

namespace A159876.P17291619806168824350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189479 (d + 2)

end

end A159876.P17291619806168824350

namespace A159876

/-- `∑{d}[n+1, A189479(#+2)]` -/
def P17291619806168824350.Spec : Prop :=
  ∀ n, P17291619806168824350.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P530179033437104985

`∑{d}[n+1, A003849(A000201(#))]`
-/

namespace A159876.P530179033437104985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003849 (A000201 d).toNat

end

end A159876.P530179033437104985

namespace A159876

/-- `∑{d}[n+1, A003849(A000201(#))]` -/
def P530179033437104985.Spec : Prop :=
  ∀ n, P530179033437104985.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P10125770194051085305

`∑{d}[n+1, A345291(#)%2]`
-/

namespace A159876.P10125770194051085305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A345291 d) 2

end

end A159876.P10125770194051085305

namespace A159876

/-- `∑{d}[n+1, A345291(#)%2]` -/
def P10125770194051085305.Spec : Prop :=
  ∀ n, P10125770194051085305.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P13972259970220338509

`A022879(floor((n+1)/ϕ+n)+1)`
-/

namespace A159876.P13972259970220338509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022879 (⌊(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋ + 1).toNat

end

end A159876.P13972259970220338509

namespace A159876

/-- `A022879(floor((n+1)/ϕ+n)+1)` -/
def P13972259970220338509.Spec : Prop :=
  ∀ n, P13972259970220338509.a n = A159876 (n + 1)

end A159876

/-! ## A159876.P5350152422311920352

`A022879(A000201(n+1))*A056753(2*(n+2))`
-/

namespace A159876.P5350152422311920352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022879 (A000201 (n + 1)).toNat * A056753 (2 * (n + 2))

end

end A159876.P5350152422311920352

namespace A159876

/-- `A022879(A000201(n+1))*A056753(2*(n+2))` -/
def P5350152422311920352.Spec : Prop :=
  ∀ n, P5350152422311920352.a n = A159876 (n + 1)

end A159876

/-!
# A159879: Numbers n such that digit sum of n^2 is 2*(digit sum of n).

The programs for A159879, the canonical program `A159879.P5677806131023891219` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159879 has offset 1).

The definition of A159879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159879.P5677806131023891219

`eq[A004159(n), A169805(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159879

/-- `eq[A004159(n), A169805(n)]` -/
def P5677806131023891219.Spec : Prop :=
  ∀ n, (P5677806131023891219.a n : ℤ) = A159879 (n + 1)

theorem P5677806131023891219.correct : P5677806131023891219.Spec := by
  intro n
  simp only [A159879, Nat.add_sub_cancel]

end A159879

/-! ## A159879.P12181136336011784148

`eq[2*A007953(n), A004159(n)]`
-/

namespace A159879.P12181136336011784148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P12181136336011784148

namespace A159879

/-- `eq[2*A007953(n), A004159(n)]` -/
def P12181136336011784148.Spec : Prop :=
  ∀ n, (P12181136336011784148.a n : ℤ) = A159879 (n + 1)

end A159879

/-! ## A159879.P11339244578654009865

`eq[(A004159(n)/2)², A118881(n)]`
-/

namespace A159879.P11339244578654009865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004159 n : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A159879.P11339244578654009865

namespace A159879

/-- `eq[(A004159(n)/2)², A118881(n)]` -/
def P11339244578654009865.Spec : Prop :=
  ∀ n, (P11339244578654009865.a n : ℤ) = A159879 (n + 1)

end A159879

/-! ## A159879.P12635966867933533201

`eq[A001281(A004159(n)), A007953(n)]`
-/

namespace A159879.P12635966867933533201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P12635966867933533201

namespace A159879

/-- `eq[A001281(A004159(n)), A007953(n)]` -/
def P12635966867933533201.Spec : Prop :=
  ∀ n, (P12635966867933533201.a n : ℤ) = A159879 (n + 1)

end A159879

/-! ## A159879.P4800350595897487891

`eq[A002620(A004159(n)), A118881(n)]`
-/

namespace A159879.P4800350595897487891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P4800350595897487891

namespace A159879

/-- `eq[A002620(A004159(n)), A118881(n)]` -/
def P4800350595897487891.Spec : Prop :=
  ∀ n, (P4800350595897487891.a n : ℤ) = A159879 (n + 1)

end A159879

/-! ## A159879.P3096154382626364389

`eq[A016116(A004159(n)), A329562(n)]`
-/

namespace A159879.P3096154382626364389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P3096154382626364389

namespace A159879

/-- `eq[A016116(A004159(n)), A329562(n)]` -/
def P3096154382626364389.Spec : Prop :=
  ∀ n, (P3096154382626364389.a n : ℤ) = A159879 (n + 1)

end A159879

/-! ## A159879.P5314490572783121558

`eq[A066568(n)+A004159(n), A062028(n)]`
-/

namespace A159879.P5314490572783121558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P5314490572783121558

namespace A159879

/-- `eq[A066568(n)+A004159(n), A062028(n)]` -/
def P5314490572783121558.Spec : Prop :=
  ∀ n, (P5314490572783121558.a n : ℤ) = A159879 (n + 1)

end A159879

/-!
# A159880: Infinite string related to Ehrlich's swap method for generating permutations.

The programs for A159880, there is no canonical definition to state claims against.
-/

/-! ## A159880.P8101298637261440003

`A010873(round(7*n/6)*(2*n+3)²)`
-/

namespace A159880.P8101298637261440003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.roundAway (7 * ((n : ℚ) / 6)) * ((2 * n + 3) ^ 2 : ℤ)).toNat

end

end A159880.P8101298637261440003

/-! ## A159880.P15779779583847150169

`A000030(A306428(n))-1`
-/

namespace A159880.P15779779583847150169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A306428 n).toNat - 1

end

end A159880.P15779779583847150169

/-! ## A159880.P1573598141080166112

`A056847(A008527(n+12))%4`
-/

namespace A159880.P1573598141080166112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056847 (A008527 (n + 12)).toNat) 4

end

end A159880.P1573598141080166112

/-! ## A159880.P16016841276543076925

`A047318(n+1)%A056595(A350332(2*n+1))`
-/

namespace A159880.P16016841276543076925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047318 (n + 1)) (A056595 (A350332 (2 * n + 1)).toNat)

end

end A159880.P16016841276543076925

/-! ## A159880.P9230211597156073016

`A020658(n+4)%A000005(A168530(2*n+1))`
-/

namespace A159880.P9230211597156073016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (n + 4)) (A000005 (A168530 (2 * n + 1)).toNat)

end

end A159880.P9230211597156073016

/-!
# A159885: For n >= 1, let f(2n+1) = (3n+2)/A006519(3n+2) and let f^k be the k-th iteration of f. Then a(n) is the least k such that A000120(f^k(2n+1)) <= A000120(n).

The programs for A159885, there is no canonical definition to state claims against.
-/

/-! ## A159885.P17701868447610502184

`A254111(A225959(n+2)+1)`
-/

namespace A159885.P17701868447610502184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254111 (A225959 (n + 2) + 1).toNat

end

end A159885.P17701868447610502184

/-! ## A159885.P14595114215252183870

`gcd(A057895(n), A127590(A011782(n+2)))`
-/

namespace A159885.P14595114215252183870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057895 n) (A127590 (A011782 (n + 2)).toNat)

end

end A159885.P14595114215252183870

/-!
# A159886: Values k such that sigma(x) = k has more than one solution, sigma = A000203.

The programs for A159886, there is no canonical definition to state claims against.
-/

/-! ## A159886.P5139187153843072939

`∪[A007371(n+1), A258914(n+1)]`
-/

namespace A159886.P5139187153843072939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159886.P5139187153843072939

/-! ## A159886.P17575536672741533022

`∪[A258914(n+1), A258931(n+1)]`
-/

namespace A159886.P17575536672741533022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A159886.P17575536672741533022

/-! ## A159886.P8679321621580289215

`record[gcd(A007609(n+7), A007609(n+8))]`
-/

namespace A159886.P8679321621580289215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007609 (n + 7)) (A007609 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159886.P8679321621580289215

/-! ## A159886.P5481063057932276072

`lt[1, A054973(n+1)]+1`
-/

namespace A159886.P5481063057932276072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A159886.P5481063057932276072

/-! ## A159886.P7295465339196765731

`lt[1, A054973(A028310(n))]`
-/

namespace A159886.P7295465339196765731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A159886.P7295465339196765731

/-! ## A159886.P14202404303362273838

`A020725(lt[1, A054973(n+1)])`
-/

namespace A159886.P14202404303362273838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A159886.P14202404303362273838

/-! ## A159886.P6757516215115971597

`A065475(lt[1, A054973(n+1)])`
-/

namespace A159886.P6757516215115971597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A159886.P6757516215115971597

/-! ## A159886.P4036594080154566189

`lt[A051444(n+1), A057637(n+1)]+1`
-/

namespace A159886.P4036594080154566189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A159886.P4036594080154566189

/-! ## A159886.P1068107904895957164

`A065475(lt[A051444(n+1), A057637(n+1)])`
-/

namespace A159886.P1068107904895957164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A159886.P1068107904895957164

/-! ## A159886.P5899559395867397513

`A065475(lt[1, A074753(n+2)-A074753(n+1)])`
-/

namespace A159886.P5899559395867397513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - A074753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A159886.P5899559395867397513

/-!
# A159887: Trajectory of 29 under repeated application of the map n -> A102370(n).

The programs for A159887, there is no canonical definition to state claims against.
-/

/-! ## A159887.P6356970934246496930

`or(A025443(n), A159888(n+1))`
-/

namespace A159887.P6356970934246496930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025443 n) (A159888 (n + 1))

end

end A159887.P6356970934246496930

/-! ## A159887.P15861258141628505504

`filter[A159888(n+1), A014306(#)]`
-/

namespace A159887.P15861258141628505504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A159887.P15861258141628505504

/-! ## A159887.P1799049936286459162

`filter[A159888(n+1), A072165(#)]`
-/

namespace A159887.P1799049936286459162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A159887.P1799049936286459162

/-! ## A159887.P10449782923695059077

`∩[A159888(n+1), A277112(n)]`
-/

namespace A159887.P10449782923695059077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159887.P10449782923695059077

/-! ## A159887.P14834448880043934954

`∩[A159888(n+1), A297468(n)]`
-/

namespace A159887.P14834448880043934954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159887.P14834448880043934954

/-! ## A159887.P17325437469202822052

`∩[A159888(n+1), A348553(n)]`
-/

namespace A159887.P17325437469202822052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159887.P17325437469202822052

/-! ## A159887.P11270627893871065581

`or(A159888(n+1), A357879(n+1))`
-/

namespace A159887.P11270627893871065581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159888 (n + 1)) (A357879 (n + 1))

end

end A159887.P11270627893871065581

/-! ## A159887.P8107308830149202539

`∩[A005100(n+1), A159888(n+1)]`
-/

namespace A159887.P8107308830149202539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159887.P8107308830149202539

/-! ## A159887.P13693274818264092113

`∩[A007412(n+1), A159888(n+1)]`
-/

namespace A159887.P13693274818264092113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159887.P13693274818264092113

/-!
# A159888: Numbers congruent to {-5,29,39,41,43,45,55,57,59,93,103,105,107,109,119,121} mod 256.

The programs for A159888, there is no canonical definition to state claims against.
-/

/-! ## A159888.P11325849468463887039

`A102370(a(n-1))` with `a(0)=29`
-/

namespace A159888.P11325849468463887039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A102370 (a (n - 1)).toNat

end

end A159888.P11325849468463887039

/-! ## A159888.P10870773385966924103

`A105228(a(n-1)+1)-1` with `a(0)=29`
-/

namespace A159888.P10870773385966924103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A105228 (a (n - 1) + 1).toNat - 1

end

end A159888.P10870773385966924103

/-! ## A159888.P13589282040904705726

`A102370(abs(a(A023443(n))))` with `a(0)=29`
-/

namespace A159888.P13589282040904705726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A102370 |a (A023443 n).toNat|.toNat

end

end A159888.P13589282040904705726

/-!
# A159893: Positive numbers y such that y^2 is of the form x^2+(x+727)^2 with integer x.

The programs for A159893, there is no canonical definition to state claims against.
-/

/-! ## A159893.P13846843718138150128

`A159574(n+1)+A159896(n+1)-A159589(n+1)`
-/

namespace A159893.P13846843718138150128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159574 (n + 1) + (A159896 (n + 1) - A159589 (n + 1))

end

end A159893.P13846843718138150128

/-!
# A159899: A variant of A067721 with a different beginning; see A067721 for further information.

The programs for A159899, there is no canonical definition to state claims against.
-/

/-! ## A159899.P18266743565153084597

`A263724(n+2)%2*A067721(A009005(n+1))`
-/

namespace A159899.P18266743565153084597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263724 (n + 2)) 2 * A067721 (A009005 (n + 1)).toNat

end

end A159899.P18266743565153084597

/-! ## A159899.P1567467675876028174

`A067721(A009005(n+1))%A033993(A056105(n))`
-/

namespace A159899.P1567467675876028174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067721 (A009005 (n + 1)).toNat) (A033993 (A056105 n).toNat)

end

end A159899.P1567467675876028174

/-! ## A159899.P1618917868366383888

`A067721(A009005(n+1))+A000007(A067692(n+1))`
-/

namespace A159899.P1618917868366383888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 (A009005 (n + 1)).toNat + A000007 (A067692 (n + 1)).toNat

end

end A159899.P1618917868366383888

/-! ## A159899.P7001503236657530885

`A067721(A009005(n+1))+A000038(A328637(n+1))`
-/

namespace A159899.P7001503236657530885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 (A009005 (n + 1)).toNat + A000038 (A328637 (n + 1)).toNat

end

end A159899.P7001503236657530885

/-! ## A159899.P13829991704957183112

`A067721(A009005(n+1))+A000007(A338529(n+1))`
-/

namespace A159899.P13829991704957183112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 (A009005 (n + 1)).toNat + A000007 (A338529 (n + 1)).toNat

end

end A159899.P13829991704957183112

/-! ## A159899.P7373654017417564365

`A001826(A334729(n+1))*A067721(A009005(n+1))`
-/

namespace A159899.P7373654017417564365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A334729 (n + 1)).toNat * A067721 (A009005 (n + 1)).toNat

end

end A159899.P7373654017417564365

