import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A384801: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A213108.

The programs for A384801, there is no canonical definition to state claims against.
-/

/-! ## A384801.P10275696162921559098

`A102705(A384977(n))`
-/

namespace A384801.P10275696162921559098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A384977 n).toNat

end

end A384801.P10275696162921559098

/-! ## A384801.P13460885943101614988

`A123580(A320079(n))`
-/

namespace A384801.P13460885943101614988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A320079 n).toNat

end

end A384801.P13460885943101614988

/-! ## A384801.P4630150452223052664

`A012265(3*A320079(n))`
-/

namespace A384801.P4630150452223052664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (3 * A320079 n).toNat

end

end A384801.P4630150452223052664

/-!
# A384803: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^4) ).

The programs for A384803, there is no canonical definition to state claims against.
-/

/-! ## A384803.P12693532448595569274

`A384804(∑[n+1]+n)`
-/

namespace A384803.P12693532448595569274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384803.P12693532448595569274

/-!
# A384808: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384617.

The programs for A384808, there is no canonical definition to state claims against.
-/

/-! ## A384808.P7715466921806236856

`2*A385061(n)-(A005843(A379168(n))-A384721(n))`
-/

namespace A384808.P7715466921806236856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A385061 n - (A005843 (A379168 n).toNat - A384721 n)

end

end A384808.P7715466921806236856

/-! ## A384808.P2793140843402602574

`A072088(A379168(n))%24`
-/

namespace A384808.P2793140843402602574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (A379168 n).toNat) 24

end

end A384808.P2793140843402602574

/-! ## A384808.P17216009572697994413

`A072088(A384985(n))%24`
-/

namespace A384808.P17216009572697994413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (A384985 n).toNat) 24

end

end A384808.P17216009572697994413

/-! ## A384808.P342041705496313931

`ceil(A384813(n)/A384877(A384986(n)))`
-/

namespace A384808.P342041705496313931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A384813 n : ℚ) / (A384877 (A384986 n).toNat : ℚ)⌉

end

end A384808.P342041705496313931

/-! ## A384808.P1815485198609893456

`2*A384813(n)-A072088(A379168(n))`
-/

namespace A384808.P1815485198609893456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384813 n - A072088 (A379168 n).toNat

end

end A384808.P1815485198609893456

/-!
# A384809: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^2)^2 ).

The programs for A384809, there is no canonical definition to state claims against.
-/

/-! ## A384809.P683552716072203318

`A384811(∑[n+2]-1)`
-/

namespace A384809.P683552716072203318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384811 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384809.P683552716072203318

/-!
# A384810: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^3)^2 ).

The programs for A384810, there is no canonical definition to state claims against.
-/

/-! ## A384810.P6383850027080010332

`A384813(∑[n+2]-1)`
-/

namespace A384810.P6383850027080010332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384813 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384810.P6383850027080010332

/-!
# A384811: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384809.

The programs for A384811, there is no canonical definition to state claims against.
-/

/-! ## A384811.P5476655243013552757

`2*A384985(n)-(A005843(A379168(n))-A384721(n))`
-/

namespace A384811.P5476655243013552757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384985 n - (A005843 (A379168 n).toNat - A384721 n)

end

end A384811.P5476655243013552757

/-! ## A384811.P6423497742694954252

`A072088(A379168(n))%(n-49)`
-/

namespace A384811.P6423497742694954252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (A379168 n).toNat) ((n : ℤ) - 49)

end

end A384811.P6423497742694954252

/-! ## A384811.P6744072607473883582

`ceil(A384751(n)/A384877(A384986(n)))`
-/

namespace A384811.P6744072607473883582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A384751 n : ℚ) / (A384877 (A384986 n).toNat : ℚ)⌉

end

end A384811.P6744072607473883582

/-! ## A384811.P11484160632503407316

`A072088(A384721(n))%A065387(n+1)`
-/

namespace A384811.P11484160632503407316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (A384721 n).toNat) (A065387 (n + 1))

end

end A384811.P11484160632503407316

/-!
# A384812: If n = Product prime(i)^e(i) then a(n) = Sum prime(e(i)).

The programs for A384812, the canonical program `A384812.P7905402250364607323` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384812 has offset 1).

The definition of A384812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384812.P7905402250364607323

`∑{e}[1+n, A000040(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384812

/-- `∑{e}[1+n, A000040(#)]` -/
def P7905402250364607323.Spec : Prop :=
  ∀ n, P7905402250364607323.a n = A384812 (n + 1)

theorem P7905402250364607323.correct : P7905402250364607323.Spec := by
  intro n
  simp only [A384812, Nat.add_sub_cancel]

end A384812

/-! ## A384812.P447732292504211578

`∑{e}[n+1, A030291(#)]`
-/

namespace A384812.P447732292504211578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A030291 (Nat.factorization (f1 n) p)

end

end A384812.P447732292504211578

namespace A384812

/-- `∑{e}[n+1, A030291(#)]` -/
def P447732292504211578.Spec : Prop :=
  ∀ n, P447732292504211578.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P13599062198952837193

`∑{e}[n+1, A038618(#)]`
-/

namespace A384812.P13599062198952837193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A038618 (Nat.factorization (f1 n) p)

end

end A384812.P13599062198952837193

namespace A384812

/-- `∑{e}[n+1, A038618(#)]` -/
def P13599062198952837193.Spec : Prop :=
  ∀ n, P13599062198952837193.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P3170921098333083370

`∑{e}[n+1, A049545(#)]`
-/

namespace A384812.P3170921098333083370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A049545 (Nat.factorization (f1 n) p)

end

end A384812.P3170921098333083370

namespace A384812

/-- `∑{e}[n+1, A049545(#)]` -/
def P3170921098333083370.Spec : Prop :=
  ∀ n, P3170921098333083370.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P13470450285346396590

`∑{e}[n+1, A049555(#)]`
-/

namespace A384812.P13470450285346396590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A049555 (Nat.factorization (f1 n) p)

end

end A384812.P13470450285346396590

namespace A384812

/-- `∑{e}[n+1, A049555(#)]` -/
def P13470450285346396590.Spec : Prop :=
  ∀ n, P13470450285346396590.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P12315507755033634527

`∑{e}[n+1, A052042(#)]`
-/

namespace A384812.P12315507755033634527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A052042 (Nat.factorization (f1 n) p)

end

end A384812.P12315507755033634527

namespace A384812

/-- `∑{e}[n+1, A052042(#)]` -/
def P12315507755033634527.Spec : Prop :=
  ∀ n, P12315507755033634527.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P5448470727867911690

`∑{e}[n+1, A061022(#)]`
-/

namespace A384812.P5448470727867911690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p)

end

end A384812.P5448470727867911690

namespace A384812

/-- `∑{e}[n+1, A061022(#)]` -/
def P5448470727867911690.Spec : Prop :=
  ∀ n, P5448470727867911690.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P1144997538781973457

`∑{e}[n+1, A069675(#)]`
-/

namespace A384812.P1144997538781973457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A069675 (Nat.factorization (f1 n) p)

end

end A384812.P1144997538781973457

namespace A384812

/-- `∑{e}[n+1, A069675(#)]` -/
def P1144997538781973457.Spec : Prop :=
  ∀ n, P1144997538781973457.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P16722115296808942883

`∑{e}[n+1, A077359(#)]`
-/

namespace A384812.P16722115296808942883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A077359 (Nat.factorization (f1 n) p)

end

end A384812.P16722115296808942883

namespace A384812

/-- `∑{e}[n+1, A077359(#)]` -/
def P16722115296808942883.Spec : Prop :=
  ∀ n, P16722115296808942883.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P2641608510297336792

`∑{e}[n+1, A154363(#)]`
-/

namespace A384812.P2641608510297336792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A154363 (Nat.factorization (f1 n) p)

end

end A384812.P2641608510297336792

namespace A384812

/-- `∑{e}[n+1, A154363(#)]` -/
def P2641608510297336792.Spec : Prop :=
  ∀ n, P2641608510297336792.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P7180955376498325374

`A001414(A181819(n+1))`
-/

namespace A384812.P7180955376498325374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A181819 (n + 1)).toNat

