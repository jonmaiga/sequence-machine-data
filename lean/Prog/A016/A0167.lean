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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C008
import Seq.B003.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C010
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A016724: Expansion of (2-2*x-x^2)/((1-2*x^2)*(1-x)^2).

The programs for A016724, the canonical program `A016724.P11573885494710222286` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016724 has offset 0).

The definition of A016724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016724.P11573885494710222286

`∑[2*a(n-2)-1]` with `a(0)=2, a(1)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016724

/-- `∑[2*a(n-2)-1]` -/
def P11573885494710222286.Spec : Prop :=
  ∀ n, P11573885494710222286.a n = A016724 n

theorem P11573885494710222286.correct : P11573885494710222286.Spec := by
  intro n
  simp only [A016724]

end A016724

/-! ## A016724.P15018060989741267787

`2*a(n-2)+3-n` with `a(0)=2, a(1)=2`
-/

namespace A016724.P15018060989741267787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * a (n - 2) + (3 - (n : ℤ))

end

end A016724.P15018060989741267787

namespace A016724

/-- `2*a(n-2)+3-n` -/
def P15018060989741267787.Spec : Prop :=
  ∀ n, P15018060989741267787.a n = A016724 n

end A016724

/-! ## A016724.P7220220212982404974

`3-(n-2*a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A016724.P7220220212982404974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 - ((n : ℤ) - 2 * a (n - 2))

end

end A016724.P7220220212982404974

namespace A016724

/-- `3-(n-2*a(n-2))` -/
def P7220220212982404974.Spec : Prop :=
  ∀ n, P7220220212982404974.a n = A016724 n

end A016724

/-! ## A016724.P13370467789850413360

`((-1)^n+1)^(n/2)+n+1`
-/

namespace A016724.P13370467789850413360
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 1 : ℝ) ^ ((n : ℚ) / 2 : ℝ) + (n + 1 : ℝ)

end

end A016724.P13370467789850413360

namespace A016724

/-- `((-1)^n+1)^(n/2)+n+1` -/
def P13370467789850413360.Spec : Prop :=
  ∀ n, P13370467789850413360.a n = (A016724 n : ℝ)

end A016724

/-! ## A016724.P8961938884766424702

`∑[a(n-2)+a(n-2)-1]` with `a(0)=2, a(1)=0`
-/

namespace A016724.P8961938884766424702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016724.P8961938884766424702

namespace A016724

/-- `∑[a(n-2)+a(n-2)-1]` -/
def P8961938884766424702.Spec : Prop :=
  ∀ n, P8961938884766424702.a n = A016724 n

theorem P8961938884766424702.correct : P8961938884766424702.Spec := by
  intro n
  simp only [A016724, Nat.add_sub_cancel, A016724.P8961938884766424702.f1, A016724.P8961938884766424702.a, A016724.P11573885494710222286.f1, A016724.P11573885494710222286.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A016724

/-! ## A016724.P13840313690456550494

`∑[a(n-2)-(1-a(n-2))]` with `a(0)=2, a(1)=0`
-/

namespace A016724.P13840313690456550494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016724.P13840313690456550494

namespace A016724

/-- `∑[a(n-2)-(1-a(n-2))]` -/
def P13840313690456550494.Spec : Prop :=
  ∀ n, P13840313690456550494.a n = A016724 n

theorem P13840313690456550494.correct : P13840313690456550494.Spec := by
  intro n
  simp only [A016724, Nat.add_sub_cancel, A016724.P13840313690456550494.f1, A016724.P13840313690456550494.a, A016724.P11573885494710222286.f1, A016724.P11573885494710222286.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A016724

/-! ## A016724.P16325831474243489658

`∑[A078029(A032766(n))+1]`
-/

namespace A016724.P16325831474243489658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A032766 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016724.P16325831474243489658

namespace A016724

/-- `∑[A078029(A032766(n))+1]` -/
def P16325831474243489658.Spec : Prop :=
  ∀ n, P16325831474243489658.a n = A016724 n

end A016724

/-! ## A016724.P10198408169306766533

`∑[Δ[Δ[A016116(n)]]+1]`
-/

namespace A016724.P10198408169306766533
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016724.P10198408169306766533

namespace A016724

/-- `∑[Δ[Δ[A016116(n)]]+1]` -/
def P10198408169306766533.Spec : Prop :=
  ∀ n, P10198408169306766533.a n = A016724 n

end A016724

/-! ## A016724.P11291164506984688273

`Δ[A051032(n+1)+∑[n]]`
-/

namespace A016724.P11291164506984688273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016724.P11291164506984688273

namespace A016724

/-- `Δ[A051032(n+1)+∑[n]]` -/
def P11291164506984688273.Spec : Prop :=
  ∀ n, P11291164506984688273.a n = A016724 n

end A016724

/-! ## A016724.P10011256113100237919

`Δ[A163417(n+2)+(n+1)²]`
-/

namespace A016724.P10011256113100237919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163417 (n + 2) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016724.P10011256113100237919

namespace A016724

/-- `Δ[A163417(n+2)+(n+1)²]` -/
def P10011256113100237919.Spec : Prop :=
  ∀ n, P10011256113100237919.a n = A016724 n

end A016724

/-!
# A016725: Number of integer solutions to x^2+y^2+z^2 = n^2, allowing zeros and distinguishing signs and order.

The programs for A016725, there is no canonical definition to state claims against.
-/

/-! ## A016725.P15654357515563429488

`A005875(n²)`
-/

namespace A016725.P15654357515563429488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (n ^ 2)

end

end A016725.P15654357515563429488

/-! ## A016725.P6815059321022154792

`A000605(n)-A078183(n)`
-/

namespace A016725.P6815059321022154792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - A078183 n

end

end A016725.P6815059321022154792

/-! ## A016725.P3095727460429660417

`Δ[A078183(n)]-A078184(n)`
-/

namespace A016725.P3095727460429660417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078184 n

end

end A016725.P3095727460429660417

/-! ## A016725.P2968720607625240296

`A078183(n+1)-(A078184(n)+A078183(n))`
-/

namespace A016725.P2968720607625240296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 (n + 1) - (A078184 n + A078183 n)

end

end A016725.P2968720607625240296

/-! ## A016725.P4885210086429964753

`A000605(n)-A053592(2*n)`
-/

namespace A016725.P4885210086429964753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - A053592 (2 * n)

end

end A016725.P4885210086429964753

/-! ## A016725.P17301416129695550007

`A053591(2*n)-A078183(n)`
-/

namespace A016725.P17301416129695550007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053591 (2 * n) - A078183 n

end

end A016725.P17301416129695550007

/-! ## A016725.P1708788742649783306

`A053591(2*n)-A053592(2*n)`
-/

namespace A016725.P1708788742649783306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053591 (2 * n) - A053592 (2 * n)

end

end A016725.P1708788742649783306

/-! ## A016725.P1556575975373357210

`A000605(n)-record[A053592(and(n, n+1))]`
-/

namespace A016725.P1556575975373357210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016725.P1556575975373357210

/-! ## A016725.P1521203377822881547

`A000605(n)-record[lcm((1-n)%2, A053592(n))]`
-/

namespace A016725.P1521203377822881547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (1 - (n : ℤ)) 2) (A053592 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A016725.P1521203377822881547

/-! ## A016725.P6718095052469549981

`A000605(n)-record[A053592(A014681(n))]`
-/

namespace A016725.P6718095052469549981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016725.P6718095052469549981

/-! ## A016725.P13476229702052236896

`record[A053591(A014681(n))]-A078183(n)`
-/

namespace A016725.P13476229702052236896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053591 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078183 n

end

end A016725.P13476229702052236896

/-! ## A016725.P15218009204236978317

`A000605(n)-record[A053592(A153733(n))]`
-/

namespace A016725.P15218009204236978317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016725.P15218009204236978317

/-! ## A016725.P13963604432450583365

`or(1, A053591(A005843(n)))-A078183(n)`
-/

namespace A016725.P13963604432450583365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053591 (A005843 n).toNat) - A078183 n

end

end A016725.P13963604432450583365

/-! ## A016725.P7287697985529863708

`A000605(n)-record[A053592(n)%A053591(n)]`
-/

namespace A016725.P7287697985529863708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053592 n) (A053591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016725.P7287697985529863708

/-! ## A016725.P16924684501876361399

`A053591(A005843(n))%A133818(n)-A078183(n)`
-/

namespace A016725.P16924684501876361399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053591 (A005843 n).toNat) (A133818 n) - A078183 n

end

end A016725.P16924684501876361399

/-! ## A016725.P11797747698498918986

`Δ[A053592(2*n)]-A078184(n)`
-/

namespace A016725.P11797747698498918986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078184 n

end

end A016725.P11797747698498918986

/-! ## A016725.P7563610337924469267

`A267651(A233583(n+1))%∑[A249589(n+1)]`
-/

namespace A016725.P7563610337924469267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267651 (A233583 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016725.P7563610337924469267

/-! ## A016725.P5371639948244567976

`gcd(C(2, n+2), A267651(A004277(n)))`
-/

namespace A016725.P5371639948244567976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A267651 (A004277 n).toNat)

end

end A016725.P5371639948244567976

/-! ## A016725.P7015304517821512581

`A267651(A004277(n))^A178334(n)`
-/

namespace A016725.P7015304517821512581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267651 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A016725.P7015304517821512581

/-! ## A016725.P2413238049860379654

`A267651(A004277(n))%A000040(∑[n+1]+2)`
-/

namespace A016725.P2413238049860379654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267651 (A004277 n).toNat) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A016725.P2413238049860379654

/-!
# A016727: Number of inequivalent solutions to x^2+y^2+z^2 = n^2.

The programs for A016727, there is no canonical definition to state claims against.
-/

/-! ## A016727.P96765190321972032

`A000164(n²)`
-/

namespace A016727.P96765190321972032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n ^ 2)

end

end A016727.P96765190321972032

/-! ## A016727.P4228952552820073697

`A181786(n)+A063014(n)`
-/

namespace A016727.P4228952552820073697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 n + A063014 n

end

end A016727.P4228952552820073697

/-! ## A016727.P1283833173860324025

`A181786(n)+∑{d}[n, A024362(#)]+1`
-/

namespace A016727.P1283833173860324025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 n + (∑ d ∈ Nat.divisors (f1 n), A024362 d + 1)

end

end A016727.P1283833173860324025

/-! ## A016727.P17169183319893907829

`A181786(n)+A003602(A046109(n))`
-/

namespace A016727.P17169183319893907829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 n + A003602 (A046109 n).toNat

end

end A016727.P17169183319893907829

/-! ## A016727.P14848153884116832762

`A046080(A028310(n))+A181786(n)+1`
-/

namespace A016727.P14848153884116832762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat + (A181786 n + 1)

end

end A016727.P14848153884116832762

/-! ## A016727.P14667781856901529968

`A046080(A008486(n))+A181786(n)+1`
-/

namespace A016727.P14667781856901529968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008486 n).toNat + (A181786 n + 1)

end

end A016727.P14667781856901529968

/-! ## A016727.P875245980101158894

`A046080(A008574(n))+A181786(n)+1`
-/

namespace A016727.P875245980101158894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008574 n).toNat + (A181786 n + 1)

end

end A016727.P875245980101158894

/-! ## A016727.P9147726950819363262

`A328712(A008458(n))+A181786(n)+1`
-/

namespace A016727.P9147726950819363262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A008458 n).toNat + (A181786 n + 1)

end

end A016727.P9147726950819363262

/-! ## A016727.P1917465211734304508

`A255212(∑[n+4]+2)`
-/

namespace A016727.P1917465211734304508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A016727.P1917465211734304508

/-! ## A016727.P3285877328336987455

`A255212(A046691(n+2))%58`
-/

namespace A016727.P3285877328336987455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255212 (A046691 (n + 2)).toNat) 58

end

end A016727.P3285877328336987455

/-! ## A016727.P15163007436591671967

`or(A000007(n), A255212(A046691(n+2)))`
-/

namespace A016727.P15163007436591671967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255212 (A046691 (n + 2)).toNat)

end

end A016727.P15163007436591671967

/-! ## A016727.P2698290238130935037

`A255212(A167499(n)+A008486(n))%42`
-/

namespace A016727.P2698290238130935037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255212 (A167499 n + A008486 n).toNat) 42

end

end A016727.P2698290238130935037

/-! ## A016727.P16399138606904744650

`abs(A255212(A046691(n+2))-A000038(n))`
-/

namespace A016727.P16399138606904744650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A255212 (A046691 (n + 2)).toNat - A000038 n|

end

end A016727.P16399138606904744650

/-! ## A016727.P15940802678281140004

`A255212(A046691(n+2))+A000007(n+1)`
-/

namespace A016727.P15940802678281140004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A016727.P15940802678281140004

/-! ## A016727.P12501065093459350187

`A255212(A046691(n+2))+A000035(2*n)`
-/

namespace A016727.P12501065093459350187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A046691 (n + 2)).toNat + A000035 (2 * n)

end

end A016727.P12501065093459350187

/-! ## A016727.P10532104090636400959

`A000034(2*n)*A255212(A046691(n+2))`
-/

namespace A016727.P10532104090636400959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A255212 (A046691 (n + 2)).toNat

end

end A016727.P10532104090636400959

/-! ## A016727.P5925067391693053460

`A072405(A277327(n))*A255212(A046691(n+2))`
-/

namespace A016727.P5925067391693053460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A277327 n).toNat * A255212 (A046691 (n + 2)).toNat

end

end A016727.P5925067391693053460

/-! ## A016727.P1031681718039963137

`A255212(A046691(n+2))^A000120(A053644(n))`
-/

namespace A016727.P1031681718039963137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255212 (A046691 (n + 2)).toNat : ℚ) ^ (A000120 (A053644 n).toNat : ℤ)

end

end A016727.P1031681718039963137

/-! ## A016727.P12527013114197670430

`-A008683(A020483(n))*A255212(A046691(n+2))`
-/

namespace A016727.P12527013114197670430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A020483 n).toNat * A255212 (A046691 (n + 2)).toNat)

end

end A016727.P12527013114197670430

/-! ## A016727.P8073498728613822375

`A000164(A000290(n))*A000164(A000925(n))`
-/

namespace A016727.P8073498728613822375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000290 n).toNat * A000164 (A000925 n).toNat

end

end A016727.P8073498728613822375

/-!
# A016728: Number of integer points (x,y,z) at distance <= 0.5 from sphere of radius n.

The programs for A016728, there is no canonical definition to state claims against.
-/

/-! ## A016728.P4222093427335040359

`Δ[A053592(A004273(n))]`
-/

namespace A016728.P4222093427335040359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016728.P4222093427335040359

/-! ## A016728.P6173904222401537832

`Δ[A053592(record[A006257(n)])]`
-/

namespace A016728.P6173904222401537832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016728.P6173904222401537832

/-! ## A016728.P6718576261802285477

`Δ[A053592(record[A006369(n)])]`
-/

namespace A016728.P6718576261802285477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016728.P6718576261802285477

/-! ## A016728.P6587185812553784784

`Δ[A053592(record[A026741(n)])]`
-/

namespace A016728.P6587185812553784784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016728.P6587185812553784784

/-! ## A016728.P4533520720006197214

`Δ[A053592(record[A106609(n)])]`
-/

namespace A016728.P4533520720006197214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016728.P4533520720006197214

/-! ## A016728.P14644815635297021883

`A053592(2*n+1)-A053592(A004273(n))`
-/

namespace A016728.P14644815635297021883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n + 1) - A053592 (A004273 n).toNat

end

end A016728.P14644815635297021883

/-! ## A016728.P18094363481445247412

`A053592(2*n+1)-A053592(record[A106609(n)])`
-/

namespace A016728.P18094363481445247412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n + 1) - A053592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016728.P18094363481445247412

/-! ## A016728.P13690220029899429155

`A053592(2*n+1)-A053592(A014681(2*n))`
-/

namespace A016728.P13690220029899429155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n + 1) - A053592 (A014681 (2 * n)).toNat

end

end A016728.P13690220029899429155

/-!
# A016729: Highest minimal Hamming distance of any Type 4^H+ Hermitian additive self-dual code over GF(4) of length n.

The programs for A016729, the canonical program `A016729.P5716740271180834695` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016729 has offset 1).

The definition of A016729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016729.P5716740271180834695

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=3, a(5)=4, a(6)=3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016729

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P5716740271180834695.Spec : Prop :=
  ∀ n, P5716740271180834695.a n = A016729 (n + 1)

theorem P5716740271180834695.correct : P5716740271180834695.Spec := by
  intro n
  simp only [A016729, Nat.add_sub_cancel]

end A016729

/-! ## A016729.P14962768095486909530

`or(n%2, ceil(n/3))+1`
-/

namespace A016729.P14962768095486909530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) ⌈(n : ℚ) / 3⌉ + 1

end

end A016729.P14962768095486909530

namespace A016729

/-- `or(n%2, ceil(n/3))+1` -/
def P14962768095486909530.Spec : Prop :=
  ∀ n, P14962768095486909530.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P5903287101839189214

`or(and(1, n), ceil(n/3))+1`
-/

namespace A016729.P5903287101839189214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) ⌈(n : ℚ) / 3⌉ + 1

end

end A016729.P5903287101839189214

namespace A016729

/-- `or(and(1, n), ceil(n/3))+1` -/
def P5903287101839189214.Spec : Prop :=
  ∀ n, P5903287101839189214.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P9146588776319594638

`or(ceil(n/3), char[or(1, n)])+1`
-/

namespace A016729.P9146588776319594638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n : ℚ) / 3⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1

end

end A016729.P9146588776319594638

namespace A016729

/-- `or(ceil(n/3), char[or(1, n)])+1` -/
def P9146588776319594638.Spec : Prop :=
  ∀ n, P9146588776319594638.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P15120487856854249446

`2*n+3-A187332(n+1)`
-/

namespace A016729.P15120487856854249446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A187332 (n + 1)

end

end A016729.P15120487856854249446

namespace A016729

/-- `2*n+3-A187332(n+1)` -/
def P15120487856854249446.Spec : Prop :=
  ∀ n, P15120487856854249446.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P15725473805662378056

`A123919(n+1)+A093718(n)`
-/

namespace A016729.P15725473805662378056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (n + 1) + A093718 n

end

end A016729.P15725473805662378056

namespace A016729

/-- `A123919(n+1)+A093718(n)` -/
def P15725473805662378056.Spec : Prop :=
  ∀ n, P15725473805662378056.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P6258187371733410246

`A300068(n)+2-A008612(n)`
-/

namespace A016729.P6258187371733410246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 n + (2 - A008612 n)

end

end A016729.P6258187371733410246

namespace A016729

/-- `A300068(n)+2-A008612(n)` -/
def P6258187371733410246.Spec : Prop :=
  ∀ n, P6258187371733410246.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P10663955021542651723

`A065502(n+1)-A047422(n+1)`
-/

namespace A016729.P10663955021542651723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1) - A047422 (n + 1)

end

end A016729.P10663955021542651723

namespace A016729

/-- `A065502(n+1)-A047422(n+1)` -/
def P10663955021542651723.Spec : Prop :=
  ∀ n, P10663955021542651723.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P8685427403598756433

`A144396(n+1)%A187332(n+1)`
-/

namespace A016729.P8685427403598756433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A187332 (n + 1))

end

end A016729.P8685427403598756433

namespace A016729

/-- `A144396(n+1)%A187332(n+1)` -/
def P8685427403598756433.Spec : Prop :=
  ∀ n, P8685427403598756433.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P18028949653688179117

`Δ[comp[or(5, n)]+round(n²/6)]`
-/

namespace A016729.P18028949653688179117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016729.P18028949653688179117

namespace A016729

/-- `Δ[comp[or(5, n)]+round(n²/6)]` -/
def P18028949653688179117.Spec : Prop :=
  ∀ n, P18028949653688179117.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P18148910314284814813

`A123920(n+3)`
-/

namespace A016729.P18148910314284814813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (n + 3)

end

end A016729.P18148910314284814813

namespace A016729

/-- `A123920(n+3)` -/
def P18148910314284814813.Spec : Prop :=
  ∀ n, P18148910314284814813.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P9861860168734171682

`A099480(A061800(n+1))`
-/

namespace A016729.P9861860168734171682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 (A061800 (n + 1)).toNat

end

end A016729.P9861860168734171682

namespace A016729

/-- `A099480(A061800(n+1))` -/
def P9861860168734171682.Spec : Prop :=
  ∀ n, P9861860168734171682.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P9526838552128896568

`A103221(n+1)+A097992(n+2)`
-/

namespace A016729.P9526838552128896568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1) + A097992 (n + 2)

end

end A016729.P9526838552128896568

namespace A016729

/-- `A103221(n+1)+A097992(n+2)` -/
def P9526838552128896568.Spec : Prop :=
  ∀ n, P9526838552128896568.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P18308262636973163790

`A103221(n+1)+A008619(A103221(2*n+1))`
-/

namespace A016729.P18308262636973163790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1) + A008619 (A103221 (2 * n + 1)).toNat

end

end A016729.P18308262636973163790

namespace A016729

/-- `A103221(n+1)+A008619(A103221(2*n+1))` -/
def P18308262636973163790.Spec : Prop :=
  ∀ n, P18308262636973163790.a n = A016729 (n + 1)

end A016729

/-! ## A016729.P1878806297543347337

`A111709(2*(n+1))+1`
-/

namespace A016729.P1878806297543347337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111709 (2 * (n + 1)) + 1

end

end A016729.P1878806297543347337

namespace A016729

/-- `A111709(2*(n+1))+1` -/
def P1878806297543347337.Spec : Prop :=
  ∀ n, P1878806297543347337.a n = A016729 (n + 1)

end A016729

/-!
# A016742: Even squares: a(n) = (2*n)^2.

The programs for A016742, the canonical program `A016742.P17821809754172938154` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016742 has offset 0).

The definition of A016742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)²` (program `A016742.P17821809754172938154`, by `A016742.P17821809754172938154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016742.P17821809754172938154

`(2*n)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016742

/-- `(2*n)²` -/
def P17821809754172938154.Spec : Prop :=
  ∀ n, (P17821809754172938154.a n : ℤ) = A016742 n

theorem P17821809754172938154.correct : P17821809754172938154.Spec := by
  intro n
  simp only [A016742]

end A016742

/-!
# A016743: Even cubes: a(n) = (2*n)^3.

The programs for A016743, the canonical program `A016743.P7621108068918767533` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016743 has offset 0).

The definition of A016743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^3` (program `A016743.P7621108068918767533`, by `A016743.P7621108068918767533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016743.P7621108068918767533

`(2*n)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016743

/-- `(2*n)^3` -/
def P7621108068918767533.Spec : Prop :=
  ∀ n, (P7621108068918767533.a n : ℤ) = A016743 n

theorem P7621108068918767533.correct : P7621108068918767533.Spec := by
  intro n
  simp only [A016743]

end A016743

/-!
# A016744: a(n) = (2*n)^4.

The programs for A016744, the canonical program `A016744.P3860911854705044273` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016744 has offset 0).

The definition of A016744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^4` (program `A016744.P3860911854705044273`, by `A016744.P3860911854705044273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016744.P3860911854705044273

`(2*n)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016744

/-- `(2*n)^4` -/
def P3860911854705044273.Spec : Prop :=
  ∀ n, (P3860911854705044273.a n : ℤ) = A016744 n

theorem P3860911854705044273.correct : P3860911854705044273.Spec := by
  intro n
  simp only [A016744]

end A016744

/-!
# A016745: a(n) = (2*n)^5.

The programs for A016745, the canonical program `A016745.P16736511559086793954` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016745 has offset 0).

The definition of A016745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^5` (program `A016745.P16736511559086793954`, by `A016745.P16736511559086793954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016745.P16736511559086793954

`(2*n)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016745

/-- `(2*n)^5` -/
def P16736511559086793954.Spec : Prop :=
  ∀ n, (P16736511559086793954.a n : ℤ) = A016745 n

theorem P16736511559086793954.correct : P16736511559086793954.Spec := by
  intro n
  simp only [A016745]

end A016745

/-!
# A016746: a(n) = (2*n)^6.

The programs for A016746, the canonical program `A016746.P14284362242224681843` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016746 has offset 0).

The definition of A016746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^6` (program `A016746.P14284362242224681843`, by `A016746.P14284362242224681843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016746.P14284362242224681843

`(2*n)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016746

/-- `(2*n)^6` -/
def P14284362242224681843.Spec : Prop :=
  ∀ n, (P14284362242224681843.a n : ℤ) = A016746 n

theorem P14284362242224681843.correct : P14284362242224681843.Spec := by
  intro n
  simp only [A016746]

end A016746

/-!
# A016747: a(n) = (2*n)^7.

The programs for A016747, the canonical program `A016747.P10712690314001872389` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016747 has offset 0).

The definition of A016747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^7` (program `A016747.P10712690314001872389`, by `A016747.P10712690314001872389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016747.P10712690314001872389

`(2*n)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016747

/-- `(2*n)^7` -/
def P10712690314001872389.Spec : Prop :=
  ∀ n, (P10712690314001872389.a n : ℤ) = A016747 n

theorem P10712690314001872389.correct : P10712690314001872389.Spec := by
  intro n
  simp only [A016747]

end A016747

/-!
# A016748: a(n) = (2*n)^8.

The programs for A016748, the canonical program `A016748.P10525036460226040237` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016748 has offset 0).

The definition of A016748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^8` (program `A016748.P10525036460226040237`, by `A016748.P10525036460226040237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016748.P10525036460226040237

`(2*n)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016748

/-- `(2*n)^8` -/
def P10525036460226040237.Spec : Prop :=
  ∀ n, (P10525036460226040237.a n : ℤ) = A016748 n

theorem P10525036460226040237.correct : P10525036460226040237.Spec := by
  intro n
  simp only [A016748]

end A016748

/-!
# A016749: a(n) = (2*n)^9.

The programs for A016749, the canonical program `A016749.P2696581347656648600` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016749 has offset 0).

The definition of A016749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^9` (program `A016749.P2696581347656648600`, by `A016749.P2696581347656648600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016749.P2696581347656648600

`(2*n)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016749

/-- `(2*n)^9` -/
def P2696581347656648600.Spec : Prop :=
  ∀ n, (P2696581347656648600.a n : ℤ) = A016749 n

theorem P2696581347656648600.correct : P2696581347656648600.Spec := by
  intro n
  simp only [A016749]

end A016749

/-!
# A016750: a(n) = (2*n)^10.

The programs for A016750, the canonical program `A016750.P3077076585520264960` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016750 has offset 0).

The definition of A016750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^10` (program `A016750.P3077076585520264960`, by `A016750.P3077076585520264960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016750.P3077076585520264960

`(2*n)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016750

/-- `(2*n)^10` -/
def P3077076585520264960.Spec : Prop :=
  ∀ n, (P3077076585520264960.a n : ℤ) = A016750 n

theorem P3077076585520264960.correct : P3077076585520264960.Spec := by
  intro n
  simp only [A016750]

end A016750

/-!
# A016751: a(n) = (2*n)^11.

The programs for A016751, the canonical program `A016751.P9182074990130146716` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016751 has offset 0).

The definition of A016751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^11` (program `A016751.P9182074990130146716`, by `A016751.P9182074990130146716.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016751.P9182074990130146716

`(2*n)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016751

/-- `(2*n)^11` -/
def P9182074990130146716.Spec : Prop :=
  ∀ n, (P9182074990130146716.a n : ℤ) = A016751 n

theorem P9182074990130146716.correct : P9182074990130146716.Spec := by
  intro n
  simp only [A016751]

end A016751

/-!
# A016752: a(n) = (2*n)^12.

The programs for A016752, the canonical program `A016752.P3973769522650946709` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016752 has offset 0).

The definition of A016752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^12` (program `A016752.P3973769522650946709`, by `A016752.P3973769522650946709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016752.P3973769522650946709

