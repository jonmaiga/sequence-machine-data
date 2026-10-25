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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A338803: Product of the nonzero digits of (n written in base 5).

The programs for A338803, the canonical program `A338803.P379957158439633844` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338803 has offset 0).

The definition of A338803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338803.P379957158439633844

`∏{digits}[A007091(n), A000792(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338803

/-- `∏{digits}[A007091(n), A000792(#)]` -/
def P379957158439633844.Spec : Prop :=
  ∀ n, P379957158439633844.a n = A338803 n

theorem P379957158439633844.correct : P379957158439633844.Spec := by
  intro n
  simp only [A338803]

end A338803

/-! ## A338803.P16844845038922005861

`∏{digits}[A007091(n), A001399(#)]`
-/

namespace A338803.P16844845038922005861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001399 x).prod

end

end A338803.P16844845038922005861

namespace A338803

/-- `∏{digits}[A007091(n), A001399(#)]` -/
def P16844845038922005861.Spec : Prop :=
  ∀ n, P16844845038922005861.a n = A338803 n

end A338803

/-! ## A338803.P8970141169142330087

`∏{digits}[A007091(n), A005428(#)]`
-/

namespace A338803.P8970141169142330087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005428 x).prod

end

end A338803.P8970141169142330087

namespace A338803

/-- `∏{digits}[A007091(n), A005428(#)]` -/
def P8970141169142330087.Spec : Prop :=
  ∀ n, P8970141169142330087.a n = A338803 n

end A338803

/-! ## A338803.P5029654220491675827

`∏{digits}[A007091(n), A028310(#)]`
-/

namespace A338803.P5029654220491675827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A338803.P5029654220491675827

namespace A338803

/-- `∏{digits}[A007091(n), A028310(#)]` -/
def P5029654220491675827.Spec : Prop :=
  ∀ n, P5029654220491675827.a n = A338803 n

end A338803

/-! ## A338803.P8971001452686333544

`∏{digits}[A007091(n), A051802(#)]`
-/

namespace A338803.P8971001452686333544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051802 x).prod

end

end A338803.P8971001452686333544

namespace A338803

/-- `∏{digits}[A007091(n), A051802(#)]` -/
def P8971001452686333544.Spec : Prop :=
  ∀ n, P8971001452686333544.a n = A338803 n

end A338803

/-! ## A338803.P12986362922423451256

`∏{digits}[A007091(n), A162683(#)]`
-/

namespace A338803.P12986362922423451256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A162683 x).prod

end

end A338803.P12986362922423451256

namespace A338803

/-- `∏{digits}[A007091(n), A162683(#)]` -/
def P12986362922423451256.Spec : Prop :=
  ∀ n, P12986362922423451256.a n = A338803 n

end A338803

/-! ## A338803.P6279380189752920596

`∏{digits}[A007091(n), A210062(#)]`
-/

namespace A338803.P6279380189752920596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A210062 x).prod

end

end A338803.P6279380189752920596

namespace A338803

/-- `∏{digits}[A007091(n), A210062(#)]` -/
def P6279380189752920596.Spec : Prop :=
  ∀ n, P6279380189752920596.a n = A338803 n

end A338803

/-! ## A338803.P13039142162788881024

`A338863(A037465(n))`
-/

namespace A338803.P13039142162788881024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A037465 n).toNat

end

end A338803.P13039142162788881024

namespace A338803

/-- `A338863(A037465(n))` -/
def P13039142162788881024.Spec : Prop :=
  ∀ n, P13039142162788881024.a n = A338803 n

end A338803

/-! ## A338803.P14832573371536474660

`filter[A338863(n), A011558(#)]`
-/

namespace A338803.P14832573371536474660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A338803.P14832573371536474660

namespace A338803

/-- `filter[A338863(n), A011558(#)]` -/
def P14832573371536474660.Spec : Prop :=
  ∀ n, P14832573371536474660.a n = A338803 n

end A338803

/-! ## A338803.P17403701454131103635

`filter[A338863(n), A065333(#)]`
-/

namespace A338803.P17403701454131103635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A338803.P17403701454131103635

namespace A338803

/-- `filter[A338863(n), A065333(#)]` -/
def P17403701454131103635.Spec : Prop :=
  ∀ n, P17403701454131103635.a n = A338803 n

end A338803

/-! ## A338803.P5788502785479449971

`filter[A338863(n), A358847(#)]`
-/

namespace A338803.P5788502785479449971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A338803.P5788502785479449971

namespace A338803

/-- `filter[A338863(n), A358847(#)]` -/
def P5788502785479449971.Spec : Prop :=
  ∀ n, P5788502785479449971.a n = A338803 n

end A338803

/-! ## A338803.P4693170825992405456

`filter[A338863(n), A364252(#)]`
-/

namespace A338803.P4693170825992405456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A338803.P4693170825992405456

namespace A338803

/-- `filter[A338863(n), A364252(#)]` -/
def P4693170825992405456.Spec : Prop :=
  ∀ n, P4693170825992405456.a n = A338803 n

end A338803

/-! ## A338803.P13644516303537448021

`A338880(A037466(n))`
-/

namespace A338803.P13644516303537448021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338880 (A037466 n).toNat

end

end A338803.P13644516303537448021

namespace A338803

/-- `A338880(A037466(n))` -/
def P13644516303537448021.Spec : Prop :=
  ∀ n, P13644516303537448021.a n = A338803 n

end A338803

/-! ## A338803.P6967064615161844011

`A338881(A037467(n))`
-/

namespace A338803.P6967064615161844011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 (A037467 n).toNat

end

end A338803.P6967064615161844011

namespace A338803

/-- `A338881(A037467(n))` -/
def P6967064615161844011.Spec : Prop :=
  ∀ n, P6967064615161844011.a n = A338803 n

end A338803

/-! ## A338803.P2757117404693754673

`A338882(A037468(n))`
-/

namespace A338803.P2757117404693754673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 (A037468 n).toNat

end

end A338803.P2757117404693754673

namespace A338803

/-- `A338882(A037468(n))` -/
def P2757117404693754673.Spec : Prop :=
  ∀ n, P2757117404693754673.a n = A338803 n

end A338803

/-! ## A338803.P8217925445301900975

`A051801(A007091(n))`
-/

namespace A338803.P8217925445301900975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007091 n).toNat

end

end A338803.P8217925445301900975

namespace A338803

/-- `A051801(A007091(n))` -/
def P8217925445301900975.Spec : Prop :=
  ∀ n, P8217925445301900975.a n = A338803 n

end A338803

/-! ## A338803.P14520721859619131344

`A051801(record[A106747(n)])`
-/

namespace A338803.P14520721859619131344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338803.P14520721859619131344

namespace A338803

/-- `A051801(record[A106747(n)])` -/
def P14520721859619131344.Spec : Prop :=
  ∀ n, P14520721859619131344.a n = A338803 n

end A338803

/-! ## A338803.P11808730516361557042

`A338882(record[A316823(n)])`
-/

namespace A338803.P11808730516361557042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338803.P11808730516361557042

namespace A338803

/-- `A338882(record[A316823(n)])` -/
def P11808730516361557042.Spec : Prop :=
  ∀ n, P11808730516361557042.a n = A338803 n

end A338803

/-!
# A338807: Numbers k such that the process starting at (k, 0) mapping (k, t) to (k+1, t+k) if t = 0 (mod k), and (k-1, t+k) otherwise, eventually reaches (1, T) for some T.

The programs for A338807, there is no canonical definition to state claims against.
-/

/-! ## A338807.P4127821879820188098

`∑[A055439(A052179(n)*A194073(n+1))]`
-/

namespace A338807.P4127821879820188098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055439 (A052179 n * A194073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338807.P4127821879820188098

/-!
# A338809: Number of polyhedra formed when an n-bipyramid, formed from two n-gonal pyraminds joined at the base, is internally cut by all the planes defined by any three of its vertices.

The programs for A338809, there is no canonical definition to state claims against.
-/

/-! ## A338809.P16696040920138590959

`A354363(A217899(n+1)+A004148(n+4)+1)`
-/

namespace A338809.P16696040920138590959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354363 (A217899 (n + 1) + A004148 (n + 4) + 1).toNat

end

end A338809.P16696040920138590959

/-!
# A338810: a(n) = (n!/2) * Sum_{k=1..n-1} d(k)*d(n-k)/(k*(n-k)), where d(n) is the number of divisors of n.

The programs for A338810, there is no canonical definition to state claims against.
-/

/-! ## A338810.P17059820048897077439

`A338805(A133263(n))-A000007(n)`
-/

namespace A338810.P17059820048897077439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338805 (A133263 n).toNat - A000007 n

end

end A338810.P17059820048897077439

/-! ## A338810.P603346280582222463

`lcm(A117707(n), A338805(A133263(n)))`
-/

namespace A338810.P603346280582222463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117707 n) (A338805 (A133263 n).toNat)

end

end A338810.P603346280582222463

/-! ## A338810.P7030213241177251436

`A338805(A133263(n))-A049084(2*(n+1))`
-/

namespace A338810.P7030213241177251436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338805 (A133263 n).toNat - A049084 (2 * (n + 1))

end

end A338810.P7030213241177251436

/-! ## A338810.P11476534365638061781

`A088705(A006257(n))*A338805(A133263(n))`
-/

namespace A338810.P11476534365638061781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A006257 n).toNat * A338805 (A133263 n).toNat

end

end A338810.P11476534365638061781

/-! ## A338810.P16115770835584944724

`A001222(A027746(n+1))*A338805(A133263(n))`
-/

namespace A338810.P16115770835584944724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027746 (n + 1)).toNat * A338805 (A133263 n).toNat

end

end A338810.P16115770835584944724

/-!
# A338811: a(n) = (n!/6) * Sum_{i,j,k > 0 and i+j+k=n} d(i)*d(j)*d(k)/(i*j*k), where d(n) is the number of divisors of n.

The programs for A338811, there is no canonical definition to state claims against.
-/

/-! ## A338811.P11496565480978434783

`and(-A004526(n), A338805(∑[n]+3))`
-/

namespace A338811.P11496565480978434783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A004526 n) (A338805 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A338811.P11496565480978434783

/-! ## A338811.P10437073301765528307

`lcm(A002266(n+3), A338805(∑[n]+3))`
-/

namespace A338811.P10437073301765528307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002266 (n + 3)) (A338805 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A338811.P10437073301765528307

/-! ## A338811.P13451917003898458756

`char[A245134(n+1)]*A338805(∑[n]+3)`
-/

namespace A338811.P13451917003898458756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A338805 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

end

end A338811.P13451917003898458756

/-! ## A338811.P11374050842492810481

`A338805(A152950(n+1))%A000312(n)`
-/

namespace A338811.P11374050842492810481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338805 (A152950 (n + 1)).toNat) (A000312 n)

end

end A338811.P11374050842492810481

/-! ## A338811.P12355528952080002042

`A001221(A070939(n))*A338805(∑[n]+3)`
-/

namespace A338811.P12355528952080002042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A070939 n).toNat * A338805 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A338811.P12355528952080002042

/-!
# A338814: Expansion of e.g.f. log(Product_{k>0} (1 + x^k)^(1/k)).

The programs for A338814, the canonical program `A338814.P4014176368105778974` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338814 has offset 1).

The definition of A338814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338814.P4014176368105778974

`n!*∑{d}[n+1, (-1)^(#+1)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338814

/-- `n!*∑{d}[n+1, (-1)^(#+1)]` -/
def P4014176368105778974.Spec : Prop :=
  ∀ n, P4014176368105778974.a n = A338814 (n + 1)

theorem P4014176368105778974.correct : P4014176368105778974.Spec := by
  intro n
  simp only [A338814, Nat.add_sub_cancel]

end A338814

/-! ## A338814.P4910292745857004673

`n!*A048272(n+1)`
-/

namespace A338814.P4910292745857004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A048272 (n + 1)

end

end A338814.P4910292745857004673

namespace A338814

/-- `n!*A048272(n+1)` -/
def P4910292745857004673.Spec : Prop :=
  ∀ n, P4910292745857004673.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P8312285946219510844

`∏[round(1/acot(n))]*∑{d}[n+1, -(-1)^#]`
-/

namespace A338814.P8312285946219510844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d)))

end

end A338814.P8312285946219510844

namespace A338814

/-- `∏[round(1/acot(n))]*∑{d}[n+1, -(-1)^#]` -/
def P8312285946219510844.Spec : Prop :=
  ∀ n, P8312285946219510844.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P2909554369389217601

`∏[round(sqrt(n²+1))]*∑{d}[n+1, -(-1)^#]`
-/

namespace A338814.P2909554369389217601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d)))

end

end A338814.P2909554369389217601

namespace A338814

/-- `∏[round(sqrt(n²+1))]*∑{d}[n+1, -(-1)^#]` -/
def P2909554369389217601.Spec : Prop :=
  ∀ n, P2909554369389217601.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P1618832463797336581

`A338813(∑[n]+1)`
-/

namespace A338814.P1618832463797336581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338813 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A338814.P1618832463797336581

namespace A338814

/-- `A338813(∑[n]+1)` -/
def P1618832463797336581.Spec : Prop :=
  ∀ n, P1618832463797336581.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P10430863757235272099

`n!*Δ[A059851(n)]`
-/

namespace A338814.P10430863757235272099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A338814.P10430863757235272099

namespace A338814

/-- `n!*Δ[A059851(n)]` -/
def P10430863757235272099.Spec : Prop :=
  ∀ n, P10430863757235272099.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P17828747049293888437

`Δ[A059851(n)]*A000142(n)`
-/

namespace A338814.P17828747049293888437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A338814.P17828747049293888437

namespace A338814

/-- `Δ[A059851(n)]*A000142(n)` -/
def P17828747049293888437.Spec : Prop :=
  ∀ n, P17828747049293888437.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P7197007397235516434

`A000142(n)*A048272(n+1)`
-/

namespace A338814.P7197007397235516434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A048272 (n + 1)

end

end A338814.P7197007397235516434

namespace A338814

/-- `A000142(n)*A048272(n+1)` -/
def P7197007397235516434.Spec : Prop :=
  ∀ n, P7197007397235516434.a n = A338814 (n + 1)

end A338814

/-! ## A338814.P4384741602917400839

`(A001227(n+1)-A183063(n+1))*A000142(n)`
-/

namespace A338814.P4384741602917400839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) - A183063 (n + 1)) * A000142 n

end

end A338814.P4384741602917400839

namespace A338814

/-- `(A001227(n+1)-A183063(n+1))*A000142(n)` -/
def P4384741602917400839.Spec : Prop :=
  ∀ n, P4384741602917400839.a n = A338814 (n + 1)

end A338814

/-!
# A338817: Matrix inverse of triangle A176270, read by rows.

The programs for A338817, there is no canonical definition to state claims against.
-/

/-! ## A338817.P8987048753009693887

`Δ[A213936(n+1)%A136216(n)-A094587(n)]`
-/

namespace A338817.P8987048753009693887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213936 (n + 1)) (A136216 n) - A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338817.P8987048753009693887

/-!
# A338818: Primes p such that the sum of squares of primes < p is divisible by p.

The programs for A338818, there is no canonical definition to state claims against.
-/

