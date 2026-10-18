import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-! ## A384801.P6267910743301201095

`A123580(A349971(n+1))`
-/

namespace A384801.P6267910743301201095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A349971 (n + 1)).toNat

end

end A384801.P6267910743301201095

/-! ## A384801.P4630150452223052664

`A012265(3*A320079(n))`
-/

namespace A384801.P4630150452223052664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (3 * A320079 n).toNat

end

end A384801.P4630150452223052664

/-! ## A384801.P7088567432571788308

`A128888(n)^A124010(A271619(n))`
-/

namespace A384801.P7088567432571788308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128888 n : ℚ) ^ (A124010 (A271619 n).toNat : ℤ)

end

end A384801.P7088567432571788308

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

/-! ## A384808.P628569515894137917

`A379168(n)%A132669(A132669(3*(n+1)))`
-/

namespace A384808.P628569515894137917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379168 n) (A132669 (A132669 (3 * (n + 1))).toNat)

end

end A384808.P628569515894137917

/-! ## A384808.P5103180342697715965

`A384721(n)%A070080(A271997(2*n+3))`
-/

namespace A384808.P5103180342697715965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384721 n) (A070080 (A271997 (2 * n + 3)).toNat)

end

end A384808.P5103180342697715965

/-! ## A384808.P6202599820783381517

`A072088(A384721(n))%A000108(A008328(n+4))`
-/

namespace A384808.P6202599820783381517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (A384721 n).toNat) (A000108 (A008328 (n + 4)).toNat)

end

end A384808.P6202599820783381517

/-! ## A384808.P2911302563899404756

`A379168(n)%A372789(A000079(n))`
-/

namespace A384808.P2911302563899404756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379168 n) (A372789 (A000079 n).toNat)

end

end A384808.P2911302563899404756

/-! ## A384808.P15580539039133529156

`A384721(n)%A267114(A066119(n+1))`
-/

namespace A384808.P15580539039133529156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384721 n) (A267114 (A066119 (n + 1)).toNat)

end

end A384808.P15580539039133529156

/-!
# A384809: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^2)^2 ).

The programs for A384809, there is no canonical definition to state claims against.
-/

/-! ## A384809.P1501046615879044062

`A384811(∑[n+1]+n)`
-/

namespace A384809.P1501046615879044062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384811 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384809.P1501046615879044062

/-!
# A384810: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^3)^2 ).

The programs for A384810, there is no canonical definition to state claims against.
-/

/-! ## A384810.P13079327180692345981

`A384813(∑[n+1]+n)`
-/

namespace A384810.P13079327180692345981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384813 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384810.P13079327180692345981

/-!
# A384811: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384809.

The programs for A384811, there is no canonical definition to state claims against.
-/

/-! ## A384811.P17269155582515381806

`A384751(n)%A045828(A000126(n+1))`
-/

namespace A384811.P17269155582515381806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384751 n) (A045828 (A000126 (n + 1)).toNat)

end

end A384811.P17269155582515381806

/-! ## A384811.P1507524373832045894

`A379168(n)%A347123(A248785(3*n+1))`
-/

namespace A384811.P1507524373832045894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379168 n) (A347123 (A248785 (3 * n + 1)).toNat)

end

end A384811.P1507524373832045894

/-!
# A384812: If n = Product prime(i)^e(i) then a(n) = Sum prime(e(i)).

The programs for A384812, the canonical program `A384812.P3201192687683523015` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384812 has offset 1).

The definition of A384812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384812.P3201192687683523015

