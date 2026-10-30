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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A253301: Complement of the Beatty sequence for sqrt(Pi*phi), where phi is the golden ratio.

The programs for A253301, the canonical program `A253301.P1879963797802955260` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253301 has offset 1).

The definition of A253301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253301.P1879963797802955260

`floor((n+1)*sqrt(π*ϕ)/(sqrt(π*ϕ)-1))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253301

/-- `floor((n+1)*sqrt(π*ϕ)/(sqrt(π*ϕ)-1))` -/
def P1879963797802955260.Spec : Prop :=
  ∀ n, P1879963797802955260.a n = A253301 (n + 1)

theorem P1879963797802955260.correct : P1879963797802955260.Spec := by
  intro n
  simp only [A253301, Nat.add_sub_cancel]

end A253301

/-! ## A253301.P984157506319991458

`comp[A252169(n+1)-1]+1`
-/

namespace A253301.P984157506319991458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252169 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253301.P984157506319991458

namespace A253301

/-- `comp[A252169(n+1)-1]+1` -/
def P984157506319991458.Spec : Prop :=
  ∀ n, (P984157506319991458.a n : ℤ) = A253301 (n + 1)

end A253301

/-! ## A253301.P14226354490587976188

`A172471(A293402(n)+A287452(n+1))`
-/

namespace A253301.P14226354490587976188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A293402 n + A287452 (n + 1)).toNat

end

end A253301.P14226354490587976188

namespace A253301

/-- `A172471(A293402(n)+A287452(n+1))` -/
def P14226354490587976188.Spec : Prop :=
  ∀ n, P14226354490587976188.a n = A253301 (n + 1)

end A253301

/-! ## A253301.P3468394083821451139

`A002024(∑[A028251(n+1)])-1`
-/

namespace A253301.P3468394083821451139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A253301.P3468394083821451139

namespace A253301

/-- `A002024(∑[A028251(n+1)])-1` -/
def P3468394083821451139.Spec : Prop :=
  ∀ n, P3468394083821451139.a n = A253301 (n + 1)

end A253301

/-! ## A253301.P17014834968742133726

`A003056(∑[A001963(n+2)+2*n])`
-/

namespace A253301.P17014834968742133726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253301.P17014834968742133726

namespace A253301

/-- `A003056(∑[A001963(n+2)+2*n])` -/
def P17014834968742133726.Spec : Prop :=
  ∀ n, P17014834968742133726.a n = A253301 (n + 1)

end A253301

/-! ## A253301.P3008674195122640089

`A057428(n+1)+A002024(∑[A028251(n+1)])`
-/

namespace A253301.P3008674195122640089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253301.P3008674195122640089

namespace A253301

/-- `A057428(n+1)+A002024(∑[A028251(n+1)])` -/
def P3008674195122640089.Spec : Prop :=
  ∀ n, P3008674195122640089.a n = A253301 (n + 1)

end A253301

/-! ## A253301.P11023927756623640686

`∑[A011558(A023551(n+1))]+n`
-/

namespace A253301.P11023927756623640686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A023551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A253301.P11023927756623640686

namespace A253301

/-- `∑[A011558(A023551(n+1))]+n` -/
def P11023927756623640686.Spec : Prop :=
  ∀ n, P11023927756623640686.a n = A253301 (n + 1)

end A253301

/-! ## A253301.P15438861217546269904

`round((A319021(A044310(2*n+1))+2)/81)`
-/

namespace A253301.P15438861217546269904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319021 (A044310 (2 * n + 1)).toNat + 2 : ℚ) / 81)

end

end A253301.P15438861217546269904

namespace A253301

/-- `round((A319021(A044310(2*n+1))+2)/81)` -/
def P15438861217546269904.Spec : Prop :=
  ∀ n, P15438861217546269904.a n = A253301 (n + 1)

end A253301

/-! ## A253301.P12854307173980916501

`eq[(-1)^dr(n+2)+n+1, n^A178334(n)]`
-/

namespace A253301.P12854307173980916501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.digitalRoot (n + 2 : ℤ) + (n + 1 : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A253301.P12854307173980916501

namespace A253301

/-- `eq[(-1)^dr(n+2)+n+1, n^A178334(n)]` -/
def P12854307173980916501.Spec : Prop :=
  ∀ n, (P12854307173980916501.a n : ℤ) = A253301 (n + 1)

end A253301

/-!
# A253303: Smallest integer m such that gcd{x | sum of proper divisors of x is m} is equal to 2*n, when there are at least two such x's.

The programs for A253303, there is no canonical definition to state claims against.
-/

/-! ## A253303.P7794570859533208433

`A253302(2*(n+1))`
-/

namespace A253303.P7794570859533208433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253302 (2 * (n + 1))

end

end A253303.P7794570859533208433

/-! ## A253303.P3221684683528092376

`lcm(2, A253302(A004277(n+1)))`
-/

namespace A253303.P3221684683528092376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253302 (A004277 (n + 1)).toNat)

end

end A253303.P3221684683528092376

/-!
# A253304: Numbers n such that the sum of the heptagonal numbers H(n) and H(n+1) is equal to the octagonal number O(m) for some m.

The programs for A253304, the canonical program `A253304.P9352522508536238177` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253304 has offset 1).

The definition of A253304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253304.P9352522508536238177

`ogf((1+21x-7x^2-3x^3)/(1-x-62x^2+62x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253304

/-- `ogf((1+21x-7x^2-3x^3)/(1-x-62x^2+62x^3+x^4-x^5))` -/
def P9352522508536238177.Spec : Prop :=
  ∀ n, P9352522508536238177.a n = A253304 (n + 1)

theorem P9352522508536238177.correct : P9352522508536238177.Spec := by
  intro n
  simp only [A253304, Nat.add_sub_cancel]

end A253304

/-! ## A253304.P17523641261589992296

`∑[A010684(n)*A070997(n)]`
-/

namespace A253304.P17523641261589992296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253304.P17523641261589992296

namespace A253304

/-- `∑[A010684(n)*A070997(n)]` -/
def P17523641261589992296.Spec : Prop :=
  ∀ n, P17523641261589992296.a n = A253304 (n + 1)

end A253304

/-! ## A253304.P1820421665516272310

`∑[A070997(n)*A176040(n+1)]`
-/

namespace A253304.P1820421665516272310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n * A176040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253304.P1820421665516272310

namespace A253304

/-- `∑[A070997(n)*A176040(n+1)]` -/
def P1820421665516272310.Spec : Prop :=
  ∀ n, P1820421665516272310.a n = A253304 (n + 1)

end A253304

/-! ## A253304.P6713604092084310785

`∑[A010684(n)*A041023(2*n)]`
-/

namespace A253304.P6713604092084310785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A041023 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253304.P6713604092084310785

namespace A253304

/-- `∑[A010684(n)*A041023(2*n)]` -/
def P6713604092084310785.Spec : Prop :=
  ∀ n, P6713604092084310785.a n = A253304 (n + 1)

end A253304

/-! ## A253304.P6806984424360056457

`∑[A010684(n)*A080871(2*n+1)]`
-/

namespace A253304.P6806984424360056457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A080871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253304.P6806984424360056457

namespace A253304

/-- `∑[A010684(n)*A080871(2*n+1)]` -/
def P6806984424360056457.Spec : Prop :=
  ∀ n, P6806984424360056457.a n = A253304 (n + 1)

end A253304

/-! ## A253304.P6207302596062432885

`A254674(n+1)+A254675(n+1)-1`
-/

namespace A253304.P6207302596062432885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254674 (n + 1) + (A254675 (n + 1) - 1)

end

end A253304.P6207302596062432885

namespace A253304

/-- `A254674(n+1)+A254675(n+1)-1` -/
def P6207302596062432885.Spec : Prop :=
  ∀ n, P6207302596062432885.a n = A253304 (n + 1)

end A253304

/-!
# A253305: Numbers n such that the octagonal number O(n) is equal to the sum of the heptagonal numbers H(m) and H(m+1) for some m.

The programs for A253305, the canonical program `A253305.P4333566737309396120` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253305 has offset 1).

The definition of A253305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253305.P4333566737309396120

`ogf((2+27x-53x^2+3x^3+x^4)/(1-x-62x^2+62x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253305

/-- `ogf((2+27x-53x^2+3x^3+x^4)/(1-x-62x^2+62x^3+x^4-x^5))` -/
def P4333566737309396120.Spec : Prop :=
  ∀ n, P4333566737309396120.a n = A253305 (n + 1)

theorem P4333566737309396120.correct : P4333566737309396120.Spec := by
  intro n
  simp only [A253305, Nat.add_sub_cancel]

end A253305

/-!
# A253306: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253306, there is no canonical definition to state claims against.
-/

/-! ## A253306.P5994820166706815476

`A253314((n+1)²+n²)`
-/

namespace A253306.P5994820166706815476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 ((n + 1) ^ 2 + n ^ 2)

end

end A253306.P5994820166706815476

/-! ## A253306.P17651854030696995655

`lcm(A164281(n), A253314(A001844(n)))`
-/

namespace A253306.P17651854030696995655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164281 n) (A253314 (A001844 n).toNat)

end

end A253306.P17651854030696995655

/-! ## A253306.P11988394586602139823

`or(A000007(n), A253314(A001844(n)))`
-/

namespace A253306.P11988394586602139823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253314 (A001844 n).toNat)

end

end A253306.P11988394586602139823

/-! ## A253306.P11862407830590747222

`A253314(A001844(n))+A070097(n+1)`
-/

namespace A253306.P11862407830590747222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A001844 n).toNat + A070097 (n + 1)

end

end A253306.P11862407830590747222

/-! ## A253306.P3098240606387510608

`A062379(n+1)*A253314(A001844(n))`
-/

namespace A253306.P3098240606387510608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (n + 1) * A253314 (A001844 n).toNat

end

end A253306.P3098240606387510608

/-!
# A253307: Number of (n+1)X(1+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253307, there is no canonical definition to state claims against.
-/

/-! ## A253307.P5496829512844617654

`A253314(∑[n]+1)`
-/

namespace A253307.P5496829512844617654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253307.P5496829512844617654

/-! ## A253307.P6485640410733503222

`record[A253314(n+1)]`
-/

namespace A253307.P6485640410733503222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253307.P6485640410733503222

/-! ## A253307.P7770143782732376612

`A253314(A000124(n))+A000007(n+1)`
-/

namespace A253307.P7770143782732376612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A000124 n).toNat + A000007 (n + 1)

end

end A253307.P7770143782732376612

/-! ## A253307.P6095035425964750569

`lcm(A076479(n+1), A253314(A000124(n)))`
-/

namespace A253307.P6095035425964750569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A253314 (A000124 n).toNat)

end

end A253307.P6095035425964750569

/-! ## A253307.P5951641999501259539

`A253314(A152947(n+2))+A000007(n+2)`
-/

namespace A253307.P5951641999501259539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A152947 (n + 2)).toNat + A000007 (n + 2)

end

end A253307.P5951641999501259539

/-!
# A253308: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253308, there is no canonical definition to state claims against.
-/

/-! ## A253308.P10567074634557816783

`A253314(A133263(n+1))`
-/

namespace A253308.P10567074634557816783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A133263 (n + 1)).toNat

end

end A253308.P10567074634557816783

/-! ## A253308.P14080054058649100457

`A253314(A373662(n+1))`
-/

namespace A253308.P14080054058649100457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A373662 (n + 1)).toNat

end

end A253308.P14080054058649100457

/-! ## A253308.P12292218374987708137

`A253314(A167499(n)-3)`
-/

namespace A253308.P12292218374987708137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A167499 n - 3).toNat

end

end A253308.P12292218374987708137

/-! ## A253308.P885460727428507492

`A253314(A000124(n+1)+1)`
-/

namespace A253308.P885460727428507492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A000124 (n + 1) + 1).toNat

end

end A253308.P885460727428507492

/-! ## A253308.P14227473140539138272

`A253314(eq[1, A131818(n+1)-2])`
-/

namespace A253308.P14227473140539138272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253308.P14227473140539138272

/-!
# A253309: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253309, there is no canonical definition to state claims against.
-/

/-! ## A253309.P7578970188580084894

`A253314(∑[n+2]+4)`
-/

namespace A253309.P7578970188580084894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253309.P7578970188580084894

/-! ## A253309.P6103553574137321096

`lcm(2, A253314(A167499(n)+n))`
-/

namespace A253309.P6103553574137321096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253314 (A167499 n + (n : ℤ)).toNat)

end

end A253309.P6103553574137321096

/-! ## A253309.P4260214555317616830

`or(A000038(n), A253314(A167614(n+1)))`
-/

namespace A253309.P4260214555317616830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A253314 (A167614 (n + 1)).toNat)

end

end A253309.P4260214555317616830

/-! ## A253309.P9920287734691025723

`A253314(A167499(n)+n)+A008683(2*36*(n+1))`
-/

namespace A253309.P9920287734691025723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A167499 n + (n : ℤ)).toNat + A008683 (2 * (36 * (n + 1)))

end

end A253309.P9920287734691025723

/-!
# A253310: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253310, there is no canonical definition to state claims against.
-/

/-! ## A253310.P4886210201347678449

`A253314(A374004(n+1))`
-/

namespace A253310.P4886210201347678449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A374004 (n + 1)).toNat

end

end A253310.P4886210201347678449

/-! ## A253310.P15992810629729317218

`A253314(A141214(n)+7)`
-/

namespace A253310.P15992810629729317218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A141214 n + 7).toNat

end

end A253310.P15992810629729317218

/-! ## A253310.P11861387716194004866

`A253314(A052905(n)+9)`
-/

namespace A253310.P11861387716194004866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A052905 n + 9).toNat

end

end A253310.P11861387716194004866

/-! ## A253310.P8054360830015042964

`A253314(A055999(n)+10)`
-/

namespace A253310.P8054360830015042964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A055999 n + 10).toNat

end

end A253310.P8054360830015042964

/-! ## A253310.P3975368919280030505

`A253314(A167614(n+2)+1)`
-/

namespace A253310.P3975368919280030505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A167614 (n + 2) + 1).toNat

end

end A253310.P3975368919280030505

/-!
# A253311: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253311, there is no canonical definition to state claims against.
-/

/-! ## A253311.P5187319427781734652

`A253314(A374005(n+1))`
-/

namespace A253311.P5187319427781734652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A374005 (n + 1)).toNat

end

end A253311.P5187319427781734652

/-! ## A253311.P12330563318854890398

`A253314(A167499(n+3))`
-/

namespace A253311.P12330563318854890398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A167499 (n + 3)).toNat

end

end A253311.P12330563318854890398

/-! ## A253311.P4735435798922200203

`A253314(A000124(n+4)+4)`
-/

namespace A253311.P4735435798922200203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A000124 (n + 4) + 4).toNat

end

end A253311.P4735435798922200203

/-! ## A253311.P18101792806864143282

`A253314(A055999(n+1)+11)`
-/

namespace A253311.P18101792806864143282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A055999 (n + 1) + 11).toNat

end

end A253311.P18101792806864143282

/-! ## A253311.P6055769124403722886

`A253314(A052905(n+3)-A005408(n))`
-/

namespace A253311.P6055769124403722886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A052905 (n + 3) - A005408 n).toNat

end

end A253311.P6055769124403722886

/-!
# A253312: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253312, there is no canonical definition to state claims against.
-/

/-! ## A253312.P12629727430453612917

`A253314(A374007(n+1))`
-/

namespace A253312.P12629727430453612917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A374007 (n + 1)).toNat

end

end A253312.P12629727430453612917

/-! ## A253312.P438158332363329303

`A253314(A141214(n+2)+9)`
-/

namespace A253312.P438158332363329303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A141214 (n + 2) + 9).toNat

end

end A253312.P438158332363329303

/-! ## A253312.P7664053049443615554

`A253314(A052905(n+2)+11)`
-/

namespace A253312.P7664053049443615554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A052905 (n + 2) + 11).toNat

end

end A253312.P7664053049443615554

/-! ## A253312.P15136864652007456623

`A253314(eq[7, A131818(n+1)])`
-/

namespace A253312.P15136864652007456623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253312.P15136864652007456623

/-! ## A253312.P8458444671542535633

`A253314(A052905(n+3))`
-/

namespace A253312.P8458444671542535633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A052905 (n + 3)).toNat

end

end A253312.P8458444671542535633

/-!
# A253313: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253313, there is no canonical definition to state claims against.
-/

/-! ## A253313.P17062539752375502314

`A253314(A374008(n+1))`
-/

namespace A253313.P17062539752375502314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A374008 (n + 1)).toNat

end

end A253313.P17062539752375502314

/-! ## A253313.P13328088681750023522

`A253314(eq[8, A131818(n+1)])`
-/

namespace A253313.P13328088681750023522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253313.P13328088681750023522

/-! ## A253313.P9794689821438448037

`A253314(A000124(n+7)-(n+1))`
-/

namespace A253313.P9794689821438448037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A253313.P9794689821438448037

/-! ## A253313.P15797908383813318837

`A253314(A055999(n+4))`
-/

namespace A253313.P15797908383813318837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (A055999 (n + 4)).toNat

end

end A253313.P15797908383813318837

/-! ## A253313.P8535475003547439469

`A253314(eq[4, A219347(n)])`
-/

namespace A253313.P8535475003547439469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253313.P8535475003547439469

/-!
# A253315: a(n) = bitwise XOR of all the bit numbers for the bits that are set in n.

The programs for A253315, the canonical program `A253315.P14136227825810400919` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253315 has offset 0).

The definition of A253315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253315.P14136227825810400919

`A261283(floor(n/2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253315

/-- `A261283(floor(n/2))` -/
def P14136227825810400919.Spec : Prop :=
  ∀ n, P14136227825810400919.a n = A253315 n

theorem P14136227825810400919.correct : P14136227825810400919.Spec := by
  intro n
  simp only [A253315]

end A253315

/-! ## A253315.P2080331335933735821

`A355340(A292600(n))`
-/

namespace A253315.P2080331335933735821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355340 (A292600 n).toNat

end

end A253315.P2080331335933735821

namespace A253315

/-- `A355340(A292600(n))` -/
def P2080331335933735821.Spec : Prop :=
  ∀ n, P2080331335933735821.a n = A253315 n

end A253315

/-! ## A253315.P3270749187528411522

`xor(A261283(n), A355340(n))`
-/

namespace A253315.P3270749187528411522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A261283 n) (A355340 n)

end

end A253315.P3270749187528411522

namespace A253315

/-- `xor(A261283(n), A355340(n))` -/
def P3270749187528411522.Spec : Prop :=
  ∀ n, P3270749187528411522.a n = A253315 n

end A253315

/-! ## A253315.P16203699144645972321

`A261283(A123108(n))-A000007(n)`
-/

namespace A253315.P16203699144645972321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A123108 n).toNat - A000007 n

end

end A253315.P16203699144645972321

namespace A253315

/-- `A261283(A123108(n))-A000007(n)` -/
def P16203699144645972321.Spec : Prop :=
  ∀ n, P16203699144645972321.a n = A253315 n

end A253315

/-! ## A253315.P16848839222011201949

`A261283(A123108(n))%A000124(n)`
-/

namespace A253315.P16848839222011201949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261283 (A123108 n).toNat) (A000124 n)

