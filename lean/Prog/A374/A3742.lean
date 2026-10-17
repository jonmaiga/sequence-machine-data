import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A374200: a(n) is the minimum value of A347381 that it obtains among the unitary divisors of n larger than 1, where A347381 is the distance from n to the nearest common ancestor of n and sigma(n) in the Doudna-tree (A005940). By convention a(1) = 0.

The programs for A374200, there is no canonical definition to state claims against.
-/

/-! ## A374200.P561024271467521504

`A074206(A320574(n+1)%A349628(n+1))`
-/

namespace A374200.P561024271467521504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.tmod (A320574 (n + 1)) (A349628 (n + 1))).toNat

end

end A374200.P561024271467521504

/-! ## A374200.P2423875984749911005

`A009195(n+2)-A030308(A243051(2*n+5))`
-/

namespace A374200.P2423875984749911005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 2) - A030308 (A243051 (2 * n + 5)).toNat

end

end A374200.P2423875984749911005

/-!
# A374201: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A048679(A328845(i))) = A278222(A048679(A328845(j))), for all i, j >= 1, where A328845 is a Fibonacci-based variant of the arithmetic derivative.

The programs for A374201, there is no canonical definition to state claims against.
-/

/-! ## A374201.P1948935137496288392

`A001222(∑[A105795(n)])+1`
-/

namespace A374201.P1948935137496288392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A374201.P1948935137496288392

/-! ## A374201.P8062397444273025754

`A304118(A000041(n))+A093873(n+1)`
-/

namespace A374201.P8062397444273025754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A000041 n).toNat + A093873 (n + 1)

end

end A374201.P8062397444273025754

/-! ## A374201.P2617483001019527564

`A297155(A000975(n+2))+A287216(n)`
-/

namespace A374201.P2617483001019527564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A000975 (n + 2)).toNat + A287216 n

end

end A374201.P2617483001019527564

/-! ## A374201.P4861175287516584339

`A001221(A000975(n+2)*A362897(n))`
-/

namespace A374201.P4861175287516584339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000975 (n + 2) * A362897 n).toNat

end

end A374201.P4861175287516584339

/-! ## A374201.P11041730661797855170

`A267417(A005581(3*n+2))+A060025(n)`
-/

namespace A374201.P11041730661797855170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A005581 (3 * n + 2)).toNat + A060025 n

end

end A374201.P11041730661797855170

/-!
# A374202: The 2-adic valuation of A328845(n), where A328845 is a Fibonacci-based variant of the arithmetic derivative.

The programs for A374202, there is no canonical definition to state claims against.
-/

/-! ## A374202.P16095064625608739609

`val(A328845(n+2), 2)`
-/

namespace A374202.P16095064625608739609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328845 (n + 2)).toNat 2

end

end A374202.P16095064625608739609

/-! ## A374202.P14429476094859907750

`A007814(A374125(n+2)^A348940(2*n+5))`
-/

namespace A374202.P14429476094859907750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A374125 (n + 2) : ℚ) ^ (A348940 (2 * n + 5) : ℤ))).toNat

end

end A374202.P14429476094859907750

/-! ## A374202.P7895299736950187193

`A007814(A328845(n+2))`
-/

namespace A374202.P7895299736950187193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328845 (n + 2)).toNat

end

end A374202.P7895299736950187193

/-! ## A374202.P6610846425248342605

`A007814(A075607(n+1)*A374125(n+2))`
-/

namespace A374202.P6610846425248342605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A075607 (n + 1) * A374125 (n + 2)).toNat

end

end A374202.P6610846425248342605

/-!
# A374203: The 3-adic valuation of A328845(n), where A328845 is a Fibonacci-based variant of the arithmetic derivative.

The programs for A374203, there is no canonical definition to state claims against.
-/

/-! ## A374203.P4507125477586714041

`val(A328845(n+2), 3)`
-/

namespace A374203.P4507125477586714041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328845 (n + 2)).toNat 3

end

end A374203.P4507125477586714041

/-!
# A374204: a(n) is the minimum value of A347381 that it obtains among divisors of n larger than 1. By convention a(1) = 0.

The programs for A374204, there is no canonical definition to state claims against.
-/

/-! ## A374204.P15343372312181474949

`A374200(∏{p}[n+1, #])`
-/

namespace A374204.P15343372312181474949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A374204.P15343372312181474949

/-! ## A374204.P14417458542058750908

`A374200(A007947(n+1))`
-/

namespace A374204.P14417458542058750908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (A007947 (n + 1)).toNat

end

end A374204.P14417458542058750908

/-! ## A374204.P377812383991537622

`A374214((n+1)²)`
-/

namespace A374204.P377812383991537622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374214 ((n + 1) ^ 2)

end

end A374204.P377812383991537622

/-! ## A374204.P1765532180431817816

`A374214(3*(n+1))*A374214(A328407(n+1))`
-/

namespace A374204.P1765532180431817816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374214 (3 * (n + 1)) * A374214 (A328407 (n + 1)).toNat

end

end A374204.P1765532180431817816

/-! ## A374204.P16912326659801361005

`A374200(A020639(n+1)*A096246(n+1))`
-/

namespace A374204.P16912326659801361005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (A020639 (n + 1) * A096246 (n + 1)).toNat

end

end A374204.P16912326659801361005

/-! ## A374204.P15353088653085760934

`A347381(A020639(n+1))*A356224(n+1)`
-/

namespace A374204.P15353088653085760934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A020639 (n + 1)).toNat * A356224 (n + 1)

end

end A374204.P15353088653085760934

/-! ## A374204.P3197141579762065757

`A347381(A020639(n+1))%A333785(n+1)`
-/

namespace A374204.P3197141579762065757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347381 (A020639 (n + 1)).toNat) (A333785 (n + 1))

end

end A374204.P3197141579762065757

/-! ## A374204.P4584280855658945090

`A347381(A020639(n+1)%A115984(n+1))`
-/

namespace A374204.P4584280855658945090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (Int.tmod (A020639 (n + 1)) (A115984 (n + 1))).toNat

end

end A374204.P4584280855658945090

/-!
# A374205: The 5-adic valuation of A328845(n), where A328845 is a Fibonacci-based variant of the arithmetic derivative.

The programs for A374205, there is no canonical definition to state claims against.
-/

/-! ## A374205.P16647133122754716647

`val(A328845(n+2), 5)`
-/

namespace A374205.P16647133122754716647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328845 (n + 2)).toNat 5

end

end A374205.P16647133122754716647

/-! ## A374205.P11444335576623716663

`A083892(n+2)+A010054(A062775(3*n+5))`
-/

namespace A374205.P11444335576623716663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (n + 2) + A010054 (A062775 (3 * n + 5)).toNat

end

end A374205.P11444335576623716663

/-! ## A374205.P13942882728575356624

`A194446(3*n+5)%A080576(A322570(n+1))`
-/

namespace A374205.P13942882728575356624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194446 (3 * n + 5)) (A080576 (A322570 (n + 1)).toNat)

end

end A374205.P13942882728575356624

/-! ## A374205.P2707929033972920849

`C(A001221(n+1), A007318(A354804(3*(n+1))))`
-/

namespace A374205.P2707929033972920849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (n + 1)).toNat (A007318 (A354804 (3 * (n + 1))).toNat).toNat

end

end A374205.P2707929033972920849

/-! ## A374205.P18328761699026578031

`A055641(lcm(A060747(n), A102376(n)))`
-/

namespace A374205.P18328761699026578031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.lcm (A060747 n) (A102376 n))

end

end A374205.P18328761699026578031

/-!
# A374206: The 2-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A374206, the canonical program `A374206.P7090791217448511841` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374206 has offset 2).

The definition of A374206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374206.P7090791217448511841