`(2*n)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016752

/-- `(2*n)^12` -/
def P3973769522650946709.Spec : Prop :=
  ∀ n, (P3973769522650946709.a n : ℤ) = A016752 n

theorem P3973769522650946709.correct : P3973769522650946709.Spec := by
  intro n
  simp only [A016752]

end A016752

/-!
# A016753: Expansion of 1/((1-3*x)*(1-4*x)*(1-5*x)).

The programs for A016753, the canonical program `A016753.P12923637117531106403` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016753 has offset 0).

The definition of A016753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016753.P12923637117531106403

`9*a(n-1)-20*a(n-2)+3^n` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016753

/-- `9*a(n-1)-20*a(n-2)+3^n` -/
def P12923637117531106403.Spec : Prop :=
  ∀ n, P12923637117531106403.a n = A016753 n

theorem P12923637117531106403.correct : P12923637117531106403.Spec := by
  intro n
  simp only [A016753]

end A016753

/-! ## A016753.P18189376017100980040

`(5^(n+2)-2*4^(n+2)+3^(n+2))/2`
-/

namespace A016753.P18189376017100980040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 2) : ℤ) - (2 * 4 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 2

end

end A016753.P18189376017100980040

namespace A016753

/-- `(5^(n+2)-2*4^(n+2)+3^(n+2))/2` -/
def P18189376017100980040.Spec : Prop :=
  ∀ n, P18189376017100980040.a n = (A016753 n : ℚ)

theorem P18189376017100980040.correct : P18189376017100980040.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016753, Nat.add_sub_cancel, A016753.P18189376017100980040.a, A016753.P12923637117531106403.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016753, Nat.add_sub_cancel, A016753.P18189376017100980040.a, A016753.P12923637117531106403.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016753

/-! ## A016753.P6400001857607637545

`A005059(n+1)+4*a(n-1)` with `a(0)=1`
-/

namespace A016753.P6400001857607637545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 4 * a (n - 1)

end

end A016753.P6400001857607637545

namespace A016753

/-- `A005059(n+1)+4*a(n-1)` -/
def P6400001857607637545.Spec : Prop :=
  ∀ n, P6400001857607637545.a n = A016753 n

end A016753

/-! ## A016753.P8464556464013142392

`Δ[A016209(n)-A016208(n)]`
-/

namespace A016753.P8464556464013142392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n - A016208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016753.P8464556464013142392

namespace A016753

/-- `Δ[A016209(n)-A016208(n)]` -/
def P8464556464013142392.Spec : Prop :=
  ∀ n, P8464556464013142392.a n = A016753 n

end A016753

/-! ## A016753.P15599070306449666645

`2*A016218(n)-A016208(n)`
-/

namespace A016753.P15599070306449666645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016218 n - A016208 n

end

end A016753.P15599070306449666645

namespace A016753

/-- `2*A016218(n)-A016208(n)` -/
def P15599070306449666645.Spec : Prop :=
  ∀ n, P15599070306449666645.a n = A016753 n

end A016753

/-! ## A016753.P11250940760494033659

`A005060(n+2)-Δ[A016209(n)]`
-/

namespace A016753.P11250940760494033659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 (n + 2) - (f1 (n + 1) - f1 n)

end

end A016753.P11250940760494033659

namespace A016753

/-- `A005060(n+2)-Δ[A016209(n)]` -/
def P11250940760494033659.Spec : Prop :=
  ∀ n, P11250940760494033659.a n = A016753 n

end A016753

/-! ## A016753.P15258138761496110344

`Δ[A016209(n)]-A005061(n+2)`
-/

namespace A016753.P15258138761496110344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005061 (n + 2)

end

end A016753.P15258138761496110344

namespace A016753

/-- `Δ[A016209(n)]-A005061(n+2)` -/
def P15258138761496110344.Spec : Prop :=
  ∀ n, P15258138761496110344.a n = A016753 n

end A016753

/-! ## A016753.P1355731070986892605

`A005059(n+2)-A005061(n+2)`
-/

namespace A016753.P1355731070986892605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 2) - A005061 (n + 2)

end

end A016753.P1355731070986892605

namespace A016753

/-- `A005059(n+2)-A005061(n+2)` -/
def P1355731070986892605.Spec : Prop :=
  ∀ n, P1355731070986892605.a n = A016753 n

end A016753

/-! ## A016753.P14406669537411345640

`A005060(n+2)-A005059(n+2)`
-/

namespace A016753.P14406669537411345640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 (n + 2) - A005059 (n + 2)

end

end A016753.P14406669537411345640

namespace A016753

/-- `A005060(n+2)-A005059(n+2)` -/
def P14406669537411345640.Spec : Prop :=
  ∀ n, P14406669537411345640.a n = A016753 n

end A016753

/-! ## A016753.P2124628065211078799

`A081186(n+2)-A000302(n+2)`
-/

namespace A016753.P2124628065211078799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (n + 2) - A000302 (n + 2)

end

end A016753.P2124628065211078799

namespace A016753

/-- `A081186(n+2)-A000302(n+2)` -/
def P2124628065211078799.Spec : Prop :=
  ∀ n, P2124628065211078799.a n = A016753 n

end A016753

/-! ## A016753.P15240753571648456

`A081186(n+2)-A051437(A051755(n+3))`
-/

namespace A016753.P15240753571648456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (n + 2) - A051437 (A051755 (n + 3)).toNat

end

end A016753.P15240753571648456

namespace A016753

/-- `A081186(n+2)-A051437(A051755(n+3))` -/
def P15240753571648456.Spec : Prop :=
  ∀ n, P15240753571648456.a n = A016753 n

end A016753

/-! ## A016753.P4886663211676288937

`Δ[A016218(n)-A016209(n)]`
-/

namespace A016753.P4886663211676288937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016218 n - A016209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016753.P4886663211676288937

namespace A016753

/-- `Δ[A016218(n)-A016209(n)]` -/
def P4886663211676288937.Spec : Prop :=
  ∀ n, P4886663211676288937.a n = A016753 n

end A016753

/-!
# A016754: Odd squares: a(n) = (2n+1)^2. Also centered octagonal numbers.

The programs for A016754, the canonical program `A016754.P2987865549988322084` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016754 has offset 0).

The definition of A016754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)²` (program `A016754.P2987865549988322084`, by `A016754.P2987865549988322084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016754.P2987865549988322084

`(2*n+1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016754

/-- `(2*n+1)²` -/
def P2987865549988322084.Spec : Prop :=
  ∀ n, (P2987865549988322084.a n : ℤ) = A016754 n

theorem P2987865549988322084.correct : P2987865549988322084.Spec := by
  intro n
  simp only [A016754]

end A016754

/-! ## A016754.P5331634360335956882

`a(n-1)+8*n` with `a(0)=1`
-/

namespace A016754.P5331634360335956882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * n

end

end A016754.P5331634360335956882

namespace A016754

/-- `a(n-1)+8*n` -/
def P5331634360335956882.Spec : Prop :=
  ∀ n, (P5331634360335956882.a n : ℤ) = A016754 n

theorem P5331634360335956882.correct : P5331634360335956882.Spec := by
  intro n
  induction n with
  | zero => simp [A016754, A016754.P5331634360335956882.a, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016754, Nat.add_sub_cancel, A016754.P5331634360335956882.a, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016754

/-! ## A016754.P13847908505890900460

`A033996(n)+1`
-/

namespace A016754.P13847908505890900460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + 1

end

end A016754.P13847908505890900460

namespace A016754

/-- `A033996(n)+1` -/
def P13847908505890900460.Spec : Prop :=
  ∀ n, P13847908505890900460.a n = A016754 n

end A016754

/-! ## A016754.P6732677240512371989

`A033951(n)+n`
-/

namespace A016754.P6732677240512371989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n + (n : ℤ)

end

end A016754.P6732677240512371989

namespace A016754

/-- `A033951(n)+n` -/
def P6732677240512371989.Spec : Prop :=
  ∀ n, P6732677240512371989.a n = A016754 n

end A016754

/-! ## A016754.P7606150203631064554

`2*A046092(n)+1`
-/

namespace A016754.P7606150203631064554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046092 n + 1

end

end A016754.P7606150203631064554

namespace A016754

/-- `2*A046092(n)+1` -/
def P7606150203631064554.Spec : Prop :=
  ∀ n, P7606150203631064554.a n = A016754 n

end A016754

/-! ## A016754.P14384906603632779276

`2*A001844(n)-1`
-/

namespace A016754.P14384906603632779276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001844 n - 1

end

end A016754.P14384906603632779276

namespace A016754

/-- `2*A001844(n)-1` -/
def P14384906603632779276.Spec : Prop :=
  ∀ n, P14384906603632779276.a n = A016754 n

end A016754

/-! ## A016754.P16157896773257056937

`1+8*A000217(n)`
-/

namespace A016754.P16157896773257056937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 8 * A000217 n

end

end A016754.P16157896773257056937

namespace A016754

/-- `1+8*A000217(n)` -/
def P16157896773257056937.Spec : Prop :=
  ∀ n, P16157896773257056937.a n = A016754 n

end A016754

/-! ## A016754.P6671316846913798725

`A003215(n)+A002378(n)`
-/

namespace A016754.P6671316846913798725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + A002378 n

end

end A016754.P6671316846913798725

namespace A016754

/-- `A003215(n)+A002378(n)` -/
def P6671316846913798725.Spec : Prop :=
  ∀ n, P6671316846913798725.a n = A016754 n

end A016754

/-! ## A016754.P14169901975247835402

`A046092(n)+A001844(n)`
-/

namespace A016754.P14169901975247835402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A001844 n

end

end A016754.P14169901975247835402

namespace A016754

/-- `A046092(n)+A001844(n)` -/
def P14169901975247835402.Spec : Prop :=
  ∀ n, P14169901975247835402.a n = A016754 n

end A016754

/-! ## A016754.P1522695589860145287

`A014634(n)-A002943(n)`
-/

namespace A016754.P1522695589860145287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n - A002943 n

end

end A016754.P1522695589860145287

namespace A016754

/-- `A014634(n)-A002943(n)` -/
def P1522695589860145287.Spec : Prop :=
  ∀ n, P1522695589860145287.a n = A016754 n

end A016754

/-! ## A016754.P12971682529673222047

`A014105(n)+A000384(n+1)`
-/

namespace A016754.P12971682529673222047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + A000384 (n + 1)

end

end A016754.P12971682529673222047

namespace A016754

/-- `A014105(n)+A000384(n+1)` -/
def P12971682529673222047.Spec : Prop :=
  ∀ n, P12971682529673222047.a n = A016754 n

end A016754

/-! ## A016754.P40941583644973702

`A003154(n+1)-A046092(n)`
-/

namespace A016754.P40941583644973702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A046092 n

end

end A016754.P40941583644973702

namespace A016754

/-- `A003154(n+1)-A046092(n)` -/
def P40941583644973702.Spec : Prop :=
  ∀ n, P40941583644973702.a n = A016754 n

end A016754

/-! ## A016754.P10345463085025201156

`A000290(A005408(n))`
-/

namespace A016754.P10345463085025201156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A005408 n).toNat

end

end A016754.P10345463085025201156

namespace A016754

/-- `A000290(A005408(n))` -/
def P10345463085025201156.Spec : Prop :=
  ∀ n, P10345463085025201156.a n = A016754 n

end A016754

/-! ## A016754.P16391448828500452417

`A061038(2+4*n)`
-/

namespace A016754.P16391448828500452417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061038 (2 + 4 * n)

end

end A016754.P16391448828500452417

namespace A016754

/-- `A061038(2+4*n)` -/
def P16391448828500452417.Spec : Prop :=
  ∀ n, P16391448828500452417.a n = A016754 n

end A016754

/-! ## A016754.P10508618902590749568

`record[xor(1, n)²]`
-/

namespace A016754.P10508618902590749568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016754.P10508618902590749568

namespace A016754

/-- `record[xor(1, n)²]` -/
def P10508618902590749568.Spec : Prop :=
  ∀ n, (P10508618902590749568.a n : ℤ) = A016754 n

end A016754

/-! ## A016754.P11033596600951109655

`or(1, ∑[8*n])`
-/

namespace A016754.P11033596600951109655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016754.P11033596600951109655

namespace A016754

/-- `or(1, ∑[8*n])` -/
def P11033596600951109655.Spec : Prop :=
  ∀ n, (P11033596600951109655.a n : ℤ) = A016754 n

end A016754

/-! ## A016754.P15149482518220004965

`xor(1, ∑[8*n])`
-/

namespace A016754.P15149482518220004965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016754.P15149482518220004965

namespace A016754

/-- `xor(1, ∑[8*n])` -/
def P15149482518220004965.Spec : Prop :=
  ∀ n, (P15149482518220004965.a n : ℤ) = A016754 n

end A016754

/-! ## A016754.P16339590539614490186

`comp[lcm(2, n)]^2`
-/

namespace A016754.P16339590539614490186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A016754.P16339590539614490186

namespace A016754

/-- `comp[lcm(2, n)]^2` -/
def P16339590539614490186.Spec : Prop :=
  ∀ n, (P16339590539614490186.a n : ℤ) = A016754 n

end A016754

/-! ## A016754.P7070952693010987110

`record[xor(1, n)^2]`
-/

namespace A016754.P7070952693010987110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016754.P7070952693010987110

namespace A016754

/-- `record[xor(1, n)^2]` -/
def P7070952693010987110.Spec : Prop :=
  ∀ n, (P7070952693010987110.a n : ℤ) = A016754 n

end A016754

/-! ## A016754.P6202959041984380493

`comp[and(n, -2)]^2`
-/

namespace A016754.P6202959041984380493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A016754.P6202959041984380493

namespace A016754

/-- `comp[and(n, -2)]^2` -/
def P6202959041984380493.Spec : Prop :=
  ∀ n, (P6202959041984380493.a n : ℤ) = A016754 n

end A016754

/-!
# A016755: Odd cubes: a(n) = (2*n + 1)^3.

The programs for A016755, the canonical program `A016755.P5941101717872313811` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016755 has offset 0).

The definition of A016755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^3` (program `A016755.P5941101717872313811`, by `A016755.P5941101717872313811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016755.P5941101717872313811

`(2*n+1)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016755

/-- `(2*n+1)^3` -/
def P5941101717872313811.Spec : Prop :=
  ∀ n, (P5941101717872313811.a n : ℤ) = A016755 n

theorem P5941101717872313811.correct : P5941101717872313811.Spec := by
  intro n
  simp only [A016755]

end A016755

/-! ## A016755.P799306979228203497

`24*A000330(n)+A005408(n)`
-/

namespace A016755.P799306979228203497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000330 n + A005408 n

end

end A016755.P799306979228203497

namespace A016755

/-- `24*A000330(n)+A005408(n)` -/
def P799306979228203497.Spec : Prop :=
  ∀ n, P799306979228203497.a n = A016755 n

end A016755

/-! ## A016755.P18338618871266811971

`2*A005917(n+1)-A005408(n)`
-/

namespace A016755.P18338618871266811971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005917 (n + 1) - A005408 n

end

end A016755.P18338618871266811971

namespace A016755

/-- `2*A005917(n+1)-A005408(n)` -/
def P18338618871266811971.Spec : Prop :=
  ∀ n, P18338618871266811971.a n = A016755 n

end A016755

/-! ## A016755.P4808010779524534112

`A000578(A005408(n))`
-/

namespace A016755.P4808010779524534112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A005408 n).toNat

end

end A016755.P4808010779524534112

namespace A016755

/-- `A000578(A005408(n))` -/
def P4808010779524534112.Spec : Prop :=
  ∀ n, P4808010779524534112.a n = A016755 n

end A016755

/-! ## A016755.P1388385473640513594

`record[xor(1, n)^3]`
-/

namespace A016755.P1388385473640513594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016755.P1388385473640513594

namespace A016755

/-- `record[xor(1, n)^3]` -/
def P1388385473640513594.Spec : Prop :=
  ∀ n, (P1388385473640513594.a n : ℤ) = A016755 n

end A016755

/-! ## A016755.P12866438051801987701

`Δ[C(2*n², 2)]`
-/

namespace A016755.P12866438051801987701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016755.P12866438051801987701

namespace A016755

/-- `Δ[C(2*n², 2)]` -/
def P12866438051801987701.Spec : Prop :=
  ∀ n, P12866438051801987701.a n = A016755 n

end A016755

/-! ## A016755.P13804284514524624007

`or(1, comp[2*n]^3)`
-/

namespace A016755.P13804284514524624007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3)

end

end A016755.P13804284514524624007

namespace A016755

/-- `or(1, comp[2*n]^3)` -/
def P13804284514524624007.Spec : Prop :=
  ∀ n, (P13804284514524624007.a n : ℤ) = A016755 n

end A016755

/-! ## A016755.P15675605379422075670

`record[n^(3*n%2)]`
-/

namespace A016755.P15675605379422075670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (3 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016755.P15675605379422075670

namespace A016755

/-- `record[n^(3*n%2)]` -/
def P15675605379422075670.Spec : Prop :=
  ∀ n, (P15675605379422075670.a n : ℤ) = A016755 n

end A016755

/-! ## A016755.P16645800723971399989

`record[n^(3*and(1, n))]`
-/

namespace A016755.P16645800723971399989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (3 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016755.P16645800723971399989

namespace A016755

/-- `record[n^(3*and(1, n))]` -/
def P16645800723971399989.Spec : Prop :=
  ∀ n, (P16645800723971399989.a n : ℤ) = A016755 n

end A016755

/-! ## A016755.P11750683115301889265

`record[n^and(1, n)^3]`
-/

namespace A016755.P11750683115301889265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016755.P11750683115301889265

namespace A016755

/-- `record[n^and(1, n)^3]` -/
def P11750683115301889265.Spec : Prop :=
  ∀ n, (P11750683115301889265.a n : ℤ) = A016755 n

end A016755

/-! ## A016755.P3793443031219664546

`root(comp[2*n], tan(acot(3)))`
-/

namespace A016755.P3793443031219664546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (3 : ℝ)))

end

end A016755.P3793443031219664546

namespace A016755

/-- `root(comp[2*n], tan(acot(3)))` -/
def P3793443031219664546.Spec : Prop :=
  ∀ n, P3793443031219664546.a n = (A016755 n : ℝ)

end A016755

/-! ## A016755.P4765520658498031912

`root(comp[2*n], cot(atan(3)))`
-/

namespace A016755.P4765520658498031912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.cot (Real.arctan (3 : ℝ)))

end

end A016755.P4765520658498031912

namespace A016755

/-- `root(comp[2*n], cot(atan(3)))` -/
def P4765520658498031912.Spec : Prop :=
  ∀ n, P4765520658498031912.a n = (A016755 n : ℝ)

end A016755

/-! ## A016755.P12635633793797268475

`abs((-or(1, 2*n))^3)`
-/

namespace A016755.P12635633793797268475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 3|

end

end A016755.P12635633793797268475

namespace A016755

/-- `abs((-or(1, 2*n))^3)` -/
def P12635633793797268475.Spec : Prop :=
  ∀ n, P12635633793797268475.a n = A016755 n

end A016755

/-! ## A016755.P503127826917737952

`-(-or(1, 2*n))^3`
-/

namespace A016755.P503127826917737952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.lor 1 (2 * n) : ℤ)) ^ 3)

end

end A016755.P503127826917737952

namespace A016755

/-- `-(-or(1, 2*n))^3` -/
def P503127826917737952.Spec : Prop :=
  ∀ n, P503127826917737952.a n = A016755 n

end A016755

/-! ## A016755.P671481565284688980

`abs((-xor(1, 2*n))^3)`
-/

namespace A016755.P671481565284688980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 3|

end

end A016755.P671481565284688980

namespace A016755

/-- `abs((-xor(1, 2*n))^3)` -/
def P671481565284688980.Spec : Prop :=
  ∀ n, P671481565284688980.a n = A016755 n

end A016755

/-! ## A016755.P2084322747208228325

`-(-xor(1, 2*n))^3`
-/

namespace A016755.P2084322747208228325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.xor 1 (2 * n) : ℤ)) ^ 3)

end

end A016755.P2084322747208228325

namespace A016755

/-- `-(-xor(1, 2*n))^3` -/
def P2084322747208228325.Spec : Prop :=
  ∀ n, P2084322747208228325.a n = A016755 n

end A016755

/-! ## A016755.P2371758179577977378

`sqrt(or(1, 2*n)²^3)`
-/

namespace A016755.P2371758179577977378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.lor 1 (2 * n) ^ 2) ^ 3 : ℝ)

end

end A016755.P2371758179577977378

namespace A016755

/-- `sqrt(or(1, 2*n)²^3)` -/
def P2371758179577977378.Spec : Prop :=
  ∀ n, P2371758179577977378.a n = (A016755 n : ℝ)

end A016755

/-! ## A016755.P2186292985946280389

`sqrt(xor(1, 2*n)²^3)`
-/

namespace A016755.P2186292985946280389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.xor 1 (2 * n) ^ 2) ^ 3 : ℝ)

end

end A016755.P2186292985946280389

namespace A016755

/-- `sqrt(xor(1, 2*n)²^3)` -/
def P2186292985946280389.Spec : Prop :=
  ∀ n, P2186292985946280389.a n = (A016755 n : ℝ)

end A016755

/-! ## A016755.P16881991652984427450

`record[(n+1)*xor(1, n)²]`
-/

namespace A016755.P16881991652984427450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016755.P16881991652984427450

namespace A016755

/-- `record[(n+1)*xor(1, n)²]` -/
def P16881991652984427450.Spec : Prop :=
  ∀ n, (P16881991652984427450.a n : ℤ) = A016755 n

end A016755

/-! ## A016755.P4720604660562524265

`(or(1, 2*n)^(3/2))²`
-/

namespace A016755.P4720604660562524265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) ^ 2

end

end A016755.P4720604660562524265

namespace A016755

/-- `(or(1, 2*n)^(3/2))²` -/
def P4720604660562524265.Spec : Prop :=
  ∀ n, P4720604660562524265.a n = (A016755 n : ℝ)

end A016755

/-!
# A016756: a(n) = (2*n+1)^4.

The programs for A016756, the canonical program `A016756.P11037387936499398145` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016756 has offset 0).

The definition of A016756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^4` (program `A016756.P11037387936499398145`, by `A016756.P11037387936499398145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016756.P11037387936499398145

`(2*n+1)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016756

/-- `(2*n+1)^4` -/
def P11037387936499398145.Spec : Prop :=
  ∀ n, (P11037387936499398145.a n : ℤ) = A016756 n

theorem P11037387936499398145.correct : P11037387936499398145.Spec := by
  intro n
  simp only [A016756]

end A016756

/-! ## A016756.P3733720536785640258

`record[xor(1, n)^4]`
-/

namespace A016756.P3733720536785640258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016756.P3733720536785640258

namespace A016756

/-- `record[xor(1, n)^4]` -/
def P3733720536785640258.Spec : Prop :=
  ∀ n, (P3733720536785640258.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P13875379332806411913

`comp[lcm(2, n)]²²`
-/

namespace A016756.P13875379332806411913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) ^ 2

end

end A016756.P13875379332806411913

namespace A016756

/-- `comp[lcm(2, n)]²²` -/
def P13875379332806411913.Spec : Prop :=
  ∀ n, (P13875379332806411913.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P13903694186559236979

`record[xor(1, n)²²]`
-/

namespace A016756.P13903694186559236979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016756.P13903694186559236979

namespace A016756

/-- `record[xor(1, n)²²]` -/
def P13903694186559236979.Spec : Prop :=
  ∀ n, (P13903694186559236979.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P14076696619781197492

`or(1, 2*n)²²`
-/

namespace A016756.P14076696619781197492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 2) ^ 2

end

end A016756.P14076696619781197492

namespace A016756

/-- `or(1, 2*n)²²` -/
def P14076696619781197492.Spec : Prop :=
  ∀ n, (P14076696619781197492.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P2202160072339270976

`xor(1, 2*n)²²`
-/

namespace A016756.P2202160072339270976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 2) ^ 2

end

end A016756.P2202160072339270976

namespace A016756

/-- `xor(1, 2*n)²²` -/
def P2202160072339270976.Spec : Prop :=
  ∀ n, (P2202160072339270976.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P10259542241960281981

`or(1, Δ[n²]²²)`
-/

namespace A016756.P10259542241960281981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2)

end

end A016756.P10259542241960281981

namespace A016756

/-- `or(1, Δ[n²]²²)` -/
def P10259542241960281981.Spec : Prop :=
  ∀ n, P10259542241960281981.a n = A016756 n

end A016756

/-! ## A016756.P7442858713717938573

`Δ[xor(2, n²)]²²`
-/

namespace A016756.P7442858713717938573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016756.P7442858713717938573

namespace A016756

/-- `Δ[xor(2, n²)]²²` -/
def P7442858713717938573.Spec : Prop :=
  ∀ n, P7442858713717938573.a n = A016756 n

end A016756

/-! ## A016756.P17381878427665231097

`lt[xor(1, n), n]²²`
-/

namespace A016756.P17381878427665231097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016756.P17381878427665231097

namespace A016756

/-- `lt[xor(1, n), n]²²` -/
def P17381878427665231097.Spec : Prop :=
  ∀ n, (P17381878427665231097.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P4015265974184439387

`record[n^(4*and(1, n))]`
-/

namespace A016756.P4015265974184439387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (4 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016756.P4015265974184439387

namespace A016756

/-- `record[n^(4*and(1, n))]` -/
def P4015265974184439387.Spec : Prop :=
  ∀ n, (P4015265974184439387.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P16727489549331644271

`record[n^and(1, n)^4]`
-/

namespace A016756.P16727489549331644271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016756.P16727489549331644271

namespace A016756

/-- `record[n^and(1, n)^4]` -/
def P16727489549331644271.Spec : Prop :=
  ∀ n, (P16727489549331644271.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P18241218973597578683

`(xor(n, -1)-n)²²`
-/

namespace A016756.P18241218973597578683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.xor (n : ℤ) (-1) - (n : ℤ)) ^ 2) ^ 2

end

end A016756.P18241218973597578683

namespace A016756

/-- `(xor(n, -1)-n)²²` -/
def P18241218973597578683.Spec : Prop :=
  ∀ n, P18241218973597578683.a n = A016756 n

end A016756

/-! ## A016756.P8163121956061956496

`comp[and(n, n+1)]²²`
-/

namespace A016756.P8163121956061956496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) ^ 2

end

end A016756.P8163121956061956496

namespace A016756

/-- `comp[and(n, n+1)]²²` -/
def P8163121956061956496.Spec : Prop :=
  ∀ n, (P8163121956061956496.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P6432890422978188474

`record[(n^(n%2))²²]`
-/

namespace A016756.P6432890422978188474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ (n % 2)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016756.P6432890422978188474

namespace A016756

/-- `record[(n^(n%2))²²]` -/
def P6432890422978188474.Spec : Prop :=
  ∀ n, (P6432890422978188474.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P14652275594555456424

`root(comp[2*n], tan(acot(4)))`
-/

namespace A016756.P14652275594555456424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (4 : ℝ)))

end

end A016756.P14652275594555456424

namespace A016756

/-- `root(comp[2*n], tan(acot(4)))` -/
def P14652275594555456424.Spec : Prop :=
  ∀ n, P14652275594555456424.a n = (A016756 n : ℝ)

end A016756

/-! ## A016756.P4184634773317574139

`root(comp[2*n], cot(atan(4)))`
-/

namespace A016756.P4184634773317574139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.cot (Real.arctan (4 : ℝ)))

end

end A016756.P4184634773317574139

namespace A016756

/-- `root(comp[2*n], cot(atan(4)))` -/
def P4184634773317574139.Spec : Prop :=
  ∀ n, P4184634773317574139.a n = (A016756 n : ℝ)

end A016756

/-! ## A016756.P2324086562984753464

`eq[1, and(n, -n)]²²`
-/

namespace A016756.P2324086562984753464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A016756.P2324086562984753464

namespace A016756

/-- `eq[1, and(n, -n)]²²` -/
def P2324086562984753464.Spec : Prop :=
  ∀ n, (P2324086562984753464.a n : ℤ) = A016756 n

end A016756

/-! ## A016756.P518083977646685041

`Δ[and(-3, n²)]²²`
-/

namespace A016756.P518083977646685041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A016756.P518083977646685041

namespace A016756

/-- `Δ[and(-3, n²)]²²` -/
def P518083977646685041.Spec : Prop :=
  ∀ n, P518083977646685041.a n = A016756 n

end A016756

/-! ## A016756.P13902931612511661935

`abs((-or(1, 2*n))^4)`
-/

namespace A016756.P13902931612511661935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 4|

end

end A016756.P13902931612511661935

namespace A016756

/-- `abs((-or(1, 2*n))^4)` -/
def P13902931612511661935.Spec : Prop :=
  ∀ n, P13902931612511661935.a n = A016756 n

end A016756

/-! ## A016756.P15423801251134741621

`abs((-xor(1, 2*n))^4)`
-/

namespace A016756.P15423801251134741621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 4|

end

end A016756.P15423801251134741621

namespace A016756

/-- `abs((-xor(1, 2*n))^4)` -/
def P15423801251134741621.Spec : Prop :=
  ∀ n, P15423801251134741621.a n = A016756 n

end A016756

/-!
# A016757: a(n) = (2*n+1)^5.

The programs for A016757, the canonical program `A016757.P14373037326364437430` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016757 has offset 0).

The definition of A016757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^5` (program `A016757.P14373037326364437430`, by `A016757.P14373037326364437430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016757.P14373037326364437430

`(2*n+1)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016757

/-- `(2*n+1)^5` -/
def P14373037326364437430.Spec : Prop :=
  ∀ n, (P14373037326364437430.a n : ℤ) = A016757 n

theorem P14373037326364437430.correct : P14373037326364437430.Spec := by
  intro n
  simp only [A016757]

end A016757

/-! ## A016757.P4020690663260350137

`record[xor(1, n)^5]`
-/

namespace A016757.P4020690663260350137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016757.P4020690663260350137

namespace A016757

/-- `record[xor(1, n)^5]` -/
def P4020690663260350137.Spec : Prop :=
  ∀ n, (P4020690663260350137.a n : ℤ) = A016757 n

end A016757

/-! ## A016757.P16285131861283981112

`or(1, comp[2*n]^5)`
-/

namespace A016757.P16285131861283981112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 5)

end

end A016757.P16285131861283981112

namespace A016757

/-- `or(1, comp[2*n]^5)` -/
def P16285131861283981112.Spec : Prop :=
  ∀ n, (P16285131861283981112.a n : ℤ) = A016757 n

end A016757

/-! ## A016757.P16553700795920082753

`record[n^(5*and(1, n))]`
-/

namespace A016757.P16553700795920082753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (5 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016757.P16553700795920082753

namespace A016757

/-- `record[n^(5*and(1, n))]` -/
def P16553700795920082753.Spec : Prop :=
  ∀ n, (P16553700795920082753.a n : ℤ) = A016757 n

end A016757

/-! ## A016757.P4187543368124105011

`record[n^and(1, n)^5]`
-/

namespace A016757.P4187543368124105011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016757.P4187543368124105011

namespace A016757

/-- `record[n^and(1, n)^5]` -/
def P4187543368124105011.Spec : Prop :=
  ∀ n, (P4187543368124105011.a n : ℤ) = A016757 n

end A016757

/-! ## A016757.P10518526905424182816

`root(comp[2*n], tan(acot(5)))`
-/

namespace A016757.P10518526905424182816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (5 : ℝ)))

end

end A016757.P10518526905424182816

namespace A016757

/-- `root(comp[2*n], tan(acot(5)))` -/
def P10518526905424182816.Spec : Prop :=
  ∀ n, P10518526905424182816.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P6397845086815632851

`root(comp[2*n], cot(atan(5)))`
-/

namespace A016757.P6397845086815632851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.cot (Real.arctan (5 : ℝ)))

end

end A016757.P6397845086815632851

namespace A016757

/-- `root(comp[2*n], cot(atan(5)))` -/
def P6397845086815632851.Spec : Prop :=
  ∀ n, P6397845086815632851.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P13173863975330979207

`abs((-or(1, 2*n))^5)`
-/

namespace A016757.P13173863975330979207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 5|

end

end A016757.P13173863975330979207

namespace A016757

/-- `abs((-or(1, 2*n))^5)` -/
def P13173863975330979207.Spec : Prop :=
  ∀ n, P13173863975330979207.a n = A016757 n

end A016757

/-! ## A016757.P7066167390550386783

`-(-or(1, 2*n))^5`
-/

namespace A016757.P7066167390550386783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.lor 1 (2 * n) : ℤ)) ^ 5)

end

end A016757.P7066167390550386783

namespace A016757

/-- `-(-or(1, 2*n))^5` -/
def P7066167390550386783.Spec : Prop :=
  ∀ n, P7066167390550386783.a n = A016757 n

end A016757

/-! ## A016757.P5896267831280469203

`abs((-xor(1, 2*n))^5)`
-/

namespace A016757.P5896267831280469203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 5|

end

end A016757.P5896267831280469203

namespace A016757

/-- `abs((-xor(1, 2*n))^5)` -/
def P5896267831280469203.Spec : Prop :=
  ∀ n, P5896267831280469203.a n = A016757 n

end A016757

/-! ## A016757.P15551719094341204494

`-(-xor(1, 2*n))^5`
-/

namespace A016757.P15551719094341204494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.xor 1 (2 * n) : ℤ)) ^ 5)

end

end A016757.P15551719094341204494

namespace A016757

/-- `-(-xor(1, 2*n))^5` -/
def P15551719094341204494.Spec : Prop :=
  ∀ n, P15551719094341204494.a n = A016757 n

end A016757

/-! ## A016757.P1633860635362770251

`(sqrt(or(1, 2*n))^5)²`
-/

namespace A016757.P1633860635362770251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (Nat.lor 1 (2 * n) : ℝ) ^ 5) ^ 2

end

end A016757.P1633860635362770251

namespace A016757

/-- `(sqrt(or(1, 2*n))^5)²` -/
def P1633860635362770251.Spec : Prop :=
  ∀ n, P1633860635362770251.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P18368446581222832426

`(sqrt(xor(1, 2*n))^5)²`
-/

namespace A016757.P18368446581222832426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (Nat.xor 1 (2 * n) : ℝ) ^ 5) ^ 2

end

end A016757.P18368446581222832426

namespace A016757

/-- `(sqrt(xor(1, 2*n))^5)²` -/
def P18368446581222832426.Spec : Prop :=
  ∀ n, P18368446581222832426.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P2597544432056613521

`(or(1, 2*n)^(5/2))²`
-/

namespace A016757.P2597544432056613521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) : ℝ) ^ ((5 : ℚ) / 2 : ℝ)) ^ 2

end

end A016757.P2597544432056613521

namespace A016757

/-- `(or(1, 2*n)^(5/2))²` -/
def P2597544432056613521.Spec : Prop :=
  ∀ n, P2597544432056613521.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P12293160639662925180

`(xor(1, 2*n)^(5/2))²`
-/

namespace A016757.P12293160639662925180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) : ℝ) ^ ((5 : ℚ) / 2 : ℝ)) ^ 2

end

end A016757.P12293160639662925180

namespace A016757

/-- `(xor(1, 2*n)^(5/2))²` -/
def P12293160639662925180.Spec : Prop :=
  ∀ n, P12293160639662925180.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P11631309137855934632

`record[(lcm(2, n+1)/2)^5]`
-/

namespace A016757.P11631309137855934632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℚ) / 2) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016757.P11631309137855934632

namespace A016757

/-- `record[(lcm(2, n+1)/2)^5]` -/
def P11631309137855934632.Spec : Prop :=
  ∀ n, P11631309137855934632.a n = (A016757 n : ℚ)

end A016757

/-! ## A016757.P3875239645607753927

`record[((n+2)/gcd(2, n))^5]`
-/

namespace A016757.P3875239645607753927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / (Nat.gcd 2 n : ℚ)) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016757.P3875239645607753927

namespace A016757

/-- `record[((n+2)/gcd(2, n))^5]` -/
def P3875239645607753927.Spec : Prop :=
  ∀ n, P3875239645607753927.a n = (A016757 n : ℚ)

end A016757

/-! ## A016757.P6008235587900563042

`root(2*n+1, sin(acot(2))²)`
-/

namespace A016757.P6008235587900563042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.sin (SequenceMachineLib.acot (2 : ℝ)) ^ 2)

end

end A016757.P6008235587900563042

namespace A016757

/-- `root(2*n+1, sin(acot(2))²)` -/
def P6008235587900563042.Spec : Prop :=
  ∀ n, P6008235587900563042.a n = (A016757 n : ℝ)

end A016757

/-! ## A016757.P15355766618835849313

`record[(n+1)*xor(1, n)²²]`
-/

namespace A016757.P15355766618835849313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor 1 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016757.P15355766618835849313

namespace A016757

/-- `record[(n+1)*xor(1, n)²²]` -/
def P15355766618835849313.Spec : Prop :=
  ∀ n, (P15355766618835849313.a n : ℤ) = A016757 n

end A016757

/-! ## A016757.P2043920561510423242

`floor((∑[a(n-1)+4]/(n+1))^5)` with `a(0)=1`
-/

namespace A016757.P2043920561510423242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)) ^ 5⌋

end

end A016757.P2043920561510423242

namespace A016757

/-- `floor((∑[a(n-1)+4]/(n+1))^5)` -/
def P2043920561510423242.Spec : Prop :=
  ∀ n, P2043920561510423242.a n = A016757 n

end A016757

/-!
# A016758: a(n) = (2*n+1)^6.

The programs for A016758, the canonical program `A016758.P10546800318422421596` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016758 has offset 0).

The definition of A016758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^6` (program `A016758.P10546800318422421596`, by `A016758.P10546800318422421596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016758.P10546800318422421596

`(2*n+1)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016758

/-- `(2*n+1)^6` -/
def P10546800318422421596.Spec : Prop :=
  ∀ n, (P10546800318422421596.a n : ℤ) = A016758 n

theorem P10546800318422421596.correct : P10546800318422421596.Spec := by
  intro n
  simp only [A016758]

end A016758

/-! ## A016758.P2061742302620682023

`record[xor(1, n)^6]`
-/

namespace A016758.P2061742302620682023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016758.P2061742302620682023

namespace A016758

/-- `record[xor(1, n)^6]` -/
def P2061742302620682023.Spec : Prop :=
  ∀ n, (P2061742302620682023.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P17845441703761997641

`(or(1, 2*n)^3)²`
-/

namespace A016758.P17845441703761997641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 3) ^ 2

end

end A016758.P17845441703761997641

namespace A016758

/-- `(or(1, 2*n)^3)²` -/
def P17845441703761997641.Spec : Prop :=
  ∀ n, (P17845441703761997641.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P10136795869350412540

`(xor(1, 2*n)^3)²`
-/

namespace A016758.P10136795869350412540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 3) ^ 2

end

end A016758.P10136795869350412540

namespace A016758

/-- `(xor(1, 2*n)^3)²` -/
def P10136795869350412540.Spec : Prop :=
  ∀ n, (P10136795869350412540.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P446808245149699968

`or(1, comp[2*n]^6)`
-/

namespace A016758.P446808245149699968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 6)

end

end A016758.P446808245149699968

namespace A016758

/-- `or(1, comp[2*n]^6)` -/
def P446808245149699968.Spec : Prop :=
  ∀ n, (P446808245149699968.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P1582484693389537799

`Δ[C(2*n², 2)]²`
-/

namespace A016758.P1582484693389537799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A016758.P1582484693389537799

namespace A016758

/-- `Δ[C(2*n², 2)]²` -/
def P1582484693389537799.Spec : Prop :=
  ∀ n, P1582484693389537799.a n = A016758 n

end A016758

/-! ## A016758.P4155805462955112764

`record[n^(6*and(1, n))]`
-/

namespace A016758.P4155805462955112764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (6 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016758.P4155805462955112764

namespace A016758

/-- `record[n^(6*and(1, n))]` -/
def P4155805462955112764.Spec : Prop :=
  ∀ n, (P4155805462955112764.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P15373045943509467613

`(lt[n, lcm(2, n)]^3)²`
-/

namespace A016758.P15373045943509467613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016758.P15373045943509467613

namespace A016758

/-- `(lt[n, lcm(2, n)]^3)²` -/
def P15373045943509467613.Spec : Prop :=
  ∀ n, (P15373045943509467613.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P7456719204750589715

`(lt[xor(1, n), n]^3)²`
-/

namespace A016758.P7456719204750589715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016758.P7456719204750589715

namespace A016758

/-- `(lt[xor(1, n), n]^3)²` -/
def P7456719204750589715.Spec : Prop :=
  ∀ n, (P7456719204750589715.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P10241828550012401202

`root(comp[2*n], tan(acot(6)))`
-/

namespace A016758.P10241828550012401202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (6 : ℝ)))

end

end A016758.P10241828550012401202

namespace A016758

/-- `root(comp[2*n], tan(acot(6)))` -/
def P10241828550012401202.Spec : Prop :=
  ∀ n, P10241828550012401202.a n = (A016758 n : ℝ)

end A016758

/-! ## A016758.P7297909466778316115

`abs((-or(1, 2*n))^6)`
-/

namespace A016758.P7297909466778316115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 6|

end

end A016758.P7297909466778316115

namespace A016758

/-- `abs((-or(1, 2*n))^6)` -/
def P7297909466778316115.Spec : Prop :=
  ∀ n, P7297909466778316115.a n = A016758 n

end A016758

/-! ## A016758.P15160743766657803020

`abs((-xor(1, 2*n))^6)`
-/

namespace A016758.P15160743766657803020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 6|

end

end A016758.P15160743766657803020

namespace A016758

/-- `abs((-xor(1, 2*n))^6)` -/
def P15160743766657803020.Spec : Prop :=
  ∀ n, P15160743766657803020.a n = A016758 n

end A016758

/-! ## A016758.P949000937279653250

`root(2*n+1, cot(atan(6)))`
-/

namespace A016758.P949000937279653250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (6 : ℝ)))

end

end A016758.P949000937279653250

namespace A016758

/-- `root(2*n+1, cot(atan(6)))` -/
def P949000937279653250.Spec : Prop :=
  ∀ n, P949000937279653250.a n = (A016758 n : ℝ)

theorem P949000937279653250.correct : P949000937279653250.Spec := by
  intro n
  simp only [A016758, Nat.add_sub_cancel, A016758.P949000937279653250.a, A016758.P10546800318422421596.a, SequenceMachineLib.memo_apply]
  try simp

end A016758

/-! ## A016758.P1102259332861447375

`sqrt(xor(1, 2*n)^4^3)`
-/

namespace A016758.P1102259332861447375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.xor 1 (2 * n) ^ 4) ^ 3 : ℝ)

end

end A016758.P1102259332861447375

namespace A016758

/-- `sqrt(xor(1, 2*n)^4^3)` -/
def P1102259332861447375.Spec : Prop :=
  ∀ n, P1102259332861447375.a n = (A016758 n : ℝ)

end A016758

/-! ## A016758.P8498266241640976697

`(lt[0, val(n+1, 2)]^3)²`
-/

namespace A016758.P8498266241640976697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016758.P8498266241640976697

namespace A016758

/-- `(lt[0, val(n+1, 2)]^3)²` -/
def P8498266241640976697.Spec : Prop :=
  ∀ n, (P8498266241640976697.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P14582827884000234742

`(eq[0, val(n+2, 2)]^3)²`
-/

namespace A016758.P14582827884000234742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016758.P14582827884000234742

namespace A016758

/-- `(eq[0, val(n+2, 2)]^3)²` -/
def P14582827884000234742.Spec : Prop :=
  ∀ n, (P14582827884000234742.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P5680267838745664050

`or(1, (n+1+n)^3)²`
-/

namespace A016758.P5680267838745664050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1 + n) ^ 3) ^ 2

end

end A016758.P5680267838745664050

namespace A016758

/-- `or(1, (n+1+n)^3)²` -/
def P5680267838745664050.Spec : Prop :=
  ∀ n, (P5680267838745664050.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P12281317511197512811

`(eq[1, xor(n, n-1)]^3)²`
-/

namespace A016758.P12281317511197512811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3) ^ 2

end

end A016758.P12281317511197512811

namespace A016758

/-- `(eq[1, xor(n, n-1)]^3)²` -/
def P12281317511197512811.Spec : Prop :=
  ∀ n, (P12281317511197512811.a n : ℤ) = A016758 n

end A016758

/-! ## A016758.P8277457056739822464

`((C(n+1, n)+n)^3)²`
-/

namespace A016758.P8277457056739822464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n + n) ^ 3) ^ 2

end

end A016758.P8277457056739822464

namespace A016758

/-- `((C(n+1, n)+n)^3)²` -/
def P8277457056739822464.Spec : Prop :=
  ∀ n, (P8277457056739822464.a n : ℤ) = A016758 n

theorem P8277457056739822464.correct : P8277457056739822464.Spec := by
  intro n
  simp only [A016758, Nat.add_sub_cancel, A016758.P8277457056739822464.a, A016758.P10546800318422421596.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016758

/-! ## A016758.P8822309911190560790

`record[((n+1)*xor(1, n)²)²]`
-/

namespace A016758.P8822309911190560790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.xor 1 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016758.P8822309911190560790

namespace A016758

/-- `record[((n+1)*xor(1, n)²)²]` -/
def P8822309911190560790.Spec : Prop :=
  ∀ n, (P8822309911190560790.a n : ℤ) = A016758 n

end A016758

/-!
# A016759: a(n) = (2*n + 1)^7.

The programs for A016759, the canonical program `A016759.P1108963978635063233` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016759 has offset 0).

The definition of A016759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^7` (program `A016759.P1108963978635063233`, by `A016759.P1108963978635063233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016759.P1108963978635063233