end

end A253315.P16848839222011201949

namespace A253315

/-- `A261283(A123108(n))%A000124(n)` -/
def P16848839222011201949.Spec : Prop :=
  ∀ n, P16848839222011201949.a n = A253315 n

end A253315

/-! ## A253315.P7545747981421663081

`or(A261283(A004526(n)), A269723(n))`
-/

namespace A253315.P7545747981421663081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A261283 (A004526 n).toNat) (A269723 n)

end

end A253315.P7545747981421663081

namespace A253315

/-- `or(A261283(A004526(n)), A269723(n))` -/
def P7545747981421663081.Spec : Prop :=
  ∀ n, P7545747981421663081.a n = A253315 n

end A253315

/-! ## A253315.P1101733980906514821

`xor(A261283(A003188(n)), A261283(n))`
-/

namespace A253315.P1101733980906514821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A261283 (A003188 n).toNat) (A261283 n)

end

end A253315.P1101733980906514821

namespace A253315

/-- `xor(A261283(A003188(n)), A261283(n))` -/
def P1101733980906514821.Spec : Prop :=
  ∀ n, P1101733980906514821.a n = A253315 n

end A253315

/-! ## A253315.P6547596267009662889

`exp(A000038(n))*A261283(A004526(n))`
-/

namespace A253315.P6547596267009662889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A000038 n : ℝ) * (A261283 (A004526 n).toNat : ℝ)

end

end A253315.P6547596267009662889

namespace A253315

/-- `exp(A000038(n))*A261283(A004526(n))` -/
def P6547596267009662889.Spec : Prop :=
  ∀ n, P6547596267009662889.a n = (A253315 n : ℝ)

end A253315

/-! ## A253315.P11546202438839745408

`A261283(A004526(n))+A000038(n+1)`
-/

namespace A253315.P11546202438839745408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A004526 n).toNat + A000038 (n + 1)

end

end A253315.P11546202438839745408

namespace A253315

/-- `A261283(A004526(n))+A000038(n+1)` -/
def P11546202438839745408.Spec : Prop :=
  ∀ n, P11546202438839745408.a n = A253315 n

theorem P11546202438839745408.correct : P11546202438839745408.Spec := by
  intro n
  simp only [A253315, Nat.add_sub_cancel, A253315.P11546202438839745408.a, A253315.P14136227825810400919.a, A000038, A000038.P13734959004655594922.a, A004526, A004526.P10084182425416171735.a, A261283, A261283.P16041338717505093880.a, A000007, A000007.P6599383543502402472.a, A006068, A006068.P433290056721054414.a, A355340, A355340.P14945894853618665035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253315

/-! ## A253315.P5642650612292567324

`lcm(A008836(n+1), A261283(A004526(n)))`
-/

namespace A253315.P5642650612292567324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A261283 (A004526 n).toNat)

end

end A253315.P5642650612292567324

namespace A253315

/-- `lcm(A008836(n+1), A261283(A004526(n)))` -/
def P5642650612292567324.Spec : Prop :=
  ∀ n, (P5642650612292567324.a n : ℤ) = A253315 n

end A253315

/-!
# A253317: Indices in A261283 where records occur.

The programs for A253317, the canonical program `A253317.P5561849184342656914` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253317 has offset 1).

The definition of A253317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253317.P17730243836182949167

`A358126(n)/2`
-/

namespace A253317.P17730243836182949167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358126 n : ℚ) / 2

end

end A253317.P17730243836182949167

namespace A253317

/-- `A358126(n)/2` -/
def P17730243836182949167.Spec : Prop :=
  ∀ n, P17730243836182949167.a n = (A253317 (n + 1) : ℚ)

end A253317

/-! ## A253317.P5561849184342656914

`a(n-A053644(n))+2^(A053644(n)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A253317

/-- `a(n-A053644(n))+2^(A053644(n)-1)` -/
def P5561849184342656914.Spec : Prop :=
  ∀ n, P5561849184342656914.a n = (A253317 (n + 1) : ℚ)

end A253317

/-! ## A253317.P5454586496074784712

`∑{p}[A019565(n), A059884(#)]`
-/

namespace A253317.P5454586496074784712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A059884 p

end

end A253317.P5454586496074784712

namespace A253317

/-- `∑{p}[A019565(n), A059884(#)]` -/
def P5454586496074784712.Spec : Prop :=
  ∀ n, P5454586496074784712.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P12598280852086640181

`∑{p}[A019565(n), A331312(#)]`
-/

namespace A253317.P12598280852086640181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331312 p

end

end A253317.P12598280852086640181

namespace A253317

/-- `∑{p}[A019565(n), A331312(#)]` -/
def P12598280852086640181.Spec : Prop :=
  ∀ n, P12598280852086640181.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P11256750208130249413

`∑{p}[A019565(n), A011782(A048675(#))]`
-/

namespace A253317.P11256750208130249413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (A048675 p).toNat

end

end A253317.P11256750208130249413

namespace A253317

/-- `∑{p}[A019565(n), A011782(A048675(#))]` -/
def P11256750208130249413.Spec : Prop :=
  ∀ n, P11256750208130249413.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P10343409024887182818

`∑{p}[A019565(n), A156552(A336321(#))]`
-/

namespace A253317.P10343409024887182818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 (A336321 p).toNat

end

end A253317.P10343409024887182818

namespace A253317

/-- `∑{p}[A019565(n), A156552(A336321(#))]` -/
def P10343409024887182818.Spec : Prop :=
  ∀ n, P10343409024887182818.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P4302002406211266693

`∑{p}[A284003(A003188(n)), A331312(#)]`
-/

namespace A253317.P4302002406211266693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331312 p

end

end A253317.P4302002406211266693

namespace A253317

/-- `∑{p}[A284003(A003188(n)), A331312(#)]` -/
def P4302002406211266693.Spec : Prop :=
  ∀ n, P4302002406211266693.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P11097047364779578865

`∑{p}[A325094(n), A048675(#)]`
-/

namespace A253317.P11097047364779578865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A253317.P11097047364779578865

namespace A253317

/-- `∑{p}[A325094(n), A048675(#)]` -/
def P11097047364779578865.Spec : Prop :=
  ∀ n, P11097047364779578865.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P10211156548842403601

`∑{p}[A325094(n), A285330(#)]`
-/

namespace A253317.P10211156548842403601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A253317.P10211156548842403601

namespace A253317

/-- `∑{p}[A325094(n), A285330(#)]` -/
def P10211156548842403601.Spec : Prop :=
  ∀ n, P10211156548842403601.a n = A253317 (n + 1)

end A253317

/-! ## A253317.P11131925656323751627

`∑{d}[A019565(n), A059884(A014963(#))]`
-/

namespace A253317.P11131925656323751627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059884 (A014963 d).toNat

end

end A253317.P11131925656323751627

namespace A253317

/-- `∑{d}[A019565(n), A059884(A014963(#))]` -/
def P11131925656323751627.Spec : Prop :=
  ∀ n, P11131925656323751627.a n = A253317 (n + 1)

end A253317

/-!
# A253319: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253319, there is no canonical definition to state claims against.
-/

/-! ## A253319.P5442239443726264576

`A253326(∑[4*n]+1)`
-/

namespace A253319.P5442239443726264576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253319.P5442239443726264576

/-! ## A253319.P7716750801338768058

`and(-1, A253326(A001844(n)))`
-/

namespace A253319.P7716750801338768058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A253326 (A001844 n).toNat)

end

end A253319.P7716750801338768058

/-! ## A253319.P2545148594586744975

`record[A253326(A286145(n)+1)]`
-/

namespace A253319.P2545148594586744975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253319.P2545148594586744975

/-! ## A253319.P10127831674919129036

`record[A253326(A001844(∑{digits}[n, #]))]`
-/

namespace A253319.P10127831674919129036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253319.P10127831674919129036

/-! ## A253319.P12539041727652169237

`record[A003982(n)*A253326(n+1)]`
-/

namespace A253319.P12539041727652169237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253319.P12539041727652169237

/-!
# A253320: Number of (n+1)X(2+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253320, there is no canonical definition to state claims against.
-/

/-! ## A253320.P4901104172544605141

`A253326(∑[n+2])`
-/

namespace A253320.P4901104172544605141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253320.P4901104172544605141

/-! ## A253320.P10381124561804990098

`record[A253326(abs(A201163(n)))]`
-/

namespace A253320.P10381124561804990098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253320.P10381124561804990098

/-! ## A253320.P8115048256008321301

`record[A253326(A276956(n+3)-1)]`
-/

namespace A253320.P8115048256008321301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A276956 (n + 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253320.P8115048256008321301

/-! ## A253320.P3532861916032929918

`or(char[2], A253326(A000096(n+1)))`
-/

namespace A253320.P3532861916032929918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253326 (A000096 (n + 1)).toNat)

end

end A253320.P3532861916032929918

/-! ## A253320.P7724520972619163743

`A253326(A000096(n+1))%A156048(n+1)`
-/

namespace A253320.P7724520972619163743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253326 (A000096 (n + 1)).toNat) (A156048 (n + 1))