end

end A384812.P7180955376498325374

namespace A384812

/-- `A001414(A181819(n+1))` -/
def P7180955376498325374.Spec : Prop :=
  ∀ n, P7180955376498325374.a n = A384812 (n + 1)

end A384812

/-! ## A384812.P602830428311981294

`∑{e}[A304203(n+1), #]`
-/

namespace A384812.P602830428311981294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A384812.P602830428311981294

namespace A384812

/-- `∑{e}[A304203(n+1), #]` -/
def P602830428311981294.Spec : Prop :=
  ∀ n, (P602830428311981294.a n : ℤ) = A384812 (n + 1)

end A384812

/-! ## A384812.P4195782270029651461

`A001222(A304203(n+1))`
-/

namespace A384812.P4195782270029651461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304203 (n + 1)).toNat

end

end A384812.P4195782270029651461

namespace A384812

/-- `A001222(A304203(n+1))` -/
def P4195782270029651461.Spec : Prop :=
  ∀ n, P4195782270029651461.a n = A384812 (n + 1)

end A384812

/-!
# A384813: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384810.

The programs for A384813, there is no canonical definition to state claims against.
-/

/-! ## A384813.P16599772413070409943

`A353852(A118349(n))`
-/

namespace A384813.P16599772413070409943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (A118349 n).toNat

end

end A384813.P16599772413070409943

/-! ## A384813.P8009932187809427963

`A116447(A378237(n))`
-/

namespace A384813.P8009932187809427963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A378237 n).toNat

end

end A384813.P8009932187809427963

/-!
# A384815: Sum of the cubes of the exponents in the prime factorization of n.

The programs for A384815, the canonical program `A384815.P15240163117284051297` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384815 has offset 1).

The definition of A384815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384815.P15240163117284051297

`∑{e}[1+n, #^3]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A384815

/-- `∑{e}[1+n, #^3]` -/
def P15240163117284051297.Spec : Prop :=
  ∀ n, (P15240163117284051297.a n : ℤ) = A384815 (n + 1)

theorem P15240163117284051297.correct : P15240163117284051297.Spec := by
  intro n
  simp only [A384815, Nat.add_sub_cancel]

end A384815

/-! ## A384815.P10172066984484486907

`∑{p}[n+1, val(n+1, #)^3]`
-/

namespace A384815.P10172066984484486907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ 3

end

end A384815.P10172066984484486907

namespace A384815

/-- `∑{p}[n+1, val(n+1, #)^3]` -/
def P10172066984484486907.Spec : Prop :=
  ∀ n, (P10172066984484486907.a n : ℤ) = A384815 (n + 1)

end A384815

/-! ## A384815.P3171203409253277291

`log2(∏{e}[n+1, 2^#^3])`
-/

namespace A384815.P3171203409253277291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p ^ 3 : ℕ) : ℝ)

end

end A384815.P3171203409253277291

namespace A384815

/-- `log2(∏{e}[n+1, 2^#^3])` -/
def P3171203409253277291.Spec : Prop :=
  ∀ n, P3171203409253277291.a n = (A384815 (n + 1) : ℝ)

end A384815

/-! ## A384815.P26886475193862275

`∑{digits}[A320390(n+1), #^3]`
-/

namespace A384815.P26886475193862275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 3).sum

end

end A384815.P26886475193862275

namespace A384815

/-- `∑{digits}[A320390(n+1), #^3]` -/
def P26886475193862275.Spec : Prop :=
  ∀ n, (P26886475193862275.a n : ℤ) = A384815 (n + 1)

end A384815

/-! ## A384815.P3039022688942313283

`A055012(A320390(n+1))`
-/

namespace A384815.P3039022688942313283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A320390 (n + 1)).toNat

end

end A384815.P3039022688942313283

namespace A384815

/-- `A055012(A320390(n+1))` -/
def P3039022688942313283.Spec : Prop :=
  ∀ n, P3039022688942313283.a n = A384815 (n + 1)

end A384815

/-!
# A384816: Sum of the cubes of the indices of distinct prime factors of n.

The programs for A384816, there is no canonical definition to state claims against.
-/

/-! ## A384816.P17488675252074947357

`A304037(A053149(n+1))`
-/

namespace A384816.P17488675252074947357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A053149 (n + 1)).toNat

end

end A384816.P17488675252074947357

/-!
# A384818: Denominator of the sum of the reciprocals of all square divisors of all positive integers <= n.

The programs for A384818, there is no canonical definition to state claims against.
-/

/-! ## A384818.P12474135016132426909

`A333271(A275485(n+2))`
-/

namespace A384818.P12474135016132426909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333271 (A275485 (n + 2)).toNat

end

end A384818.P12474135016132426909

/-!
# A384819: Nonnegative numbers a(n) < n for n >= 1 such that exp( Sum_{n>=1} (n^2 - a(n))*x^n/n ) is a power series with integral coefficients.

The programs for A384819, there is no canonical definition to state claims against.
-/

/-! ## A384819.P1240340044670267697

`A060640(A000079(n))%∏{p}[n+1, #]`
-/

namespace A384819.P1240340044670267697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060640 (A000079 n).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A384819.P1240340044670267697

/-! ## A384819.P16456756486217747013

`(A110738(n+1)-2)%A383541(n+1)`
-/

namespace A384819.P16456756486217747013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110738 (n + 1) - 2) (A383541 (n + 1))

end

end A384819.P16456756486217747013

/-! ## A384819.P11404192253773555094

`A110738(n+1)-A000120(A000051(n))`
-/

namespace A384819.P11404192253773555094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110738 (n + 1) - A000120 (A000051 n).toNat

end

end A384819.P11404192253773555094

/-! ## A384819.P10225143040047587000

`A001855(A000079(n))%A007947(n+1)`
-/

namespace A384819.P10225143040047587000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001855 (A000079 n).toNat) (A007947 (n + 1))

end

end A384819.P10225143040047587000

/-!
# A384820: G.f. A(x) = exp( Sum_{n>=1} (n^2 - A384819(n))*x^n/n ) where A384819(k) < k for k >= 1 such that A(x) is a power series with integral coefficients.

The programs for A384820, there is no canonical definition to state claims against.
-/

/-! ## A384820.P1652348785610041582

`ceil(sqrt(A327019(n)+A000045(2*(n+2))))-(n+1)`
-/

namespace A384820.P1652348785610041582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A327019 n + A000045 (2 * (n + 2)) : ℝ)⌉ - (n + 1 : ℤ)

end

end A384820.P1652348785610041582

/-! ## A384820.P7889783641617815367

`A359536(A160786(n))`
-/

namespace A384820.P7889783641617815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A160786 n).toNat

end

end A384820.P7889783641617815367

/-! ## A384820.P10961099375485282069

`A067086(A323936(n+1))`
-/

namespace A384820.P10961099375485282069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A323936 (n + 1)).toNat

end

end A384820.P10961099375485282069

/-! ## A384820.P10063748862893451286

`A003056(A085560(n))-A003056(n)`
-/

namespace A384820.P10063748862893451286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A085560 n).toNat - A003056 n

end

end A384820.P10063748862893451286

/-! ## A384820.P17417581123174787662

`floor(sqrt(floor(A016921(3^n)/7)))`
-/

namespace A384820.P17417581123174787662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊(A016921 (3 ^ n) : ℚ) / 7⌋

end

end A384820.P17417581123174787662

/-!
# A384821: G.f. A(x) satisfies -1/x = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+2).

The programs for A384821, there is no canonical definition to state claims against.
-/

/-! ## A384821.P11706255581851484570

`A228894(A380682(n))`
-/

namespace A384821.P11706255581851484570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (A380682 n).toNat

end

end A384821.P11706255581851484570

/-! ## A384821.P3815095236488690431

`A333224(A000707(n+1))+A015530(n)`
-/

namespace A384821.P3815095236488690431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A000707 (n + 1)).toNat + A015530 n

end

end A384821.P3815095236488690431

/-!
# A384822: G.f. A(x) satisfies 1/x^5 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+4).