`∑{e}[n+1, A000040(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A384812

/-- `∑{e}[n+1, A000040(#)]` -/
def P3201192687683523015.Spec : Prop :=
  ∀ n, P3201192687683523015.a n = A384812 (n + 1)

theorem P3201192687683523015.correct : P3201192687683523015.Spec := by
  intro n
  simp only [A384812, Nat.add_sub_cancel]

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

/-! ## A384812.P12248887485467519934

`∑{e}[A321874(n+1), #]`
-/

namespace A384812.P12248887485467519934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A384812.P12248887485467519934

namespace A384812

/-- `∑{e}[A321874(n+1), #]` -/
def P12248887485467519934.Spec : Prop :=
  ∀ n, (P12248887485467519934.a n : ℤ) = A384812 (n + 1)

end A384812

/-! ## A384812.P1017821496973032076

`A007814(A318312(A064549(n+1)))`
-/

namespace A384812.P1017821496973032076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318312 (A064549 (n + 1)).toNat).toNat

end

end A384812.P1017821496973032076

namespace A384812

/-- `A007814(A318312(A064549(n+1)))` -/
def P1017821496973032076.Spec : Prop :=
  ∀ n, P1017821496973032076.a n = A384812 (n + 1)

end A384812

/-!
# A384813: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384810.

The programs for A384813, there is no canonical definition to state claims against.
-/

/-! ## A384813.P698384426657058350

`filter[A384985(n), A102609(#)]`
-/

namespace A384813.P698384426657058350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A384813.P698384426657058350

/-! ## A384813.P9784289966276004694

`A384985(n)+A000007(A000230(n))`
-/

namespace A384813.P9784289966276004694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384985 n + A000007 (A000230 n).toNat

end

end A384813.P9784289966276004694

/-! ## A384813.P864741259874706678

`A384985(n)+A000007(A325545(n))`
-/

namespace A384813.P864741259874706678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384985 n + A000007 (A325545 n).toNat

end

end A384813.P864741259874706678

/-! ## A384813.P17063739518967658629

`A384985(n)%A000230(A379168(n))`
-/

namespace A384813.P17063739518967658629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384985 n) (A000230 (A379168 n).toNat)

end

end A384813.P17063739518967658629

/-! ## A384813.P14637423899716096632

`A384854(A078855(n+1))*A384985(n)`
-/

namespace A384813.P14637423899716096632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384854 (A078855 (n + 1)).toNat * A384985 n

end

end A384813.P14637423899716096632

/-!
# A384815: Sum of the cubes of the exponents in the prime factorization of n.

The programs for A384815, the canonical program `A384815.P8636745227655148743` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384815 has offset 1).

The definition of A384815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384815.P8636745227655148743

`∑{e}[n+1, #^3]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A384815

/-- `∑{e}[n+1, #^3]` -/
def P8636745227655148743.Spec : Prop :=
  ∀ n, (P8636745227655148743.a n : ℤ) = A384815 (n + 1)

theorem P8636745227655148743.correct : P8636745227655148743.Spec := by
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

/-! ## A384815.P12715387514667648621

`A055012(A054841(n+1))`
-/

namespace A384815.P12715387514667648621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A054841 (n + 1)).toNat

end

end A384815.P12715387514667648621

namespace A384815

/-- `A055012(A054841(n+1))` -/
def P12715387514667648621.Spec : Prop :=
  ∀ n, P12715387514667648621.a n = A384815 (n + 1)

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

/-! ## A384816.P7662891362446902651

`A304037(A356192(n+1))`
-/

namespace A384816.P7662891362446902651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A356192 (n + 1)).toNat

end

end A384816.P7662891362446902651

/-! ## A384816.P18316808585215395374

`A304037(A356193(n+1))`
-/

namespace A384816.P18316808585215395374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A356193 (n + 1)).toNat

end

end A384816.P18316808585215395374

/-! ## A384816.P5046248580372956025

`A304037(A367934(n+1))`
-/

namespace A384816.P5046248580372956025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A367934 (n + 1)).toNat

end

end A384816.P5046248580372956025

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

/-! ## A384819.P7430860884928276931

`A060640(A000079(n))%A007947(n+1)`
-/

namespace A384819.P7430860884928276931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060640 (A000079 n).toNat) (A007947 (n + 1))

end

end A384819.P7430860884928276931

/-! ## A384819.P6008040015897898693

`A245211(A000079(n))%A327526(n+1)`
-/

namespace A384819.P6008040015897898693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245211 (A000079 n).toNat) (A327526 (n + 1))

end

end A384819.P6008040015897898693

/-! ## A384819.P17558012769962277352

`A074792(n+1)-A316344(A000740(n+1))`
-/

namespace A384819.P17558012769962277352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A316344 (A000740 (n + 1)).toNat

end

end A384819.P17558012769962277352

/-! ## A384819.P7972152815331645719

`A074792(n+1)-A181819(A201713(n+1))`
-/

namespace A384819.P7972152815331645719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A181819 (A201713 (n + 1)).toNat

end

end A384819.P7972152815331645719

/-! ## A384819.P14133695207540191101

`A074792(n+1)-A316828(A119727(3*n+1))`
-/

namespace A384819.P14133695207540191101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A316828 (A119727 (3 * n + 1)).toNat