end

end A253320.P7724520972619163743

/-!
# A253321: Number of (n+1)X(3+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253321, there is no canonical definition to state claims against.
-/

/-! ## A253321.P8501736179398015534

`A253326(∑[n+3]+1)`
-/

namespace A253321.P8501736179398015534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253321.P8501736179398015534

/-! ## A253321.P3994402795145308354

`A253326(Δ[A008778(n)])+C(n, 64)`
-/

namespace A253321.P3994402795145308354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (f1 (n + 1) - f1 n).toNat + (Nat.choose n 64 : ℤ)

end

end A253321.P3994402795145308354

/-! ## A253321.P11853643131920506001

`and(log2(1/2), A253326(A034856(n+2)))`
-/

namespace A253321.P11853643131920506001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A253326 (A034856 (n + 2)).toNat)

end

end A253321.P11853643131920506001

/-! ## A253321.P8948584535677086595

`(A000041(n)%2)!*A253326(A034856(n+2))`
-/

namespace A253321.P8948584535677086595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A253326 (A034856 (n + 2)).toNat

end

end A253321.P8948584535677086595

/-! ## A253321.P10536242204374098010

`A253326(Δ[A008778(n)])+A008683(4*(n+1))`
-/

namespace A253321.P10536242204374098010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A253321.P10536242204374098010

/-!
# A253322: Number of (n+1)X(4+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253322, there is no canonical definition to state claims against.
-/

/-! ## A253322.P15580583188338777203

`A253326(∑[n+4]+3)`
-/

namespace A253322.P15580583188338777203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253322.P15580583188338777203

/-! ## A253322.P12389123136239656200

`A253326(A141214(n+1))%A204038(n+1)`
-/

namespace A253322.P12389123136239656200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253326 (A141214 (n + 1)).toNat) (A204038 (n + 1))

end

end A253322.P12389123136239656200

/-! ## A253322.P1169239193194415611

`record[A253326(A141214(val(n+1, 2)+1))]`
-/

namespace A253322.P1169239193194415611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253322.P1169239193194415611

/-!
# A253323: Number of (n+1)X(5+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253323, there is no canonical definition to state claims against.
-/

/-! ## A253323.P14882465830294699982

`A253326(∑[n+5]+6)`
-/

namespace A253323.P14882465830294699982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253323.P14882465830294699982

/-! ## A253323.P11622027770244276261

`A253326(Δ[A023545(n+1)])*A284562(n)`
-/

namespace A253323.P11622027770244276261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (f1 (n + 1) - f1 n).toNat * A284562 n

end

end A253323.P11622027770244276261

/-! ## A253323.P1382349512479199340

`A253326(A046691(n+3))%A235411(n+1)`
-/

namespace A253323.P1382349512479199340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253326 (A046691 (n + 3)).toNat) (A235411 (n + 1))

end

end A253323.P1382349512479199340

/-!
# A253324: Number of (n+1)X(6+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253324, there is no canonical definition to state claims against.
-/

/-! ## A253324.P17379854562568371635

`A253326(A052905(n+3))`
-/

namespace A253324.P17379854562568371635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A052905 (n + 3)).toNat

end

end A253324.P17379854562568371635

/-! ## A253324.P7085404909563473805

`A253326(A056119(n)+16)`
-/

namespace A253324.P7085404909563473805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A056119 n + 16).toNat

end

end A253324.P7085404909563473805

/-! ## A253324.P3882861907370494782

`A253326(eq[3, A219347(n)])`
-/

namespace A253324.P3882861907370494782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253324.P3882861907370494782

/-! ## A253324.P16918404976159078036

`A253326(eq[5, A193592(n)])`
-/

namespace A253324.P16918404976159078036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253324.P16918404976159078036

/-! ## A253324.P17333636203699158420

`A253326(eq[8, A258709(n)])`
-/

namespace A253324.P17333636203699158420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253324.P17333636203699158420

/-!
# A253325: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253325, there is no canonical definition to state claims against.
-/

/-! ## A253325.P9823998910929004913

`A253326(A055999(n+4))`
-/

namespace A253325.P9823998910929004913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A055999 (n + 4)).toNat

end

end A253325.P9823998910929004913

/-! ## A253325.P12800862463918578985

`A253326(eq[4, A219347(n)])`
-/

namespace A253325.P12800862463918578985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253325.P12800862463918578985

/-! ## A253325.P236630053449436844

`A253326(eq[6, A193592(n)])`
-/

namespace A253325.P236630053449436844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253325.P236630053449436844

/-! ## A253325.P9027799419951746690

`A253326(Δ[A023551(n+2)])`
-/

namespace A253325.P9027799419951746690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (f1 (n + 1) - f1 n).toNat

end

end A253325.P9027799419951746690

/-! ## A253325.P1224550169051281701

`A253326(A052905(n+4)-1)`
-/

namespace A253325.P1224550169051281701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A052905 (n + 4) - 1).toNat

end

end A253325.P1224550169051281701

/-!
# A253326: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253326, there is no canonical definition to state claims against.
-/

/-! ## A253326.P5722687731011593426

`A238255(n+1)-A036869(A257617(n))`
-/

namespace A253326.P5722687731011593426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (n + 1) - A036869 (A257617 n).toNat

end

end A253326.P5722687731011593426

/-!
# A253327: Number of (2+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253327, there is no canonical definition to state claims against.
-/

/-! ## A253327.P15958954288141412782

`A253326(∑[n+1]+2)`
-/

namespace A253327.P15958954288141412782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253327.P15958954288141412782

/-! ## A253327.P3001838422104567306

`record[A253326(A114091(n+1)+1)]`
-/

namespace A253327.P3001838422104567306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253327.P3001838422104567306

/-! ## A253327.P16193085566027450298

`record[A253326(A286157(n+1)+2)]`
-/

namespace A253327.P16193085566027450298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253327.P16193085566027450298

/-! ## A253327.P15524694883849397680

`record[A253326(A286158(n+1)+2)]`
-/

namespace A253327.P15524694883849397680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253327.P15524694883849397680

/-! ## A253327.P13151618498122874048

`or(char[2], A253326(A133263(n+1)))`
-/

namespace A253327.P13151618498122874048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253326 (A133263 (n + 1)).toNat)

end

end A253327.P13151618498122874048

/-!
# A253328: Number of (3+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253328, there is no canonical definition to state claims against.
-/

/-! ## A253328.P6299867386483254064

`A253326(∑[n+2]+4)`
-/

namespace A253328.P6299867386483254064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253328.P6299867386483254064

/-! ## A253328.P3903761639797213322

`record[A253326(A286158(n+1)+3)]`
-/

namespace A253328.P3903761639797213322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A286158 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253328.P3903761639797213322

/-! ## A253328.P3256884733451076368

`or(char[1], A253326(A167614(n+1)))`
-/

namespace A253328.P3256884733451076368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253326 (A167614 (n + 1)).toNat)

end

end A253328.P3256884733451076368

/-! ## A253328.P16514325017211287456

`or(char[1], A253326(A046691(n)+7))`
-/

namespace A253328.P16514325017211287456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253326 (A046691 n + 7).toNat)

end

end A253328.P16514325017211287456

/-! ## A253328.P17885394108018729736

`record[gcd(A025581(n), A253326(n+4))]`
-/

namespace A253328.P17885394108018729736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A253326 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253328.P17885394108018729736

/-!
# A253329: Number of (4+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253329, there is no canonical definition to state claims against.
-/

/-! ## A253329.P3785771133695914655

`A253326(∑[n+3]+7)`
-/

namespace A253329.P3785771133695914655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253329.P3785771133695914655

/-! ## A253329.P12238855618644325177

`record[A253326(A198467(n+1)+4)]`
-/

namespace A253329.P12238855618644325177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A198467 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253329.P12238855618644325177

/-!
# A253330: Number of (5+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253330, there is no canonical definition to state claims against.
-/

/-! ## A253330.P4391566354150705939

`A253326(∑[n+4]+11)`
-/

namespace A253330.P4391566354150705939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253330.P4391566354150705939

/-! ## A253330.P5010964703288315066

`abs(1-A253326(A167499(n+3)))+1`
-/

namespace A253330.P5010964703288315066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A253326 (A167499 (n + 3)).toNat| + 1

end

end A253330.P5010964703288315066

/-! ## A253330.P2768551521774515235

`A322437(n+1)+A253326(A167499(n+3))`
-/

namespace A253330.P2768551521774515235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (n + 1) + A253326 (A167499 (n + 3)).toNat

end

end A253330.P2768551521774515235

/-! ## A253330.P2883503776716844695

`A253326(A167499(n+3))*A369162(n+1)`
-/

namespace A253330.P2883503776716844695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A167499 (n + 3)).toNat * A369162 (n + 1)

end

end A253330.P2883503776716844695

/-!
# A253331: Number of (6+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253331, there is no canonical definition to state claims against.
-/

/-! ## A253331.P17569304182866722164

`A253326(A056115(n)+21)`
-/

namespace A253331.P17569304182866722164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A056115 n + 21).toNat

end

end A253331.P17569304182866722164

/-! ## A253331.P4534613008094171672

`A253326(A167499(n+4)+1)`
-/

namespace A253331.P4534613008094171672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A167499 (n + 4) + 1).toNat

end

end A253331.P4534613008094171672

/-! ## A253331.P9975589124948848466

`A253326(A167614(n+4)+3)`
-/

namespace A253331.P9975589124948848466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A167614 (n + 4) + 3).toNat

end

end A253331.P9975589124948848466

/-! ## A253331.P11710075015149946474

`A253326(A000124(n+5)+5)`
-/

namespace A253331.P11710075015149946474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A000124 (n + 5) + 5).toNat

end

end A253331.P11710075015149946474

/-! ## A253331.P15444959866590144255

`A253326(A000217(n+5)+6)`
-/

namespace A253331.P15444959866590144255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A000217 (n + 5) + 6).toNat

end

end A253331.P15444959866590144255

/-!
# A253332: Number of (7+1)X(n+1) 0..1 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253332, there is no canonical definition to state claims against.
-/

/-! ## A253332.P7813024366435258652

`A253326(A056119(n)+28)`
-/

namespace A253332.P7813024366435258652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A056119 n + 28).toNat

end

end A253332.P7813024366435258652

/-! ## A253332.P7051596791835676742

`A253326(eq[11, A066657(n)])`
-/

namespace A253332.P7051596791835676742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253332.P7051596791835676742

/-! ## A253332.P5156903671320804515

`A253326(A000124(n+6)+6)`
-/

namespace A253332.P5156903671320804515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A000124 (n + 6) + 6).toNat

end

end A253332.P5156903671320804515

/-! ## A253332.P1152716655848371654

`A253326(A000096(n+5)+8)`
-/

namespace A253332.P1152716655848371654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A000096 (n + 5) + 8).toNat

end

end A253332.P1152716655848371654

/-! ## A253332.P4279835388882569266

`A253326(A000217(n+6)+7)`
-/

namespace A253332.P4279835388882569266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A000217 (n + 6) + 7).toNat

end

end A253332.P4279835388882569266

/-!
# A253333: Primes in the 7th-order Fibonacci numbers A060455.

The programs for A253333, there is no canonical definition to state claims against.
-/

/-! ## A253333.P7874145455232415280

`A060455(A253318(n+1))`
-/

namespace A253333.P7874145455232415280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 (A253318 (n + 1)).toNat

end

end A253333.P7874145455232415280

/-! ## A253333.P2599280829445414182

`p?[A060455(n)]`
-/

namespace A253333.P2599280829445414182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253333.P2599280829445414182

/-! ## A253333.P10175297092363574758

`p?[6*A172317(n)+1]`
-/

namespace A253333.P10175297092363574758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A172317 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253333.P10175297092363574758

/-! ## A253333.P3750019761619698179

`p?[∑[6*A122189(n)]+1]`
-/

namespace A253333.P3750019761619698179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253333.P3750019761619698179

/-!
# A253334: Number of (n+2)X(n+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253334, there is no canonical definition to state claims against.
-/

/-! ## A253334.P11518571928228103604

`A253342(∑[4*n]+1)`
-/

namespace A253334.P11518571928228103604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253334.P11518571928228103604

/-! ## A253334.P15017799887552213747

`record[A003982(n)*A253342(n+1)]`
-/

namespace A253334.P15017799887552213747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253334.P15017799887552213747

/-! ## A253334.P3782138484656234924

`record[gcd(A114327(n), A253342(n+1))]`
-/

namespace A253334.P3782138484656234924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253334.P3782138484656234924

/-! ## A253334.P2671898100735378113

`A007318(C(2, n))*A253342(A001844(n))`
-/

namespace A253334.P2671898100735378113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253342 (A001844 n).toNat

end

end A253334.P2671898100735378113

/-! ## A253334.P14501823974641110828

`(A000041(n)%2)!*A253342(A001844(n))`
-/

namespace A253334.P14501823974641110828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A253342 (A001844 n).toNat

end

end A253334.P14501823974641110828

/-!
# A253335: Number of (n+2)X(1+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253335, there is no canonical definition to state claims against.
-/

/-! ## A253335.P461869658769709916

`A253342(∑[n]+1)`
-/

namespace A253335.P461869658769709916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253335.P461869658769709916

/-! ## A253335.P16132385430559136349

`record[A010054(n)*A253342(n+1)]`
-/

namespace A253335.P16132385430559136349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253335.P16132385430559136349

/-! ## A253335.P7869906331822799084

`record[root(A253342(n+1), A013610(n))]`
-/

namespace A253335.P7869906331822799084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253342 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253335.P7869906331822799084

/-! ## A253335.P1927702704526116360

`record[root(A253342(n+1), A074909(n))]`
-/

namespace A253335.P1927702704526116360
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253342 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253335.P1927702704526116360

/-! ## A253335.P2428690357838548269

`record[gcd(A002262(n), A253342(n+1))]`
-/