/-! ## A338818.P7621041149990094900

`A001748(A077022(n+1))/3`
-/

namespace A338818.P7621041149990094900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A077022 (n + 1)).toNat : ℚ) / 3

end

end A338818.P7621041149990094900

/-!
# A338819: The entries in the rows of the n X n identity matrix, multiplied by the size of the matrix (n).

The programs for A338819, there is no canonical definition to state claims against.
-/

/-! ## A338819.P2553192770318746105

`char[A191748(n)-1]*A328806(n)`
-/

namespace A338819.P2553192770318746105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328806 n

end

end A338819.P2553192770318746105

/-! ## A338819.P16915751608348690165

`char[A023443(A191748(n))]*A328806(n)`
-/

namespace A338819.P16915751608348690165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191748 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328806 n

end

end A338819.P16915751608348690165

/-! ## A338819.P669005273986751519

`∑[char[∑[n²]]]*A191747(n+1)`
-/

namespace A338819.P669005273986751519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A191747 (n + 1)

end

end A338819.P669005273986751519

/-! ## A338819.P5004608387123751993

`A191747(n+1)*A328806(n)`
-/

namespace A338819.P5004608387123751993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191747 (n + 1) * A328806 n

end

end A338819.P5004608387123751993

/-! ## A338819.P16860640388942516582

`sqrt(A191747(n+1)*A213083(n+1))`
-/

namespace A338819.P16860640388942516582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A191747 (n + 1) * A213083 (n + 1) : ℝ)

end

end A338819.P16860640388942516582

/-!
# A338821: Primes prime(k) such that A338820(k) is prime.

The programs for A338821, there is no canonical definition to state claims against.
-/

/-! ## A338821.P16644953976360157478

`A060852(n+1)+A008576((round(sqrt(2*(n+1)))+1)²+2*n+1)`
-/

namespace A338821.P16644953976360157478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060852 (n + 1) + A008576 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A338821.P16644953976360157478

/-!
# A338822: a(n) is the number of divisors of n whose last digits equal the number of digits of n.

The programs for A338822, there is no canonical definition to state claims against.
-/

/-! ## A338822.P2284799830394474571

`or(A010054(A008000(n)), A083912(n+1))`
-/

namespace A338822.P2284799830394474571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A008000 n).toNat) (A083912 (n + 1))

end

end A338822.P2284799830394474571

/-! ## A338822.P5115494606582005593

`or(A008966(A214078(n)), A083912(n+1))`
-/

namespace A338822.P5115494606582005593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (A214078 n).toNat) (A083912 (n + 1))

end

end A338822.P5115494606582005593

/-! ## A338822.P7543148845109595102

`or(A010054(A113010(n)), A083912(n+1))`
-/

namespace A338822.P7543148845109595102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A113010 n).toNat) (A083912 (n + 1))

end

end A338822.P7543148845109595102

/-! ## A338822.P3987078031965735988

`gcd(A083912(n+1), A221362(n+1))`
-/

namespace A338822.P3987078031965735988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083912 (n + 1)) (A221362 (n + 1))

end

end A338822.P3987078031965735988

/-! ## A338822.P14588413885127995547

`or(A010054(A047920(n)), A083912(n+1))`
-/

namespace A338822.P14588413885127995547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A047920 n).toNat) (A083912 (n + 1))

end

end A338822.P14588413885127995547

/-!
# A338824: Lexicographically earliest sequence of nonnegative integers such that for any distinct m and n, a(m) OR a(m+1) <> a(n) OR a(n+1) (where OR denotes the bitwise OR operator).

The programs for A338824, the canonical program `A338824.P16062095441418077895` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338824 has offset 1).

The definition of A338824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338824.P16062095441418077895