The programs for A384822, there is no canonical definition to state claims against.
-/

/-! ## A384822.P7581518854386717848

`A066853(A004106(n+1)-A298118(n+3))`
-/

namespace A384822.P7581518854386717848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A004106 (n + 1) - A298118 (n + 3)).toNat

end

end A384822.P7581518854386717848

/-!
# A384823: G.f. A(x) satisfies -1/x^11 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+6).

The programs for A384823, there is no canonical definition to state claims against.
-/

/-! ## A384823.P8626328146488110880

`A250001(a(n-2))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=28`
-/

namespace A384823.P8626328146488110880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 28] fun n a =>
  A250001 (a (n - 2)).toNat

end

end A384823.P8626328146488110880

/-!
# A384824: G.f. A(x) satisfies 1/x^19 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+8).

The programs for A384824, there is no canonical definition to state claims against.
-/

/-! ## A384824.P8229582964501138891

`or(A132896(A121353(n)), A357224(n))`
-/

namespace A384824.P8229582964501138891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132896 (A121353 n).toNat) (A357224 n)

end

end A384824.P8229582964501138891

/-! ## A384824.P12341586971551114048

`or(A357224(n), A387223(A000108(n)))`
-/

namespace A384824.P12341586971551114048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A357224 n) (A387223 (A000108 n).toNat)

end

end A384824.P12341586971551114048

/-!
# A384825: G.f. A(x) satisfies -1/x^29 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+10).

The programs for A384825, there is no canonical definition to state claims against.
-/

/-! ## A384825.P5514128522033905792

`A081608(∑[n]^n)`
-/

namespace A384825.P5514128522033905792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081608 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A384825.P5514128522033905792

/-!
# A384827: G.f. A(x) satisfies -1/x^55 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+14).

The programs for A384827, there is no canonical definition to state claims against.
-/

/-! ## A384827.P3149008288852256861

`A319781(A167606(n))+A007556(n)`
-/

namespace A384827.P3149008288852256861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319781 (A167606 n).toNat + A007556 n

end

end A384827.P3149008288852256861

/-!
# A384828: G.f. A(x) satisfies 1/x^71 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+16).

The programs for A384828, there is no canonical definition to state claims against.
-/

/-! ## A384828.P14292940631893773786

`A293701(A355762(n)+1)`
-/

namespace A384828.P14292940631893773786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (A355762 n + 1).toNat

end

end A384828.P14292940631893773786

/-!
# A384829: G.f. satisfies A(x) = Sum_{n>=0} x^(n*(n+1)/2) * A(x)^(n*(n+1)).

The programs for A384829, there is no canonical definition to state claims against.
-/

/-! ## A384829.P3945166124747004500

`A226233(A098619(n))`
-/

namespace A384829.P3945166124747004500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A098619 n).toNat

end

end A384829.P3945166124747004500

/-! ## A384829.P4021163881604323611

`A226190(A149062(n))`
-/

namespace A384829.P4021163881604323611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149062 n).toNat

end

end A384829.P4021163881604323611

/-! ## A384829.P7419991107179196788

`A214701(A165538(n))`
-/

namespace A384829.P7419991107179196788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A165538 n).toNat

end

end A384829.P7419991107179196788

/-!
# A384830: G.f. satisfies A(x) = A(x^3 - 3*x*A(x)^3) / A(x^2 - 2*x*A(x)^2).

The programs for A384830, there is no canonical definition to state claims against.
-/

/-! ## A384830.P16043918863261351444

`A124311(n)-A025427(A374880(n))`
-/

namespace A384830.P16043918863261351444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124311 n - A025427 (A374880 n).toNat

end

end A384830.P16043918863261351444

/-!
# A384831: G.f. A(x) satisfies x + x^2 = A(A(x)) - A(A(A(x)))^2.

The programs for A384831, there is no canonical definition to state claims against.
-/

/-! ## A384831.P11994054534888356079

`A076200(A149050(n))`
-/

namespace A384831.P11994054534888356079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076200 (A149050 n).toNat

end

end A384831.P11994054534888356079

/-! ## A384831.P885668044350497385

`A274924(A167762(n)²)`
-/

namespace A384831.P885668044350497385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274924 (A167762 n ^ 2).toNat

end

end A384831.P885668044350497385

/-!
# A384832: G.f. A(x) = Sum_{n>=0} x^n * Product_{k=0..n} ((1+x)^(n-k+1) - x^k).

The programs for A384832, there is no canonical definition to state claims against.
-/

/-! ## A384832.P1571231422096668671

`A119021(n)-A271315(A000081(n+1))`
-/

namespace A384832.P1571231422096668671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119021 n - A271315 (A000081 (n + 1)).toNat

end

end A384832.P1571231422096668671

/-! ## A384832.P15607344531239533631

`A289494(A238748(n+1)+A083858(n+1))`
-/

namespace A384832.P15607344531239533631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A238748 (n + 1) + A083858 (n + 1)).toNat

end

end A384832.P15607344531239533631

/-!
# A384834: Number of divisors of n such that (-d)^d == -d (mod n).

The programs for A384834, there is no canonical definition to state claims against.
-/

/-! ## A384834.P724780010640246418

`A384237(n+1)+A385392(n+1)-A384854(n+1)`
-/

namespace A384834.P724780010640246418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (n + 1) + (A385392 (n + 1) - A384854 (n + 1))

end

end A384834.P724780010640246418

/-! ## A384834.P18378143100851893028

`A327164((n+1)^3)+1`
-/

namespace A384834.P18378143100851893028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327164 ((n + 1) ^ 3) + 1

end

end A384834.P18378143100851893028

/-! ## A384834.P16771309607073244376

`A379678(3*n+4)+A001221(n+1)+1`
-/

namespace A384834.P16771309607073244376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (3 * n + 4) + (A001221 (n + 1) + 1)

end

end A384834.P16771309607073244376

/-! ## A384834.P5615144972666231480

`A379668(3*n+4)+A361380(∑{p}[n+1, gcd(n, #)])`
-/

namespace A384834.P5615144972666231480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379668 (3 * n + 4) + A361380 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A384834.P5615144972666231480

/-! ## A384834.P2197779914118861294

`A050041(A379668(3*n+4)+A034444(n+1))`
-/

namespace A384834.P2197779914118861294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (A379668 (3 * n + 4) + A034444 (n + 1)).toNat

end

end A384834.P2197779914118861294

/-!
# A384836: a(n) = Sum_{k=0..floor(n/4)} |Stirling1(n,4*k)|.

The programs for A384836, there is no canonical definition to state claims against.
-/

/-! ## A384836.P14316932476991131672

`A357119(A052905(n+2))`
-/

namespace A384836.P14316932476991131672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (A052905 (n + 2)).toNat

end

end A384836.P14316932476991131672

/-!
# A384837: a(n) = Sum_{k=0..floor(n/5)} |Stirling1(n,5*k)|.

The programs for A384837, there is no canonical definition to state claims against.
-/

/-! ## A384837.P12482130607376290121

`A357119(eq[5, A025581(n)])`
-/

namespace A384837.P12482130607376290121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384837.P12482130607376290121

/-!
# A384843: Wiener index of the n-Dorogovtsev-Goltsev-Mendes graph.

The programs for A384843, the canonical program `A384843.P4648456685177200873` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384843 has offset 0).

The definition of A384843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384843.P4648456685177200873

`ogf((1-19x+111x^2-168x^3+27x^4)/(1-22x+156x^2-378x^3+243x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A384843

/-- `ogf((1-19x+111x^2-168x^3+27x^4)/(1-22x+156x^2-378x^3+243x^4))` -/
def P4648456685177200873.Spec : Prop :=
  ∀ n, P4648456685177200873.a n = A384843 n

theorem P4648456685177200873.correct : P4648456685177200873.Spec := by
  intro n
  simp only [A384843]

end A384843

/-!
# A384850: Triangle read by rows: T(n,k) is the number of unsensed simple planar maps with n edges and k vertices, 1 <= k <= n+1.

The programs for A384850, there is no canonical definition to state claims against.
-/

/-! ## A384850.P6261616836672194490

`∑{e}[A017990(A395304(n)), #]`
-/

namespace A384850.P6261616836672194490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 (A395304 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A384850.P6261616836672194490

/-! ## A384850.P16525430304487826602

`A005811(A054923(n)^A296612(n))`
-/

namespace A384850.P16525430304487826602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A054923 n : ℚ) ^ (A296612 n : ℤ))).toNat