`(2*n+1)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016759

/-- `(2*n+1)^7` -/
def P1108963978635063233.Spec : Prop :=
  ∀ n, (P1108963978635063233.a n : ℤ) = A016759 n

theorem P1108963978635063233.correct : P1108963978635063233.Spec := by
  intro n
  simp only [A016759]

end A016759

/-! ## A016759.P1637961309067879439

`A001015(A005408(n))`
-/

namespace A016759.P1637961309067879439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A005408 n).toNat

end

end A016759.P1637961309067879439

namespace A016759

/-- `A001015(A005408(n))` -/
def P1637961309067879439.Spec : Prop :=
  ∀ n, P1637961309067879439.a n = A016759 n

end A016759

/-! ## A016759.P1973447907500356148

`record[xor(1, n)^7]`
-/

namespace A016759.P1973447907500356148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016759.P1973447907500356148

namespace A016759

/-- `record[xor(1, n)^7]` -/
def P1973447907500356148.Spec : Prop :=
  ∀ n, (P1973447907500356148.a n : ℤ) = A016759 n

end A016759

/-! ## A016759.P4602536133513843761

`or(1, comp[2*n]^7)`
-/

namespace A016759.P4602536133513843761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 7)

end

end A016759.P4602536133513843761

namespace A016759

/-- `or(1, comp[2*n]^7)` -/
def P4602536133513843761.Spec : Prop :=
  ∀ n, (P4602536133513843761.a n : ℤ) = A016759 n

end A016759

/-! ## A016759.P7880905021674344334

`root(comp[2*n], tan(acot(7)))`
-/

namespace A016759.P7880905021674344334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (7 : ℝ)))

end

end A016759.P7880905021674344334

namespace A016759

/-- `root(comp[2*n], tan(acot(7)))` -/
def P7880905021674344334.Spec : Prop :=
  ∀ n, P7880905021674344334.a n = (A016759 n : ℝ)

end A016759

/-! ## A016759.P9970010891627826628

`abs((-or(1, 2*n))^7)`
-/

namespace A016759.P9970010891627826628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 7|

end

end A016759.P9970010891627826628

namespace A016759

/-- `abs((-or(1, 2*n))^7)` -/
def P9970010891627826628.Spec : Prop :=
  ∀ n, P9970010891627826628.a n = A016759 n

end A016759

/-! ## A016759.P14178214851515805333

`-(-or(1, 2*n))^7`
-/

namespace A016759.P14178214851515805333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.lor 1 (2 * n) : ℤ)) ^ 7)

end

end A016759.P14178214851515805333

namespace A016759

/-- `-(-or(1, 2*n))^7` -/
def P14178214851515805333.Spec : Prop :=
  ∀ n, P14178214851515805333.a n = A016759 n

end A016759

/-! ## A016759.P13637506217390490419

`abs((-xor(1, 2*n))^7)`
-/

namespace A016759.P13637506217390490419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 7|

end

end A016759.P13637506217390490419

namespace A016759

/-- `abs((-xor(1, 2*n))^7)` -/
def P13637506217390490419.Spec : Prop :=
  ∀ n, P13637506217390490419.a n = A016759 n

end A016759

/-! ## A016759.P10770411043157070792

`-(-xor(1, 2*n))^7`
-/

namespace A016759.P10770411043157070792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.xor 1 (2 * n) : ℤ)) ^ 7)

end

end A016759.P10770411043157070792

namespace A016759

/-- `-(-xor(1, 2*n))^7` -/
def P10770411043157070792.Spec : Prop :=
  ∀ n, P10770411043157070792.a n = A016759 n

end A016759

/-! ## A016759.P9534702442293921465

`(sqrt(or(1, 2*n))^7)²`
-/

namespace A016759.P9534702442293921465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (Nat.lor 1 (2 * n) : ℝ) ^ 7) ^ 2

end

end A016759.P9534702442293921465

namespace A016759

/-- `(sqrt(or(1, 2*n))^7)²` -/
def P9534702442293921465.Spec : Prop :=
  ∀ n, P9534702442293921465.a n = (A016759 n : ℝ)

end A016759

/-! ## A016759.P2082279393250120350

`(sqrt(xor(1, 2*n))^7)²`
-/

namespace A016759.P2082279393250120350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (Nat.xor 1 (2 * n) : ℝ) ^ 7) ^ 2

end

end A016759.P2082279393250120350

namespace A016759

/-- `(sqrt(xor(1, 2*n))^7)²` -/
def P2082279393250120350.Spec : Prop :=
  ∀ n, P2082279393250120350.a n = (A016759 n : ℝ)

end A016759

/-! ## A016759.P9494587315824561925

`root(2*n+1, cot(atan(7)))`
-/

namespace A016759.P9494587315824561925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (7 : ℝ)))

end

end A016759.P9494587315824561925

namespace A016759

/-- `root(2*n+1, cot(atan(7)))` -/
def P9494587315824561925.Spec : Prop :=
  ∀ n, P9494587315824561925.a n = (A016759 n : ℝ)

theorem P9494587315824561925.correct : P9494587315824561925.Spec := by
  intro n
  simp only [A016759, Nat.add_sub_cancel, A016759.P9494587315824561925.a, A016759.P1108963978635063233.a, SequenceMachineLib.memo_apply]
  try simp

end A016759

/-! ## A016759.P8044549800312091573

`root(2*n+1, abs(tan(acot(7))))`
-/

namespace A016759.P8044549800312091573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / |Real.tan (SequenceMachineLib.acot (7 : ℝ))|)

end

end A016759.P8044549800312091573

namespace A016759

/-- `root(2*n+1, abs(tan(acot(7))))` -/
def P8044549800312091573.Spec : Prop :=
  ∀ n, P8044549800312091573.a n = (A016759 n : ℝ)

end A016759

/-! ## A016759.P15467245648863040743

`floor(root(2*n+1, tan(acot(7))))`
-/

namespace A016759.P15467245648863040743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (7 : ℝ)))⌋

end

end A016759.P15467245648863040743

namespace A016759

/-- `floor(root(2*n+1, tan(acot(7))))` -/
def P15467245648863040743.Spec : Prop :=
  ∀ n, P15467245648863040743.a n = A016759 n

end A016759

/-! ## A016759.P11456269712616639387

`ceil(root(2*n+1, tan(acot(7))))`
-/

namespace A016759.P11456269712616639387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (7 : ℝ)))⌉

end

end A016759.P11456269712616639387

namespace A016759

/-- `ceil(root(2*n+1, tan(acot(7))))` -/
def P11456269712616639387.Spec : Prop :=
  ∀ n, P11456269712616639387.a n = A016759 n

end A016759

/-! ## A016759.P11007201200063250096

`round(root(2*n+1, tan(acot(7))))`
-/

namespace A016759.P11007201200063250096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (7 : ℝ))))

end

end A016759.P11007201200063250096

namespace A016759

/-- `round(root(2*n+1, tan(acot(7))))` -/
def P11007201200063250096.Spec : Prop :=
  ∀ n, P11007201200063250096.a n = A016759 n

end A016759

/-! ## A016759.P5200979976602577965

`or(1, 2*n)²²²/(2*n+1)`
-/

namespace A016759.P5200979976602577965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 1 (2 * n) ^ 2) ^ 2) ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A016759.P5200979976602577965

namespace A016759

/-- `or(1, 2*n)²²²/(2*n+1)` -/
def P5200979976602577965.Spec : Prop :=
  ∀ n, P5200979976602577965.a n = (A016759 n : ℚ)

end A016759

/-! ## A016759.P11713288974977308010

`xor(1, 2*n)²²²/(2*n+1)`
-/

namespace A016759.P11713288974977308010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 1 (2 * n) ^ 2) ^ 2) ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A016759.P11713288974977308010

namespace A016759

/-- `xor(1, 2*n)²²²/(2*n+1)` -/
def P11713288974977308010.Spec : Prop :=
  ∀ n, P11713288974977308010.a n = (A016759 n : ℚ)

end A016759

/-! ## A016759.P5239546346880070751

`(2*n+1)*Δ[C(2*n², 2)]²`
-/

namespace A016759.P5239546346880070751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A016759.P5239546346880070751

namespace A016759

/-- `(2*n+1)*Δ[C(2*n², 2)]²` -/
def P5239546346880070751.Spec : Prop :=
  ∀ n, P5239546346880070751.a n = A016759 n

end A016759

/-! ## A016759.P41293197252444038

`C(2*n+1, 2*n)²²²/(2*n+1)`
-/

namespace A016759.P41293197252444038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (2 * n + 1) (2 * n) ^ 2) ^ 2) ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A016759.P41293197252444038

namespace A016759

/-- `C(2*n+1, 2*n)²²²/(2*n+1)` -/
def P41293197252444038.Spec : Prop :=
  ∀ n, P41293197252444038.a n = (A016759 n : ℚ)

end A016759

/-!
# A016760: a(n) = (2*n+1)^8.

The programs for A016760, the canonical program `A016760.P6878625872832885773` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016760 has offset 0).

The definition of A016760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^8` (program `A016760.P6878625872832885773`, by `A016760.P6878625872832885773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016760.P6878625872832885773

`(2*n+1)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016760

/-- `(2*n+1)^8` -/
def P6878625872832885773.Spec : Prop :=
  ∀ n, (P6878625872832885773.a n : ℤ) = A016760 n

theorem P6878625872832885773.correct : P6878625872832885773.Spec := by
  intro n
  simp only [A016760]

end A016760

/-! ## A016760.P12517283901501325040

`A016756(n)²`
-/

namespace A016760.P12517283901501325040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n ^ 2

end

end A016760.P12517283901501325040

namespace A016760

/-- `A016756(n)²` -/
def P12517283901501325040.Spec : Prop :=
  ∀ n, P12517283901501325040.a n = A016760 n

end A016760

/-! ## A016760.P6277555657215150741

`record[xor(1, n)^8]`
-/

namespace A016760.P6277555657215150741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016760.P6277555657215150741

namespace A016760

/-- `record[xor(1, n)^8]` -/
def P6277555657215150741.Spec : Prop :=
  ∀ n, (P6277555657215150741.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P554229482649372331

`record[xor(1, n)²²²]`
-/

namespace A016760.P554229482649372331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016760.P554229482649372331

namespace A016760

/-- `record[xor(1, n)²²²]` -/
def P554229482649372331.Spec : Prop :=
  ∀ n, (P554229482649372331.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P6582517102018844190

`(or(1, 2*n)^4)²`
-/

namespace A016760.P6582517102018844190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 4) ^ 2

end

end A016760.P6582517102018844190

namespace A016760

/-- `(or(1, 2*n)^4)²` -/
def P6582517102018844190.Spec : Prop :=
  ∀ n, (P6582517102018844190.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P7691942403105486090

`(xor(1, 2*n)^4)²`
-/

namespace A016760.P7691942403105486090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 4) ^ 2

end

end A016760.P7691942403105486090

namespace A016760

/-- `(xor(1, 2*n)^4)²` -/
def P7691942403105486090.Spec : Prop :=
  ∀ n, (P7691942403105486090.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P13544945467647212543

`or(1, comp[2*n]^8)`
-/

namespace A016760.P13544945467647212543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 8)

end

end A016760.P13544945467647212543

namespace A016760

/-- `or(1, comp[2*n]^8)` -/
def P13544945467647212543.Spec : Prop :=
  ∀ n, (P13544945467647212543.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P10489705081823487630

`or(1, 2*n)²²²`
-/

namespace A016760.P10489705081823487630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) ^ 2) ^ 2) ^ 2

end

end A016760.P10489705081823487630

namespace A016760

/-- `or(1, 2*n)²²²` -/
def P10489705081823487630.Spec : Prop :=
  ∀ n, (P10489705081823487630.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P14399771793114675815

`xor(1, 2*n)²²²`
-/

namespace A016760.P14399771793114675815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) ^ 2) ^ 2) ^ 2

end

end A016760.P14399771793114675815

namespace A016760

/-- `xor(1, 2*n)²²²` -/
def P14399771793114675815.Spec : Prop :=
  ∀ n, (P14399771793114675815.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P1440721011310710716

`record[n^(8*and(1, n))]`
-/

namespace A016760.P1440721011310710716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (8 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016760.P1440721011310710716

namespace A016760

/-- `record[n^(8*and(1, n))]` -/
def P1440721011310710716.Spec : Prop :=
  ∀ n, (P1440721011310710716.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P15839563849571513784

`(lt[n, lcm(2, n)]^4)²`
-/

namespace A016760.P15839563849571513784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016760.P15839563849571513784

namespace A016760

/-- `(lt[n, lcm(2, n)]^4)²` -/
def P15839563849571513784.Spec : Prop :=
  ∀ n, (P15839563849571513784.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P18259189932295908265

`(lt[xor(1, n), n]^4)²`
-/

namespace A016760.P18259189932295908265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016760.P18259189932295908265

namespace A016760

/-- `(lt[xor(1, n), n]^4)²` -/
def P18259189932295908265.Spec : Prop :=
  ∀ n, (P18259189932295908265.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P3499826002049176199

`or(1, Δ[n²]²²)²`
-/

namespace A016760.P3499826002049176199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016760.P3499826002049176199

namespace A016760

/-- `or(1, Δ[n²]²²)²` -/
def P3499826002049176199.Spec : Prop :=
  ∀ n, P3499826002049176199.a n = A016760 n

end A016760

/-! ## A016760.P10304540819186944394

`root(comp[2*n], tan(acot(8)))`
-/

namespace A016760.P10304540819186944394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (8 : ℝ)))

end

end A016760.P10304540819186944394

namespace A016760

/-- `root(comp[2*n], tan(acot(8)))` -/
def P10304540819186944394.Spec : Prop :=
  ∀ n, P10304540819186944394.a n = (A016760 n : ℝ)

end A016760

/-! ## A016760.P13495798430819613446

`Δ[xor(2, n²)]²²²`
-/

namespace A016760.P13495798430819613446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016760.P13495798430819613446

namespace A016760

/-- `Δ[xor(2, n²)]²²²` -/
def P13495798430819613446.Spec : Prop :=
  ∀ n, P13495798430819613446.a n = A016760 n

end A016760

/-! ## A016760.P8833736340475328884

`lt[xor(1, n), n]²²²`
-/

namespace A016760.P8833736340475328884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A016760.P8833736340475328884

namespace A016760

/-- `lt[xor(1, n), n]²²²` -/
def P8833736340475328884.Spec : Prop :=
  ∀ n, (P8833736340475328884.a n : ℤ) = A016760 n

end A016760

/-! ## A016760.P10014482364125265119

`abs((-or(1, 2*n))^8)`
-/

namespace A016760.P10014482364125265119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 8|

end

end A016760.P10014482364125265119

namespace A016760

/-- `abs((-or(1, 2*n))^8)` -/
def P10014482364125265119.Spec : Prop :=
  ∀ n, P10014482364125265119.a n = A016760 n

end A016760

/-! ## A016760.P7497136757660938178

`abs((-xor(1, 2*n))^8)`
-/

namespace A016760.P7497136757660938178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 8|

end

end A016760.P7497136757660938178

namespace A016760

/-- `abs((-xor(1, 2*n))^8)` -/
def P7497136757660938178.Spec : Prop :=
  ∀ n, P7497136757660938178.a n = A016760 n

end A016760

/-! ## A016760.P2880091483109962027

`root(2*n+1, cot(atan(8)))`
-/

namespace A016760.P2880091483109962027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (8 : ℝ)))

end

end A016760.P2880091483109962027

namespace A016760

/-- `root(2*n+1, cot(atan(8)))` -/
def P2880091483109962027.Spec : Prop :=
  ∀ n, P2880091483109962027.a n = (A016760 n : ℝ)

theorem P2880091483109962027.correct : P2880091483109962027.Spec := by
  intro n
  simp only [A016760, Nat.add_sub_cancel, A016760.P2880091483109962027.a, A016760.P6878625872832885773.a, SequenceMachineLib.memo_apply]
  try simp

end A016760

/-! ## A016760.P6377210857832613385

`(lt[0, val(n+1, 2)]^4)²`
-/

namespace A016760.P6377210857832613385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016760.P6377210857832613385

namespace A016760

/-- `(lt[0, val(n+1, 2)]^4)²` -/
def P6377210857832613385.Spec : Prop :=
  ∀ n, (P6377210857832613385.a n : ℤ) = A016760 n

end A016760

/-!
# A016761: a(n) = (2*n+1)^9.

The programs for A016761, the canonical program `A016761.P2892480136193022373` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016761 has offset 0).

The definition of A016761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^9` (program `A016761.P2892480136193022373`, by `A016761.P2892480136193022373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016761.P2892480136193022373

`(2*n+1)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016761

/-- `(2*n+1)^9` -/
def P2892480136193022373.Spec : Prop :=
  ∀ n, (P2892480136193022373.a n : ℤ) = A016761 n

theorem P2892480136193022373.correct : P2892480136193022373.Spec := by
  intro n
  simp only [A016761]

end A016761

/-! ## A016761.P14069580347606421349

`record[xor(1, n)^9]`
-/

namespace A016761.P14069580347606421349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016761.P14069580347606421349

namespace A016761

/-- `record[xor(1, n)^9]` -/
def P14069580347606421349.Spec : Prop :=
  ∀ n, (P14069580347606421349.a n : ℤ) = A016761 n

end A016761

/-! ## A016761.P13136549870197500351

`or(1, comp[2*n]^9)`
-/

namespace A016761.P13136549870197500351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 9)

end

end A016761.P13136549870197500351

namespace A016761

/-- `or(1, comp[2*n]^9)` -/
def P13136549870197500351.Spec : Prop :=
  ∀ n, (P13136549870197500351.a n : ℤ) = A016761 n

end A016761

/-! ## A016761.P13985816513713333181

`root(comp[2*n], tan(acot(9)))`
-/

namespace A016761.P13985816513713333181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (9 : ℝ)))

end

end A016761.P13985816513713333181

namespace A016761

/-- `root(comp[2*n], tan(acot(9)))` -/
def P13985816513713333181.Spec : Prop :=
  ∀ n, P13985816513713333181.a n = (A016761 n : ℝ)

end A016761

/-! ## A016761.P3906703038111280314

`abs((-or(1, 2*n))^9)`
-/

namespace A016761.P3906703038111280314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 9|

end

end A016761.P3906703038111280314

namespace A016761

/-- `abs((-or(1, 2*n))^9)` -/
def P3906703038111280314.Spec : Prop :=
  ∀ n, P3906703038111280314.a n = A016761 n

end A016761

/-! ## A016761.P12676625876830712144

`-(-or(1, 2*n))^9`
-/

namespace A016761.P12676625876830712144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.lor 1 (2 * n) : ℤ)) ^ 9)

end

end A016761.P12676625876830712144

namespace A016761

/-- `-(-or(1, 2*n))^9` -/
def P12676625876830712144.Spec : Prop :=
  ∀ n, P12676625876830712144.a n = A016761 n

end A016761

/-! ## A016761.P12120031600725282560

`abs((-xor(1, 2*n))^9)`
-/

namespace A016761.P12120031600725282560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 9|

end

end A016761.P12120031600725282560

namespace A016761

/-- `abs((-xor(1, 2*n))^9)` -/
def P12120031600725282560.Spec : Prop :=
  ∀ n, P12120031600725282560.a n = A016761 n

end A016761

/-! ## A016761.P16115021137366774471

`-(-xor(1, 2*n))^9`
-/

namespace A016761.P16115021137366774471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.xor 1 (2 * n) : ℤ)) ^ 9)

end

end A016761.P16115021137366774471

namespace A016761

/-- `-(-xor(1, 2*n))^9` -/
def P16115021137366774471.Spec : Prop :=
  ∀ n, P16115021137366774471.a n = A016761 n

end A016761

/-! ## A016761.P5666782711819440006

`root(2*n+1, cot(atan(9)))`
-/

namespace A016761.P5666782711819440006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (9 : ℝ)))

end

end A016761.P5666782711819440006

namespace A016761

/-- `root(2*n+1, cot(atan(9)))` -/
def P5666782711819440006.Spec : Prop :=
  ∀ n, P5666782711819440006.a n = (A016761 n : ℝ)

theorem P5666782711819440006.correct : P5666782711819440006.Spec := by
  intro n
  simp only [A016761, Nat.add_sub_cancel, A016761.P5666782711819440006.a, A016761.P2892480136193022373.a, SequenceMachineLib.memo_apply]
  try simp

end A016761

/-! ## A016761.P15088622742395875242

`root(2*n+1, tan(acot(3))²)`
-/

namespace A016761.P15088622742395875242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (3 : ℝ)) ^ 2)

end

end A016761.P15088622742395875242

namespace A016761

/-- `root(2*n+1, tan(acot(3))²)` -/
def P15088622742395875242.Spec : Prop :=
  ∀ n, P15088622742395875242.a n = (A016761 n : ℝ)

end A016761

/-! ## A016761.P6454896663608900905

`root(2*n+1, abs(tan(acot(9))))`
-/

namespace A016761.P6454896663608900905
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / |Real.tan (SequenceMachineLib.acot (9 : ℝ))|)

end

end A016761.P6454896663608900905

namespace A016761

/-- `root(2*n+1, abs(tan(acot(9))))` -/
def P6454896663608900905.Spec : Prop :=
  ∀ n, P6454896663608900905.a n = (A016761 n : ℝ)

end A016761

/-! ## A016761.P12038903250510952727

`floor(root(2*n+1, tan(acot(9))))`
-/

namespace A016761.P12038903250510952727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (9 : ℝ)))⌋

end

end A016761.P12038903250510952727

namespace A016761

/-- `floor(root(2*n+1, tan(acot(9))))` -/
def P12038903250510952727.Spec : Prop :=
  ∀ n, P12038903250510952727.a n = A016761 n

end A016761

/-! ## A016761.P17361918549192871554

`ceil(root(2*n+1, tan(acot(9))))`
-/

namespace A016761.P17361918549192871554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (9 : ℝ)))⌉

end

end A016761.P17361918549192871554

namespace A016761

/-- `ceil(root(2*n+1, tan(acot(9))))` -/
def P17361918549192871554.Spec : Prop :=
  ∀ n, P17361918549192871554.a n = A016761 n

end A016761

/-! ## A016761.P3808940740553570899

`round(root(2*n+1, tan(acot(9))))`
-/

namespace A016761.P3808940740553570899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (9 : ℝ))))

end

end A016761.P3808940740553570899

namespace A016761

/-- `round(root(2*n+1, tan(acot(9))))` -/
def P3808940740553570899.Spec : Prop :=
  ∀ n, P3808940740553570899.a n = A016761 n

end A016761

/-! ## A016761.P1629688266171178885

`(2*n+1)*or(1, (2*n+1)²²²)`
-/

namespace A016761.P1629688266171178885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 ((((2 * n + 1) ^ 2) ^ 2) ^ 2)

end

end A016761.P1629688266171178885

namespace A016761

/-- `(2*n+1)*or(1, (2*n+1)²²²)` -/
def P1629688266171178885.Spec : Prop :=
  ∀ n, (P1629688266171178885.a n : ℤ) = A016761 n

end A016761

/-! ## A016761.P866733314704088416

`(2*n+1)*C(2*n+1, 2*n)²²²`
-/

namespace A016761.P866733314704088416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((Nat.choose (2 * n + 1) (2 * n) ^ 2) ^ 2) ^ 2

end

end A016761.P866733314704088416

namespace A016761

/-- `(2*n+1)*C(2*n+1, 2*n)²²²` -/
def P866733314704088416.Spec : Prop :=
  ∀ n, (P866733314704088416.a n : ℤ) = A016761 n

theorem P866733314704088416.correct : P866733314704088416.Spec := by
  intro n
  simp only [A016761, Nat.add_sub_cancel, A016761.P866733314704088416.a, A016761.P2892480136193022373.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016761

/-! ## A016761.P5199596791782290509

`Δ[n²]*A016760(n)`
-/

namespace A016761.P5199596791782290509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A016760 n

end

end A016761.P5199596791782290509

namespace A016761

/-- `Δ[n²]*A016760(n)` -/
def P5199596791782290509.Spec : Prop :=
  ∀ n, P5199596791782290509.a n = A016761 n

end A016761

/-! ## A016761.P9860823348244590816

`A016762(n)/(2*n+1)`
-/

namespace A016761.P9860823348244590816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016762 n : ℚ) / (2 * n + 1 : ℚ)

end

end A016761.P9860823348244590816

namespace A016761

/-- `A016762(n)/(2*n+1)` -/
def P9860823348244590816.Spec : Prop :=
  ∀ n, P9860823348244590816.a n = (A016761 n : ℚ)

end A016761

/-! ## A016761.P8526392841806477673

`A016754(n)*A016759(n)`
-/

namespace A016761.P8526392841806477673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A016759 n

end

end A016761.P8526392841806477673

namespace A016761

/-- `A016754(n)*A016759(n)` -/
def P8526392841806477673.Spec : Prop :=
  ∀ n, P8526392841806477673.a n = A016761 n

end A016761

/-! ## A016761.P2737637404510038677

`A016755(n)*A016758(n)`
-/

namespace A016761.P2737637404510038677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n * A016758 n

end

end A016761.P2737637404510038677

namespace A016761

/-- `A016755(n)*A016758(n)` -/
def P2737637404510038677.Spec : Prop :=
  ∀ n, P2737637404510038677.a n = A016761 n

end A016761

/-!
# A016762: a(n) = (2*n + 1)^10.

The programs for A016762, the canonical program `A016762.P4277765179051944872` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016762 has offset 0).

The definition of A016762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^10` (program `A016762.P4277765179051944872`, by `A016762.P4277765179051944872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016762.P4277765179051944872

`(2*n+1)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016762

/-- `(2*n+1)^10` -/
def P4277765179051944872.Spec : Prop :=
  ∀ n, (P4277765179051944872.a n : ℤ) = A016762 n

theorem P4277765179051944872.correct : P4277765179051944872.Spec := by
  intro n
  simp only [A016762]

end A016762

/-! ## A016762.P15434015037865712151

`A016757(n)²`
-/

namespace A016762.P15434015037865712151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 n ^ 2

end

end A016762.P15434015037865712151

namespace A016762

/-- `A016757(n)²` -/
def P15434015037865712151.Spec : Prop :=
  ∀ n, P15434015037865712151.a n = A016762 n

end A016762

/-! ## A016762.P13662906779258668689

`record[xor(1, n)^10]`
-/

namespace A016762.P13662906779258668689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016762.P13662906779258668689

namespace A016762

/-- `record[xor(1, n)^10]` -/
def P13662906779258668689.Spec : Prop :=
  ∀ n, (P13662906779258668689.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P3908952880591531159

`(or(1, 2*n)^5)²`
-/

namespace A016762.P3908952880591531159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 5) ^ 2

end

end A016762.P3908952880591531159

namespace A016762

/-- `(or(1, 2*n)^5)²` -/
def P3908952880591531159.Spec : Prop :=
  ∀ n, (P3908952880591531159.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P4601681293641101987

`(xor(1, 2*n)^5)²`
-/

namespace A016762.P4601681293641101987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 5) ^ 2

end

end A016762.P4601681293641101987

namespace A016762

/-- `(xor(1, 2*n)^5)²` -/
def P4601681293641101987.Spec : Prop :=
  ∀ n, (P4601681293641101987.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P14857809330508527269

`or(1, comp[2*n]^10)`
-/

namespace A016762.P14857809330508527269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 10)

end

end A016762.P14857809330508527269

namespace A016762

/-- `or(1, comp[2*n]^10)` -/
def P14857809330508527269.Spec : Prop :=
  ∀ n, (P14857809330508527269.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P11257332669716622801

`record[n^(10*and(1, n))]`
-/

namespace A016762.P11257332669716622801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (10 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016762.P11257332669716622801

namespace A016762

/-- `record[n^(10*and(1, n))]` -/
def P11257332669716622801.Spec : Prop :=
  ∀ n, (P11257332669716622801.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P1424842389895617207

`(lt[n, lcm(2, n)]^5)²`
-/

namespace A016762.P1424842389895617207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016762.P1424842389895617207

namespace A016762

/-- `(lt[n, lcm(2, n)]^5)²` -/
def P1424842389895617207.Spec : Prop :=
  ∀ n, (P1424842389895617207.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P5199292536365771129

`(lt[xor(1, n), n]^5)²`
-/

namespace A016762.P5199292536365771129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016762.P5199292536365771129

namespace A016762

/-- `(lt[xor(1, n), n]^5)²` -/
def P5199292536365771129.Spec : Prop :=
  ∀ n, (P5199292536365771129.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P828497513997735181

`root(comp[2*n], tan(acot(10)))`
-/

namespace A016762.P828497513997735181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (10 : ℝ)))

end

end A016762.P828497513997735181

namespace A016762

/-- `root(comp[2*n], tan(acot(10)))` -/
def P828497513997735181.Spec : Prop :=
  ∀ n, P828497513997735181.a n = (A016762 n : ℝ)

end A016762

/-! ## A016762.P517907435906838036

`abs((-or(1, 2*n))^10)`
-/

namespace A016762.P517907435906838036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ 10|

end

end A016762.P517907435906838036

namespace A016762

/-- `abs((-or(1, 2*n))^10)` -/
def P517907435906838036.Spec : Prop :=
  ∀ n, P517907435906838036.a n = A016762 n

end A016762

/-! ## A016762.P6724127708377773436

`abs((-xor(1, 2*n))^10)`
-/

namespace A016762.P6724127708377773436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ 10|

end

end A016762.P6724127708377773436

namespace A016762

/-- `abs((-xor(1, 2*n))^10)` -/
def P6724127708377773436.Spec : Prop :=
  ∀ n, P6724127708377773436.a n = A016762 n

end A016762

/-! ## A016762.P10126115000891511581

`root(2*n+1, cot(atan(10)))`
-/

namespace A016762.P10126115000891511581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (10 : ℝ)))

end

end A016762.P10126115000891511581

namespace A016762

/-- `root(2*n+1, cot(atan(10)))` -/
def P10126115000891511581.Spec : Prop :=
  ∀ n, P10126115000891511581.a n = (A016762 n : ℝ)

theorem P10126115000891511581.correct : P10126115000891511581.Spec := by
  intro n
  simp only [A016762, Nat.add_sub_cancel, A016762.P10126115000891511581.a, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try simp

end A016762

/-! ## A016762.P17853521475305873128

`sqrt(xor(1, 2*n)^4^5)`
-/

namespace A016762.P17853521475305873128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.xor 1 (2 * n) ^ 4) ^ 5 : ℝ)

end

end A016762.P17853521475305873128

namespace A016762

/-- `sqrt(xor(1, 2*n)^4^5)` -/
def P17853521475305873128.Spec : Prop :=
  ∀ n, P17853521475305873128.a n = (A016762 n : ℝ)

end A016762

/-! ## A016762.P3809791720942793209

`(lt[0, val(n+1, 2)]^5)²`
-/

namespace A016762.P3809791720942793209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016762.P3809791720942793209

namespace A016762

/-- `(lt[0, val(n+1, 2)]^5)²` -/
def P3809791720942793209.Spec : Prop :=
  ∀ n, (P3809791720942793209.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P6237198489994558952

`(eq[0, val(n+2, 2)]^5)²`
-/

namespace A016762.P6237198489994558952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016762.P6237198489994558952

namespace A016762

/-- `(eq[0, val(n+2, 2)]^5)²` -/
def P6237198489994558952.Spec : Prop :=
  ∀ n, (P6237198489994558952.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P149740033201240816

`or(1, (n+1+n)^5)²`
-/

namespace A016762.P149740033201240816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1 + n) ^ 5) ^ 2

end

end A016762.P149740033201240816

namespace A016762

/-- `or(1, (n+1+n)^5)²` -/
def P149740033201240816.Spec : Prop :=
  ∀ n, (P149740033201240816.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P13171600600688933187

`(eq[1, xor(n, n-1)]^5)²`
-/

namespace A016762.P13171600600688933187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 5) ^ 2

end

end A016762.P13171600600688933187

namespace A016762

/-- `(eq[1, xor(n, n-1)]^5)²` -/
def P13171600600688933187.Spec : Prop :=
  ∀ n, (P13171600600688933187.a n : ℤ) = A016762 n

end A016762

/-! ## A016762.P7482151045958204734

`root(2*n+1, cos(atan(3))²)`
-/

namespace A016762.P7482151045958204734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cos (Real.arctan (3 : ℝ)) ^ 2)

end

end A016762.P7482151045958204734

namespace A016762

/-- `root(2*n+1, cos(atan(3))²)` -/
def P7482151045958204734.Spec : Prop :=
  ∀ n, P7482151045958204734.a n = (A016762 n : ℝ)

end A016762

/-! ## A016762.P4907703225126596843

`((C(n+1, n)+n)^5)²`
-/

namespace A016762.P4907703225126596843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n + n) ^ 5) ^ 2

end

end A016762.P4907703225126596843

namespace A016762

/-- `((C(n+1, n)+n)^5)²` -/
def P4907703225126596843.Spec : Prop :=
  ∀ n, (P4907703225126596843.a n : ℤ) = A016762 n

theorem P4907703225126596843.correct : P4907703225126596843.Spec := by
  intro n
  simp only [A016762, Nat.add_sub_cancel, A016762.P4907703225126596843.a, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016762

/-!
# A016763: a(n) = (2*n+1)^11.

The programs for A016763, the canonical program `A016763.P10124515130881189729` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016763 has offset 0).

The definition of A016763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^11` (program `A016763.P10124515130881189729`, by `A016763.P10124515130881189729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016763.P10124515130881189729

`(2*n+1)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016763

/-- `(2*n+1)^11` -/
def P10124515130881189729.Spec : Prop :=
  ∀ n, (P10124515130881189729.a n : ℤ) = A016763 n

theorem P10124515130881189729.correct : P10124515130881189729.Spec := by
  intro n
  simp only [A016763]

end A016763

/-! ## A016763.P15602832322753890158

`root(2*n+1, tan(acot(11)))`
-/

namespace A016763.P15602832322753890158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (11 : ℝ)))

end

end A016763.P15602832322753890158

namespace A016763

/-- `root(2*n+1, tan(acot(11)))` -/
def P15602832322753890158.Spec : Prop :=
  ∀ n, P15602832322753890158.a n = (A016763 n : ℝ)

end A016763

/-! ## A016763.P14681914109870347719

`root(2*n+1, cot(atan(11)))`
-/

namespace A016763.P14681914109870347719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (11 : ℝ)))

end

end A016763.P14681914109870347719

namespace A016763

/-- `root(2*n+1, cot(atan(11)))` -/
def P14681914109870347719.Spec : Prop :=
  ∀ n, P14681914109870347719.a n = (A016763 n : ℝ)

theorem P14681914109870347719.correct : P14681914109870347719.Spec := by
  intro n
  simp only [A016763, Nat.add_sub_cancel, A016763.P14681914109870347719.a, A016763.P10124515130881189729.a, SequenceMachineLib.memo_apply]
  try simp

end A016763

/-! ## A016763.P15976032369340896825

`record[A000265(n+1)^11]`
-/

namespace A016763.P15976032369340896825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016763.P15976032369340896825

namespace A016763

/-- `record[A000265(n+1)^11]` -/
def P15976032369340896825.Spec : Prop :=
  ∀ n, P15976032369340896825.a n = A016763 n

end A016763

/-! ## A016763.P1855397186963798705

`Δ[n²]²*A016761(n)`
-/

namespace A016763.P1855397186963798705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * A016761 n

end

end A016763.P1855397186963798705

namespace A016763

/-- `Δ[n²]²*A016761(n)` -/
def P1855397186963798705.Spec : Prop :=
  ∀ n, P1855397186963798705.a n = A016763 n

end A016763

/-! ## A016763.P7994176443322272504

`(2*n+1)*A016762(n)`
-/

namespace A016763.P7994176443322272504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A016762 n

end

end A016763.P7994176443322272504

namespace A016763

/-- `(2*n+1)*A016762(n)` -/
def P7994176443322272504.Spec : Prop :=
  ∀ n, P7994176443322272504.a n = A016763 n

end A016763

/-! ## A016763.P10997085364119338556

`A016764(n)/(2*n+1)`
-/

namespace A016763.P10997085364119338556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016764 n : ℚ) / (2 * n + 1 : ℚ)

end

end A016763.P10997085364119338556

namespace A016763

/-- `A016764(n)/(2*n+1)` -/
def P10997085364119338556.Spec : Prop :=
  ∀ n, P10997085364119338556.a n = (A016763 n : ℚ)

end A016763

/-! ## A016763.P11277224512410522835

`A016755(n)*A016760(n)`
-/

namespace A016763.P11277224512410522835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n * A016760 n

end

end A016763.P11277224512410522835

namespace A016763

/-- `A016755(n)*A016760(n)` -/
def P11277224512410522835.Spec : Prop :=
  ∀ n, P11277224512410522835.a n = A016763 n

end A016763

/-! ## A016763.P9143058218252213175

`A016756(n)*A016759(n)`
-/

namespace A016763.P9143058218252213175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n * A016759 n

end

end A016763.P9143058218252213175

namespace A016763

/-- `A016756(n)*A016759(n)` -/
def P9143058218252213175.Spec : Prop :=
  ∀ n, P9143058218252213175.a n = A016763 n

end A016763

/-! ## A016763.P2099192193196935879

`A016757(n)*A016758(n)`
-/

namespace A016763.P2099192193196935879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 n * A016758 n

end

end A016763.P2099192193196935879

namespace A016763

/-- `A016757(n)*A016758(n)` -/
def P2099192193196935879.Spec : Prop :=
  ∀ n, P2099192193196935879.a n = A016763 n

end A016763

/-! ## A016763.P7399270665366604438

`A016756(n)²*A016755(n)`
-/

namespace A016763.P7399270665366604438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n ^ 2 * A016755 n

end

end A016763.P7399270665366604438

namespace A016763

/-- `A016756(n)²*A016755(n)` -/
def P7399270665366604438.Spec : Prop :=
  ∀ n, P7399270665366604438.a n = A016763 n

end A016763

/-! ## A016763.P2446821353329392695

`2*A016758(n)²/A016825(n)`
-/

namespace A016763.P2446821353329392695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016758 n ^ 2 : ℚ) / (A016825 n : ℚ))

end

end A016763.P2446821353329392695

namespace A016763

/-- `2*A016758(n)²/A016825(n)` -/
def P2446821353329392695.Spec : Prop :=
  ∀ n, P2446821353329392695.a n = (A016763 n : ℚ)

end A016763

/-! ## A016763.P860651002306137629

`A008455(Δ[n²])`
-/

namespace A016763.P860651002306137629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016763.P860651002306137629

namespace A016763

/-- `A008455(Δ[n²])` -/
def P860651002306137629.Spec : Prop :=
  ∀ n, P860651002306137629.a n = A016763 n

end A016763

/-! ## A016763.P2314480189768212212

`A258812(Δ[n²])+1`
-/

namespace A016763.P2314480189768212212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A016763.P2314480189768212212

namespace A016763

/-- `A258812(Δ[n²])+1` -/
def P2314480189768212212.Spec : Prop :=
  ∀ n, P2314480189768212212.a n = A016763 n

end A016763

/-! ## A016763.P13731742980369787099

`1-A024009(Δ[n²])`
-/

namespace A016763.P13731742980369787099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016763.P13731742980369787099

namespace A016763

/-- `1-A024009(Δ[n²])` -/
def P13731742980369787099.Spec : Prop :=
  ∀ n, P13731742980369787099.a n = A016763 n

end A016763

/-! ## A016763.P13243982905971727932

`(2*n+1)*A008454(2*n+1)`
-/

namespace A016763.P13243982905971727932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A008454 (2 * n + 1)

end

end A016763.P13243982905971727932

namespace A016763

/-- `(2*n+1)*A008454(2*n+1)` -/
def P13243982905971727932.Spec : Prop :=
  ∀ n, P13243982905971727932.a n = A016763 n

end A016763

/-! ## A016763.P14972382252044268667

`A008456(2*n+1)/(2*n+1)`
-/

namespace A016763.P14972382252044268667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A016763.P14972382252044268667

namespace A016763

/-- `A008456(2*n+1)/(2*n+1)` -/
def P14972382252044268667.Spec : Prop :=
  ∀ n, P14972382252044268667.a n = (A016763 n : ℚ)

end A016763

/-! ## A016763.P2211324425511311694

`lcm(2*n+1, A008455(2*n+1))`
-/

namespace A016763.P2211324425511311694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A008455 (2 * n + 1))

end

end A016763.P2211324425511311694

namespace A016763

/-- `lcm(2*n+1, A008455(2*n+1))` -/
def P2211324425511311694.Spec : Prop :=
  ∀ n, (P2211324425511311694.a n : ℤ) = A016763 n

end A016763

/-! ## A016763.P8124061375582009721

`A022527(2*n)+A008455(2*n)`
-/

namespace A016763.P8124061375582009721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022527 (2 * n) + A008455 (2 * n)

end

end A016763.P8124061375582009721

namespace A016763

/-- `A022527(2*n)+A008455(2*n)` -/
def P8124061375582009721.Spec : Prop :=
  ∀ n, P8124061375582009721.a n = A016763 n

end A016763

/-! ## A016763.P18150610185102220784

`A036089(2*n)-A008455(2*n)`
-/

namespace A016763.P18150610185102220784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036089 (2 * n) - A008455 (2 * n)

end

end A016763.P18150610185102220784

namespace A016763

/-- `A036089(2*n)-A008455(2*n)` -/
def P18150610185102220784.Spec : Prop :=
  ∀ n, P18150610185102220784.a n = A016763 n

end A016763

/-!
# A016764: a(n) = (2*n+1)^12.

The programs for A016764, the canonical program `A016764.P11997227983211058858` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016764 has offset 0).

The definition of A016764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^12` (program `A016764.P11997227983211058858`, by `A016764.P11997227983211058858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016764.P11997227983211058858

`(2*n+1)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016764

/-- `(2*n+1)^12` -/
def P11997227983211058858.Spec : Prop :=
  ∀ n, (P11997227983211058858.a n : ℤ) = A016764 n

theorem P11997227983211058858.correct : P11997227983211058858.Spec := by
  intro n
  simp only [A016764]

end A016764

/-! ## A016764.P1564443708906470936

`record[xor(1, n)^12]`
-/

namespace A016764.P1564443708906470936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016764.P1564443708906470936

namespace A016764

/-- `record[xor(1, n)^12]` -/
def P1564443708906470936.Spec : Prop :=
  ∀ n, (P1564443708906470936.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P3197422428189420748

`(or(1, 2*n)^6)²`
-/

namespace A016764.P3197422428189420748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 6) ^ 2

end

end A016764.P3197422428189420748

namespace A016764

/-- `(or(1, 2*n)^6)²` -/
def P3197422428189420748.Spec : Prop :=
  ∀ n, (P3197422428189420748.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P12323173961565170305

`(xor(1, 2*n)^6)²`
-/

namespace A016764.P12323173961565170305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 6) ^ 2

end

end A016764.P12323173961565170305

namespace A016764

/-- `(xor(1, 2*n)^6)²` -/
def P12323173961565170305.Spec : Prop :=
  ∀ n, (P12323173961565170305.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P4532872969211812360

`root(2*n+1, tan(acot(12)))`
-/

namespace A016764.P4532872969211812360
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (12 : ℝ)))