`gcd(n, ∑[xor(1, n)])-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338824

/-- `gcd(n, ∑[xor(1, n)])-1` -/
def P16062095441418077895.Spec : Prop :=
  ∀ n, P16062095441418077895.a n = A338824 (n + 1)

theorem P16062095441418077895.correct : P16062095441418077895.Spec := by
  intro n
  simp only [A338824, Nat.add_sub_cancel]

end A338824

/-! ## A338824.P4727855313784470236

`C(and(n, n-1), abs(2-n))`
-/

namespace A338824.P4727855313784470236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat |2 - (n : ℤ)|.toNat

end

end A338824.P4727855313784470236

namespace A338824

/-- `C(and(n, n-1), abs(2-n))` -/
def P4727855313784470236.Spec : Prop :=
  ∀ n, (P4727855313784470236.a n : ℤ) = A338824 (n + 1)

end A338824

/-! ## A338824.P13825256570607442838

`xor(1, n)%(char[4*n]+n)`
-/

namespace A338824.P13825256570607442838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A338824.P13825256570607442838

namespace A338824

/-- `xor(1, n)%(char[4*n]+n)` -/
def P13825256570607442838.Spec : Prop :=
  ∀ n, (P13825256570607442838.a n : ℤ) = A338824 (n + 1)

end A338824

/-! ## A338824.P16221225949828988275

`(n-1)%(8/gcd(8, n²))!`
-/

namespace A338824.P16221225949828988275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (Nat.factorial (SequenceMachineLib.roundAway (8 / (Nat.gcd 8 (n ^ 2) : ℚ))).toNat : ℤ)

end

end A338824.P16221225949828988275

namespace A338824

/-- `(n-1)%(8/gcd(8, n²))!` -/
def P16221225949828988275.Spec : Prop :=
  ∀ n, P16221225949828988275.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P9127207133054472406

`Δ[ceil((n-2)*xor(1, n)/4)]`
-/

namespace A338824.P9127207133054472406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) * ((Nat.xor 1 n : ℚ) / 4)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338824.P9127207133054472406

namespace A338824

/-- `Δ[ceil((n-2)*xor(1, n)/4)]` -/
def P9127207133054472406.Spec : Prop :=
  ∀ n, P9127207133054472406.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P1338095019379423762

`xor(n*and(1, n), floor(sqrt(and(3, n))))`
-/

namespace A338824.P1338095019379423762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n * Nat.land 1 n) (Nat.sqrt (Nat.land 3 n))

end

end A338824.P1338095019379423762

namespace A338824

/-- `xor(n*and(1, n), floor(sqrt(and(3, n))))` -/
def P1338095019379423762.Spec : Prop :=
  ∀ n, (P1338095019379423762.a n : ℤ) = A338824 (n + 1)

end A338824

/-! ## A338824.P6332161526281769973

`xor(1, a(n-2))+n%2` with `a(0)=0, a(1)=0`
-/

namespace A338824.P6332161526281769973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.xor 1 (a (n - 2)) + n % 2

end

end A338824.P6332161526281769973

namespace A338824

/-- `xor(1, a(n-2))+n%2` -/
def P6332161526281769973.Spec : Prop :=
  ∀ n, (P6332161526281769973.a n : ℤ) = A338824 (n + 1)

end A338824

/-! ## A338824.P17533212693953048396

`xor(1, a(n-2))+and(1, n)` with `a(0)=0, a(1)=0`
-/

namespace A338824.P17533212693953048396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.xor 1 (a (n - 2)) + Nat.land 1 n

end

end A338824.P17533212693953048396

namespace A338824

/-- `xor(1, a(n-2))+and(1, n)` -/
def P17533212693953048396.Spec : Prop :=
  ∀ n, (P17533212693953048396.a n : ℤ) = A338824 (n + 1)

end A338824

/-! ## A338824.P4735886549840127275

`(lcm(4, 3*n+2)+2)%(n+1)`
-/

namespace A338824.P4735886549840127275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (3 * n + 2) + 2) % (n + 1)

end

end A338824.P4735886549840127275

namespace A338824

/-- `(lcm(4, 3*n+2)+2)%(n+1)` -/
def P4735886549840127275.Spec : Prop :=
  ∀ n, (P4735886549840127275.a n : ℤ) = A338824 (n + 1)

end A338824

/-! ## A338824.P14783457842547562562

`and(1-C(2, gcd(n+2, 2*n)), n-1)`
-/

namespace A338824.P14783457842547562562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (Nat.choose 2 (Nat.gcd (n + 2) (2 * n)) : ℤ)) ((n : ℤ) - 1)

end

end A338824.P14783457842547562562

namespace A338824

/-- `and(1-C(2, gcd(n+2, 2*n)), n-1)` -/
def P14783457842547562562.Spec : Prop :=
  ∀ n, P14783457842547562562.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P10036895417208458002

`gcd(1-n, floor(a(n-1)/2))-a(a(n-1))` with `a(0)=0`
-/

namespace A338824.P10036895417208458002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd (1 - (n : ℤ)) ⌊(a (n - 1) : ℚ) / 2⌋ : ℤ) - a (a (n - 1)).toNat

end

end A338824.P10036895417208458002

namespace A338824

/-- `gcd(1-n, floor(a(n-1)/2))-a(a(n-1))` -/
def P10036895417208458002.Spec : Prop :=
  ∀ n, P10036895417208458002.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P2384471134705985951

`gcd(n, A027656(n))-1`
-/

namespace A338824.P2384471134705985951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A027656 n) : ℤ) - 1

end

end A338824.P2384471134705985951

namespace A338824

/-- `gcd(n, A027656(n))-1` -/
def P2384471134705985951.Spec : Prop :=
  ∀ n, P2384471134705985951.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P2537698580042460581

`A124625(n)-A121262(n)`
-/

namespace A338824.P2537698580042460581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n - A121262 n

end

end A338824.P2537698580042460581

namespace A338824

/-- `A124625(n)-A121262(n)` -/
def P2537698580042460581.Spec : Prop :=
  ∀ n, P2537698580042460581.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P6831477218342567173

`A093178(n)-A152822(n)`
-/

namespace A338824.P6831477218342567173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A152822 n

end

end A338824.P6831477218342567173

namespace A338824

/-- `A093178(n)-A152822(n)` -/
def P6831477218342567173.Spec : Prop :=
  ∀ n, P6831477218342567173.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P606667397333809897

`A116996(n)-A131179(n)`
-/

namespace A338824.P606667397333809897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116996 n - A131179 n

end

end A338824.P606667397333809897

namespace A338824

/-- `A116996(n)-A131179(n)` -/
def P606667397333809897.Spec : Prop :=
  ∀ n, P606667397333809897.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P15686847566252455047

`A216972(n)-A088440(n)`
-/

namespace A338824.P15686847566252455047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 n - A088440 n

end

end A338824.P15686847566252455047

namespace A338824

/-- `A216972(n)-A088440(n)` -/
def P15686847566252455047.Spec : Prop :=
  ∀ n, P15686847566252455047.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P2914099933247532094

`A055998(n)-A266617(n)`
-/

namespace A338824.P2914099933247532094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n - A266617 n

end

end A338824.P2914099933247532094

namespace A338824

/-- `A055998(n)-A266617(n)` -/
def P2914099933247532094.Spec : Prop :=
  ∀ n, P2914099933247532094.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P3246447043150194242

`A104563(n)-A247375(n)`
-/

namespace A338824.P3246447043150194242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - A247375 n

end

end A338824.P3246447043150194242

namespace A338824

/-- `A104563(n)-A247375(n)` -/
def P3246447043150194242.Spec : Prop :=
  ∀ n, P3246447043150194242.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P15228238088531990144

`A124625(n)*A166486(n)`
-/

namespace A338824.P15228238088531990144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n * A166486 n

end

end A338824.P15228238088531990144

namespace A338824

/-- `A124625(n)*A166486(n)` -/
def P15228238088531990144.Spec : Prop :=
  ∀ n, P15228238088531990144.a n = A338824 (n + 1)

end A338824

/-! ## A338824.P3061767045297888346

`A004442(n)%A098180(n)`
-/

namespace A338824.P3061767045297888346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 n) (A098180 n)

end

end A338824.P3061767045297888346

namespace A338824

/-- `A004442(n)%A098180(n)` -/
def P3061767045297888346.Spec : Prop :=
  ∀ n, P3061767045297888346.a n = A338824 (n + 1)

end A338824

/-!
# A338826: G.f.: (1/(1 + x)) * Product_{k>=1} 1/(1 + x^prime(k)).

The programs for A338826, there is no canonical definition to state claims against.
-/

/-! ## A338826.P15604770216612415912

`A048165(n)-a(n-1)` with `a(0)=1`
-/

namespace A338826.P15604770216612415912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048165 n - a (n - 1)

end

end A338826.P15604770216612415912

/-! ## A338826.P8682469581800317598

`A184198(n)-A184199(n)-a(n-1)` with `a(0)=1`
-/

namespace A338826.P8682469581800317598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184198 n - A184199 n - a (n - 1)

end

end A338826.P8682469581800317598

/-! ## A338826.P14075938814467302952

`2*A339380(n)-A034891(n)`
-/

namespace A338826.P14075938814467302952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339380 n - A034891 n

end

end A338826.P14075938814467302952

/-! ## A338826.P9851243661025876425

`2*A339380(n)-∑[A000607(n)]`
-/

namespace A338826.P9851243661025876425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339380 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338826.P9851243661025876425

/-! ## A338826.P16777446766307648369

`A184198(n+1)+A339380(n)-A339380(n+1)`
-/

namespace A338826.P16777446766307648369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (n + 1) + (A339380 n - A339380 (n + 1))

end

end A338826.P16777446766307648369

/-! ## A338826.P12566629003689457004

`A339380(n)-A339381(n)`
-/

namespace A338826.P12566629003689457004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339380 n - A339381 n

end

end A338826.P12566629003689457004

/-! ## A338826.P10825901889997883472

`A034891(n)-2*A339381(n)`
-/

namespace A338826.P10825901889997883472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - 2 * A339381 n

end

end A338826.P10825901889997883472

/-! ## A338826.P15896770969334042960

`∑[A000607(n)]-2*A339381(n)`
-/

namespace A338826.P15896770969334042960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339381 n

end

end A338826.P15896770969334042960

/-! ## A338826.P17054396992503022845

`A339381(n+1)-(A339381(n)+A184199(n+1))`
-/

namespace A338826.P17054396992503022845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339381 (n + 1) - (A339381 n + A184199 (n + 1))

end

end A338826.P17054396992503022845

/-! ## A338826.P13012839519295784359

`A034891(n)-A005843(A339381(n))`
-/

namespace A338826.P13012839519295784359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A005843 (A339381 n).toNat

end

end A338826.P13012839519295784359

/-!
# A338827: For any number with decimal representation (d(1), d(2), ..., d(k)), the decimal representation of a(n) is (abs(d(1)-d(k)), abs(d(2)-d(k-1)), ..., abs(d(k)-d(1))).

The programs for A338827, there is no canonical definition to state claims against.
-/

/-! ## A338827.P5243488685811885798

`2*A265558(n)-A056964(n)`
-/

namespace A338827.P5243488685811885798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265558 n - A056964 n

end

end A338827.P5243488685811885798

/-! ## A338827.P5976387764380097813

`A056964(A265558(n))-A056964(n)`
-/

namespace A338827.P5976387764380097813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A265558 n).toNat - A056964 n

end

end A338827.P5976387764380097813

/-! ## A338827.P10760623865119901418

`A005408(A265558(n))-A160927(n+1)`
-/

namespace A338827.P10760623865119901418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A265558 n).toNat - A160927 (n + 1)

end

end A338827.P10760623865119901418

/-! ## A338827.P8380310621200991541

`A005843(A265558(n))-(2*n-A056965(n))`
-/

namespace A338827.P8380310621200991541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265558 n).toNat - ((2 * n : ℤ) - A056965 n)

end

end A338827.P8380310621200991541

/-! ## A338827.P767351052263506445

`A005843(A265558(n))-(A340479(n)+A066568(n))`
-/

namespace A338827.P767351052263506445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265558 n).toNat - (A340479 n + A066568 n)

end

end A338827.P767351052263506445

/-! ## A338827.P10857511065065299701

`A005843(A265558(n))-(A004093(5*n)+n)`
-/

namespace A338827.P10857511065065299701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265558 n).toNat - (A004093 (5 * n) + (n : ℤ))

end

end A338827.P10857511065065299701

/-! ## A338827.P11584670446020663760

`A005843(A265558(n))-(A103168(A008706(2*n))+n)`
-/

namespace A338827.P11584670446020663760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265558 n).toNat - (A103168 (A008706 (2 * n)).toNat + (n : ℤ))

end

end A338827.P11584670446020663760

/-! ## A338827.P18013078144197333039

`A064834(n)*A136400(A239217(n+1))`
-/

namespace A338827.P18013078144197333039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n * A136400 (A239217 (n + 1)).toNat

end

end A338827.P18013078144197333039

/-! ## A338827.P7608177785466811093

`A033865(A064834(n)*A136400(n))`
-/

namespace A338827.P7608177785466811093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A064834 n * A136400 n).toNat

end

end A338827.P7608177785466811093

/-! ## A338827.P2265356713081718610

`A151950(A087019(n))%A166626(n+1)`
-/

namespace A338827.P2265356713081718610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151950 (A087019 n).toNat) (A166626 (n + 1))

end

end A338827.P2265356713081718610

/-! ## A338827.P6278171385255316349

`A004086(A000196(n²))+n-A005843(A265525(n))`
-/

namespace A338827.P6278171385255316349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000196 (n ^ 2)).toNat + (n : ℤ) - A005843 (A265525 n).toNat

end

end A338827.P6278171385255316349

/-! ## A338827.P13168845438239735417

`A040115(A056142(n))`
-/

namespace A338827.P13168845438239735417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 (A056142 n).toNat

end

end A338827.P13168845438239735417

/-! ## A338827.P8455527529935515221

`A151950(A056143(n))`
-/

namespace A338827.P8455527529935515221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A056143 n).toNat

end

end A338827.P8455527529935515221

/-! ## A338827.P16244201009279298603

`A151950(A181352(n))`
-/

namespace A338827.P16244201009279298603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A181352 n).toNat

end

end A338827.P16244201009279298603

/-! ## A338827.P173009800067539423

`A118759(11*A151950(n))`
-/

namespace A338827.P173009800067539423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (11 * A151950 n).toNat

end

end A338827.P173009800067539423

/-! ## A338827.P5893777087380997281

`11*A347689(A118759(n))`
-/

namespace A338827.P5893777087380997281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A347689 (A118759 n).toNat

end

end A338827.P5893777087380997281

/-! ## A338827.P9688549139300236467

`A151950(A321536(n))/11`
-/

namespace A338827.P9688549139300236467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151950 (A321536 n).toNat : ℚ) / 11

end

end A338827.P9688549139300236467

/-!
# A338828: For any number with ternary representation (t(1), t(2), ..., t(k)), the ternary representation of a(n) is (abs(t(1)-t(k)), abs(t(2)-t(k-1)), ..., abs(t(k)-t(1))).

The programs for A338828, there is no canonical definition to state claims against.
-/

/-! ## A338828.P12198134600679666294

`2*A265544(n)-A055946(n)`
-/

namespace A338828.P12198134600679666294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265544 n - A055946 n

end

end A338828.P12198134600679666294

/-! ## A338828.P15057589235382481272

`A005843(A265544(n))-A055946(n)`
-/

namespace A338828.P15057589235382481272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265544 n).toNat - A055946 n

end

end A338828.P15057589235382481272

/-! ## A338828.P9212426717463071193

`2*A265544(n)+A055946(n)*A057428(n)`
-/

namespace A338828.P9212426717463071193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265544 n + A055946 n * A057428 n

end

end A338828.P9212426717463071193

/-! ## A338828.P3830989352499583409

`2*A265544(n)+A055946(n)*A165326(2*(n+1))`
-/

namespace A338828.P3830989352499583409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265544 n + A055946 n * A165326 (2 * (n + 1))

end

end A338828.P3830989352499583409

/-! ## A338828.P1491142819833216705

`A055946(A265544(n))-A055946(A292579(n))`
-/

namespace A338828.P1491142819833216705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 (A265544 n).toNat - A055946 (A292579 n).toNat

end

end A338828.P1491142819833216705

/-! ## A338828.P11894940379108913908

`A055946(A265544(n))+A055946(n)*A057428(n)`
-/

namespace A338828.P11894940379108913908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 (A265544 n).toNat + A055946 n * A057428 n

end

end A338828.P11894940379108913908

/-!
# A338829: a(n) is the greatest number not yet in the sequence with the same number of digits and the same sum of digits as n.

The programs for A338829, there is no canonical definition to state claims against.
-/

/-! ## A338829.P6134927189236342381

`lt[A377191(A342851(n+1)), 1]`
-/

namespace A338829.P6134927189236342381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 (A342851 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338829.P6134927189236342381

/-! ## A338829.P13982136726540711548

`lt[A110723(n), A273059(3*n+4)]`
-/

namespace A338829.P13982136726540711548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338829.P13982136726540711548

/-! ## A338829.P2274808434066878002

`∩[A140665(n+1), A173899(n+1)]`
-/

namespace A338829.P2274808434066878002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338829.P2274808434066878002

/-! ## A338829.P8076450320249873408

`eq[A000030(n), A081600(A076314(n))]`
-/

namespace A338829.P8076450320249873408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A076314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338829.P8076450320249873408

/-! ## A338829.P12991814223958933740

`lt[A110723(n), A106529(A017029(n))]`
-/

namespace A338829.P12991814223958933740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106529 (A017029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338829.P12991814223958933740

/-!
# A338830: a(n) is the greatest number not yet in the sequence with the same number of digits and the same largest digit as n.

The programs for A338830, there is no canonical definition to state claims against.
-/

/-! ## A338830.P13875116902873188407

`xor(A136522(A152743(2*(n+2))), A265558(n))`
-/

namespace A338830.P13875116902873188407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136522 (A152743 (2 * (n + 2))).toNat) (A265558 n)

end

end A338830.P13875116902873188407

/-! ## A338830.P5095202488019245818

`A172270(A065649(n))%A003863(n+1)`
-/

namespace A338830.P5095202488019245818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172270 (A065649 n).toNat) (A003863 (n + 1))

end

end A338830.P5095202488019245818

/-! ## A338830.P15839657727203473538

`A265558(n)-A326499(A328867(3*(n+1)))`
-/

namespace A338830.P15839657727203473538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 n - A326499 ((A328867 (3 * (n + 1))).toNat + 50)

end

end A338830.P15839657727203473538

/-!
# A338831: a(n) is the greatest number not yet in the sequence with the same number of digits and the same smallest digit as n.

The programs for A338831, there is no canonical definition to state claims against.
-/

/-! ## A338831.P1444409523862561371

`A345406(n+1)%A065256(A001844(2*n+3))`
-/

namespace A338831.P1444409523862561371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345406 (n + 1)) (A065256 (A001844 (2 * n + 3)).toNat)

end

end A338831.P1444409523862561371

/-!
# A338832: Number of spanning trees in the k_1 X ... X k_j grid graph, where (k_1 - 1, ..., k_j - 1) is the partition with Heinz number n.

The programs for A338832, there is no canonical definition to state claims against.
-/

/-! ## A338832.P13422423084389875638

`A090844(A239632(n))`
-/

namespace A338832.P13422423084389875638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090844 (A239632 n).toNat

end

end A338832.P13422423084389875638

/-! ## A338832.P16386519314803605454

`A007602(A015888(n+1)^(n%floor(sqrt(n+1))))`
-/

namespace A338832.P16386519314803605454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (A015888 (n + 1) ^ (n % Nat.sqrt (n + 1))).toNat

end

end A338832.P16386519314803605454

/-! ## A338832.P4726484159477574192

`A285646(C(A288726(n), A288697(n)))`
-/

namespace A338832.P4726484159477574192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285646 (Nat.choose (A288726 n).toNat (A288697 n).toNat)

end

end A338832.P4726484159477574192

/-! ## A338832.P5642475596577058194

`A286701(C(A288726(n), A288697(n)))`
-/

namespace A338832.P5642475596577058194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286701 (Nat.choose (A288726 n).toNat (A288697 n).toNat)

end

end A338832.P5642475596577058194

/-!
# A338834: a(n) is the greatest number not yet in the sequence with the same number of digits and the same sum of digits as n in factorial base.

The programs for A338834, there is no canonical definition to state claims against.
-/

/-! ## A338834.P15173826129686587675

`A338835(n)-A336107(A000041(n))`
-/

namespace A338834.P15173826129686587675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338835 n - A336107 (A000041 n).toNat

end

end A338834.P15173826129686587675

/-! ## A338834.P14690422180656645970

`A338835(A184955(A004128(n))+n)`
-/

namespace A338834.P14690422180656645970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338835 (A184955 (A004128 n).toNat + (n : ℤ)).toNat

end

end A338834.P14690422180656645970

/-! ## A338834.P6701233114463162713

`A338835(n)-A184955(A004128(n))`
-/

namespace A338834.P6701233114463162713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338835 n - A184955 (A004128 n).toNat

end

end A338834.P6701233114463162713

/-! ## A338834.P17460489922188722361

`A338835(n)-A184955(A329269(n+1))`
-/

namespace A338834.P17460489922188722361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338835 n - A184955 (A329269 (n + 1)).toNat

end

end A338834.P17460489922188722361

/-!
# A338835: a(n) is the greatest number not yet in the sequence with the same number of digits and the same sum of digits as n in primorial base.

The programs for A338835, there is no canonical definition to state claims against.
-/

/-! ## A338835.P13860387597589154316

`A338834(n)+A184955(A004128(n))`
-/

namespace A338835.P13860387597589154316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338834 n + A184955 (A004128 n).toNat

end

end A338835.P13860387597589154316

/-! ## A338835.P4265854280222993165

`A338834(n)+A333755(A157147(n))`
-/

namespace A338835.P4265854280222993165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338834 n + A333755 (A157147 n).toNat

end

end A338835.P4265854280222993165

/-! ## A338835.P3665957358885413972

`A349798(A306860(n))+A338834(n)`
-/

namespace A338835.P3665957358885413972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A306860 n).toNat + A338834 n

end

end A338835.P3665957358885413972

/-! ## A338835.P2056637136231112615

`A338834(n)+A184955(A329269(n+1))`
-/

namespace A338835.P2056637136231112615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338834 n + A184955 (A329269 (n + 1)).toNat

end

end A338835.P2056637136231112615

/-!
# A338838: Triangle read by rows: T(n,k) is the number of permutations of k elements from [1..n] where adjacent values cannot be consecutive modulo n.

The programs for A338838, there is no canonical definition to state claims against.
-/

/-! ## A338838.P258645436868470691

`A338849(n-A185284(2*n+1))`
-/

namespace A338838.P258645436868470691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338849 ((n : ℤ) - A185284 (2 * n + 1)).toNat

end

end A338838.P258645436868470691

/-! ## A338838.P1982451989013890415

`A094544(n)!*A338849(n)`
-/

namespace A338838.P1982451989013890415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A094544 n).toNat : ℤ) * A338849 n

end

end A338838.P1982451989013890415

/-! ## A338838.P17646435376404371653

`A338849(A072189(n+1)+n)`
-/

namespace A338838.P17646435376404371653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338849 (A072189 (n + 1) + (n : ℤ)).toNat

end

end A338838.P17646435376404371653

/-! ## A338838.P10536127448926981966

`A338849(n)%A093046(n+1)`
-/

namespace A338838.P10536127448926981966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338849 n) (A093046 (n + 1))

end

end A338838.P10536127448926981966

/-! ## A338838.P7158787745632321121

`A338849(A000005(ceil(2^(n-1))))`
-/

namespace A338838.P7158787745632321121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338849 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A338838.P7158787745632321121

/-!
# A338847: Number of compositions (ordered partitions) of n into distinct decimal palindromes.

The programs for A338847, there is no canonical definition to state claims against.
-/

/-! ## A338847.P7408314227619456009

`A032020(n)-A257297(A051022(n+1))`
-/

namespace A338847.P7408314227619456009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A257297 (A051022 (n + 1)).toNat

end

end A338847.P7408314227619456009

/-! ## A338847.P17220845320323548879

`A032020(n)-A001221(A309864(n))`
-/

namespace A338847.P17220845320323548879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A001221 (A309864 n).toNat

end

end A338847.P17220845320323548879

/-! ## A338847.P4998394301580163577

`A032020(n)-A122841(A284640(3*n+1))`
-/

namespace A338847.P4998394301580163577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A122841 (A284640 (3 * n + 1)).toNat

end

end A338847.P4998394301580163577

/-! ## A338847.P2554717220590199595

`A003242(n)-A285981(n)-A103919(A309864(n))`
-/

namespace A338847.P2554717220590199595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A285981 n - A103919 (A309864 n).toNat

end

end A338847.P2554717220590199595

/-! ## A338847.P6528338461799141107

`A085735(A032020(n))`
-/

namespace A338847.P6528338461799141107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A032020 n).toNat

end

end A338847.P6528338461799141107

/-!
# A338848: Number of compositions (ordered partitions) of n into distinct powers of 3.

The programs for A338848, the canonical program `A338848.P15958169668733079484` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338848 has offset 0).

The definition of A338848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338848.P15958169668733079484

`A039966(n)*A062756(n)!`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338848

/-- `A039966(n)*A062756(n)!` -/
def P15958169668733079484.Spec : Prop :=
  ∀ n, P15958169668733079484.a n = A338848 n

theorem P15958169668733079484.correct : P15958169668733079484.Spec := by
  intro n
  simp only [A338848]

end A338848

/-! ## A338848.P6158443241857249500

`A039966(n)*A269223(n)`
-/

namespace A338848.P6158443241857249500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A269223 n

end

end A338848.P6158443241857249500

namespace A338848

/-- `A039966(n)*A269223(n)` -/
def P6158443241857249500.Spec : Prop :=
  ∀ n, P6158443241857249500.a n = A338848 n

end A338848

/-! ## A338848.P2936064999966352270

`lcm(A092037(n), A269223(n))`
-/

namespace A338848.P2936064999966352270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092037 n) (A269223 n)

end

end A338848.P2936064999966352270

namespace A338848

/-- `lcm(A092037(n), A269223(n))` -/
def P2936064999966352270.Spec : Prop :=
  ∀ n, (P2936064999966352270.a n : ℤ) = A338848 n

end A338848

/-! ## A338848.P5031265528354032873

`∑{digits}[A007089(n), #]!*A039966(n)`
-/

namespace A338848.P5031265528354032873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℤ) * A039966 n