namespace A253335.P2428690357838548269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253335.P2428690357838548269

/-!
# A253336: Number of (n+2)X(2+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253336, there is no canonical definition to state claims against.
-/

/-! ## A253336.P27177277666374231

`A253342(∑[n+1]+2)`
-/

namespace A253336.P27177277666374231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253336.P27177277666374231

/-! ## A253336.P12067118765651978949

`record[A010054(n)*A253342(n+2)]`
-/

namespace A253336.P12067118765651978949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253336.P12067118765651978949

/-! ## A253336.P10637345469056693902

`record[root(A253342(n+2), A013610(n))]`
-/

namespace A253336.P10637345469056693902
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253342 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253336.P10637345469056693902

/-! ## A253336.P9149160672194478171

`record[root(A253342(n+2), A074909(n))]`
-/

namespace A253336.P9149160672194478171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253342 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253336.P9149160672194478171

/-! ## A253336.P9621044785211560491

`record[gcd(A002262(n), A253342(n+2))]`
-/

namespace A253336.P9621044785211560491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253342 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253336.P9621044785211560491

/-!
# A253337: Number of (n+2)X(3+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253337, there is no canonical definition to state claims against.
-/

/-! ## A253337.P1983768951394592809

`A253342(∑[n+2]+4)`
-/

namespace A253337.P1983768951394592809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253337.P1983768951394592809

/-! ## A253337.P12867242308579927569

`A253342(A167614(n+1))+A235145(n)`
-/

namespace A253337.P12867242308579927569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A167614 (n + 1)).toNat + A235145 n

end

end A253337.P12867242308579927569

/-! ## A253337.P10486551284674291511

`lcm(A033999(n), A253342(A167614(n+1)))`
-/

namespace A253337.P10486551284674291511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253342 (A167614 (n + 1)).toNat)

end

end A253337.P10486551284674291511

/-! ## A253337.P4657077570460474420

`A253342(A167614(n+1))+A072325(n+2)`
-/

namespace A253337.P4657077570460474420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A167614 (n + 1)).toNat + A072325 (n + 2)

end

end A253337.P4657077570460474420

/-! ## A253337.P12375721943393333541

`A253342(A167614(n+1))%A209596(n+1)`
-/

namespace A253337.P12375721943393333541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253342 (A167614 (n + 1)).toNat) (A209596 (n + 1))

end

end A253337.P12375721943393333541

/-!
# A253338: Number of (n+2)X(4+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253338, there is no canonical definition to state claims against.
-/

/-! ## A253338.P15478330820910497472

`A253342(A374004(n+1))`
-/

namespace A253338.P15478330820910497472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A374004 (n + 1)).toNat

end

end A253338.P15478330820910497472

/-! ## A253338.P2582221783277448626

`A253342(A145018(n+4))`
-/

namespace A253338.P2582221783277448626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A145018 (n + 4)).toNat

end

end A253338.P2582221783277448626

/-! ## A253338.P14772532027869320448

`A253342(A141214(n)+7)`
-/

namespace A253338.P14772532027869320448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A141214 n + 7).toNat

end

end A253338.P14772532027869320448

/-! ## A253338.P4995680748517189556

`A253342(A167614(n+2)+1)`
-/

namespace A253338.P4995680748517189556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A167614 (n + 2) + 1).toNat

end

end A253338.P4995680748517189556

/-! ## A253338.P610964899027983500

`A253342(A000217(n+3)+4)`
-/

namespace A253338.P610964899027983500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A000217 (n + 3) + 4).toNat

end

end A253338.P610964899027983500

/-!
# A253339: Number of (n+2)X(5+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253339, there is no canonical definition to state claims against.
-/

/-! ## A253339.P6677478305025018313

`A253342(A374005(n+1))`
-/

namespace A253339.P6677478305025018313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A374005 (n + 1)).toNat

end

end A253339.P6677478305025018313

/-! ## A253339.P5379095724610825914

`A253342(A167499(n+3))`
-/

namespace A253339.P5379095724610825914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A167499 (n + 3)).toNat

end

end A253339.P5379095724610825914

/-! ## A253339.P6087804586225301707

`A253342(A155212(n)+13)`
-/

namespace A253339.P6087804586225301707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A155212 n + 13).toNat

end

end A253339.P6087804586225301707

/-! ## A253339.P14089006942204740497

`A253342(eq[6, A131818(n+1)])`
-/

namespace A253339.P14089006942204740497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253339.P14089006942204740497

/-! ## A253339.P9508505235591588655

`A253342(Δ[A264443(n)])`
-/

namespace A253339.P9508505235591588655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (f1 (n + 1) - f1 n).toNat

end

end A253339.P9508505235591588655

/-!
# A253340: Number of (n+2)X(6+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253340, there is no canonical definition to state claims against.
-/

/-! ## A253340.P7947600855102686599

`A253342(A374007(n+1))`
-/

namespace A253340.P7947600855102686599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A374007 (n + 1)).toNat

end

end A253340.P7947600855102686599

/-! ## A253340.P2440301030892842718

`A253342(A000217(n+5)+6)`
-/

namespace A253340.P2440301030892842718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A000217 (n + 5) + 6).toNat

end

end A253340.P2440301030892842718

/-! ## A253340.P6630096200188355926

`A253342(eq[7, A131818(n+1)])`
-/

namespace A253340.P6630096200188355926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253340.P6630096200188355926

/-! ## A253340.P17719114309916351784

`A253342(A052905(n+3))`
-/

namespace A253340.P17719114309916351784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A052905 (n + 3)).toNat

end

end A253340.P17719114309916351784

/-! ## A253340.P13004904506264383820

`A253342(A056119(n)+16)`
-/

namespace A253340.P13004904506264383820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A056119 n + 16).toNat

end

end A253340.P13004904506264383820

/-!
# A253341: Number of (n+2)X(7+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 3, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253341, there is no canonical definition to state claims against.
-/

/-! ## A253341.P5928589525771727379

`A253342(A374008(n+1))`
-/

namespace A253341.P5928589525771727379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A374008 (n + 1)).toNat

end

end A253341.P5928589525771727379

/-! ## A253341.P9474663097467685380

`A253342(A000217(n+6)+7)`
-/

namespace A253341.P9474663097467685380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (A000217 (n + 6) + 7).toNat

end

end A253341.P9474663097467685380

/-! ## A253341.P7519089321219453802

`A253342(eq[8, A131818(n+1)])`
-/

namespace A253341.P7519089321219453802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253341.P7519089321219453802

/-! ## A253341.P16560379429054080868

`A253342(eq[4, A219347(n)])`
-/

namespace A253341.P16560379429054080868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253341.P16560379429054080868

/-! ## A253341.P2070706633635372172

`A253342(eq[6, A193592(n)])`
-/

namespace A253341.P2070706633635372172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253341.P2070706633635372172

/-!
# A253343: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253343, there is no canonical definition to state claims against.
-/

/-! ## A253343.P9142901716054821085

`A253350(∑[4*n]+1)`
-/

namespace A253343.P9142901716054821085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253343.P9142901716054821085

/-! ## A253343.P17945329658714130913

`record[A253350(A194280(2*n+1))]`
-/

namespace A253343.P17945329658714130913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A194280 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253343.P17945329658714130913

/-! ## A253343.P8646074253280672630

`record[A003982(n)*A253350(n+1)]`
-/

namespace A253343.P8646074253280672630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253343.P8646074253280672630

/-! ## A253343.P17531447168766269117

`record[gcd(A214292(n), A253350(n+1))]`
-/

namespace A253343.P17531447168766269117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A253350 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253343.P17531447168766269117

/-! ## A253343.P3041103799251041164

`A253350(A001844(n))+A025442(n)`
-/

namespace A253343.P3041103799251041164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A001844 n).toNat + A025442 n

end

end A253343.P3041103799251041164

/-!
# A253344: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253344, there is no canonical definition to state claims against.
-/

/-! ## A253344.P7370514389601715146

`A253350(∑[n+2])`
-/

namespace A253344.P7370514389601715146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253344.P7370514389601715146

/-! ## A253344.P12963090775070345198

`record[A253350(A000096(A263111(n)))]`
-/

namespace A253344.P12963090775070345198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000096 (A263111 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253344.P12963090775070345198

/-! ## A253344.P3319765052298817969

`record[A253350(A000096(A033676(n+1)))]`
-/

namespace A253344.P3319765052298817969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000096 (A033676 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253344.P3319765052298817969

/-! ## A253344.P15751036808831119993

`record[A253350(A000096(A349520(n+1)))]`
-/

namespace A253344.P15751036808831119993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000096 (A349520 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253344.P15751036808831119993

/-! ## A253344.P1084183787267400061

`A253350(A000096(n+1))+A000035(2*n)`
-/

namespace A253344.P1084183787267400061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A253344.P1084183787267400061

/-!
# A253345: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253345, there is no canonical definition to state claims against.
-/

/-! ## A253345.P6833780757507620791

`A253350(∑[n+3]+1)`
-/

namespace A253345.P6833780757507620791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253345.P6833780757507620791

/-!
# A253346: Number of (n+1) X (4+1) 0..1 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253346, there is no canonical definition to state claims against.
-/

/-! ## A253346.P8649164322844362407

`A253350(A141214(n+1))`
-/

namespace A253346.P8649164322844362407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A141214 (n + 1)).toNat

end

end A253346.P8649164322844362407

/-! ## A253346.P4200296968202207049

`A253350(A027379(n+2))`
-/

namespace A253346.P4200296968202207049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A027379 (n + 2)).toNat

end

end A253346.P4200296968202207049

/-! ## A253346.P6093821122982187203

`A253350(A055998(n+2))`
-/

namespace A253346.P6093821122982187203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A055998 (n + 2)).toNat

end

end A253346.P6093821122982187203

/-! ## A253346.P13768464024545084521

`A253350(A056000(n)+7)`
-/

namespace A253346.P13768464024545084521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A056000 n + 7).toNat

end

end A253346.P13768464024545084521

/-! ## A253346.P1113440928450373166

`A253350(A052905(n+1)+2)`
-/

namespace A253346.P1113440928450373166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A052905 (n + 1) + 2).toNat

end

end A253346.P1113440928450373166

/-!
# A253347: Number of (n+1)X(5+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253347, there is no canonical definition to state claims against.
-/

/-! ## A253347.P4909487612947104143

`A253350(Δ[A264443(n)])`
-/

namespace A253347.P4909487612947104143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (f1 (n + 1) - f1 n).toNat

end

end A253347.P4909487612947104143

/-! ## A253347.P1851734786842964181

`A253350(A046691(n+3))`
-/

namespace A253347.P1851734786842964181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A046691 (n + 3)).toNat

end

end A253347.P1851734786842964181

/-! ## A253347.P16815013338125033099

`A253350(eq[4, A193592(n)])`
-/

namespace A253347.P16815013338125033099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253347.P16815013338125033099

/-! ## A253347.P1386239744604939392

`A253350(Δ[A023545(n+1)])`
-/

namespace A253347.P1386239744604939392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (f1 (n + 1) - f1 n).toNat

end

end A253347.P1386239744604939392

/-! ## A253347.P17256614823806616992

`A253350(eq[6, A185782(n+1)])`
-/

namespace A253347.P17256614823806616992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253347.P17256614823806616992

/-!
# A253348: Number of (n+1)X(6+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253348, there is no canonical definition to state claims against.
-/

/-! ## A253348.P15481178800620525912

`A253350(A052905(n+3))`
-/

namespace A253348.P15481178800620525912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A052905 (n + 3)).toNat

end

end A253348.P15481178800620525912

/-! ## A253348.P13686590931385014828

`A253350(eq[3, A219347(n)])`
-/

namespace A253348.P13686590931385014828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253348.P13686590931385014828

/-! ## A253348.P11551655368203584298

`A253350(eq[5, A193592(n)])`
-/

namespace A253348.P11551655368203584298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253348.P11551655368203584298

/-! ## A253348.P18100399360028729931

`A253350(eq[8, A185782(n+1)])`
-/

namespace A253348.P18100399360028729931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253348.P18100399360028729931

/-! ## A253348.P1548376775953751074

`A253350(eq[8, A243070(n+1)])`
-/

namespace A253348.P1548376775953751074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253348.P1548376775953751074

/-!
# A253349: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253349, there is no canonical definition to state claims against.
-/

/-! ## A253349.P7522274685899094818

`A253350(A055999(n+4))`
-/

namespace A253349.P7522274685899094818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A055999 (n + 4)).toNat

end

end A253349.P7522274685899094818

/-! ## A253349.P15868019702080261396

`A253350(eq[4, A219347(n)])`
-/

namespace A253349.P15868019702080261396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253349.P15868019702080261396

/-! ## A253349.P15309452705630090034

`A253350(eq[6, A193592(n)])`
-/

namespace A253349.P15309452705630090034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253349.P15309452705630090034

/-! ## A253349.P8773780153453284921

`A253350(eq[10, A185782(n+1)])`
-/

namespace A253349.P8773780153453284921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253349.P8773780153453284921

/-! ## A253349.P6539897279006661320

`A253350(eq[7, A200370(n+1)])`
-/

namespace A253349.P6539897279006661320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253349.P6539897279006661320

/-!
# A253350: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253350, there is no canonical definition to state claims against.
-/

/-! ## A253350.P5863376528868012228

`A204616(n+1)+A111813(A000051(n))`
-/

namespace A253350.P5863376528868012228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (n + 1) + A111813 (A000051 n).toNat

end

end A253350.P5863376528868012228

/-! ## A253350.P9091436853667954235

`A297323(A153354(n))+A204616(n+1)`
-/

namespace A253350.P9091436853667954235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A153354 n).toNat + A204616 (n + 1)

end

end A253350.P9091436853667954235

/-! ## A253350.P9696249393870608960

`A204616(n+1)-A080224(A125145(n))`
-/

namespace A253350.P9696249393870608960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (n + 1) - A080224 (A125145 n).toNat

end

end A253350.P9696249393870608960

/-!
# A253351: Number of (2+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253351, there is no canonical definition to state claims against.
-/