end

end A016764.P4532872969211812360

namespace A016764

/-- `root(2*n+1, tan(acot(12)))` -/
def P4532872969211812360.Spec : Prop :=
  ∀ n, P4532872969211812360.a n = (A016764 n : ℝ)

end A016764

/-! ## A016764.P10725960143388476523

`root(2*n+1, cot(atan(12)))`
-/

namespace A016764.P10725960143388476523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / Real.cot (Real.arctan (12 : ℝ)))

end

end A016764.P10725960143388476523

namespace A016764

/-- `root(2*n+1, cot(atan(12)))` -/
def P10725960143388476523.Spec : Prop :=
  ∀ n, P10725960143388476523.a n = (A016764 n : ℝ)

theorem P10725960143388476523.correct : P10725960143388476523.Spec := by
  intro n
  simp only [A016764, Nat.add_sub_cancel, A016764.P10725960143388476523.a, A016764.P11997227983211058858.a, SequenceMachineLib.memo_apply]
  try simp

end A016764

/-! ## A016764.P18371435782764510657

`Δ[C(2*n², 2)]²²`
-/

namespace A016764.P18371435782764510657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016764.P18371435782764510657

namespace A016764

/-- `Δ[C(2*n², 2)]²²` -/
def P18371435782764510657.Spec : Prop :=
  ∀ n, P18371435782764510657.a n = A016764 n

end A016764

/-! ## A016764.P3431083163056660480

`(∑[a(n-1)+8]^3)²` with `a(0)=1, a(1)=8`
-/

namespace A016764.P3431083163056660480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A016764.P3431083163056660480

namespace A016764

/-- `(∑[a(n-1)+8]^3)²` -/
def P3431083163056660480.Spec : Prop :=
  ∀ n, (P3431083163056660480.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P3649319257002778077

`floor(∑[a(n-1)+8]^6)` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A016764.P3649319257002778077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 6

end

end A016764.P3649319257002778077

namespace A016764

/-- `floor(∑[a(n-1)+8]^6)` -/
def P3649319257002778077.Spec : Prop :=
  ∀ n, (P3649319257002778077.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P12683618292008543074

`or(1, ((2*n+1)*(2*n+1)²)²²)`
-/

namespace A016764.P12683618292008543074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((((2 * n + 1) * (2 * n + 1) ^ 2) ^ 2) ^ 2)

end

end A016764.P12683618292008543074

namespace A016764

/-- `or(1, ((2*n+1)*(2*n+1)²)²²)` -/
def P12683618292008543074.Spec : Prop :=
  ∀ n, (P12683618292008543074.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P14820869060775061327

`((2*n+1)*C(2*n+1, 2*n)²)²²`
-/

namespace A016764.P14820869060775061327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * Nat.choose (2 * n + 1) (2 * n) ^ 2) ^ 2) ^ 2

end

end A016764.P14820869060775061327

namespace A016764

/-- `((2*n+1)*C(2*n+1, 2*n)²)²²` -/
def P14820869060775061327.Spec : Prop :=
  ∀ n, (P14820869060775061327.a n : ℤ) = A016764 n

theorem P14820869060775061327.correct : P14820869060775061327.Spec := by
  intro n
  simp only [A016764, Nat.add_sub_cancel, A016764.P14820869060775061327.a, A016764.P11997227983211058858.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016764

/-! ## A016764.P3089718310559691853

`lcm(2*n+1, ((2*n+1)*(2*n+1)²)²²)`
-/

namespace A016764.P3089718310559691853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((((2 * n + 1) * (2 * n + 1) ^ 2) ^ 2) ^ 2)

end

end A016764.P3089718310559691853

namespace A016764

/-- `lcm(2*n+1, ((2*n+1)*(2*n+1)²)²²)` -/
def P3089718310559691853.Spec : Prop :=
  ∀ n, (P3089718310559691853.a n : ℤ) = A016764 n

end A016764

/-! ## A016764.P7165053218010288782

`A016758(n)²`
-/

namespace A016764.P7165053218010288782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 n ^ 2

end

end A016764.P7165053218010288782

namespace A016764

/-- `A016758(n)²` -/
def P7165053218010288782.Spec : Prop :=
  ∀ n, P7165053218010288782.a n = A016764 n

end A016764

/-! ## A016764.P7624187738290052958

`A016755(n)²²`
-/

namespace A016764.P7624187738290052958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 n ^ 2) ^ 2

end

end A016764.P7624187738290052958

namespace A016764

/-- `A016755(n)²²` -/
def P7624187738290052958.Spec : Prop :=
  ∀ n, P7624187738290052958.a n = A016764 n

end A016764

/-! ## A016764.P9430231784836639042

`(A016754(n)^3)²`
-/

namespace A016764.P9430231784836639042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016754 n ^ 3) ^ 2

end

end A016764.P9430231784836639042

namespace A016764

/-- `(A016754(n)^3)²` -/
def P9430231784836639042.Spec : Prop :=
  ∀ n, P9430231784836639042.a n = A016764 n

end A016764

/-! ## A016764.P1649054921130020658

`∑[A010014(n)]²²`
-/

namespace A016764.P1649054921130020658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A016764.P1649054921130020658

namespace A016764

/-- `∑[A010014(n)]²²` -/
def P1649054921130020658.Spec : Prop :=
  ∀ n, P1649054921130020658.a n = A016764 n

end A016764

/-! ## A016764.P2560101277337598627

`Δ[A002593(n)]²²`
-/

namespace A016764.P2560101277337598627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A016764.P2560101277337598627

namespace A016764

/-- `Δ[A002593(n)]²²` -/
def P2560101277337598627.Spec : Prop :=
  ∀ n, P2560101277337598627.a n = A016764 n

end A016764

/-! ## A016764.P1500675725549741940

`(A157142(n)^3)²²`
-/

namespace A016764.P1500675725549741940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A157142 n ^ 3) ^ 2) ^ 2

end

end A016764.P1500675725549741940

namespace A016764

/-- `(A157142(n)^3)²²` -/
def P1500675725549741940.Spec : Prop :=
  ∀ n, P1500675725549741940.a n = A016764 n

end A016764

/-! ## A016764.P15205908604431527439

`(∑[A022144(n)]^3)²`
-/

namespace A016764.P15205908604431527439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A016764.P15205908604431527439

namespace A016764

/-- `(∑[A022144(n)]^3)²` -/
def P15205908604431527439.Spec : Prop :=
  ∀ n, P15205908604431527439.a n = A016764 n

end A016764

/-! ## A016764.P10863633070278328480

`(2*n+1)*A016763(n)`
-/

namespace A016764.P10863633070278328480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A016763 n

end

end A016764.P10863633070278328480

namespace A016764

/-- `(2*n+1)*A016763(n)` -/
def P10863633070278328480.Spec : Prop :=
  ∀ n, P10863633070278328480.a n = A016764 n

end A016764

/-!
# A016765: Expansion of g.f. 1/((1-3*x)*(1-4*x)*(1-6*x)).

The programs for A016765, the canonical program `A016765.P16389287829300346740` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016765 has offset 0).

The definition of A016765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016765.P16389287829300346740

`6^(n+1)-2^(2*n+3)+3^(n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016765

/-- `6^(n+1)-2^(2*n+3)+3^(n+1)` -/
def P16389287829300346740.Spec : Prop :=
  ∀ n, P16389287829300346740.a n = A016765 n

theorem P16389287829300346740.correct : P16389287829300346740.Spec := by
  intro n
  simp only [A016765]

end A016765

/-! ## A016765.P5916905096852948117

`Δ[A016222(n)-A016211(n)]`
-/

namespace A016765.P5916905096852948117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016222 n - A016211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016765.P5916905096852948117

namespace A016765

/-- `Δ[A016222(n)-A016211(n)]` -/
def P5916905096852948117.Spec : Prop :=
  ∀ n, P5916905096852948117.a n = A016765 n

end A016765

/-! ## A016765.P17581816035773926680

`A020594(n)/2^n`
-/

namespace A016765.P17581816035773926680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020594 n : ℚ) / (2 ^ n : ℚ)

end

end A016765.P17581816035773926680

namespace A016765

/-- `A020594(n)/2^n` -/
def P17581816035773926680.Spec : Prop :=
  ∀ n, P17581816035773926680.a n = (A016765 n : ℚ)

end A016765

/-! ## A016765.P13916471754505787692

`ceil(A020594(n)/A000079(n))`
-/

namespace A016765.P13916471754505787692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020594 n : ℚ) / (A000079 n : ℚ)⌉

end

end A016765.P13916471754505787692

namespace A016765

/-- `ceil(A020594(n)/A000079(n))` -/
def P13916471754505787692.Spec : Prop :=
  ∀ n, P13916471754505787692.a n = A016765 n

end A016765

/-! ## A016765.P17511944114613845989

`2*A020594(n)/A000079(n+1)`
-/

namespace A016765.P17511944114613845989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A020594 n : ℚ) / (A000079 (n + 1) : ℚ)

end

end A016765.P17511944114613845989

namespace A016765

/-- `2*A020594(n)/A000079(n+1)` -/
def P17511944114613845989.Spec : Prop :=
  ∀ n, P17511944114613845989.a n = (A016765 n : ℚ)

end A016765

/-!
# A016766: a(n) = (3*n)^2.

The programs for A016766, the canonical program `A016766.P3834823630241441293` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016766 has offset 0).

The definition of A016766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)²` (program `A016766.P3834823630241441293`, by `A016766.P3834823630241441293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016766.P3834823630241441293

`(3*n)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016766

/-- `(3*n)²` -/
def P3834823630241441293.Spec : Prop :=
  ∀ n, (P3834823630241441293.a n : ℤ) = A016766 n

theorem P3834823630241441293.correct : P3834823630241441293.Spec := by
  intro n
  simp only [A016766]

end A016766

/-!
# A016767: a(n) = (3*n)^3.

The programs for A016767, the canonical program `A016767.P3997155990818198274` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016767 has offset 0).

The definition of A016767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^3` (program `A016767.P3997155990818198274`, by `A016767.P3997155990818198274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016767.P3997155990818198274

`(3*n)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016767

/-- `(3*n)^3` -/
def P3997155990818198274.Spec : Prop :=
  ∀ n, (P3997155990818198274.a n : ℤ) = A016767 n

theorem P3997155990818198274.correct : P3997155990818198274.Spec := by
  intro n
  simp only [A016767]

end A016767

/-!
# A016768: a(n) = (3*n)^4.

The programs for A016768, the canonical program `A016768.P18056756270449586685` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016768 has offset 0).

The definition of A016768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^4` (program `A016768.P18056756270449586685`, by `A016768.P18056756270449586685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016768.P18056756270449586685

`(3*n)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016768

/-- `(3*n)^4` -/
def P18056756270449586685.Spec : Prop :=
  ∀ n, (P18056756270449586685.a n : ℤ) = A016768 n

theorem P18056756270449586685.correct : P18056756270449586685.Spec := by
  intro n
  simp only [A016768]

end A016768

/-!
# A016769: a(n) = (3*n)^5.

The programs for A016769, the canonical program `A016769.P4161950069484108610` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016769 has offset 0).

The definition of A016769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^5` (program `A016769.P4161950069484108610`, by `A016769.P4161950069484108610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016769.P4161950069484108610

`(3*n)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016769

/-- `(3*n)^5` -/
def P4161950069484108610.Spec : Prop :=
  ∀ n, (P4161950069484108610.a n : ℤ) = A016769 n

theorem P4161950069484108610.correct : P4161950069484108610.Spec := by
  intro n
  simp only [A016769]

end A016769

/-!
# A016770: a(n) = (3*n)^6.

The programs for A016770, the canonical program `A016770.P10834588308063402470` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016770 has offset 0).

The definition of A016770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^6` (program `A016770.P10834588308063402470`, by `A016770.P10834588308063402470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016770.P10834588308063402470

`(3*n)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016770

/-- `(3*n)^6` -/
def P10834588308063402470.Spec : Prop :=
  ∀ n, (P10834588308063402470.a n : ℤ) = A016770 n

theorem P10834588308063402470.correct : P10834588308063402470.Spec := by
  intro n
  simp only [A016770]

end A016770

/-!
# A016771: a(n) = (3*n)^7.

The programs for A016771, the canonical program `A016771.P7538791312467411803` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016771 has offset 0).

The definition of A016771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^7` (program `A016771.P7538791312467411803`, by `A016771.P7538791312467411803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016771.P7538791312467411803

`(3*n)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016771

/-- `(3*n)^7` -/
def P7538791312467411803.Spec : Prop :=
  ∀ n, (P7538791312467411803.a n : ℤ) = A016771 n

theorem P7538791312467411803.correct : P7538791312467411803.Spec := by
  intro n
  simp only [A016771]

end A016771

/-!
# A016772: a(n) = (3*n)^8.

The programs for A016772, the canonical program `A016772.P2844558475397067557` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016772 has offset 0).

The definition of A016772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^8` (program `A016772.P2844558475397067557`, by `A016772.P2844558475397067557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016772.P2844558475397067557

`(3*n)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016772

/-- `(3*n)^8` -/
def P2844558475397067557.Spec : Prop :=
  ∀ n, (P2844558475397067557.a n : ℤ) = A016772 n

theorem P2844558475397067557.correct : P2844558475397067557.Spec := by
  intro n
  simp only [A016772]

end A016772

/-!
# A016773: a(n) = (3*n)^9.

The programs for A016773, the canonical program `A016773.P756360560506890922` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016773 has offset 0).

The definition of A016773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^9` (program `A016773.P756360560506890922`, by `A016773.P756360560506890922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016773.P756360560506890922

`(3*n)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016773

/-- `(3*n)^9` -/
def P756360560506890922.Spec : Prop :=
  ∀ n, (P756360560506890922.a n : ℤ) = A016773 n

theorem P756360560506890922.correct : P756360560506890922.Spec := by
  intro n
  simp only [A016773]

end A016773

/-!
# A016774: a(n) = (3*n)^10.

The programs for A016774, the canonical program `A016774.P14788288456263869944` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016774 has offset 0).

The definition of A016774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^10` (program `A016774.P14788288456263869944`, by `A016774.P14788288456263869944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016774.P14788288456263869944

`(3*n)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016774

/-- `(3*n)^10` -/
def P14788288456263869944.Spec : Prop :=
  ∀ n, (P14788288456263869944.a n : ℤ) = A016774 n

theorem P14788288456263869944.correct : P14788288456263869944.Spec := by
  intro n
  simp only [A016774]

end A016774

/-!
# A016775: a(n) = (3*n)^11.

The programs for A016775, the canonical program `A016775.P6055154999730758988` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016775 has offset 0).

The definition of A016775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^11` (program `A016775.P6055154999730758988`, by `A016775.P6055154999730758988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016775.P6055154999730758988

`(3*n)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016775

/-- `(3*n)^11` -/
def P6055154999730758988.Spec : Prop :=
  ∀ n, (P6055154999730758988.a n : ℤ) = A016775 n

theorem P6055154999730758988.correct : P6055154999730758988.Spec := by
  intro n
  simp only [A016775]

end A016775

/-!
# A016776: a(n) = (3*n)^12.

The programs for A016776, the canonical program `A016776.P857390083268141524` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016776 has offset 0).

The definition of A016776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^12` (program `A016776.P857390083268141524`, by `A016776.P857390083268141524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016776.P857390083268141524

`(3*n)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016776

/-- `(3*n)^12` -/
def P857390083268141524.Spec : Prop :=
  ∀ n, (P857390083268141524.a n : ℤ) = A016776 n

theorem P857390083268141524.correct : P857390083268141524.Spec := by
  intro n
  simp only [A016776]

end A016776

/-!
# A016777: a(n) = 3*n + 1.

The programs for A016777, the canonical program `A016777.P9931792138852554157` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016777 has offset 0).

The definition of A016777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n+1` (program `A016777.P9931792138852554157`, by `A016777.P9931792138852554157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016777.P1497761770688417812

`1+3*n`
-/

namespace A016777.P1497761770688417812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * n

end

end A016777.P1497761770688417812

namespace A016777

/-- `1+3*n` -/
def P1497761770688417812.Spec : Prop :=
  ∀ n, (P1497761770688417812.a n : ℤ) = A016777 n

theorem P1497761770688417812.correct : P1497761770688417812.Spec := by
  intro n
  simp only [A016777, Nat.add_sub_cancel, A016777.P1497761770688417812.a, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A016777

/-! ## A016777.P9931792138852554157

`3*n+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016777

/-- `3*n+1` -/
def P9931792138852554157.Spec : Prop :=
  ∀ n, (P9931792138852554157.a n : ℤ) = A016777 n

theorem P9931792138852554157.correct : P9931792138852554157.Spec := by
  intro n
  simp only [A016777]

end A016777

/-!
# A016778: a(n) = (3*n+1)^2.

The programs for A016778, the canonical program `A016778.P16000663877604072744` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016778 has offset 0).

The definition of A016778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)²` (program `A016778.P16000663877604072744`, by `A016778.P16000663877604072744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016778.P16000663877604072744

`(3*n+1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016778

/-- `(3*n+1)²` -/
def P16000663877604072744.Spec : Prop :=
  ∀ n, (P16000663877604072744.a n : ℤ) = A016778 n

theorem P16000663877604072744.correct : P16000663877604072744.Spec := by
  intro n
  simp only [A016778]

end A016778

/-! ## A016778.P8700954575092004093

`a(n-1)+3*(6*n-1)` with `a(0)=1`
-/

namespace A016778.P8700954575092004093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * ((6 * n : ℤ) - 1)

end

end A016778.P8700954575092004093

namespace A016778

/-- `a(n-1)+3*(6*n-1)` -/
def P8700954575092004093.Spec : Prop :=
  ∀ n, P8700954575092004093.a n = A016778 n

theorem P8700954575092004093.correct : P8700954575092004093.Spec := by
  intro n
  induction n with
  | zero => simp [A016778, A016778.P8700954575092004093.a, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016778, Nat.add_sub_cancel, A016778.P8700954575092004093.a, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016778

/-! ## A016778.P9752047056131135927

`A247792(n)+6*n`
-/

namespace A016778.P9752047056131135927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n + (6 * n : ℤ)

end

end A016778.P9752047056131135927

namespace A016778

/-- `A247792(n)+6*n` -/
def P9752047056131135927.Spec : Prop :=
  ∀ n, P9752047056131135927.a n = A016778 n

end A016778

/-! ## A016778.P2700069998297149903

`A000290(A016777(n))`
-/

namespace A016778.P2700069998297149903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A016777 n).toNat

end

end A016778.P2700069998297149903

namespace A016778

/-- `A000290(A016777(n))` -/
def P2700069998297149903.Spec : Prop :=
  ∀ n, P2700069998297149903.a n = A016778 n

end A016778

/-! ## A016778.P15095367249150304745

`A000212(3*n)+A000212(1+3*n)+A000212(2+3*n)`
-/

namespace A016778.P15095367249150304745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (3 * n) + A000212 (1 + 3 * n) + A000212 (2 + 3 * n)

end

end A016778.P15095367249150304745

namespace A016778

/-- `A000212(3*n)+A000212(1+3*n)+A000212(2+3*n)` -/
def P15095367249150304745.Spec : Prop :=
  ∀ n, P15095367249150304745.a n = A016778 n

end A016778

/-! ## A016778.P10563993932541393115

`xor(3*n, -1)^2`
-/

namespace A016778.P10563993932541393115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * n : ℤ) (-1) ^ 2

end

end A016778.P10563993932541393115

namespace A016778

/-- `xor(3*n, -1)^2` -/
def P10563993932541393115.Spec : Prop :=
  ∀ n, P10563993932541393115.a n = A016778 n

end A016778

/-! ## A016778.P8798403336370874171

`record[(1-n)^(n%3)]`
-/

namespace A016778.P8798403336370874171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P8798403336370874171

namespace A016778

/-- `record[(1-n)^(n%3)]` -/
def P8798403336370874171.Spec : Prop :=
  ∀ n, P8798403336370874171.a n = A016778 n

end A016778

/-! ## A016778.P9828392290929806576

`∑[a(n-1)+18]` with `a(0)=1, a(1)=15`
-/

namespace A016778.P9828392290929806576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016778.P9828392290929806576

namespace A016778

/-- `∑[a(n-1)+18]` -/
def P9828392290929806576.Spec : Prop :=
  ∀ n, (P9828392290929806576.a n : ℤ) = A016778 n

end A016778

/-! ## A016778.P6514739557243250810

`record[(gcd(3, 1-n)+n)²]`
-/

namespace A016778.P6514739557243250810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P6514739557243250810

namespace A016778

/-- `record[(gcd(3, 1-n)+n)²]` -/
def P6514739557243250810.Spec : Prop :=
  ∀ n, (P6514739557243250810.a n : ℤ) = A016778 n

end A016778

/-! ## A016778.P5687919333373642674

`4-∑[a(n-1)-18]` with `a(0)=3`
-/

namespace A016778.P5687919333373642674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016778.P5687919333373642674

namespace A016778

/-- `4-∑[a(n-1)-18]` -/
def P5687919333373642674.Spec : Prop :=
  ∀ n, P5687919333373642674.a n = A016778 n

end A016778

/-! ## A016778.P286372173054044525

`record[((n+2)/(dr(n)+2))²]`
-/

namespace A016778.P286372173054044525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / (SequenceMachineLib.digitalRoot (n : ℤ) + 2 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P286372173054044525

namespace A016778

/-- `record[((n+2)/(dr(n)+2))²]` -/
def P286372173054044525.Spec : Prop :=
  ∀ n, P286372173054044525.a n = (A016778 n : ℚ)

end A016778

/-! ## A016778.P14080586241533014285

`record[((dr(3-n)-n)/3)²]`
-/

namespace A016778.P14080586241533014285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P14080586241533014285

namespace A016778

/-- `record[((dr(3-n)-n)/3)²]` -/
def P14080586241533014285.Spec : Prop :=
  ∀ n, P14080586241533014285.a n = (A016778 n : ℚ)

end A016778

/-! ## A016778.P12729507085168114823

`record[(dr(n+1+n)+n)²]`
-/

namespace A016778.P12729507085168114823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 + n : ℤ) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P12729507085168114823

namespace A016778

/-- `record[(dr(n+1+n)+n)²]` -/
def P12729507085168114823.Spec : Prop :=
  ∀ n, (P12729507085168114823.a n : ℤ) = A016778 n

end A016778

/-! ## A016778.P12951987386368402378

`18*n+a(n-1)-3` with `a(0)=1`
-/

namespace A016778.P12951987386368402378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (18 * n : ℤ) + (a (n - 1) - 3)

end

end A016778.P12951987386368402378

namespace A016778

/-- `18*n+a(n-1)-3` -/
def P12951987386368402378.Spec : Prop :=
  ∀ n, P12951987386368402378.a n = A016778 n

theorem P12951987386368402378.correct : P12951987386368402378.Spec := by
  intro n
  induction n with
  | zero => simp [A016778, A016778.P12951987386368402378.a, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016778, Nat.add_sub_cancel, A016778.P12951987386368402378.a, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016778

/-! ## A016778.P11841819030889103783

`18*n-(3-a(n-1))` with `a(0)=1`
-/

namespace A016778.P11841819030889103783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (18 * n : ℤ) - (3 - a (n - 1))

end

end A016778.P11841819030889103783

namespace A016778

/-- `18*n-(3-a(n-1))` -/
def P11841819030889103783.Spec : Prop :=
  ∀ n, P11841819030889103783.a n = A016778 n

theorem P11841819030889103783.correct : P11841819030889103783.Spec := by
  intro n
  induction n with
  | zero => simp [A016778, A016778.P11841819030889103783.a, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016778, Nat.add_sub_cancel, A016778.P11841819030889103783.a, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016778

/-! ## A016778.P2622670604880795831

`record[(n+3)^dr((2*n)%3)]`
-/

namespace A016778.P2622670604880795831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ SequenceMachineLib.digitalRoot ((2 * n % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P2622670604880795831

namespace A016778

/-- `record[(n+3)^dr((2*n)%3)]` -/
def P2622670604880795831.Spec : Prop :=
  ∀ n, (P2622670604880795831.a n : ℤ) = A016778 n

end A016778

/-! ## A016778.P839876558263548079

`record[C(n+3, a(n-1))²]` with `a(0)=1`
-/

namespace A016778.P839876558263548079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (n + 3) (f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P839876558263548079

namespace A016778

/-- `record[C(n+3, a(n-1))²]` -/
def P839876558263548079.Spec : Prop :=
  ∀ n, (P839876558263548079.a n : ℤ) = A016778 n

end A016778

/-! ## A016778.P3549300275309834004

`(3*n+1)^ceil(atan(n+1))`
-/

namespace A016778.P3549300275309834004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A016778.P3549300275309834004

namespace A016778

/-- `(3*n+1)^ceil(atan(n+1))` -/
def P3549300275309834004.Spec : Prop :=
  ∀ n, P3549300275309834004.a n = (A016778 n : ℚ)

end A016778

/-! ## A016778.P910620379541905838

`record[(abs(2-n)-(3-2*n))²]`
-/

namespace A016778.P910620379541905838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|2 - (n : ℤ)| - (3 - (2 * n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016778.P910620379541905838

namespace A016778

/-- `record[(abs(2-n)-(3-2*n))²]` -/
def P910620379541905838.Spec : Prop :=
  ∀ n, P910620379541905838.a n = A016778 n

end A016778

/-!
# A016779: a(n) = (3*n + 1)^3.

The programs for A016779, the canonical program `A016779.P12183208488872344435` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016779 has offset 0).

The definition of A016779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^3` (program `A016779.P12183208488872344435`, by `A016779.P12183208488872344435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016779.P12183208488872344435

`(3*n+1)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016779

/-- `(3*n+1)^3` -/
def P12183208488872344435.Spec : Prop :=
  ∀ n, (P12183208488872344435.a n : ℤ) = A016779 n

theorem P12183208488872344435.correct : P12183208488872344435.Spec := by
  intro n
  simp only [A016779]

end A016779

/-! ## A016779.P9185224274421444216

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=64, a(2)=343, a(3)=1000`
-/

namespace A016779.P9185224274421444216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 64, 343, 1000] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A016779.P9185224274421444216

namespace A016779

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9185224274421444216.Spec : Prop :=
  ∀ n, P9185224274421444216.a n = A016779 n

theorem P9185224274421444216.correct : P9185224274421444216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A016779, Nat.add_sub_cancel, A016779.P9185224274421444216.a, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A016779, Nat.add_sub_cancel, A016779.P9185224274421444216.a, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016779

/-! ## A016779.P1183351701519231541

`record[(gcd(3, 1-n)+n)^3]`
-/

namespace A016779.P1183351701519231541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - (n : ℤ)) + n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016779.P1183351701519231541

namespace A016779

/-- `record[(gcd(3, 1-n)+n)^3]` -/
def P1183351701519231541.Spec : Prop :=
  ∀ n, (P1183351701519231541.a n : ℤ) = A016779 n

end A016779

/-! ## A016779.P11068626365072228967

`record[(n+1)^(n-lcm(3, 3-n))]`
-/

namespace A016779.P11068626365072228967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - (Int.lcm 3 (3 - (n : ℤ)) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016779.P11068626365072228967

namespace A016779

/-- `record[(n+1)^(n-lcm(3, 3-n))]` -/
def P11068626365072228967.Spec : Prop :=
  ∀ n, P11068626365072228967.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P16601971286303096592

`(3*n+1)²*Δ[C(n, 2)+n²]`
-/

namespace A016779.P16601971286303096592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A016779.P16601971286303096592

namespace A016779

/-- `(3*n+1)²*Δ[C(n, 2)+n²]` -/
def P16601971286303096592.Spec : Prop :=
  ∀ n, P16601971286303096592.a n = A016779 n

end A016779

/-! ## A016779.P17916128618409081440

`sqrt(A016782(n))`
-/

namespace A016779.P17916128618409081440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016782 n : ℝ)

end

end A016779.P17916128618409081440

namespace A016779

/-- `sqrt(A016782(n))` -/
def P17916128618409081440.Spec : Prop :=
  ∀ n, P17916128618409081440.a n = (A016779 n : ℝ)

end A016779

/-! ## A016779.P7328486214975101575

`A016935(n)/8`
-/

namespace A016779.P7328486214975101575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016935 n : ℚ) / 8

end

end A016779.P7328486214975101575

namespace A016779

/-- `A016935(n)/8` -/
def P7328486214975101575.Spec : Prop :=
  ∀ n, P7328486214975101575.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P6810141150326095434

`sqrt(sqrt(A016788(n)))`
-/

namespace A016779.P6810141150326095434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016788 n : ℝ))

end

end A016779.P6810141150326095434

namespace A016779

/-- `sqrt(sqrt(A016788(n)))` -/
def P6810141150326095434.Spec : Prop :=
  ∀ n, P6810141150326095434.a n = (A016779 n : ℝ)

end A016779

/-! ## A016779.P3343327214991543741

`sqrt(A016778(n)^3)`
-/

namespace A016779.P3343327214991543741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016778 n ^ 3 : ℝ)

end

end A016779.P3343327214991543741

namespace A016779

/-- `sqrt(A016778(n)^3)` -/
def P3343327214991543741.Spec : Prop :=
  ∀ n, P3343327214991543741.a n = (A016779 n : ℝ)

end A016779

/-! ## A016779.P14068287557451069465

`3*A121628(n+1)+1`
-/

namespace A016779.P14068287557451069465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A121628 (n + 1) + 1

end

end A016779.P14068287557451069465

namespace A016779

/-- `3*A121628(n+1)+1` -/
def P14068287557451069465.Spec : Prop :=
  ∀ n, P14068287557451069465.a n = A016779 n

end A016779

/-! ## A016779.P13239697552446378197

`(n*(9*n+6)+1)*A016777(n)`
-/

namespace A016779.P13239697552446378197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (9 * n + 6) + 1 : ℤ) * A016777 n

end

end A016779.P13239697552446378197

namespace A016779

/-- `(n*(9*n+6)+1)*A016777(n)` -/
def P13239697552446378197.Spec : Prop :=
  ∀ n, P13239697552446378197.a n = A016779 n

end A016779

/-! ## A016779.P3626564658836884870

`A294315(n)+A033591(n)`
-/

namespace A016779.P3626564658836884870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294315 n + A033591 n

end

end A016779.P3626564658836884870

namespace A016779

/-- `A294315(n)+A033591(n)` -/
def P3626564658836884870.Spec : Prop :=
  ∀ n, P3626564658836884870.a n = A016779 n

end A016779

/-! ## A016779.P3008573320616940315

`A016777(n)*A016778(n)`
-/

namespace A016779.P3008573320616940315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016778 n

end

end A016779.P3008573320616940315

namespace A016779

/-- `A016777(n)*A016778(n)` -/
def P3008573320616940315.Spec : Prop :=
  ∀ n, P3008573320616940315.a n = A016779 n

end A016779

/-! ## A016779.P13499640168119193728

`A016780(n)/A016777(n)`
-/

namespace A016779.P13499640168119193728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016780 n : ℚ) / (A016777 n : ℚ)

end

end A016779.P13499640168119193728

namespace A016779

/-- `A016780(n)/A016777(n)` -/
def P13499640168119193728.Spec : Prop :=
  ∀ n, P13499640168119193728.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P12605512813612583842

`A016781(n)/A016778(n)`
-/

namespace A016779.P12605512813612583842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016781 n : ℚ) / (A016778 n : ℚ)

end

end A016779.P12605512813612583842

namespace A016779

/-- `A016781(n)/A016778(n)` -/
def P12605512813612583842.Spec : Prop :=
  ∀ n, P12605512813612583842.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P367026724794210567

`A016783(n)/A016780(n)`
-/

namespace A016779.P367026724794210567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n : ℚ) / (A016780 n : ℚ)

end

end A016779.P367026724794210567

namespace A016779

/-- `A016783(n)/A016780(n)` -/
def P367026724794210567.Spec : Prop :=
  ∀ n, P367026724794210567.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P3162365418876461008

`A016784(n)/A016781(n)`
-/

namespace A016779.P3162365418876461008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 n : ℚ) / (A016781 n : ℚ)

end

end A016779.P3162365418876461008

namespace A016779

/-- `A016784(n)/A016781(n)` -/
def P3162365418876461008.Spec : Prop :=
  ∀ n, P3162365418876461008.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P11953241166972403536

`A016785(n)/A016782(n)`
-/

namespace A016779.P11953241166972403536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 n : ℚ) / (A016782 n : ℚ)

end

end A016779.P11953241166972403536

namespace A016779

/-- `A016785(n)/A016782(n)` -/
def P11953241166972403536.Spec : Prop :=
  ∀ n, P11953241166972403536.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P6670523324086689849

`A016786(n)/A016783(n)`
-/

namespace A016779.P6670523324086689849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016786 n : ℚ) / (A016783 n : ℚ)

end

end A016779.P6670523324086689849

namespace A016779

/-- `A016786(n)/A016783(n)` -/
def P6670523324086689849.Spec : Prop :=
  ∀ n, P6670523324086689849.a n = (A016779 n : ℚ)

end A016779

/-! ## A016779.P8655287684215632018

`A016787(n)/A016784(n)`
-/

namespace A016779.P8655287684215632018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016784 n : ℚ)

end

end A016779.P8655287684215632018

namespace A016779

/-- `A016787(n)/A016784(n)` -/
def P8655287684215632018.Spec : Prop :=
  ∀ n, P8655287684215632018.a n = (A016779 n : ℚ)

end A016779

/-!
# A016780: a(n) = (3*n+1)^4.

The programs for A016780, the canonical program `A016780.P5276202049473501293` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016780 has offset 0).

The definition of A016780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^4` (program `A016780.P5276202049473501293`, by `A016780.P5276202049473501293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016780.P5276202049473501293