end

end A384819.P14133695207540191101

/-!
# A384820: G.f. A(x) = exp( Sum_{n>=1} (n^2 - A384819(n))*x^n/n ) where A384819(k) < k for k >= 1 such that A(x) is a power series with integral coefficients.

The programs for A384820, there is no canonical definition to state claims against.
-/

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

/-! ## A384820.P17417581123174787662

`floor(sqrt(floor(A016921(3^n)/7)))`
-/

namespace A384820.P17417581123174787662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊(A016921 (3 ^ n) : ℚ) / 7⌋

end

end A384820.P17417581123174787662

/-! ## A384820.P17193797977102123950

`A342740(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A384820.P17193797977102123950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A342740 (a (n - 1) + 1).toNat

end

end A384820.P17193797977102123950

/-! ## A384820.P11938241056882060339

`A111654(A211288(n))`
-/

namespace A384820.P11938241056882060339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A211288 n).toNat

end

end A384820.P11938241056882060339

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

/-! ## A384822.P6796467248218634030

`A278031(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A384822.P6796467248218634030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A278031 (a (n - 1)).toNat

end

end A384822.P6796467248218634030

/-!
# A384823: G.f. A(x) satisfies -1/x^11 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+6).

The programs for A384823, there is no canonical definition to state claims against.
-/

/-! ## A384823.P16551652715224427795

`A177431(A052976(n))`
-/

namespace A384823.P16551652715224427795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (A052976 n).toNat

end

end A384823.P16551652715224427795

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
# A384826: G.f. A(x) satisfies 1/x^41 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+12).

The programs for A384826, there is no canonical definition to state claims against.
-/

/-! ## A384826.P7964653676466278385

`A304529(2*A357226(n))`
-/

namespace A384826.P7964653676466278385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (2 * A357226 n).toNat

end

end A384826.P7964653676466278385

/-! ## A384826.P2497240281825544382

`A357226(n*A225336(n))`
-/

namespace A384826.P2497240281825544382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357226 ((n : ℤ) * A225336 n).toNat

end

end A384826.P2497240281825544382

/-!
# A384827: G.f. A(x) satisfies -1/x^55 = Sum_{n=-oo..+oo} A(x)^n * x^n * (1 - x^n)^(n+14).

The programs for A384827, there is no canonical definition to state claims against.
-/

/-! ## A384827.P14200521135160900949

`A000108(n)*A366946(A001003(n))`
-/

namespace A384827.P14200521135160900949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A366946 (A001003 n).toNat

end

end A384827.P14200521135160900949

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

/-! ## A384831.P5344139048821213744

`A351013(n)+A093390(A035341(n))`
-/

namespace A384831.P5344139048821213744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351013 n + A093390 (A035341 n).toNat

end

end A384831.P5344139048821213744

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

/-! ## A384832.P16638618549426491375

`A115630(A047086(n))`
-/

namespace A384832.P16638618549426491375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A047086 n).toNat

end

end A384832.P16638618549426491375

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

/-! ## A384834.P2236986157497216356

`A001221(n+1)+A000002(A334549(2*(n+1)))`
-/

namespace A384834.P2236986157497216356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A000002 (A334549 (2 * (n + 1))).toNat

end

end A384834.P2236986157497216356

/-!
# A384836: a(n) = Sum_{k=0..floor(n/4)} |Stirling1(n,4*k)|.

The programs for A384836, there is no canonical definition to state claims against.
-/

/-! ## A384836.P8266285669958664624

`A357119(A000217(n+4)+n)`
-/

namespace A384836.P8266285669958664624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A384836.P8266285669958664624

/-!
# A384843: Wiener index of the n-Dorogovtsev-Goltsev-Mendes graph.

The programs for A384843, there is no canonical definition to state claims against.
-/

/-! ## A384843.P2480547345879616896

`A081185(n)+A072649(A326866(n))`
-/

namespace A384843.P2480547345879616896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081185 n + A072649 (A326866 n).toNat

end

end A384843.P2480547345879616896

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

/-! ## A384850.P17374256508736470924

`A005811(A054923(n)^A056239(n+1))`
-/

namespace A384850.P17374256508736470924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A054923 n : ℚ) ^ (A056239 (n + 1) : ℤ))).toNat

end

end A384850.P17374256508736470924

/-!
# A384852: a(n) = 2*binomial(n,2) + 3*binomial(n,3) + 4*binomial(n,4).