`val(A113177(n+2), 2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374206

/-- `val(A113177(n+2), 2)` -/
def P7090791217448511841.Spec : Prop :=
  ∀ n, (P7090791217448511841.a n : ℤ) = A374206 (n + 2)

theorem P7090791217448511841.correct : P7090791217448511841.Spec := by
  intro n
  simp only [A374206, Nat.add_sub_cancel]

end A374206

/-! ## A374206.P14803342860647097856

`A113177(gcd(A000079(n), A113177(n+2)))`
-/

namespace A374206.P14803342860647097856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (Int.gcd (A000079 n) (A113177 (n + 2)))

end

end A374206.P14803342860647097856

namespace A374206

/-- `A113177(gcd(A000079(n), A113177(n+2)))` -/
def P14803342860647097856.Spec : Prop :=
  ∀ n, P14803342860647097856.a n = A374206 (n + 2)

end A374206

/-! ## A374206.P8987583850482522900

`A147648(A113177(n+2))`
-/

namespace A374206.P8987583850482522900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147648 (A113177 (n + 2)).toNat

end

end A374206.P8987583850482522900

namespace A374206

/-- `A147648(A113177(n+2))` -/
def P8987583850482522900.Spec : Prop :=
  ∀ n, P8987583850482522900.a n = A374206 (n + 2)

end A374206

/-! ## A374206.P17434619591128552337

`and(A000040(n+1), A191255(A113177(n+2)))`
-/

namespace A374206.P17434619591128552337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A191255 (A113177 (n + 2)).toNat)

end

end A374206.P17434619591128552337

namespace A374206

/-- `and(A000040(n+1), A191255(A113177(n+2)))` -/
def P17434619591128552337.Spec : Prop :=
  ∀ n, P17434619591128552337.a n = A374206 (n + 2)

end A374206

/-! ## A374206.P15722688299723079641

`A007814(A113177(n+2)%A051624(3*(n+1)))`
-/

namespace A374206.P15722688299723079641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.tmod (A113177 (n + 2)) (A051624 (3 * (n + 1)))).toNat

end

end A374206.P15722688299723079641

namespace A374206

/-- `A007814(A113177(n+2)%A051624(3*(n+1)))` -/
def P15722688299723079641.Spec : Prop :=
  ∀ n, P15722688299723079641.a n = A374206 (n + 2)

end A374206

/-!
# A374207: The 3-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A374207, the canonical program `A374207.P10474320584513689055` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374207 has offset 2).

The definition of A374207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374207.P10474320584513689055

`val(A113177(n+2), 3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374207

/-- `val(A113177(n+2), 3)` -/
def P10474320584513689055.Spec : Prop :=
  ∀ n, (P10474320584513689055.a n : ℤ) = A374207 (n + 2)

theorem P10474320584513689055.correct : P10474320584513689055.Spec := by
  intro n
  simp only [A374207, Nat.add_sub_cancel]

end A374207

/-! ## A374207.P15966342407363550195

`A007949(2^val(n+1, 2)*A374124(n+2))`
-/

namespace A374207.P15966342407363550195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 ((2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A374124 (n + 2)).toNat

end

end A374207.P15966342407363550195

namespace A374207

/-- `A007949(2^val(n+1, 2)*A374124(n+2))` -/
def P15966342407363550195.Spec : Prop :=
  ∀ n, P15966342407363550195.a n = A374207 (n + 2)

end A374207

/-! ## A374207.P10886428252885636329

`A025466(∑[∑[A027669(n+5)]])`
-/

namespace A374207.P10886428252885636329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027669 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374207.P10886428252885636329

namespace A374207

/-- `A025466(∑[∑[A027669(n+5)]])` -/
def P10886428252885636329.Spec : Prop :=
  ∀ n, P10886428252885636329.a n = A374207 (n + 2)

end A374207

/-! ## A374207.P5162951788034879302

`A007949((val(n+1, 3)+2*(n+1))*A374124(n+2))`
-/

namespace A374207.P5162951788034879302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 ((SequenceMachineLib.valuation (n + 1) 3 + 2 * (n + 1) : ℤ) * A374124 (n + 2)).toNat

end

end A374207.P5162951788034879302

namespace A374207

/-- `A007949((val(n+1, 3)+2*(n+1))*A374124(n+2))` -/
def P5162951788034879302.Spec : Prop :=
  ∀ n, P5162951788034879302.a n = A374207 (n + 2)

end A374207

/-! ## A374207.P5481305439357021023

`A088534(A364500(n+1)+A019552(n+1))`
-/

namespace A374207.P5481305439357021023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A364500 (n + 1) + A019552 (n + 1)).toNat

end

end A374207.P5481305439357021023

namespace A374207

/-- `A088534(A364500(n+1)+A019552(n+1))` -/
def P5481305439357021023.Spec : Prop :=
  ∀ n, P5481305439357021023.a n = A374207 (n + 2)

end A374207

/-!
# A374208: The 5-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A374208, the canonical program `A374208.P8868820187613092688` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374208 has offset 2).

The definition of A374208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374208.P8868820187613092688

`val(A113177(n+2), 5)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374208

/-- `val(A113177(n+2), 5)` -/
def P8868820187613092688.Spec : Prop :=
  ∀ n, (P8868820187613092688.a n : ℤ) = A374208 (n + 2)

theorem P8868820187613092688.correct : P8868820187613092688.Spec := by
  intro n
  simp only [A374208, Nat.add_sub_cancel]

end A374208

/-! ## A374208.P14729556248381855323

`A379227(n+2)+A130093(A132767(n+1))`
-/

namespace A374208.P14729556248381855323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (n + 2) + A130093 (A132767 (n + 1)).toNat

end

end A374208.P14729556248381855323

namespace A374208

/-- `A379227(n+2)+A130093(A132767(n+1))` -/
def P14729556248381855323.Spec : Prop :=
  ∀ n, P14729556248381855323.a n = A374208 (n + 2)

end A374208

/-! ## A374208.P4396805383499298636

`A051904(A293203(2*(n+1)))*A379227(n+2)`
-/

namespace A374208.P4396805383499298636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A293203 (2 * (n + 1))).toNat * A379227 (n + 2)

end

end A374208.P4396805383499298636

namespace A374208

/-- `A051904(A293203(2*(n+1)))*A379227(n+2)` -/
def P4396805383499298636.Spec : Prop :=
  ∀ n, P4396805383499298636.a n = A374208 (n + 2)

end A374208

/-! ## A374208.P2964324643499479690

`A379227(A022005(3*n+5))+A379227(n+2)`
-/

namespace A374208.P2964324643499479690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (A022005 (3 * n + 5)).toNat + A379227 (n + 2)

end

end A374208.P2964324643499479690

namespace A374208

/-- `A379227(A022005(3*n+5))+A379227(n+2)` -/
def P2964324643499479690.Spec : Prop :=
  ∀ n, P2964324643499479690.a n = A374208 (n + 2)

end A374208

/-! ## A374208.P15730614196465663401

`A168046(A086429(n)*A379227(n+2))`
-/

namespace A374208.P15730614196465663401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A086429 n * A379227 (n + 2)).toNat

end

end A374208.P15730614196465663401

namespace A374208

/-- `A168046(A086429(n)*A379227(n+2))` -/
def P15730614196465663401.Spec : Prop :=
  ∀ n, P15730614196465663401.a n = A374208 (n + 2)

end A374208

/-! ## A374208.P6257336270556481933

`A168046(A325798(n+1)*A379227(n+2))`
-/

namespace A374208.P6257336270556481933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A325798 (n + 1) * A379227 (n + 2)).toNat

end

end A374208.P6257336270556481933

namespace A374208

/-- `A168046(A325798(n+1)*A379227(n+2))` -/
def P6257336270556481933.Spec : Prop :=
  ∀ n, P6257336270556481933.a n = A374208 (n + 2)

end A374208

/-! ## A374208.P15814707939991291306

`A051904(A330893(n+1))*A379227(n+2)`
-/

namespace A374208.P15814707939991291306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A330893 (n + 1)).toNat * A379227 (n + 2)

end

end A374208.P15814707939991291306

namespace A374208

/-- `A051904(A330893(n+1))*A379227(n+2)` -/
def P15814707939991291306.Spec : Prop :=
  ∀ n, P15814707939991291306.a n = A374208 (n + 2)

end A374208

/-! ## A374208.P8083220738640324952

`A379227(A125602(n+1))+A379227(n+2)`
-/

namespace A374208.P8083220738640324952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (A125602 (n + 1)).toNat + A379227 (n + 2)

end

end A374208.P8083220738640324952

namespace A374208

/-- `A379227(A125602(n+1))+A379227(n+2)` -/
def P8083220738640324952.Spec : Prop :=
  ∀ n, P8083220738640324952.a n = A374208 (n + 2)

end A374208

/-!
# A374210: Partial sums of A059339.

The programs for A374210, there is no canonical definition to state claims against.
-/

/-! ## A374210.P16680109658712968350

`∑[A059339(n+1)]`
-/

namespace A374210.P16680109658712968350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374210.P16680109658712968350

/-! ## A374210.P16451324302103005507

`A358370(A043292(n+1))`
-/

namespace A374210.P16451324302103005507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358370 (A043292 (n + 1)).toNat

end

end A374210.P16451324302103005507

/-!
# A374212: The 2-adic valuation of A328768(n), where A328768 is the first primorial based variant of the arithmetic derivative.

The programs for A374212, there is no canonical definition to state claims against.
-/

/-! ## A374212.P14001194204650219768

`val(A328768(n+2), 2)`
-/

namespace A374212.P14001194204650219768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328768 (n + 2)).toNat 2

end

end A374212.P14001194204650219768

/-! ## A374212.P12637289730774493741

`A067029(gcd(A000302(n), A328768(n+2)))`
-/

namespace A374212.P12637289730774493741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.gcd (A000302 n) (A328768 (n + 2)))

end

end A374212.P12637289730774493741

/-!
# A374213: The 3-adic valuation of A328768(n), where A328768 is the first primorial based variant of the arithmetic derivative.

The programs for A374213, there is no canonical definition to state claims against.
-/

/-! ## A374213.P17355549585525209461

`val(A328768(n+2), 3)`
-/

namespace A374213.P17355549585525209461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328768 (n + 2)).toNat 3

end

end A374213.P17355549585525209461

/-! ## A374213.P5260565314288084914

`A373991(A156635(n+2))`
-/

namespace A374213.P5260565314288084914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 (A156635 (n + 2)).toNat

end

end A374213.P5260565314288084914

/-! ## A374213.P17312118079719070226

`A373991(A094421(n+1)+1)`
-/

namespace A374213.P17312118079719070226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 (A094421 (n + 1) + 1).toNat

end

end A374213.P17312118079719070226

/-! ## A374213.P11721236694857658206

`and(A101793(A016826(n)), A373991(n+2))`
-/

namespace A374213.P11721236694857658206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101793 (A016826 n).toNat) (A373991 (n + 2))

end

end A374213.P11721236694857658206

/-! ## A374213.P8518934657885754097

`A373991(n+2)+A370118(A121281(n+3))`
-/

namespace A374213.P8518934657885754097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 (n + 2) + A370118 (A121281 (n + 3)).toNat

end

end A374213.P8518934657885754097

/-!
# A374214: a(n) is the minimum value of A347381 obtained among all proper divisors of n larger than 1, where A347381 is the distance from n to the nearest common ancestor of n and sigma(n) in the Doudna-tree (A005940). By convention a(1) = a(p) = 0 for all primes p.

The programs for A374214, there is no canonical definition to state claims against.
-/

/-! ## A374214.P16009896997563189491

`A347381(n+1)-A374215(n+1)`
-/

namespace A374214.P16009896997563189491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1) - A374215 (n + 1)

end

end A374214.P16009896997563189491

/-! ## A374214.P10957203648041094753

`A374204(A005451(n+1)²)`
-/

namespace A374214.P10957203648041094753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A005451 (n + 1) ^ 2).toNat

end

end A374214.P10957203648041094753

/-! ## A374214.P5054297021587515042

`A374204(A014684(n+1)²)`
-/

namespace A374214.P5054297021587515042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A014684 (n + 1) ^ 2).toNat

end

end A374214.P5054297021587515042

/-! ## A374214.P13331800710590841761

`A374204(A048671(n+1)²)`
-/

namespace A374214.P13331800710590841761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A048671 (n + 1) ^ 2).toNat

end

end A374214.P13331800710590841761

/-! ## A374214.P976278281714778715

`A374204(A113638(n+1)²)`
-/

namespace A374214.P976278281714778715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A113638 (n + 1) ^ 2).toNat

end

end A374214.P976278281714778715

/-! ## A374214.P15274459080367610783

`A374204(A005730(n+1)²)`
-/

namespace A374214.P15274459080367610783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A005730 (n + 1) ^ 2).toNat

end

end A374214.P15274459080367610783

/-! ## A374214.P15219532509013333629

`A374204(A066560(n+1)²)`
-/

namespace A374214.P15219532509013333629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374204 (A066560 (n + 1) ^ 2).toNat

end

end A374214.P15219532509013333629

/-! ## A374214.P6479242601371496723

`A174889(n+1)*A374204(n+1)`
-/

namespace A374214.P6479242601371496723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174889 (n + 1) * A374204 (n + 1)

end

end A374214.P6479242601371496723

/-! ## A374214.P2971805786983832911

`and(A077619(n+1), A157195(n+1))`
-/

namespace A374214.P2971805786983832911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077619 (n + 1)) (A157195 (n + 1))

end

end A374214.P2971805786983832911

/-! ## A374214.P14523485668148432745

`and(A091959(n+1), A157195(n+1))`
-/

namespace A374214.P14523485668148432745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091959 (n + 1)) (A157195 (n + 1))

end

end A374214.P14523485668148432745

/-!
# A374215: a(n) = A347381(n) - A374214(n).

The programs for A374215, there is no canonical definition to state claims against.
-/

/-! ## A374215.P14016674183538840299

`A347381(n+1)-A374214(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374215.P14016674183538840299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1) - A374214 (n + 1)

end

end A374215.P14016674183538840299

/-! ## A374215.P10727967104357545438

`A252464(n+1)-A347380(n+1)-A374214(n+1)`
-/

namespace A374215.P10727967104357545438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A347380 (n + 1) - A374214 (n + 1)

end

end A374215.P10727967104357545438

/-! ## A374215.P3885853631714960401

`A056239(A325351(n+1))-A347380(n+1)-A374214(n+1)`
-/

namespace A374215.P3885853631714960401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat - A347380 (n + 1) - A374214 (n + 1)

end

end A374215.P3885853631714960401

/-! ## A374215.P5849921005172386974

`A252464(n+1)-A252464(A347879(n+1))-A374214(n+1)`
-/

namespace A374215.P5849921005172386974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A347879 (n + 1)).toNat - A374214 (n + 1)

end

end A374215.P5849921005172386974

/-! ## A374215.P16811236507248586098

`A056239(n+1)-(A347380(n+1)+A325135(n+1))-A374214(n+1)`
-/

namespace A374215.P16811236507248586098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A347380 (n + 1) + A325135 (n + 1)) - A374214 (n + 1)

end

end A374215.P16811236507248586098

/-! ## A374215.P17135933400896759315

`A324863(n+1)-(A347380(n+1)+A324870(n+1))-A374214(n+1)`
-/

namespace A374215.P17135933400896759315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - (A347380 (n + 1) + A324870 (n + 1)) - A374214 (n + 1)

end

end A374215.P17135933400896759315

/-! ## A374215.P1792364085342995803

`A243503(n+1)-A326844(n+1)-A347380(n+1)-A374214(n+1)`
-/

namespace A374215.P1792364085342995803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A326844 (n + 1) - A347380 (n + 1) - A374214 (n + 1)

end

end A374215.P1792364085342995803

/-!
# A374216: The 2-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

The programs for A374216, the canonical program `A374216.P15062092016913693210` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374216 has offset 2).

The definition of A374216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374216.P15062092016913693210