end

end A338848.P5031265528354032873

namespace A338848

/-- `∑{digits}[A007089(n), #]!*A039966(n)` -/
def P5031265528354032873.Spec : Prop :=
  ∀ n, P5031265528354032873.a n = A338848 n

end A338848

/-! ## A338848.P13093038885780793461

`A039966(n)*A093659(A023709(n+1))`
-/

namespace A338848.P13093038885780793461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A093659 (A023709 (n + 1)).toNat

end

end A338848.P13093038885780793461

namespace A338848

/-- `A039966(n)*A093659(A023709(n+1))` -/
def P13093038885780793461.Spec : Prop :=
  ∀ n, P13093038885780793461.a n = A338848 n

end A338848

/-! ## A338848.P17826286361692677476

`A321907(A331279(n))`
-/

namespace A338848.P17826286361692677476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321907 (A331279 n).toNat

end

end A338848.P17826286361692677476

namespace A338848

/-- `A321907(A331279(n))` -/
def P17826286361692677476.Spec : Prop :=
  ∀ n, P17826286361692677476.a n = A338848 n

end A338848

/-!
# A338849: Triangle read by rows: T(n,k) is the number of permutations of k elements from [1..n] in a circle where adjacent values cannot be consecutive modulo n, rotations are distinct.

The programs for A338849, there is no canonical definition to state claims against.
-/

/-! ## A338849.P6047080580051792226

`C(A338838(n), A329070(A085791(n)))`
-/

namespace A338849.P6047080580051792226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338838 n).toNat (A329070 (A085791 n).toNat).toNat

end

end A338849.P6047080580051792226

/-! ## A338849.P15454844451966825169

`C(A338838(n), A055151(A323767(n)!))`
-/

namespace A338849.P15454844451966825169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338838 n).toNat (A055151 (Nat.factorial (A323767 n).toNat)).toNat

end

end A338849.P15454844451966825169

/-! ## A338849.P9301057426702191412

`C(A338838(n), A102426(A323767(n)!))`
-/

namespace A338849.P9301057426702191412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338838 n).toNat (A102426 (Nat.factorial (A323767 n).toNat)).toNat

end

end A338849.P9301057426702191412

/-! ## A338849.P8815278793053170444

`C(A338838(n), A317026(A034851(2*n+3)))`
-/

namespace A338849.P8815278793053170444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338838 n).toNat (A317026 (A034851 (2 * n + 3)).toNat).toNat

end

end A338849.P8815278793053170444

/-! ## A338849.P16698300473991578885

`A338838(n)%A057171(A007318(n+2))`
-/

namespace A338849.P16698300473991578885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338838 n) (A057171 (A007318 (n + 2)).toNat)

end

end A338849.P16698300473991578885

/-!
# A338850: Continued fraction expansion of the smallest constant 'c' such that the numbers 1+floor(c^(n^1.5)) are distinct primes for all n >= 0.

The programs for A338850, there is no canonical definition to state claims against.
-/

/-! ## A338850.P2510378739904675957

`A255824(A293315(n))`
-/

namespace A338850.P2510378739904675957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255824 (A293315 n).toNat

end

end A338850.P2510378739904675957

/-! ## A338850.P8047020153392529202

`A010882(A302033(∑[n]))`
-/

namespace A338850.P8047020153392529202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A302033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338850.P8047020153392529202

/-! ## A338850.P2696102776622573748

`A040401(A338313(n+1))`
-/

namespace A338850.P2696102776622573748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040401 (A338313 (n + 1)).toNat

end

end A338850.P2696102776622573748

/-! ## A338850.P9736932331831921028

`A086320(A346221(n+1))`
-/

namespace A338850.P9736932331831921028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086320 (A346221 (n + 1)).toNat

end

end A338850.P9736932331831921028

/-!
# A338852: a(n) = (7*floor(a(n-1)/3)) + (a(n-1) mod 3) with a(1) = 3.

The programs for A338852, the canonical program `A338852.P3289999053950313130` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338852 has offset 1).

The definition of A338852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338852.P3289999053950313130

`or(3, 7*floor(a(n-1)/3))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338852

/-- `or(3, 7*floor(a(n-1)/3))` -/
def P3289999053950313130.Spec : Prop :=
  ∀ n, P3289999053950313130.a n = A338852 (n + 1)

theorem P3289999053950313130.correct : P3289999053950313130.Spec := by
  intro n
  simp only [A338852, Nat.add_sub_cancel]

end A338852

/-! ## A338852.P18375089873836371264

`a(n-1)+4*floor(a(n-1)/3)` with `a(0)=3`
-/

namespace A338852.P18375089873836371264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * ⌊(a (n - 1) : ℚ) / 3⌋

end

end A338852.P18375089873836371264

namespace A338852

/-- `a(n-1)+4*floor(a(n-1)/3)` -/
def P18375089873836371264.Spec : Prop :=
  ∀ n, P18375089873836371264.a n = A338852 (n + 1)

end A338852

/-! ## A338852.P753951963482742683

`a(n-1)-4*floor((2-a(n-1))/3)` with `a(0)=3`
-/

namespace A338852.P753951963482742683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 4 * ⌊(2 - a (n - 1) : ℚ) / 3⌋

end

end A338852.P753951963482742683

namespace A338852

/-- `a(n-1)-4*floor((2-a(n-1))/3)` -/
def P753951963482742683.Spec : Prop :=
  ∀ n, P753951963482742683.a n = A338852 (n + 1)

end A338852

/-! ## A338852.P9745179903475643286

`A047275(a(n-1))+1` with `a(0)=3`
-/

namespace A338852.P9745179903475643286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A047275 (a (n - 1)).toNat + 1

end

end A338852.P9745179903475643286

namespace A338852

/-- `A047275(a(n-1))+1` -/
def P9745179903475643286.Spec : Prop :=
  ∀ n, P9745179903475643286.a n = A338852 (n + 1)

end A338852

/-! ## A338852.P3953841953690117381

`A047354(a(n-1)+1)` with `a(0)=3`
-/

namespace A338852.P3953841953690117381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A047354 (a (n - 1) + 1).toNat

end

end A338852.P3953841953690117381

namespace A338852

/-- `A047354(a(n-1)+1)` -/
def P3953841953690117381.Spec : Prop :=
  ∀ n, P3953841953690117381.a n = A338852 (n + 1)

end A338852

/-!
# A338853: List of numbers k > 1 such that there exists a group of order k without nontrivial normal Sylow subgroups.

The programs for A338853, there is no canonical definition to state claims against.
-/

/-! ## A338853.P14918408053040749083

`lt[A240026(n), A069916(A074206(n))]`
-/

namespace A338853.P14918408053040749083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240026 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069916 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338853.P14918408053040749083

/-! ## A338853.P7216384818106501762

`4*(lt[A245212((n+1)²), n]+1)/2`
-/

namespace A338853.P7216384818106501762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / 2)

end

end A338853.P7216384818106501762

/-! ## A338853.P1785323272944695451

`2*lt[A245212(A000038(n)+n²), 0]`
-/

namespace A338853.P1785323272944695451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A000038 n + (n ^ 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338853.P1785323272944695451

/-! ## A338853.P8653421787052323093

`lt[A245212(A129647(n+1)+1), n]+1`
-/

namespace A338853.P8653421787052323093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A129647 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338853.P8653421787052323093

/-!
# A338854: Product of the nonzero digits of (n written in base 4).

The programs for A338854, the canonical program `A338854.P6322233544526817225` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338854 has offset 0).

The definition of A338854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338854.P6322233544526817225

`2^A160382(n)*3^A160383(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338854

/-- `2^A160382(n)*3^A160383(n)` -/
def P6322233544526817225.Spec : Prop :=
  ∀ n, P6322233544526817225.a n = (A338854 n : ℚ)

end A338854

/-! ## A338854.P15804388469642535897

`∏{digits}[A007090(n), A000041(#)]`
-/

namespace A338854.P15804388469642535897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 x).prod

end

end A338854.P15804388469642535897

namespace A338854

/-- `∏{digits}[A007090(n), A000041(#)]` -/
def P15804388469642535897.Spec : Prop :=
  ∀ n, P15804388469642535897.a n = A338854 n

end A338854

/-! ## A338854.P7664973904209995207

`∏{digits}[A007090(n), A000792(#)]`
-/

namespace A338854.P7664973904209995207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000792 x).prod

end

end A338854.P7664973904209995207

namespace A338854

/-- `∏{digits}[A007090(n), A000792(#)]` -/
def P7664973904209995207.Spec : Prop :=
  ∀ n, P7664973904209995207.a n = A338854 n

end A338854

/-! ## A338854.P18056414629253509881

`∏{digits}[A007090(n), A001399(#)]`
-/

namespace A338854.P18056414629253509881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001399 x).prod

end

end A338854.P18056414629253509881

namespace A338854

/-- `∏{digits}[A007090(n), A001399(#)]` -/
def P18056414629253509881.Spec : Prop :=
  ∀ n, P18056414629253509881.a n = A338854 n

end A338854

/-! ## A338854.P2269015329532125754

`∏{digits}[A007090(n), A008636(#)]`
-/

namespace A338854.P2269015329532125754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008636 x).prod

end

end A338854.P2269015329532125754

namespace A338854

/-- `∏{digits}[A007090(n), A008636(#)]` -/
def P2269015329532125754.Spec : Prop :=
  ∀ n, P2269015329532125754.a n = A338854 n

end A338854

/-! ## A338854.P3306323323354720538

`∏{digits}[A007090(n), A028310(#)]`
-/

namespace A338854.P3306323323354720538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A338854.P3306323323354720538

namespace A338854

/-- `∏{digits}[A007090(n), A028310(#)]` -/
def P3306323323354720538.Spec : Prop :=
  ∀ n, P3306323323354720538.a n = A338854 n

end A338854

/-! ## A338854.P13062064206133978847

`∏{digits}[A007090(n), A051424(#)]`
-/

namespace A338854.P13062064206133978847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051424 x).prod

end

end A338854.P13062064206133978847

namespace A338854

/-- `∏{digits}[A007090(n), A051424(#)]` -/
def P13062064206133978847.Spec : Prop :=
  ∀ n, P13062064206133978847.a n = A338854 n

end A338854

/-! ## A338854.P8108402868296949462

`∏{digits}[A007090(n), A099823(#)]`
-/

namespace A338854.P8108402868296949462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A099823 x).prod

end

end A338854.P8108402868296949462

namespace A338854

/-- `∏{digits}[A007090(n), A099823(#)]` -/
def P8108402868296949462.Spec : Prop :=
  ∀ n, P8108402868296949462.a n = A338854 n

end A338854

/-! ## A338854.P7205526457824278345

`A338803(A020654(n+1))`
-/

namespace A338854.P7205526457824278345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338803 (A020654 (n + 1)).toNat

end

end A338854.P7205526457824278345

namespace A338854

/-- `A338803(A020654(n+1))` -/
def P7205526457824278345.Spec : Prop :=
  ∀ n, P7205526457824278345.a n = A338854 n

end A338854

/-! ## A338854.P4496953640077901831

`A338863(A037460(n))`
-/

namespace A338854.P4496953640077901831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A037460 n).toNat

end

end A338854.P4496953640077901831

namespace A338854

/-- `A338863(A037460(n))` -/
def P4496953640077901831.Spec : Prop :=
  ∀ n, P4496953640077901831.a n = A338854 n

end A338854

/-! ## A338854.P11799652973814384522

`A338881(A037462(n))`
-/

namespace A338854.P11799652973814384522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 (A037462 n).toNat

end

end A338854.P11799652973814384522

namespace A338854

/-- `A338881(A037462(n))` -/
def P11799652973814384522.Spec : Prop :=
  ∀ n, P11799652973814384522.a n = A338854 n

end A338854

/-! ## A338854.P3450046699453036970

`A338882(A037463(n))`
-/

namespace A338854.P3450046699453036970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 (A037463 n).toNat

end

end A338854.P3450046699453036970

namespace A338854

/-- `A338882(A037463(n))` -/
def P3450046699453036970.Spec : Prop :=
  ∀ n, P3450046699453036970.a n = A338854 n

end A338854

/-! ## A338854.P13761311373399941670

`A051801(A007090(n))`
-/

namespace A338854.P13761311373399941670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007090 n).toNat

end

end A338854.P13761311373399941670

namespace A338854

/-- `A051801(A007090(n))` -/
def P13761311373399941670.Spec : Prop :=
  ∀ n, P13761311373399941670.a n = A338854 n

end A338854

/-! ## A338854.P1328396237747935821

`A051801(record[A064770(n)])`
-/

namespace A338854.P1328396237747935821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338854.P1328396237747935821

namespace A338854

/-- `A051801(record[A064770(n)])` -/
def P1328396237747935821.Spec : Prop :=
  ∀ n, P1328396237747935821.a n = A338854 n

end A338854

/-!
# A338855: Concatenating all successive absolute differences between two successive digits of a(n) produce a subchain of a(n).

The programs for A338855, there is no canonical definition to state claims against.
-/

/-! ## A338855.P2372228903264683085

`filter[A365420(n+1), A377191(#)]`
-/

namespace A338855.P2372228903264683085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A338855.P2372228903264683085

/-! ## A338855.P2197042895230779452

`∩[A193406(n+1), A225742(n+1)]`
-/

namespace A338855.P2197042895230779452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338855.P2197042895230779452

/-! ## A338855.P8494326998482094391

`∩[A001637(n+1), A365420(n+1)]`
-/

namespace A338855.P8494326998482094391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338855.P8494326998482094391

/-! ## A338855.P11854069196519327209

`∩[A129120(n+1), A365420(n+1)]`
-/

namespace A338855.P11854069196519327209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338855.P11854069196519327209

/-! ## A338855.P10141964133223883651

`∩[A280824(n+1), A365420(n+1)]`
-/

namespace A338855.P10141964133223883651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338855.P10141964133223883651

/-!
# A338857: With S(n,k) = Sum_{n<=j<=k} 1/(2*j+1), a(n)=k+1 such that S(n,k-1) < 1 <= S(n,k) for n>=0 and a(0)=1.

The programs for A338857, there is no canonical definition to state claims against.
-/

/-! ## A338857.P4107068689696913637

`char[5]+floor(n*exp(2))+1`
-/

namespace A338857.P4107068689696913637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (⌊(n : ℝ) * Real.exp (2 : ℝ)⌋ + 1)

end

end A338857.P4107068689696913637

/-! ## A338857.P18203631829643518801

`ceil(1/xor(1, 2*n)+n*exp(2))`
-/

namespace A338857.P18203631829643518801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (Nat.xor 1 (2 * n) : ℚ) : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A338857.P18203631829643518801

/-! ## A338857.P2283885858811474429

`ceil(3/A017221(n)+n*exp(2))`
-/

namespace A338857.P2283885858811474429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 / (A017221 n : ℚ) : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A338857.P2283885858811474429

/-! ## A338857.P1438558210697891942

`ceil(1/A338309(n+1)+n*exp(2))`
-/

namespace A338857.P1438558210697891942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (A338309 (n + 1) : ℚ) : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A338857.P1438558210697891942