The programs for A384852, the canonical program `A384852.P3187201973385142083` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384852 has offset 0).

The definition of A384852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A384852.P3187201973385142083`, by `A384852.P3187201973385142083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384852.P3187201973385142083

`2*C(n, 2)+3*C(n, 3)+4*C(n, 4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A384852

/-- `2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` -/
def P3187201973385142083.Spec : Prop :=
  ∀ n, (P3187201973385142083.a n : ℤ) = A384852 n

theorem P3187201973385142083.correct : P3187201973385142083.Spec := by
  intro n
  simp only [A384852]

end A384852

/-! ## A384852.P10551537952348829540

`n*(C(n, 3)+n-1)`
-/

namespace A384852.P10551537952348829540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose n 3 : ℤ) + ((n : ℤ) - 1))

end

end A384852.P10551537952348829540

namespace A384852

/-- `n*(C(n, 3)+n-1)` -/
def P10551537952348829540.Spec : Prop :=
  ∀ n, P10551537952348829540.a n = A384852 n

end A384852

/-! ## A384852.P5384823986770245684

`n*(∑[∑[n-2]+4]-3)`
-/

namespace A384852.P5384823986770245684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A384852.P5384823986770245684

namespace A384852

/-- `n*(∑[∑[n-2]+4]-3)` -/
def P5384823986770245684.Spec : Prop :=
  ∀ n, P5384823986770245684.a n = A384852 n

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

/-! ## A384852.P8652284803924977126

`A361099(n)-n`
-/

namespace A384852.P8652284803924977126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361099 n - (n : ℤ)

end

end A384852.P8652284803924977126

namespace A384852

/-- `A361099(n)-n` -/
def P8652284803924977126.Spec : Prop :=
  ∀ n, P8652284803924977126.a n = A384852 n

end A384852

/-! ## A384852.P580473016024587032

`A006484(n)-A050407(n)`
-/

namespace A384852.P580473016024587032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n - A050407 n

end

end A384852.P580473016024587032

namespace A384852

/-- `A006484(n)-A050407(n)` -/
def P580473016024587032.Spec : Prop :=
  ∀ n, P580473016024587032.a n = A384852 n

end A384852

/-! ## A384852.P7221693451026398551

`A071244(n)-A007290(n)`
-/

namespace A384852.P7221693451026398551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071244 n - A007290 n

end

end A384852.P7221693451026398551

namespace A384852

/-- `A071244(n)-A007290(n)` -/
def P7221693451026398551.Spec : Prop :=
  ∀ n, P7221693451026398551.a n = A384852 n

end A384852

/-! ## A384852.P9200168238576031974

`A071239(n)-A037235(n)`
-/

namespace A384852.P9200168238576031974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n - A037235 n

end

end A384852.P9200168238576031974

namespace A384852

/-- `A071239(n)-A037235(n)` -/
def P9200168238576031974.Spec : Prop :=
  ∀ n, P9200168238576031974.a n = A384852 n

end A384852

/-! ## A384852.P11817819187641051104

`A006011(n)-A326247(n)`
-/

namespace A384852.P11817819187641051104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n - A326247 n

end

end A384852.P11817819187641051104

namespace A384852

/-- `A006011(n)-A326247(n)` -/
def P11817819187641051104.Spec : Prop :=
  ∀ n, P11817819187641051104.a n = A384852 n

end A384852

/-! ## A384852.P9573803861265746715

`A329523(n)-A060354(n)`
-/

namespace A384852.P9573803861265746715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n - A060354 n

end

end A384852.P9573803861265746715

namespace A384852

/-- `A329523(n)-A060354(n)` -/
def P9573803861265746715.Spec : Prop :=
  ∀ n, P9573803861265746715.a n = A384852 n

end A384852

/-!
# A384853: Squared length of interior diagonal of n-th (U, V)-crossbox, where U = (1, 0, 1) and V = (0, 1, 0), as in Comments.

The programs for A384853, the canonical program `A384853.P12743840133399295905` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384853 has offset 1).

The definition of A384853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384853.P12743840133399295905

`4*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=5, a(2)=9`

The canonical program, it is in `Seq.B000.C037`.
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

/-! ## A384854.P14029715860465847717

`A014695(A112387(n+2)%A028412(3*n+2))`
-/

namespace A384854.P14029715860465847717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (Int.tmod (A112387 (n + 2)) (A028412 (3 * n + 2))).toNat

end

end A384854.P14029715860465847717

/-! ## A384854.P17589057083252559904

`gcd(A006928(A074323(n+2)), A064553(n+1))`
-/

namespace A384854.P17589057083252559904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006928 (A074323 (n + 2)).toNat) (A064553 (n + 1))

end

end A384854.P17589057083252559904

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

/-! ## A384856.P13846952245109061081

`A384860(∑[n+1]+n)`
-/

namespace A384856.P13846952245109061081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384860 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384856.P13846952245109061081

/-!
# A384857: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^3)^3 ).

The programs for A384857, there is no canonical definition to state claims against.
-/

/-! ## A384857.P17786201354437953894

`A384861(∑[n+1]+n)`
-/

namespace A384857.P17786201354437953894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384861 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384857.P17786201354437953894

/-!
# A384858: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x)^8)^3 ).

The programs for A384858, there is no canonical definition to state claims against.
-/

/-! ## A384858.P13476134790757793027

`A384862(∑[n+1]+n)`
-/

namespace A384858.P13476134790757793027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384862 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384858.P13476134790757793027

/-!
# A384859: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384855.

The programs for A384859, there is no canonical definition to state claims against.
-/

/-! ## A384859.P3762966671471080981

`A384862(n)%A040704(A080546(n))`
-/

namespace A384859.P3762966671471080981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384862 n) (A040704 (A080546 n).toNat)

end

end A384859.P3762966671471080981

/-! ## A384859.P15394751203692500603

`A384722(n)%A329718(A000040(n+1))`
-/

namespace A384859.P15394751203692500603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384722 n) (A329718 (A000040 (n + 1)).toNat)

end

end A384859.P15394751203692500603

/-! ## A384859.P1551424902667521205

`A384788(n)%A292288(A323637(2*n+3))`
-/

namespace A384859.P1551424902667521205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384788 n) (A292288 (A323637 (2 * n + 3)).toNat)

end

end A384859.P1551424902667521205

/-! ## A384859.P5758993052118824999

`A384752(n)%A339272(A094444(n))`
-/

namespace A384859.P5758993052118824999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384752 n) (A339272 (A094444 n).toNat)

end

end A384859.P5758993052118824999

/-! ## A384859.P10651995780826403346

`and(A070321(A384723(2*n+3)), A384752(n))`
-/

namespace A384859.P10651995780826403346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070321 (A384723 (2 * n + 3)).toNat) (A384752 n)

end

end A384859.P10651995780826403346

/-!
# A384860: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384856.

The programs for A384860, there is no canonical definition to state claims against.
-/

/-! ## A384860.P586491929576169153

`A384788(n)%A005820(A046854(2*(n+1)))`
-/

namespace A384860.P586491929576169153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384788 n) (A005820 (A046854 (2 * (n + 1))).toNat)

end

end A384860.P586491929576169153

/-! ## A384860.P17873547583043745837

`A384862(n)%A040704(A389862(n+1))`
-/

namespace A384860.P17873547583043745837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384862 n) (A040704 (A389862 (n + 1)).toNat)

end

end A384860.P17873547583043745837

/-! ## A384860.P16055282250775039880

`A384722(n)%A127821(A212216(n))`
-/

namespace A384860.P16055282250775039880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384722 n) (A127821 (A212216 n).toNat)

end

end A384860.P16055282250775039880

/-! ## A384860.P277267759200359920

`A384752(n)%A248564(A384753(3*n+5))`
-/

namespace A384860.P277267759200359920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384752 n) (A248564 (A384753 (3 * n + 5)).toNat)

end

end A384860.P277267759200359920

/-! ## A384860.P17503154244949726950

`A384692(n)%A260739(A237043(n+1))`
-/

namespace A384860.P17503154244949726950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384692 n) (A260739 (A237043 (n + 1)).toNat)

end

end A384860.P17503154244949726950

/-!
# A384861: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384857.

The programs for A384861, there is no canonical definition to state claims against.
-/

/-! ## A384861.P5918962749827656300

`A384722(n)%A063095(A233075(n+1))`
-/

namespace A384861.P5918962749827656300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384722 n) (A063095 (A233075 (n + 1)).toNat)

end

end A384861.P5918962749827656300

/-! ## A384861.P6035407882005481065

`A384692(n)-A165655(A350824(n))`
-/

namespace A384861.P6035407882005481065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384692 n - A165655 (A350824 n).toNat

end

end A384861.P6035407882005481065

/-!
# A384864: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A213091.

The programs for A384864, there is no canonical definition to state claims against.
-/

/-! ## A384864.P15636321853319299306

`A293162(A156953(n))+A291652(n)`
-/

namespace A384864.P15636321853319299306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A156953 n).toNat + A291652 n

end

end A384864.P15636321853319299306

/-! ## A384864.P13519196273260967474

`A378320(n)+A293162(A156953(n))`
-/

namespace A384864.P13519196273260967474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378320 n + A293162 (A156953 n).toNat

end

end A384864.P13519196273260967474

/-! ## A384864.P8848337399199594280

`A381566(n)-A293162(A156953(n))`
-/

namespace A384864.P8848337399199594280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381566 n - A293162 (A156953 n).toNat

end

end A384864.P8848337399199594280

/-! ## A384864.P16076420337491943310

`A286335(n)^A043290(A025047(n))`
-/

namespace A384864.P16076420337491943310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286335 n : ℚ) ^ (A043290 (A025047 n).toNat : ℤ)

end

end A384864.P16076420337491943310

/-! ## A384864.P14866278002892790611

`A286335(n)*A382968(A098504(n))`
-/

namespace A384864.P14866278002892790611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 n * A382968 (A098504 n).toNat

end

end A384864.P14866278002892790611

/-!
# A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

The programs for A384868, the canonical program `A384868.P5511449840220434533` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384868 has offset 0).

The definition of A384868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384868.P5511449840220434533

`A231204(A054429(n+1))-A231204(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384868

/-- `A231204(A054429(n+1))-A231204(n+1)` -/
def P5511449840220434533.Spec : Prop :=
  ∀ n, P5511449840220434533.a n = A384868 n

theorem P5511449840220434533.correct : P5511449840220434533.Spec := by
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

/-! ## A384873.P14806233598307993026

`A096497(n+1)-A129691(A014642(2*n+3))`
-/

namespace A384873.P14806233598307993026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A129691 (A014642 (2 * n + 3)).toNat

end

end A384873.P14806233598307993026

/-! ## A384873.P11069961325687293911

`A096497(n+1)-A000122(A377852(2*n+3))`
-/

namespace A384873.P11069961325687293911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A000122 (A377852 (2 * n + 3)).toNat

end

end A384873.P11069961325687293911

/-! ## A384873.P787893326664572246

`A096497(n+1)-A061397(A018016(n))`
-/

namespace A384873.P787893326664572246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A061397 (A018016 n).toNat

end

end A384873.P787893326664572246

/-! ## A384873.P4294006868588683638

`A096497(n+1)-A079208(A028415(n+1))`
-/

namespace A384873.P4294006868588683638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) - A079208 (A028415 (n + 1)).toNat