/-! ## A253351.P7422217368182369150

`A253350(∑[n+1]+2)`
-/

namespace A253351.P7422217368182369150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253351.P7422217368182369150

/-! ## A253351.P3740506766993125409

`record[root(A253350(n+2), A145111(n))]`
-/

namespace A253351.P3740506766993125409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253350 (n + 2) : ℝ) ^ (1 / (A145111 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253351.P3740506766993125409

/-! ## A253351.P5284758526560927578

`record[gcd(A002262(n), A253350(n+2))]`
-/

namespace A253351.P5284758526560927578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253350 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253351.P5284758526560927578

/-! ## A253351.P6718146521042309308

`record[A073424(n+1)*A253350(n+3)]`
-/

namespace A253351.P6718146521042309308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) * A253350 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253351.P6718146521042309308

/-!
# A253352: Number of (3+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253352, there is no canonical definition to state claims against.
-/

/-! ## A253352.P4029890216335285182

`A253350(∑[n+2]+4)`
-/

namespace A253352.P4029890216335285182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253352.P4029890216335285182

/-! ## A253352.P14982422661432950468

`or(floor(acot(n)), A253350(A167614(n+1)))`
-/

namespace A253352.P14982422661432950468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A253350 (A167614 (n + 1)).toNat)

end

end A253352.P14982422661432950468

/-! ## A253352.P889521601732137298

`A253350(A167614(n+1))+A025444(n)`
-/

namespace A253352.P889521601732137298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167614 (n + 1)).toNat + A025444 n

end

end A253352.P889521601732137298

/-! ## A253352.P794526073426442063

`A253350(A167614(n+1))+A178798(n)`
-/

namespace A253352.P794526073426442063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167614 (n + 1)).toNat + A178798 n

end

end A253352.P794526073426442063

/-! ## A253352.P3840597871948829696

`A253350(A167614(n+1))+A185284(n)`
-/

namespace A253352.P3840597871948829696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167614 (n + 1)).toNat + A185284 n

end

end A253352.P3840597871948829696

/-!
# A253353: Number of (4+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253353, there is no canonical definition to state claims against.
-/

/-! ## A253353.P4357983810233341773

`A253350(A141214(n)+7)`
-/

namespace A253353.P4357983810233341773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A141214 n + 7).toNat

end

end A253353.P4357983810233341773

/-! ## A253353.P5235367030515768427

`A253350(A052905(n)+9)`
-/

namespace A253353.P5235367030515768427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A052905 n + 9).toNat

end

end A253353.P5235367030515768427

/-! ## A253353.P16640905238571998083

`A253350(A055999(n)+10)`
-/

namespace A253353.P16640905238571998083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A055999 n + 10).toNat

end

end A253353.P16640905238571998083

/-! ## A253353.P2764633508690000559

`A253350(A167614(n+2)+1)`
-/

namespace A253353.P2764633508690000559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167614 (n + 2) + 1).toNat

end

end A253353.P2764633508690000559

/-! ## A253353.P16444166429808319737

`A253350(A167499(n+2)-1)`
-/

namespace A253353.P16444166429808319737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167499 (n + 2) - 1).toNat

end

end A253353.P16444166429808319737

/-!
# A253354: Number of (5+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253354, there is no canonical definition to state claims against.
-/

/-! ## A253354.P13132176536115875174

`A253350(∑[n+4]+11)`
-/

namespace A253354.P13132176536115875174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253354.P13132176536115875174

/-! ## A253354.P5536022097961910856

`A253350(A167499(n+3))%A204614(n+1)`
-/

namespace A253354.P5536022097961910856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253350 (A167499 (n + 3)).toNat) (A204614 (n + 1))

end

end A253354.P5536022097961910856

/-! ## A253354.P2792709718326484981

`A253350(A167499(n+3))%A125145(A167499(n))`
-/

namespace A253354.P2792709718326484981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253350 (A167499 (n + 3)).toNat) (A125145 (A167499 n).toNat)

end

end A253354.P2792709718326484981

/-!
# A253355: Number of (6+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253355, there is no canonical definition to state claims against.
-/

/-! ## A253355.P7350100063290163535

`A253350(A166136(n+4))`
-/

namespace A253355.P7350100063290163535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A166136 (n + 4)).toNat

end

end A253355.P7350100063290163535

/-! ## A253355.P2122610413820668191

`A253350(A167499(n+4)+1)`
-/

namespace A253355.P2122610413820668191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167499 (n + 4) + 1).toNat

end

end A253355.P2122610413820668191

/-! ## A253355.P10939581798180629228

`A253350(A000096(n+4)+7)`
-/

namespace A253355.P10939581798180629228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000096 (n + 4) + 7).toNat

end

end A253355.P10939581798180629228

/-! ## A253355.P12909112109460668335

`A253350(A246172(n+1)+20)`
-/

namespace A253355.P12909112109460668335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A246172 (n + 1) + 20).toNat

end

end A253355.P12909112109460668335

/-! ## A253355.P8622716027143369650

`A253350(eq[7, A131818(n+1)])`
-/

namespace A253355.P8622716027143369650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253355.P8622716027143369650

/-!
# A253356: Number of (7+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253356, there is no canonical definition to state claims against.
-/

/-! ## A253356.P698330105336453425

`A253350(eq[11, A066657(n)])`
-/

namespace A253356.P698330105336453425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253356.P698330105336453425

/-! ## A253356.P1022684261612121163

`A253350(A167499(n+5)+2)`
-/

namespace A253356.P1022684261612121163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A167499 (n + 5) + 2).toNat

end

end A253356.P1022684261612121163

/-! ## A253356.P17054818362174529615

`A253350(A000096(n+5)+8)`
-/

namespace A253356.P17054818362174529615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000096 (n + 5) + 8).toNat

end

end A253356.P17054818362174529615

/-! ## A253356.P8694208524357772235

`A253350(A000217(n+6)+7)`
-/

namespace A253356.P8694208524357772235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (A000217 (n + 6) + 7).toNat

end

end A253356.P8694208524357772235

/-! ## A253356.P8864682933668817756

`A253350(eq[8, A131818(n+1)])`
-/

namespace A253356.P8864682933668817756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253356.P8864682933668817756

/-!
# A253359: Number of (n+2)X(n+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253359, there is no canonical definition to state claims against.
-/

/-! ## A253359.P8138185352476190799

`A253367((n+1)²+n²)`
-/

namespace A253359.P8138185352476190799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 ((n + 1) ^ 2 + n ^ 2)

end

end A253359.P8138185352476190799

/-! ## A253359.P6853540532025571149

`lcm(2, A253367(A001844(n)))`
-/

namespace A253359.P6853540532025571149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253367 (A001844 n).toNat)

end

end A253359.P6853540532025571149

/-! ## A253359.P2407012555846667912

`record[A003982(n)*A253367(n+1)]`
-/

namespace A253359.P2407012555846667912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253359.P2407012555846667912

/-! ## A253359.P15252511954324157694

`record[gcd(A114327(n), A253367(n+1))]`
-/

namespace A253359.P15252511954324157694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253367 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253359.P15252511954324157694

/-! ## A253359.P13492656553705229939

`A253367(A001844(n))+A185284(n)`
-/

namespace A253359.P13492656553705229939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A001844 n).toNat + A185284 n

end

end A253359.P13492656553705229939

/-!
# A253360: Number of (n+2) X (1+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253360, there is no canonical definition to state claims against.
-/

/-! ## A253360.P3163422509153592312

`A253367(∑[n]+1)`
-/

namespace A253360.P3163422509153592312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253360.P3163422509153592312

/-! ## A253360.P15892636504032827737

`lcm(2, A253367(A000124(n)))`
-/

namespace A253360.P15892636504032827737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253367 (A000124 n).toNat)

end

end A253360.P15892636504032827737

/-! ## A253360.P9416536879503453690

`record[gcd(A002262(n), A253367(n+1))]`
-/

namespace A253360.P9416536879503453690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253367 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253360.P9416536879503453690

/-! ## A253360.P14092659777286609426

`A008683(A002146(n))²*A253367(A000124(n))`
-/

namespace A253360.P14092659777286609426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat ^ 2 * A253367 (A000124 n).toNat

end

end A253360.P14092659777286609426

/-! ## A253360.P13136298724220561829

`A001222(A077321(n+1))*A253367(A000124(n))`
-/

namespace A253360.P13136298724220561829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077321 (n + 1)).toNat * A253367 (A000124 n).toNat

end

end A253360.P13136298724220561829

/-!
# A253361: Number of (n+2) X (2+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253361, there is no canonical definition to state claims against.
-/

/-! ## A253361.P1799265897284128325

`A253367(∑[n+1]+2)`
-/

namespace A253361.P1799265897284128325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253361.P1799265897284128325

/-! ## A253361.P11668103835451236478

`record[gcd(A002262(n), A253367(n+2))]`
-/

namespace A253361.P11668103835451236478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253367 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253361.P11668103835451236478

/-! ## A253361.P10511391462774545615

`and(-(∏{digits}[n, #]+1), A253367(A000096(n+1)))`
-/

namespace A253361.P10511391462774545615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + 1 : ℕ) : ℤ)) (A253367 (A000096 (n + 1)).toNat)

end

end A253361.P10511391462774545615

/-! ## A253361.P12389697249345852500

`record[A253367(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A253361.P12389697249345852500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253361.P12389697249345852500

/-! ## A253361.P18330709256466500734

`A253367(A000096(n+1))*A304042(n)`
-/

namespace A253361.P18330709256466500734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A000096 (n + 1)).toNat * A304042 n

end

end A253361.P18330709256466500734

/-!
# A253362: Number of (n+2) X (3+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253362, there is no canonical definition to state claims against.
-/

/-! ## A253362.P1097684469942032072

`A253367(∑[n+2]+4)`
-/

namespace A253362.P1097684469942032072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253362.P1097684469942032072

/-! ## A253362.P2639353611219589103

`lcm(2, A253367(A167614(n+1)))`
-/

namespace A253362.P2639353611219589103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253367 (A167614 (n + 1)).toNat)

end

end A253362.P2639353611219589103

/-! ## A253362.P1769671368101856553

`A253367(A167614(n+1))%A253364(n+3)`
-/

namespace A253362.P1769671368101856553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253367 (A167614 (n + 1)).toNat) (A253364 (n + 3))

end

end A253362.P1769671368101856553

/-! ## A253362.P16572713757397818832

`A264668(n)+A253367(A034856(n+2))`
-/

namespace A253362.P16572713757397818832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A253367 (A034856 (n + 2)).toNat

end

end A253362.P16572713757397818832

/-! ## A253362.P17558311741600754753

`A253367(A034856(n+2))%A253363(n+1)`
-/

namespace A253362.P17558311741600754753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253367 (A034856 (n + 2)).toNat) (A253363 (n + 1))

end

end A253362.P17558311741600754753

/-!
# A253363: Number of (n+2)X(4+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253363, there is no canonical definition to state claims against.
-/

/-! ## A253363.P901442564030918212

`A253367(∑[n+3]+7)`
-/

namespace A253363.P901442564030918212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253363.P901442564030918212

/-! ## A253363.P16148449263156042187

`lcm(2, A253367(A055999(n)+10))`
-/

namespace A253363.P16148449263156042187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253367 (A055999 n + 10).toNat)

end

end A253363.P16148449263156042187

/-! ## A253363.P12979871816536908421

`(xor(1, n)-n)²*A253367(Δ[A005286(n)]+5)`
-/

namespace A253363.P12979871816536908421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) ^ 2 * A253367 (f1 (n + 1) - f1 n + 5).toNat

end

end A253363.P12979871816536908421

/-! ## A253363.P8843817649272804225

`A264668(n)+A253367(Δ[A005286(n)]+5)`
-/

namespace A253363.P8843817649272804225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A253367 (f1 (n + 1) - f1 n + 5).toNat

end

end A253363.P8843817649272804225

/-! ## A253363.P1844607692899268695

`A253367(A055999(n)+10)%A253364(n+1)`
-/

namespace A253363.P1844607692899268695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253367 (A055999 n + 10).toNat) (A253364 (n + 1))

end

end A253363.P1844607692899268695

/-!
# A253364: Number of (n+2)X(5+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253364, there is no canonical definition to state claims against.
-/

/-! ## A253364.P985310286869090674

`A253367(A167499(n+3))`
-/

namespace A253364.P985310286869090674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A167499 (n + 3)).toNat

end

end A253364.P985310286869090674

/-! ## A253364.P9032714043551459932

`A253367(A155212(n)+13)`
-/

namespace A253364.P9032714043551459932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A155212 n + 13).toNat

end

end A253364.P9032714043551459932

/-! ## A253364.P16324789063991181881

`A253367(A056000(n)+15)`
-/

namespace A253364.P16324789063991181881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A056000 n + 15).toNat

end

end A253364.P16324789063991181881

/-! ## A253364.P6726053300323030174

`A253367(A055999(n+1)+11)`
-/

namespace A253364.P6726053300323030174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A055999 (n + 1) + 11).toNat

end

end A253364.P6726053300323030174

/-! ## A253364.P18006062201294813531

`A253367(A038722(Δ[A023545(n+1)]))`
-/

namespace A253364.P18006062201294813531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A253364.P18006062201294813531

/-!
# A253365: Number of (n+2)X(6+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253365, there is no canonical definition to state claims against.
-/

/-! ## A253365.P1666326577523392313

`A253367(A166136(n+4))`
-/

namespace A253365.P1666326577523392313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A166136 (n + 4)).toNat

end

end A253365.P1666326577523392313

/-! ## A253365.P3194634121670173821

`A253367(A000124(n+5)+5)`
-/

namespace A253365.P3194634121670173821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A000124 (n + 5) + 5).toNat

end

end A253365.P3194634121670173821

/-! ## A253365.P10233835870835252145

`A253367(A000217(n+5)+6)`
-/

namespace A253365.P10233835870835252145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A000217 (n + 5) + 6).toNat

end

end A253365.P10233835870835252145

/-! ## A253365.P795407903679355518

`A253367(A027379(n+5)-A317440(n+2))`
-/

namespace A253365.P795407903679355518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A027379 (n + 5) - A317440 (n + 2)).toNat

end

end A253365.P795407903679355518

/-! ## A253365.P12542793752774811119

`A253367(A374007(n+1))`
-/

namespace A253365.P12542793752774811119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A374007 (n + 1)).toNat

end

end A253365.P12542793752774811119

/-!
# A253366: Number of (n+2)X(7+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally and vertically.

The programs for A253366, there is no canonical definition to state claims against.
-/

/-! ## A253366.P6717161330539824815

`A253367(A000124(n+6)+6)`
-/

namespace A253366.P6717161330539824815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A000124 (n + 6) + 6).toNat

end

end A253366.P6717161330539824815

/-! ## A253366.P8401234620580801232

`A253367(A000217(n+6)+7)`
-/

namespace A253366.P8401234620580801232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A000217 (n + 6) + 7).toNat

end

end A253366.P8401234620580801232

/-! ## A253366.P243565643009123223

`A253367(A052905(n+3)+12)`
-/

namespace A253366.P243565643009123223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A052905 (n + 3) + 12).toNat

end

end A253366.P243565643009123223

/-! ## A253366.P13131916903951214497

`A253367(A034856(n+7)-A005843(n+3))`
-/

namespace A253366.P13131916903951214497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A034856 (n + 7) - A005843 (n + 3)).toNat

end

end A253366.P13131916903951214497

/-! ## A253366.P12716828625888878473

`A253367(A374008(n+1))`
-/

namespace A253366.P12716828625888878473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253367 (A374008 (n + 1)).toNat

end

end A253366.P12716828625888878473

/-!
# A253368: a(n) = F(12*n)/(12^2) with the Fibonacci numbers F = A000045.

The programs for A253368, the canonical program `A253368.P1095381040127585126` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253368 has offset 1).

The definition of A253368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253368.P1095381040127585126

`A000045(12*(n+1))/144`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A253368

/-- `A000045(12*(n+1))/144` -/
def P1095381040127585126.Spec : Prop :=
  ∀ n, P1095381040127585126.a n = (A253368 (n + 1) : ℚ)

end A253368

/-! ## A253368.P2847941896946593147

`A000045(12*(n+1))/12²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253368.P2847941896946593147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (12 * (n + 1)) : ℚ) / (12 ^ 2 : ℚ)