/-! ## A338857.P6582070972967948534

`ceil(1/A338316(n+1)+n*exp(2))`
-/

namespace A338857.P6582070972967948534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (A338316 (n + 1) : ℚ) : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A338857.P6582070972967948534

/-! ## A338857.P6039939827847832358

`ceil(1/A338361(n+1)+n*exp(2))`
-/

namespace A338857.P6039939827847832358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (A338361 (n + 1) : ℚ) : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A338857.P6039939827847832358

/-! ## A338857.P7136632075022443199

`ceil(A003982(A235355(n))+n*exp(2))`
-/

namespace A338857.P7136632075022443199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003982 (A235355 n).toNat : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A338857.P7136632075022443199

/-!
# A338859: Square array A(m,k) is the number of unicyclic graphs with m trees of k nodes; m,k >= 0, read by falling antidiagonals.

The programs for A338859, there is no canonical definition to state claims against.
-/

/-! ## A338859.P8043294329117068221

`A153764(n)^A000034(A015886(n))`
-/

namespace A338859.P8043294329117068221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153764 n : ℚ) ^ (A000034 (A015886 n).toNat : ℤ)

end

end A338859.P8043294329117068221

/-! ## A338859.P10968905337114768050

`A153764(n)^A000032(A056897(n))`
-/

namespace A338859.P10968905337114768050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153764 n : ℚ) ^ (A000032 (A056897 n).toNat : ℤ)

end

end A338859.P10968905337114768050

/-! ## A338859.P6012802164041749787

`A153764(n)^A072699(A155868(n))`
-/

namespace A338859.P6012802164041749787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153764 n : ℚ) ^ (A072699 (A155868 n).toNat : ℤ)

end

end A338859.P6012802164041749787

/-! ## A338859.P12617074051984106277

`A153764(n)^A126216(Δ[A153880(n)])`
-/

namespace A338859.P12617074051984106277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153764 n : ℚ) ^ (A126216 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A338859.P12617074051984106277

/-! ## A338859.P5607106093490762651

`A153764(n)^A046527(A165824(n+1))`
-/

namespace A338859.P5607106093490762651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153764 n : ℚ) ^ (A046527 (A165824 (n + 1)).toNat : ℤ)

end

end A338859.P5607106093490762651

/-!
# A338860: The excess of the number of partitions of n with more odd parts than even parts over the number of partitions of n with more even parts than odd parts.

The programs for A338860, there is no canonical definition to state claims against.
-/

/-! ## A338860.P5140199463089106641

`A130780(n)-A171966(n)`
-/

namespace A338860.P5140199463089106641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - A171966 n

end

end A338860.P5140199463089106641

/-! ## A338860.P11481200481488135778

`A171967(n)-2*A108949(n)`
-/

namespace A338860.P11481200481488135778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171967 n - 2 * A108949 n

end

end A338860.P11481200481488135778

/-! ## A338860.P8247782445230485316

`A000041(n)-(A171966(n)+A108949(n))`
-/

namespace A338860.P8247782445230485316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A171966 n + A108949 n)

end

end A338860.P8247782445230485316

/-! ## A338860.P15632771416805093721

`A130780(n)-(A108949(n)+A045931(n))`
-/

namespace A338860.P15632771416805093721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - (A108949 n + A045931 n)

end

end A338860.P15632771416805093721

/-! ## A338860.P6393213438415934141

`A000041(n)-A108949(n)-(A108949(n)+A045931(n))`
-/

namespace A338860.P6393213438415934141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A108949 n - (A108949 n + A045931 n)

end

end A338860.P6393213438415934141

/-! ## A338860.P6851129441665926149

`A130780(n)-(A000041(n)+A045931(n)-A130780(n))`
-/

namespace A338860.P6851129441665926149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - (A000041 n + (A045931 n - A130780 n))

end

end A338860.P6851129441665926149

/-! ## A338860.P2213375570458799740

`A130780(n)-(A000041(n)+A108949(n)-A171967(n))`
-/

namespace A338860.P2213375570458799740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - (A000041 n + (A108949 n - A171967 n))

end

end A338860.P2213375570458799740

/-! ## A338860.P2246497947466459201

`A108950(n+1)-(A239832(n)+A171966(n))`
-/

namespace A338860.P2246497947466459201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 1) - (A239832 n + A171966 n)

end

end A338860.P2246497947466459201

/-!
# A338861: a(n) is the largest area of a rectangle which can be dissected into n squares with integer sides s_i, i = 1 .. n, and gcd(s_1,...,s_n) = 1.

The programs for A338861, there is no canonical definition to state claims against.
-/

/-! ## A338861.P3965426524183630683

`A353897(A340726(n+1))`
-/

namespace A338861.P3965426524183630683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A340726 (n + 1)).toNat

end

end A338861.P3965426524183630683

/-! ## A338861.P7084383991694230113

`A023443(A340726(n+1)+1)`
-/

namespace A338861.P7084383991694230113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A340726 (n + 1) + 1).toNat

end

end A338861.P7084383991694230113

/-! ## A338861.P3603741457888733288

`filter[A340726(n+1), A071037(#)]`
-/

namespace A338861.P3603741457888733288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071037 (f1 j).toNat = 1) n)

end

end A338861.P3603741457888733288

/-! ## A338861.P528883747162131722

`filter[A340726(n+1), A071038(#)]`
-/

namespace A338861.P528883747162131722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A338861.P528883747162131722

/-! ## A338861.P8194659847405065525

`filter[A340726(n+1), A118111(#)]`
-/

namespace A338861.P8194659847405065525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118111 (f1 j).toNat = 1) n)

end

end A338861.P8194659847405065525

/-!
# A338862: a(n) is the number of polynomials of degree 2*n over the field GF(2) that have no factors of odd degree.

The programs for A338862, there is no canonical definition to state claims against.
-/

/-! ## A338862.P10562045217086413184

`A050296(A328925(n+1)+A120033(2*n))`
-/

namespace A338862.P10562045217086413184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A328925 (n + 1) + A120033 (2 * n)).toNat

end

end A338862.P10562045217086413184

/-! ## A338862.P272371573542603838

`floor(sqrt(∑[A320800(2*n)]))`
-/

namespace A338862.P272371573542603838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320800 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338862.P272371573542603838

/-!
# A338863: Product of the nonzero digits of (n written in base 6).

The programs for A338863, there is no canonical definition to state claims against.
-/

/-! ## A338863.P13090674360668713876

`∏{digits}[A007092(n), A001399(#)]`
-/

namespace A338863.P13090674360668713876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001399 x).prod

end

end A338863.P13090674360668713876

/-! ## A338863.P4750392313347671777

`∏{digits}[A007092(n), A008749(#)]`
-/

namespace A338863.P4750392313347671777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008749 x).prod

end

end A338863.P4750392313347671777

/-! ## A338863.P16938596160445825909

`∏{digits}[A007092(n), A008758(#)]`
-/

namespace A338863.P16938596160445825909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008758 x).prod

end

end A338863.P16938596160445825909

/-! ## A338863.P1000936387778014540

`∏{digits}[A007092(n), A028310(#)]`
-/

namespace A338863.P1000936387778014540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A338863.P1000936387778014540

/-! ## A338863.P9555515910183653372

`∏{digits}[A007092(n), A029004(#)]`
-/

namespace A338863.P9555515910183653372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029004 x).prod

end

end A338863.P9555515910183653372

/-! ## A338863.P10585431618304745984

`∏{digits}[A007092(n), A033930(#)]`
-/

namespace A338863.P10585431618304745984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033930 x).prod

end

end A338863.P10585431618304745984

/-! ## A338863.P10974640344166186830

`∏{digits}[A007092(n), A051802(#)]`
-/

namespace A338863.P10974640344166186830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051802 x).prod

end

end A338863.P10974640344166186830

/-! ## A338863.P10997206010985061680

`A338880(A020657(n+1))`
-/

namespace A338863.P10997206010985061680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338880 (A020657 (n + 1)).toNat

end

end A338863.P10997206010985061680

/-! ## A338863.P13743341818221249159

`A338881(A037471(n))`
-/

namespace A338863.P13743341818221249159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 (A037471 n).toNat

end

end A338863.P13743341818221249159

/-! ## A338863.P9006645968817819958

`A338882(A037472(n))`
-/

namespace A338863.P9006645968817819958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 (A037472 n).toNat

end

end A338863.P9006645968817819958

/-! ## A338863.P6252601528605508104

`A051801(A007092(n))`
-/

namespace A338863.P6252601528605508104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007092 n).toNat

end

end A338863.P6252601528605508104

/-! ## A338863.P12287210831587947847

`A051801(eq[0, A102677(n)])`
-/

namespace A338863.P12287210831587947847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338863.P12287210831587947847

/-! ## A338863.P15540881524063193377

`A051801(record[n-A106747(n)])`
-/

namespace A338863.P15540881524063193377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338863.P15540881524063193377

/-!
# A338865: Triangle T(n,k) defined by Sum_{k=1..n} T(n,k)*u^k*x^n/n! = Product_{j>0} ( exp(j*x^j/(1 - x^j)) )^u.

The programs for A338865, there is no canonical definition to state claims against.
-/

/-! ## A338865.P5575332362176823289

`∑{d}[A331914(A049411(n+1)), #]`
-/

namespace A338865.P5575332362176823289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (A049411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A338865.P5575332362176823289

/-! ## A338865.P425671107901214418

`A138186(A138114(n+1)+A138049(n+1))`
-/

namespace A338865.P425671107901214418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138186 (A138114 (n + 1) + A138049 (n + 1)).toNat

end

end A338865.P425671107901214418

/-! ## A338865.P7887521315674729975

`A039692(n+1)*A379552(A162690(n+1))`
-/

namespace A338865.P7887521315674729975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (n + 1) * A379552 (A162690 (n + 1)).toNat

end

end A338865.P7887521315674729975

/-!
# A338866: Number of twins of prime quadruples < 10^n.

The programs for A338866, there is no canonical definition to state claims against.
-/

/-! ## A338866.P5425972275573815541

`A001404(n)*A178334(A255376(n))`
-/

namespace A338866.P5425972275573815541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n * A178334 (A255376 n).toNat

end

end A338866.P5425972275573815541

/-! ## A338866.P6161212125157840528

`A235919(A231631(n+1)+A000111(n))`
-/

namespace A338866.P6161212125157840528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235919 (A231631 (n + 1) + A000111 n).toNat

end

end A338866.P6161212125157840528

/-! ## A338866.P7064832693520834669

`A000196(A000032(n)*A324420(n+1))`
-/

namespace A338866.P7064832693520834669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000032 n * A324420 (n + 1)).toNat

end

end A338866.P7064832693520834669

/-! ## A338866.P8715135781154284254

`and(A321413(n+1), A321417(A321412(n)))`
-/

namespace A338866.P8715135781154284254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321413 (n + 1)) (A321417 (A321412 n).toNat)

end

end A338866.P8715135781154284254

/-!
# A338867: Related to the number of Hopf subalgebras of heap-preordered forests of vertex degree n.

The programs for A338867, there is no canonical definition to state claims against.
-/

/-! ## A338867.P10234848280549792339

`A008611(∑[n*∑[n^n]])`
-/

namespace A338867.P10234848280549792339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338867.P10234848280549792339

/-!
# A338869: Shortest most frequent distance among first n primes.

The programs for A338869, there is no canonical definition to state claims against.
-/

/-! ## A338869.P12769698200165259585

`A343122(A190617(n+1)+n)`
-/

namespace A338869.P12769698200165259585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343122 (A190617 (n + 1) + (n : ℤ)).toNat

end

end A338869.P12769698200165259585

/-! ## A338869.P10120583330459259817

`∏{p}[∏[A026791(2*n+5)], #]`
-/

namespace A338869.P10120583330459259817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A338869.P10120583330459259817

/-! ## A338869.P7900455187994139261

`A007947(∏[∏{e}[A073885(n+1), #]])`
-/

namespace A338869.P7900455187994139261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073885 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A338869.P7900455187994139261

/-! ## A338869.P2363843056858827573

`A260188(A085515(n+1)-A118458(n))`
-/

namespace A338869.P2363843056858827573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A085515 (n + 1) - A118458 n).toNat

end

end A338869.P2363843056858827573

/-! ## A338869.P13008206701086721737

`A343122(lt[A186727(n), n²])`
-/

namespace A338869.P13008206701086721737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A338869.P13008206701086721737

/-!
# A338873: Array T(n, m) read by ascending antidiagonals: numerators of shifted Bernoulli numbers B(n, m) where m >= 0.

The programs for A338873, there is no canonical definition to state claims against.
-/

/-! ## A338873.P5670707864199334005

`A008683(A054429(A050041(n+1)²))`
-/

namespace A338873.P5670707864199334005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054429 (A050041 (n + 1) ^ 2).toNat).toNat

end

end A338873.P5670707864199334005

/-! ## A338873.P2430261871179074800

`A197774(∑{e}[A349205(n), #])`
-/

namespace A338873.P2430261871179074800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349205 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A338873.P2430261871179074800

/-! ## A338873.P13759858436471155364

`A163806(A181217(n+1)*A213276(n))`
-/

namespace A338873.P13759858436471155364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A181217 (n + 1) * A213276 n).toNat

end

end A338873.P13759858436471155364

/-! ## A338873.P14905407994155490604

`A011582(A306671(n+1)*A337462(n))`
-/

namespace A338873.P14905407994155490604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A306671 (n + 1) * A337462 n).toNat

end

end A338873.P14905407994155490604

/-! ## A338873.P4914304366432248914

`A049347(A371731(n+1)+A154558(3*n+1))`
-/

namespace A338873.P4914304366432248914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A371731 (n + 1) + A154558 (3 * n + 1)).toNat

end

end A338873.P4914304366432248914

/-!
# A338874: Array T(n, m) read by ascending antidiagonals: denominators of shifted Bernoulli numbers B(n, m) where m >= 0.

The programs for A338874, there is no canonical definition to state claims against.
-/

/-! ## A338874.P12498858516301088875

`gcd(A107846(A141740(n)), A338876(n))`
-/

namespace A338874.P12498858516301088875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 (A141740 n).toNat) (A338876 n)

end

end A338874.P12498858516301088875

/-! ## A338874.P2772762380658146412

`A338876(A026741(n)*A051700(n+1))`
-/

namespace A338874.P2772762380658146412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338876 (A026741 n * A051700 (n + 1)).toNat

end

end A338874.P2772762380658146412

/-! ## A338874.P9012476890477314670

`A083258(A338876(n))`
-/

namespace A338874.P9012476890477314670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (A338876 n).toNat

end

end A338874.P9012476890477314670

/-! ## A338874.P14320044721762418371

`A058359(A338876(n)+1)`
-/

namespace A338874.P14320044721762418371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058359 (A338876 n + 1).toNat

end

end A338874.P14320044721762418371

/-! ## A338874.P1820569496981853430

`A124625(A338876(n)+1)`
-/

namespace A338874.P1820569496981853430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A338876 n + 1).toNat

end

end A338874.P1820569496981853430

/-!
# A338875: Array T(n, m) read by ascending antidiagonals: numerators of shifted Fubini numbers F(n, m) where m >= 0.