`val(A001414(n+2), 2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A374216

/-- `val(A001414(n+2), 2)` -/
def P15062092016913693210.Spec : Prop :=
  ∀ n, (P15062092016913693210.a n : ℤ) = A374216 (n + 2)

theorem P15062092016913693210.correct : P15062092016913693210.Spec := by
  intro n
  simp only [A374216, Nat.add_sub_cancel]

end A374216

/-! ## A374216.P3301399781499645410

`A007814(A001414(n+2))`
-/

namespace A374216.P3301399781499645410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001414 (n + 2)).toNat

end

end A374216.P3301399781499645410

namespace A374216

/-- `A007814(A001414(n+2))` -/
def P3301399781499645410.Spec : Prop :=
  ∀ n, P3301399781499645410.a n = A374216 (n + 2)

end A374216

/-! ## A374216.P1223230088696070630

`val(A074373(n+2), 4)`
-/

namespace A374216.P1223230088696070630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074373 (n + 2)).toNat 4

end

end A374216.P1223230088696070630

namespace A374216

/-- `val(A074373(n+2), 4)` -/
def P1223230088696070630.Spec : Prop :=
  ∀ n, (P1223230088696070630.a n : ℤ) = A374216 (n + 2)

end A374216

/-! ## A374216.P7040070341446030554

`val(Δ[A025281(n+1)], 2)`
-/

namespace A374216.P7040070341446030554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A374216.P7040070341446030554

namespace A374216

/-- `val(Δ[A025281(n+1)], 2)` -/
def P7040070341446030554.Spec : Prop :=
  ∀ n, (P7040070341446030554.a n : ℤ) = A374216 (n + 2)

end A374216

/-! ## A374216.P10659783082342634077

`A007814(A036288(n+2)-1)`
-/

namespace A374216.P10659783082342634077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036288 (n + 2) - 1).toNat

end

end A374216.P10659783082342634077

namespace A374216

/-- `A007814(A036288(n+2)-1)` -/
def P10659783082342634077.Spec : Prop :=
  ∀ n, P10659783082342634077.a n = A374216 (n + 2)

end A374216

/-! ## A374216.P3671578281401324744

`A235127(A074373(n+2))`
-/

namespace A374216.P3671578281401324744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A074373 (n + 2)).toNat

end

end A374216.P3671578281401324744

namespace A374216

/-- `A235127(A074373(n+2))` -/
def P3671578281401324744.Spec : Prop :=
  ∀ n, P3671578281401324744.a n = A374216 (n + 2)

end A374216

/-! ## A374216.P15210990231406958262

`A286561(A074375(n+2))`
-/

namespace A374216.P15210990231406958262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A074375 (n + 2)).toNat

end

end A374216.P15210990231406958262

namespace A374216

/-- `A286561(A074375(n+2))` -/
def P15210990231406958262.Spec : Prop :=
  ∀ n, P15210990231406958262.a n = A374216 (n + 2)

end A374216

/-!
# A374217: The 3-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

The programs for A374217, the canonical program `A374217.P15647163906979812584` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374217 has offset 2).

The definition of A374217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374217.P15647163906979812584

`val(A001414(n+2), 3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A374217

/-- `val(A001414(n+2), 3)` -/
def P15647163906979812584.Spec : Prop :=
  ∀ n, (P15647163906979812584.a n : ℤ) = A374217 (n + 2)

theorem P15647163906979812584.correct : P15647163906979812584.Spec := by
  intro n
  simp only [A374217, Nat.add_sub_cancel]

end A374217

/-! ## A374217.P12233700844342352105

`A007949(A001414(n+2))`
-/

namespace A374217.P12233700844342352105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A001414 (n + 2)).toNat

end

end A374217.P12233700844342352105

namespace A374217

/-- `A007949(A001414(n+2))` -/
def P12233700844342352105.Spec : Prop :=
  ∀ n, P12233700844342352105.a n = A374217 (n + 2)

end A374217

/-! ## A374217.P4572740627317886353

`val(A074376(n+2), 3)`
-/

namespace A374217.P4572740627317886353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074376 (n + 2)).toNat 3

end

end A374217.P4572740627317886353

namespace A374217

/-- `val(A074376(n+2), 3)` -/
def P4572740627317886353.Spec : Prop :=
  ∀ n, (P4572740627317886353.a n : ℤ) = A374217 (n + 2)

end A374217

/-! ## A374217.P292124263635104920

`val(A074373(n+2), 9)`
-/

namespace A374217.P292124263635104920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074373 (n + 2)).toNat 9

end

end A374217.P292124263635104920

namespace A374217

/-- `val(A074373(n+2), 9)` -/
def P292124263635104920.Spec : Prop :=
  ∀ n, (P292124263635104920.a n : ℤ) = A374217 (n + 2)

end A374217

/-! ## A374217.P14816742345029033273

`A007949(A036288(n+2)-1)`
-/

namespace A374217.P14816742345029033273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A036288 (n + 2) - 1).toNat

end

end A374217.P14816742345029033273

namespace A374217

/-- `A007949(A036288(n+2)-1)` -/
def P14816742345029033273.Spec : Prop :=
  ∀ n, P14816742345029033273.a n = A374217 (n + 2)

end A374217

/-! ## A374217.P13219599131211192574

`A060175(A074375(n+2))`
-/

namespace A374217.P13219599131211192574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060175 (A074375 (n + 2)).toNat

end

end A374217.P13219599131211192574

namespace A374217

/-- `A060175(A074375(n+2))` -/
def P13219599131211192574.Spec : Prop :=
  ∀ n, P13219599131211192574.a n = A374217 (n + 2)

end A374217

/-! ## A374217.P1151196543710938772

`A007949(A074376(n+2))`
-/

namespace A374217.P1151196543710938772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A074376 (n + 2)).toNat

end

end A374217.P1151196543710938772

namespace A374217

/-- `A007949(A074376(n+2))` -/
def P1151196543710938772.Spec : Prop :=
  ∀ n, P1151196543710938772.a n = A374217 (n + 2)

end A374217

/-!
# A374220: a(n) = 1 if A374200(n) = 1, otherwise 0, where A374200 is the minimum value of A347381 that it obtains among unitary divisors of n larger than 1.

The programs for A374220, there is no canonical definition to state claims against.
-/

/-! ## A374220.P11547443699897778566

`char[eq[1, A374200(n+1)]]`
-/

namespace A374220.P11547443699897778566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A374220.P11547443699897778566

/-! ## A374220.P16512216448850266584

`A169585(n+2)^A288950(A374200(n+1))`
-/

namespace A374220.P16512216448850266584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169585 (n + 2) : ℚ) ^ (A288950 (A374200 (n + 1)).toNat : ℤ)

end

end A374220.P16512216448850266584

/-! ## A374220.P16753601681166782537

`A374214(2*(n+1))^A288950(A374200(n+1))`
-/

namespace A374220.P16753601681166782537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374214 (2 * (n + 1)) : ℚ) ^ (A288950 (A374200 (n + 1)).toNat : ℤ)

end

end A374220.P16753601681166782537

/-! ## A374220.P11971179012749482859

`A109017(2*(n+2))^A288950(A374200(n+1))`
-/

namespace A374220.P11971179012749482859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109017 (2 * (n + 2)) : ℚ) ^ (A288950 (A374200 (n + 1)).toNat : ℤ)

end

end A374220.P11971179012749482859

/-! ## A374220.P9632752950496771001

`A035677(2*n+3)^A288950(A374200(n+1))`
-/

namespace A374220.P9632752950496771001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035677 (2 * n + 3) : ℚ) ^ (A288950 (A374200 (n + 1)).toNat : ℤ)

end

end A374220.P9632752950496771001

/-! ## A374220.P7390663849120260486

`A368915(2^A374200(n+1))`
-/

namespace A374220.P7390663849120260486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368915 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A374200 (n + 1) : ℤ))).toNat

end

end A374220.P7390663849120260486

/-! ## A374220.P14342700107048135084

`A240465(2^A374200(n+1))`
-/

namespace A374220.P14342700107048135084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A374200 (n + 1) : ℤ))).toNat

end

end A374220.P14342700107048135084

/-!
# A374221: Indices of 1's in A374200, where A374200 is the minimum value of A347381 that it obtains among unitary divisors of n larger than 1.

The programs for A374221, there is no canonical definition to state claims against.
-/

/-! ## A374221.P8900430513173452067

`eq[1, A374200(n+1)]+1`
-/

namespace A374221.P8900430513173452067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374221.P8900430513173452067

/-! ## A374221.P3830143658080077793

`eq[1, A374220(n+1)]+1`
-/

namespace A374221.P3830143658080077793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374221.P3830143658080077793

/-! ## A374221.P4341105568360643478

`filter[A080671(n+1), A374220(#)]`
-/

namespace A374221.P4341105568360643478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P4341105568360643478

/-! ## A374221.P4785486038546311205

`filter[A107750(n+1), A374220(#)]`
-/

namespace A374221.P4785486038546311205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P4785486038546311205

/-! ## A374221.P8312819901502967119

`filter[A042965(n+2), A374220(#)]`
-/

namespace A374221.P8312819901502967119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P8312819901502967119

/-! ## A374221.P15101841087128404337

`filter[A080672(n+1), A374220(#)]`
-/

namespace A374221.P15101841087128404337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P15101841087128404337

/-! ## A374221.P8019951656493458392

`filter[A070331(n+1), A374220(#)]`
-/

namespace A374221.P8019951656493458392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P8019951656493458392

/-! ## A374221.P16385987982499403038

`filter[A263715(n+2), A374220(#)]`
-/

namespace A374221.P16385987982499403038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P16385987982499403038

/-! ## A374221.P10979798508901781279

`filter[A079298(n+2), A374220(#)]`
-/

namespace A374221.P10979798508901781279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P10979798508901781279

/-! ## A374221.P13702101797286743088

`filter[A025020(n+1), A374220(#)]`
-/

namespace A374221.P13702101797286743088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P13702101797286743088

/-! ## A374221.P15947686891622369145

`filter[A047565(n+2), A374220(#)]`
-/

namespace A374221.P15947686891622369145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P15947686891622369145

/-! ## A374221.P9739617778492294009

`filter[A047595(n+2), A374220(#)]`
-/

namespace A374221.P9739617778492294009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P9739617778492294009

/-! ## A374221.P7152491714030268710

`filter[A122906(n+1), A374220(#)]`
-/

namespace A374221.P7152491714030268710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P7152491714030268710

/-! ## A374221.P1289835370987539694

`filter[A216846(n+1), A374220(#)]`
-/

namespace A374221.P1289835370987539694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P1289835370987539694

/-! ## A374221.P12561984372006091811

`filter[A368108(n+1), A374220(#)]`
-/

namespace A374221.P12561984372006091811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P12561984372006091811

/-! ## A374221.P15568275331772644312

`filter[A376198(n+1), A374220(#)]`
-/

namespace A374221.P15568275331772644312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P15568275331772644312

/-! ## A374221.P8613101828264172185

`filter[A336063(n+1), A374220(#)]`
-/

namespace A374221.P8613101828264172185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P8613101828264172185

/-! ## A374221.P10853639689236897478

`filter[A183300(n+1), A374220(#)]`
-/

namespace A374221.P10853639689236897478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P10853639689236897478

/-! ## A374221.P7226152306165592692

`filter[A132999(n+1), A374220(#)]`
-/

namespace A374221.P7226152306165592692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j).toNat = 1) n)

end

end A374221.P7226152306165592692

/-! ## A374221.P14376220077535169701

`filter[n+1, A374220(#)]`
-/

namespace A374221.P14376220077535169701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374220 (f1 j) = 1) n)

end

end A374221.P14376220077535169701

/-!
# A374222: a(n) = 1 if sigma(n) and sopfr(n) are both multiples of 3, otherwise 0, where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

The programs for A374222, the canonical program `A374222.P6993703694642363716` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374222 has offset 1).

The definition of A374222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374222.P6993703694642363716