`(3*n+1)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016780

/-- `(3*n+1)^4` -/
def P5276202049473501293.Spec : Prop :=
  ∀ n, (P5276202049473501293.a n : ℤ) = A016780 n

theorem P5276202049473501293.correct : P5276202049473501293.Spec := by
  intro n
  simp only [A016780]

end A016780

/-! ## A016780.P1667803695127485171

`A000583(A016777(n))`
-/

namespace A016780.P1667803695127485171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A016777 n).toNat

end

end A016780.P1667803695127485171

namespace A016780

/-- `A000583(A016777(n))` -/
def P1667803695127485171.Spec : Prop :=
  ∀ n, P1667803695127485171.a n = A016780 n

end A016780

/-! ## A016780.P4148438150315798818

`xor(3*n, -1)²²`
-/

namespace A016780.P4148438150315798818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (3 * n : ℤ) (-1) ^ 2) ^ 2

end

end A016780.P4148438150315798818

namespace A016780

/-- `xor(3*n, -1)²²` -/
def P4148438150315798818.Spec : Prop :=
  ∀ n, P4148438150315798818.a n = A016780 n

end A016780

/-! ## A016780.P11164836731599051184

`(record[xor(1, n)]+n)²²`
-/

namespace A016780.P11164836731599051184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) ^ 2) ^ 2

end

end A016780.P11164836731599051184

namespace A016780

/-- `(record[xor(1, n)]+n)²²` -/
def P11164836731599051184.Spec : Prop :=
  ∀ n, (P11164836731599051184.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P15769991932749489605

`(or(1, 2*n)+n)²²`
-/

namespace A016780.P15769991932749489605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) + n) ^ 2) ^ 2

end

end A016780.P15769991932749489605

namespace A016780

/-- `(or(1, 2*n)+n)²²` -/
def P15769991932749489605.Spec : Prop :=
  ∀ n, (P15769991932749489605.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P14254223845245007958

`(xor(1, 2*n)+n)²²`
-/

namespace A016780.P14254223845245007958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) + n) ^ 2) ^ 2

end

end A016780.P14254223845245007958

namespace A016780

/-- `(xor(1, 2*n)+n)²²` -/
def P14254223845245007958.Spec : Prop :=
  ∀ n, (P14254223845245007958.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P6321624163999199634

`lt[lcm(3, 1-n), n]²²`
-/

namespace A016780.P6321624163999199634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2

end

end A016780.P6321624163999199634

namespace A016780

/-- `lt[lcm(3, 1-n), n]²²` -/
def P6321624163999199634.Spec : Prop :=
  ∀ n, (P6321624163999199634.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P2852064299849752060

`Δ[C(n, 2)+n²]²²`
-/

namespace A016780.P2852064299849752060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016780.P2852064299849752060

namespace A016780

/-- `Δ[C(n, 2)+n²]²²` -/
def P2852064299849752060.Spec : Prop :=
  ∀ n, P2852064299849752060.a n = A016780 n

end A016780

/-! ## A016780.P2412656662880396931

`∑[a(n-1)+18]²` with `a(0)=1, a(1)=15`
-/

namespace A016780.P2412656662880396931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A016780.P2412656662880396931

namespace A016780

/-- `∑[a(n-1)+18]²` -/
def P2412656662880396931.Spec : Prop :=
  ∀ n, (P2412656662880396931.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P5753088157128465129

`record[(gcd(3, 1-n)+n)^4]`
-/

namespace A016780.P5753088157128465129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - (n : ℤ)) + n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016780.P5753088157128465129

namespace A016780

/-- `record[(gcd(3, 1-n)+n)^4]` -/
def P5753088157128465129.Spec : Prop :=
  ∀ n, (P5753088157128465129.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P5216918969634031159

`(Δ[C(2*n, 2)]-n)²²`
-/

namespace A016780.P5216918969634031159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A016780.P5216918969634031159

namespace A016780

/-- `(Δ[C(2*n, 2)]-n)²²` -/
def P5216918969634031159.Spec : Prop :=
  ∀ n, P5216918969634031159.a n = A016780 n

end A016780

/-! ## A016780.P7642861550148508278

`record[(n+1)^(dr(n²)-5)]`
-/

namespace A016780.P7642861550148508278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ) - 5 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016780.P7642861550148508278

namespace A016780

/-- `record[(n+1)^(dr(n²)-5)]` -/
def P7642861550148508278.Spec : Prop :=
  ∀ n, P7642861550148508278.a n = (A016780 n : ℚ)

end A016780

/-! ## A016780.P2031657772986234304

`(root(a(n-1), 4)+3)²²` with `a(0)=1`
-/

namespace A016780.P2031657772986234304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((a (n - 1) ^ (1 / (4 : ℝ)) + 3) ^ 2) ^ 2

end

end A016780.P2031657772986234304

namespace A016780

/-- `(root(a(n-1), 4)+3)²²` -/
def P2031657772986234304.Spec : Prop :=
  ∀ n, P2031657772986234304.a n = (A016780 n : ℝ)

end A016780

/-! ## A016780.P15728724507395548468

`record[a(n-2)+3]²²` with `a(0)=1, a(1)=0`
-/

namespace A016780.P15728724507395548468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016780.P15728724507395548468

namespace A016780

/-- `record[a(n-2)+3]²²` -/
def P15728724507395548468.Spec : Prop :=
  ∀ n, (P15728724507395548468.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P4638350032518771120

`comp[a(n-2)+3]²²` with `a(0)=0, a(1)=2`
-/

namespace A016780.P4638350032518771120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) ^ 2

end

end A016780.P4638350032518771120

namespace A016780

/-- `comp[a(n-2)+3]²²` -/
def P4638350032518771120.Spec : Prop :=
  ∀ n, (P4638350032518771120.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P18012440108410165446

`(lcm(2, 2*n)+1+n)²²`
-/

namespace A016780.P18012440108410165446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n) + 1 + n) ^ 2) ^ 2

end

end A016780.P18012440108410165446

namespace A016780

/-- `(lcm(2, 2*n)+1+n)²²` -/
def P18012440108410165446.Spec : Prop :=
  ∀ n, (P18012440108410165446.a n : ℤ) = A016780 n

theorem P18012440108410165446.correct : P18012440108410165446.Spec := by
  intro n
  simp only [A016780, Nat.add_sub_cancel, A016780.P18012440108410165446.a, A016780.P5276202049473501293.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016780

/-! ## A016780.P11850484541548217950

`(sqrt(sqrt(a(n-1)))+3)²²` with `a(0)=1`
-/

namespace A016780.P11850484541548217950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((Real.sqrt (Real.sqrt (a (n - 1))) + 3) ^ 2) ^ 2

end

end A016780.P11850484541548217950

namespace A016780

/-- `(sqrt(sqrt(a(n-1)))+3)²²` -/
def P11850484541548217950.Spec : Prop :=
  ∀ n, P11850484541548217950.a n = (A016780 n : ℝ)

end A016780

/-! ## A016780.P5238371093299108771

`(C(n+1, n)+2*n)²²`
-/

namespace A016780.P5238371093299108771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n + 2 * n) ^ 2) ^ 2

end

end A016780.P5238371093299108771

namespace A016780

/-- `(C(n+1, n)+2*n)²²` -/
def P5238371093299108771.Spec : Prop :=
  ∀ n, (P5238371093299108771.a n : ℤ) = A016780 n

theorem P5238371093299108771.correct : P5238371093299108771.Spec := by
  intro n
  simp only [A016780, Nat.add_sub_cancel, A016780.P5238371093299108771.a, A016780.P5276202049473501293.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016780

/-! ## A016780.P3122631908328927167

`record[(dr(2*n+1)+n)²²]`
-/

namespace A016780.P3122631908328927167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) + n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016780.P3122631908328927167

namespace A016780

/-- `record[(dr(2*n+1)+n)²²]` -/
def P3122631908328927167.Spec : Prop :=
  ∀ n, (P3122631908328927167.a n : ℤ) = A016780 n

end A016780

/-! ## A016780.P5591624899745015599

`(C(n+1, n)+n+n)²²`
-/

namespace A016780.P5591624899745015599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n + n + n) ^ 2) ^ 2

end

end A016780.P5591624899745015599

namespace A016780

/-- `(C(n+1, n)+n+n)²²` -/
def P5591624899745015599.Spec : Prop :=
  ∀ n, (P5591624899745015599.a n : ℤ) = A016780 n

theorem P5591624899745015599.correct : P5591624899745015599.Spec := by
  intro n
  simp only [A016780, Nat.add_sub_cancel, A016780.P5591624899745015599.a, A016780.P5276202049473501293.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016780

/-!
# A016781: a(n) = (3*n+1)^5.

The programs for A016781, the canonical program `A016781.P2935993440358225274` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016781 has offset 0).

The definition of A016781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^5` (program `A016781.P2935993440358225274`, by `A016781.P2935993440358225274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016781.P2935993440358225274

`(3*n+1)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016781

/-- `(3*n+1)^5` -/
def P2935993440358225274.Spec : Prop :=
  ∀ n, (P2935993440358225274.a n : ℤ) = A016781 n

theorem P2935993440358225274.correct : P2935993440358225274.Spec := by
  intro n
  simp only [A016781]

end A016781

/-! ## A016781.P10998665699381439417

`A000584(A016777(n))`
-/

namespace A016781.P10998665699381439417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A016777 n).toNat

end

end A016781.P10998665699381439417

namespace A016781

/-- `A000584(A016777(n))` -/
def P10998665699381439417.Spec : Prop :=
  ∀ n, P10998665699381439417.a n = A016781 n

end A016781

/-! ## A016781.P9701516038954652063

`record[(gcd(3, 1-n)+n)^5]`
-/

namespace A016781.P9701516038954652063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - (n : ℤ)) + n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016781.P9701516038954652063

namespace A016781

/-- `record[(gcd(3, 1-n)+n)^5]` -/
def P9701516038954652063.Spec : Prop :=
  ∀ n, (P9701516038954652063.a n : ℤ) = A016781 n

end A016781

/-! ## A016781.P9849056207477022099

`record[(n+1)^(dr(n²)-4)]`
-/

namespace A016781.P9849056207477022099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ) - 4 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016781.P9849056207477022099

namespace A016781

/-- `record[(n+1)^(dr(n²)-4)]` -/
def P9849056207477022099.Spec : Prop :=
  ∀ n, P9849056207477022099.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P13045651186100078821

`sqrt(A016786(n))`
-/

namespace A016781.P13045651186100078821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016786 n : ℝ)

end

end A016781.P13045651186100078821

namespace A016781

/-- `sqrt(A016786(n))` -/
def P13045651186100078821.Spec : Prop :=
  ∀ n, P13045651186100078821.a n = (A016781 n : ℝ)

end A016781

/-! ## A016781.P6782178852348512359

`sqrt(A016778(n)^5)`
-/

namespace A016781.P6782178852348512359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016778 n ^ 5 : ℝ)

end

end A016781.P6782178852348512359

namespace A016781

/-- `sqrt(A016778(n)^5)` -/
def P6782178852348512359.Spec : Prop :=
  ∀ n, P6782178852348512359.a n = (A016781 n : ℝ)

end A016781

/-! ## A016781.P964761825920626653

`A016777(n)*A016780(n)`
-/

namespace A016781.P964761825920626653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016780 n

end

end A016781.P964761825920626653

namespace A016781

/-- `A016777(n)*A016780(n)` -/
def P964761825920626653.Spec : Prop :=
  ∀ n, P964761825920626653.a n = A016781 n

end A016781

/-! ## A016781.P14955604138359755128

`A016778(n)*A016779(n)`
-/

namespace A016781.P14955604138359755128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016779 n

end

end A016781.P14955604138359755128

namespace A016781

/-- `A016778(n)*A016779(n)` -/
def P14955604138359755128.Spec : Prop :=
  ∀ n, P14955604138359755128.a n = A016781 n

end A016781

/-! ## A016781.P7032871851792078109

`A016782(n)/A016777(n)`
-/

namespace A016781.P7032871851792078109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016782 n : ℚ) / (A016777 n : ℚ)

end

end A016781.P7032871851792078109

namespace A016781

/-- `A016782(n)/A016777(n)` -/
def P7032871851792078109.Spec : Prop :=
  ∀ n, P7032871851792078109.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P14334859616270040615

`A016783(n)/A016778(n)`
-/

namespace A016781.P14334859616270040615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n : ℚ) / (A016778 n : ℚ)

end

end A016781.P14334859616270040615

namespace A016781

/-- `A016783(n)/A016778(n)` -/
def P14334859616270040615.Spec : Prop :=
  ∀ n, P14334859616270040615.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P5217397683862455279

`A016784(n)/A016779(n)`
-/

namespace A016781.P5217397683862455279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 n : ℚ) / (A016779 n : ℚ)

end

end A016781.P5217397683862455279

namespace A016781

/-- `A016784(n)/A016779(n)` -/
def P5217397683862455279.Spec : Prop :=
  ∀ n, P5217397683862455279.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P16986563739272195386

`A016785(n)/A016780(n)`
-/

namespace A016781.P16986563739272195386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 n : ℚ) / (A016780 n : ℚ)

end

end A016781.P16986563739272195386

namespace A016781

/-- `A016785(n)/A016780(n)` -/
def P16986563739272195386.Spec : Prop :=
  ∀ n, P16986563739272195386.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P4941492811133707602

`A016787(n)/A016782(n)`
-/

namespace A016781.P4941492811133707602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016782 n : ℚ)

end

end A016781.P4941492811133707602

namespace A016781

/-- `A016787(n)/A016782(n)` -/
def P4941492811133707602.Spec : Prop :=
  ∀ n, P4941492811133707602.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P7979674428854312827

`A016788(n)/A016783(n)`
-/

namespace A016781.P7979674428854312827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 n : ℚ) / (A016783 n : ℚ)

end

end A016781.P7979674428854312827

namespace A016781

/-- `A016788(n)/A016783(n)` -/
def P7979674428854312827.Spec : Prop :=
  ∀ n, P7979674428854312827.a n = (A016781 n : ℚ)

end A016781

/-! ## A016781.P6143570346887401021

`gcd(A016782(n), A017201(n))`
-/

namespace A016781.P6143570346887401021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016782 n) (A017201 n)

end

end A016781.P6143570346887401021

namespace A016781

/-- `gcd(A016782(n), A017201(n))` -/
def P6143570346887401021.Spec : Prop :=
  ∀ n, (P6143570346887401021.a n : ℤ) = A016781 n

end A016781

/-! ## A016781.P7270243658846218469

`∪[A016925(n), A016961(n)]`
-/

namespace A016781.P7270243658846218469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016781.P7270243658846218469

namespace A016781

/-- `∪[A016925(n), A016961(n)]` -/
def P7270243658846218469.Spec : Prop :=
  ∀ n, (P7270243658846218469.a n : ℤ) = A016781 n

end A016781

/-! ## A016781.P11421018600004999262

`A016777(n)²*A016779(n)`
-/

namespace A016781.P11421018600004999262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 * A016779 n

end

end A016781.P11421018600004999262

namespace A016781

/-- `A016777(n)²*A016779(n)` -/
def P11421018600004999262.Spec : Prop :=
  ∀ n, P11421018600004999262.a n = A016781 n

end A016781

/-! ## A016781.P13097140206954343739

`A016778(n)²*A016777(n)`
-/

namespace A016781.P13097140206954343739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n ^ 2 * A016777 n

end

end A016781.P13097140206954343739

namespace A016781

/-- `A016778(n)²*A016777(n)` -/
def P13097140206954343739.Spec : Prop :=
  ∀ n, P13097140206954343739.a n = A016781 n

end A016781

/-! ## A016781.P16575118799838804764

`sqrt(A016778(n))*A016780(n)`
-/

namespace A016781.P16575118799838804764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016778 n : ℝ) * (A016780 n : ℝ)

end

end A016781.P16575118799838804764

namespace A016781

/-- `sqrt(A016778(n))*A016780(n)` -/
def P16575118799838804764.Spec : Prop :=
  ∀ n, P16575118799838804764.a n = (A016781 n : ℝ)

end A016781

/-! ## A016781.P2064526767060665836

`A016780(n)²/A016779(n)`
-/

namespace A016781.P2064526767060665836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016780 n ^ 2 : ℚ) / (A016779 n : ℚ)

end

end A016781.P2064526767060665836

namespace A016781

/-- `A016780(n)²/A016779(n)` -/
def P2064526767060665836.Spec : Prop :=
  ∀ n, P2064526767060665836.a n = (A016781 n : ℚ)

end A016781

/-!
# A016782: a(n) = (3*n+1)^6.

The programs for A016782, the canonical program `A016782.P12520626953037923259` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016782 has offset 0).

The definition of A016782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^6` (program `A016782.P12520626953037923259`, by `A016782.P12520626953037923259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016782.P12520626953037923259

`(3*n+1)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016782

/-- `(3*n+1)^6` -/
def P12520626953037923259.Spec : Prop :=
  ∀ n, (P12520626953037923259.a n : ℤ) = A016782 n

theorem P12520626953037923259.correct : P12520626953037923259.Spec := by
  intro n
  simp only [A016782]

end A016782

/-! ## A016782.P8184748290870878504

`A001014(A016777(n))`
-/

namespace A016782.P8184748290870878504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A016777 n).toNat

end

end A016782.P8184748290870878504

namespace A016782

/-- `A001014(A016777(n))` -/
def P8184748290870878504.Spec : Prop :=
  ∀ n, P8184748290870878504.a n = A016782 n

end A016782

/-! ## A016782.P14322864054196314410

`record[(-n)^dr(6*n)]`
-/

namespace A016782.P14322864054196314410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ SequenceMachineLib.digitalRoot (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016782.P14322864054196314410

namespace A016782

/-- `record[(-n)^dr(6*n)]` -/
def P14322864054196314410.Spec : Prop :=
  ∀ n, P14322864054196314410.a n = A016782 n

end A016782

/-! ## A016782.P12074611351746607352

`(lt[lcm(3, 1-n), n]^3)²`
-/

namespace A016782.P12074611351746607352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3) ^ 2

end

end A016782.P12074611351746607352

namespace A016782

/-- `(lt[lcm(3, 1-n), n]^3)²` -/
def P12074611351746607352.Spec : Prop :=
  ∀ n, (P12074611351746607352.a n : ℤ) = A016782 n

end A016782

/-! ## A016782.P4258431593526715913

`record[(-(n+1))^gcd(3, n)!]`
-/

namespace A016782.P4258431593526715913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ Nat.factorial (Nat.gcd 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016782.P4258431593526715913

namespace A016782

/-- `record[(-(n+1))^gcd(3, n)!]` -/
def P4258431593526715913.Spec : Prop :=
  ∀ n, P4258431593526715913.a n = A016782 n

end A016782

/-! ## A016782.P9506767278754074400

`A016779(n)²`
-/

namespace A016782.P9506767278754074400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n ^ 2

end

end A016782.P9506767278754074400

namespace A016782

/-- `A016779(n)²` -/
def P9506767278754074400.Spec : Prop :=
  ∀ n, P9506767278754074400.a n = A016782 n

end A016782

/-! ## A016782.P1606992572929131367

`sqrt(A016788(n))`
-/

namespace A016782.P1606992572929131367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016788 n : ℝ)

end

end A016782.P1606992572929131367

namespace A016782

/-- `sqrt(A016788(n))` -/
def P1606992572929131367.Spec : Prop :=
  ∀ n, P1606992572929131367.a n = (A016782 n : ℝ)

end A016782

/-! ## A016782.P14170773318621572341

`sqrt(A016780(n)^3)`
-/

namespace A016782.P14170773318621572341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016780 n ^ 3 : ℝ)

end

end A016782.P14170773318621572341

namespace A016782

/-- `sqrt(A016780(n)^3)` -/
def P14170773318621572341.Spec : Prop :=
  ∀ n, P14170773318621572341.a n = (A016782 n : ℝ)

end A016782

/-! ## A016782.P10982858901172666774

`(Δ[A000326(n)]^3)²`
-/

namespace A016782.P10982858901172666774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016782.P10982858901172666774

namespace A016782

/-- `(Δ[A000326(n)]^3)²` -/
def P10982858901172666774.Spec : Prop :=
  ∀ n, P10982858901172666774.a n = A016782 n

end A016782

/-! ## A016782.P2400166536989132111

`(Δ[A143689(n)]^3)²`
-/

namespace A016782.P2400166536989132111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016782.P2400166536989132111

namespace A016782

/-- `(Δ[A143689(n)]^3)²` -/
def P2400166536989132111.Spec : Prop :=
  ∀ n, P2400166536989132111.a n = A016782 n

end A016782

/-! ## A016782.P2255932921264717413

`A016777(n)*A016781(n)`
-/

namespace A016782.P2255932921264717413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016781 n

end

end A016782.P2255932921264717413

namespace A016782

/-- `A016777(n)*A016781(n)` -/
def P2255932921264717413.Spec : Prop :=
  ∀ n, P2255932921264717413.a n = A016782 n

end A016782

/-! ## A016782.P15429455620373587832

`A016778(n)*A016780(n)`
-/

namespace A016782.P15429455620373587832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016780 n

end

end A016782.P15429455620373587832

namespace A016782

/-- `A016778(n)*A016780(n)` -/
def P15429455620373587832.Spec : Prop :=
  ∀ n, P15429455620373587832.a n = A016782 n

end A016782

/-! ## A016782.P8830328387950110308

`A016783(n)/A016777(n)`
-/

namespace A016782.P8830328387950110308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n : ℚ) / (A016777 n : ℚ)

end

end A016782.P8830328387950110308

namespace A016782

/-- `A016783(n)/A016777(n)` -/
def P8830328387950110308.Spec : Prop :=
  ∀ n, P8830328387950110308.a n = (A016782 n : ℚ)

end A016782

/-! ## A016782.P13689151755815922913

`A016784(n)/A016778(n)`
-/

namespace A016782.P13689151755815922913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 n : ℚ) / (A016778 n : ℚ)

end

end A016782.P13689151755815922913

namespace A016782

/-- `A016784(n)/A016778(n)` -/
def P13689151755815922913.Spec : Prop :=
  ∀ n, P13689151755815922913.a n = (A016782 n : ℚ)

end A016782

/-! ## A016782.P15322930838917020456

`A016785(n)/A016779(n)`
-/

namespace A016782.P15322930838917020456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 n : ℚ) / (A016779 n : ℚ)

end

end A016782.P15322930838917020456

namespace A016782

/-- `A016785(n)/A016779(n)` -/
def P15322930838917020456.Spec : Prop :=
  ∀ n, P15322930838917020456.a n = (A016782 n : ℚ)

end A016782

/-! ## A016782.P14823433936046901445

`A016786(n)/A016780(n)`
-/

namespace A016782.P14823433936046901445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016786 n : ℚ) / (A016780 n : ℚ)

end

end A016782.P14823433936046901445

namespace A016782

/-- `A016786(n)/A016780(n)` -/
def P14823433936046901445.Spec : Prop :=
  ∀ n, P14823433936046901445.a n = (A016782 n : ℚ)

end A016782

/-! ## A016782.P10544210525050172198

`A016787(n)/A016781(n)`
-/

namespace A016782.P10544210525050172198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016781 n : ℚ)

end

end A016782.P10544210525050172198

namespace A016782

/-- `A016787(n)/A016781(n)` -/
def P10544210525050172198.Spec : Prop :=
  ∀ n, P10544210525050172198.a n = (A016782 n : ℚ)

end A016782

/-! ## A016782.P8906285160275618025

`gcd(A016783(n), A017202(n))`
-/

namespace A016782.P8906285160275618025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016783 n) (A017202 n)

end

end A016782.P8906285160275618025

namespace A016782

/-- `gcd(A016783(n), A017202(n))` -/
def P8906285160275618025.Spec : Prop :=
  ∀ n, (P8906285160275618025.a n : ℤ) = A016782 n

end A016782

/-! ## A016782.P17997375928983993502

`∪[A016926(n), A016962(n)]`
-/

namespace A016782.P17997375928983993502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016782.P17997375928983993502

namespace A016782

/-- `∪[A016926(n), A016962(n)]` -/
def P17997375928983993502.Spec : Prop :=
  ∀ n, (P17997375928983993502.a n : ℤ) = A016782 n

end A016782

/-! ## A016782.P7710086353731898919

`(A294315(n)+A033591(n))²`
-/

namespace A016782.P7710086353731898919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294315 n + A033591 n) ^ 2

end

end A016782.P7710086353731898919

namespace A016782

/-- `(A294315(n)+A033591(n))²` -/
def P7710086353731898919.Spec : Prop :=
  ∀ n, P7710086353731898919.a n = A016782 n

end A016782

/-!
# A016783: a(n) = (3*n+1)^7.

The programs for A016783, the canonical program `A016783.P4851290957634662023` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016783 has offset 0).

The definition of A016783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^7` (program `A016783.P4851290957634662023`, by `A016783.P4851290957634662023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016783.P4851290957634662023

`(3*n+1)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016783

/-- `(3*n+1)^7` -/
def P4851290957634662023.Spec : Prop :=
  ∀ n, (P4851290957634662023.a n : ℤ) = A016783 n

theorem P4851290957634662023.correct : P4851290957634662023.Spec := by
  intro n
  simp only [A016783]

end A016783

/-! ## A016783.P7990283411734038929

`A001015(A016777(n))`
-/

namespace A016783.P7990283411734038929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A016777 n).toNat

end

end A016783.P7990283411734038929

namespace A016783

/-- `A001015(A016777(n))` -/
def P7990283411734038929.Spec : Prop :=
  ∀ n, P7990283411734038929.a n = A016783 n

end A016783

/-! ## A016783.P11930406745934066732

`(3*n+1)*A016782(n)`
-/

namespace A016783.P11930406745934066732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A016782 n

end

end A016783.P11930406745934066732

namespace A016783

/-- `(3*n+1)*A016782(n)` -/
def P11930406745934066732.Spec : Prop :=
  ∀ n, P11930406745934066732.a n = A016783 n

end A016783

/-! ## A016783.P6815746760200135600

`A016784(n)/(3*n+1)`
-/

namespace A016783.P6815746760200135600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 n : ℚ) / (3 * n + 1 : ℚ)

end

end A016783.P6815746760200135600

namespace A016783

/-- `A016784(n)/(3*n+1)` -/
def P6815746760200135600.Spec : Prop :=
  ∀ n, P6815746760200135600.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P9916747944805937583

`A016780(n)²/(3*n+1)`
-/

namespace A016783.P9916747944805937583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016780 n ^ 2 : ℚ) / (3 * n + 1 : ℚ)

end

end A016783.P9916747944805937583

namespace A016783

/-- `A016780(n)²/(3*n+1)` -/
def P9916747944805937583.Spec : Prop :=
  ∀ n, P9916747944805937583.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P596811066901546045

`A016778(n)*A016781(n)`
-/

namespace A016783.P596811066901546045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016781 n

end

end A016783.P596811066901546045

namespace A016783

/-- `A016778(n)*A016781(n)` -/
def P596811066901546045.Spec : Prop :=
  ∀ n, P596811066901546045.a n = A016783 n

end A016783

/-! ## A016783.P383582741674039521

`A016779(n)*A016780(n)`
-/

namespace A016783.P383582741674039521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n * A016780 n

end

end A016783.P383582741674039521

namespace A016783

/-- `A016779(n)*A016780(n)` -/
def P383582741674039521.Spec : Prop :=
  ∀ n, P383582741674039521.a n = A016783 n

end A016783

/-! ## A016783.P17361713365613126997

`A016785(n)/A016778(n)`
-/

namespace A016783.P17361713365613126997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 n : ℚ) / (A016778 n : ℚ)

end

end A016783.P17361713365613126997

namespace A016783

/-- `A016785(n)/A016778(n)` -/
def P17361713365613126997.Spec : Prop :=
  ∀ n, P17361713365613126997.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P643819980741326360

`A016786(n)/A016779(n)`
-/

namespace A016783.P643819980741326360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016786 n : ℚ) / (A016779 n : ℚ)

end

end A016783.P643819980741326360

namespace A016783

/-- `A016786(n)/A016779(n)` -/
def P643819980741326360.Spec : Prop :=
  ∀ n, P643819980741326360.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P16986059895015618573

`A016787(n)/A016780(n)`
-/

namespace A016783.P16986059895015618573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016780 n : ℚ)

end

end A016783.P16986059895015618573

namespace A016783

/-- `A016787(n)/A016780(n)` -/
def P16986059895015618573.Spec : Prop :=
  ∀ n, P16986059895015618573.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P10149401071351305039

`A016788(n)/A016781(n)`
-/

namespace A016783.P10149401071351305039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 n : ℚ) / (A016781 n : ℚ)

end

end A016783.P10149401071351305039

namespace A016783

/-- `A016788(n)/A016781(n)` -/
def P10149401071351305039.Spec : Prop :=
  ∀ n, P10149401071351305039.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P18346158982942215579

`∪[A016927(n), A016963(n)]`
-/

namespace A016783.P18346158982942215579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016963 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016783.P18346158982942215579

namespace A016783

/-- `∪[A016927(n), A016963(n)]` -/
def P18346158982942215579.Spec : Prop :=
  ∀ n, (P18346158982942215579.a n : ℤ) = A016783 n

end A016783

/-! ## A016783.P14359934549633021000

`A016777(n)²*A016781(n)`
-/

namespace A016783.P14359934549633021000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 * A016781 n

end

end A016783.P14359934549633021000

namespace A016783

/-- `A016777(n)²*A016781(n)` -/
def P14359934549633021000.Spec : Prop :=
  ∀ n, P14359934549633021000.a n = A016783 n

end A016783

/-! ## A016783.P4031473949924664619

`A016778(n)²*A016779(n)`
-/

namespace A016783.P4031473949924664619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n ^ 2 * A016779 n

end

end A016783.P4031473949924664619

namespace A016783

/-- `A016778(n)²*A016779(n)` -/
def P4031473949924664619.Spec : Prop :=
  ∀ n, P4031473949924664619.a n = A016783 n

end A016783

/-! ## A016783.P7193939314035246723

`A016779(n)²*A016777(n)`
-/

namespace A016783.P7193939314035246723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n ^ 2 * A016777 n

end

end A016783.P7193939314035246723

namespace A016783

/-- `A016779(n)²*A016777(n)` -/
def P7193939314035246723.Spec : Prop :=
  ∀ n, P7193939314035246723.a n = A016783 n

end A016783

/-! ## A016783.P12167961191655427768

`A016781(n)²/A016779(n)`
-/

namespace A016783.P12167961191655427768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016781 n ^ 2 : ℚ) / (A016779 n : ℚ)

end

end A016783.P12167961191655427768

namespace A016783

/-- `A016781(n)²/A016779(n)` -/
def P12167961191655427768.Spec : Prop :=
  ∀ n, P12167961191655427768.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P6369831319991902276

`A016782(n)²/A016781(n)`
-/

namespace A016783.P6369831319991902276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016782 n ^ 2 : ℚ) / (A016781 n : ℚ)

end

end A016783.P6369831319991902276

namespace A016783

/-- `A016782(n)²/A016781(n)` -/
def P6369831319991902276.Spec : Prop :=
  ∀ n, P6369831319991902276.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P238879725324221130

`A016785(n)/A016777(n)²`
-/

namespace A016783.P238879725324221130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 n : ℚ) / (A016777 n ^ 2 : ℚ)

end

end A016783.P238879725324221130

namespace A016783

/-- `A016785(n)/A016777(n)²` -/
def P238879725324221130.Spec : Prop :=
  ∀ n, P238879725324221130.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P2245282927082939628

`A016787(n)/A016778(n)²`
-/

namespace A016783.P2245282927082939628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016778 n ^ 2 : ℚ)

end

end A016783.P2245282927082939628

namespace A016783

/-- `A016787(n)/A016778(n)²` -/
def P2245282927082939628.Spec : Prop :=
  ∀ n, P2245282927082939628.a n = (A016783 n : ℚ)

end A016783

/-! ## A016783.P13638767981202173330

`1/A016777(n)*A016784(n)`
-/

namespace A016783.P13638767981202173330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A016777 n : ℚ) * (A016784 n : ℚ)

end

end A016783.P13638767981202173330

namespace A016783

/-- `1/A016777(n)*A016784(n)` -/
def P13638767981202173330.Spec : Prop :=
  ∀ n, P13638767981202173330.a n = (A016783 n : ℚ)

end A016783

/-!
# A016784: a(n) = (3*n+1)^8.

The programs for A016784, the canonical program `A016784.P12660211655539094270` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016784 has offset 0).

The definition of A016784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^8` (program `A016784.P12660211655539094270`, by `A016784.P12660211655539094270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016784.P12660211655539094270

`(3*n+1)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016784

/-- `(3*n+1)^8` -/
def P12660211655539094270.Spec : Prop :=
  ∀ n, (P12660211655539094270.a n : ℤ) = A016784 n

theorem P12660211655539094270.correct : P12660211655539094270.Spec := by
  intro n
  simp only [A016784]

end A016784

/-! ## A016784.P16788139956101056183

`A001016(A016777(n))`
-/

namespace A016784.P16788139956101056183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A016777 n).toNat

end

end A016784.P16788139956101056183

namespace A016784

/-- `A001016(A016777(n))` -/
def P16788139956101056183.Spec : Prop :=
  ∀ n, P16788139956101056183.a n = A016784 n

end A016784

/-! ## A016784.P9535100746057804155

`(lt[lcm(3, 1-n), n]^4)²`
-/

namespace A016784.P9535100746057804155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 4) ^ 2

end

end A016784.P9535100746057804155

namespace A016784

/-- `(lt[lcm(3, 1-n), n]^4)²` -/
def P9535100746057804155.Spec : Prop :=
  ∀ n, (P9535100746057804155.a n : ℤ) = A016784 n

end A016784

/-! ## A016784.P12050360362241842620

`(or(1, 2*n)+n)²²²`
-/

namespace A016784.P12050360362241842620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 1 (2 * n) + n) ^ 2) ^ 2) ^ 2

end

end A016784.P12050360362241842620

namespace A016784

/-- `(or(1, 2*n)+n)²²²` -/
def P12050360362241842620.Spec : Prop :=
  ∀ n, (P12050360362241842620.a n : ℤ) = A016784 n

end A016784

/-! ## A016784.P1411954653069592678

`(xor(1, 2*n)+n)²²²`
-/

namespace A016784.P1411954653069592678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 1 (2 * n) + n) ^ 2) ^ 2) ^ 2

end

end A016784.P1411954653069592678

namespace A016784

/-- `(xor(1, 2*n)+n)²²²` -/
def P1411954653069592678.Spec : Prop :=
  ∀ n, (P1411954653069592678.a n : ℤ) = A016784 n

end A016784

/-! ## A016784.P7662529985368035145

`record[(-(n+2))^dr(n^3)]`
-/

namespace A016784.P7662529985368035145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016784.P7662529985368035145

namespace A016784

/-- `record[(-(n+2))^dr(n^3)]` -/
def P7662529985368035145.Spec : Prop :=
  ∀ n, P7662529985368035145.a n = A016784 n

end A016784

/-! ## A016784.P6005218873397422168

`(Δ[C(2*n, 2)]-n)²²²`
-/

namespace A016784.P6005218873397422168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016784.P6005218873397422168

namespace A016784

/-- `(Δ[C(2*n, 2)]-n)²²²` -/
def P6005218873397422168.Spec : Prop :=
  ∀ n, P6005218873397422168.a n = A016784 n

end A016784

/-! ## A016784.P10241073757878459998

`(lcm(2, 2*n)+n+1)²²²`
-/

namespace A016784.P10241073757878459998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 2 (2 * n) + (n + 1)) ^ 2) ^ 2) ^ 2

end

end A016784.P10241073757878459998

namespace A016784

/-- `(lcm(2, 2*n)+n+1)²²²` -/
def P10241073757878459998.Spec : Prop :=
  ∀ n, (P10241073757878459998.a n : ℤ) = A016784 n

theorem P10241073757878459998.correct : P10241073757878459998.Spec := by
  intro n
  simp only [A016784, Nat.add_sub_cancel, A016784.P10241073757878459998.a, A016784.P12660211655539094270.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016784

/-! ## A016784.P11248514342416074402

`(C(n+1, n)+2*n)²²²`
-/

namespace A016784.P11248514342416074402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (n + 1) n + 2 * n) ^ 2) ^ 2) ^ 2

end

end A016784.P11248514342416074402

namespace A016784

/-- `(C(n+1, n)+2*n)²²²` -/
def P11248514342416074402.Spec : Prop :=
  ∀ n, (P11248514342416074402.a n : ℤ) = A016784 n

theorem P11248514342416074402.correct : P11248514342416074402.Spec := by
  intro n
  simp only [A016784, Nat.add_sub_cancel, A016784.P11248514342416074402.a, A016784.P12660211655539094270.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016784

/-! ## A016784.P14200619974683735736

`record[(dr(2*n+1)+n)²²²]`
-/

namespace A016784.P14200619974683735736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) + n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016784.P14200619974683735736

namespace A016784

/-- `record[(dr(2*n+1)+n)²²²]` -/
def P14200619974683735736.Spec : Prop :=
  ∀ n, (P14200619974683735736.a n : ℤ) = A016784 n

end A016784

/-! ## A016784.P15084055401459542407

`(Δ[lcm(n, n+1)]+n-1)²²²`
-/

namespace A016784.P15084055401459542407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2) ^ 2

end

end A016784.P15084055401459542407

namespace A016784

/-- `(Δ[lcm(n, n+1)]+n-1)²²²` -/
def P15084055401459542407.Spec : Prop :=
  ∀ n, P15084055401459542407.a n = A016784 n

end A016784

/-! ## A016784.P6173437002924468031

`(gcd(n, 2*n)+2*n+1)²²²`
-/

namespace A016784.P6173437002924468031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd n (2 * n) + (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A016784.P6173437002924468031

namespace A016784

/-- `(gcd(n, 2*n)+2*n+1)²²²` -/
def P6173437002924468031.Spec : Prop :=
  ∀ n, (P6173437002924468031.a n : ℤ) = A016784 n

theorem P6173437002924468031.correct : P6173437002924468031.Spec := by
  intro n
  simp only [A016784, Nat.add_sub_cancel, A016784.P6173437002924468031.a, A016784.P12660211655539094270.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016784

/-! ## A016784.P13864587790353534826

`(and(2*n+1, 2*n)+n+1)²²²`
-/

namespace A016784.P13864587790353534826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.land (2 * n + 1) (2 * n) + (n + 1)) ^ 2) ^ 2) ^ 2

end

end A016784.P13864587790353534826

namespace A016784

/-- `(and(2*n+1, 2*n)+n+1)²²²` -/
def P13864587790353534826.Spec : Prop :=
  ∀ n, (P13864587790353534826.a n : ℤ) = A016784 n

end A016784

/-! ## A016784.P2405008820153342947

`A016780(n)²`
-/

namespace A016784.P2405008820153342947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n ^ 2

end

end A016784.P2405008820153342947

namespace A016784

/-- `A016780(n)²` -/
def P2405008820153342947.Spec : Prop :=
  ∀ n, P2405008820153342947.a n = A016784 n

end A016784

/-! ## A016784.P11335967490063802661

`A016778(n)²²`
-/

namespace A016784.P11335967490063802661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 n ^ 2) ^ 2

end

end A016784.P11335967490063802661

namespace A016784

/-- `A016778(n)²²` -/
def P11335967490063802661.Spec : Prop :=
  ∀ n, P11335967490063802661.a n = A016784 n

end A016784

/-! ## A016784.P3750747226863332555

`Δ[A000326(n)]²²²`
-/

namespace A016784.P3750747226863332555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016784.P3750747226863332555

namespace A016784

/-- `Δ[A000326(n)]²²²` -/
def P3750747226863332555.Spec : Prop :=
  ∀ n, P3750747226863332555.a n = A016784 n

end A016784

/-! ## A016784.P1591588138413166934

`Δ[A143689(n)]²²²`
-/

namespace A016784.P1591588138413166934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016784.P1591588138413166934

namespace A016784

/-- `Δ[A143689(n)]²²²` -/
def P1591588138413166934.Spec : Prop :=
  ∀ n, P1591588138413166934.a n = A016784 n

end A016784

/-! ## A016784.P6310262213502943562

`(A008585(n)+1)²²²`
-/

namespace A016784.P6310262213502943562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008585 n + 1) ^ 2) ^ 2) ^ 2

end

end A016784.P6310262213502943562

namespace A016784

/-- `(A008585(n)+1)²²²` -/
def P6310262213502943562.Spec : Prop :=
  ∀ n, P6310262213502943562.a n = A016784 n

end A016784

/-! ## A016784.P3674615151532040821

`(1-A016789(n))²²²`
-/

namespace A016784.P3674615151532040821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016789 n) ^ 2) ^ 2) ^ 2

end

end A016784.P3674615151532040821

namespace A016784

/-- `(1-A016789(n))²²²` -/
def P3674615151532040821.Spec : Prop :=
  ∀ n, P3674615151532040821.a n = A016784 n

end A016784

/-! ## A016784.P14415782623495200545

`(A016933(n)/2)²²²`
-/

namespace A016784.P14415782623495200545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A016933 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016784.P14415782623495200545

namespace A016784

/-- `(A016933(n)/2)²²²` -/
def P14415782623495200545.Spec : Prop :=
  ∀ n, P14415782623495200545.a n = (A016784 n : ℚ)

end A016784

/-!
# A016785: a(n) = (3*n + 1)^9.

The programs for A016785, the canonical program `A016785.P12257324286826069844` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016785 has offset 0).

The definition of A016785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^9` (program `A016785.P12257324286826069844`, by `A016785.P12257324286826069844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016785.P12257324286826069844

`(3*n+1)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016785

/-- `(3*n+1)^9` -/
def P12257324286826069844.Spec : Prop :=
  ∀ n, (P12257324286826069844.a n : ℤ) = A016785 n

theorem P12257324286826069844.correct : P12257324286826069844.Spec := by
  intro n
  simp only [A016785]

end A016785

/-! ## A016785.P15164129195839796917

`sqrt(A016782(n)^3)`
-/

namespace A016785.P15164129195839796917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016782 n ^ 3 : ℝ)