The programs for A338875, there is no canonical definition to state claims against.
-/

/-! ## A338875.P12528056196723389768

`A073188(n^A306548(n))`
-/

namespace A338875.P12528056196723389768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A306548 n : ℤ))).toNat

end

end A338875.P12528056196723389768

/-! ## A338875.P5754653523213287438

`A321223(lcm(9, A060281(n+1)))`
-/

namespace A338875.P5754653523213287438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (Int.lcm 9 (A060281 (n + 1)))

end

end A338875.P5754653523213287438

/-! ## A338875.P7712519728297283601

`A231897(A033185(n+1)^A082907(n))`
-/

namespace A338875.P7712519728297283601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 (SequenceMachineLib.roundAway ((A033185 (n + 1) : ℚ) ^ (A082907 n : ℤ))).toNat

end

end A338875.P7712519728297283601

/-!
# A338876: Array T(n, m) read by ascending antidiagonals: denominators of shifted Fubini numbers F(n, m) where m >= 0.

The programs for A338876, there is no canonical definition to state claims against.
-/

/-! ## A338876.P3559107388547910440

`or(A323069(A072180(n+1)), A338874(n))`
-/

namespace A338876.P3559107388547910440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323069 (A072180 (n + 1)).toNat) (A338874 n)

end

end A338876.P3559107388547910440

/-! ## A338876.P6071886998807429729

`lcm(A213621(A215745(n+1)), A338874(n))`
-/

namespace A338876.P6071886998807429729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A213621 (A215745 (n + 1)).toNat) (A338874 n)

end

end A338876.P6071886998807429729

/-! ## A338876.P4790907616538855345

`A001263(A195843(3*n+2))*A338874(n)`
-/

namespace A338876.P4790907616538855345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A195843 (3 * n + 2)).toNat * A338874 n

end

end A338876.P4790907616538855345

/-!
# A338878: Numerators in a set of expansions of the single-term Machin-like formula for Pi.

The programs for A338878, the canonical program `A338878.P14330195955316122499` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338878 has offset 1).

The definition of A338878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338878.P9580545780573802502

`gcd(∑[char[∑[n]]], Δ[A277227(n+1)])`
-/

namespace A338878.P9580545780573802502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f4 (n + 1) - f4 n)

end

end A338878.P9580545780573802502

namespace A338878

/-- `gcd(∑[char[∑[n]]], Δ[A277227(n+1)])` -/
def P9580545780573802502.Spec : Prop :=
  ∀ n, (P9580545780573802502.a n : ℤ) = A338878 (n + 1)

end A338878

/-! ## A338878.P11488777423868866874

`A277227(n+1)/A050873(n+1)`
-/

namespace A338878.P11488777423868866874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277227 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A338878.P11488777423868866874

namespace A338878

/-- `A277227(n+1)/A050873(n+1)` -/
def P11488777423868866874.Spec : Prop :=
  ∀ n, P11488777423868866874.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P14330195955316122499

`gcd(A054531(n+1), A277227(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A338878

/-- `gcd(A054531(n+1), A277227(n+1))` -/
def P14330195955316122499.Spec : Prop :=
  ∀ n, (P14330195955316122499.a n : ℤ) = A338878 (n + 1)

theorem P14330195955316122499.correct : P14330195955316122499.Spec := by
  intro n
  simp only [A338878, Nat.add_sub_cancel]

end A338878

/-! ## A338878.P12238639007722453533

`A277227(n+1)/A109004(comp[∑[n]])`
-/

namespace A338878.P12238639007722453533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277227 (n + 1) : ℚ) / (A109004 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A338878.P12238639007722453533

namespace A338878

/-- `A277227(n+1)/A109004(comp[∑[n]])` -/
def P12238639007722453533.Spec : Prop :=
  ∀ n, P12238639007722453533.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P14197957206037658282

`A054531(floor(acot(n)+n))/A050873(n+1)`
-/

namespace A338878.P14197957206037658282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / (A050873 (n + 1) : ℚ)

end

end A338878.P14197957206037658282

namespace A338878

/-- `A054531(floor(acot(n)+n))/A050873(n+1)` -/
def P14197957206037658282.Spec : Prop :=
  ∀ n, P14197957206037658282.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P2409028127053397428

`A277227(n+1)/log2(A046143(n+1)+1)`
-/

namespace A338878.P2409028127053397428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277227 (n + 1) : ℝ) / Real.logb 2 (A046143 (n + 1) + 1 : ℝ)

end

end A338878.P2409028127053397428

namespace A338878

/-- `A277227(n+1)/log2(A046143(n+1)+1)` -/
def P2409028127053397428.Spec : Prop :=
  ∀ n, P2409028127053397428.a n = (A338878 (n + 1) : ℝ)

end A338878

/-! ## A338878.P11565449308865558609

`A054531(A028310(n))/A050873(n+1)`
-/

namespace A338878.P11565449308865558609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (A028310 n).toNat : ℚ) / (A050873 (n + 1) : ℚ)

end

end A338878.P11565449308865558609

namespace A338878

/-- `A054531(A028310(n))/A050873(n+1)` -/
def P11565449308865558609.Spec : Prop :=
  ∀ n, P11565449308865558609.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P13693282605874304534

`gcd(A054531(n+1), A054531(A028310(n)))`
-/

namespace A338878.P13693282605874304534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054531 (n + 1)) (A054531 (A028310 n).toNat)

end

end A338878.P13693282605874304534

namespace A338878

/-- `gcd(A054531(n+1), A054531(A028310(n)))` -/
def P13693282605874304534.Spec : Prop :=
  ∀ n, (P13693282605874304534.a n : ℤ) = A338878 (n + 1)

end A338878

/-! ## A338878.P17825635146946501502

`A074909(n)/gcd(A074909(n), A103406(n))`
-/

namespace A338878.P17825635146946501502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (Int.gcd (A074909 n) (A103406 n) : ℚ)

end

end A338878.P17825635146946501502

namespace A338878

/-- `A074909(n)/gcd(A074909(n), A103406(n))` -/
def P17825635146946501502.Spec : Prop :=
  ∀ n, P17825635146946501502.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P8553455014331731684

`A088617(n)/gcd(A088617(n), A178301(n))`
-/

namespace A338878.P8553455014331731684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088617 n : ℚ) / (Int.gcd (A088617 n) (A178301 n) : ℚ)

end

end A338878.P8553455014331731684

namespace A338878

/-- `A088617(n)/gcd(A088617(n), A178301(n))` -/
def P8553455014331731684.Spec : Prop :=
  ∀ n, P8553455014331731684.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P2268769389375865072

`A247500(n)/gcd(A021009(n), A247500(n))`
-/

namespace A338878.P2268769389375865072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247500 n : ℚ) / (Int.gcd (A021009 n) (A247500 n) : ℚ)

end

end A338878.P2268769389375865072

namespace A338878

/-- `A247500(n)/gcd(A021009(n), A247500(n))` -/
def P2268769389375865072.Spec : Prop :=
  ∀ n, P2268769389375865072.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P172241787874753454

`lcm(A001263(n+1), A008459(n))/A008459(n)`
-/

namespace A338878.P172241787874753454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001263 (n + 1)) (A008459 n) : ℚ) / (A008459 n : ℚ)

end

end A338878.P172241787874753454

namespace A338878

/-- `lcm(A001263(n+1), A008459(n))/A008459(n)` -/
def P172241787874753454.Spec : Prop :=
  ∀ n, P172241787874753454.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P2463669283687413074

`A054531(n+1)/gcd(A002262(n), A051173(n+1))`
-/

namespace A338878.P2463669283687413074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) : ℚ) / (Int.gcd (A002262 n) (A051173 (n + 1)) : ℚ)

end

end A338878.P2463669283687413074

namespace A338878

/-- `A054531(n+1)/gcd(A002262(n), A051173(n+1))` -/
def P2463669283687413074.Spec : Prop :=
  ∀ n, P2463669283687413074.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P5435092057045422165

`A181511(n+1)/gcd(A121757(n), A181511(n+1))`
-/

namespace A338878.P5435092057045422165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181511 (n + 1) : ℚ) / (Int.gcd (A121757 n) (A181511 (n + 1)) : ℚ)

end

end A338878.P5435092057045422165

namespace A338878

/-- `A181511(n+1)/gcd(A121757(n), A181511(n+1))` -/
def P5435092057045422165.Spec : Prop :=
  ∀ n, P5435092057045422165.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P8402557744483727103

`A054531(n+1)/A002024(n+1)*A277227(n+1)`
-/

namespace A338878.P8402557744483727103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A277227 (n + 1) : ℚ)

end

end A338878.P8402557744483727103

namespace A338878

/-- `A054531(n+1)/A002024(n+1)*A277227(n+1)` -/
def P8402557744483727103.Spec : Prop :=
  ∀ n, P8402557744483727103.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P15085938695280360823

`A164306(n+1)/A002260(n+1)*A277227(n+1)`
-/

namespace A338878.P15085938695280360823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164306 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A277227 (n + 1) : ℚ)

end

end A338878.P15085938695280360823

namespace A338878

/-- `A164306(n+1)/A002260(n+1)*A277227(n+1)` -/
def P15085938695280360823.Spec : Prop :=
  ∀ n, P15085938695280360823.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P3668226192252691145

`lcm(A002024(n+1), A003991(n+1))/A003991(n+1)`
-/

namespace A338878.P3668226192252691145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002024 (n + 1)) (A003991 (n + 1)) : ℚ) / (A003991 (n + 1) : ℚ)

end

end A338878.P3668226192252691145

namespace A338878

/-- `lcm(A002024(n+1), A003991(n+1))/A003991(n+1)` -/
def P3668226192252691145.Spec : Prop :=
  ∀ n, P3668226192252691145.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P9164240843489611163

`lcm(A003990(n+1), A051173(n+1))/A003990(n+1)`
-/

namespace A338878.P9164240843489611163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003990 (n + 1)) (A051173 (n + 1)) : ℚ) / (A003990 (n + 1) : ℚ)

end

end A338878.P9164240843489611163

namespace A338878

/-- `lcm(A003990(n+1), A051173(n+1))/A003990(n+1)` -/
def P9164240843489611163.Spec : Prop :=
  ∀ n, P9164240843489611163.a n = (A338878 (n + 1) : ℚ)

end A338878

/-! ## A338878.P5738704534782389006

`A054531(val(A000040(n+1), 2)+n)/A050873(n+1)`
-/

namespace A338878.P5738704534782389006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A338878.P5738704534782389006

namespace A338878

/-- `A054531(val(A000040(n+1), 2)+n)/A050873(n+1)` -/
def P5738704534782389006.Spec : Prop :=
  ∀ n, P5738704534782389006.a n = (A338878 (n + 1) : ℚ)

end A338878

/-!
# A338880: Product of the nonzero digits of (n written in base 7).

The programs for A338880, the canonical program `A338880.P3115051546026031264` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338880 has offset 0).

The definition of A338880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338880.P3115051546026031264

`∏{digits}[A007093(n), A028310(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A338880

/-- `∏{digits}[A007093(n), A028310(#)]` -/
def P3115051546026031264.Spec : Prop :=
  ∀ n, P3115051546026031264.a n = A338880 n

theorem P3115051546026031264.correct : P3115051546026031264.Spec := by
  intro n
  simp only [A338880]

end A338880

/-! ## A338880.P1082406755239792208

`∏{digits}[A007093(n), A033930(#)]`
-/

namespace A338880.P1082406755239792208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033930 x).prod

end

end A338880.P1082406755239792208

namespace A338880

/-- `∏{digits}[A007093(n), A033930(#)]` -/
def P1082406755239792208.Spec : Prop :=
  ∀ n, P1082406755239792208.a n = A338880 n

end A338880

/-! ## A338880.P10734195446003487777

`∏{digits}[A007093(n), A051802(#)]`
-/

namespace A338880.P10734195446003487777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051802 x).prod

end

end A338880.P10734195446003487777

namespace A338880

/-- `∏{digits}[A007093(n), A051802(#)]` -/
def P10734195446003487777.Spec : Prop :=
  ∀ n, P10734195446003487777.a n = A338880 n

end A338880

/-! ## A338880.P5276453858901805773

`∏{digits}[A007093(n), A338882(#)]`
-/

namespace A338880.P5276453858901805773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A338882 x).prod

end

end A338880.P5276453858901805773

namespace A338880

/-- `∏{digits}[A007093(n), A338882(#)]` -/
def P5276453858901805773.Spec : Prop :=
  ∀ n, P5276453858901805773.a n = A338880 n

end A338880

/-! ## A338880.P6859523498537349140

`∏{digits}[A007093(n), A122848(A000217(#))+#]`
-/

namespace A338880.P6859523498537349140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A122848 (A000217 x).toNat + (x : ℤ)).prod

end

end A338880.P6859523498537349140

namespace A338880

/-- `∏{digits}[A007093(n), A122848(A000217(#))+#]` -/
def P6859523498537349140.Spec : Prop :=
  ∀ n, P6859523498537349140.a n = A338880 n

end A338880

/-! ## A338880.P1123125707617119866

`A338881(A037474(n))`
-/

namespace A338880.P1123125707617119866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 (A037474 n).toNat

end

end A338880.P1123125707617119866

namespace A338880

/-- `A338881(A037474(n))` -/
def P1123125707617119866.Spec : Prop :=
  ∀ n, P1123125707617119866.a n = A338880 n

end A338880

/-! ## A338880.P1943107943364216153

`filter[A338881(n), A109720(#)]`
-/

namespace A338880.P1943107943364216153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A338880.P1943107943364216153

namespace A338880

/-- `filter[A338881(n), A109720(#)]` -/
def P1943107943364216153.Spec : Prop :=
  ∀ n, P1943107943364216153.a n = A338880 n

end A338880

/-! ## A338880.P13663285612585956542

`A338882(A037475(n))`
-/

namespace A338880.P13663285612585956542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 (A037475 n).toNat

end

end A338880.P13663285612585956542

namespace A338880

/-- `A338882(A037475(n))` -/
def P13663285612585956542.Spec : Prop :=
  ∀ n, P13663285612585956542.a n = A338880 n

end A338880

/-! ## A338880.P4840908078181131764

`A051801(A007093(n))`
-/

namespace A338880.P4840908078181131764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007093 n).toNat

end

end A338880.P4840908078181131764

namespace A338880

/-- `A051801(A007093(n))` -/
def P4840908078181131764.Spec : Prop :=
  ∀ n, P4840908078181131764.a n = A338880 n

end A338880

/-! ## A338880.P13905046701019102401

`A051801(eq[0, A102679(n)])`
-/

namespace A338880.P13905046701019102401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338880.P13905046701019102401

namespace A338880

/-- `A051801(eq[0, A102679(n)])` -/
def P13905046701019102401.Spec : Prop :=
  ∀ n, P13905046701019102401.a n = A338880 n

end A338880

/-! ## A338880.P18233581300155079286

`A051801(record[n-A064770(n)])`
-/

namespace A338880.P18233581300155079286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338880.P18233581300155079286

namespace A338880

/-- `A051801(record[n-A064770(n)])` -/
def P18233581300155079286.Spec : Prop :=
  ∀ n, P18233581300155079286.a n = A338880 n