end

end A384873.P4294006868588683638

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

/-! ## A384877.P17236185373043350419

`A022300(lcm(A022304(2*n), A139251(3*n+3)))`
-/

namespace A384877.P17236185373043350419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (Int.lcm (A022304 (2 * n)) (A139251 (3 * n + 3)))

end

end A384877.P17236185373043350419

/-! ## A384877.P8118825010557524853

`A372973(gcd(A059876(n+1), A331915(2*(n+2))))`
-/

namespace A384877.P8118825010557524853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372973 (Int.gcd (A059876 (n + 1)) (A331915 (2 * (n + 2))))

end

end A384877.P8118825010557524853

/-!
# A384878: Position of first appearance of n in the flattened version of the triangle A384877, whose m-th row lists the lengths of maximal anti-runs in the binary indices of m.

The programs for A384878, there is no canonical definition to state claims against.
-/

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

/-! ## A384878.P1679496108122987135

`A059570(Δ[n²])`
-/

namespace A384878.P1679496108122987135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A384878.P1679496108122987135

/-! ## A384878.P17158699688562955069

`∑[A045623(2*n)]`
-/

namespace A384878.P17158699688562955069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384878.P17158699688562955069

/-! ## A384878.P4700442331595064908

`A275434(2*n+3)/2`
-/