end

end A016785.P15164129195839796917

namespace A016785

/-- `sqrt(A016782(n)^3)` -/
def P15164129195839796917.Spec : Prop :=
  ∀ n, P15164129195839796917.a n = (A016785 n : ℝ)

end A016785

/-! ## A016785.P5295899453910079472

`(3*n+1)*A016784(n)`
-/

namespace A016785.P5295899453910079472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A016784 n

end

end A016785.P5295899453910079472

namespace A016785

/-- `(3*n+1)*A016784(n)` -/
def P5295899453910079472.Spec : Prop :=
  ∀ n, P5295899453910079472.a n = A016785 n

end A016785

/-! ## A016785.P7008971313532067175

`A016786(n)/(3*n+1)`
-/

namespace A016785.P7008971313532067175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016786 n : ℚ) / (3 * n + 1 : ℚ)

end

end A016785.P7008971313532067175

namespace A016785

/-- `A016786(n)/(3*n+1)` -/
def P7008971313532067175.Spec : Prop :=
  ∀ n, P7008971313532067175.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P17222815030429839921

`A016778(n)*A016783(n)`
-/

namespace A016785.P17222815030429839921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016783 n

end

end A016785.P17222815030429839921

namespace A016785

/-- `A016778(n)*A016783(n)` -/
def P17222815030429839921.Spec : Prop :=
  ∀ n, P17222815030429839921.a n = A016785 n

end A016785

/-! ## A016785.P12411007486245924893

`A016779(n)*A016782(n)`
-/

namespace A016785.P12411007486245924893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n * A016782 n

end

end A016785.P12411007486245924893

namespace A016785

/-- `A016779(n)*A016782(n)` -/
def P12411007486245924893.Spec : Prop :=
  ∀ n, P12411007486245924893.a n = A016785 n

end A016785

/-! ## A016785.P5532269270099572589

`A016780(n)*A016781(n)`
-/

namespace A016785.P5532269270099572589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n * A016781 n

end

end A016785.P5532269270099572589

namespace A016785

/-- `A016780(n)*A016781(n)` -/
def P5532269270099572589.Spec : Prop :=
  ∀ n, P5532269270099572589.a n = A016785 n

end A016785

/-! ## A016785.P14670552221321327803

`A016787(n)/A016778(n)`
-/

namespace A016785.P14670552221321327803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016778 n : ℚ)

end

end A016785.P14670552221321327803

namespace A016785

/-- `A016787(n)/A016778(n)` -/
def P14670552221321327803.Spec : Prop :=
  ∀ n, P14670552221321327803.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P2072123702070024741

`A016788(n)/A016779(n)`
-/

namespace A016785.P2072123702070024741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 n : ℚ) / (A016779 n : ℚ)

end

end A016785.P2072123702070024741

namespace A016785

/-- `A016788(n)/A016779(n)` -/
def P2072123702070024741.Spec : Prop :=
  ∀ n, P2072123702070024741.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P16814653090289386658

`A016777(n)²*A016783(n)`
-/

namespace A016785.P16814653090289386658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 * A016783 n

end

end A016785.P16814653090289386658

namespace A016785

/-- `A016777(n)²*A016783(n)` -/
def P16814653090289386658.Spec : Prop :=
  ∀ n, P16814653090289386658.a n = A016785 n

end A016785

/-! ## A016785.P15358680276414010408

`A016778(n)²*A016781(n)`
-/

namespace A016785.P15358680276414010408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n ^ 2 * A016781 n

end

end A016785.P15358680276414010408

namespace A016785

/-- `A016778(n)²*A016781(n)` -/
def P15358680276414010408.Spec : Prop :=
  ∀ n, P15358680276414010408.a n = A016785 n

end A016785

/-! ## A016785.P8794252064789843206

`A016780(n)²*A016777(n)`
-/

namespace A016785.P8794252064789843206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n ^ 2 * A016777 n

end

end A016785.P8794252064789843206

namespace A016785

/-- `A016780(n)²*A016777(n)` -/
def P8794252064789843206.Spec : Prop :=
  ∀ n, P8794252064789843206.a n = A016785 n

end A016785

/-! ## A016785.P16629290309888250537

`A016781(n)²/A016777(n)`
-/

namespace A016785.P16629290309888250537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016781 n ^ 2 : ℚ) / (A016777 n : ℚ)

end

end A016785.P16629290309888250537

namespace A016785

/-- `A016781(n)²/A016777(n)` -/
def P16629290309888250537.Spec : Prop :=
  ∀ n, P16629290309888250537.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P6624972099441155428

`A016783(n)²/A016781(n)`
-/

namespace A016785.P6624972099441155428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n ^ 2 : ℚ) / (A016781 n : ℚ)

end

end A016785.P6624972099441155428

namespace A016785

/-- `A016783(n)²/A016781(n)` -/
def P6624972099441155428.Spec : Prop :=
  ∀ n, P6624972099441155428.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P4448284452308865153

`A016787(n)/A016777(n)²`
-/

namespace A016785.P4448284452308865153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016777 n ^ 2 : ℚ)

end

end A016785.P4448284452308865153

namespace A016785

/-- `A016787(n)/A016777(n)²` -/
def P4448284452308865153.Spec : Prop :=
  ∀ n, P4448284452308865153.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P2672460547663327124

`A016778(n)²²*A016777(n)`
-/

namespace A016785.P2672460547663327124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 n ^ 2) ^ 2 * A016777 n

end

end A016785.P2672460547663327124

namespace A016785

/-- `A016778(n)²²*A016777(n)` -/
def P2672460547663327124.Spec : Prop :=
  ∀ n, P2672460547663327124.a n = A016785 n

end A016785

/-! ## A016785.P16020262518549896355

`A016780(n)²*sqrt(A016778(n))`
-/

namespace A016785.P16020262518549896355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016780 n ^ 2 : ℝ) * Real.sqrt (A016778 n : ℝ)

end

end A016785.P16020262518549896355

namespace A016785

/-- `A016780(n)²*sqrt(A016778(n))` -/
def P16020262518549896355.Spec : Prop :=
  ∀ n, P16020262518549896355.a n = (A016785 n : ℝ)

end A016785

/-! ## A016785.P4684556768389195100

`2*A016781(n)²/A016933(n)`
-/

namespace A016785.P4684556768389195100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016781 n ^ 2 : ℚ) / (A016933 n : ℚ))

end

end A016785.P4684556768389195100

namespace A016785

/-- `2*A016781(n)²/A016933(n)` -/
def P4684556768389195100.Spec : Prop :=
  ∀ n, P4684556768389195100.a n = (A016785 n : ℚ)

end A016785

/-! ## A016785.P6855165746949431032

`(A005408(n)+n)*A016780(n)²`
-/

namespace A016785.P6855165746949431032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + (n : ℤ)) * A016780 n ^ 2

end

end A016785.P6855165746949431032

namespace A016785

/-- `(A005408(n)+n)*A016780(n)²` -/
def P6855165746949431032.Spec : Prop :=
  ∀ n, P6855165746949431032.a n = A016785 n

end A016785

/-! ## A016785.P17111555312204916091

`A016777(n)*A016778(n)*A016782(n)`
-/

namespace A016785.P17111555312204916091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016778 n * A016782 n

end

end A016785.P17111555312204916091

namespace A016785

/-- `A016777(n)*A016778(n)*A016782(n)` -/
def P17111555312204916091.Spec : Prop :=
  ∀ n, P17111555312204916091.a n = A016785 n

end A016785

/-!
# A016786: a(n) = (3*n+1)^10.

The programs for A016786, the canonical program `A016786.P17124437694900183996` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016786 has offset 0).

The definition of A016786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^10` (program `A016786.P17124437694900183996`, by `A016786.P17124437694900183996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016786.P17124437694900183996

`(3*n+1)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016786

/-- `(3*n+1)^10` -/
def P17124437694900183996.Spec : Prop :=
  ∀ n, (P17124437694900183996.a n : ℤ) = A016786 n

theorem P17124437694900183996.correct : P17124437694900183996.Spec := by
  intro n
  simp only [A016786]

end A016786

/-! ## A016786.P1271325780393584284

`A008454(A016777(n))`
-/

namespace A016786.P1271325780393584284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 n).toNat

end

end A016786.P1271325780393584284

namespace A016786

/-- `A008454(A016777(n))` -/
def P1271325780393584284.Spec : Prop :=
  ∀ n, P1271325780393584284.a n = A016786 n

end A016786

/-! ## A016786.P1896887616133500860

`(lt[lcm(3, 1-n), n]^5)²`
-/

namespace A016786.P1896887616133500860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 5) ^ 2

end

end A016786.P1896887616133500860

namespace A016786

/-- `(lt[lcm(3, 1-n), n]^5)²` -/
def P1896887616133500860.Spec : Prop :=
  ∀ n, (P1896887616133500860.a n : ℤ) = A016786 n

end A016786

/-! ## A016786.P10907817438383756146

`A016781(n)²`
-/

namespace A016786.P10907817438383756146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n ^ 2

end

end A016786.P10907817438383756146

namespace A016786

/-- `A016781(n)²` -/
def P10907817438383756146.Spec : Prop :=
  ∀ n, P10907817438383756146.a n = A016786 n

end A016786

/-! ## A016786.P14449001094968289919

`sqrt(A016780(n)^5)`
-/

namespace A016786.P14449001094968289919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016780 n ^ 5 : ℝ)

end

end A016786.P14449001094968289919

namespace A016786

/-- `sqrt(A016780(n)^5)` -/
def P14449001094968289919.Spec : Prop :=
  ∀ n, P14449001094968289919.a n = (A016786 n : ℝ)

end A016786

/-! ## A016786.P7952701801862495308

`A016777(n)*A016785(n)`
-/

namespace A016786.P7952701801862495308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016785 n

end

end A016786.P7952701801862495308

namespace A016786

/-- `A016777(n)*A016785(n)` -/
def P7952701801862495308.Spec : Prop :=
  ∀ n, P7952701801862495308.a n = A016786 n

end A016786

/-! ## A016786.P6709745147206929930

`A016778(n)*A016784(n)`
-/

namespace A016786.P6709745147206929930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016784 n

end

end A016786.P6709745147206929930

namespace A016786

/-- `A016778(n)*A016784(n)` -/
def P6709745147206929930.Spec : Prop :=
  ∀ n, P6709745147206929930.a n = A016786 n

end A016786

/-! ## A016786.P4744640138584392419

`A016779(n)*A016783(n)`
-/

namespace A016786.P4744640138584392419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n * A016783 n

end

end A016786.P4744640138584392419

namespace A016786

/-- `A016779(n)*A016783(n)` -/
def P4744640138584392419.Spec : Prop :=
  ∀ n, P4744640138584392419.a n = A016786 n

end A016786

/-! ## A016786.P18087934760070787417

`A016780(n)*A016782(n)`
-/

namespace A016786.P18087934760070787417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n * A016782 n

end

end A016786.P18087934760070787417

namespace A016786

/-- `A016780(n)*A016782(n)` -/
def P18087934760070787417.Spec : Prop :=
  ∀ n, P18087934760070787417.a n = A016786 n

end A016786

/-! ## A016786.P3301862753520028328

`A016787(n)/A016777(n)`
-/

namespace A016786.P3301862753520028328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 n : ℚ) / (A016777 n : ℚ)

end

end A016786.P3301862753520028328

namespace A016786

/-- `A016787(n)/A016777(n)` -/
def P3301862753520028328.Spec : Prop :=
  ∀ n, P3301862753520028328.a n = (A016786 n : ℚ)

end A016786

/-! ## A016786.P5792334283218559559

`A016788(n)/A016778(n)`
-/

namespace A016786.P5792334283218559559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 n : ℚ) / (A016778 n : ℚ)

end

end A016786.P5792334283218559559

namespace A016786

/-- `A016788(n)/A016778(n)` -/
def P5792334283218559559.Spec : Prop :=
  ∀ n, P5792334283218559559.a n = (A016786 n : ℚ)

end A016786

/-! ## A016786.P1375591819663561164

`(A016777(n)*A016780(n))²`
-/

namespace A016786.P1375591819663561164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n * A016780 n) ^ 2

end

end A016786.P1375591819663561164

namespace A016786

/-- `(A016777(n)*A016780(n))²` -/
def P1375591819663561164.Spec : Prop :=
  ∀ n, P1375591819663561164.a n = A016786 n

end A016786

/-! ## A016786.P10153053323557843927

`A016777(n)²*A016784(n)`
-/

namespace A016786.P10153053323557843927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 * A016784 n

end

end A016786.P10153053323557843927

namespace A016786

/-- `A016777(n)²*A016784(n)` -/
def P10153053323557843927.Spec : Prop :=
  ∀ n, P10153053323557843927.a n = A016786 n

end A016786

/-! ## A016786.P18261148231358284691

`(A016778(n)*A016779(n))²`
-/

namespace A016786.P18261148231358284691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 n * A016779 n) ^ 2

end

end A016786.P18261148231358284691

namespace A016786

/-- `(A016778(n)*A016779(n))²` -/
def P18261148231358284691.Spec : Prop :=
  ∀ n, P18261148231358284691.a n = A016786 n

end A016786

/-! ## A016786.P15990226642227895839

`A016778(n)²*A016782(n)`
-/

namespace A016786.P15990226642227895839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n ^ 2 * A016782 n

end

end A016786.P15990226642227895839

namespace A016786

/-- `A016778(n)²*A016782(n)` -/
def P15990226642227895839.Spec : Prop :=
  ∀ n, P15990226642227895839.a n = A016786 n

end A016786

/-! ## A016786.P14519973845944613570

`A016779(n)²*A016780(n)`
-/

namespace A016786.P14519973845944613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n ^ 2 * A016780 n

end

end A016786.P14519973845944613570

namespace A016786

/-- `A016779(n)²*A016780(n)` -/
def P14519973845944613570.Spec : Prop :=
  ∀ n, P14519973845944613570.a n = A016786 n

end A016786

/-! ## A016786.P5298613304923019115

`A016780(n)²*A016778(n)`
-/

namespace A016786.P5298613304923019115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n ^ 2 * A016778 n

end

end A016786.P5298613304923019115

namespace A016786

/-- `A016780(n)²*A016778(n)` -/
def P5298613304923019115.Spec : Prop :=
  ∀ n, P5298613304923019115.a n = A016786 n

end A016786

/-! ## A016786.P3359705311167270546

`(A016782(n)/A016777(n))²`
-/

namespace A016786.P3359705311167270546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016782 n : ℚ) / (A016777 n : ℚ)) ^ 2

end

end A016786.P3359705311167270546

namespace A016786

/-- `(A016782(n)/A016777(n))²` -/
def P3359705311167270546.Spec : Prop :=
  ∀ n, P3359705311167270546.a n = (A016786 n : ℚ)

end A016786

/-! ## A016786.P10355398380138944897

`(A016783(n)/A016778(n))²`
-/

namespace A016786.P10355398380138944897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016783 n : ℚ) / (A016778 n : ℚ)) ^ 2

end

end A016786.P10355398380138944897

namespace A016786

/-- `(A016783(n)/A016778(n))²` -/
def P10355398380138944897.Spec : Prop :=
  ∀ n, P10355398380138944897.a n = (A016786 n : ℚ)

end A016786

/-! ## A016786.P2497519928683165437

`A016783(n)²/A016780(n)`
-/

namespace A016786.P2497519928683165437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n ^ 2 : ℚ) / (A016780 n : ℚ)

end

end A016786.P2497519928683165437

namespace A016786

/-- `A016783(n)²/A016780(n)` -/
def P2497519928683165437.Spec : Prop :=
  ∀ n, P2497519928683165437.a n = (A016786 n : ℚ)

end A016786

/-!
# A016787: a(n) = (3*n + 1)^11.

The programs for A016787, the canonical program `A016787.P1597524615219779150` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016787 has offset 0).

The definition of A016787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^11` (program `A016787.P1597524615219779150`, by `A016787.P1597524615219779150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016787.P1597524615219779150

`(3*n+1)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016787

/-- `(3*n+1)^11` -/
def P1597524615219779150.Spec : Prop :=
  ∀ n, (P1597524615219779150.a n : ℤ) = A016787 n

theorem P1597524615219779150.correct : P1597524615219779150.Spec := by
  intro n
  simp only [A016787]

end A016787

/-! ## A016787.P4276755666957763317

`(3*n+1)*A016786(n)`
-/

namespace A016787.P4276755666957763317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A016786 n

end

end A016787.P4276755666957763317

namespace A016787

/-- `(3*n+1)*A016786(n)` -/
def P4276755666957763317.Spec : Prop :=
  ∀ n, P4276755666957763317.a n = A016787 n

end A016787

/-! ## A016787.P14127969622220498108

`A016778(n)*A016785(n)`
-/

namespace A016787.P14127969622220498108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016785 n

end

end A016787.P14127969622220498108

namespace A016787

/-- `A016778(n)*A016785(n)` -/
def P14127969622220498108.Spec : Prop :=
  ∀ n, P14127969622220498108.a n = A016787 n

end A016787

/-! ## A016787.P9991174866033892651

`A016779(n)*A016784(n)`
-/

namespace A016787.P9991174866033892651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n * A016784 n

end

end A016787.P9991174866033892651

namespace A016787

/-- `A016779(n)*A016784(n)` -/
def P9991174866033892651.Spec : Prop :=
  ∀ n, P9991174866033892651.a n = A016787 n

end A016787

/-! ## A016787.P11725183395646287469

`A016780(n)*A016783(n)`
-/

namespace A016787.P11725183395646287469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n * A016783 n

end

end A016787.P11725183395646287469

namespace A016787

/-- `A016780(n)*A016783(n)` -/
def P11725183395646287469.Spec : Prop :=
  ∀ n, P11725183395646287469.a n = A016787 n

end A016787

/-! ## A016787.P10079993608188210651

`A016781(n)*A016782(n)`
-/

namespace A016787.P10079993608188210651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n * A016782 n

end

end A016787.P10079993608188210651

namespace A016787

/-- `A016781(n)*A016782(n)` -/
def P10079993608188210651.Spec : Prop :=
  ∀ n, P10079993608188210651.a n = A016787 n

end A016787

/-! ## A016787.P12512510485692495076

`A016788(n)/A016777(n)`
-/

namespace A016787.P12512510485692495076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 n : ℚ) / (A016777 n : ℚ)

end

end A016787.P12512510485692495076

namespace A016787

/-- `A016788(n)/A016777(n)` -/
def P12512510485692495076.Spec : Prop :=
  ∀ n, P12512510485692495076.a n = (A016787 n : ℚ)

end A016787

/-! ## A016787.P3811803968633300364

`A016777(n)²*A016785(n)`
-/

namespace A016787.P3811803968633300364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 * A016785 n

end

end A016787.P3811803968633300364

namespace A016787

/-- `A016777(n)²*A016785(n)` -/
def P3811803968633300364.Spec : Prop :=
  ∀ n, P3811803968633300364.a n = A016787 n

end A016787

/-! ## A016787.P18232106039259105495

`A016778(n)²*A016783(n)`
-/

namespace A016787.P18232106039259105495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n ^ 2 * A016783 n

end

end A016787.P18232106039259105495

namespace A016787

/-- `A016778(n)²*A016783(n)` -/
def P18232106039259105495.Spec : Prop :=
  ∀ n, P18232106039259105495.a n = A016787 n

end A016787

/-! ## A016787.P17779747311658842811

`A016779(n)²*A016781(n)`
-/

namespace A016787.P17779747311658842811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n ^ 2 * A016781 n

end

end A016787.P17779747311658842811

namespace A016787

/-- `A016779(n)²*A016781(n)` -/
def P17779747311658842811.Spec : Prop :=
  ∀ n, P17779747311658842811.a n = A016787 n

end A016787

/-! ## A016787.P2747705336976483143

`A016780(n)²*A016779(n)`
-/

namespace A016787.P2747705336976483143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n ^ 2 * A016779 n

end

end A016787.P2747705336976483143

namespace A016787

/-- `A016780(n)²*A016779(n)` -/
def P2747705336976483143.Spec : Prop :=
  ∀ n, P2747705336976483143.a n = A016787 n

end A016787

/-! ## A016787.P4680482785046515047

`A016781(n)²*A016777(n)`
-/

namespace A016787.P4680482785046515047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n ^ 2 * A016777 n

end

end A016787.P4680482785046515047

namespace A016787

/-- `A016781(n)²*A016777(n)` -/
def P4680482785046515047.Spec : Prop :=
  ∀ n, P4680482785046515047.a n = A016787 n

end A016787

/-! ## A016787.P2471850372144951234

`A016782(n)²/A016777(n)`
-/

namespace A016787.P2471850372144951234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016782 n ^ 2 : ℚ) / (A016777 n : ℚ)

end

end A016787.P2471850372144951234

namespace A016787

/-- `A016782(n)²/A016777(n)` -/
def P2471850372144951234.Spec : Prop :=
  ∀ n, P2471850372144951234.a n = (A016787 n : ℚ)

end A016787

/-! ## A016787.P2000376262839044114

`A016783(n)²/A016779(n)`
-/

namespace A016787.P2000376262839044114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n ^ 2 : ℚ) / (A016779 n : ℚ)

end

end A016787.P2000376262839044114

namespace A016787

/-- `A016783(n)²/A016779(n)` -/
def P2000376262839044114.Spec : Prop :=
  ∀ n, P2000376262839044114.a n = (A016787 n : ℚ)

end A016787

/-! ## A016787.P17393005899070569864

`A016777(n)²²*A016783(n)`
-/

namespace A016787.P17393005899070569864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n ^ 2) ^ 2 * A016783 n

end

end A016787.P17393005899070569864

namespace A016787

/-- `A016777(n)²²*A016783(n)` -/
def P17393005899070569864.Spec : Prop :=
  ∀ n, P17393005899070569864.a n = A016787 n

end A016787

/-! ## A016787.P2232611014395069229

`A016778(n)²²*A016779(n)`
-/

namespace A016787.P2232611014395069229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 n ^ 2) ^ 2 * A016779 n

end

end A016787.P2232611014395069229

namespace A016787

/-- `A016778(n)²²*A016779(n)` -/
def P2232611014395069229.Spec : Prop :=
  ∀ n, P2232611014395069229.a n = A016787 n

end A016787

/-! ## A016787.P15230648089769852532

`A016779(n)²²/A016777(n)`
-/

namespace A016787.P15230648089769852532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016779 n ^ 2) ^ 2 : ℚ) / (A016777 n : ℚ)

end

end A016787.P15230648089769852532

namespace A016787

/-- `A016779(n)²²/A016777(n)` -/
def P15230648089769852532.Spec : Prop :=
  ∀ n, P15230648089769852532.a n = (A016787 n : ℚ)

end A016787

/-! ## A016787.P5438388993153769474

`A016780(n)²²/A016781(n)`
-/

namespace A016787.P5438388993153769474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016780 n ^ 2) ^ 2 : ℚ) / (A016781 n : ℚ)

end

end A016787.P5438388993153769474

namespace A016787

/-- `A016780(n)²²/A016781(n)` -/
def P5438388993153769474.Spec : Prop :=
  ∀ n, P5438388993153769474.a n = (A016787 n : ℚ)

end A016787

/-! ## A016787.P17661892006378100052

`A016781(n)²*sqrt(A016778(n))`
-/

namespace A016787.P17661892006378100052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016781 n ^ 2 : ℝ) * Real.sqrt (A016778 n : ℝ)

end

end A016787.P17661892006378100052

namespace A016787

/-- `A016781(n)²*sqrt(A016778(n))` -/
def P17661892006378100052.Spec : Prop :=
  ∀ n, P17661892006378100052.a n = (A016787 n : ℝ)

end A016787

/-! ## A016787.P8134914999189769285

`A016782(n)²/sqrt(A016778(n))`
-/

namespace A016787.P8134914999189769285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016782 n ^ 2 : ℝ) / Real.sqrt (A016778 n : ℝ)

end

end A016787.P8134914999189769285

namespace A016787

/-- `A016782(n)²/sqrt(A016778(n))` -/
def P8134914999189769285.Spec : Prop :=
  ∀ n, P8134914999189769285.a n = (A016787 n : ℝ)

end A016787

/-!
# A016788: a(n) = (3*n+1)^12.

The programs for A016788, the canonical program `A016788.P538685675464873772` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016788 has offset 0).

The definition of A016788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)^12` (program `A016788.P538685675464873772`, by `A016788.P538685675464873772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016788.P538685675464873772

`(3*n+1)^12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016788

/-- `(3*n+1)^12` -/
def P538685675464873772.Spec : Prop :=
  ∀ n, (P538685675464873772.a n : ℤ) = A016788 n

theorem P538685675464873772.correct : P538685675464873772.Spec := by
  intro n
  simp only [A016788]

end A016788

/-! ## A016788.P5937409890394967588

`A008456(A016777(n))`
-/

namespace A016788.P5937409890394967588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 n).toNat

end

end A016788.P5937409890394967588

namespace A016788

/-- `A008456(A016777(n))` -/
def P5937409890394967588.Spec : Prop :=
  ∀ n, P5937409890394967588.a n = A016788 n

end A016788

/-! ## A016788.P14487611793420021247

`((n+2-record[xor(3, n)])^6)²`
-/

namespace A016788.P14487611793420021247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)) ^ 6) ^ 2

end

end A016788.P14487611793420021247

namespace A016788

/-- `((n+2-record[xor(3, n)])^6)²` -/
def P14487611793420021247.Spec : Prop :=
  ∀ n, P14487611793420021247.a n = A016788 n

end A016788

/-! ## A016788.P6827545565406045392

`A016782(n)²`
-/

namespace A016788.P6827545565406045392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 n ^ 2

end

end A016788.P6827545565406045392

namespace A016788

/-- `A016782(n)²` -/
def P6827545565406045392.Spec : Prop :=
  ∀ n, P6827545565406045392.a n = A016788 n

end A016788

/-! ## A016788.P1631327944152098756

`A016779(n)²²`
-/

namespace A016788.P1631327944152098756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 n ^ 2) ^ 2

end

end A016788.P1631327944152098756

namespace A016788

/-- `A016779(n)²²` -/
def P1631327944152098756.Spec : Prop :=
  ∀ n, P1631327944152098756.a n = A016788 n

end A016788

/-! ## A016788.P15391325236880195627

`A016777(n)*A016787(n)`
-/

namespace A016788.P15391325236880195627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A016787 n

end

end A016788.P15391325236880195627

namespace A016788

/-- `A016777(n)*A016787(n)` -/
def P15391325236880195627.Spec : Prop :=
  ∀ n, P15391325236880195627.a n = A016788 n

end A016788

/-! ## A016788.P5847468056009355031

`A016778(n)*A016786(n)`
-/

namespace A016788.P5847468056009355031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n * A016786 n

end

end A016788.P5847468056009355031

namespace A016788

/-- `A016778(n)*A016786(n)` -/
def P5847468056009355031.Spec : Prop :=
  ∀ n, P5847468056009355031.a n = A016788 n

end A016788

/-! ## A016788.P8522914904159548007

`A016779(n)*A016785(n)`
-/

namespace A016788.P8522914904159548007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n * A016785 n

end

end A016788.P8522914904159548007

namespace A016788

/-- `A016779(n)*A016785(n)` -/
def P8522914904159548007.Spec : Prop :=
  ∀ n, P8522914904159548007.a n = A016788 n

end A016788

/-! ## A016788.P134038875021428174

`A016780(n)*A016784(n)`
-/

namespace A016788.P134038875021428174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n * A016784 n

end

end A016788.P134038875021428174

namespace A016788

/-- `A016780(n)*A016784(n)` -/
def P134038875021428174.Spec : Prop :=
  ∀ n, P134038875021428174.a n = A016788 n

end A016788

/-! ## A016788.P1561940487543592884

`A016781(n)*A016783(n)`
-/

namespace A016788.P1561940487543592884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n * A016783 n

end

end A016788.P1561940487543592884

namespace A016788

/-- `A016781(n)*A016783(n)` -/
def P1561940487543592884.Spec : Prop :=
  ∀ n, P1561940487543592884.a n = A016788 n

end A016788

/-! ## A016788.P14448749669839858532

`(A016777(n)*A016781(n))²`
-/

namespace A016788.P14448749669839858532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n * A016781 n) ^ 2

end

end A016788.P14448749669839858532

namespace A016788

/-- `(A016777(n)*A016781(n))²` -/
def P14448749669839858532.Spec : Prop :=
  ∀ n, P14448749669839858532.a n = A016788 n

end A016788

/-! ## A016788.P14437817828919794246

`A016777(n)²*A016786(n)`
-/

namespace A016788.P14437817828919794246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 * A016786 n

end

end A016788.P14437817828919794246

namespace A016788

/-- `A016777(n)²*A016786(n)` -/
def P14437817828919794246.Spec : Prop :=
  ∀ n, P14437817828919794246.a n = A016788 n

end A016788

/-! ## A016788.P13110915300891143379

`(A016778(n)*A016780(n))²`
-/

namespace A016788.P13110915300891143379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 n * A016780 n) ^ 2

end

end A016788.P13110915300891143379

namespace A016788

/-- `(A016778(n)*A016780(n))²` -/
def P13110915300891143379.Spec : Prop :=
  ∀ n, P13110915300891143379.a n = A016788 n

end A016788

/-! ## A016788.P7526263423955089110

`A016778(n)²*A016784(n)`
-/

namespace A016788.P7526263423955089110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n ^ 2 * A016784 n

end

end A016788.P7526263423955089110

namespace A016788

/-- `A016778(n)²*A016784(n)` -/
def P7526263423955089110.Spec : Prop :=
  ∀ n, P7526263423955089110.a n = A016788 n

end A016788

/-! ## A016788.P17485281763102316629

`A016781(n)²*A016778(n)`
-/

namespace A016788.P17485281763102316629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n ^ 2 * A016778 n

end

end A016788.P17485281763102316629

namespace A016788

/-- `A016781(n)²*A016778(n)` -/
def P17485281763102316629.Spec : Prop :=
  ∀ n, P17485281763102316629.a n = A016788 n

end A016788

/-! ## A016788.P2662671271655016517

`sqrt(A016778(n))*A016787(n)`
-/

namespace A016788.P2662671271655016517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016778 n : ℝ) * (A016787 n : ℝ)

end

end A016788.P2662671271655016517

namespace A016788

/-- `sqrt(A016778(n))*A016787(n)` -/
def P2662671271655016517.Spec : Prop :=
  ∀ n, P2662671271655016517.a n = (A016788 n : ℝ)

end A016788

/-! ## A016788.P4466664995995429605

`(A016783(n)/A016777(n))²`
-/

namespace A016788.P4466664995995429605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016783 n : ℚ) / (A016777 n : ℚ)) ^ 2

end

end A016788.P4466664995995429605

namespace A016788

/-- `(A016783(n)/A016777(n))²` -/
def P4466664995995429605.Spec : Prop :=
  ∀ n, P4466664995995429605.a n = (A016788 n : ℚ)

end A016788

/-! ## A016788.P4666196719471495580

`A016783(n)²/A016778(n)`
-/

namespace A016788.P4666196719471495580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 n ^ 2 : ℚ) / (A016778 n : ℚ)

end

end A016788.P4666196719471495580

namespace A016788

/-- `A016783(n)²/A016778(n)` -/
def P4666196719471495580.Spec : Prop :=
  ∀ n, P4666196719471495580.a n = (A016788 n : ℚ)

end A016788

/-! ## A016788.P1140133696420725541

`(A016786(n)/A016780(n))²`
-/

namespace A016788.P1140133696420725541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016786 n : ℚ) / (A016780 n : ℚ)) ^ 2

end

end A016788.P1140133696420725541

namespace A016788

/-- `(A016786(n)/A016780(n))²` -/
def P1140133696420725541.Spec : Prop :=
  ∀ n, P1140133696420725541.a n = (A016788 n : ℚ)

end A016788

/-! ## A016788.P12217576333489179781

`(A016787(n)/A016781(n))²`
-/

namespace A016788.P12217576333489179781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016787 n : ℚ) / (A016781 n : ℚ)) ^ 2

end

end A016788.P12217576333489179781

namespace A016788

/-- `(A016787(n)/A016781(n))²` -/
def P12217576333489179781.Spec : Prop :=
  ∀ n, P12217576333489179781.a n = (A016788 n : ℚ)

end A016788

/-!
# A016789: a(n) = 3*n + 2.

The programs for A016789, the canonical program `A016789.P8277564872725303677` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016789 has offset 0).

The definition of A016789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n+2` (program `A016789.P8277564872725303677`, by `A016789.P8277564872725303677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016789.P8277564872725303677

`3*n+2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016789

/-- `3*n+2` -/
def P8277564872725303677.Spec : Prop :=
  ∀ n, (P8277564872725303677.a n : ℤ) = A016789 n

theorem P8277564872725303677.correct : P8277564872725303677.Spec := by
  intro n
  simp only [A016789]

end A016789

/-!
# A016790: a(n) = (3n+2)^2.

The programs for A016790, there is no canonical definition to state claims against.
-/

/-! ## A016790.P16450817162659855964

`(3*(n-1)+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016790.P16450817162659855964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * ((n : ℤ) - 1) + 2) ^ 2

end

end A016790.P16450817162659855964

/-! ## A016790.P3779763741586425045

`a(n-1)+3*(6*(n-1)+1)` with `a(0)=1`
-/

namespace A016790.P3779763741586425045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * (6 * ((n : ℤ) - 1) + 1)

end

end A016790.P3779763741586425045

/-! ## A016790.P12958921002524233069

`record[n^(n%3)]`
-/

namespace A016790.P12958921002524233069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P12958921002524233069

/-! ## A016790.P17865679407247053049

`∑[a(n-1)+18]` with `a(0)=1, a(1)=3`
-/

namespace A016790.P17865679407247053049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016790.P17865679407247053049

/-! ## A016790.P14544188585440493205

`record[(gcd(3, n+1)+n)²]`
-/

namespace A016790.P14544188585440493205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n + 1) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P14544188585440493205

/-! ## A016790.P12207266756993547586

`record[C(n, a(n-1))²]` with `a(0)=1`
-/

namespace A016790.P12207266756993547586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose n (f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P12207266756993547586

/-! ## A016790.P7089908869516149912

`16-∑[a(n-1)-18]` with `a(0)=15`
-/

namespace A016790.P7089908869516149912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016790.P7089908869516149912

/-! ## A016790.P400441209765664123

`record[(dr(n-1+n)+n)²]`
-/

namespace A016790.P400441209765664123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((n : ℤ) - 1 + (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P400441209765664123

/-! ## A016790.P2145289091684632694

`record[(n-1)^(gcd(n, n+3)-1)]`
-/

namespace A016790.P2145289091684632694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ ((Nat.gcd n (n + 3) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P2145289091684632694

/-! ## A016790.P9019318901215609520

`record[(n-1)^(n+2-lcm(3, n))]`
-/

namespace A016790.P9019318901215609520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ ((n + 2 : ℤ) - (Nat.lcm 3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P9019318901215609520

/-! ## A016790.P1396175230278915169

`record[((n+1)/3^dr(2*n))²]`
-/

namespace A016790.P1396175230278915169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016790.P1396175230278915169

/-! ## A016790.P14390019853351188746

`(2*n+n-1)^(2%(n+2))`
-/

namespace A016790.P14390019853351188746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + ((n : ℤ) - 1)) ^ (2 % (n + 2))

end

end A016790.P14390019853351188746

/-! ## A016790.P1219360926651791821

`(2*n+n-1)^gcd(2, 2*n)`
-/

namespace A016790.P1219360926651791821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + ((n : ℤ) - 1)) ^ Nat.gcd 2 (2 * n)

end

end A016790.P1219360926651791821

/-! ## A016790.P1676774988163817043

`(2*n+n-1)^ceil(atan(n+2))`
-/

namespace A016790.P1676774988163817043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + ((n : ℤ) - 1) : ℚ) ^ (⌈Real.arctan (n + 2 : ℝ)⌉ : ℤ)

end

end A016790.P1676774988163817043

/-! ## A016790.P10059306980015890296

`(9-a(n-1))²/a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A016790.P10059306980015890296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (9 - a (n - 1)) ^ 2 / a (n - 2)

end

end A016790.P10059306980015890296

/-! ## A016790.P11252231934816808780

`(lcm(2, 2*n)+n-1)*(2*n+n-1)`
-/

namespace A016790.P11252231934816808780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n) : ℤ) + ((n : ℤ) - 1)) * ((2 * n : ℤ) + ((n : ℤ) - 1))