end

end A384850.P16525430304487826602

/-! ## A384850.P9146206345407011963

`A255270(A054923(n)^A296612(n))`
-/

namespace A384850.P9146206345407011963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (SequenceMachineLib.roundAway ((A054923 n : ℚ) ^ (A296612 n : ℤ))).toNat

end

end A384850.P9146206345407011963

/-!
# A384852: a(n) = 2*binomial(n,2) + 3*binomial(n,3) + 4*binomial(n,4).

The programs for A384852, the canonical program `A384852.P3187201973385142083` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384852 has offset 0).

The definition of A384852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A384852.P3187201973385142083`, by `A384852.P3187201973385142083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384852.P6881088204255657097

`ogf((2x^2-x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A384852.P6881088204255657097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1, 3] [1, -5, 10, -10, 5, -1] n

end

end A384852.P6881088204255657097

namespace A384852

/-- `ogf((2x^2-x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6881088204255657097.Spec : Prop :=
  ∀ n, P6881088204255657097.a n = A384852 n

end A384852

/-! ## A384852.P3187201973385142083

`2*C(n, 2)+3*C(n, 3)+4*C(n, 4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A384852

/-- `2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` -/
def P3187201973385142083.Spec : Prop :=
  ∀ n, (P3187201973385142083.a n : ℤ) = A384852 n

theorem P3187201973385142083.correct : P3187201973385142083.Spec := by
  intro n
  simp only [A384852]

end A384852

/-! ## A384852.P16531046943989499129

`1/6*n^4-1/2*n^3+4/3*n²-n`
-/

namespace A384852.P16531046943989499129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n ^ 4 : ℚ) - (1 : ℚ) / 2 * (n ^ 3 : ℚ) + (4 : ℚ) / 3 * (n ^ 2 : ℚ) - (n : ℚ)

end

end A384852.P16531046943989499129

namespace A384852

/-- `1/6*n^4-1/2*n^3+4/3*n²-n` -/
def P16531046943989499129.Spec : Prop :=
  ∀ n, P16531046943989499129.a n = (A384852 n : ℚ)

theorem P16531046943989499129.correct : P16531046943989499129.Spec := by
  intro n
  simp only [A384852, Nat.add_sub_cancel, A384852.P16531046943989499129.a, A384852.P3187201973385142083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384852

/-! ## A384852.P12726612645383845485

`(n-1+C(n, 3))*n`
-/

namespace A384852.P12726612645383845485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 + (Nat.choose n 3 : ℤ)) * (n : ℤ)

end

end A384852.P12726612645383845485

namespace A384852

/-- `(n-1+C(n, 3))*n` -/
def P12726612645383845485.Spec : Prop :=
  ∀ n, P12726612645383845485.a n = A384852 n

theorem P12726612645383845485.correct : P12726612645383845485.Spec := by
  intro n
  simp only [A384852, Nat.add_sub_cancel, A384852.P12726612645383845485.a, A384852.P3187201973385142083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384852

/-! ## A384852.P12960924290727993429

`(n-(1-C(n, 3)))*n`
-/

namespace A384852.P12960924290727993429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (1 - (Nat.choose n 3 : ℤ))) * (n : ℤ)

end

end A384852.P12960924290727993429

namespace A384852

/-- `(n-(1-C(n, 3)))*n` -/
def P12960924290727993429.Spec : Prop :=
  ∀ n, P12960924290727993429.a n = A384852 n

theorem P12960924290727993429.correct : P12960924290727993429.Spec := by
  intro n
  simp only [A384852, Nat.add_sub_cancel, A384852.P12960924290727993429.a, A384852.P3187201973385142083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384852

/-! ## A384852.P15846668689704644499

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A384852.P15846668689704644499
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384852.P15846668689704644499

namespace A384852

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P15846668689704644499.Spec : Prop :=
  ∀ n, (P15846668689704644499.a n : ℤ) = A384852 n

end A384852

/-! ## A384852.P8237091384450173151

`n*Δ[A006522(n)]`
-/

namespace A384852.P8237091384450173151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A384852.P8237091384450173151

namespace A384852

/-- `n*Δ[A006522(n)]` -/
def P8237091384450173151.Spec : Prop :=
  ∀ n, P8237091384450173151.a n = A384852 n

end A384852

/-! ## A384852.P6840595715719871819

`∑{#}[n-1, n*#*(n-1-#)+n-1]`
-/

namespace A384852.P6840595715719871819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n * k : ℤ) * ((n : ℤ) - 1 - (k : ℤ)) + ((n : ℤ) - 1))

end

end A384852.P6840595715719871819

namespace A384852

/-- `∑{#}[n-1, n*#*(n-1-#)+n-1]` -/
def P6840595715719871819.Spec : Prop :=
  ∀ n, P6840595715719871819.a n = A384852 n

end A384852

/-! ## A384852.P10709895129084714373

`n*A004006(A122218(A000124(n)))`
-/

namespace A384852.P10709895129084714373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004006 (A122218 (A000124 n).toNat).toNat

end

end A384852.P10709895129084714373

namespace A384852

/-- `n*A004006(A122218(A000124(n)))` -/
def P10709895129084714373.Spec : Prop :=
  ∀ n, P10709895129084714373.a n = A384852 n

end A384852

/-!
# A384853: Squared length of interior diagonal of n-th (U, V)-crossbox, where U = (1, 0, 1) and V = (0, 1, 0), as in Comments.

The programs for A384853, the canonical program `A384853.P12743840133399295905` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384853 has offset 1).

The definition of A384853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384853.P12743840133399295905

`4*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=5, a(2)=9`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A384853

/-- `4*a(n-1)-3*a(n-2)` -/
def P12743840133399295905.Spec : Prop :=
  ∀ n, P12743840133399295905.a n = A384853 (n + 1)

theorem P12743840133399295905.correct : P12743840133399295905.Spec := by
  intro n
  simp only [A384853, Nat.add_sub_cancel]

end A384853

/-! ## A384853.P15936885406440929575

`ogf((1+x-8x^2)/(1-4x+3x^2))`
-/

namespace A384853.P15936885406440929575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -8] [1, -4, 3] n

end

end A384853.P15936885406440929575

namespace A384853

/-- `ogf((1+x-8x^2)/(1-4x+3x^2))` -/
def P15936885406440929575.Spec : Prop :=
  ∀ n, P15936885406440929575.a n = A384853 (n + 1)

end A384853

/-! ## A384853.P8092514256362943081

`Δ[3^abs(1-n)]+3`
-/

namespace A384853.P8092514256362943081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A384853.P8092514256362943081

namespace A384853

/-- `Δ[3^abs(1-n)]+3` -/
def P8092514256362943081.Spec : Prop :=
  ∀ n, P8092514256362943081.a n = (A384853 (n + 1) : ℚ)

end A384853

/-! ## A384853.P12612209350512017380

`3*(a(n-1)-2)` with `a(0)=1, a(1)=5`
-/

namespace A384853.P12612209350512017380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * (a (n - 1) - 2)

end

end A384853.P12612209350512017380

namespace A384853

/-- `3*(a(n-1)-2)` -/
def P12612209350512017380.Spec : Prop :=
  ∀ n, P12612209350512017380.a n = A384853 (n + 1)

end A384853

/-! ## A384853.P5007937321400953084

`record[lcm(3, 2-a(n-2))]` with `a(0)=1, a(1)=-2, a(2)=5, a(3)=-7`
-/