`A079978(A374126(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A374222

/-- `A079978(A374126(n+1))` -/
def P6993703694642363716.Spec : Prop :=
  ∀ n, P6993703694642363716.a n = A374222 (n + 1)

theorem P6993703694642363716.correct : P6993703694642363716.Spec := by
  intro n
  simp only [A374222, Nat.add_sub_cancel]

end A374222

/-! ## A374222.P9786222160678362857

`(1-A353815(n+1))*A373371(n+1)`
-/

namespace A374222.P9786222160678362857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A353815 (n + 1)) * A373371 (n + 1)

end

end A374222.P9786222160678362857

namespace A374222

/-- `(1-A353815(n+1))*A373371(n+1)` -/
def P9786222160678362857.Spec : Prop :=
  ∀ n, P9786222160678362857.a n = A374222 (n + 1)

end A374222

/-! ## A374222.P14329730920080889985

`char[A374223(n+1)-1]`
-/

namespace A374222.P14329730920080889985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374223 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374222.P14329730920080889985

namespace A374222

/-- `char[A374223(n+1)-1]` -/
def P14329730920080889985.Spec : Prop :=
  ∀ n, (P14329730920080889985.a n : ℤ) = A374222 (n + 1)

end A374222

/-! ## A374222.P100429199621333731

`A079978(A000203(n+1))*A373371(n+1)`
-/

namespace A374222.P100429199621333731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000203 (n + 1)).toNat * A373371 (n + 1)

end

end A374222.P100429199621333731

namespace A374222

/-- `A079978(A000203(n+1))*A373371(n+1)` -/
def P100429199621333731.Spec : Prop :=
  ∀ n, P100429199621333731.a n = A374222 (n + 1)

end A374222

/-! ## A374222.P10238252472650013106

`(A002378(A374126(n+1)²)+1)%3`
-/

namespace A374222.P10238252472650013106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A374126 (n + 1) ^ 2).toNat + 1) 3

end

end A374222.P10238252472650013106

namespace A374222

/-- `(A002378(A374126(n+1)²)+1)%3` -/
def P10238252472650013106.Spec : Prop :=
  ∀ n, P10238252472650013106.a n = A374222 (n + 1)

end A374222

/-! ## A374222.P12686952956268919983

`A374133(2^A374126(n+1))`
-/

namespace A374222.P12686952956268919983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374133 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A374126 (n + 1) : ℤ))).toNat

end

end A374222.P12686952956268919983

namespace A374222

/-- `A374133(2^A374126(n+1))` -/
def P12686952956268919983.Spec : Prop :=
  ∀ n, P12686952956268919983.a n = A374222 (n + 1)

end A374222

/-! ## A374222.P5008889094199496258

`A189628(A363282(n+1)*A374126(n+1))`
-/

namespace A374222.P5008889094199496258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A363282 (n + 1) * A374126 (n + 1)).toNat

end

end A374222.P5008889094199496258

namespace A374222

/-- `A189628(A363282(n+1)*A374126(n+1))` -/
def P5008889094199496258.Spec : Prop :=
  ∀ n, P5008889094199496258.a n = A374222 (n + 1)

end A374222

/-!
# A374223: Numbers k such that sigma(k) and sopfr(k) are both multiples of 3, where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

The programs for A374223, the canonical program `A374223.P1912252743116904639` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374223 has offset 1).

The definition of A374223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374223.P1912252743116904639

`eq[1, A374222(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374223

/-- `eq[1, A374222(n+1)]+1` -/
def P1912252743116904639.Spec : Prop :=
  ∀ n, (P1912252743116904639.a n : ℤ) = A374223 (n + 1)

theorem P1912252743116904639.correct : P1912252743116904639.Spec := by
  intro n
  simp only [A374223, Nat.add_sub_cancel]

end A374223

/-! ## A374223.P15815350431902657503

`lt[A374126(n+1)%3, 1]+1`
-/

namespace A374223.P15815350431902657503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374126 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A374223.P15815350431902657503

namespace A374223

/-- `lt[A374126(n+1)%3, 1]+1` -/
def P15815350431902657503.Spec : Prop :=
  ∀ n, (P15815350431902657503.a n : ℤ) = A374223 (n + 1)

end A374223

/-! ## A374223.P9900456956383171796

`filter[A289142(n+1), A374222(#)]`
-/

namespace A374223.P9900456956383171796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P9900456956383171796

namespace A374223

/-- `filter[A289142(n+1), A374222(#)]` -/
def P9900456956383171796.Spec : Prop :=
  ∀ n, P9900456956383171796.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P12747830234003389302

`filter[A134376(n+1), A374222(#)]`
-/

namespace A374223.P12747830234003389302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P12747830234003389302

namespace A374223

/-- `filter[A134376(n+1), A374222(#)]` -/
def P12747830234003389302.Spec : Prop :=
  ∀ n, P12747830234003389302.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P8210685673724572752

`filter[A087943(n+1), A373371(#)]`
-/

namespace A374223.P8210685673724572752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A374223.P8210685673724572752

namespace A374223

/-- `filter[A087943(n+1), A373371(#)]` -/
def P8210685673724572752.Spec : Prop :=
  ∀ n, P8210685673724572752.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P13696014792856902330

`filter[A087943(n+1), A374222(#)]`
-/

namespace A374223.P13696014792856902330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P13696014792856902330

namespace A374223

/-- `filter[A087943(n+1), A374222(#)]` -/
def P13696014792856902330.Spec : Prop :=
  ∀ n, P13696014792856902330.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P12643977472623215046

`∩[A087943(n+1), A289142(n+1)]`
-/

namespace A374223.P12643977472623215046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374223.P12643977472623215046

namespace A374223

/-- `∩[A087943(n+1), A289142(n+1)]` -/
def P12643977472623215046.Spec : Prop :=
  ∀ n, (P12643977472623215046.a n : ℤ) = A374223 (n + 1)

end A374223

/-! ## A374223.P1201167035193415075

`filter[A257586(n+1), A374222(#)]`
-/

namespace A374223.P1201167035193415075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P1201167035193415075

namespace A374223

/-- `filter[A257586(n+1), A374222(#)]` -/
def P1201167035193415075.Spec : Prop :=
  ∀ n, P1201167035193415075.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P3562996468139704483

`filter[A139118(n+1), A374222(#)]`
-/

namespace A374223.P3562996468139704483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P3562996468139704483

namespace A374223

/-- `filter[A139118(n+1), A374222(#)]` -/
def P3562996468139704483.Spec : Prop :=
  ∀ n, P3562996468139704483.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P7770939808060817079

`filter[A268388(n+1), A374222(#)]`
-/

namespace A374223.P7770939808060817079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P7770939808060817079

namespace A374223

/-- `filter[A268388(n+1), A374222(#)]` -/
def P7770939808060817079.Spec : Prop :=
  ∀ n, P7770939808060817079.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P6616058295233099516

`filter[A080257(n+1), A374222(#)]`
-/

namespace A374223.P6616058295233099516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P6616058295233099516

namespace A374223

/-- `filter[A080257(n+1), A374222(#)]` -/
def P6616058295233099516.Spec : Prop :=
  ∀ n, P6616058295233099516.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P10837366181009496539

`filter[A220571(n+1), A374222(#)]`
-/

namespace A374223.P10837366181009496539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P10837366181009496539

namespace A374223

/-- `filter[A220571(n+1), A374222(#)]` -/
def P10837366181009496539.Spec : Prop :=
  ∀ n, P10837366181009496539.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P9571468225470742885

`filter[A062973(n+1), A374222(#)]`
-/

namespace A374223.P9571468225470742885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P9571468225470742885

namespace A374223

/-- `filter[A062973(n+1), A374222(#)]` -/
def P9571468225470742885.Spec : Prop :=
  ∀ n, P9571468225470742885.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P14630466126455098243

`filter[A002808(n+1), A374222(#)]`
-/

namespace A374223.P14630466126455098243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P14630466126455098243

namespace A374223

/-- `filter[A002808(n+1), A374222(#)]` -/
def P14630466126455098243.Spec : Prop :=
  ∀ n, P14630466126455098243.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P5662687861108059612

`filter[A018252(n+1), A374222(#)]`
-/

namespace A374223.P5662687861108059612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P5662687861108059612

namespace A374223

/-- `filter[A018252(n+1), A374222(#)]` -/
def P5662687861108059612.Spec : Prop :=
  ∀ n, P5662687861108059612.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P12272278268767398358

`filter[A056653(n+1), A374222(#)]`
-/

namespace A374223.P12272278268767398358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P12272278268767398358

namespace A374223

/-- `filter[A056653(n+1), A374222(#)]` -/
def P12272278268767398358.Spec : Prop :=
  ∀ n, P12272278268767398358.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P3698408417291624714

`filter[A065090(n+1), A374222(#)]`
-/

namespace A374223.P3698408417291624714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P3698408417291624714

namespace A374223

/-- `filter[A065090(n+1), A374222(#)]` -/
def P3698408417291624714.Spec : Prop :=
  ∀ n, P3698408417291624714.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P17169010922525613326

`filter[A171581(n+1), A374222(#)]`
-/

namespace A374223.P17169010922525613326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P17169010922525613326

namespace A374223

/-- `filter[A171581(n+1), A374222(#)]` -/
def P17169010922525613326.Spec : Prop :=
  ∀ n, P17169010922525613326.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P10909734396573477229

`filter[A338924(n+1), A374222(#)]`
-/

namespace A374223.P10909734396573477229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P10909734396573477229

namespace A374223

/-- `filter[A338924(n+1), A374222(#)]` -/
def P10909734396573477229.Spec : Prop :=
  ∀ n, P10909734396573477229.a n = A374223 (n + 1)

end A374223

/-! ## A374223.P10413044038543099728

`filter[A073900(n+1), A374222(#)]`
-/

namespace A374223.P10413044038543099728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A374223.P10413044038543099728

namespace A374223

/-- `filter[A073900(n+1), A374222(#)]` -/
def P10413044038543099728.Spec : Prop :=
  ∀ n, P10413044038543099728.a n = A374223 (n + 1)

end A374223

/-!
# A374236: Row sums of A360495.

The programs for A374236, there is no canonical definition to state claims against.
-/

/-! ## A374236.P3939595768124892001

`A008137(n)-A374999(A162862(n+1))`
-/

namespace A374236.P3939595768124892001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 n - A374999 (A162862 (n + 1)).toNat

end

end A374236.P3939595768124892001

/-!
# A374240: a(n) is the maximal determinant of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the integers 1, 2, ..., n-1 off-diagonal.

The programs for A374240, there is no canonical definition to state claims against.
-/

/-! ## A374240.P6364936853028245135

`A111810(A148406(n))`
-/

namespace A374240.P6364936853028245135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111810 (A148406 n).toNat

end

end A374240.P6364936853028245135

/-! ## A374240.P10178285511782696503

`A244042(A045846(n))`
-/

namespace A374240.P10178285511782696503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A045846 n).toNat

end

end A374240.P10178285511782696503

/-!
# A374241: a(n) is the maximal absolute value of the determinant of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the integers 1, 2, ..., n-1 off-diagonal.

The programs for A374241, there is no canonical definition to state claims against.
-/

/-! ## A374241.P3150015925009189341

`and(A005329(n), A060544(A005329(n)))`
-/

namespace A374241.P3150015925009189341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005329 n) (A060544 (A005329 n).toNat)

end

end A374241.P3150015925009189341

/-! ## A374241.P395841389367316166

`A365548(A163493(n))-A002375(n+1)`
-/

namespace A374241.P395841389367316166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365548 (A163493 n).toNat - A002375 (n + 1)

end

end A374241.P395841389367316166

/-!
# A374244: A Catalan-like sequence formed from the row sums of a Catalan-like triangle where row n is truncated to have ceiling((n+4)*log(3)/log(2)) - (n + 6) terms.

The programs for A374244, there is no canonical definition to state claims against.
-/

/-! ## A374244.P525646549325905295

`A353833(A129384(n)+n)`
-/

namespace A374244.P525646549325905295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (A129384 n + (n : ℤ)).toNat

end

end A374244.P525646549325905295

/-! ## A374244.P150020152581940398

`A325395(A003120(n+1)+n)`
-/

namespace A374244.P150020152581940398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (A003120 (n + 1) + (n : ℤ)).toNat

end

end A374244.P150020152581940398

/-! ## A374244.P15729941969239503066

`A371792(n)+A194064(A001970(n))`
-/

namespace A374244.P15729941969239503066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371792 n + A194064 (A001970 n).toNat

end

end A374244.P15729941969239503066

/-!
# A374246: Number of prime factors of n counted with multiplicity (A001222) minus the greatest number of runs possible in a permutation of them (A373957).

The programs for A374246, there is no canonical definition to state claims against.
-/

/-! ## A374246.P5672444492338386217

`A001222(n+1)-A373957(n+1)`
-/

namespace A374246.P5672444492338386217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A373957 (n + 1)