namespace A384878.P4700442331595064908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275434 (2 * n + 3) : ℚ) / 2

end

end A384878.P4700442331595064908

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

/-! ## A384879.P15816363146916498304

`lt[A333627(2*n+1), A277561(n)²]`
-/

namespace A384879.P15816363146916498304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P15816363146916498304

/-! ## A384879.P5035002452203851316

`lt[A246660(n), A276150(A299757(2*n+3))]`
-/

namespace A384879.P5035002452203851316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A299757 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P5035002452203851316

/-! ## A384879.P17438754567992658732

`lt[A072089(2*(n+2)), A324340(n)²]`
-/

namespace A384879.P17438754567992658732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324340 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P17438754567992658732

/-! ## A384879.P4919064921720375815

`lt[A095337(A246660(n)), A000120(n)]`
-/

namespace A384879.P4919064921720375815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095337 (A246660 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384879.P4919064921720375815

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

/-! ## A384881.P1079644406050227658

`A333213(n)-A010060(A225681(n))`
-/

namespace A384881.P1079644406050227658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 n - A010060 (A225681 n).toNat

end

end A384881.P1079644406050227658

/-! ## A384881.P8521448714246793124

`A002186(C(A281446(n), A157103(n)))`
-/

namespace A384881.P8521448714246793124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (Nat.choose (A281446 n).toNat (A157103 n).toNat)

end

end A384881.P8521448714246793124

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

/-! ## A384883.P15910071606485543665

`∏{e}[2*A290077(n)-A324052(n), A054633(#)]`
-/

namespace A384883.P15910071606485543665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290077 n - A324052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054633 (Nat.factorization (f1 n).natAbs p)

end

end A384883.P15910071606485543665

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

/-! ## A384884.P6287290025880583481

`A230490(A241729(n))`
-/

namespace A384884.P6287290025880583481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230490 (A241729 (n + 66)).toNat

end

end A384884.P6287290025880583481

/-! ## A384884.P13259010857418352381

`A382523(n)+A326590(n)`
-/

namespace A384884.P13259010857418352381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382523 n + A326590 n

end

end A384884.P13259010857418352381

/-! ## A384884.P16942316109623764283

`A382523(n)+char[A045918(n)]`
-/

namespace A384884.P16942316109623764283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382523 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A384884.P16942316109623764283

/-! ## A384884.P3791627114661231428

`A382523(n)+A079998(A084546(n))`
-/

namespace A384884.P3791627114661231428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382523 n + A079998 (A084546 n).toNat

end

end A384884.P3791627114661231428

/-!
# A384888: Number of integer partitions of n with all equal lengths of maximal anti-runs (decreasing by more than 1).

The programs for A384888, there is no canonical definition to state claims against.
-/

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

/-! ## A384888.P6205358713152884738

`A076885(A076872(2*(n+2))+A076868(n))`
-/

namespace A384888.P6205358713152884738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A076872 (2 * (n + 2)) + A076868 n).toNat