namespace A384853.P5007937321400953084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 5, -7] fun n f1 =>
  (Int.lcm 3 (2 - f1 (n - 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384853.P5007937321400953084

namespace A384853

/-- `record[lcm(3, 2-a(n-2))]` -/
def P5007937321400953084.Spec : Prop :=
  ∀ n, P5007937321400953084.a n = A384853 (n + 1)

end A384853

/-! ## A384853.P6077388236602701595

`a(n-1)+lcm(4, a(n-1)-3)` with `a(0)=1`
-/

namespace A384853.P6077388236602701595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm 4 ((a (n - 1) : ℤ) - 3)

end

end A384853.P6077388236602701595

namespace A384853

/-- `a(n-1)+lcm(4, a(n-1)-3)` -/
def P6077388236602701595.Spec : Prop :=
  ∀ n, (P6077388236602701595.a n : ℤ) = A384853 (n + 1)

end A384853

/-! ## A384853.P16046721851694200815

`∑[a(n-1)+a(n-1)+a(n-1)]` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A384853.P16046721851694200815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384853.P16046721851694200815

namespace A384853

/-- `∑[a(n-1)+a(n-1)+a(n-1)]` -/
def P16046721851694200815.Spec : Prop :=
  ∀ n, (P16046721851694200815.a n : ℤ) = A384853 (n + 1)

end A384853

/-! ## A384853.P12151281340615722650

`floor(a(n-1)+a(n-1)+a(n-1)-6)` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A384853.P12151281340615722650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 6))

end

end A384853.P12151281340615722650

namespace A384853

/-- `floor(a(n-1)+a(n-1)+a(n-1)-6)` -/
def P12151281340615722650.Spec : Prop :=
  ∀ n, P12151281340615722650.a n = A384853 (n + 1)

end A384853

/-! ## A384853.P1489069969527048562

`Δ[A155734(n)+A008486(n+2)]`
-/

namespace A384853.P1489069969527048562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 n + A008486 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384853.P1489069969527048562

namespace A384853

/-- `Δ[A155734(n)+A008486(n+2)]` -/
def P1489069969527048562.Spec : Prop :=
  ∀ n, P1489069969527048562.a n = A384853 (n + 1)

end A384853

/-!
# A384854: The number of divisors d of n such that (-d)^d == d (mod n).

The programs for A384854, there is no canonical definition to state claims against.
-/

/-! ## A384854.P4970553519269648772

`A384237(n+1)+A385392(n+1)-A384834(n+1)`
-/

namespace A384854.P4970553519269648772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (n + 1) + (A385392 (n + 1) - A384834 (n + 1))

end

end A384854.P4970553519269648772

/-! ## A384854.P5406856811862147052

`round(sqrt(∏{e}[xor((37*(1-n))², -16), #]))`
-/

namespace A384854.P5406856811862147052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((37 * (1 - (n : ℤ))) ^ 2) (-16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℝ))

end

end A384854.P5406856811862147052

/-! ## A384854.P3799280565785303195

`gcd(A082898(n+1), A084083(n))`
-/

namespace A384854.P3799280565785303195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082898 (n + 1)) (A084083 n)

end

end A384854.P3799280565785303195

/-! ## A384854.P9437813189464308676

`A281007(A286253(n+2))+A028422(A087179(n+2))`
-/

namespace A384854.P9437813189464308676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A286253 (n + 2)).toNat + A028422 (A087179 (n + 2)).toNat

end

end A384854.P9437813189464308676

/-! ## A384854.P17082537571648333841

`A281007(A286253(n+2))+A083893(A000040(n+4))`
-/

namespace A384854.P17082537571648333841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A286253 (n + 2)).toNat + A083893 (A000040 (n + 4)).toNat

end

end A384854.P17082537571648333841

/-!
# A384855: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x))^3 ).

The programs for A384855, there is no canonical definition to state claims against.
-/

/-! ## A384855.P6277781206983224093

`A384859(∑[n+1]+n)`
-/

namespace A384855.P6277781206983224093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384859 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384855.P6277781206983224093

/-!
# A384856: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^2)^3 ).

The programs for A384856, there is no canonical definition to state claims against.
-/

/-! ## A384856.P1280813906131494300

`A384860(∑[n+2]-1)`
-/

namespace A384856.P1280813906131494300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384860 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384856.P1280813906131494300

/-!
# A384857: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^3)^3 ).

The programs for A384857, there is no canonical definition to state claims against.
-/

/-! ## A384857.P8707688192464558109

`A384861(∑[n+2]-1)`
-/

namespace A384857.P8707688192464558109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384861 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384857.P8707688192464558109

/-!
# A384858: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^8)^3 ).

The programs for A384858, there is no canonical definition to state claims against.
-/

/-! ## A384858.P12411500341538863553

`A384862(∑[n+2]-1)`
-/

namespace A384858.P12411500341538863553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384862 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384858.P12411500341538863553

/-!
# A384859: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384855.

The programs for A384859, there is no canonical definition to state claims against.
-/

/-! ## A384859.P7877301501404524304

`A384690(n)%(A072088(A379168(n))-49)`
-/

namespace A384859.P7877301501404524304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384690 n) (A072088 (A379168 n).toNat - 49)

end

end A384859.P7877301501404524304

/-! ## A384859.P9901541689217959157

`A384722(n)%(A072088(A379168(n))-49)`
-/

namespace A384859.P9901541689217959157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384722 n) (A072088 (A379168 n).toNat - 49)

end

end A384859.P9901541689217959157

/-! ## A384859.P3924624474755361547

`A053615(A384690(n)²%A231548(n+5))`
-/

namespace A384859.P3924624474755361547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (Int.tmod (A384690 n ^ 2) (A231548 (n + 5))).toNat

end

end A384859.P3924624474755361547

/-! ## A384859.P13457873414850497832

`A384861(n)+A384811(n)-A072088(A379168(n))`
-/

namespace A384859.P13457873414850497832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384861 n + A384811 n - A072088 (A379168 n).toNat

end

end A384859.P13457873414850497832

/-! ## A384859.P8260922076972995416

`A384692(n)%(A072088(A379168(n))+A070216(n+1))`
-/

namespace A384859.P8260922076972995416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384692 n) (A072088 (A379168 n).toNat + A070216 (n + 1))

end

end A384859.P8260922076972995416

/-!
# A384860: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384856.

The programs for A384860, there is no canonical definition to state claims against.
-/

/-! ## A384860.P8988589295851498469

`A053615(A384722(n)*A385062(n))`
-/

namespace A384860.P8988589295851498469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A384722 n * A385062 n).toNat

end

end A384860.P8988589295851498469

/-! ## A384860.P13767706300697849645

`A384752(n)%A384735(A024186(n))`
-/

namespace A384860.P13767706300697849645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384752 n) (A384735 (A024186 n).toNat)

end

end A384860.P13767706300697849645

/-! ## A384860.P13865142521807681249

`A384862(n)%A078778(A031297(n+1))`
-/

namespace A384860.P13865142521807681249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384862 n) (A078778 (A031297 (n + 1)).toNat)

end

end A384860.P13865142521807681249

/-! ## A384860.P10172827401522791722

`A384690(n)%A072088(A090852(n+2))`
-/

namespace A384860.P10172827401522791722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384690 n) (A072088 (A090852 (n + 2)).toNat)

end

end A384860.P10172827401522791722

/-! ## A384860.P8345952927022271918

`A384788(n)%A123718(A000009(n+3))`
-/

namespace A384860.P8345952927022271918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384788 n) (A123718 (A000009 (n + 3)).toNat)

end

end A384860.P8345952927022271918

/-!
# A384861: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384857.

The programs for A384861, there is no canonical definition to state claims against.
-/

/-! ## A384861.P17603234176682596183

`A053615(A384690(n)*A384986(n))`
-/

namespace A384861.P17603234176682596183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A384690 n * A384986 n).toNat

end

end A384861.P17603234176682596183

/-! ## A384861.P13607464748088888731

`A384690(n)%A123718(A000009(n+3))`
-/

namespace A384861.P13607464748088888731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384690 n) (A123718 (A000009 (n + 3)).toNat)

end

end A384861.P13607464748088888731

/-! ## A384861.P3742041143344938123

`A384752(n)%A072088(A005843(2*n+1))`
-/

namespace A384861.P3742041143344938123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384752 n) (A072088 (A005843 (2 * n + 1)).toNat)