end

end A374246.P5672444492338386217

/-! ## A374246.P9396659844916116856

`∑{e}[n+1, #-1]-A374247(n+1)`
-/

namespace A374246.P9396659844916116856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) - A374247 (n + 1)

end

end A374246.P9396659844916116856

/-! ## A374246.P13276487986786825717

`A089605(A238745(n+1))`
-/

namespace A374246.P13276487986786825717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 (A238745 (n + 1)).toNat

end

end A374246.P13276487986786825717

/-! ## A374246.P1653724855195641141

`A374248(A046523(n+1))`
-/

namespace A374246.P1653724855195641141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374248 (A046523 (n + 1)).toNat

end

end A374246.P1653724855195641141

/-! ## A374246.P11134806047224253826

`A124762(A238745(n+1)-1)`
-/

namespace A374246.P11134806047224253826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A238745 (n + 1) - 1).toNat

end

end A374246.P11134806047224253826

/-! ## A374246.P17404211968166179312

`A373954(A238745(n+1)-1)`
-/

namespace A374246.P17404211968166179312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A238745 (n + 1) - 1).toNat

end

end A374246.P17404211968166179312

/-! ## A374246.P6261287253592654081

`A046660(n+1)-A374247(n+1)`
-/

namespace A374246.P6261287253592654081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) - A374247 (n + 1)

end

end A374246.P6261287253592654081

/-! ## A374246.P10882264346126290214

`A374255(n+1)/A014673(n+1)`
-/

namespace A374246.P10882264346126290214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374255 (n + 1) : ℚ) / (A014673 (n + 1) : ℚ)

end

end A374246.P10882264346126290214

/-! ## A374246.P4579548995157185967

`A374255(n+1)/A071773(n+1)`
-/

namespace A374246.P4579548995157185967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374255 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A374246.P4579548995157185967

/-! ## A374246.P12208046122617241484

`A374255(n+1)/A079879(n+1)`
-/

namespace A374246.P12208046122617241484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374255 (n + 1) : ℚ) / (A079879 (n + 1) : ℚ)

end

end A374246.P12208046122617241484

/-!
# A374247: The greatest number of runs possible in a permutation of the prime factors of n (A373957) minus the number of distinct such factors (A001221).

The programs for A374247, there is no canonical definition to state claims against.
-/

/-! ## A374247.P12019677198267842050

`A373957(n+1)-A001221(n+1)`
-/

namespace A374247.P12019677198267842050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (n + 1) - A001221 (n + 1)

end

end A374247.P12019677198267842050

/-! ## A374247.P14466653194144933247

`∑{e}[A025901(∏{e}[n+1, C(#+2, 2)]), #]`
-/

namespace A374247.P14466653194144933247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A374247.P14466653194144933247

/-! ## A374247.P9730901319489264094

`A216786(∏{e}[n+1, #-1])%∏{e}[n+1, #]`
-/

namespace A374247.P9730901319489264094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216786 (∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)).toNat) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A374247.P9730901319489264094

/-! ## A374247.P6564784443217881123

`A294880(gcd((n+1)/∏{p}[n+1, #], ∏{p}[n+1, 1-#^4]))`
-/

namespace A374247.P6564784443217881123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294880 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p ^ 4 : ℤ))))

end

end A374247.P6564784443217881123

/-! ## A374247.P14316550785370919474

`∑{e}[n+1, #]-A374246(n+1)-round(∑{e}[n+1, #^(1/n)])`
-/

namespace A374247.P14316550785370919474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A374246 (n + 1) - SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p : ℝ) ^ (1 / (n : ℚ) : ℝ))

end

end A374247.P14316550785370919474

/-! ## A374247.P10956358138618556451

`A294880((n+1)/∏{p}[n+1, #])%(∑{e}[n+1, #]!/∏{e}[n+1, #!])`
-/

namespace A374247.P10956358138618556451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294880 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ)))

end

end A374247.P10956358138618556451

/-! ## A374247.P9556539844775208521

`A086079(A108462(n+1))`
-/

namespace A374247.P9556539844775208521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086079 (A108462 (n + 1)).toNat

end

end A374247.P9556539844775208521

/-! ## A374247.P14505683951394960247

`A000607(A304779(n+1))`
-/

namespace A374247.P14505683951394960247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A304779 (n + 1)).toNat

end

end A374247.P14505683951394960247

/-! ## A374247.P11479682878330591011

`A081610(A340654(n+1))`
-/

namespace A374247.P11479682878330591011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081610 (A340654 (n + 1)).toNat

end

end A374247.P11479682878330591011

/-! ## A374247.P15947523588186124181

`A050144(A340654(n+1)+1)`
-/

namespace A374247.P15947523588186124181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050144 (A340654 (n + 1) + 1).toNat

end

end A374247.P15947523588186124181

/-!
# A374248: Sum of prime indices of n (with multiplicity) minus the greatest possible sum of run-compression of a permutation of the prime indices of n.

The programs for A374248, there is no canonical definition to state claims against.
-/

/-! ## A374248.P9431078316003689610

`A056239(n+1)-A373956(n+1)`
-/

namespace A374248.P9431078316003689610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A373956 (n + 1)

end

end A374248.P9431078316003689610

/-! ## A374248.P12929083311808779831

`A277885(n+1)*A374246(n+1)`
-/

namespace A374248.P12929083311808779831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (n + 1) * A374246 (n + 1)

end

end A374248.P12929083311808779831

/-! ## A374248.P6984056175570130120

`A333842(n+1)*A374246(n+1)`
-/

namespace A374248.P6984056175570130120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (n + 1) * A374246 (n + 1)

end

end A374248.P6984056175570130120

/-! ## A374248.P7856354352118582917

`A351464((n+1)/∏{p}[n+1, #])*A374246(n+1)`
-/

namespace A374248.P7856354352118582917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351464 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A374246 (n + 1)

end

end A374248.P7856354352118582917

/-! ## A374248.P15169421353419295978

`A367583(∏{p}[n+1, #^val(n+1, #²)]²)*A374246(n+1)`
-/

namespace A374248.P15169421353419295978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367583 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) * A374246 (n + 1)

end

end A374248.P15169421353419295978

/-! ## A374248.P6434182180271905054

`A374255(n+1)/A087039(n+1)*A319225(A082061(n+1))`
-/

namespace A374248.P6434182180271905054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374255 (n + 1) : ℚ) / (A087039 (n + 1) : ℚ) * (A319225 (A082061 (n + 1)).toNat : ℚ)

end

end A374248.P6434182180271905054

/-! ## A374248.P3703193111388164103

`A374255(n+1)/A087039(n+1)*A319225(A249739(n+1))`
-/

namespace A374248.P3703193111388164103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374255 (n + 1) : ℚ) / (A087039 (n + 1) : ℚ) * (A319225 (A249739 (n + 1)).toNat : ℚ)

end

end A374248.P3703193111388164103

/-! ## A374248.P12923792395699490443

`A363486(n+1)*A374246(n+1)`
-/

namespace A374248.P12923792395699490443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (n + 1) * A374246 (n + 1)

end

end A374248.P12923792395699490443

/-! ## A374248.P9156924299775563367

`A363941(n+1)*A374246(n+1)`
-/

namespace A374248.P9156924299775563367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 (n + 1) * A374246 (n + 1)

end

end A374248.P9156924299775563367

/-! ## A374248.P15722879944750273553

`A363487(n+1)*A374246(n+1)`
-/

namespace A374248.P15722879944750273553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (n + 1) * A374246 (n + 1)

end

end A374248.P15722879944750273553

/-!
# A374249: Numbers k such that the k-th composition in standard order has its equal parts contiguous.

The programs for A374249, there is no canonical definition to state claims against.
-/

/-! ## A374249.P9735383252586604422

`comp[A374253(n+1)]`
-/

namespace A374249.P9735383252586604422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374249.P9735383252586604422

/-! ## A374249.P4229997223112029052

`eq[A000120(n), A354582(n)]`
-/

namespace A374249.P4229997223112029052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374249.P4229997223112029052

/-! ## A374249.P3294501950047544217

`eq[A124767(n), A334028(n)]`
-/

namespace A374249.P3294501950047544217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374249.P3294501950047544217

/-! ## A374249.P10954467559347717473

`eq[log2(A001316(n)), A354582(n)]`
-/

namespace A374249.P10954467559347717473
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A374249.P10954467559347717473

/-! ## A374249.P10020095560670713172

`eq[A048881(2*n), A354582(n)]`
-/

namespace A374249.P10020095560670713172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374249.P10020095560670713172

/-! ## A374249.P17130102012836228502

`eq[val(A102377(n), 2), A354582(n)]`
-/

namespace A374249.P17130102012836228502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374249.P17130102012836228502

/-! ## A374249.P9733743199202017174

`∪[A351596(n+1), A390673(n+1)]`
-/

namespace A374249.P9733743199202017174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374249.P9733743199202017174

/-! ## A374249.P8141885150012585580

`comp[∪[A335466(n+1), A335468(n+1)]]`
-/

namespace A374249.P8141885150012585580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A374249.P8141885150012585580

/-! ## A374249.P17067039745083857584

`eq[A334300(A233569(n)), A334300(n)]`
-/

namespace A374249.P17067039745083857584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 (A233569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374249.P17067039745083857584

/-! ## A374249.P5594334078184054840

`eq[A124765(n)+A124761(n), A334028(n)]`
-/

namespace A374249.P5594334078184054840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n + A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374249.P5594334078184054840

/-!
# A374250: Greatest sum of run-compression of a permutation of the prime factors of n.

The programs for A374250, there is no canonical definition to state claims against.
-/

/-! ## A374250.P6576976545796241535

`∑{p}[n+1, #*val(n+1, #)]-A374255(n+1)`
-/

namespace A374250.P6576976545796241535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A374255 (n + 1)

end

end A374250.P6576976545796241535

/-! ## A374250.P16211719233417143721

`A001414(n+1)-A374255(n+1)`
-/

namespace A374250.P16211719233417143721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A374255 (n + 1)

end

end A374250.P16211719233417143721

/-! ## A374250.P16891264595267280485

`A001414(gcd(A007948(n+1), A120007(n+1)))`
-/

namespace A374250.P16891264595267280485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.gcd (A007948 (n + 1)) (A120007 (n + 1)))

end

end A374250.P16891264595267280485

/-! ## A374250.P9733487033870873978

`A008472(n+1)+A280292(n+1)-A374255(n+1)`
-/

namespace A374250.P9733487033870873978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A280292 (n + 1) - A374255 (n + 1))

end

end A374250.P9733487033870873978

/-! ## A374250.P16866707523344052352

`A369744(A282462(n+1))`
-/

namespace A374250.P16866707523344052352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369744 (A282462 (n + 1)).toNat

end

end A374250.P16866707523344052352

/-!
# A374251: Irregular triangle read by rows where row n is the run-compression of the n-th composition in standard order.

The programs for A374251, there is no canonical definition to state claims against.
-/

/-! ## A374251.P16090443984994994060

`A066099(∑[A333769(n)])`
-/

namespace A374251.P16090443984994994060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374251.P16090443984994994060

/-! ## A374251.P3525407368306683520

`A108730(∑[A333769(n)])+1`
-/

namespace A374251.P3525407368306683520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A374251.P3525407368306683520

/-! ## A374251.P4248626166023924309

`A353932(n+1)/A333769(n)`
-/

namespace A374251.P4248626166023924309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353932 (n + 1) : ℚ) / (A333769 n : ℚ)

end

end A374251.P4248626166023924309

/-! ## A374251.P8422245741134416101

`A066099(record[A329198(3*(n+1))])`
-/

namespace A374251.P8422245741134416101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374251.P8422245741134416101

/-! ## A374251.P11062662667825021683

`A259154(A122536(n+2))`
-/

namespace A374251.P11062662667825021683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 (A122536 (n + 2)).toNat

end

end A374251.P11062662667825021683

/-!
# A374252: Irregular triangle read by rows where T(n,k) is the number of permutations of the prime factors of n with k runs.

The programs for A374252, there is no canonical definition to state claims against.
-/

/-! ## A374252.P8345084826713302827