end A338880

/-!
# A338881: Product of the nonzero digits of (n written in base 8).

The programs for A338881, the canonical program `A338881.P16098821748611333482` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338881 has offset 0).

The definition of A338881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338881.P16098821748611333482

`∏{digits}[A007094(n), A028310(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338881

/-- `∏{digits}[A007094(n), A028310(#)]` -/
def P16098821748611333482.Spec : Prop :=
  ∀ n, P16098821748611333482.a n = A338881 n

theorem P16098821748611333482.correct : P16098821748611333482.Spec := by
  intro n
  simp only [A338881]

end A338881

/-! ## A338881.P12945083441404250286

`∏{digits}[A007094(n), A033930(#)]`
-/

namespace A338881.P12945083441404250286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033930 x).prod

end

end A338881.P12945083441404250286

namespace A338881

/-- `∏{digits}[A007094(n), A033930(#)]` -/
def P12945083441404250286.Spec : Prop :=
  ∀ n, P12945083441404250286.a n = A338881 n

end A338881

/-! ## A338881.P9881115835950972244

`∏{digits}[A007094(n), A051802(#)]`
-/

namespace A338881.P9881115835950972244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051802 x).prod

end

end A338881.P9881115835950972244

namespace A338881

/-- `∏{digits}[A007094(n), A051802(#)]` -/
def P9881115835950972244.Spec : Prop :=
  ∀ n, P9881115835950972244.a n = A338881 n

end A338881

/-! ## A338881.P9955748082237209815

`A338882(A037477(n))`
-/

namespace A338881.P9955748082237209815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 (A037477 n).toNat

end

end A338881.P9955748082237209815

namespace A338881

/-- `A338882(A037477(n))` -/
def P9955748082237209815.Spec : Prop :=
  ∀ n, P9955748082237209815.a n = A338881 n

end A338881

/-! ## A338881.P14037560075102489630

`A051801(A007094(n))`
-/

namespace A338881.P14037560075102489630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007094 n).toNat

end

end A338881.P14037560075102489630

namespace A338881

/-- `A051801(A007094(n))` -/
def P14037560075102489630.Spec : Prop :=
  ∀ n, P14037560075102489630.a n = A338881 n

end A338881

/-! ## A338881.P2949170665734629206

`A051801(eq[n, A222254(n)])`
-/

namespace A338881.P2949170665734629206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338881.P2949170665734629206

namespace A338881

/-- `A051801(eq[n, A222254(n)])` -/
def P2949170665734629206.Spec : Prop :=
  ∀ n, P2949170665734629206.a n = A338881 n

end A338881

/-! ## A338881.P16860430509536836705

`A051801(record[A004184(A004183(n))])`
-/

namespace A338881.P16860430509536836705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338881.P16860430509536836705

namespace A338881

/-- `A051801(record[A004184(A004183(n))])` -/
def P16860430509536836705.Spec : Prop :=
  ∀ n, P16860430509536836705.a n = A338881 n

end A338881

/-! ## A338881.P3161313872594325721

`A051801(A222253(record[A222253(n)]))`
-/

namespace A338881.P3161313872594325721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A338881.P3161313872594325721

namespace A338881

/-- `A051801(A222253(record[A222253(n)]))` -/
def P3161313872594325721.Spec : Prop :=
  ∀ n, P3161313872594325721.a n = A338881 n

end A338881

/-! ## A338881.P1759643076215879553

`A051801(eq[A102679(n), A316868(n)])`
-/

namespace A338881.P1759643076215879553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338881.P1759643076215879553

namespace A338881

/-- `A051801(eq[A102679(n), A316868(n)])` -/
def P1759643076215879553.Spec : Prop :=
  ∀ n, P1759643076215879553.a n = A338881 n

end A338881

/-!
# A338882: Product of the nonzero digits of (n written in base 9).

The programs for A338882, the canonical program `A338882.P16077244262081948641` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338882 has offset 0).

The definition of A338882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338882.P16077244262081948641

`∏{digits}[A007095(n), A028310(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338882

/-- `∏{digits}[A007095(n), A028310(#)]` -/
def P16077244262081948641.Spec : Prop :=
  ∀ n, P16077244262081948641.a n = A338882 n

theorem P16077244262081948641.correct : P16077244262081948641.Spec := by
  intro n
  simp only [A338882]

end A338882

/-! ## A338882.P8538894235932101347

`∏{digits}[A007095(n), A214950(#)]`
-/

namespace A338882.P8538894235932101347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A214950 x).prod

end

end A338882.P8538894235932101347

namespace A338882

/-- `∏{digits}[A007095(n), A214950(#)]` -/
def P8538894235932101347.Spec : Prop :=
  ∀ n, P8538894235932101347.a n = A338882 n

end A338882

/-! ## A338882.P5783088414287591284

`A051801(A007095(n))`
-/

namespace A338882.P5783088414287591284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007095 n).toNat

end

end A338882.P5783088414287591284

namespace A338882

/-- `A051801(A007095(n))` -/
def P5783088414287591284.Spec : Prop :=
  ∀ n, P5783088414287591284.a n = A338882 n

end A338882

/-! ## A338882.P11654734752969709677

`A051801(eq[A006942(n), A277116(n)])`
-/

namespace A338882.P11654734752969709677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338882.P11654734752969709677

namespace A338882

/-- `A051801(eq[A006942(n), A277116(n)])` -/
def P11654734752969709677.Spec : Prop :=
  ∀ n, P11654734752969709677.a n = A338882 n

end A338882

/-! ## A338882.P5581747619917622886

`A051801(record[A004184(n)])`
-/

namespace A338882.P5581747619917622886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338882.P5581747619917622886

namespace A338882

/-- `A051801(record[A004184(n)])` -/
def P5581747619917622886.Spec : Prop :=
  ∀ n, P5581747619917622886.a n = A338882 n

end A338882

/-! ## A338882.P15381154034027557231

`A051801(record[A235049(n)])`
-/

namespace A338882.P15381154034027557231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338882.P15381154034027557231

namespace A338882

/-- `A051801(record[A235049(n)])` -/
def P15381154034027557231.Spec : Prop :=
  ∀ n, P15381154034027557231.a n = A338882 n

end A338882

/-! ## A338882.P1660310270043085772

`A051801(record[n-A136400(n)])`
-/

namespace A338882.P1660310270043085772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338882.P1660310270043085772

namespace A338882

/-- `A051801(record[n-A136400(n)])` -/
def P1660310270043085772.Spec : Prop :=
  ∀ n, P1660310270043085772.a n = A338882 n

end A338882

/-! ## A338882.P231955446421642682

`A051801(A222254(record[A222254(n)]))`
-/

namespace A338882.P231955446421642682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A338882.P231955446421642682

namespace A338882

/-- `A051801(A222254(record[A222254(n)]))` -/
def P231955446421642682.Spec : Prop :=
  ∀ n, P231955446421642682.a n = A338882 n

end A338882

/-! ## A338882.P15506112834354341568

`∏{e}[A061509(A052382(n+1)-1), #]`
-/

namespace A338882.P15506112834354341568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (A052382 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A338882.P15506112834354341568

namespace A338882

/-- `∏{e}[A061509(A052382(n+1)-1), #]` -/
def P15506112834354341568.Spec : Prop :=
  ∀ n, (P15506112834354341568.a n : ℤ) = A338882 n

end A338882

/-! ## A338882.P15023601471907479209

`A051801(A088476(n+1)-10)`
-/

namespace A338882.P15023601471907479209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A088476 (n + 1) - 10).toNat

end

end A338882.P15023601471907479209

namespace A338882

/-- `A051801(A088476(n+1)-10)` -/
def P15023601471907479209.Spec : Prop :=
  ∀ n, P15023601471907479209.a n = A338882 n

end A338882

/-!
# A338883: Orders of elements of the Rubik's Cube group.

The programs for A338883, there is no canonical definition to state claims against.
-/

/-! ## A338883.P11276448463137160461

`lt[A091602(A161140(n+1)), A002445(n)]`
-/

namespace A338883.P11276448463137160461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A161140 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338883.P11276448463137160461

/-!
# A338884: The smallest number of bits which need to be appended to the binary representation of n to reach a prime greater than n.

The programs for A338884, there is no canonical definition to state claims against.
-/

/-! ## A338884.P12753069918462813818

`round(sqrt(A208241(n+1)/(n+3)))`
-/

namespace A338884.P12753069918462813818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A208241 (n + 1) : ℚ) / (n + 3 : ℚ) : ℝ))

end

end A338884.P12753069918462813818

/-! ## A338884.P9298913643262003711

`ceil(log2(A208241(n+1)/A005408(n)))`
-/

namespace A338884.P9298913643262003711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((A208241 (n + 1) : ℚ) / (A005408 n : ℚ) : ℝ)⌉

end

end A338884.P9298913643262003711

/-! ## A338884.P7327360779044574294

`A001222(floor(A208241(n+1)/(n+1)))`
-/

namespace A338884.P7327360779044574294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊(A208241 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A338884.P7327360779044574294

/-! ## A338884.P14137548345358752468

`A007305(floor(A208241(n+1)/(n+1)))`
-/

namespace A338884.P14137548345358752468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 ⌊(A208241 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A338884.P14137548345358752468

/-! ## A338884.P6571189793106328857

`A007814(floor(A208241(n+1)/(n+1)))`
-/

namespace A338884.P6571189793106328857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ⌊(A208241 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A338884.P6571189793106328857

/-! ## A338884.P11432916114003213069

`A056239(floor(A208241(n+1)/(n+1)))`
-/

namespace A338884.P11432916114003213069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 ⌊(A208241 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A338884.P11432916114003213069

/-! ## A338884.P14119546862881302198

`A000523(round(A208241(n+1)/(n+1)))`
-/

namespace A338884.P14119546862881302198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A208241 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A338884.P14119546862881302198

/-! ## A338884.P2393546619050071472

`A001222(round(A208241(n+1)/(n+1)))`
-/

namespace A338884.P2393546619050071472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A208241 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A338884.P2393546619050071472

/-! ## A338884.P4402815914241411854

`A000005(floor(A208241(n+1)/(n+1)))-1`
-/

namespace A338884.P4402815914241411854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌊(A208241 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat - 1

end

end A338884.P4402815914241411854

/-! ## A338884.P17761147625063003469

`A000005(round(A208241(n+1)/(n+1)))-1`
-/

namespace A338884.P17761147625063003469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A208241 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat - 1

end

end A338884.P17761147625063003469

/-!
# A338886: a(n) is the number of positive integers k such that there exists a diagonal lattice rectangle touching all four sides of an n X k rectangle.

The programs for A338886, there is no canonical definition to state claims against.
-/

/-! ## A338886.P7738713763373812802

`or(A133010(5*n+1), A338887(n+1))`
-/

namespace A338886.P7738713763373812802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133010 (5 * n + 1)) (A338887 (n + 1))

end

end A338886.P7738713763373812802

/-! ## A338886.P10164876633786017730

`or(A001222(A111820(n)), A338887(n+1))`
-/

namespace A338886.P10164876633786017730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A111820 n).toNat) (A338887 (n + 1))

end

end A338886.P10164876633786017730

/-! ## A338886.P18181363956007486072

`A338887(n+1)+A067618(p?[A007318(n)])`
-/

namespace A338886.P18181363956007486072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338887 (n + 1) + A067618 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338886.P18181363956007486072

/-! ## A338886.P4989981818943199217

`A338887(n+1)+A307598(A338870(n+1))`
-/

namespace A338886.P4989981818943199217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338887 (n + 1) + A307598 (A338870 (n + 1)).toNat

end

end A338886.P4989981818943199217

/-! ## A338886.P11898826518036172140

`or(A113129(A110757(n+1)), A338887(n+1))`
-/

namespace A338886.P11898826518036172140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113129 (A110757 (n + 1)).toNat) (A338887 (n + 1))

end

end A338886.P11898826518036172140

/-!
# A338887: a(n) is the size of the set {x + y*z | x*y + z = n}, where x, y, and z are positive integers.

The programs for A338887, there is no canonical definition to state claims against.
-/

/-! ## A338887.P10075161710862076394

`A338886(n+1)-A307598(A338870(n+1))`
-/

namespace A338887.P10075161710862076394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338886 (n + 1) - A307598 (A338870 (n + 1)).toNat

end

end A338887.P10075161710862076394

/-! ## A338887.P13264565052597321016

`A338886(n+1)+A010815(A338602(n+1))`
-/

namespace A338887.P13264565052597321016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338886 (n + 1) + A010815 (A338602 (n + 1)).toNat

end

end A338887.P13264565052597321016

/-! ## A338887.P12036883243112570755

`A338886(n+1)-A325562(A210662(n+1))`
-/

namespace A338887.P12036883243112570755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338886 (n + 1) - A325562 (A210662 (n + 1)).toNat

end

end A338887.P12036883243112570755

/-!
# A338888: a(n) = (a(n-2) bitwise-OR a(n-1)) + 1; a(1)=0, a(2)=0.

The programs for A338888, the canonical program `A338888.P8044179770267635225` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338888 has offset 1).

The definition of A338888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338888.P8044179770267635225