end

end A384861.P3742041143344938123

/-! ## A384861.P15221253596927114600

`A385062(n)+A072088(A379168(n))-A379168(n)`
-/

namespace A384861.P15221253596927114600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385062 n + A072088 (A379168 n).toNat - A379168 n

end

end A384861.P15221253596927114600

/-!
# A384862: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384858.

The programs for A384862, there is no canonical definition to state claims against.
-/

/-! ## A384862.P3689048061394011595

`A384692(n)+A072088(A379168(n))-A384813(n)`
-/

namespace A384862.P3689048061394011595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384692 n + A072088 (A379168 n).toNat - A384813 n

end

end A384862.P3689048061394011595

/-! ## A384862.P12273301208405289945

`A384788(n)+A384718(n)-A072088(A379168(n))`
-/

namespace A384862.P12273301208405289945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384788 n + A384718 n - A072088 (A379168 n).toNat

end

end A384862.P12273301208405289945

/-! ## A384862.P13011200000957635628

`A384788(n)+A072088(A379168(n))-A384751(n)`
-/

namespace A384862.P13011200000957635628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384788 n + A072088 (A379168 n).toNat - A384751 n

end

end A384862.P13011200000957635628

/-! ## A384862.P868906895768323702

`A384692(n)+A072088(A379168(n))-A384985(n)`
-/

namespace A384862.P868906895768323702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384692 n + A072088 (A379168 n).toNat - A384985 n

end

end A384862.P868906895768323702

/-! ## A384862.P7338906273127838220

`A384690(n)+A072088(A379168(n))-A385061(n)`
-/

namespace A384862.P7338906273127838220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384690 n + A072088 (A379168 n).toNat - A385061 n

end

end A384862.P7338906273127838220

/-!
# A384864: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A213091.

The programs for A384864, there is no canonical definition to state claims against.
-/

/-! ## A384864.P15960273306180456665

`A291652(n)+A125005(A326323(n))`
-/

namespace A384864.P15960273306180456665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n + A125005 (A326323 n).toNat

end

end A384864.P15960273306180456665

/-! ## A384864.P11128235919108629679

`A381566(n)-A125005(A326323(n))`
-/

namespace A384864.P11128235919108629679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381566 n - A125005 (A326323 n).toNat

end

end A384864.P11128235919108629679

/-! ## A384864.P5917870556958742789

`A291652(n)+A089311(A094544(n))`
-/

namespace A384864.P5917870556958742789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n + A089311 (A094544 n).toNat

end

end A384864.P5917870556958742789

/-! ## A384864.P8543071354277054024

`A291652(n)+A025469(A163661(n))`
-/

namespace A384864.P8543071354277054024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 n + A025469 (A163661 n).toNat

end

end A384864.P8543071354277054024

/-! ## A384864.P878317373439718126

`A378320(n)+A089311(A094544(n))`
-/

namespace A384864.P878317373439718126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378320 n + A089311 (A094544 n).toNat

end

end A384864.P878317373439718126

/-!
# A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

The programs for A384868, the canonical program `A384868.P10611480647855577047` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384868 has offset 0).

The definition of A384868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384868.P15690997671414933083

`A365968(A059894(n+1)-1)`
-/

namespace A384868.P15690997671414933083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 (A059894 (n + 1) - 1).toNat

end

end A384868.P15690997671414933083

namespace A384868

/-- `A365968(A059894(n+1)-1)` -/
def P15690997671414933083.Spec : Prop :=
  ∀ n, P15690997671414933083.a n = A384868 n

end A384868

/-! ## A384868.P10611480647855577047

`A231204(A054429(1+n))-A231204(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A384868

/-- `A231204(A054429(1+n))-A231204(n+1)` -/
def P10611480647855577047.Spec : Prop :=
  ∀ n, P10611480647855577047.a n = A384868 n

theorem P10611480647855577047.correct : P10611480647855577047.Spec := by
  intro n
  simp only [A384868]

end A384868

/-! ## A384868.P9506497978686060967

`A359042(A054429(n+1))-A359042(n+1)`
-/

namespace A384868.P9506497978686060967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (A054429 (n + 1)).toNat - A359042 (n + 1)

end

end A384868.P9506497978686060967

namespace A384868

/-- `A359042(A054429(n+1))-A359042(n+1)` -/
def P9506497978686060967.Spec : Prop :=
  ∀ n, P9506497978686060967.a n = A384868 n

end A384868

/-!
# A384873: a(n) is the smallest n-digit zeroless prime.

The programs for A384873, there is no canonical definition to state claims against.
-/

/-! ## A384873.P11156057103518961543

`A096497(n+1)-A079208(A099357(n))`
-/

namespace A384873.P11156057103518961543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A079208 (A099357 n).toNat

end

end A384873.P11156057103518961543

/-! ## A384873.P4745952495962803641

`A096497(n+1)-A182660(A192091(n))`
-/

namespace A384873.P4745952495962803641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A182660 (A192091 n).toNat

end

end A384873.P4745952495962803641

/-! ## A384873.P14806233598307993026

`A096497(n+1)-A129691(A014642(2*n+3))`
-/

namespace A384873.P14806233598307993026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A129691 (A014642 (2 * n + 3)).toNat

end

end A384873.P14806233598307993026

/-! ## A384873.P1517044012766528317

`A096497(n+1)-A127648(A004645(n))`
-/

namespace A384873.P1517044012766528317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A127648 (A004645 n).toNat

end

end A384873.P1517044012766528317

/-! ## A384873.P11069961325687293911

`A096497(n+1)-A000122(A377852(2*n+3))`
-/

namespace A384873.P11069961325687293911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A000122 (A377852 (2 * n + 3)).toNat

end

end A384873.P11069961325687293911

/-!
# A384876: Smallest number m such that both m-1 and m+1 are products of at least n (not necessarily distinct) primes.

The programs for A384876, there is no canonical definition to state claims against.
-/

/-! ## A384876.P2308859008602997927

`A151685((3*n-floor(n*sqrt(2)))*ceil(n²/2))`
-/

namespace A384876.P2308859008602997927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151685 (((3 * n : ℤ) - ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋) * ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A384876.P2308859008602997927

/-!
# A384877: Irregular triangle read by rows where row k lists the lengths of maximal anti-runs (increasing by more than 1) in the binary indices of n.

The programs for A384877, there is no canonical definition to state claims against.
-/

/-! ## A384877.P4805923564956515309

`A022300(lcm(A022304(2*n), A139251(3*(n+1))))`
-/

namespace A384877.P4805923564956515309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (Int.lcm (A022304 (2 * n)) (A139251 (3 * (n + 1))))

end

end A384877.P4805923564956515309

/-! ## A384877.P8118825010557524853

`A372973(gcd(A059876(n+1), A331915(2*(n+2))))`
-/

namespace A384877.P8118825010557524853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372973 (Int.gcd (A059876 (n + 1)) (A331915 (2 * (n + 2))))

end

end A384877.P8118825010557524853

/-! ## A384877.P1363133636030782645

`A376305(or(A162774(3*n+1), A376305(3*n+1)))`
-/

namespace A384877.P1363133636030782645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376305 (Int.lor (A162774 (3 * n + 1)) (A376305 (3 * n + 1))).toNat

end

end A384877.P1363133636030782645

/-!
# A384878: Position of first appearance of n in the flattened version of the triangle A384877, whose m-th row lists the lengths of maximal anti-runs in the binary indices of m.

The programs for A384878, there is no canonical definition to state claims against.
-/

/-! ## A384878.P4043596775325045925

`record[∑[(-2)^n]]+4*a(n-1)-1` with `a(0)=1`
-/

namespace A384878.P4043596775325045925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (4 * a (n - 1) - 1)

end

end A384878.P4043596775325045925

/-! ## A384878.P1186691767941280326

`∑[lcm(2, 4^n)/2]+4*a(n-1)-1` with `a(0)=1`
-/

namespace A384878.P1186691767941280326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * a (n - 1) - 1)

end

end A384878.P1186691767941280326

/-! ## A384878.P13243526359820384406

`∑[ceil(2^(2*n-1))]+4*a(n-1)-1` with `a(0)=1`
-/

namespace A384878.P13243526359820384406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * a (n - 1) - 1)

end

end A384878.P13243526359820384406

/-! ## A384878.P1350872099349946117

`record[∑[(-2)^n]]+a(n-1)/(1/2)²-1` with `a(0)=1`
-/

namespace A384878.P1350872099349946117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1)

end

end A384878.P1350872099349946117

/-! ## A384878.P598329676332035680

`∑{#}[2*n, (-2)^#]+a(n-1)/(1/2)²-1` with `a(0)=1`
-/

namespace A384878.P598329676332035680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k : ℤ) : ℚ) + (a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1)