`and(A061394(A053638(n+1)), A063775(2*(n+2)))`
-/

namespace A374252.P8345084826713302827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061394 (A053638 (n + 1)).toNat) (A063775 (2 * (n + 2)))

end

end A374252.P8345084826713302827

/-! ## A374252.P2001799544357141796

`A367905(A128363(n+1)+n+1)`
-/

namespace A374252.P2001799544357141796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (A128363 (n + 1) + (n + 1 : ℤ)).toNat

end

end A374252.P2001799544357141796

/-! ## A374252.P2608423185894841719

`A274106(n)%A339013(A293350(n))`
-/

namespace A374252.P2608423185894841719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274106 n) (A339013 (A293350 n).toNat)

end

end A374252.P2608423185894841719

/-! ## A374252.P1427369017569664462

`and(A000119(n), A220656(A014395(n)))`
-/

namespace A374252.P1427369017569664462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000119 n) (A220656 (A014395 n).toNat)

end

end A374252.P1427369017569664462

/-! ## A374252.P8623682183436550075

`A131964(or(A049619(n), A128761(n)))`
-/

namespace A374252.P8623682183436550075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131964 (Int.lor (A049619 n) (A128761 n)).toNat

end

end A374252.P8623682183436550075

/-!
# A374253: Numbers k such that the k-th composition in standard order matches the patterns (1,2,1) or (2,1,2).

The programs for A374253, there is no canonical definition to state claims against.
-/

/-! ## A374253.P724870727647845662

`∪[A335466(n+1), A335468(n+1)]`
-/

namespace A374253.P724870727647845662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374253.P724870727647845662

/-! ## A374253.P17104497799426512512

`lt[A124765(A233569(n)), A124767(n)]`
-/

namespace A374253.P17104497799426512512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A233569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374253.P17104497799426512512

/-! ## A374253.P9688772544249935393

`lt[A334300(A233569(n)), A334300(n)]`
-/

namespace A374253.P9688772544249935393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 (A233569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374253.P9688772544249935393

/-! ## A374253.P2369376399164961570

`lt[A001221(A333219(n+1)), A124767(n)]`
-/

namespace A374253.P2369376399164961570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A333219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374253.P2369376399164961570

/-! ## A374253.P9129688275413639559

`lt[A032741(A333219(n+1)), A334300(n)]`
-/

namespace A374253.P9129688275413639559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A333219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374253.P9129688275413639559

/-!
# A374254: Numbers k such that the k-th composition in standard order is an anti-run and matches the patterns (1,2,1) or (2,1,2).

The programs for A374254, there is no canonical definition to state claims against.
-/

/-! ## A374254.P4563155229989376806

`∩[A059520(n+1), A333489(n+1)]`
-/

namespace A374254.P4563155229989376806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374254.P4563155229989376806

/-! ## A374254.P15774651790282808248

`∩[A333489(A160811(n+1)), A374253(n+1)]`
-/

namespace A374254.P15774651790282808248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A160811 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374254.P15774651790282808248

/-! ## A374254.P6332662241635034210

`∩[A333489(n+1), A351291(n+1)]`
-/

namespace A374254.P6332662241635034210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374254.P6332662241635034210

/-! ## A374254.P3167048078032830797

`∩[A333489(n+1), A374253(n+1)]`
-/

namespace A374254.P3167048078032830797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374254.P3167048078032830797

/-! ## A374254.P363913200070946538

`∩[A374253(n+1), A353744(n+4)]`
-/

namespace A374254.P363913200070946538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374254.P363913200070946538

/-!
# A374255: Sum of prime factors of n (with multiplicity) minus the greatest possible sum of run-compression of a permutation of the prime factors of n.

The programs for A374255, there is no canonical definition to state claims against.
-/

/-! ## A374255.P11624679152954760348

`A001414(n+1)-A374250(n+1)`
-/

namespace A374255.P11624679152954760348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A374250 (n + 1)

end

end A374255.P11624679152954760348

/-! ## A374255.P2349770738032325203

`A014673(n+1)*A374246(n+1)`
-/

namespace A374255.P2349770738032325203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1) * A374246 (n + 1)

end

end A374255.P2349770738032325203

/-! ## A374255.P2575583474959206641

`A063958(n+1)*A374246(n+1)`
-/

namespace A374255.P2575583474959206641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (n + 1) * A374246 (n + 1)

end

end A374255.P2575583474959206641

/-! ## A374255.P16661257780697247135

`A071773(n+1)*A374246(n+1)`
-/

namespace A374255.P16661257780697247135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A374246 (n + 1)

end

end A374255.P16661257780697247135

/-! ## A374255.P12012324628901641092

`A079879(n+1)*A374246(n+1)`
-/

namespace A374255.P12012324628901641092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1) * A374246 (n + 1)

end

end A374255.P12012324628901641092

/-! ## A374255.P4046317278791266999

`A082061(n+1)*A374246(n+1)`
-/

namespace A374255.P4046317278791266999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (n + 1) * A374246 (n + 1)

end

end A374255.P4046317278791266999

/-! ## A374255.P15078237824290056398

`A087039(n+1)*A374246(n+1)`
-/

namespace A374255.P15078237824290056398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1) * A374246 (n + 1)

end

end A374255.P15078237824290056398

/-! ## A374255.P2486197305393315026

`A088387(n+1)*A374246(n+1)`
-/

namespace A374255.P2486197305393315026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1) * A374246 (n + 1)

end

end A374255.P2486197305393315026

/-! ## A374255.P3396133327629484461

`A189172(n+1)*A374246(n+1)`
-/

namespace A374255.P3396133327629484461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189172 (n + 1) * A374246 (n + 1)

end

end A374255.P3396133327629484461

/-! ## A374255.P998586542158704481

`A249739(n+1)*A374246(n+1)`
-/

namespace A374255.P998586542158704481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1) * A374246 (n + 1)

end

end A374255.P998586542158704481

/-!
# A374259: a(n) = 2*a(n-1) + 2*a(n-2) - a(n-3), with a(0)=4, a(1)=6, a(2)=20.

The programs for A374259, the canonical program `A374259.P4028366762910116388` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374259 has offset 0).

The definition of A374259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-a(n-3)` (program `A374259.P4028366762910116388`, by `A374259.P4028366762910116388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374259.P4028366762910116388

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=20`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A374259

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P4028366762910116388.Spec : Prop :=
  ∀ n, P4028366762910116388.a n = A374259 n

theorem P4028366762910116388.correct : P4028366762910116388.Spec := by
  intro n
  simp only [A374259]

end A374259

/-! ## A374259.P15779960040154698823

`2*A059929(n+1)`
-/

namespace A374259.P15779960040154698823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059929 (n + 1)

end

end A374259.P15779960040154698823

namespace A374259

/-- `2*A059929(n+1)` -/
def P15779960040154698823.Spec : Prop :=
  ∀ n, P15779960040154698823.a n = A374259 n

end A374259

/-! ## A374259.P5326498030283387107

`2*Δ[A166536(n)]`
-/

namespace A374259.P5326498030283387107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A374259.P5326498030283387107

namespace A374259

/-- `2*Δ[A166536(n)]` -/
def P5326498030283387107.Spec : Prop :=
  ∀ n, P5326498030283387107.a n = A374259 n

end A374259

/-! ## A374259.P5108477332632974467

`A295683(2*(n+2))`
-/

namespace A374259.P5108477332632974467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 (2 * (n + 2))

end

end A374259.P5108477332632974467

namespace A374259

/-- `A295683(2*(n+2))` -/
def P5108477332632974467.Spec : Prop :=
  ∀ n, P5108477332632974467.a n = A374259 n

end A374259

/-! ## A374259.P5289839496551485905

`2*A070550(Δ[n²])`
-/

namespace A374259.P5289839496551485905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070550 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A374259.P5289839496551485905

namespace A374259

/-- `2*A070550(Δ[n²])` -/
def P5289839496551485905.Spec : Prop :=
  ∀ n, P5289839496551485905.a n = A374259 n

end A374259

/-! ## A374259.P6814749772104516584

`∑[2*Δ[A208176(n)]]`
-/

namespace A374259.P6814749772104516584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374259.P6814749772104516584

namespace A374259

/-- `∑[2*Δ[A208176(n)]]` -/
def P6814749772104516584.Spec : Prop :=
  ∀ n, P6814749772104516584.a n = A374259 n

end A374259

/-! ## A374259.P2821812600155428385

`∑[2*A260259(n+1)]`
-/

namespace A374259.P2821812600155428385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374259.P2821812600155428385

namespace A374259

/-- `∑[2*A260259(n+1)]` -/
def P2821812600155428385.Spec : Prop :=
  ∀ n, P2821812600155428385.a n = A374259 n

end A374259

/-! ## A374259.P13183407787964831477

`2*Δ[A059840(n+2)]`
-/

namespace A374259.P13183407787964831477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A374259.P13183407787964831477

namespace A374259

/-- `2*Δ[A059840(n+2)]` -/
def P13183407787964831477.Spec : Prop :=
  ∀ n, P13183407787964831477.a n = A374259 n

end A374259

/-! ## A374259.P13418475554156930494

`2*(A208176(n+1)-1)`
-/

namespace A374259.P13418475554156930494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A208176 (n + 1) - 1)

end

end A374259.P13418475554156930494

namespace A374259

/-- `2*(A208176(n+1)-1)` -/
def P13418475554156930494.Spec : Prop :=
  ∀ n, P13418475554156930494.a n = A374259 n

end A374259

/-! ## A374259.P14246386958270166916

`A236428(n)-A265762(n)`
-/

namespace A374259.P14246386958270166916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n - A265762 n

end

end A374259.P14246386958270166916

namespace A374259

/-- `A236428(n)-A265762(n)` -/
def P14246386958270166916.Spec : Prop :=
  ∀ n, P14246386958270166916.a n = A374259 n

end A374259

/-! ## A374259.P8140482197187988883

`A192883(n)+A001654(n+2)`
-/

namespace A374259.P8140482197187988883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n + A001654 (n + 2)

end

end A374259.P8140482197187988883

namespace A374259

/-- `A192883(n)+A001654(n+2)` -/
def P8140482197187988883.Spec : Prop :=
  ∀ n, P8140482197187988883.a n = A374259 n

end A374259

/-! ## A374259.P2661677035292591532

`A020695(n)*A118658(n+2)`
-/

namespace A374259.P2661677035292591532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A118658 (n + 2)

end

end A374259.P2661677035292591532

namespace A374259

/-- `A020695(n)*A118658(n+2)` -/
def P2661677035292591532.Spec : Prop :=
  ∀ n, P2661677035292591532.a n = A374259 n

end A374259

/-! ## A374259.P7225433032368536334

`A175395(n+1)+A079472(n+2)`
-/

namespace A374259.P7225433032368536334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 1) + A079472 (n + 2)

end

end A374259.P7225433032368536334

namespace A374259

/-- `A175395(n+1)+A079472(n+2)` -/
def P7225433032368536334.Spec : Prop :=
  ∀ n, P7225433032368536334.a n = A374259 n

end A374259

/-! ## A374259.P2849001679839155030

`A260259(n+1)+A001519(n+2)`
-/

namespace A374259.P2849001679839155030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (n + 1) + A001519 (n + 2)

end

end A374259.P2849001679839155030

namespace A374259

/-- `A260259(n+1)+A001519(n+2)` -/
def P2849001679839155030.Spec : Prop :=
  ∀ n, P2849001679839155030.a n = A374259 n

end A374259

/-! ## A374259.P2743132297423972280

`A192873(n+1)+A192872(n+2)`
-/

namespace A374259.P2743132297423972280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 (n + 1) + A192872 (n + 2)

end

end A374259.P2743132297423972280

namespace A374259

/-- `A192873(n+1)+A192872(n+2)` -/
def P2743132297423972280.Spec : Prop :=
  ∀ n, P2743132297423972280.a n = A374259 n

end A374259

/-! ## A374259.P9928077731848347314

`A000045(n+1)*A078642(n+1)`
-/

namespace A374259.P9928077731848347314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A078642 (n + 1)

end

end A374259.P9928077731848347314

namespace A374259

/-- `A000045(n+1)*A078642(n+1)` -/
def P9928077731848347314.Spec : Prop :=
  ∀ n, P9928077731848347314.a n = A374259 n

end A374259

/-! ## A374259.P4728561392254206863

`A226205(n+3)+A007598(n+1)`
-/

namespace A374259.P4728561392254206863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 3) + A007598 (n + 1)

end

end A374259.P4728561392254206863

namespace A374259

/-- `A226205(n+3)+A007598(n+1)` -/
def P4728561392254206863.Spec : Prop :=
  ∀ n, P4728561392254206863.a n = A374259 n

end A374259

/-! ## A374259.P8051836429936909763

`A000045(n+1)*A068922(n+2)`
-/

namespace A374259.P8051836429936909763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A068922 (n + 2)

end

end A374259.P8051836429936909763

namespace A374259

/-- `A000045(n+1)*A068922(n+2)` -/
def P8051836429936909763.Spec : Prop :=
  ∀ n, P8051836429936909763.a n = A374259 n

end A374259

/-! ## A374259.P8861395271926594914

`A007598(n+1)-A121646(n+3)`
-/

namespace A374259.P8861395271926594914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) - A121646 (n + 3)

end

end A374259.P8861395271926594914

namespace A374259

/-- `A007598(n+1)-A121646(n+3)` -/
def P8861395271926594914.Spec : Prop :=
  ∀ n, P8861395271926594914.a n = A374259 n

end A374259

/-!
# A374263: Number of distinct primitive Pythagorean triples (j^2 - k^2, 2*j*k, j^2 + k^2) where 1 <= k < j <= n.

The programs for A374263, the canonical program `A374263.P13870174198891008911` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374263 has offset 2).

The definition of A374263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374263.P12619006692533304568

`∑[A062570(n+2)/2]`
-/

namespace A374263.P12619006692533304568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374263.P12619006692533304568

namespace A374263

/-- `∑[A062570(n+2)/2]` -/
def P12619006692533304568.Spec : Prop :=
  ∀ n, P12619006692533304568.a n = (A374263 (n + 2) : ℚ)

end A374263

/-! ## A374263.P13651090706112495584

`∑[A000010(n+2)/A040001(n+1)]`
-/

namespace A374263.P13651090706112495584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A040001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374263.P13651090706112495584

namespace A374263

/-- `∑[A000010(n+2)/A040001(n+1)]` -/
def P13651090706112495584.Spec : Prop :=
  ∀ n, P13651090706112495584.a n = (A374263 (n + 2) : ℚ)

end A374263

/-! ## A374263.P13870174198891008911

`∑[A055034(n+2)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374263

/-- `∑[A055034(n+2)]` -/
def P13870174198891008911.Spec : Prop :=
  ∀ n, P13870174198891008911.a n = A374263 (n + 2)

theorem P13870174198891008911.correct : P13870174198891008911.Spec := by
  intro n
  simp only [A374263, Nat.add_sub_cancel]

end A374263

/-! ## A374263.P10320457814891649562

`∑[A216475(2*(n+1))/2]`
-/

namespace A374263.P10320457814891649562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216475 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374263.P10320457814891649562

namespace A374263

/-- `∑[A216475(2*(n+1))/2]` -/
def P10320457814891649562.Spec : Prop :=
  ∀ n, P10320457814891649562.a n = (A374263 (n + 2) : ℚ)

end A374263

/-! ## A374263.P3338078554123554936

`∑[A055684(2*(n+2))+1]`
-/

namespace A374263.P3338078554123554936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374263.P3338078554123554936

namespace A374263

/-- `∑[A055684(2*(n+2))+1]` -/
def P3338078554123554936.Spec : Prop :=
  ∀ n, P3338078554123554936.a n = A374263 (n + 2)

end A374263

/-! ## A374263.P6448126832289613904

`A004526(A049690(n+2))`
-/

namespace A374263.P6448126832289613904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049690 (n + 2)).toNat