`or(a(n-1), a(n-2))+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A338888

/-- `or(a(n-1), a(n-2))+1` -/
def P8044179770267635225.Spec : Prop :=
  ∀ n, (P8044179770267635225.a n : ℤ) = A338888 (n + 1)

theorem P8044179770267635225.correct : P8044179770267635225.Spec := by
  intro n
  simp only [A338888, Nat.add_sub_cancel]

end A338888

/-! ## A338888.P7837635113101454348

`4/2-(1-or(a(n-1), a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A338888.P7837635113101454348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (4 : ℚ) / 2 - (1 - Int.lor (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A338888.P7837635113101454348

namespace A338888

/-- `4/2-(1-or(a(n-1), a(n-2)))` -/
def P7837635113101454348.Spec : Prop :=
  ∀ n, P7837635113101454348.a n = (A338888 (n + 1) : ℚ)

end A338888

/-! ## A338888.P5090614239756470883

`1-and(a(n-1), a(n-2))+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A338888.P5090614239756470883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - Int.land (a (n - 1)) (a (n - 2)) + (a (n - 1) + a (n - 2))

end

end A338888.P5090614239756470883

namespace A338888

/-- `1-and(a(n-1), a(n-2))+a(n-1)+a(n-2)` -/
def P5090614239756470883.Spec : Prop :=
  ∀ n, P5090614239756470883.a n = A338888 (n + 1)

end A338888

/-! ## A338888.P11201004251122993532

`1-(and(a(n-1), a(n-2))-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A338888.P11201004251122993532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (Int.land (a (n - 1)) (a (n - 2)) - a (n - 1) - a (n - 2))

end

end A338888.P11201004251122993532

namespace A338888

/-- `1-(and(a(n-1), a(n-2))-a(n-1)-a(n-2))` -/
def P11201004251122993532.Spec : Prop :=
  ∀ n, P11201004251122993532.a n = A338888 (n + 1)

end A338888

/-! ## A338888.P10483512066129725983

`1-A001489(or(a(n-2), a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A338888.P10483512066129725983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - A001489 (Int.lor (a (n - 2)) (a (n - 1))).toNat

end

end A338888.P10483512066129725983

namespace A338888

/-- `1-A001489(or(a(n-2), a(n-1)))` -/
def P10483512066129725983.Spec : Prop :=
  ∀ n, P10483512066129725983.a n = A338888 (n + 1)

end A338888

/-!
# A338889: a(n) = L(L(L(n))) mod L(L(n)), where L = Lucas numbers = A000032.

The programs for A338889, there is no canonical definition to state claims against.
-/

/-! ## A338889.P16934433474484707358

`A338638(A000032(n))`
-/

namespace A338889.P16934433474484707358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338638 (A000032 n).toNat

end

end A338889.P16934433474484707358

/-!
# A338890: Numbers m such that m^2 = i^2 + 2*j^2 + k^2 and i^2 + j^2 and j^2 + k^2 are square numbers and i, j, k > 0.

The programs for A338890, there is no canonical definition to state claims against.
-/

/-! ## A338890.P15155226380297296182

`sqrt(A307481(n+1))`
-/

namespace A338890.P15155226380297296182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A307481 (n + 1) : ℝ)

end

end A338890.P15155226380297296182

/-! ## A338890.P5009433540469611615

`A000027(root(A307481(n+1), 2))`
-/

namespace A338890.P5009433540469611615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A307481 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A338890.P5009433540469611615

/-! ## A338890.P5882765537491046074

`root(A307481(n+1), 2)%A016973(n)`
-/

namespace A338890.P5882765537491046074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A307481 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A016973 n)

end

end A338890.P5882765537491046074

/-! ## A338890.P15873579058919009328

`char[A235723(n+1)]+root(A307481(n+1), 2)`
-/

namespace A338890.P15873579058919009328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235723 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) + (A307481 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A338890.P15873579058919009328

/-! ## A338890.P11331675981962935648

`(A002522(n)-A000290(n))*root(A307481(n+1), 2)`
-/

namespace A338890.P11331675981962935648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002522 n - A000290 n : ℝ) * (A307481 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A338890.P11331675981962935648

/-! ## A338890.P16791087927402983241

`root(A307481(n+1), A133265(A133265(n)))`
-/

namespace A338890.P16791087927402983241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A307481 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A338890.P16791087927402983241

/-! ## A338890.P855763095729874790

`A266303(2*n)²*root(A307481(n+1), 2)`
-/

namespace A338890.P855763095729874790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266303 (2 * n) ^ 2 : ℝ) * (A307481 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A338890.P855763095729874790

/-!
# A338893: Primes of the form k^5-k+1.

The programs for A338893, there is no canonical definition to state claims against.
-/

/-! ## A338893.P2886007009104826205

`A338897(n+1)^5-A338897(n+1)+1`
-/

namespace A338893.P2886007009104826205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338897 (n + 1) ^ 5 - A338897 (n + 1) + 1

end

end A338893.P2886007009104826205

/-! ## A338893.P7820591877003599176

`A272162(A338897(n+1))`
-/

namespace A338893.P7820591877003599176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272162 (A338897 (n + 1)).toNat

end

end A338893.P7820591877003599176

/-! ## A338893.P13928814465129013282

`p?[(n+1)^5-n]`
-/

namespace A338893.P13928814465129013282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338893.P13928814465129013282

/-! ## A338893.P3055351193385980700

`∏{p}[p?[n^5-(n-1)], #]`
-/

namespace A338893.P3055351193385980700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A338893.P3055351193385980700

/-!
# A338894: Number of ordered pairs (x,y): 1 <= x, y <= n*n, such that x*y is a square.

The programs for A338894, the canonical program `A338894.P18059410456497600823` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338894 has offset 1).

The definition of A338894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338894.P18108861757107031077

`2*A339026(n+1)+(n+1)²`
-/

namespace A338894.P18108861757107031077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339026 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A338894.P18108861757107031077

namespace A338894

/-- `2*A339026(n+1)+(n+1)²` -/
def P18108861757107031077.Spec : Prop :=
  ∀ n, P18108861757107031077.a n = A338894 (n + 1)

end A338894

/-! ## A338894.P18059410456497600823

`A132188((n+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338894

/-- `A132188((n+1)²)` -/
def P18059410456497600823.Spec : Prop :=
  ∀ n, P18059410456497600823.a n = A338894 (n + 1)

theorem P18059410456497600823.correct : P18059410456497600823.Spec := by
  intro n
  simp only [A338894, Nat.add_sub_cancel]

end A338894

/-! ## A338894.P14842919854787117539

`A132189((n+1)²)+(n+1)²`
-/

namespace A338894.P14842919854787117539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132189 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A338894.P14842919854787117539

namespace A338894

/-- `A132189((n+1)²)+(n+1)²` -/
def P14842919854787117539.Spec : Prop :=
  ∀ n, P14842919854787117539.a n = A338894 (n + 1)

end A338894

/-! ## A338894.P6925448773426565252

`(n+1)²+2*A132345((n+1)²)`
-/

namespace A338894.P6925448773426565252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A132345 ((n + 1) ^ 2)

end

end A338894.P6925448773426565252

namespace A338894

/-- `(n+1)²+2*A132345((n+1)²)` -/
def P6925448773426565252.Spec : Prop :=
  ∀ n, P6925448773426565252.a n = A338894 (n + 1)

end A338894

/-! ## A338894.P15970838984581431058

`record[A132188(A286378(n)²)]`
-/

namespace A338894.P15970838984581431058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (A286378 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338894.P15970838984581431058

namespace A338894

/-- `record[A132188(A286378(n)²)]` -/
def P15970838984581431058.Spec : Prop :=
  ∀ n, P15970838984581431058.a n = A338894 (n + 1)

end A338894

/-! ## A338894.P1149338300502544250

`A339026(n+1)+A120486((n+1)²)`
-/

namespace A338894.P1149338300502544250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339026 (n + 1) + A120486 ((n + 1) ^ 2)

end

end A338894.P1149338300502544250

namespace A338894

/-- `A339026(n+1)+A120486((n+1)²)` -/
def P1149338300502544250.Spec : Prop :=
  ∀ n, P1149338300502544250.a n = A338894 (n + 1)

end A338894

/-! ## A338894.P15025282579647460586

`A132345((n+1)²)+A120486((n+1)²)`
-/

namespace A338894.P15025282579647460586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 ((n + 1) ^ 2) + A120486 ((n + 1) ^ 2)

end

end A338894.P15025282579647460586

namespace A338894

/-- `A132345((n+1)²)+A120486((n+1)²)` -/
def P15025282579647460586.Spec : Prop :=
  ∀ n, P15025282579647460586.a n = A338894 (n + 1)

theorem P15025282579647460586.correct : P15025282579647460586.Spec := by
  intro n
  simp only [A338894, Nat.add_sub_cancel, A338894.P15025282579647460586.a, A338894.P18059410456497600823.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132188, A132188.P7469144520474104274.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338894

/-! ## A338894.P4026607903281204615

`record[(2*A132345(n+1)+1+n)/A007913(n+1)]`
-/

namespace A338894.P4026607903281204615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A132345 (n + 1) + 1 + (n : ℤ) : ℚ) / (A007913 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338894.P4026607903281204615

namespace A338894

/-- `record[(2*A132345(n+1)+1+n)/A007913(n+1)]` -/
def P4026607903281204615.Spec : Prop :=
  ∀ n, P4026607903281204615.a n = (A338894 (n + 1) : ℚ)

end A338894

/-! ## A338894.P17878794643502454679

`record[(2*A120486(n+1)-(n+1))/A007913(n+1)]`
-/

namespace A338894.P17878794643502454679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A120486 (n + 1) - (n + 1 : ℤ) : ℚ) / (A007913 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338894.P17878794643502454679

namespace A338894

/-- `record[(2*A120486(n+1)-(n+1))/A007913(n+1)]` -/
def P17878794643502454679.Spec : Prop :=
  ∀ n, P17878794643502454679.a n = (A338894 (n + 1) : ℚ)

end A338894

/-!
# A338896: Inradii of Pythagorean triples of A338895.

The programs for A338896, there is no canonical definition to state claims against.
-/

/-! ## A338896.P17385395918539000651

`2*∑[∑[char[∑[n]]]²]%(n+1)`
-/

namespace A338896.P17385395918539000651
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A338896.P17385395918539000651

/-! ## A338896.P3333342145445197751

`2*(∑[∑[char[∑[n]]]²]-(n+1)²)`
-/

namespace A338896.P3333342145445197751
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ))

end

end A338896.P3333342145445197751

/-! ## A338896.P13700821090436145003

`∑[2*(∑[2*n]%comp[∑[n]]-n)]`
-/

namespace A338896.P13700821090436145003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((((∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338896.P13700821090436145003

/-! ## A338896.P13825659129908808041

`∑[2*A114327(n)]`
-/

namespace A338896.P13825659129908808041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338896.P13825659129908808041

/-! ## A338896.P14226503351193978967

`log2(A117401(comp[∑[n]])²)`
-/

namespace A338896.P14226503351193978967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2 : ℝ)

end

end A338896.P14226503351193978967

/-! ## A338896.P11394407114973370119

`∑[2*(A061579(n)-n)]`
-/

namespace A338896.P11394407114973370119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061579 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338896.P11394407114973370119

/-! ## A338896.P15819373492118518316

`1-A335262(n+1)+n`
-/

namespace A338896.P15819373492118518316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A335262 (n + 1) + (n : ℤ)

end

end A338896.P15819373492118518316

/-! ## A338896.P18262271392575355191

`A130154(comp[∑[n]]+1)-1`
-/

namespace A338896.P18262271392575355191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A338896.P18262271392575355191

/-! ## A338896.P14971384691139804442

`A005843(A094053(n+1))`
-/

namespace A338896.P14971384691139804442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A094053 (n + 1)).toNat

end

end A338896.P14971384691139804442

/-! ## A338896.P1116730029555568316

`A195151(A185871(n+1))`
-/

namespace A338896.P1116730029555568316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (A185871 (n + 1)).toNat

end

end A338896.P1116730029555568316

/-!
# A338897: Numbers k such that k^5-k+1 is prime.

The programs for A338897, there is no canonical definition to state claims against.
-/

/-! ## A338897.P15387960491935663075

`ceil(root(A338893(n+1), 5))`
-/

namespace A338897.P15387960491935663075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A338897.P15387960491935663075

/-! ## A338897.P15231272944904760166

`A000027(round(root(A338893(n+1), 5)))`
-/

namespace A338897.P15231272944904760166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A338897.P15231272944904760166

/-! ## A338897.P12919159699641954204

`round(root(A338893(n+1), 5))%A017449(n)`
-/

namespace A338897.P12919159699641954204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))) (A017449 n)

end

end A338897.P12919159699641954204

/-! ## A338897.P8639951847903579509

`A000038(n+1)+round(root(A338893(n+1), 5))`
-/

namespace A338897.P8639951847903579509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A338897.P8639951847903579509

/-! ## A338897.P6217597166284657621

`A254667(round(root(A338893(n+1), 5)))`
-/

namespace A338897.P6217597166284657621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A338897.P6217597166284657621

/-! ## A338897.P7245476593210226973

`1-A024000(round(root(A338893(n+1), 5)))`
-/

namespace A338897.P7245476593210226973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024000 (SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A338897.P7245476593210226973

/-! ## A338897.P10799323499751340462

`A008574(round(root(A338893(n+1), 5)))/4`
-/

namespace A338897.P10799323499751340462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat : ℚ) / 4

end

end A338897.P10799323499751340462

/-! ## A338897.P12807802765107085964

`A001281(2*round(root(A338893(n+1), 5)))`
-/

namespace A338897.P12807802765107085964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * SequenceMachineLib.roundAway ((A338893 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A338897.P12807802765107085964

/-!
# A338898: Concatenated sequence of prime indices of semiprimes (A001358).

The programs for A338898, there is no canonical definition to state claims against.
-/

/-! ## A338898.P2639151225073111854

`A250068(xor(n², A289118(n+1)))`
-/

namespace A338898.P2639151225073111854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (Int.xor (n ^ 2 : ℤ) (A289118 (n + 1))).toNat

end

end A338898.P2639151225073111854

/-! ## A338898.P4492929878743283454

`A277447(A125235(n+1)+A029927(n))`
-/

namespace A338898.P4492929878743283454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277447 (A125235 (n + 1) + A029927 n).toNat

end

end A338898.P4492929878743283454

/-! ## A338898.P3890919172705204730

`gcd(A132440(n), A295894(A187829(n+1)))`
-/

namespace A338898.P3890919172705204730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132440 n) (A295894 (A187829 (n + 1)).toNat)

end

end A338898.P3890919172705204730

/-! ## A338898.P777348953077104424

`A303828(xor(A025581(n), A153701(n+1)))`
-/

namespace A338898.P777348953077104424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (Int.xor (A025581 n) (A153701 (n + 1))).toNat

end

end A338898.P777348953077104424

/-! ## A338898.P11215363643188056704

`A055642(A000265(n+2)^A308566(n+1))`
-/

namespace A338898.P11215363643188056704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A000265 (n + 2) : ℚ) ^ (A308566 (n + 1) : ℤ))).toNat

end

end A338898.P11215363643188056704

/-!
# A338899: Concatenated sequence of prime indices of squarefree semiprimes (A006881).

The programs for A338899, there is no canonical definition to state claims against.
-/

/-! ## A338899.P12266923893030654074

`A000720(A343004(n+1))`
-/

namespace A338899.P12266923893030654074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A343004 (n + 1)).toNat

end

end A338899.P12266923893030654074

/-! ## A338899.P9478199544505719485

`A003963(p?[A343004(n+1)])`
-/

namespace A338899.P9478199544505719485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338899.P9478199544505719485

/-! ## A338899.P9779319781824116011

`A026238(p?[A343004(n+1)])`
-/

namespace A338899.P9779319781824116011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338899.P9779319781824116011

/-! ## A338899.P16756572021706181630

`A061395(A343004(n+1)²)`
-/

namespace A338899.P16756572021706181630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A343004 (n + 1) ^ 2).toNat

end

end A338899.P16756572021706181630

/-! ## A338899.P14127064511004409552

`A066328(A343004(n+1)²)`
-/

namespace A338899.P14127064511004409552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A343004 (n + 1) ^ 2).toNat

end

end A338899.P14127064511004409552

/-! ## A338899.P7956554770598801651

`A055396(A343004(n+1)²)`
-/

namespace A338899.P7956554770598801651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A343004 (n + 1) ^ 2).toNat

end

end A338899.P7956554770598801651

/-! ## A338899.P17311350719927666670

`A055399(A343004(n+1)²)`
-/

namespace A338899.P17311350719927666670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055399 (A343004 (n + 1) ^ 2).toNat

end

end A338899.P17311350719927666670

/-! ## A338899.P2650301900464834960

`A056811(A343004(n+1)²)`
-/

namespace A338899.P2650301900464834960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A343004 (n + 1) ^ 2).toNat

end

end A338899.P2650301900464834960

/-! ## A338899.P8296175713432225455

`A297167(A343004(n+1)²)`
-/

namespace A338899.P8296175713432225455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A343004 (n + 1) ^ 2).toNat

end

end A338899.P8296175713432225455