end

end A384878.P598329676332035680

/-!
# A384879: Numbers whose binary indices have all distinct lengths of maximal anti-runs (increasing by more than 1).

The programs for A384879, there is no canonical definition to state claims against.
-/

/-! ## A384879.P14437674365665562064

`lt[A376623(A385816(n)), A069010(n)]`
-/

namespace A384879.P14437674365665562064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376623 (A385816 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P14437674365665562064

/-! ## A384879.P8949004696814623654

`lt[A366738(n), A371262(A286533(n))]`
-/

namespace A384879.P8949004696814623654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371262 (A286533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P8949004696814623654

/-! ## A384879.P8356055872303807349

`lt[A274130(A278222(n)), n+1]`
-/

namespace A384879.P8356055872303807349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274130 (A278222 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A384879.P8356055872303807349

/-! ## A384879.P5333636537432795485

`lt[A000120(n), A340224(A323503(n))]`
-/

namespace A384879.P5333636537432795485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340224 (A323503 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P5333636537432795485

/-! ## A384879.P6853413121588173434

`lt[A370814(2*n+5), A384047(A255468(n))]`
-/

namespace A384879.P6853413121588173434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370814 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384047 (A255468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P6853413121588173434

/-!
# A384881: Triangle read by rows where T(n,k) is the number of integer partitions of n with k maximal runs of consecutive parts decreasing by 1.

The programs for A384881, there is no canonical definition to state claims against.
-/

/-! ## A384881.P8969904662145974502

`A333213(n)-A010059(A329070(n))`
-/

namespace A384881.P8969904662145974502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 n - A010059 (A329070 n).toNat

end

end A384881.P8969904662145974502

/-! ## A384881.P14636239593468471794

`A087372(A225469(n))`
-/

namespace A384881.P14636239593468471794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087372 (A225469 n).toNat

end

end A384881.P14636239593468471794

/-! ## A384881.P2038709029055732695

`A328376(A221693(n+1))`
-/

namespace A384881.P2038709029055732695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328376 (A221693 (n + 1)).toNat

end

end A384881.P2038709029055732695

/-! ## A384881.P1331146473132920712

`A351014(3*A372762(n))`
-/

namespace A384881.P1331146473132920712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (3 * A372762 n).toNat

end

end A384881.P1331146473132920712

/-! ## A384881.P14410206731280962481

`and(3, A400861(A238123(n)))`
-/

namespace A384881.P14410206731280962481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A400861 (A238123 n).toNat)

end

end A384881.P14410206731280962481

/-!
# A384883: Number of maximal sparse subsets of the binary indices of n, where a set is sparse iff 1 is not a first difference.

The programs for A384883, there is no canonical definition to state claims against.
-/

/-! ## A384883.P17908980042637401820

`A357853(A246029(n))`
-/

namespace A384883.P17908980042637401820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A246029 n).toNat

end

end A384883.P17908980042637401820

/-! ## A384883.P17905359893011377523

`∏{e}[A278222(n), A251629(#)]`
-/

namespace A384883.P17905359893011377523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A251629 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P17905359893011377523

/-! ## A384883.P2487756712017463121

`∏{e}[A278222(n), A282949(#)]`
-/

namespace A384883.P2487756712017463121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A282949 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P2487756712017463121

/-! ## A384883.P13142640684467081696

`∏{e}[A278222(n), A305815(#)]`
-/

namespace A384883.P13142640684467081696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A305815 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P13142640684467081696

/-! ## A384883.P9500980020867691864

`∏{e}[A005940(n+1), A305815(#)]`
-/

namespace A384883.P9500980020867691864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A305815 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P9500980020867691864

/-! ## A384883.P15094700994275516136

`∏{e}[A005940(n+1), A324743(#)]`
-/

namespace A384883.P15094700994275516136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A324743 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P15094700994275516136

/-! ## A384883.P16944911536199337396

`∏{e}[A005940(n+1), A326491(#)]`
-/

namespace A384883.P16944911536199337396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A326491 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P16944911536199337396

/-! ## A384883.P12015888174365456356

`A000120(A008458(and(n, floor(n/2))))`
-/

namespace A384883.P12015888174365456356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008458 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A384883.P12015888174365456356

/-! ## A384883.P16133182019904049205

`∏{e}[A163511(A337909(n+1)-1), A054633(#)]`
-/

namespace A384883.P16133182019904049205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A337909 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054633 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P16133182019904049205

/-!
# A384884: Number of integer partitions of n with all distinct lengths of maximal gapless runs (decreasing by 0 or 1).

The programs for A384884, there is no canonical definition to state claims against.
-/

/-! ## A384884.P13642799282299811117

`∑[A000009(n)-(A332759(3*(n+1))+1)%3]`
-/

namespace A384884.P13642799282299811117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - Int.tmod (A332759 (3 * (n + 1)) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384884.P13642799282299811117

/-! ## A384884.P17490354653033027753

`A382523(n)+floor(n/10)`
-/

namespace A384884.P17490354653033027753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382523 n + ⌊(n : ℚ) / 10⌋

end

end A384884.P17490354653033027753

/-! ## A384884.P6287290025880583481

`A230490(A241729(n))`
-/

namespace A384884.P6287290025880583481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230490 (A241729 (n + 66)).toNat

end

end A384884.P6287290025880583481

/-! ## A384884.P12735212839074087730

`fp[log(A299899(n))]`
-/

namespace A384884.P12735212839074087730
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A299899 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A384884.P12735212839074087730

/-! ## A384884.P7382058568603021133

`fp[log(A098404(n+1))]`
-/

namespace A384884.P7382058568603021133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A098404 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A384884.P7382058568603021133

/-!
# A384888: Number of integer partitions of n with all equal lengths of maximal anti-runs (decreasing by more than 1).

The programs for A384888, there is no canonical definition to state claims against.
-/

/-! ## A384888.P9524398055293403497

`A398232(n+1)+A390813(A070289(n))`
-/

namespace A384888.P9524398055293403497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398232 (n + 1) + A390813 (A070289 n).toNat

end

end A384888.P9524398055293403497

/-! ## A384888.P15857715190247015515

`A398237(n+1)+A390813(A070289(n))`
-/

namespace A384888.P15857715190247015515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398237 (n + 1) + A390813 (A070289 n).toNat

end

end A384888.P15857715190247015515

/-! ## A384888.P5190203617443191189

`A157684(A112925(n+1)+A001401(n))`
-/

namespace A384888.P5190203617443191189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A112925 (n + 1) + A001401 n).toNat

end

end A384888.P5190203617443191189

/-! ## A384888.P17492618132534646084

`A157685(A347446(n)+A171028(n+1))`
-/

namespace A384888.P17492618132534646084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A347446 n + A171028 (n + 1)).toNat

end

end A384888.P17492618132534646084

/-! ## A384888.P11958906241126177130

`A196266(A027336(n+3)-A000005(n+1))`
-/

namespace A384888.P11958906241126177130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A027336 (n + 3) - A000005 (n + 1)).toNat

end

end A384888.P11958906241126177130

/-!
# A384889: Number of subsets of {1..n} with all equal lengths of maximal anti-runs (increasing by more than 1).

The programs for A384889, there is no canonical definition to state claims against.
-/

/-! ## A384889.P2616379679562771952

`∑[A000196(∑[A301700(n+3)])]`
-/

namespace A384889.P2616379679562771952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301700 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384889.P2616379679562771952

/-! ## A384889.P3328902969101821704

`A276571(A072863(n))`
-/

namespace A384889.P3328902969101821704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A072863 n).toNat