end

end A374263.P6448126832289613904

namespace A374263

/-- `A004526(A049690(n+2))` -/
def P6448126832289613904.Spec : Prop :=
  ∀ n, P6448126832289613904.a n = A374263 (n + 2)

end A374263

/-! ## A374263.P15040648884587793311

`A142150(A049690(n+2)-1)`
-/

namespace A374263.P15040648884587793311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A049690 (n + 2) - 1).toNat

end

end A374263.P15040648884587793311

namespace A374263

/-- `A142150(A049690(n+2)-1)` -/
def P15040648884587793311.Spec : Prop :=
  ∀ n, P15040648884587793311.a n = A374263 (n + 2)

end A374263

/-!
# A374267: Perfect squares whose pattern of identical digits is unique among the squares.

The programs for A374267, there is no canonical definition to state claims against.
-/

/-! ## A374267.P5018503789837789534

`A374268(n+1)²`
-/

namespace A374267.P5018503789837789534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374268 (n + 1) ^ 2

end

end A374267.P5018503789837789534

/-! ## A374267.P3386594742295579660

`A374268(n+1)^A006519(record[∏{p}[4*n+2, #]])`
-/

namespace A374267.P3386594742295579660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374268 (n + 1) : ℚ) ^ (A006519 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ)

end

end A374267.P3386594742295579660

/-! ## A374267.P4868814509684752024

`A374268(n+1)^A010553(A007918(n))`
-/

namespace A374267.P4868814509684752024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374268 (n + 1) : ℚ) ^ (A010553 (A007918 n).toNat : ℤ)

end

end A374267.P4868814509684752024

/-! ## A374267.P4961584005271852339

`A374268(n+1)^A000005(A208238(n))`
-/

namespace A374267.P4961584005271852339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374268 (n + 1) : ℚ) ^ (A000005 (A208238 n).toNat : ℤ)

end

end A374267.P4961584005271852339

/-!
# A374268: Numbers whose squares have a unique pattern of identical digits among the squares.

The programs for A374268, there is no canonical definition to state claims against.
-/

/-! ## A374268.P6385988963735442171

`sqrt(A374267(n+1))`
-/

namespace A374268.P6385988963735442171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374267 (n + 1) : ℝ)

end

end A374268.P6385988963735442171

/-!
# A374276: Number of representations of n by the quadratic form x^2 + 3*x*y + y^2 with 0 <= x <= y.

The programs for A374276, the canonical program `A374276.P15801528438707414755` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374276 has offset 0).

The definition of A374276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374276.P17627878476655894025

`A000007(A005385(n+1))+char[A281385(n)]`
-/

namespace A374276.P17627878476655894025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A005385 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P17627878476655894025

namespace A374276

/-- `A000007(A005385(n+1))+char[A281385(n)]` -/
def P17627878476655894025.Spec : Prop :=
  ∀ n, P17627878476655894025.a n = A374276 n

end A374276

/-! ## A374276.P815084375522758948

`A000007(A293551(n))+char[A281385(n)]`
-/

namespace A374276.P815084375522758948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A293551 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P815084375522758948

namespace A374276

/-- `A000007(A293551(n))+char[A281385(n)]` -/
def P815084375522758948.Spec : Prop :=
  ∀ n, P815084375522758948.a n = A374276 n

end A374276

/-! ## A374276.P13469453440842614394

`char[A005752(n)]*A000188(A136020(n+1))`
-/

namespace A374276.P13469453440842614394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000188 (A136020 (n + 1)).toNat

end

end A374276.P13469453440842614394

namespace A374276

/-- `char[A005752(n)]*A000188(A136020(n+1))` -/
def P13469453440842614394.Spec : Prop :=
  ∀ n, P13469453440842614394.a n = A374276 n

end A374276

/-! ## A374276.P2990741323211498496

`A000007(A062677(3*n+1))+char[A281385(n)]`
-/