end

end A253368.P2847941896946593147

namespace A253368

/-- `A000045(12*(n+1))/12²` -/
def P2847941896946593147.Spec : Prop :=
  ∀ n, P2847941896946593147.a n = (A253368 (n + 1) : ℚ)

end A253368

/-! ## A253368.P9402793712910720701

`Δ[A298271(n)]`
-/

namespace A253368.P9402793712910720701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253368.P9402793712910720701

namespace A253368

/-- `Δ[A298271(n)]` -/
def P9402793712910720701.Spec : Prop :=
  ∀ n, P9402793712910720701.a n = A253368 (n + 1)

end A253368

/-! ## A253368.P15381501059079355136

`∑[A041769(2*n)]`
-/

namespace A253368.P15381501059079355136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041769 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253368.P15381501059079355136

namespace A253368

/-- `∑[A041769(2*n)]` -/
def P15381501059079355136.Spec : Prop :=
  ∀ n, P15381501059079355136.a n = A253368 (n + 1)

end A253368

/-! ## A253368.P17631585423564359978

`Δ[A201003(n)/36]`
-/

namespace A253368.P17631585423564359978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201003 n : ℚ) / 36

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253368.P17631585423564359978

namespace A253368

/-- `Δ[A201003(n)/36]` -/
def P17631585423564359978.Spec : Prop :=
  ∀ n, P17631585423564359978.a n = (A253368 (n + 1) : ℚ)

end A253368

/-!
# A253369: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253369, there is no canonical definition to state claims against.
-/

/-! ## A253369.P16878943815442290034

`A253375(∑[2+n])`
-/

namespace A253369.P16878943815442290034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253369.P16878943815442290034

/-! ## A253369.P15250159412815481795

`record[A253375(A101881(n)+1)]`
-/

namespace A253369.P15250159412815481795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253369.P15250159412815481795

/-! ## A253369.P10853138439336126570

`record[A253375(Δ[A003453(n+5)])]`
-/

namespace A253369.P10853138439336126570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253369.P10853138439336126570

/-! ## A253369.P2943242197347426629

`record[A253375(A198467(n+1)-1)]`
-/

namespace A253369.P2943242197347426629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A198467 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253369.P2943242197347426629

/-! ## A253369.P11343770899403772747

`record[A253375(A101881(n^(n%2)))]`
-/

namespace A253369.P11343770899403772747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A101881 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253369.P11343770899403772747

/-!
# A253370: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253370, there is no canonical definition to state claims against.
-/

/-! ## A253370.P214689521160481808

`A253375(∑[n+3]+1)`
-/

namespace A253370.P214689521160481808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253370.P214689521160481808

/-! ## A253370.P15731548188506761454

`A253375(Δ[A008778(n)])*A354601(n)`
-/

namespace A253370.P15731548188506761454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (f1 (n + 1) - f1 n).toNat * A354601 (n + 10)

end

end A253370.P15731548188506761454

/-! ## A253370.P14950922876228971944

`A253375(Δ[A008778(n)])%A253324(3*n+5)`
-/

namespace A253370.P14950922876228971944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253375 (f1 (n + 1) - f1 n).toNat) (A253324 (3 * n + 5))

end

end A253370.P14950922876228971944

/-!
# A253371: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253371, there is no canonical definition to state claims against.
-/

/-! ## A253371.P11744874753506527381

`A253375(n*(n+9)/2+7)`
-/

namespace A253371.P11744874753506527381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 9 : ℚ) / 2) + 7)).toNat

end

end A253371.P11744874753506527381

/-! ## A253371.P4043556499892204296

`record[A253375(A141214(∏{e}[n+1, #]))]`
-/

namespace A253371.P4043556499892204296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A141214 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253371.P4043556499892204296

/-! ## A253371.P17947527183899973178

`record[A253375(A141214(∑[n+1]%(n+2)))]`
-/

namespace A253371.P17947527183899973178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A141214 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253371.P17947527183899973178

/-! ## A253371.P2368939499768801329

`A253375(A141214(n+1))+A011744(n)`
-/

namespace A253371.P2368939499768801329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A141214 (n + 1)).toNat + A011744 n

end

end A253371.P2368939499768801329

/-! ## A253371.P16770550745277471923

`A253375(A141214(n+1))+A025469(n)`
-/

namespace A253371.P16770550745277471923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A141214 (n + 1)).toNat + A025469 n

end

end A253371.P16770550745277471923

/-!
# A253372: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253372, there is no canonical definition to state claims against.
-/

/-! ## A253372.P16264073213446444992

`A253375(∑[n+5]+6)`
-/

namespace A253372.P16264073213446444992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253372.P16264073213446444992

/-!
# A253373: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253373, there is no canonical definition to state claims against.
-/

/-! ## A253373.P5378726617453509778

`A253375(A052905(n+3))`
-/

namespace A253373.P5378726617453509778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A052905 (n + 3)).toNat

end

end A253373.P5378726617453509778

/-! ## A253373.P8731543282201473272

`A253375(A056119(n)+16)`
-/

namespace A253373.P8731543282201473272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A056119 n + 16).toNat

end

end A253373.P8731543282201473272

/-! ## A253373.P18118245493997366068

`A253375(eq[3, A219347(n)])`
-/

namespace A253373.P18118245493997366068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253373.P18118245493997366068

/-!
# A253374: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253374, there is no canonical definition to state claims against.
-/

/-! ## A253374.P10246465408962815671

`A253375(A055999(n+4))`
-/

namespace A253374.P10246465408962815671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A055999 (n + 4)).toNat

end

end A253374.P10246465408962815671

/-! ## A253374.P11130057549461294524

`A253375(eq[4, A219347(n)])`
-/

namespace A253374.P11130057549461294524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253374.P11130057549461294524

/-!
# A253376: Number of (2+1) X (n+1) 0..2 arrays with every 2 X 2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253376, there is no canonical definition to state claims against.
-/

/-! ## A253376.P1501110630214095583

`A253375(∑[n+1]+2)`
-/

namespace A253376.P1501110630214095583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253376.P1501110630214095583

/-! ## A253376.P11164056002100615277

`record[A253375(A286157(n+1)+2)]`
-/

namespace A253376.P11164056002100615277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253376.P11164056002100615277

/-! ## A253376.P420558707376223580

`record[A010054(n)*A253375(n+2)]`
-/

namespace A253376.P420558707376223580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253376.P420558707376223580

/-! ## A253376.P1775150980036924175

`record[root(A253375(n+2), A059575(n+1))]`
-/