end

end A384889.P3328902969101821704

/-! ## A384889.P17016110780759294042

`∑[A351846(∑[A078057(n)])]`
-/

namespace A384889.P17016110780759294042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384889.P17016110780759294042

/-! ## A384889.P5501658981256397790

`∑[A350174(A185171(n+1))]`
-/

namespace A384889.P5501658981256397790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A185171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384889.P5501658981256397790

/-! ## A384889.P4638928565282378717

`A000194(A295288(n))`
-/

namespace A384889.P4638928565282378717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A295288 n).toNat

end

end A384889.P4638928565282378717

/-!
# A384890: Number of maximal anti-runs (increasing by more than 1) in the binary indices of n.

The programs for A384890, there is no canonical definition to state claims against.
-/

/-! ## A384890.P379624851015817807

`Δ[floor(n/4)]+a(floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A384890.P379624851015817807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (n + 1) - f1 n + a ⌊(n : ℚ) / 2⌋.toNat

end

end A384890.P379624851015817807

/-! ## A384890.P10028776902002956515

`A014081(n)+ceil(n/98)`
-/

namespace A384890.P10028776902002956515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n + ⌈(n : ℚ) / 98⌉

end

end A384890.P10028776902002956515

/-! ## A384890.P7813839199696085887

`a(A245195(n)-1)+1` with `a(0)=0`
-/

namespace A384890.P7813839199696085887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A245195 n - 1).toNat + 1

end

end A384890.P7813839199696085887

/-! ## A384890.P15407407040070340012

`(A014081(2*n)+1)%(n+1)`
-/

namespace A384890.P15407407040070340012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014081 (2 * n) + 1) (n + 1 : ℤ)

end

end A384890.P15407407040070340012

/-! ## A384890.P9708007774911087371

`A014081(2^ceil(log2(n+1))+n)`
-/

namespace A384890.P9708007774911087371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A384890.P9708007774911087371

/-! ## A384890.P5862785622502738838

`A000120(and(n, 2*n))+ceil(n/98)`
-/

namespace A384890.P5862785622502738838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.land n (2 * n)) + ⌈(n : ℚ) / 98⌉

end

end A384890.P5862785622502738838

/-! ## A384890.P12101777252606819775

`A000120(or(and(n, 2*n), ceil(n/98)))`
-/

namespace A384890.P12101777252606819775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (Nat.land n (2 * n) : ℤ) ⌈(n : ℚ) / 98⌉).toNat

end

end A384890.P12101777252606819775

/-! ## A384890.P3562896894439426492

`A126387(A090078(n))`
-/

namespace A384890.P3562896894439426492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A090078 n).toNat

end

end A384890.P3562896894439426492

/-! ## A384890.P5132503519334049389

`A375136(A278222(n))`
-/

namespace A384890.P5132503519334049389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (A278222 n).toNat

end

end A384890.P5132503519334049389

/-! ## A384890.P18030105537100158271

`A290251(A385887(n))`
-/

namespace A384890.P18030105537100158271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A385887 n).toNat

end

end A384890.P18030105537100158271

/-!
# A384891: Number of permutations of {1..n} with all distinct lengths of maximal runs (increasing by 1).

The programs for A384891, there is no canonical definition to state claims against.
-/

/-! ## A384891.P15247887378210389212

`A177849(A001738(n))`
-/

namespace A384891.P15247887378210389212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A001738 n).toNat

end

end A384891.P15247887378210389212

/-! ## A384891.P15734379311604736999

`A350097(A321662(n))`
-/

namespace A384891.P15734379311604736999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350097 (A321662 n).toNat

end

end A384891.P15734379311604736999

/-!
# A384892: Number of permutations of {1..n} with all equal lengths of maximal runs (increasing by 1).

The programs for A384892, there is no canonical definition to state claims against.
-/

/-! ## A384892.P14420114815217977648

`A066888(A375131(n+2)-(n-1))`
-/

namespace A384892.P14420114815217977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A375131 (n + 2) - ((n : ℤ) - 1)).toNat

end

end A384892.P14420114815217977648

/-! ## A384892.P5293922002306699897

`A235645(A179405(n))+A056624(n+1)`
-/

namespace A384892.P5293922002306699897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235645 (A179405 n).toNat + A056624 (n + 1)

end

end A384892.P5293922002306699897

/-! ## A384892.P3693735856005167120

`A237194(A061255(2*n+1)+A057502(3*(n+1)))`
-/

namespace A384892.P3693735856005167120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237194 (A061255 (2 * n + 1) + A057502 (3 * (n + 1))).toNat

end

end A384892.P3693735856005167120

/-!
# A384893: Triangle read by rows where T(n,k) is the number of subsets of {1..n} with k maximal anti-runs (increasing by more than 1).

The programs for A384893, there is no canonical definition to state claims against.
-/

/-! ## A384893.P12570603648141423941

`A282869(n)-A014834(A002939(2*(n+2)))`
-/

namespace A384893.P12570603648141423941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 n - A014834 (A002939 (2 * (n + 2))).toNat

end

end A384893.P12570603648141423941

/-! ## A384893.P8611030941137569375

`A178798(A098568(n))+A048004(n)`
-/

namespace A384893.P8611030941137569375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A098568 n).toNat + A048004 n

end

end A384893.P8611030941137569375

/-! ## A384893.P247011797379730289

`A371822(A058142(n+1))`
-/

namespace A384893.P247011797379730289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371822 (A058142 (n + 1)).toNat

end

end A384893.P247011797379730289

/-! ## A384893.P8254556496166227722

`A114575(A185285(n))`
-/

namespace A384893.P8254556496166227722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114575 (A185285 n).toNat

end

end A384893.P8254556496166227722

/-!
# A384894: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^2.

The programs for A384894, there is no canonical definition to state claims against.
-/

/-! ## A384894.P6472793186399685801

`A384899(∑[2+n]-1)`
-/

namespace A384894.P6472793186399685801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384899 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384894.P6472793186399685801

/-!
# A384895: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x)^2)^2.

The programs for A384895, there is no canonical definition to state claims against.
-/

/-! ## A384895.P2536515386298933906

`A384900(∑[n+2]-1)`
-/

namespace A384895.P2536515386298933906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384900 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384895.P2536515386298933906

/-!
# A384896: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^3.

The programs for A384896, there is no canonical definition to state claims against.
-/

/-! ## A384896.P983943583398124542

`A384901(∑[1+n]+n)`
-/

namespace A384896.P983943583398124542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384901 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384896.P983943583398124542

/-!
# A384897: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x)^2)^3.

The programs for A384897, there is no canonical definition to state claims against.
-/

/-! ## A384897.P4052022418050465688

`A384902(∑[n+1]+n)`
-/

namespace A384897.P4052022418050465688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384902 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384897.P4052022418050465688

/-!
# A384898: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x)^3)^3.

The programs for A384898, there is no canonical definition to state claims against.
-/

/-! ## A384898.P436385681784267842

`A384903(∑[n+2]-1)`
-/

namespace A384898.P436385681784267842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384903 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384898.P436385681784267842

/-!
# A384899: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384894.

The programs for A384899, there is no canonical definition to state claims against.
-/

/-! ## A384899.P17971649104921424227

`gcd(A341935(A091063(n)), A385017(n))`
-/

namespace A384899.P17971649104921424227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341935 (A091063 n).toNat) (A385017 n)

end

end A384899.P17971649104921424227

/-! ## A384899.P7916075772033546900

`2*A385017(n)-A341935(A384626(n))`
-/

namespace A384899.P7916075772033546900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A385017 n - A341935 (A384626 n).toNat

end

end A384899.P7916075772033546900

/-! ## A384899.P10059326075911156959

`and(A126760(A243450(n+5)), A297321(n))`
-/

namespace A384899.P10059326075911156959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126760 (A243450 (n + 5)).toNat) (A297321 n)

end

end A384899.P10059326075911156959