end

end A384888.P6205358713152884738

/-!
# A384889: Number of subsets of {1..n} with all equal lengths of maximal anti-runs (increasing by more than 1).

The programs for A384889, there is no canonical definition to state claims against.
-/

/-! ## A384889.P3328902969101821704

`A276571(A072863(n))`
-/

namespace A384889.P3328902969101821704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A072863 n).toNat

end

end A384889.P3328902969101821704

/-! ## A384889.P12711447010929249514

`A276571(A294958(n+1))`
-/

namespace A384889.P12711447010929249514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A294958 (n + 1)).toNat

end

end A384889.P12711447010929249514

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

/-! ## A384889.P16277160016095571634

`A342522(A164487(n))`
-/

namespace A384889.P16277160016095571634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (A164487 n).toNat

end

end A384889.P16277160016095571634

/-!
# A384890: Number of maximal anti-runs (increasing by more than 1) in the binary indices of n.

The programs for A384890, there is no canonical definition to state claims against.
-/

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

/-! ## A384890.P2496025435708913842

`A000120(A209859(n))`
-/

namespace A384890.P2496025435708913842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A209859 n).toNat

end

end A384890.P2496025435708913842

/-! ## A384890.P3562896894439426492

`A126387(A090078(n))`
-/

namespace A384890.P3562896894439426492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A090078 n).toNat

end

end A384890.P3562896894439426492

/-! ## A384890.P14249796126949206995

`A000120(A385816(n))`
-/

namespace A384890.P14249796126949206995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A385816 n).toNat

end

end A384890.P14249796126949206995

/-! ## A384890.P5132503519334049389