namespace A253376.P1775150980036924175
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253375 (n + 2) : ℝ) ^ (1 / (A059575 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253376.P1775150980036924175

/-! ## A253376.P8667314982694163258

`record[A253375(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A253376.P8667314982694163258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253376.P8667314982694163258

/-!
# A253377: Number of (3+1)X(n+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253377, there is no canonical definition to state claims against.
-/

/-! ## A253377.P16800569704211943328

`A253375(∑[n+2]+4)`
-/

namespace A253377.P16800569704211943328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253377.P16800569704211943328

/-! ## A253377.P3203779306493095240

`record[A253375(A198467(n+1)+3)]`
-/

namespace A253377.P3203779306493095240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A198467 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253377.P3203779306493095240

/-! ## A253377.P8238549078502695292

`record[root(A253375(n+4), A110162(n))]`
-/

namespace A253377.P8238549078502695292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253375 (n + 4) : ℝ) ^ (1 / (A110162 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253377.P8238549078502695292

/-! ## A253377.P4713746358210123461

`record[root(A253375(n+4), A111418(n))]`
-/

namespace A253377.P4713746358210123461
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253375 (n + 4) : ℝ) ^ (1 / (A111418 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253377.P4713746358210123461

/-! ## A253377.P4125870510565023653

`lcm((-1)^n, A253375(A167614(n+1)))`
-/

namespace A253377.P4125870510565023653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A253375 (A167614 (n + 1)).toNat)

end

end A253377.P4125870510565023653

/-!
# A253378: Number of (4+1)X(n+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253378, there is no canonical definition to state claims against.
-/

/-! ## A253378.P9501602061646780625

`A253375(∑[n+3]+7)`
-/

namespace A253378.P9501602061646780625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253378.P9501602061646780625

/-! ## A253378.P605455315668419343

`record[A253375(A198467(n+1)+4)]`
-/

namespace A253378.P605455315668419343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A198467 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253378.P605455315668419343

/-!
# A253379: Number of (5+1)X(n+1) 0..2 arrays with every 2X2 subblock sum nondecreasing horizontally, vertically and antidiagonally ne-to-sw.

The programs for A253379, there is no canonical definition to state claims against.
-/

/-! ## A253379.P14778843010584617054

`A253375(A167499(n+3))`
-/

namespace A253379.P14778843010584617054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A167499 (n + 3)).toNat

end

end A253379.P14778843010584617054

/-! ## A253379.P7921595251837738614

`A253375(A155212(n)+13)`
-/

namespace A253379.P7921595251837738614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A155212 n + 13).toNat

end

end A253379.P7921595251837738614

/-! ## A253379.P14402958555153390946

`A253375(A056000(n)+15)`
-/

namespace A253379.P14402958555153390946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A056000 n + 15).toNat

end

end A253379.P14402958555153390946

/-! ## A253379.P1543863200219188858

`A253375(eq[7, A066657(n)])`
-/

namespace A253379.P1543863200219188858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253379.P1543863200219188858

/-! ## A253379.P7426366728241877263

`A253375(A167614(n+3)+2)`
-/

namespace A253379.P7426366728241877263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253375 (A167614 (n + 3) + 2).toNat

end

end A253379.P7426366728241877263

/-!
# A253380: Numbers k such that 17^k + 4 is prime.

The programs for A253380, there is no canonical definition to state claims against.
-/

/-! ## A253380.P1962889971527546806

`A004515(n*A003188(n)^n)`
-/

namespace A253380.P1962889971527546806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 ((n : ℤ) * A003188 n ^ n).toNat

end

end A253380.P1962889971527546806

/-!
# A253385: Numbers divisible by at least three distinct primes whose largest prime power factor is not based on its smallest nor its greatest prime factor.

The programs for A253385, there is no canonical definition to state claims against.
-/

/-! ## A253385.P9550871090461707659

`A379093(n+1)%A298911(A325865(n))`
-/

namespace A253385.P9550871090461707659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379093 (n + 1)) (A298911 (A325865 n).toNat)

end

end A253385.P9550871090461707659

/-! ## A253385.P6323892115630197712

`A379111(A005195(n+4))+A379093(n+1)`
-/

namespace A253385.P6323892115630197712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379111 (A005195 (n + 4)).toNat + A379093 (n + 1)

end

end A253385.P6323892115630197712

/-! ## A253385.P14499338786785176220

`A379093(n+1)+A010054(A379045(n+4))`
-/

namespace A253385.P14499338786785176220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379093 (n + 1) + A010054 (A379045 (n + 4)).toNat

end

end A253385.P14499338786785176220

/-! ## A253385.P9032348872963968590

`A379093(A062399(n+1))`
-/

namespace A253385.P9032348872963968590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379093 (A062399 (n + 1)).toNat

end

end A253385.P9032348872963968590

/-! ## A253385.P10370114781783552448

`A379093(A351870(n+1))`
-/

namespace A253385.P10370114781783552448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379093 (A351870 (n + 1)).toNat

end

end A253385.P10370114781783552448

/-!
# A253387: A "mod sequence" where a(n) is the eventual constant value attained by the sequence defined as b(1) = n, b(m) = (Sum_{k=1..m-1} b(k)) mod m.

The programs for A253387, there is no canonical definition to state claims against.
-/

/-! ## A253387.P4514256301575603258

`A117846(∑[log2(gcd(2, n))])`
-/

namespace A253387.P4514256301575603258
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A253387.P4514256301575603258

/-! ## A253387.P3750104012632714257

`A117846(∑[char[2*n]])`
-/

namespace A253387.P3750104012632714257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253387.P3750104012632714257

/-! ## A253387.P2233760780067273295

`and(-1, A117846(A008619(n)))`
-/

namespace A253387.P2233760780067273295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117846 (A008619 n).toNat)

end

end A253387.P2233760780067273295

/-! ## A253387.P10545096103490777444

`A117846(A008619(n))%Δ[A016947(n)]`
-/

namespace A253387.P10545096103490777444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117846 (A008619 n).toNat) (f1 (n + 1) - f1 n)

end

end A253387.P10545096103490777444

/-! ## A253387.P12838470616889862114

`A117846(A008619(n))+A000007(n+1)`
-/

namespace A253387.P12838470616889862114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (A008619 n).toNat + A000007 (n + 1)

end

end A253387.P12838470616889862114

/-! ## A253387.P6867441701257784620

`A117846(A008619(n))+A000035(2*n)`
-/

namespace A253387.P6867441701257784620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (A008619 n).toNat + A000035 (2 * n)

end

end A253387.P6867441701257784620

/-! ## A253387.P12422257207807178227

`A007318(C(2, n))*A117846(A008619(n))`
-/

namespace A253387.P12422257207807178227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A117846 (A008619 n).toNat

end

end A253387.P12422257207807178227

/-! ## A253387.P3411839889766483243

`A117846(A008619(n))+char[A000108(n+7)]`
-/

namespace A253387.P3411839889766483243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (A008619 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253387.P3411839889766483243

/-! ## A253387.P8109675649925357143

`A000041(C(n, n²))*A117846(A008619(n))`
-/

namespace A253387.P8109675649925357143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A117846 (A008619 n).toNat

end

end A253387.P8109675649925357143

/-! ## A253387.P10253099419912583631

`A117846(A008619(n))+A008683(4*(n+1))`
-/

namespace A253387.P10253099419912583631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (A008619 n).toNat + A008683 (4 * (n + 1))

end

end A253387.P10253099419912583631

/-! ## A253387.P10278487807013815230

`A014963(6*(n+1))*A117846(A008619(n))`
-/

namespace A253387.P10278487807013815230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A117846 (A008619 n).toNat

end

end A253387.P10278487807013815230

/-! ## A253387.P15692510859187379372

`A000108(C(2, n+2))*A117846(A008619(n))`
-/

namespace A253387.P15692510859187379372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A117846 (A008619 n).toNat

end

end A253387.P15692510859187379372

/-! ## A253387.P8507677405110047613

`A117846(A008619(n))+(n+1)%A014963(n+1)`
-/

namespace A253387.P8507677405110047613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117846 (A008619 n).toNat + Int.tmod (n + 1 : ℤ) (A014963 (n + 1))

end

end A253387.P8507677405110047613

/-! ## A253387.P8443811168030347225

`A007318(A266223(n))*A117846(A008619(n))`
-/

namespace A253387.P8443811168030347225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A266223 n).toNat * A117846 (A008619 n).toNat

end

end A253387.P8443811168030347225

/-! ## A253387.P17673999553691232670

`A032742(A006530(n+2))*A117846(A008619(n))`
-/

namespace A253387.P17673999553691232670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A006530 (n + 2)).toNat * A117846 (A008619 n).toNat

end

end A253387.P17673999553691232670

/-! ## A253387.P17080911093981500471

`A007318(A020639(2*(n+1)))*A117846(A008619(n))`
-/

namespace A253387.P17080911093981500471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A117846 (A008619 n).toNat

end

end A253387.P17080911093981500471

/-!
# A253388: Numbers n such that the number of divisors of n is the product of two distinct primes.

The programs for A253388, the canonical program `A253388.P2880385578976687420` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253388 has offset 1).

The definition of A253388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253388.P11773195039291023935

`eq[1, A281116(A000005(n+1))]+1`
-/

namespace A253388.P11773195039291023935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253388.P11773195039291023935

namespace A253388

/-- `eq[1, A281116(A000005(n+1))]+1` -/
def P11773195039291023935.Spec : Prop :=
  ∀ n, (P11773195039291023935.a n : ℤ) = A253388 (n + 1)

end A253388

/-! ## A253388.P2880385578976687420

`eq[1, A008683(A000005(n+2))]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A253388

/-- `eq[1, A008683(A000005(n+2))]+2` -/
def P2880385578976687420.Spec : Prop :=
  ∀ n, (P2880385578976687420.a n : ℤ) = A253388 (n + 1)

theorem P2880385578976687420.correct : P2880385578976687420.Spec := by
  intro n
  simp only [A253388, Nat.add_sub_cancel]

end A253388

/-! ## A253388.P1821197681925356598

`eq[4, A183095(∏{e}[n+1, #+1])]+1`
-/

namespace A253388.P1821197681925356598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253388.P1821197681925356598

namespace A253388

/-- `eq[4, A183095(∏{e}[n+1, #+1])]+1` -/
def P1821197681925356598.Spec : Prop :=
  ∀ n, (P1821197681925356598.a n : ℤ) = A253388 (n + 1)

end A253388

/-! ## A253388.P16261798993105046394

`eq[3, A002033(A032741(n))]`
-/

namespace A253388.P16261798993105046394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253388.P16261798993105046394

namespace A253388

/-- `eq[3, A002033(A032741(n))]` -/
def P16261798993105046394.Spec : Prop :=
  ∀ n, (P16261798993105046394.a n : ℤ) = A253388 (n + 1)

end A253388

/-! ## A253388.P7606406640928561119

`eq[1, A066620(A032741(n)+1)]`
-/

namespace A253388.P7606406640928561119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253388.P7606406640928561119

namespace A253388

/-- `eq[1, A066620(A032741(n)+1)]` -/
def P7606406640928561119.Spec : Prop :=
  ∀ n, (P7606406640928561119.a n : ℤ) = A253388 (n + 1)

end A253388

/-! ## A253388.P12509456304477012776

`eq[2, A066882(A277692(2*n+1))]`
-/

namespace A253388.P12509456304477012776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A277692 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253388.P12509456304477012776

namespace A253388

/-- `eq[2, A066882(A277692(2*n+1))]` -/
def P12509456304477012776.Spec : Prop :=
  ∀ n, (P12509456304477012776.a n : ℤ) = A253388 (n + 1)

end A253388

/-! ## A253388.P13511612366245774009

`eq[3, A305832(A145154(n))]`
-/

namespace A253388.P13511612366245774009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253388.P13511612366245774009

namespace A253388

/-- `eq[3, A305832(A145154(n))]` -/
def P13511612366245774009.Spec : Prop :=
  ∀ n, (P13511612366245774009.a n : ℤ) = A253388 (n + 1)

end A253388

/-!
# A253390: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253390, there is no canonical definition to state claims against.
-/

/-! ## A253390.P10957659091829273874

`A253397(∑[4*n]+1)`
-/

namespace A253390.P10957659091829273874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253390.P10957659091829273874

/-! ## A253390.P8674733178151216515

`lcm(2, A253397(A001844(n)))`
-/

namespace A253390.P8674733178151216515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253397 (A001844 n).toNat)

end

end A253390.P8674733178151216515

/-! ## A253390.P1826158783878064749

`record[root(A253397(n+1), A143182(n))]`
-/

namespace A253390.P1826158783878064749
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253397 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253390.P1826158783878064749

/-! ## A253390.P1519603435768729063

`record[A203994(n+1)*A253397(n+1)]`
-/

namespace A253390.P1519603435768729063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A253397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253390.P1519603435768729063

/-! ## A253390.P17082322949445688439

`A055231((n+1)²)*A253397((n+1)²+n²)`
-/

namespace A253390.P17082322949445688439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 ((n + 1) ^ 2) * A253397 ((n + 1) ^ 2 + n ^ 2)

end

end A253390.P17082322949445688439

/-! ## A253390.P18147310295083806595

`A093178(2*n)*A253397(A001844(n))`
-/

namespace A253390.P18147310295083806595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A253397 (A001844 n).toNat

end

end A253390.P18147310295083806595

/-! ## A253390.P10541676278287534033

`A130196(3*n)*A253397(A001844(n))`
-/

namespace A253390.P10541676278287534033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (3 * n) * A253397 (A001844 n).toNat

end

end A253390.P10541676278287534033

/-! ## A253390.P3454216864427561708

`A253397(A001844(n))%A304345(n+1)`
-/

namespace A253390.P3454216864427561708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253397 (A001844 n).toNat) (A304345 (n + 1))

end

end A253390.P3454216864427561708

/-! ## A253390.P10374529704024544956

`record[root(A253397(n+1), A217029(n+1))]`
-/

namespace A253390.P10374529704024544956
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253397 (n + 1) : ℝ) ^ (1 / (A217029 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253390.P10374529704024544956

/-!
# A253391: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253391, the canonical program `A253391.P15356625066980703189` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253391 has offset 1).

The definition of A253391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253391.P5928372933401827158

`ogf((44+14x-61x^2-x^3+16x^4+4x^5+2x^6-2x^7)/(1-2x+2x^3-x^4))`
-/

namespace A253391.P5928372933401827158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [44, 14, -61, -1, 16, 4, 2, -2] [1, -2, 0, 2, -1] n

end

end A253391.P5928372933401827158

namespace A253391

/-- `ogf((44+14x-61x^2-x^3+16x^4+4x^5+2x^6-2x^7)/(1-2x+2x^3-x^4))` -/
def P5928372933401827158.Spec : Prop :=
  ∀ n, P5928372933401827158.a n = A253391 (n + 1)

end A253391

/-! ## A253391.P15356625066980703189

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=44, a(1)=102, a(2)=143, a(3)=197, a(4)=250, a(5)=320, a(6)=391, a(7)=477`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253391

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P15356625066980703189.Spec : Prop :=
  ∀ n, P15356625066980703189.a n = A253391 (n + 1)

theorem P15356625066980703189.correct : P15356625066980703189.Spec := by
  intro n
  simp only [A253391, Nat.add_sub_cancel]

end A253391

/-! ## A253391.P7093328291975511506

`A253397(∑[n+1]+2)`
-/

namespace A253391.P7093328291975511506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253391.P7093328291975511506

namespace A253391

/-- `A253397(∑[n+1]+2)` -/
def P7093328291975511506.Spec : Prop :=
  ∀ n, P7093328291975511506.a n = A253391 (n + 1)

end A253391

/-! ## A253391.P14043862152786783833

`A000027(A253397(∑[n+2]))`
-/

namespace A253391.P14043862152786783833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A253397 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A253391.P14043862152786783833

namespace A253391

/-- `A000027(A253397(∑[n+2]))` -/
def P14043862152786783833.Spec : Prop :=
  ∀ n, P14043862152786783833.a n = A253391 (n + 1)

end A253391

/-! ## A253391.P1499541162931744623

`record[A253397(n+2)/A013612(n)]`
-/

namespace A253391.P1499541162931744623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253397 (n + 2) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253391.P1499541162931744623

namespace A253391

/-- `record[A253397(n+2)/A013612(n)]` -/
def P1499541162931744623.Spec : Prop :=
  ∀ n, P1499541162931744623.a n = (A253391 (n + 1) : ℚ)

end A253391

/-!
# A253392: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253392, the canonical program `A253392.P10326156744416589657` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253392 has offset 1).

The definition of A253392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253392.P10326156744416589657

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=96, a(1)=143, a(2)=174, a(3)=246, a(4)=316, a(5)=419, a(6)=520, a(7)=651`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253392

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10326156744416589657.Spec : Prop :=
  ∀ n, P10326156744416589657.a n = A253392 (n + 1)

theorem P10326156744416589657.correct : P10326156744416589657.Spec := by
  intro n
  simp only [A253392, Nat.add_sub_cancel]

end A253392

/-! ## A253392.P6050668265340736384

`A253397(∑[n+2]+4)`
-/

namespace A253392.P6050668265340736384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253392.P6050668265340736384

namespace A253392

/-- `A253397(∑[n+2]+4)` -/
def P6050668265340736384.Spec : Prop :=
  ∀ n, P6050668265340736384.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P636837569858845142

`or(char[1], A253397(A167614(n+1)))`
-/

namespace A253392.P636837569858845142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253397 (A167614 (n + 1)).toNat)

end

end A253392.P636837569858845142

namespace A253392

/-- `or(char[1], A253397(A167614(n+1)))` -/
def P636837569858845142.Spec : Prop :=
  ∀ n, P636837569858845142.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P3279603734019357116

`gcd(n, n+1)*A253397(A167499(n)+n)`
-/

namespace A253392.P3279603734019357116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A253397 (A167499 n + (n : ℤ)).toNat

end

end A253392.P3279603734019357116

namespace A253392

/-- `gcd(n, n+1)*A253397(A167499(n)+n)` -/
def P3279603734019357116.Spec : Prop :=
  ∀ n, P3279603734019357116.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P17685378944820312419

`A253397(A167614(n+1))%A017463(n)`
-/

namespace A253392.P17685378944820312419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253397 (A167614 (n + 1)).toNat) (A017463 n)

end

end A253392.P17685378944820312419

namespace A253392

/-- `A253397(A167614(n+1))%A017463(n)` -/
def P17685378944820312419.Spec : Prop :=
  ∀ n, P17685378944820312419.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P11751554091707160658

`A253397(A167614(n+1))+A185255(A025581(n))`
-/

namespace A253392.P11751554091707160658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 1)).toNat + A185255 (A025581 n).toNat

end

end A253392.P11751554091707160658

namespace A253392

/-- `A253397(A167614(n+1))+A185255(A025581(n))` -/
def P11751554091707160658.Spec : Prop :=
  ∀ n, P11751554091707160658.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P12826034831871094505

`A253397(A167614(n+1))+A067772(A112049(n+1))`
-/

namespace A253392.P12826034831871094505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 1)).toNat + A067772 (A112049 (n + 1)).toNat

end

end A253392.P12826034831871094505

namespace A253392

/-- `A253397(A167614(n+1))+A067772(A112049(n+1))` -/
def P12826034831871094505.Spec : Prop :=
  ∀ n, P12826034831871094505.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P6182026591596057781