end

end A016790.P11252231934816808780

/-! ## A016790.P1441510351893686376

`(and(2*n+1, 2*n)+n-1)*(2*n+n-1)`
-/

namespace A016790.P1441510351893686376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 1)) * ((2 * n : ℤ) + ((n : ℤ) - 1))

end

end A016790.P1441510351893686376

/-! ## A016790.P937145955881323507

`∑[A298035(n)]`
-/

namespace A016790.P937145955881323507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016790.P937145955881323507

/-! ## A016790.P13144834013497875171

`n²+A033567(n)`
-/

namespace A016790.P13144834013497875171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A033567 n

end

end A016790.P13144834013497875171

/-!
# A016791: a(n) = (3*n + 2)^3.

The programs for A016791, the canonical program `A016791.P13208806347124039064` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016791 has offset 0).

The definition of A016791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^3` (program `A016791.P13208806347124039064`, by `A016791.P13208806347124039064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016791.P13208806347124039064

`(3*n+2)^3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016791

/-- `(3*n+2)^3` -/
def P13208806347124039064.Spec : Prop :=
  ∀ n, (P13208806347124039064.a n : ℤ) = A016791 n

theorem P13208806347124039064.correct : P13208806347124039064.Spec := by
  intro n
  simp only [A016791]

end A016791

/-! ## A016791.P16958810710056372056

`record[(n+2)^gcd(3, n)]`
-/

namespace A016791.P16958810710056372056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016791.P16958810710056372056

namespace A016791

/-- `record[(n+2)^gcd(3, n)]` -/
def P16958810710056372056.Spec : Prop :=
  ∀ n, (P16958810710056372056.a n : ℤ) = A016791 n

end A016791

/-! ## A016791.P14270029810883063660

`record[(n+2)^(n+3-lcm(3, n))]`
-/

namespace A016791.P14270029810883063660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n + 3 : ℤ) - (Nat.lcm 3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016791.P14270029810883063660

namespace A016791

/-- `record[(n+2)^(n+3-lcm(3, n))]` -/
def P14270029810883063660.Spec : Prop :=
  ∀ n, P14270029810883063660.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P12619286489841258166

`sqrt(A016794(n))`
-/

namespace A016791.P12619286489841258166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016794 n : ℝ)

end

end A016791.P12619286489841258166

namespace A016791

/-- `sqrt(A016794(n))` -/
def P12619286489841258166.Spec : Prop :=
  ∀ n, P12619286489841258166.a n = (A016791 n : ℝ)

end A016791

/-! ## A016791.P8553390865900858712

`A016959(n)/8`
-/

namespace A016791.P8553390865900858712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016959 n : ℚ) / 8

end

end A016791.P8553390865900858712

namespace A016791

/-- `A016959(n)/8` -/
def P8553390865900858712.Spec : Prop :=
  ∀ n, P8553390865900858712.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P1386299865332766282

`sqrt(sqrt(A016800(n)))`
-/

namespace A016791.P1386299865332766282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016800 n : ℝ))

end

end A016791.P1386299865332766282

namespace A016791

/-- `sqrt(sqrt(A016800(n)))` -/
def P1386299865332766282.Spec : Prop :=
  ∀ n, P1386299865332766282.a n = (A016791 n : ℝ)

end A016791

/-! ## A016791.P12562229121748776709

`sqrt(A016962(n))/8`
-/

namespace A016791.P12562229121748776709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016962 n : ℝ) / 8

end

end A016791.P12562229121748776709

namespace A016791

/-- `sqrt(A016962(n))/8` -/
def P12562229121748776709.Spec : Prop :=
  ∀ n, P12562229121748776709.a n = (A016791 n : ℝ)

end A016791

/-! ## A016791.P9334090852614894739

`3*A287335(n+1)+2`
-/

namespace A016791.P9334090852614894739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A287335 (n + 1) + 2

end

end A016791.P9334090852614894739

namespace A016791

/-- `3*A287335(n+1)+2` -/
def P9334090852614894739.Spec : Prop :=
  ∀ n, P9334090852614894739.a n = A016791 n

end A016791

/-! ## A016791.P5992817540718182414

`A016792(n)/A016789(n)`
-/

namespace A016791.P5992817540718182414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016792 n : ℚ) / (A016789 n : ℚ)

end

end A016791.P5992817540718182414

namespace A016791

/-- `A016792(n)/A016789(n)` -/
def P5992817540718182414.Spec : Prop :=
  ∀ n, P5992817540718182414.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P6765098158499757465

`A016795(n)/A016792(n)`
-/

namespace A016791.P6765098158499757465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016795 n : ℚ) / (A016792 n : ℚ)

end

end A016791.P6765098158499757465

namespace A016791

/-- `A016795(n)/A016792(n)` -/
def P6765098158499757465.Spec : Prop :=
  ∀ n, P6765098158499757465.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P14018531673929743081

`A016796(n)/A016793(n)`
-/

namespace A016791.P14018531673929743081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / (A016793 n : ℚ)

end

end A016791.P14018531673929743081

namespace A016791

/-- `A016796(n)/A016793(n)` -/
def P14018531673929743081.Spec : Prop :=
  ∀ n, P14018531673929743081.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P6376660040655348259

`A016797(n)/A016794(n)`
-/

namespace A016791.P6376660040655348259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 n : ℚ) / (A016794 n : ℚ)

end

end A016791.P6376660040655348259

namespace A016791

/-- `A016797(n)/A016794(n)` -/
def P6376660040655348259.Spec : Prop :=
  ∀ n, P6376660040655348259.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P12781657171061539059

`A016798(n)/A016795(n)`
-/

namespace A016791.P12781657171061539059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016798 n : ℚ) / (A016795 n : ℚ)

end

end A016791.P12781657171061539059

namespace A016791

/-- `A016798(n)/A016795(n)` -/
def P12781657171061539059.Spec : Prop :=
  ∀ n, P12781657171061539059.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P17544675210243561008

`A016799(n)/A016796(n)`
-/

namespace A016791.P17544675210243561008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (A016796 n : ℚ)

end

end A016791.P17544675210243561008

namespace A016791

/-- `A016799(n)/A016796(n)` -/
def P17544675210243561008.Spec : Prop :=
  ∀ n, P17544675210243561008.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P2981504702944818290

`A016800(n)/A016797(n)`
-/

namespace A016791.P2981504702944818290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016800 n : ℚ) / (A016797 n : ℚ)

end

end A016791.P2981504702944818290

namespace A016791

/-- `A016800(n)/A016797(n)` -/
def P2981504702944818290.Spec : Prop :=
  ∀ n, P2981504702944818290.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P15808789190993823221

`A016962(n)/A017619(n)`
-/

namespace A016791.P15808789190993823221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016962 n : ℚ) / (A017619 n : ℚ)

end

end A016791.P15808789190993823221

namespace A016791

/-- `A016962(n)/A017619(n)` -/
def P15808789190993823221.Spec : Prop :=
  ∀ n, P15808789190993823221.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P12763985684217831501

`gcd(A016792(n), A017235(n))`
-/

namespace A016791.P12763985684217831501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016792 n) (A017235 n)

end

end A016791.P12763985684217831501

namespace A016791

/-- `gcd(A016792(n), A017235(n))` -/
def P12763985684217831501.Spec : Prop :=
  ∀ n, (P12763985684217831501.a n : ℤ) = A016791 n

end A016791

/-! ## A016791.P15525362631661017490

`∪[A016935(n), A016971(n)]`
-/

namespace A016791.P15525362631661017490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016791.P15525362631661017490

namespace A016791

/-- `∪[A016935(n), A016971(n)]` -/
def P15525362631661017490.Spec : Prop :=
  ∀ n, (P15525362631661017490.a n : ℤ) = A016791 n

end A016791

/-! ## A016791.P267825012202959389

`A016792(n)²/A016793(n)`
-/

namespace A016791.P267825012202959389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016792 n ^ 2 : ℚ) / (A016793 n : ℚ)

end

end A016791.P267825012202959389

namespace A016791

/-- `A016792(n)²/A016793(n)` -/
def P267825012202959389.Spec : Prop :=
  ∀ n, P267825012202959389.a n = (A016791 n : ℚ)

end A016791

/-! ## A016791.P14210044612184898323

`A016793(n)/A016789(n)²`
-/

namespace A016791.P14210044612184898323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016793 n : ℚ) / (A016789 n ^ 2 : ℚ)

end

end A016791.P14210044612184898323

namespace A016791

/-- `A016793(n)/A016789(n)²` -/
def P14210044612184898323.Spec : Prop :=
  ∀ n, P14210044612184898323.a n = (A016791 n : ℚ)

end A016791

/-!
# A016792: a(n) = (3*n+2)^4.

The programs for A016792, the canonical program `A016792.P16426647478479500699` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016792 has offset 0).

The definition of A016792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^4` (program `A016792.P16426647478479500699`, by `A016792.P16426647478479500699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016792.P16426647478479500699

`(3*n+2)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016792

/-- `(3*n+2)^4` -/
def P16426647478479500699.Spec : Prop :=
  ∀ n, (P16426647478479500699.a n : ℤ) = A016792 n

theorem P16426647478479500699.correct : P16426647478479500699.Spec := by
  intro n
  simp only [A016792]

end A016792

/-! ## A016792.P17456915716997020102

`comp[n-gcd(3, n)]²²`
-/

namespace A016792.P17456915716997020102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2) ^ 2

end

end A016792.P17456915716997020102

namespace A016792

/-- `comp[n-gcd(3, n)]²²` -/
def P17456915716997020102.Spec : Prop :=
  ∀ n, (P17456915716997020102.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P16639300773981863334

`(lcm(2, Δ[n²])-n)²²`
-/

namespace A016792.P16639300773981863334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A016792.P16639300773981863334

namespace A016792

/-- `(lcm(2, Δ[n²])-n)²²` -/
def P16639300773981863334.Spec : Prop :=
  ∀ n, P16639300773981863334.a n = A016792 n

end A016792

/-! ## A016792.P15252142425371373873

`∑[a(n-1)+18]²` with `a(0)=4, a(1)=21`
-/

namespace A016792.P15252142425371373873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 21] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A016792.P15252142425371373873

namespace A016792

/-- `∑[a(n-1)+18]²` -/
def P15252142425371373873.Spec : Prop :=
  ∀ n, (P15252142425371373873.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P5824628027192501531

`(xor(2*n, -2)-n)²²`
-/

namespace A016792.P5824628027192501531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.xor (2 * n : ℤ) (-2) - (n : ℤ)) ^ 2) ^ 2

end

end A016792.P5824628027192501531

namespace A016792

/-- `(xor(2*n, -2)-n)²²` -/
def P5824628027192501531.Spec : Prop :=
  ∀ n, P5824628027192501531.a n = A016792 n

end A016792

/-! ## A016792.P3593006998421461837

`(∑[n+2]-C(n, 2))²²`
-/

namespace A016792.P3593006998421461837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)) ^ 2) ^ 2

end

end A016792.P3593006998421461837

namespace A016792

/-- `(∑[n+2]-C(n, 2))²²` -/
def P3593006998421461837.Spec : Prop :=
  ∀ n, P3593006998421461837.a n = A016792 n

end A016792

/-! ## A016792.P6877146022676871851

`(record[xor(1, n)]+n+1)²²`
-/

namespace A016792.P6877146022676871851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1)) ^ 2) ^ 2

end

end A016792.P6877146022676871851

namespace A016792

/-- `(record[xor(1, n)]+n+1)²²` -/
def P6877146022676871851.Spec : Prop :=
  ∀ n, (P6877146022676871851.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P12646021611589642100

`(n-record[2*xor(1, n)])²²`
-/

namespace A016792.P12646021611589642100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)) ^ 2) ^ 2

end

end A016792.P12646021611589642100

namespace A016792

/-- `(n-record[2*xor(1, n)])²²` -/
def P12646021611589642100.Spec : Prop :=
  ∀ n, P12646021611589642100.a n = A016792 n

end A016792

/-! ## A016792.P15255705773975596386

`(Δ[lcm(n, n+1)]+n)²²`
-/

namespace A016792.P15255705773975596386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A016792.P15255705773975596386

namespace A016792

/-- `(Δ[lcm(n, n+1)]+n)²²` -/
def P15255705773975596386.Spec : Prop :=
  ∀ n, P15255705773975596386.a n = A016792 n

end A016792

/-! ## A016792.P9453463441960436704

`record[a(n-2)+3]²²` with `a(0)=2, a(1)=0`
-/

namespace A016792.P9453463441960436704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016792.P9453463441960436704

namespace A016792

/-- `record[a(n-2)+3]²²` -/
def P9453463441960436704.Spec : Prop :=
  ∀ n, (P9453463441960436704.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P13946279090176104937

`comp[a(n-2)+3]²²` with `a(0)=0, a(1)=1`
-/

namespace A016792.P13946279090176104937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) ^ 2

end

end A016792.P13946279090176104937

namespace A016792

/-- `comp[a(n-2)+3]²²` -/
def P13946279090176104937.Spec : Prop :=
  ∀ n, (P13946279090176104937.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P9290405820028358125

`(or(1, 2*n)+1+n)²²`
-/

namespace A016792.P9290405820028358125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) + 1 + n) ^ 2) ^ 2

end

end A016792.P9290405820028358125

namespace A016792

/-- `(or(1, 2*n)+1+n)²²` -/
def P9290405820028358125.Spec : Prop :=
  ∀ n, (P9290405820028358125.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P11087177221148011095

`record[(n+2)^((n+2)%3)²]`
-/

namespace A016792.P11087177221148011095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ ((n + 2) % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016792.P11087177221148011095

namespace A016792

/-- `record[(n+2)^((n+2)%3)²]` -/
def P11087177221148011095.Spec : Prop :=
  ∀ n, (P11087177221148011095.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P7724952225474299924

`eq[n-2, lcm(3, 2-n)]²²`
-/

namespace A016792.P7724952225474299924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (2 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n ^ 2) ^ 2

end

end A016792.P7724952225474299924

namespace A016792

/-- `eq[n-2, lcm(3, 2-n)]²²` -/
def P7724952225474299924.Spec : Prop :=
  ∀ n, (P7724952225474299924.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P12326802198070380133

`(2*C(n+1, n)+n)²²`
-/

namespace A016792.P12326802198070380133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.choose (n + 1) n + n) ^ 2) ^ 2

end

end A016792.P12326802198070380133

namespace A016792

/-- `(2*C(n+1, n)+n)²²` -/
def P12326802198070380133.Spec : Prop :=
  ∀ n, (P12326802198070380133.a n : ℤ) = A016792 n

theorem P12326802198070380133.correct : P12326802198070380133.Spec := by
  intro n
  simp only [A016792, Nat.add_sub_cancel, A016792.P12326802198070380133.a, A016792.P16426647478479500699.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016792

/-! ## A016792.P9155549825669820464

`Δ[C(n+1, 2)+n²]²²`
-/

namespace A016792.P9155549825669820464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016792.P9155549825669820464

namespace A016792

/-- `Δ[C(n+1, 2)+n²]²²` -/
def P9155549825669820464.Spec : Prop :=
  ∀ n, P9155549825669820464.a n = A016792 n

end A016792

/-! ## A016792.P14374013531551200195

`record[(dr(2*n)+n+2)²²]`
-/

namespace A016792.P14374013531551200195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 * n : ℤ) + (n + 2)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016792.P14374013531551200195

namespace A016792

/-- `record[(dr(2*n)+n+2)²²]` -/
def P14374013531551200195.Spec : Prop :=
  ∀ n, (P14374013531551200195.a n : ℤ) = A016792 n

end A016792

/-! ## A016792.P13294046509234992802

`xor(2*n+1+n, -1)²²`
-/

namespace A016792.P13294046509234992802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n + 1 + n : ℤ) (-1) ^ 2) ^ 2

end

end A016792.P13294046509234992802

namespace A016792

/-- `xor(2*n+1+n, -1)²²` -/
def P13294046509234992802.Spec : Prop :=
  ∀ n, P13294046509234992802.a n = A016792 n

end A016792

/-!
# A016793: a(n) = (3*n + 2)^5.

The programs for A016793, the canonical program `A016793.P7571111589597192072` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016793 has offset 0).

The definition of A016793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^5` (program `A016793.P7571111589597192072`, by `A016793.P7571111589597192072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016793.P7571111589597192072

`(3*n+2)^5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016793

/-- `(3*n+2)^5` -/
def P7571111589597192072.Spec : Prop :=
  ∀ n, (P7571111589597192072.a n : ℤ) = A016793 n

theorem P7571111589597192072.correct : P7571111589597192072.Spec := by
  intro n
  simp only [A016793]

end A016793

/-! ## A016793.P1515979107108550024

`record[(gcd(3, n)+n-1)^5]`
-/

namespace A016793.P1515979107108550024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 3 n : ℤ) + ((n : ℤ) - 1)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016793.P1515979107108550024

namespace A016793

/-- `record[(gcd(3, n)+n-1)^5]` -/
def P1515979107108550024.Spec : Prop :=
  ∀ n, P1515979107108550024.a n = A016793 n

end A016793

/-! ## A016793.P7570867111143028532

`sqrt(A016798(n))`
-/

namespace A016793.P7570867111143028532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016798 n : ℝ)

end

end A016793.P7570867111143028532

namespace A016793

/-- `sqrt(A016798(n))` -/
def P7570867111143028532.Spec : Prop :=
  ∀ n, P7570867111143028532.a n = (A016793 n : ℝ)

end A016793

/-! ## A016793.P8885822190852870943

`record[A014682(n+1)^5]`
-/

namespace A016793.P8885822190852870943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016793.P8885822190852870943

namespace A016793

/-- `record[A014682(n+1)^5]` -/
def P8885822190852870943.Spec : Prop :=
  ∀ n, P8885822190852870943.a n = A016793 n

end A016793

/-! ## A016793.P8523707178930826215

`(3*n+2)*A016792(n)`
-/

namespace A016793.P8523707178930826215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A016792 n

end

end A016793.P8523707178930826215

namespace A016793

/-- `(3*n+2)*A016792(n)` -/
def P8523707178930826215.Spec : Prop :=
  ∀ n, P8523707178930826215.a n = A016793 n

end A016793

/-! ## A016793.P14393350711544009081

`sqrt((A016777(n)+1)²^5)`
-/

namespace A016793.P14393350711544009081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((A016777 n + 1) ^ 2) ^ 5 : ℝ)

end

end A016793.P14393350711544009081

namespace A016793

/-- `sqrt((A016777(n)+1)²^5)` -/
def P14393350711544009081.Spec : Prop :=
  ∀ n, P14393350711544009081.a n = (A016793 n : ℝ)

end A016793

/-! ## A016793.P4039879671980055369

`(3*n+2)²*A016791(n)`
-/

namespace A016793.P4039879671980055369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2) ^ 2 : ℤ) * A016791 n

end

end A016793.P4039879671980055369

namespace A016793

/-- `(3*n+2)²*A016791(n)` -/
def P4039879671980055369.Spec : Prop :=
  ∀ n, P4039879671980055369.a n = A016793 n

end A016793

/-! ## A016793.P4946746965824975591

`A016794(n)/A016789(n)`
-/

namespace A016793.P4946746965824975591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n : ℚ) / (A016789 n : ℚ)

end

end A016793.P4946746965824975591

namespace A016793

/-- `A016794(n)/A016789(n)` -/
def P4946746965824975591.Spec : Prop :=
  ∀ n, P4946746965824975591.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P14194122850883397682

`A016796(n)/A016791(n)`
-/

namespace A016793.P14194122850883397682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / (A016791 n : ℚ)

end

end A016793.P14194122850883397682

namespace A016793

/-- `A016796(n)/A016791(n)` -/
def P14194122850883397682.Spec : Prop :=
  ∀ n, P14194122850883397682.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P7124825047423484411

`A016797(n)/A016792(n)`
-/

namespace A016793.P7124825047423484411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 n : ℚ) / (A016792 n : ℚ)

end

end A016793.P7124825047423484411

namespace A016793

/-- `A016797(n)/A016792(n)` -/
def P7124825047423484411.Spec : Prop :=
  ∀ n, P7124825047423484411.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P4962676467086875759

`A016799(n)/A016794(n)`
-/

namespace A016793.P4962676467086875759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (A016794 n : ℚ)

end

end A016793.P4962676467086875759

namespace A016793

/-- `A016799(n)/A016794(n)` -/
def P4962676467086875759.Spec : Prop :=
  ∀ n, P4962676467086875759.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P9027406210537015359

`A016800(n)/A016795(n)`
-/

namespace A016793.P9027406210537015359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016800 n : ℚ) / (A016795 n : ℚ)

end

end A016793.P9027406210537015359

namespace A016793

/-- `A016800(n)/A016795(n)` -/
def P9027406210537015359.Spec : Prop :=
  ∀ n, P9027406210537015359.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P12266111460140794060

`gcd(A016794(n), A017237(n))`
-/

namespace A016793.P12266111460140794060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016794 n) (A017237 n)

end

end A016793.P12266111460140794060

namespace A016793

/-- `gcd(A016794(n), A017237(n))` -/
def P12266111460140794060.Spec : Prop :=
  ∀ n, (P12266111460140794060.a n : ℤ) = A016793 n

end A016793

/-! ## A016793.P246437505499172121

`∪[A016937(n), A016973(n)]`
-/

namespace A016793.P246437505499172121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016793.P246437505499172121

namespace A016793

/-- `∪[A016937(n), A016973(n)]` -/
def P246437505499172121.Spec : Prop :=
  ∀ n, (P246437505499172121.a n : ℤ) = A016793 n

end A016793

/-! ## A016793.P9221292091377243838

`A016792(n)²/A016791(n)`
-/

namespace A016793.P9221292091377243838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016792 n ^ 2 : ℚ) / (A016791 n : ℚ)

end

end A016793.P9221292091377243838

namespace A016793

/-- `A016792(n)²/A016791(n)` -/
def P9221292091377243838.Spec : Prop :=
  ∀ n, P9221292091377243838.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P5266113226787547389

`A016794(n)²/A016795(n)`
-/

namespace A016793.P5266113226787547389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n ^ 2 : ℚ) / (A016795 n : ℚ)

end

end A016793.P5266113226787547389

namespace A016793

/-- `A016794(n)²/A016795(n)` -/
def P5266113226787547389.Spec : Prop :=
  ∀ n, P5266113226787547389.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P18343708444568285277

`A016795(n)/A016789(n)²`
-/

namespace A016793.P18343708444568285277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016795 n : ℚ) / (A016789 n ^ 2 : ℚ)

end

end A016793.P18343708444568285277

namespace A016793

/-- `A016795(n)/A016789(n)²` -/
def P18343708444568285277.Spec : Prop :=
  ∀ n, P18343708444568285277.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P12950625631425614661

`A016799(n)/A016791(n)²`
-/

namespace A016793.P12950625631425614661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (A016791 n ^ 2 : ℚ)

end

end A016793.P12950625631425614661

namespace A016793

/-- `A016799(n)/A016791(n)²` -/
def P12950625631425614661.Spec : Prop :=
  ∀ n, P12950625631425614661.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P334053073675086645

`A016794(n)/(A016777(n)+1)`
-/

namespace A016793.P334053073675086645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n : ℚ) / (A016777 n + 1 : ℚ)

end

end A016793.P334053073675086645

namespace A016793

/-- `A016794(n)/(A016777(n)+1)` -/
def P334053073675086645.Spec : Prop :=
  ∀ n, P334053073675086645.a n = (A016793 n : ℚ)

end A016793

/-! ## A016793.P8960984559123885139

`2*A016794(n)/A016957(n)`
-/

namespace A016793.P8960984559123885139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016794 n : ℚ) / (A016957 n : ℚ))

end

end A016793.P8960984559123885139

namespace A016793

/-- `2*A016794(n)/A016957(n)` -/
def P8960984559123885139.Spec : Prop :=
  ∀ n, P8960984559123885139.a n = (A016793 n : ℚ)

end A016793

/-!
# A016794: a(n) = (3*n + 2)^6.

The programs for A016794, the canonical program `A016794.P16688178066975936005` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016794 has offset 0).

The definition of A016794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^6` (program `A016794.P16688178066975936005`, by `A016794.P16688178066975936005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016794.P16688178066975936005

`(3*n+2)^6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016794

/-- `(3*n+2)^6` -/
def P16688178066975936005.Spec : Prop :=
  ∀ n, (P16688178066975936005.a n : ℤ) = A016794 n

theorem P16688178066975936005.correct : P16688178066975936005.Spec := by
  intro n
  simp only [A016794]

end A016794

/-! ## A016794.P7807448151159982894

`A016791(n)²`
-/

namespace A016794.P7807448151159982894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n ^ 2

end

end A016794.P7807448151159982894

namespace A016794

/-- `A016791(n)²` -/
def P7807448151159982894.Spec : Prop :=
  ∀ n, P7807448151159982894.a n = A016794 n

end A016794

/-! ## A016794.P8700646825600130495

`root(3*n+2, tan(acot(6)))`
-/

namespace A016794.P8700646825600130495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (6 : ℝ)))

end

end A016794.P8700646825600130495

namespace A016794

/-- `root(3*n+2, tan(acot(6)))` -/
def P8700646825600130495.Spec : Prop :=
  ∀ n, P8700646825600130495.a n = (A016794 n : ℝ)

end A016794

/-! ## A016794.P4654386750142364108

`record[((n+2)^gcd(3, n))²]`
-/

namespace A016794.P4654386750142364108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.gcd 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016794.P4654386750142364108

namespace A016794

/-- `record[((n+2)^gcd(3, n))²]` -/
def P4654386750142364108.Spec : Prop :=
  ∀ n, (P4654386750142364108.a n : ℤ) = A016794 n

end A016794

/-! ## A016794.P8412795944833285061

`(eq[n+1, lcm(3, n+1)]^3)²`
-/

namespace A016794.P8412795944833285061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3) ^ 2

end

end A016794.P8412795944833285061

namespace A016794

/-- `(eq[n+1, lcm(3, n+1)]^3)²` -/
def P8412795944833285061.Spec : Prop :=
  ∀ n, (P8412795944833285061.a n : ℤ) = A016794 n

end A016794

/-! ## A016794.P9407503010806995367

`sqrt(A016800(n))`
-/

namespace A016794.P9407503010806995367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016800 n : ℝ)

end

end A016794.P9407503010806995367

namespace A016794

/-- `sqrt(A016800(n))` -/
def P9407503010806995367.Spec : Prop :=
  ∀ n, P9407503010806995367.a n = (A016794 n : ℝ)

end A016794

/-! ## A016794.P14871151576795437644

`(A016789(n)^3)²`
-/

namespace A016794.P14871151576795437644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n ^ 3) ^ 2

end

end A016794.P14871151576795437644

namespace A016794

/-- `(A016789(n)^3)²` -/
def P14871151576795437644.Spec : Prop :=
  ∀ n, P14871151576795437644.a n = A016794 n

end A016794

/-! ## A016794.P661669569992818725

`sqrt(A016792(n)^3)`
-/

namespace A016794.P661669569992818725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016792 n ^ 3 : ℝ)

end

end A016794.P661669569992818725

namespace A016794

/-- `sqrt(A016792(n)^3)` -/
def P661669569992818725.Spec : Prop :=
  ∀ n, P661669569992818725.a n = (A016794 n : ℝ)

end A016794

/-! ## A016794.P5838532125190611037

`A016789(n)*A016793(n)`
-/

namespace A016794.P5838532125190611037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A016793 n

end

end A016794.P5838532125190611037

namespace A016794

/-- `A016789(n)*A016793(n)` -/
def P5838532125190611037.Spec : Prop :=
  ∀ n, P5838532125190611037.a n = A016794 n

end A016794

/-! ## A016794.P7447260772094867493

`A016795(n)/A016789(n)`
-/

namespace A016794.P7447260772094867493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016795 n : ℚ) / (A016789 n : ℚ)

end

end A016794.P7447260772094867493

namespace A016794

/-- `A016795(n)/A016789(n)` -/
def P7447260772094867493.Spec : Prop :=
  ∀ n, P7447260772094867493.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P12296318157346768921

`A016797(n)/A016791(n)`
-/

namespace A016794.P12296318157346768921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 n : ℚ) / (A016791 n : ℚ)

end

end A016794.P12296318157346768921

namespace A016794

/-- `A016797(n)/A016791(n)` -/
def P12296318157346768921.Spec : Prop :=
  ∀ n, P12296318157346768921.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P12160967677474991386

`A016798(n)/A016792(n)`
-/

namespace A016794.P12160967677474991386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016798 n : ℚ) / (A016792 n : ℚ)

end

end A016794.P12160967677474991386

namespace A016794

/-- `A016798(n)/A016792(n)` -/
def P12160967677474991386.Spec : Prop :=
  ∀ n, P12160967677474991386.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P7517923253817379561

`A016799(n)/A016793(n)`
-/

namespace A016794.P7517923253817379561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (A016793 n : ℚ)

end

end A016794.P7517923253817379561

namespace A016794

/-- `A016799(n)/A016793(n)` -/
def P7517923253817379561.Spec : Prop :=
  ∀ n, P7517923253817379561.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P16899381334256291899

`gcd(A016795(n), A017238(n))`
-/

namespace A016794.P16899381334256291899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016795 n) (A017238 n)

end

end A016794.P16899381334256291899

namespace A016794

/-- `gcd(A016795(n), A017238(n))` -/
def P16899381334256291899.Spec : Prop :=
  ∀ n, (P16899381334256291899.a n : ℤ) = A016794 n

end A016794

/-! ## A016794.P14896480765407743845

`∪[A016938(n), A016974(n)]`
-/

namespace A016794.P14896480765407743845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016974 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016794.P14896480765407743845

namespace A016794

/-- `∪[A016938(n), A016974(n)]` -/
def P14896480765407743845.Spec : Prop :=
  ∀ n, (P14896480765407743845.a n : ℤ) = A016794 n

end A016794

/-! ## A016794.P400121118824318697

`A016789(n)²*A016792(n)`
-/

namespace A016794.P400121118824318697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 * A016792 n

end

end A016794.P400121118824318697

namespace A016794

/-- `A016789(n)²*A016792(n)` -/
def P400121118824318697.Spec : Prop :=
  ∀ n, P400121118824318697.a n = A016794 n

end A016794

/-! ## A016794.P187652974280477039

`A016793(n)²/A016792(n)`
-/

namespace A016794.P187652974280477039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016793 n ^ 2 : ℚ) / (A016792 n : ℚ)

end

end A016794.P187652974280477039

namespace A016794

/-- `A016793(n)²/A016792(n)` -/
def P187652974280477039.Spec : Prop :=
  ∀ n, P187652974280477039.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P2902485248051027134

`(A016795(n)/A016792(n))²`
-/

namespace A016794.P2902485248051027134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016795 n : ℚ) / (A016792 n : ℚ)) ^ 2

end

end A016794.P2902485248051027134

namespace A016794

/-- `(A016795(n)/A016792(n))²` -/
def P2902485248051027134.Spec : Prop :=
  ∀ n, P2902485248051027134.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P17808775415483285233

`A016796(n)/A016789(n)²`
-/

namespace A016794.P17808775415483285233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / (A016789 n ^ 2 : ℚ)

end

end A016794.P17808775415483285233

namespace A016794

/-- `A016796(n)/A016789(n)²` -/
def P17808775415483285233.Spec : Prop :=
  ∀ n, P17808775415483285233.a n = (A016794 n : ℚ)

end A016794

/-! ## A016794.P7816322510629862852

`(A016796(n)/A016793(n))²`
-/

namespace A016794.P7816322510629862852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016796 n : ℚ) / (A016793 n : ℚ)) ^ 2

end

end A016794.P7816322510629862852

namespace A016794

/-- `(A016796(n)/A016793(n))²` -/
def P7816322510629862852.Spec : Prop :=
  ∀ n, P7816322510629862852.a n = (A016794 n : ℚ)

end A016794

/-!
# A016795: a(n) = (3n+2)^7.

The programs for A016795, the canonical program `A016795.P9782135587463226103` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016795 has offset 0).

The definition of A016795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^7` (program `A016795.P9782135587463226103`, by `A016795.P9782135587463226103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016795.P9782135587463226103