namespace A374276.P2990741323211498496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A062677 (3 * n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P2990741323211498496

namespace A374276

/-- `A000007(A062677(3*n+1))+char[A281385(n)]` -/
def P2990741323211498496.Spec : Prop :=
  ∀ n, P2990741323211498496.a n = A374276 n

end A374276

/-! ## A374276.P11603126455212589866

`A010052(A023251(n+1))+char[A281385(n)]`
-/

namespace A374276.P11603126455212589866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A023251 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P11603126455212589866

namespace A374276

/-- `A010052(A023251(n+1))+char[A281385(n)]` -/
def P11603126455212589866.Spec : Prop :=
  ∀ n, P11603126455212589866.a n = A374276 n

end A374276

/-! ## A374276.P15801528438707414755

`A374093(n)+A214284(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A374276

/-- `A374093(n)+A214284(n)` -/
def P15801528438707414755.Spec : Prop :=
  ∀ n, P15801528438707414755.a n = A374276 n

theorem P15801528438707414755.correct : P15801528438707414755.Spec := by
  intro n
  simp only [A374276]

end A374276

/-! ## A374276.P12208342722943666330

`char[A281385(n)]*A001222(A111296(3*(n+1)))`
-/

namespace A374276.P12208342722943666330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001222 (A111296 (3 * (n + 1))).toNat

end

end A374276.P12208342722943666330

namespace A374276

/-- `char[A281385(n)]*A001222(A111296(3*(n+1)))` -/
def P12208342722943666330.Spec : Prop :=
  ∀ n, P12208342722943666330.a n = A374276 n

end A374276

/-! ## A374276.P1473143590780325959

`A000007(A000290(n+3))+char[A281385(n)]`
-/

namespace A374276.P1473143590780325959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000290 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P1473143590780325959

namespace A374276

/-- `A000007(A000290(n+3))+char[A281385(n)]` -/
def P1473143590780325959.Spec : Prop :=
  ∀ n, P1473143590780325959.a n = A374276 n

end A374276

/-! ## A374276.P10378982508255319196

`A000007(A008795(3*n))+char[A281385(n)]`
-/

namespace A374276.P10378982508255319196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008795 (3 * n)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P10378982508255319196

namespace A374276

/-- `A000007(A008795(3*n))+char[A281385(n)]` -/
def P10378982508255319196.Spec : Prop :=
  ∀ n, P10378982508255319196.a n = A374276 n

end A374276

/-! ## A374276.P2209141413490637443

`A000007(A345847(2*n+3))+char[A281385(n)]`
-/

namespace A374276.P2209141413490637443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A345847 (2 * n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374276.P2209141413490637443

namespace A374276

/-- `A000007(A345847(2*n+3))+char[A281385(n)]` -/
def P2209141413490637443.Spec : Prop :=
  ∀ n, P2209141413490637443.a n = A374276 n

end A374276

/-!
# A374277: Numbers k divisible by exactly one of the prime factors of 30.

The programs for A374277, there is no canonical definition to state claims against.
-/

/-! ## A374277.P12214991339671804696

`A335774(n+1)/7`
-/

namespace A374277.P12214991339671804696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335774 (n + 1) : ℚ) / 7

end

end A374277.P12214991339671804696

/-! ## A374277.P258264569102310494

`(eq[7, A119288(n+1)]+1)/7`
-/

namespace A374277.P258264569102310494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 7

end

end A374277.P258264569102310494

/-! ## A374277.P16911939970240665737

`A106608(A335774(n+1))`
-/

namespace A374277.P16911939970240665737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A335774 (n + 1)).toNat

end

end A374277.P16911939970240665737

/-! ## A374277.P18390439834288082503

`eq[n, A383709(2*n)]`
-/

namespace A374277.P18390439834288082503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383709 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374277.P18390439834288082503

/-! ## A374277.P18393776951033868281

`A025480(eq[A025480(n), A383709(n)])`
-/

namespace A374277.P18393776951033868281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A374277.P18393776951033868281

/-!
# A374278: a(n) is the maximal permanent of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the integers 1, 2, ..., n-1 off-diagonal.

The programs for A374278, there is no canonical definition to state claims against.
-/

/-! ## A374278.P5146983473408619632

`A126315(C(∑[n], n))`
-/

namespace A374278.P5146983473408619632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A374278.P5146983473408619632

/-!
# A374281: a(n) is the maximal absolute value of the determinant of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the integers 1, 2, ..., n-1 off-diagonal.

The programs for A374281, there is no canonical definition to state claims against.
-/

/-! ## A374281.P16241348777861779498

`C(A236633(A165142(n)), A001221(n+1))`
-/

namespace A374281.P16241348777861779498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A236633 (A165142 n).toNat).toNat (A001221 (n + 1)).toNat

end

end A374281.P16241348777861779498

/-!
# A374286: a(n) is the smallest nonnegative integer k where there are exactly n nonnegative integer solutions to x^2 + 3*y^2 = k.

The programs for A374286, there is no canonical definition to state claims against.
-/

/-! ## A374286.P13112149861362923932

`A020138(A237121(2*a(n-1)+1))` with `a(0)=2, a(1)=0, a(2)=4`
-/

namespace A374286.P13112149861362923932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 4] fun n a =>
  A020138 (A237121 (2 * a (n - 1) + 1).toNat).toNat

end

end A374286.P13112149861362923932

/-!
# A374288: a(n) is the smallest nonnegative integer k where there are exactly n nonnegative integer solutions to x^2 + 5*y^2 = k.

The programs for A374288, there is no canonical definition to state claims against.
-/

/-! ## A374288.P11854946103887496793

`A355535(A000010(∏{e}[n, #+1]+a(n-1)))` with `a(0)=2, a(1)=0`
-/

namespace A374288.P11854946103887496793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  A355535 (A000010 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + a (n - 1)).toNat).toNat

end

end A374288.P11854946103887496793

/-!
# A374289: 5-rough powerful numbers: numbers k coprime to 6 such that if a prime p divides k then p^2 also divides k.

The programs for A374289, there is no canonical definition to state claims against.
-/

/-! ## A374289.P5127374855868700673

`filter[A062739(n+1), A187074(#)]`
-/

namespace A374289.P5127374855868700673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374289.P5127374855868700673

/-! ## A374289.P15690679392846557693

`filter[A001694(n+1), A359374(#)]`
-/

namespace A374289.P15690679392846557693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A374289.P15690679392846557693

/-! ## A374289.P16964362977845206466

`filter[A062739(n+1), A359374(#)]`
-/

namespace A374289.P16964362977845206466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A374289.P16964362977845206466

/-! ## A374289.P17106625600136748619

`filter[A062739(n+1), A373155(#)]`
-/

namespace A374289.P17106625600136748619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A374289.P17106625600136748619

/-! ## A374289.P14950713493370275012

`filter[A062739(n+1), A373156(#)]`
-/

namespace A374289.P14950713493370275012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A374289.P14950713493370275012

/-! ## A374289.P361143772463098016

`filter[A062739(n+1), A374043(#)]`
-/

namespace A374289.P361143772463098016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374289.P361143772463098016

/-! ## A374289.P7977137304176882340

`filter[A387420(n+1), A359374(#)]`
-/

namespace A374289.P7977137304176882340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A374289.P7977137304176882340

/-! ## A374289.P2979165150474863753

`filter[A387420(n+1), A373156(#)]`
-/

namespace A374289.P2979165150474863753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A374289.P2979165150474863753

/-! ## A374289.P15075608685820645790

`filter[A001694(n+1), A320106(#)]`
-/

namespace A374289.P15075608685820645790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A374289.P15075608685820645790

/-! ## A374289.P14101629930962426355

`filter[A001694(n+1), A354354(#)]`
-/

namespace A374289.P14101629930962426355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A374289.P14101629930962426355

/-! ## A374289.P4211690479060096055

`filter[A062739(n+1), A320106(#)]`
-/

namespace A374289.P4211690479060096055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A374289.P4211690479060096055

/-! ## A374289.P14611077026497737877

`filter[A062739(n+1), A354354(#)]`
-/

namespace A374289.P14611077026497737877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A374289.P14611077026497737877

/-! ## A374289.P2601442368907523359

`filter[A335851(n+1), A354354(#)]`
-/

namespace A374289.P2601442368907523359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A374289.P2601442368907523359

/-! ## A374289.P17788192474336896837

`filter[A387420(n+1), A320106(#)]`
-/

namespace A374289.P17788192474336896837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A374289.P17788192474336896837

/-! ## A374289.P10933144229650278119

`filter[A387420(n+1), A354354(#)]`
-/

namespace A374289.P10933144229650278119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A374289.P10933144229650278119

/-!
# A374290: 7-rough powerful numbers: numbers k coprime to 30 such that if a prime p divides k then p^2 also divides k.

The programs for A374290, there is no canonical definition to state claims against.
-/

/-! ## A374290.P5828937270059419898

`filter[A001694(n+1), A162289(#)]`
-/

namespace A374290.P5828937270059419898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P5828937270059419898

/-! ## A374290.P6656871884838655204

`filter[A062739(n+1), A162289(#)]`
-/

namespace A374290.P6656871884838655204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P6656871884838655204

/-! ## A374290.P11837662678989570536

`filter[A124184(n+1), A162289(#)]`
-/

namespace A374290.P11837662678989570536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P11837662678989570536

/-! ## A374290.P16766488676710859207

`filter[A374289(n+1), A011558(#)]`
-/

namespace A374290.P16766488676710859207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A374290.P16766488676710859207

/-! ## A374290.P11254456022111041081

`filter[A317102(n+1), A162289(#)]`
-/

namespace A374290.P11254456022111041081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P11254456022111041081

/-! ## A374290.P8162279481199943932

`filter[A335851(n+1), A162289(#)]`
-/

namespace A374290.P8162279481199943932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P8162279481199943932

/-! ## A374290.P3206288237826939057

`filter[A374289(n+1), A162289(#)]`
-/

namespace A374290.P3206288237826939057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P3206288237826939057

/-! ## A374290.P16232810892665000522

`filter[A377821(n+1), A162289(#)]`
-/

namespace A374290.P16232810892665000522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P16232810892665000522

/-! ## A374290.P12371974745838646692

`filter[A377846(n+1), A162289(#)]`
-/

namespace A374290.P12371974745838646692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P12371974745838646692

/-! ## A374290.P9995140811390227065

`filter[A387420(n+1), A162289(#)]`
-/

namespace A374290.P9995140811390227065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A374290.P9995140811390227065

/-!
# A374291: Squares of powerful numbers.

The programs for A374291, there is no canonical definition to state claims against.
-/

/-! ## A374291.P14183835237729077267

`A001694(n+1)²`
-/

namespace A374291.P14183835237729077267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) ^ 2

end

end A374291.P14183835237729077267

/-! ## A374291.P7313519547507067731

`(1-A224866(n+1))²`
-/

namespace A374291.P7313519547507067731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A224866 (n + 1)) ^ 2

end

end A374291.P7313519547507067731

/-! ## A374291.P16975344287964259052

`record[A001694(A324343(n))²]`
-/

namespace A374291.P16975344287964259052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A324343 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P16975344287964259052

/-! ## A374291.P6042183112373471727

`record[A001694(A324347(n))²]`
-/

namespace A374291.P6042183112373471727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P6042183112373471727

/-! ## A374291.P14147208389281551476

`∪[A340588(n+1), A378768(n+1)]`
-/

namespace A374291.P14147208389281551476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374291.P14147208389281551476

/-! ## A374291.P15449673646618576363

`∪[A340588(n+1), A390435(n+1)]`
-/

namespace A374291.P15449673646618576363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374291.P15449673646618576363

/-! ## A374291.P6789461231463661596

`(A084371(n+1)*A306458(n+1))²`
-/

namespace A374291.P6789461231463661596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084371 (n + 1) * A306458 (n + 1)) ^ 2

end

end A374291.P6789461231463661596

/-! ## A374291.P1463152144181550699

`(A369429(n+1)*A369430(n+1))²`
-/

namespace A374291.P1463152144181550699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A369429 (n + 1) * A369430 (n + 1)) ^ 2

end

end A374291.P1463152144181550699

/-! ## A374291.P9774148691519250523

`∪[A001597(n+1), A052486(n+1)]²`
-/

namespace A374291.P9774148691519250523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374291.P9774148691519250523

/-! ## A374291.P6906962819821416039

`∪[A001597(n+1), A102834(n+1)]²`
-/

namespace A374291.P6906962819821416039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374291.P6906962819821416039

/-! ## A374291.P5079275611409884678

`record[A001694(A133310(n))²]`
-/

namespace A374291.P5079275611409884678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P5079275611409884678

/-! ## A374291.P16991168043727062806

`record[A001694(A293428(n))²]`
-/

namespace A374291.P16991168043727062806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A293428 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P16991168043727062806

/-! ## A374291.P7781102058184751194

`record[A001694(A106466(n))²]`
-/

namespace A374291.P7781102058184751194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P7781102058184751194

/-! ## A374291.P16636600606831553308

`record[A001694(A126759(n))²]`
-/

namespace A374291.P16636600606831553308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P16636600606831553308

/-! ## A374291.P11902506605210958020

`record[A001694(A117910(n))²]`
-/

namespace A374291.P11902506605210958020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P11902506605210958020

/-! ## A374291.P17140176215292622665

`A064549(A306458(n+1))²`
-/

namespace A374291.P17140176215292622665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A306458 (n + 1)).toNat ^ 2

end

end A374291.P17140176215292622665

/-! ## A374291.P3991196247583529015

`∩[A326692(n+1), A335851(n+1)]²`
-/

namespace A374291.P3991196247583529015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A374291.P3991196247583529015

/-! ## A374291.P9398887185462651236

`record[A057521(n+1)²]`
-/

namespace A374291.P9398887185462651236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374291.P9398887185462651236

/-! ## A374291.P4163175465506697519

`∩[A036966(n+1), A062312(n+1)]`
-/

namespace A374291.P4163175465506697519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374291.P4163175465506697519

/-! ## A374291.P15582476536119934976

`∩[A036967(n+1), A062312(n+1)]`
-/

namespace A374291.P15582476536119934976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374291.P15582476536119934976

/-!
# A374293: a(n)/binomial(n,2)! is the probability that the minimum spanning tree of the complete graph of n vertices with i.i.d. random edge weights is a specific path.

The programs for A374293, there is no canonical definition to state claims against.
-/

/-! ## A374293.P12828045299386125962

`A253950(∑[char[1]+1+n]-(∑{digits}[n, #]+n))`
-/

namespace A374293.P12828045299386125962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253950 (∑ j ∈ Finset.range (n + 1), f1 j - (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n))

end

end A374293.P12828045299386125962

/-!
# A374294: a(n) is the smallest positive integer k such that A002325(k) = n.

The programs for A374294, there is no canonical definition to state claims against.
-/

/-! ## A374294.P13886108518577474120

`A338669(A200977(n+1))`
-/

namespace A374294.P13886108518577474120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338669 (A200977 (n + 1)).toNat

end

end A374294.P13886108518577474120

/-! ## A374294.P4345896175037406605

`A338669(A343105(n+1))`
-/

namespace A374294.P4345896175037406605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338669 (A343105 (n + 1)).toNat

end

end A374294.P4345896175037406605

/-! ## A374294.P14749874012042720142

`∩[A003597(n+1), A140495(n)]`
-/

namespace A374294.P14749874012042720142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140495 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374294.P14749874012042720142

/-!
# A374295: a(n) is the smallest positive integer k such that A096936(k) = n.

The programs for A374295, there is no canonical definition to state claims against.
-/

/-! ## A374295.P9730088529552592403

`A343771(n+1)%A002958(A002970(n+1))`
-/

namespace A374295.P9730088529552592403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343771 (n + 1)) (A002958 (A002970 (n + 1)).toNat)

end

end A374295.P9730088529552592403

/-!
# A374296: a(n) is the integer part of the area of a regular n-gon whose side lengths are n.

The programs for A374296, there is no canonical definition to state claims against.
-/

/-! ## A374296.P17019583447636321431

`A255604(∑[4*(n+1)])`
-/

namespace A374296.P17019583447636321431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374296.P17019583447636321431

/-!
# A374298: Number of growing self-avoiding walks with displacement n on a half-infinite strip of height 3 with a trapped endpoint.

The programs for A374298, there is no canonical definition to state claims against.
-/

/-! ## A374298.P9701504315601676807

`A057331(A353884(n))*A273718(n+4)`
-/

namespace A374298.P9701504315601676807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057331 (A353884 n).toNat * A273718 (n + 4)

end

end A374298.P9701504315601676807