`A253397(A167614(n+1))+A185255(A000688(n+1))`
-/

namespace A253392.P6182026591596057781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 1)).toNat + A185255 (A000688 (n + 1)).toNat

end

end A253392.P6182026591596057781

namespace A253392

/-- `A253397(A167614(n+1))+A185255(A000688(n+1))` -/
def P6182026591596057781.Spec : Prop :=
  ∀ n, P6182026591596057781.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P8347017738184214763

`A253397(A167614(n+1))+A185255(A220415(n+1))`
-/

namespace A253392.P8347017738184214763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 1)).toNat + A185255 (A220415 (n + 1)).toNat

end

end A253392.P8347017738184214763

namespace A253392

/-- `A253397(A167614(n+1))+A185255(A220415(n+1))` -/
def P8347017738184214763.Spec : Prop :=
  ∀ n, P8347017738184214763.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P13246842560414527128

`A253397(A167614(n+1))+A185255(A220431(n+1))`
-/

namespace A253392.P13246842560414527128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 1)).toNat + A185255 (A220431 (n + 1)).toNat

end

end A253392.P13246842560414527128

namespace A253392

/-- `A253397(A167614(n+1))+A185255(A220431(n+1))` -/
def P13246842560414527128.Spec : Prop :=
  ∀ n, P13246842560414527128.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P8501304949998390525

`A018783(A000040(n+1))*A253397(A167614(n+1))`
-/

namespace A253392.P8501304949998390525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A000040 (n + 1)).toNat * A253397 (A167614 (n + 1)).toNat

end

end A253392.P8501304949998390525

namespace A253392

/-- `A018783(A000040(n+1))*A253397(A167614(n+1))` -/
def P8501304949998390525.Spec : Prop :=
  ∀ n, P8501304949998390525.a n = A253392 (n + 1)

end A253392

/-! ## A253392.P12859396734618846447

`A001222(A112046(n+1))*A253397(A167614(n+1))`
-/

namespace A253392.P12859396734618846447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A112046 (n + 1)).toNat * A253397 (A167614 (n + 1)).toNat

end

end A253392.P12859396734618846447

namespace A253392

/-- `A001222(A112046(n+1))*A253397(A167614(n+1))` -/
def P12859396734618846447.Spec : Prop :=
  ∀ n, P12859396734618846447.a n = A253392 (n + 1)

end A253392

/-!
# A253393: Number of (n+1) X (4+1) 0..1 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253393, there is no canonical definition to state claims against.
-/

/-! ## A253393.P18096624805428401133

`A253397(A374004(n+1))`
-/

namespace A253393.P18096624805428401133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A374004 (n + 1)).toNat

end

end A253393.P18096624805428401133

/-! ## A253393.P7643106324838695555

`A253397(A052905(n)+9)`
-/

namespace A253393.P7643106324838695555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A052905 n + 9).toNat

end

end A253393.P7643106324838695555

/-! ## A253393.P10984009415914688120

`A253397(A055999(n)+10)`
-/

namespace A253393.P10984009415914688120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A055999 n + 10).toNat

end

end A253393.P10984009415914688120

/-! ## A253393.P11332128896056111829

`A253397(Δ[A005286(n)]+5)`
-/

namespace A253393.P11332128896056111829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n + 5).toNat

end

end A253393.P11332128896056111829

/-! ## A253393.P5574454086905584726

`A253397(A167614(n+2)+1)`
-/

namespace A253393.P5574454086905584726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 2) + 1).toNat

end

end A253393.P5574454086905584726

/-! ## A253393.P4648505512057586068

`A253397(A000217(n+3)+4)`
-/

namespace A253393.P4648505512057586068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A000217 (n + 3) + 4).toNat

end

end A253393.P4648505512057586068

/-! ## A253393.P17259132199235032976

`A253397(A034856(n+2)+6)`
-/

namespace A253393.P17259132199235032976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A034856 (n + 2) + 6).toNat

end

end A253393.P17259132199235032976

/-! ## A253393.P6223098037592621793

`A253397(Δ[A264443(n)-n²])`
-/

namespace A253393.P6223098037592621793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n).toNat

end

end A253393.P6223098037592621793

/-! ## A253393.P11763186001016282556

`A253397(Δ[A023545(n+1)-n²])`
-/

namespace A253393.P11763186001016282556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n).toNat

end

end A253393.P11763186001016282556

/-! ## A253393.P6386349896998477080

`A253397(∑[n+4]+3)`
-/

namespace A253393.P6386349896998477080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253393.P6386349896998477080

/-!
# A253394: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253394, there is no canonical definition to state claims against.
-/

/-! ## A253394.P11710308341959225246

`A253397(A374005(n+1))`
-/

namespace A253394.P11710308341959225246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A374005 (n + 1)).toNat

end

end A253394.P11710308341959225246

/-! ## A253394.P3592661318868589264

`A253397(A167499(n+3))`
-/

namespace A253394.P3592661318868589264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167499 (n + 3)).toNat

end

end A253394.P3592661318868589264

/-! ## A253394.P15618918859868727199

`A253397(A155212(n)+13)`
-/

namespace A253394.P15618918859868727199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A155212 n + 13).toNat

end

end A253394.P15618918859868727199

/-! ## A253394.P12159448822493474811

`A253397(A056000(n)+15)`
-/

namespace A253394.P12159448822493474811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A056000 n + 15).toNat

end

end A253394.P12159448822493474811

/-! ## A253394.P2896470751195702319

`A253397(∑[n+5]+6)`
-/

namespace A253394.P2896470751195702319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253394.P2896470751195702319

/-! ## A253394.P1512514929041410024

`A253397(Δ[A264443(n)])%A158271(n+1)`
-/

namespace A253394.P1512514929041410024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253397 (f1 (n + 1) - f1 n).toNat) (A158271 (n + 1))

end

end A253394.P1512514929041410024

/-! ## A253394.P12491238038126284198

`A253397(A000096(n+4)-3)%A024185(n+1)`
-/

namespace A253394.P12491238038126284198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253397 (A000096 (n + 4) - 3).toNat) (A024185 (n + 1))

end

end A253394.P12491238038126284198

/-!
# A253395: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253395, there is no canonical definition to state claims against.
-/

/-! ## A253395.P14414318709981906247

`A253397(A374007(n+1))`
-/

namespace A253395.P14414318709981906247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A374007 (n + 1)).toNat

end

end A253395.P14414318709981906247

/-! ## A253395.P1656959829929726147

`A253397(Δ[A023545(n+1)]+10)`
-/

namespace A253395.P1656959829929726147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n + 10).toNat

end

end A253395.P1656959829929726147

/-! ## A253395.P16326729141648611373

`A253397(A052905(n+3))`
-/

namespace A253395.P16326729141648611373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A052905 (n + 3)).toNat

end

end A253395.P16326729141648611373

/-! ## A253395.P6398944337199500361

`A253397(A056119(n)+16)`
-/

namespace A253395.P6398944337199500361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A056119 n + 16).toNat

end

end A253395.P6398944337199500361

/-! ## A253395.P1736889201611683035

`A253397(Δ[Δ[A006504(n+1)]])`
-/

namespace A253395.P1736889201611683035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n).toNat

end

end A253395.P1736889201611683035

/-! ## A253395.P6690710452873729904

`A253397(Δ[A264443(n+1)]-1)`
-/

namespace A253395.P6690710452873729904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n - 1).toNat

end

end A253395.P6690710452873729904

/-! ## A253395.P7795865496220093651

`A253397(Δ[A026054(n+3)]+1)`
-/

namespace A253395.P7795865496220093651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n + 1).toNat

end

end A253395.P7795865496220093651

/-! ## A253395.P12624878644098396954

`A253397(Δ[A000292(n+4)]+n+1)`
-/

namespace A253395.P12624878644098396954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A253395.P12624878644098396954

/-!
# A253396: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253396, there is no canonical definition to state claims against.
-/

/-! ## A253396.P4083531061429344548

`A253397(A374008(n+1))`
-/

namespace A253396.P4083531061429344548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A374008 (n + 1)).toNat

end

end A253396.P4083531061429344548

/-! ## A253396.P17681731123276038399

`A253397(A000217(n+6)+7)`
-/

namespace A253396.P17681731123276038399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A000217 (n + 6) + 7).toNat

end

end A253396.P17681731123276038399

/-! ## A253396.P12781869169847258941

`A253397(A167614(n+3)+A004273(n+8))`
-/

namespace A253396.P12781869169847258941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A167614 (n + 3) + A004273 (n + 8)).toNat

end

end A253396.P12781869169847258941

/-! ## A253396.P340785008013694221

`A253397(A133263(n+4)+A005843(n+8))`
-/

namespace A253396.P340785008013694221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A133263 (n + 4) + A005843 (n + 8)).toNat

end

end A253396.P340785008013694221

/-! ## A253396.P6973428015128877935

`A253397(A055999(n+4))`
-/

namespace A253396.P6973428015128877935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A055999 (n + 4)).toNat

end

end A253396.P6973428015128877935

/-! ## A253396.P4079743122751759528

`A253397(Δ[A026054(n+4)])`
-/

namespace A253396.P4079743122751759528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (f1 (n + 1) - f1 n).toNat

end

end A253396.P4079743122751759528

/-! ## A253396.P7917426653398594692

`A253397(A000124(n+7)-7)`
-/

namespace A253396.P7917426653398594692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253397 (A000124 (n + 7) - 7).toNat

end

end A253396.P7917426653398594692

/-!
# A253397: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253397, there is no canonical definition to state claims against.
-/

/-! ## A253397.P10730486612647225828

`A258554(n+1)-A126000(A001192(n))`
-/

namespace A253397.P10730486612647225828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (n + 1) - A126000 (A001192 n).toNat

end

end A253397.P10730486612647225828

/-!
# A253398: Smallest odd k > 1 such that k*2^prime(n) + 1 is prime.

The programs for A253398, there is no canonical definition to state claims against.
-/

/-! ## A253398.P13590416098781435506

`A247479(A000040(n+1))`
-/

namespace A253398.P13590416098781435506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A000040 (n + 1)).toNat

end

end A253398.P13590416098781435506

/-! ## A253398.P5157829873003793149

`A247479(A006005(n+1))`
-/

namespace A253398.P5157829873003793149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A006005 (n + 1)).toNat

end

end A253398.P5157829873003793149

/-! ## A253398.P9991347352181770724

`A247479(A161847(n+1))`
-/

namespace A253398.P9991347352181770724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A161847 (n + 1)).toNat

end

end A253398.P9991347352181770724

/-! ## A253398.P3898912865408346043

`A247479(A008578(n+2))`
-/

namespace A253398.P3898912865408346043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A008578 (n + 2)).toNat

end

end A253398.P3898912865408346043

/-! ## A253398.P15463737944930267246

`A247479(A075643(n+2))`
-/

namespace A253398.P15463737944930267246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A075643 (n + 2)).toNat

end

end A253398.P15463737944930267246

/-! ## A253398.P8979530701825691929

`A247479(A182986(n+2))`
-/

namespace A253398.P8979530701825691929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A182986 (n + 2)).toNat

end

end A253398.P8979530701825691929

/-! ## A253398.P8318303881921955263

`A247479(record[A006530(n+2)])`
-/

namespace A253398.P8318303881921955263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253398.P8318303881921955263

/-! ## A253398.P6808394347125142686

`A247479(record[A020639(n+2)])`
-/

namespace A253398.P6808394347125142686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253398.P6808394347125142686

/-! ## A253398.P903513948649198356

`A247479(A006093(n+1)+1)`
-/

namespace A253398.P903513948649198356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A006093 (n + 1) + 1).toNat

end

end A253398.P903513948649198356

/-! ## A253398.P2412032081169833139

`A247479(eq[1, A347963(n+1)]+1)`
-/

namespace A253398.P2412032081169833139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253398.P2412032081169833139

/-! ## A253398.P11875113688954017552

`A247479(record[A093074(n+1)])`
-/

namespace A253398.P11875113688954017552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253398.P11875113688954017552

/-! ## A253398.P2489230018891324615

`A247479(record[A014963(n+2)])`
-/

namespace A253398.P2489230018891324615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253398.P2489230018891324615

/-! ## A253398.P17067462965934741978

`abs(A057778(p?[A173517(n)])-2)+2`
-/

namespace A253398.P17067462965934741978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057778 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2| + 2

end

end A253398.P17067462965934741978

/-! ## A253398.P269498619164234318

`A361546(n+1)+A000038(n)`
-/

namespace A253398.P269498619164234318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361546 (n + 1) + A000038 n

end

end A253398.P269498619164234318

/-! ## A253398.P6284211130806101586

`A204998(A361546(n+1))`
-/

namespace A253398.P6284211130806101586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204998 (A361546 (n + 1)).toNat

end

end A253398.P6284211130806101586

/-!
# A253399: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253399, there is no canonical definition to state claims against.
-/

/-! ## A253399.P3002874043726177473

`A253407((n+1)²+n²)`
-/

namespace A253399.P3002874043726177473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 ((n + 1) ^ 2 + n ^ 2)

end

end A253399.P3002874043726177473

/-! ## A253399.P10812971001968607267

`record[gcd(A114327(n), A253407(n+1))]`
-/

namespace A253399.P10812971001968607267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253407 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253399.P10812971001968607267

/-! ## A253399.P3948932047013001508

`A253407(A001844(n))+A025443(n)`
-/

namespace A253399.P3948932047013001508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A001844 n).toNat + A025443 n

end

end A253399.P3948932047013001508

/-! ## A253399.P16330330220030288366

`lcm(A001492(n), A253407(A001844(n)))`
-/

namespace A253399.P16330330220030288366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A253407 (A001844 n).toNat)

end

end A253399.P16330330220030288366

/-! ## A253399.P3881368800477289468

`A253407(A001844(n))+A008683(4*(n+5))`
-/

namespace A253399.P3881368800477289468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A001844 n).toNat + A008683 (4 * (n + 5))

end

end A253399.P3881368800477289468