`(3*n+2)^7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016795

/-- `(3*n+2)^7` -/
def P9782135587463226103.Spec : Prop :=
  ∀ n, (P9782135587463226103.a n : ℤ) = A016795 n

theorem P9782135587463226103.correct : P9782135587463226103.Spec := by
  intro n
  simp only [A016795]

end A016795

/-! ## A016795.P17546720773147713588

`record[(n+2)^gcd(7, n%3)]`
-/

namespace A016795.P17546720773147713588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 7 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016795.P17546720773147713588

namespace A016795

/-- `record[(n+2)^gcd(7, n%3)]` -/
def P17546720773147713588.Spec : Prop :=
  ∀ n, (P17546720773147713588.a n : ℤ) = A016795 n

end A016795

/-! ## A016795.P2767896928345415695

`record[A014682(n+1)^7]`
-/

namespace A016795.P2767896928345415695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016795.P2767896928345415695

namespace A016795

/-- `record[A014682(n+1)^7]` -/
def P2767896928345415695.Spec : Prop :=
  ∀ n, P2767896928345415695.a n = A016795 n

end A016795

/-! ## A016795.P10484247727182494511

`(3*n+2)*A016794(n)`
-/

namespace A016795.P10484247727182494511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A016794 n

end

end A016795.P10484247727182494511

namespace A016795

/-- `(3*n+2)*A016794(n)` -/
def P10484247727182494511.Spec : Prop :=
  ∀ n, P10484247727182494511.a n = A016795 n

end A016795

/-! ## A016795.P8490904703721526153

`A016791(n)²*(3*n+2)`
-/

namespace A016795.P8490904703721526153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n ^ 2 * (3 * n + 2 : ℤ)

end

end A016795.P8490904703721526153

namespace A016795

/-- `A016791(n)²*(3*n+2)` -/
def P8490904703721526153.Spec : Prop :=
  ∀ n, P8490904703721526153.a n = A016795 n

end A016795

/-! ## A016795.P7793804508574920808

`A016791(n)*A016792(n)`
-/

namespace A016795.P7793804508574920808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n * A016792 n

end

end A016795.P7793804508574920808

namespace A016795

/-- `A016791(n)*A016792(n)` -/
def P7793804508574920808.Spec : Prop :=
  ∀ n, P7793804508574920808.a n = A016795 n

end A016795

/-! ## A016795.P11020498163244152660

`A016796(n)/A016789(n)`
-/

namespace A016795.P11020498163244152660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / (A016789 n : ℚ)

end

end A016795.P11020498163244152660

namespace A016795

/-- `A016796(n)/A016789(n)` -/
def P11020498163244152660.Spec : Prop :=
  ∀ n, P11020498163244152660.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P6011647548807305178

`A016798(n)/A016791(n)`
-/

namespace A016795.P6011647548807305178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016798 n : ℚ) / (A016791 n : ℚ)

end

end A016795.P6011647548807305178

namespace A016795

/-- `A016798(n)/A016791(n)` -/
def P6011647548807305178.Spec : Prop :=
  ∀ n, P6011647548807305178.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P12625398870694124788

`A016799(n)/A016792(n)`
-/

namespace A016795.P12625398870694124788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (A016792 n : ℚ)

end

end A016795.P12625398870694124788

namespace A016795

/-- `A016799(n)/A016792(n)` -/
def P12625398870694124788.Spec : Prop :=
  ∀ n, P12625398870694124788.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P921916913693451549

`A016800(n)/A016793(n)`
-/

namespace A016795.P921916913693451549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016800 n : ℚ) / (A016793 n : ℚ)

end

end A016795.P921916913693451549

namespace A016795

/-- `A016800(n)/A016793(n)` -/
def P921916913693451549.Spec : Prop :=
  ∀ n, P921916913693451549.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P249087065145832483

`∪[A016939(n), A016975(n)]`
-/

namespace A016795.P249087065145832483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016795.P249087065145832483

namespace A016795

/-- `∪[A016939(n), A016975(n)]` -/
def P249087065145832483.Spec : Prop :=
  ∀ n, (P249087065145832483.a n : ℤ) = A016795 n

end A016795

/-! ## A016795.P13249464640867011696

`A016789(n)²*A016793(n)`
-/

namespace A016795.P13249464640867011696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 * A016793 n

end

end A016795.P13249464640867011696

namespace A016795

/-- `A016789(n)²*A016793(n)` -/
def P13249464640867011696.Spec : Prop :=
  ∀ n, P13249464640867011696.a n = A016795 n

end A016795

/-! ## A016795.P12319211455240869234

`A016792(n)²/A016789(n)`
-/

namespace A016795.P12319211455240869234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016792 n ^ 2 : ℚ) / (A016789 n : ℚ)

end

end A016795.P12319211455240869234

namespace A016795

/-- `A016792(n)²/A016789(n)` -/
def P12319211455240869234.Spec : Prop :=
  ∀ n, P12319211455240869234.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P1047836229577350776

`A016793(n)²/A016791(n)`
-/

namespace A016795.P1047836229577350776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016793 n ^ 2 : ℚ) / (A016791 n : ℚ)

end

end A016795.P1047836229577350776

namespace A016795

/-- `A016793(n)²/A016791(n)` -/
def P1047836229577350776.Spec : Prop :=
  ∀ n, P1047836229577350776.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P16191473717221367397

`A016794(n)²/A016793(n)`
-/

namespace A016795.P16191473717221367397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n ^ 2 : ℚ) / (A016793 n : ℚ)

end

end A016795.P16191473717221367397

namespace A016795

/-- `A016794(n)²/A016793(n)` -/
def P16191473717221367397.Spec : Prop :=
  ∀ n, P16191473717221367397.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P13190118910275722367

`A016797(n)/A016789(n)²`
-/

namespace A016795.P13190118910275722367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 n : ℚ) / (A016789 n ^ 2 : ℚ)

end

end A016795.P13190118910275722367

namespace A016795

/-- `A016797(n)/A016789(n)²` -/
def P13190118910275722367.Spec : Prop :=
  ∀ n, P13190118910275722367.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P15202042377494014900

`A016796(n)/(A016777(n)+1)`
-/

namespace A016795.P15202042377494014900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / (A016777 n + 1 : ℚ)

end

end A016795.P15202042377494014900

namespace A016795

/-- `A016796(n)/(A016777(n)+1)` -/
def P15202042377494014900.Spec : Prop :=
  ∀ n, P15202042377494014900.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P12713283195718840558

`2*A016796(n)/A016957(n)`
-/

namespace A016795.P12713283195718840558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016796 n : ℚ) / (A016957 n : ℚ))

end

end A016795.P12713283195718840558

namespace A016795

/-- `2*A016796(n)/A016957(n)` -/
def P12713283195718840558.Spec : Prop :=
  ∀ n, P12713283195718840558.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P16277585585199801665

`A016794(n)/2*A016957(n)`
-/

namespace A016795.P16277585585199801665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n : ℚ) / 2 * (A016957 n : ℚ)

end

end A016795.P16277585585199801665

namespace A016795

/-- `A016794(n)/2*A016957(n)` -/
def P16277585585199801665.Spec : Prop :=
  ∀ n, P16277585585199801665.a n = (A016795 n : ℚ)

end A016795

/-! ## A016795.P6452303898046533980

`A016789(n)²²*A016791(n)`
-/

namespace A016795.P6452303898046533980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n ^ 2) ^ 2 * A016791 n

end

end A016795.P6452303898046533980

namespace A016795

/-- `A016789(n)²²*A016791(n)` -/
def P6452303898046533980.Spec : Prop :=
  ∀ n, P6452303898046533980.a n = A016795 n

end A016795

/-!
# A016796: a(n) = (3*n + 2)^8.

The programs for A016796, the canonical program `A016796.P4316229543595741234` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016796 has offset 0).

The definition of A016796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^8` (program `A016796.P4316229543595741234`, by `A016796.P4316229543595741234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016796.P4316229543595741234

`(3*n+2)^8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016796

/-- `(3*n+2)^8` -/
def P4316229543595741234.Spec : Prop :=
  ∀ n, (P4316229543595741234.a n : ℤ) = A016796 n

theorem P4316229543595741234.correct : P4316229543595741234.Spec := by
  intro n
  simp only [A016796]

end A016796

/-! ## A016796.P1068670161436487975

`(comp[n-gcd(3, n)]^4)²`
-/

namespace A016796.P1068670161436487975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 4) ^ 2

end

end A016796.P1068670161436487975

namespace A016796

/-- `(comp[n-gcd(3, n)]^4)²` -/
def P1068670161436487975.Spec : Prop :=
  ∀ n, (P1068670161436487975.a n : ℤ) = A016796 n

end A016796

/-! ## A016796.P687566995279018203

`(∑[n+2]-C(n, 2))²²²`
-/

namespace A016796.P687566995279018203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016796.P687566995279018203

namespace A016796

/-- `(∑[n+2]-C(n, 2))²²²` -/
def P687566995279018203.Spec : Prop :=
  ∀ n, P687566995279018203.a n = A016796 n

end A016796

/-! ## A016796.P9621875879031146387

`(Δ[lcm(n, n+1)]+n)²²²`
-/

namespace A016796.P9621875879031146387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016796.P9621875879031146387

namespace A016796

/-- `(Δ[lcm(n, n+1)]+n)²²²` -/
def P9621875879031146387.Spec : Prop :=
  ∀ n, P9621875879031146387.a n = A016796 n

end A016796

/-! ## A016796.P7489786082734874858

`(lcm(2, 2*n+1)-n)²²²`
-/

namespace A016796.P7489786082734874858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 2 (2 * n + 1) : ℤ) - (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016796.P7489786082734874858

namespace A016796

/-- `(lcm(2, 2*n+1)-n)²²²` -/
def P7489786082734874858.Spec : Prop :=
  ∀ n, P7489786082734874858.a n = A016796 n

end A016796

/-! ## A016796.P17793807703869213101

`(or(1, 2*n)+n+1)²²²`
-/

namespace A016796.P17793807703869213101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 1 (2 * n) + (n + 1)) ^ 2) ^ 2) ^ 2

end

end A016796.P17793807703869213101

namespace A016796

/-- `(or(1, 2*n)+n+1)²²²` -/
def P17793807703869213101.Spec : Prop :=
  ∀ n, (P17793807703869213101.a n : ℤ) = A016796 n

end A016796

/-! ## A016796.P15506702208338498392

`(xor(1, 2*n)+n+1)²²²`
-/

namespace A016796.P15506702208338498392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 1 (2 * n) + (n + 1)) ^ 2) ^ 2) ^ 2

end

end A016796.P15506702208338498392

namespace A016796

/-- `(xor(1, 2*n)+n+1)²²²` -/
def P15506702208338498392.Spec : Prop :=
  ∀ n, (P15506702208338498392.a n : ℤ) = A016796 n

end A016796

/-! ## A016796.P16608126648289746470

`record[(-(n+2))^dr((n+2)^3)]`
-/

namespace A016796.P16608126648289746470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ SequenceMachineLib.digitalRoot ((n + 2) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016796.P16608126648289746470

namespace A016796

/-- `record[(-(n+2))^dr((n+2)^3)]` -/
def P16608126648289746470.Spec : Prop :=
  ∀ n, P16608126648289746470.a n = A016796 n

end A016796

/-! ## A016796.P13254394860503430734

`record[(dr(2*n)+n+2)²²²]`
-/

namespace A016796.P13254394860503430734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (2 * n : ℤ) + (n + 2)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016796.P13254394860503430734

namespace A016796

/-- `record[(dr(2*n)+n+2)²²²]` -/
def P13254394860503430734.Spec : Prop :=
  ∀ n, (P13254394860503430734.a n : ℤ) = A016796 n

end A016796

/-! ## A016796.P6398885118215175710

`(Δ[C(2*n, 2)]-(n-1))²²²`
-/

namespace A016796.P6398885118215175710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)) ^ 2) ^ 2) ^ 2

end

end A016796.P6398885118215175710

namespace A016796

/-- `(Δ[C(2*n, 2)]-(n-1))²²²` -/
def P6398885118215175710.Spec : Prop :=
  ∀ n, P6398885118215175710.a n = A016796 n

end A016796

/-! ## A016796.P12837850036247772875

`(C(n+1, n)+2*n+1)²²²`
-/

namespace A016796.P12837850036247772875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (n + 1) n + (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A016796.P12837850036247772875

namespace A016796

/-- `(C(n+1, n)+2*n+1)²²²` -/
def P12837850036247772875.Spec : Prop :=
  ∀ n, (P12837850036247772875.a n : ℤ) = A016796 n

theorem P12837850036247772875.correct : P12837850036247772875.Spec := by
  intro n
  simp only [A016796, Nat.add_sub_cancel, A016796.P12837850036247772875.a, A016796.P4316229543595741234.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016796

/-! ## A016796.P8543364905716089134

`(and(2*n+1, 2*n)+n+2)²²²`
-/

namespace A016796.P8543364905716089134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.land (2 * n + 1) (2 * n) + (n + 2)) ^ 2) ^ 2) ^ 2

end

end A016796.P8543364905716089134

namespace A016796

/-- `(and(2*n+1, 2*n)+n+2)²²²` -/
def P8543364905716089134.Spec : Prop :=
  ∀ n, (P8543364905716089134.a n : ℤ) = A016796 n

end A016796

/-! ## A016796.P13418236467776958016

`(gcd(n+1, ∑[2*n])+2*n+1)²²²`
-/

namespace A016796.P13418236467776958016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A016796.P13418236467776958016

namespace A016796

/-- `(gcd(n+1, ∑[2*n])+2*n+1)²²²` -/
def P13418236467776958016.Spec : Prop :=
  ∀ n, (P13418236467776958016.a n : ℤ) = A016796 n

end A016796

/-! ## A016796.P17444582286315956103

`A016792(n)²`
-/

namespace A016796.P17444582286315956103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n ^ 2

end

end A016796.P17444582286315956103

namespace A016796

/-- `A016792(n)²` -/
def P17444582286315956103.Spec : Prop :=
  ∀ n, P17444582286315956103.a n = A016796 n

end A016796

/-! ## A016796.P18077215272053688923

`A016789(n)²²²`
-/

namespace A016796.P18077215272053688923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016789 n ^ 2) ^ 2) ^ 2

end

end A016796.P18077215272053688923

namespace A016796

/-- `A016789(n)²²²` -/
def P18077215272053688923.Spec : Prop :=
  ∀ n, P18077215272053688923.a n = A016796 n

end A016796

/-! ## A016796.P6775990314184191273

`(A016777(n)+1)²²²`
-/

namespace A016796.P6775990314184191273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016777 n + 1) ^ 2) ^ 2) ^ 2

end

end A016796.P6775990314184191273

namespace A016796

/-- `(A016777(n)+1)²²²` -/
def P6775990314184191273.Spec : Prop :=
  ∀ n, P6775990314184191273.a n = A016796 n

end A016796

/-! ## A016796.P17461586314218968315

`(A008585(n)+2)²²²`
-/

namespace A016796.P17461586314218968315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008585 n + 2) ^ 2) ^ 2) ^ 2

end

end A016796.P17461586314218968315

namespace A016796

/-- `(A008585(n)+2)²²²` -/
def P17461586314218968315.Spec : Prop :=
  ∀ n, P17461586314218968315.a n = A016796 n

end A016796

/-! ## A016796.P11025220496734255676

`(A016957(n)/2)²²²`
-/

namespace A016796.P11025220496734255676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A016957 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016796.P11025220496734255676

namespace A016796

/-- `(A016957(n)/2)²²²` -/
def P11025220496734255676.Spec : Prop :=
  ∀ n, P11025220496734255676.a n = (A016796 n : ℚ)

end A016796

/-! ## A016796.P17655889420602024129

`∑[A063122(n+1)]²²`
-/

namespace A016796.P17655889420602024129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A016796.P17655889420602024129

namespace A016796

/-- `∑[A063122(n+1)]²²` -/
def P17655889420602024129.Spec : Prop :=
  ∀ n, P17655889420602024129.a n = A016796 n

end A016796

/-! ## A016796.P14978605574120564511

`eq[1, A276204(n)]²²²`
-/

namespace A016796.P14978605574120564511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2) ^ 2

end

end A016796.P14978605574120564511

namespace A016796

/-- `eq[1, A276204(n)]²²²` -/
def P14978605574120564511.Spec : Prop :=
  ∀ n, (P14978605574120564511.a n : ℤ) = A016796 n

end A016796

/-!
# A016797: a(n) = (3*n + 2)^9.

The programs for A016797, the canonical program `A016797.P16599814047714379854` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016797 has offset 0).

The definition of A016797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^9` (program `A016797.P16599814047714379854`, by `A016797.P16599814047714379854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016797.P16599814047714379854

`(3*n+2)^9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016797

/-- `(3*n+2)^9` -/
def P16599814047714379854.Spec : Prop :=
  ∀ n, (P16599814047714379854.a n : ℤ) = A016797 n

theorem P16599814047714379854.correct : P16599814047714379854.Spec := by
  intro n
  simp only [A016797]

end A016797

/-! ## A016797.P13761453273447265608

`record[(n+2)^gcd(3, n)²]`
-/

namespace A016797.P13761453273447265608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 3 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016797.P13761453273447265608

namespace A016797

/-- `record[(n+2)^gcd(3, n)²]` -/
def P13761453273447265608.Spec : Prop :=
  ∀ n, (P13761453273447265608.a n : ℤ) = A016797 n

end A016797

/-! ## A016797.P10390363430557033635

`record[(n+2)^dr((n+3)^4)]`
-/

namespace A016797.P10390363430557033635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ SequenceMachineLib.digitalRoot ((n + 3) ^ 4 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016797.P10390363430557033635

namespace A016797

/-- `record[(n+2)^dr((n+3)^4)]` -/
def P10390363430557033635.Spec : Prop :=
  ∀ n, (P10390363430557033635.a n : ℤ) = A016797 n

end A016797

/-! ## A016797.P1102457239745238376

`record[A014682(n+1)^9]`
-/

namespace A016797.P1102457239745238376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016797.P1102457239745238376

namespace A016797

/-- `record[A014682(n+1)^9]` -/
def P1102457239745238376.Spec : Prop :=
  ∀ n, P1102457239745238376.a n = A016797 n

end A016797

/-! ## A016797.P17582109316521132118

`abs((A016825(n)-n)^9)`
-/

namespace A016797.P17582109316521132118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016825 n - (n : ℤ)) ^ 9|

end

end A016797.P17582109316521132118

namespace A016797

/-- `abs((A016825(n)-n)^9)` -/
def P17582109316521132118.Spec : Prop :=
  ∀ n, P17582109316521132118.a n = A016797 n

end A016797

/-! ## A016797.P2365234623735322257

`(3*n+2)*A016796(n)`
-/

namespace A016797.P2365234623735322257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A016796 n

end

end A016797.P2365234623735322257

namespace A016797

/-- `(3*n+2)*A016796(n)` -/
def P2365234623735322257.Spec : Prop :=
  ∀ n, P2365234623735322257.a n = A016797 n

end A016797

/-! ## A016797.P4798913916608312707

`A016798(n)/(3*n+2)`
-/

namespace A016797.P4798913916608312707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016798 n : ℚ) / (3 * n + 2 : ℚ)

end

end A016797.P4798913916608312707

namespace A016797

/-- `A016798(n)/(3*n+2)` -/
def P4798913916608312707.Spec : Prop :=
  ∀ n, P4798913916608312707.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P9265695326484985529

`A016791(n)*A016794(n)`
-/

namespace A016797.P9265695326484985529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n * A016794 n

end

end A016797.P9265695326484985529

namespace A016797

/-- `A016791(n)*A016794(n)` -/
def P9265695326484985529.Spec : Prop :=
  ∀ n, P9265695326484985529.a n = A016797 n

end A016797

/-! ## A016797.P6038079638780717202

`A016792(n)*A016793(n)`
-/

namespace A016797.P6038079638780717202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n * A016793 n

end

end A016797.P6038079638780717202

namespace A016797

/-- `A016792(n)*A016793(n)` -/
def P6038079638780717202.Spec : Prop :=
  ∀ n, P6038079638780717202.a n = A016797 n

end A016797

/-! ## A016797.P5216055505562293396

`A016800(n)/A016791(n)`
-/

namespace A016797.P5216055505562293396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016800 n : ℚ) / (A016791 n : ℚ)

end

end A016797.P5216055505562293396

namespace A016797

/-- `A016800(n)/A016791(n)` -/
def P5216055505562293396.Spec : Prop :=
  ∀ n, P5216055505562293396.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P11797398499496748210

`A016789(n)²*A016795(n)`
-/

namespace A016797.P11797398499496748210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 * A016795 n

end

end A016797.P11797398499496748210

namespace A016797

/-- `A016789(n)²*A016795(n)` -/
def P11797398499496748210.Spec : Prop :=
  ∀ n, P11797398499496748210.a n = A016797 n

end A016797

/-! ## A016797.P13113831904618667458

`A016792(n)²*A016789(n)`
-/

namespace A016797.P13113831904618667458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n ^ 2 * A016789 n

end

end A016797.P13113831904618667458

namespace A016797

/-- `A016792(n)²*A016789(n)` -/
def P13113831904618667458.Spec : Prop :=
  ∀ n, P13113831904618667458.a n = A016797 n

end A016797

/-! ## A016797.P10171580356323875434

`A016793(n)²/A016789(n)`
-/

namespace A016797.P10171580356323875434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016793 n ^ 2 : ℚ) / (A016789 n : ℚ)

end

end A016797.P10171580356323875434

namespace A016797

/-- `A016793(n)²/A016789(n)` -/
def P10171580356323875434.Spec : Prop :=
  ∀ n, P10171580356323875434.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P9849967526712276603

`A016799(n)/A016789(n)²`
-/

namespace A016797.P9849967526712276603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (A016789 n ^ 2 : ℚ)

end

end A016797.P9849967526712276603

namespace A016797

/-- `A016799(n)/A016789(n)²` -/
def P9849967526712276603.Spec : Prop :=
  ∀ n, P9849967526712276603.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P7806488344418558805

`A016796(n)/2*A016957(n)`
-/

namespace A016797.P7806488344418558805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016796 n : ℚ) / 2 * (A016957 n : ℚ)

end

end A016797.P7806488344418558805

namespace A016797

/-- `A016796(n)/2*A016957(n)` -/
def P7806488344418558805.Spec : Prop :=
  ∀ n, P7806488344418558805.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P9226082775873352901

`(A016777(n)+1)*A016792(n)²`
-/

namespace A016797.P9226082775873352901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + 1) * A016792 n ^ 2

end

end A016797.P9226082775873352901

namespace A016797

/-- `(A016777(n)+1)*A016792(n)²` -/
def P9226082775873352901.Spec : Prop :=
  ∀ n, P9226082775873352901.a n = A016797 n

end A016797

/-! ## A016797.P7899531486021647582

`A016789(n)*A016791(n)*A016793(n)`
-/

namespace A016797.P7899531486021647582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A016791 n * A016793 n

end

end A016797.P7899531486021647582

namespace A016797

/-- `A016789(n)*A016791(n)*A016793(n)` -/
def P7899531486021647582.Spec : Prop :=
  ∀ n, P7899531486021647582.a n = A016797 n

end A016797

/-! ## A016797.P6878256238985728572

`A016789(n)/A016792(n)*A016800(n)`
-/

namespace A016797.P6878256238985728572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n : ℚ) / (A016792 n : ℚ) * (A016800 n : ℚ)

end

end A016797.P6878256238985728572

namespace A016797

/-- `A016789(n)/A016792(n)*A016800(n)` -/
def P6878256238985728572.Spec : Prop :=
  ∀ n, P6878256238985728572.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P3503456655760730819

`A016791(n)/A016792(n)*A016798(n)`
-/

namespace A016797.P3503456655760730819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016791 n : ℚ) / (A016792 n : ℚ) * (A016798 n : ℚ)

end

end A016797.P3503456655760730819

namespace A016797

/-- `A016791(n)/A016792(n)*A016798(n)` -/
def P3503456655760730819.Spec : Prop :=
  ∀ n, P3503456655760730819.a n = (A016797 n : ℚ)

end A016797

/-! ## A016797.P6002495720524615418

`A016793(n)/A016791(n)*A016795(n)`
-/

namespace A016797.P6002495720524615418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016793 n : ℚ) / (A016791 n : ℚ) * (A016795 n : ℚ)

end

end A016797.P6002495720524615418

namespace A016797

/-- `A016793(n)/A016791(n)*A016795(n)` -/
def P6002495720524615418.Spec : Prop :=
  ∀ n, P6002495720524615418.a n = (A016797 n : ℚ)

end A016797

/-!
# A016798: a(n) = (3*n + 2)^10.

The programs for A016798, the canonical program `A016798.P14907295202959180294` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016798 has offset 0).

The definition of A016798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^10` (program `A016798.P14907295202959180294`, by `A016798.P14907295202959180294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016798.P14907295202959180294

`(3*n+2)^10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016798

/-- `(3*n+2)^10` -/
def P14907295202959180294.Spec : Prop :=
  ∀ n, (P14907295202959180294.a n : ℤ) = A016798 n

theorem P14907295202959180294.correct : P14907295202959180294.Spec := by
  intro n
  simp only [A016798]

end A016798

/-! ## A016798.P4023017188068033852

`A016793(n)²`
-/

namespace A016798.P4023017188068033852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 n ^ 2

end

end A016798.P4023017188068033852

namespace A016798

/-- `A016793(n)²` -/
def P4023017188068033852.Spec : Prop :=
  ∀ n, P4023017188068033852.a n = A016798 n

end A016798

/-! ## A016798.P8474280338209916779

`(eq[n+1, lcm(3, n+1)]^5)²`
-/

namespace A016798.P8474280338209916779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5) ^ 2

end

end A016798.P8474280338209916779

namespace A016798

/-- `(eq[n+1, lcm(3, n+1)]^5)²` -/
def P8474280338209916779.Spec : Prop :=
  ∀ n, (P8474280338209916779.a n : ℤ) = A016798 n

end A016798

/-! ## A016798.P12129463311198654499

`(A016789(n)^5)²`
-/

namespace A016798.P12129463311198654499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n ^ 5) ^ 2

end

end A016798.P12129463311198654499

namespace A016798

/-- `(A016789(n)^5)²` -/
def P12129463311198654499.Spec : Prop :=
  ∀ n, P12129463311198654499.a n = A016798 n

end A016798

/-! ## A016798.P2591403081976511292

`sqrt(A016792(n)^5)`
-/

namespace A016798.P2591403081976511292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016792 n ^ 5 : ℝ)

end

end A016798.P2591403081976511292

namespace A016798

/-- `sqrt(A016792(n)^5)` -/
def P2591403081976511292.Spec : Prop :=
  ∀ n, P2591403081976511292.a n = (A016798 n : ℝ)

end A016798

/-! ## A016798.P10200891796286145745

`record[A014682(n+1)^10]`
-/

namespace A016798.P10200891796286145745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016798.P10200891796286145745

namespace A016798

/-- `record[A014682(n+1)^10]` -/
def P10200891796286145745.Spec : Prop :=
  ∀ n, P10200891796286145745.a n = A016798 n

end A016798

/-! ## A016798.P4995159200955075559

`(3*n+2)*A016797(n)`
-/

namespace A016798.P4995159200955075559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A016797 n

end

end A016798.P4995159200955075559

namespace A016798

/-- `(3*n+2)*A016797(n)` -/
def P4995159200955075559.Spec : Prop :=
  ∀ n, P4995159200955075559.a n = A016798 n

end A016798

/-! ## A016798.P7346054397662259071

`A016799(n)/(3*n+2)`
-/

namespace A016798.P7346054397662259071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016799 n : ℚ) / (3 * n + 2 : ℚ)

end

end A016798.P7346054397662259071

namespace A016798

/-- `A016799(n)/(3*n+2)` -/
def P7346054397662259071.Spec : Prop :=
  ∀ n, P7346054397662259071.a n = (A016798 n : ℚ)

end A016798

/-! ## A016798.P1543986205331168504

`abs(1-(A016777(n)+1)²^5)+1`
-/

namespace A016798.P1543986205331168504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((A016777 n + 1) ^ 2) ^ 5| + 1

end

end A016798.P1543986205331168504

namespace A016798

/-- `abs(1-(A016777(n)+1)²^5)+1` -/
def P1543986205331168504.Spec : Prop :=
  ∀ n, P1543986205331168504.a n = A016798 n

end A016798

/-! ## A016798.P4286763657173984119

`A016791(n)*A016795(n)`
-/

namespace A016798.P4286763657173984119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n * A016795 n

end

end A016798.P4286763657173984119

namespace A016798

/-- `A016791(n)*A016795(n)` -/
def P4286763657173984119.Spec : Prop :=
  ∀ n, P4286763657173984119.a n = A016798 n

end A016798

/-! ## A016798.P5137508434691357726

`A016792(n)*A016794(n)`
-/

namespace A016798.P5137508434691357726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n * A016794 n

end

end A016798.P5137508434691357726

namespace A016798

/-- `A016792(n)*A016794(n)` -/
def P5137508434691357726.Spec : Prop :=
  ∀ n, P5137508434691357726.a n = A016798 n

end A016798

/-! ## A016798.P3997884753443299642

`(A016789(n)*A016792(n))²`
-/

namespace A016798.P3997884753443299642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n * A016792 n) ^ 2

end

end A016798.P3997884753443299642

namespace A016798

/-- `(A016789(n)*A016792(n))²` -/
def P3997884753443299642.Spec : Prop :=
  ∀ n, P3997884753443299642.a n = A016798 n

end A016798

/-! ## A016798.P13163696882859183353

`A016789(n)²*A016796(n)`
-/

namespace A016798.P13163696882859183353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 * A016796 n

end

end A016798.P13163696882859183353

namespace A016798

/-- `A016789(n)²*A016796(n)` -/
def P13163696882859183353.Spec : Prop :=
  ∀ n, P13163696882859183353.a n = A016798 n

end A016798

/-! ## A016798.P10608949103224715136

`A016791(n)²*A016792(n)`
-/

namespace A016798.P10608949103224715136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n ^ 2 * A016792 n

end

end A016798.P10608949103224715136

namespace A016798

/-- `A016791(n)²*A016792(n)` -/
def P10608949103224715136.Spec : Prop :=
  ∀ n, P10608949103224715136.a n = A016798 n

end A016798

/-! ## A016798.P10584937558107079859

`(A016794(n)/A016789(n))²`
-/

namespace A016798.P10584937558107079859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016794 n : ℚ) / (A016789 n : ℚ)) ^ 2

end

end A016798.P10584937558107079859

namespace A016798

/-- `(A016794(n)/A016789(n))²` -/
def P10584937558107079859.Spec : Prop :=
  ∀ n, P10584937558107079859.a n = (A016798 n : ℚ)

end A016798

/-! ## A016798.P8012809026476606067

`(A016796(n)/A016791(n))²`
-/

namespace A016798.P8012809026476606067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016796 n : ℚ) / (A016791 n : ℚ)) ^ 2

end

end A016798.P8012809026476606067

namespace A016798

/-- `(A016796(n)/A016791(n))²` -/
def P8012809026476606067.Spec : Prop :=
  ∀ n, P8012809026476606067.a n = (A016798 n : ℚ)

end A016798

/-! ## A016798.P5175458294608263365

`(A016797(n)/A016792(n))²`
-/

namespace A016798.P5175458294608263365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016797 n : ℚ) / (A016792 n : ℚ)) ^ 2

end

end A016798.P5175458294608263365

namespace A016798

/-- `(A016797(n)/A016792(n))²` -/
def P5175458294608263365.Spec : Prop :=
  ∀ n, P5175458294608263365.a n = (A016798 n : ℚ)

end A016798

/-! ## A016798.P16124632209522117852

`(A016799(n)/A016794(n))²`
-/

namespace A016798.P16124632209522117852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016799 n : ℚ) / (A016794 n : ℚ)) ^ 2

end

end A016798.P16124632209522117852

namespace A016798

/-- `(A016799(n)/A016794(n))²` -/
def P16124632209522117852.Spec : Prop :=
  ∀ n, P16124632209522117852.a n = (A016798 n : ℚ)

end A016798

/-! ## A016798.P2228646978159064207

`(A016800(n)/A016795(n))²`
-/

namespace A016798.P2228646978159064207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016800 n : ℚ) / (A016795 n : ℚ)) ^ 2

end

end A016798.P2228646978159064207

namespace A016798

/-- `(A016800(n)/A016795(n))²` -/
def P2228646978159064207.Spec : Prop :=
  ∀ n, P2228646978159064207.a n = (A016798 n : ℚ)

end A016798

/-! ## A016798.P10267286602419998194

`gcd(A016794(n), A017237(n))²`
-/

namespace A016798.P10267286602419998194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016794 n) (A017237 n) ^ 2

end

end A016798.P10267286602419998194

namespace A016798

/-- `gcd(A016794(n), A017237(n))²` -/
def P10267286602419998194.Spec : Prop :=
  ∀ n, (P10267286602419998194.a n : ℤ) = A016798 n

end A016798

/-!
# A016799: a(n) = (3*n + 2)^11.

The programs for A016799, the canonical program `A016799.P2519602072837116726` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016799 has offset 0).

The definition of A016799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)^11` (program `A016799.P2519602072837116726`, by `A016799.P2519602072837116726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016799.P2519602072837116726

`(3*n+2)^11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016799

/-- `(3*n+2)^11` -/
def P2519602072837116726.Spec : Prop :=
  ∀ n, (P2519602072837116726.a n : ℤ) = A016799 n

theorem P2519602072837116726.correct : P2519602072837116726.Spec := by
  intro n
  simp only [A016799]

end A016799

/-! ## A016799.P10913356858766752928

`record[A014682(n+1)^11]`
-/

namespace A016799.P10913356858766752928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016799.P10913356858766752928

namespace A016799

/-- `record[A014682(n+1)^11]` -/
def P10913356858766752928.Spec : Prop :=
  ∀ n, P10913356858766752928.a n = A016799 n

end A016799

/-! ## A016799.P4904558645934191301

`(3*n+2)*A016798(n)`
-/

namespace A016799.P4904558645934191301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A016798 n

end

end A016799.P4904558645934191301

namespace A016799

/-- `(3*n+2)*A016798(n)` -/
def P4904558645934191301.Spec : Prop :=
  ∀ n, P4904558645934191301.a n = A016799 n

end A016799

/-! ## A016799.P6615741525099001974

`A016791(n)*A016796(n)`
-/

namespace A016799.P6615741525099001974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n * A016796 n

end

end A016799.P6615741525099001974

namespace A016799

/-- `A016791(n)*A016796(n)` -/
def P6615741525099001974.Spec : Prop :=
  ∀ n, P6615741525099001974.a n = A016799 n

end A016799

/-! ## A016799.P13662467562473896597

`A016792(n)*A016795(n)`
-/

namespace A016799.P13662467562473896597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n * A016795 n

end

end A016799.P13662467562473896597

namespace A016799

/-- `A016792(n)*A016795(n)` -/
def P13662467562473896597.Spec : Prop :=
  ∀ n, P13662467562473896597.a n = A016799 n

end A016799

/-! ## A016799.P10428296782151268473

`A016793(n)*A016794(n)`
-/

namespace A016799.P10428296782151268473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 n * A016794 n

end

end A016799.P10428296782151268473

namespace A016799

/-- `A016793(n)*A016794(n)` -/
def P10428296782151268473.Spec : Prop :=
  ∀ n, P10428296782151268473.a n = A016799 n

end A016799

/-! ## A016799.P17654890781593268388

`A016800(n)/A016789(n)`
-/

namespace A016799.P17654890781593268388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016800 n : ℚ) / (A016789 n : ℚ)

end

end A016799.P17654890781593268388

namespace A016799

/-- `A016800(n)/A016789(n)` -/
def P17654890781593268388.Spec : Prop :=
  ∀ n, P17654890781593268388.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P4409377991731280796

`A016789(n)²*A016797(n)`
-/

namespace A016799.P4409377991731280796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 * A016797 n

end

end A016799.P4409377991731280796

namespace A016799

/-- `A016789(n)²*A016797(n)` -/
def P4409377991731280796.Spec : Prop :=
  ∀ n, P4409377991731280796.a n = A016799 n

end A016799

/-! ## A016799.P4817606106202165087

`A016791(n)²*A016793(n)`
-/

namespace A016799.P4817606106202165087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n ^ 2 * A016793 n

end

end A016799.P4817606106202165087

namespace A016799

/-- `A016791(n)²*A016793(n)` -/
def P4817606106202165087.Spec : Prop :=
  ∀ n, P4817606106202165087.a n = A016799 n

end A016799

/-! ## A016799.P2666850242394274155

`A016792(n)²*A016791(n)`
-/

namespace A016799.P2666850242394274155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 n ^ 2 * A016791 n

end

end A016799.P2666850242394274155

namespace A016799

/-- `A016792(n)²*A016791(n)` -/
def P2666850242394274155.Spec : Prop :=
  ∀ n, P2666850242394274155.a n = A016799 n

end A016799

/-! ## A016799.P13508366521147515684

`A016793(n)²*A016789(n)`
-/

namespace A016799.P13508366521147515684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 n ^ 2 * A016789 n

end

end A016799.P13508366521147515684

namespace A016799

/-- `A016793(n)²*A016789(n)` -/
def P13508366521147515684.Spec : Prop :=
  ∀ n, P13508366521147515684.a n = A016799 n

end A016799

/-! ## A016799.P2525435341398921895

`A016794(n)²/A016789(n)`
-/

namespace A016799.P2525435341398921895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n ^ 2 : ℚ) / (A016789 n : ℚ)

end

end A016799.P2525435341398921895

namespace A016799

/-- `A016794(n)²/A016789(n)` -/
def P2525435341398921895.Spec : Prop :=
  ∀ n, P2525435341398921895.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P5356376433816540122

`A016789(n)²²*A016795(n)`
-/

namespace A016799.P5356376433816540122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n ^ 2) ^ 2 * A016795 n

end

end A016799.P5356376433816540122

namespace A016799

/-- `A016789(n)²²*A016795(n)` -/
def P5356376433816540122.Spec : Prop :=
  ∀ n, P5356376433816540122.a n = A016799 n

end A016799

/-! ## A016799.P402085370708805694

`A016791(n)²²/A016789(n)`
-/

namespace A016799.P402085370708805694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016791 n ^ 2) ^ 2 : ℚ) / (A016789 n : ℚ)

end

end A016799.P402085370708805694

namespace A016799

/-- `A016791(n)²²/A016789(n)` -/
def P402085370708805694.Spec : Prop :=
  ∀ n, P402085370708805694.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P18222622185520451943

`A016794(n)²/(A016777(n)+1)`
-/

namespace A016799.P18222622185520451943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016794 n ^ 2 : ℚ) / (A016777 n + 1 : ℚ)

end

end A016799.P18222622185520451943

namespace A016799

/-- `A016794(n)²/(A016777(n)+1)` -/
def P18222622185520451943.Spec : Prop :=
  ∀ n, P18222622185520451943.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P16933394109115267489

`2*A016794(n)²/A016957(n)`
-/

namespace A016799.P16933394109115267489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016794 n ^ 2 : ℚ) / (A016957 n : ℚ))

end

end A016799.P16933394109115267489

namespace A016799

/-- `2*A016794(n)²/A016957(n)` -/
def P16933394109115267489.Spec : Prop :=
  ∀ n, P16933394109115267489.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P1781919398452701196

`A016789(n)*A016792(n)*A016794(n)`
-/

namespace A016799.P1781919398452701196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A016792 n * A016794 n

end

end A016799.P1781919398452701196

namespace A016799

/-- `A016789(n)*A016792(n)*A016794(n)` -/
def P1781919398452701196.Spec : Prop :=
  ∀ n, P1781919398452701196.a n = A016799 n

end A016799

/-! ## A016799.P12059129308480037511

`A016791(n)/A016789(n)*A016797(n)`
-/

namespace A016799.P12059129308480037511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016791 n : ℚ) / (A016789 n : ℚ) * (A016797 n : ℚ)

end

end A016799.P12059129308480037511

namespace A016799

/-- `A016791(n)/A016789(n)*A016797(n)` -/
def P12059129308480037511.Spec : Prop :=
  ∀ n, P12059129308480037511.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P15471056599312203384

`A016792(n)/A016789(n)*A016796(n)`
-/

namespace A016799.P15471056599312203384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016792 n : ℚ) / (A016789 n : ℚ) * (A016796 n : ℚ)

end

end A016799.P15471056599312203384

namespace A016799

/-- `A016792(n)/A016789(n)*A016796(n)` -/
def P15471056599312203384.Spec : Prop :=
  ∀ n, P15471056599312203384.a n = (A016799 n : ℚ)

end A016799

/-! ## A016799.P12839695726745762176

`A016792(n)/A016793(n)*A016800(n)`
-/

namespace A016799.P12839695726745762176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016792 n : ℚ) / (A016793 n : ℚ) * (A016800 n : ℚ)

end

end A016799.P12839695726745762176

namespace A016799

/-- `A016792(n)/A016793(n)*A016800(n)` -/
def P12839695726745762176.Spec : Prop :=
  ∀ n, P12839695726745762176.a n = (A016799 n : ℚ)

end A016799