`A375136(A278222(n))`
-/

namespace A384890.P5132503519334049389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (A278222 n).toNat

end

end A384890.P5132503519334049389

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

/-! ## A384891.P9692296575191149392

`A350097(A298478(n+1))`
-/

namespace A384891.P9692296575191149392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350097 (A298478 (n + 1)).toNat

end

end A384891.P9692296575191149392

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

/-!
# A384893: Triangle read by rows where T(n,k) is the number of subsets of {1..n} with k maximal anti-runs (increasing by more than 1).

The programs for A384893, there is no canonical definition to state claims against.
-/

/-! ## A384893.P9312365174906825167

`A282869(n)%A089140(n+1)`
-/

namespace A384893.P9312365174906825167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282869 n) (A089140 (n + 1))

end

end A384893.P9312365174906825167

/-! ## A384893.P8611030941137569375

`A178798(A098568(n))+A048004(n)`
-/

namespace A384893.P8611030941137569375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A098568 n).toNat + A048004 n

end

end A384893.P8611030941137569375

/-! ## A384893.P11688306611880915218

`A282869(n)^A276095(A013632(n))`
-/

namespace A384893.P11688306611880915218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282869 n : ℚ) ^ (A276095 (A013632 n).toNat : ℤ)

end

end A384893.P11688306611880915218

/-! ## A384893.P3368677879144870243

`A282869(n)^A282869(A100861(n))`
-/

namespace A384893.P3368677879144870243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282869 n : ℚ) ^ (A282869 (A100861 n).toNat : ℤ)

end

end A384893.P3368677879144870243

/-! ## A384893.P17291246901289395862

`A048004(n)-Δ[A172542(A099509(n))]`
-/

namespace A384893.P17291246901289395862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172542 (A099509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n - (f1 (n + 1) - f1 n)

end

end A384893.P17291246901289395862

/-!
# A384894: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^2.

The programs for A384894, there is no canonical definition to state claims against.
-/

/-! ## A384894.P1376821700044479885

`A384899(∑[n+2]-1)`
-/

namespace A384894.P1376821700044479885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384899 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384894.P1376821700044479885

/-!
# A384895: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x)^2)^2.

The programs for A384895, there is no canonical definition to state claims against.
-/

/-! ## A384895.P7639275072008405000

`A384900(∑[n+1]+n)`
-/

namespace A384895.P7639275072008405000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384900 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384895.P7639275072008405000

/-!
# A384896: G.f. A(x) satisfies A(x) = 1 + x/A(-x*A(x))^3.

The programs for A384896, there is no canonical definition to state claims against.
-/

/-! ## A384896.P9594872515221291292

`A384901(∑[n+1]+n)`
-/

namespace A384896.P9594872515221291292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384901 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384896.P9594872515221291292

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

/-! ## A384898.P12414900663575481777

`A384903(∑[n+1]+n)`
-/

namespace A384898.P12414900663575481777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384903 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384898.P12414900663575481777

/-!
# A384899: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384894.

The programs for A384899, there is no canonical definition to state claims against.
-/

/-! ## A384899.P5717831390932512333

`gcd(A010815(A007096(n)), A296068(n))`
-/

namespace A384899.P5717831390932512333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A007096 n).toNat) (A296068 n)

end

end A384899.P5717831390932512333

/-! ## A384899.P11210794134651778956

`A144064(n)/A367931(A139205(n+1))`
-/

namespace A384899.P11210794134651778956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 n : ℚ) / (A367931 (A139205 (n + 1)).toNat : ℚ)

end

end A384899.P11210794134651778956

/-! ## A384899.P4971787181218945648

`A144064(n)^A144064(A232223(n+1))`
-/

namespace A384899.P4971787181218945648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 n : ℚ) ^ (A144064 (A232223 (n + 1)).toNat : ℤ)

end

end A384899.P4971787181218945648

/-! ## A384899.P13775779411846200164

`A297321(n)%A324037(A342973(n+1))`
-/

namespace A384899.P13775779411846200164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297321 n) (A324037 (A342973 (n + 1)).toNat)

end

end A384899.P13775779411846200164

/-! ## A384899.P1646919714757460243

`gcd(A083896(A229959(n+1)), A130020(n))`
-/

namespace A384899.P1646919714757460243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083896 (A229959 (n + 1)).toNat) (A130020 n)

end

end A384899.P1646919714757460243

