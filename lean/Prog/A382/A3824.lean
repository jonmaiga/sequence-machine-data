import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A382400: Number of subsets of Z_n such that every ordered pair of distinct elements has a different sum.

The programs for A382400, there is no canonical definition to state claims against.
-/

/-! ## A382400.P14952855359006550598

`A378196(n)+A010060(A006156(3*n+1))`
-/

namespace A382400.P14952855359006550598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378196 n + A010060 (A006156 (3 * n + 1)).toNat

end

end A382400.P14952855359006550598

/-!
# A382403: a(n) = Sum_{k=0..n} A039599(n,k)^3.

The programs for A382403, there is no canonical definition to state claims against.
-/

/-! ## A382403.P12671006558724774639

`A003161(2*n)`
-/

namespace A382403.P12671006558724774639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (2 * n)

end

end A382403.P12671006558724774639

/-! ## A382403.P13652041992258679639

`A003161(A005843(n))+A000007(n+2)`
-/

namespace A382403.P13652041992258679639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (A005843 n).toNat + A000007 (n + 2)

end

end A382403.P13652041992258679639

/-! ## A382403.P12068576043667137017

`A003161(A005843(n))/A002828((n+1)²)`
-/

namespace A382403.P12068576043667137017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 (A005843 n).toNat : ℚ) / (A002828 ((n + 1) ^ 2) : ℚ)

end

end A382403.P12068576043667137017

/-! ## A382403.P996742442269849589

`A003161(A005843(n))%A213644(n+4)`
-/

namespace A382403.P996742442269849589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003161 (A005843 n).toNat) (A213644 (n + 4))

end

end A382403.P996742442269849589

/-! ## A382403.P17062670119296002794

`A003161(A005843(n))/A040329(A061305(n+1))`
-/

namespace A382403.P17062670119296002794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 (A005843 n).toNat : ℚ) / (A040329 (A061305 (n + 1)).toNat : ℚ)

end

end A382403.P17062670119296002794

/-!
# A382404: a(n) = -Sum_{k=0..n} (-1)^k * A039599(n,k)^3.

The programs for A382404, there is no canonical definition to state claims against.
-/

/-! ## A382404.P13408799023882499793

`(n-1)*A024486(n)`
-/

namespace A382404.P13408799023882499793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A024486 n

end

end A382404.P13408799023882499793

/-! ## A382404.P11295441285086558564

`(n-1)/(2*n+1)*A006480(n)`
-/

namespace A382404.P11295441285086558564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (2 * n + 1 : ℚ) * (A006480 n : ℚ)

end

end A382404.P11295441285086558564

/-!
# A382405: a(n) = Sum_{k=0..n} binomial(n,k)^2 * binomial(n+k,k) * 2^(n-k).

The programs for A382405, there is no canonical definition to state claims against.
-/

/-! ## A382405.P7532491255069038935

`A324562(A318108(n))-A008290(2*n+3)`
-/

namespace A382405.P7532491255069038935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324562 (A318108 n).toNat - A008290 (2 * n + 3)

end

end A382405.P7532491255069038935

/-!
# A382406: Expansion of 1/(1 - x*(1 + x)^2)^3.

The programs for A382406, the canonical program `A382406.P6327165997685353913` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382406 has offset 0).

The definition of A382406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-3x^2+8x^3+12x^4-3x^5-17x^6-15x^7-6x^8-x^9))` (program `A382406.P6327165997685353913`, by `A382406.P6327165997685353913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382406.P6327165997685353913

`ogf(1/(1-3x-3x^2+8x^3+12x^4-3x^5-17x^6-15x^7-6x^8-x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A382406

/-- `ogf(1/(1-3x-3x^2+8x^3+12x^4-3x^5-17x^6-15x^7-6x^8-x^9))` -/
def P6327165997685353913.Spec : Prop :=
  ∀ n, P6327165997685353913.a n = A382406 n

theorem P6327165997685353913.correct : P6327165997685353913.Spec := by
  intro n
  simp only [A382406]

end A382406

/-! ## A382406.P615857735694580331

`A352130(A056126(n)+2)`
-/

namespace A382406.P615857735694580331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A056126 n + 2).toNat

end

end A382406.P615857735694580331

namespace A382406

/-- `A352130(A056126(n)+2)` -/
def P615857735694580331.Spec : Prop :=
  ∀ n, P615857735694580331.a n = A382406 n

end A382406

/-!
# A382409: Semiperimeter of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382409, the canonical program `A382409.P14744368662865210790` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382409 has offset 0).

The definition of A382409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382409.P14744368662865210790

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=6, a(1)=1, a(2)=15, a(3)=28, a(4)=91`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A382409

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P14744368662865210790.Spec : Prop :=
  ∀ n, P14744368662865210790.a n = A382409 n

theorem P14744368662865210790.correct : P14744368662865210790.Spec := by
  intro n
  simp only [A382409]

end A382409

/-! ## A382409.P10869657754907248620

`A382379(n)+A000032(n)`
-/

namespace A382409.P10869657754907248620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382379 n + A000032 n

end

end A382409.P10869657754907248620

namespace A382409

/-- `A382379(n)+A000032(n)` -/
def P10869657754907248620.Spec : Prop :=
  ∀ n, P10869657754907248620.a n = A382409 n

end A382409

/-! ## A382409.P663380540065701488

`A382379(n)+A127218(2*n)`
-/

namespace A382409.P663380540065701488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382379 n + A127218 (2 * n)

end

end A382409.P663380540065701488

namespace A382409

/-- `A382379(n)+A127218(2*n)` -/
def P663380540065701488.Spec : Prop :=
  ∀ n, P663380540065701488.a n = A382409 n

end A382409

/-! ## A382409.P9200363780433924686

`A001254(n)+A001254(n)-A000032(n)`
-/

namespace A382409.P9200363780433924686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n + (A001254 n - A000032 n)

end

end A382409.P9200363780433924686

namespace A382409

/-- `A001254(n)+A001254(n)-A000032(n)` -/
def P9200363780433924686.Spec : Prop :=
  ∀ n, P9200363780433924686.a n = A382409 n

end A382409

/-! ## A382409.P10522816187750742060

`(A383039(n)-A382379(n))*A000032(n)`
-/

namespace A382409.P10522816187750742060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383039 n - A382379 n) * A000032 n

end

end A382409.P10522816187750742060

namespace A382409

/-- `(A383039(n)-A382379(n))*A000032(n)` -/
def P10522816187750742060.Spec : Prop :=
  ∀ n, P10522816187750742060.a n = A382409 n

end A382409

/-! ## A382409.P7869177940661622262

`(A022309(n+1)-A000285(n))*A000032(n)`
-/

namespace A382409.P7869177940661622262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022309 (n + 1) - A000285 n) * A000032 n

end

end A382409.P7869177940661622262

namespace A382409

/-- `(A022309(n+1)-A000285(n))*A000032(n)` -/
def P7869177940661622262.Spec : Prop :=
  ∀ n, P7869177940661622262.a n = A382409 n

end A382409

/-! ## A382409.P17132549822687323845

`C(Δ[A022112(n)], 2)`
-/

namespace A382409.P17132549822687323845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A382409.P17132549822687323845

namespace A382409

/-- `C(Δ[A022112(n)], 2)` -/
def P17132549822687323845.Spec : Prop :=
  ∀ n, (P17132549822687323845.a n : ℤ) = A382409 n

end A382409

/-! ## A382409.P10634141691071023885

`C(Δ[A022319(n)], 2)`
-/

namespace A382409.P10634141691071023885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A382409.P10634141691071023885

namespace A382409

/-- `C(Δ[A022319(n)], 2)` -/
def P10634141691071023885.Spec : Prop :=
  ∀ n, (P10634141691071023885.a n : ℤ) = A382409 n

end A382409

/-! ## A382409.P13071452978411415187

`C(A156279(n)/2, 2)`
-/

namespace A382409.P13071452978411415187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A156279 n : ℚ) / 2)).toNat 2

end

end A382409.P13071452978411415187

namespace A382409

/-- `C(A156279(n)/2, 2)` -/
def P13071452978411415187.Spec : Prop :=
  ∀ n, (P13071452978411415187.a n : ℤ) = A382409 n

end A382409

/-! ## A382409.P16264834505625663778

`C(Δ[Δ[A192954(n)]], 2)`
-/

namespace A382409.P16264834505625663778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A382409.P16264834505625663778

namespace A382409

/-- `C(Δ[Δ[A192954(n)]], 2)` -/
def P16264834505625663778.Spec : Prop :=
  ∀ n, (P16264834505625663778.a n : ℤ) = A382409 n

end A382409

/-!
# A382410: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382410, the canonical program `A382410.P17047852700032732974` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382410 has offset 0).

The definition of A382410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382410.P17047852700032732974

`(A000032(n)-1)*A382409(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382410

/-- `(A000032(n)-1)*A382409(n)` -/
def P17047852700032732974.Spec : Prop :=
  ∀ n, P17047852700032732974.a n = A382410 n

theorem P17047852700032732974.correct : P17047852700032732974.Spec := by
  intro n
  simp only [A382410]

end A382410

/-! ## A382410.P17868112826702818980

`(A383039(n)-A382409(n))*A382409(n)`
-/

namespace A382410.P17868112826702818980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383039 n - A382409 n) * A382409 n

end

end A382410.P17868112826702818980

namespace A382410

/-- `(A383039(n)-A382409(n))*A382409(n)` -/
def P17868112826702818980.Spec : Prop :=
  ∀ n, P17868112826702818980.a n = A382410 n

end A382410

/-! ## A382410.P14085254588136156047

`A055112(A000032(n)-1)`
-/

namespace A382410.P14085254588136156047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (A000032 n - 1).toNat

end

end A382410.P14085254588136156047

namespace A382410

/-- `A055112(A000032(n)-1)` -/
def P14085254588136156047.Spec : Prop :=
  ∀ n, P14085254588136156047.a n = A382410 n

end A382410

/-! ## A382410.P11712926025885945876

`A055112(A001612(n)-2)`
-/

namespace A382410.P11712926025885945876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (A001612 n - 2).toNat

end

end A382410.P11712926025885945876

namespace A382410

/-- `A055112(A001612(n)-2)` -/
def P11712926025885945876.Spec : Prop :=
  ∀ n, P11712926025885945876.a n = A382410 n

end A382410

/-! ## A382410.P2492398359582135091

`A011886(2*A000032(n))`
-/

namespace A382410.P2492398359582135091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (2 * A000032 n).toNat

end

end A382410.P2492398359582135091

namespace A382410

/-- `A011886(2*A000032(n))` -/
def P2492398359582135091.Spec : Prop :=
  ∀ n, P2492398359582135091.a n = A382410 n

end A382410

/-!
# A382411: a(n) is the greatest possible length of a circular sequence on n symbols such that: no two adjacent symbols are the same, any group of n adjacent symbols contains at least n-1 different symbols, and all groups of n adjacent symbols within the sequence are unique.

The programs for A382411, the canonical program `A382411.P13968524649925157096` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382411 has offset 1).

The definition of A382411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382411.P3500219817547691232

`(n+1)!*((n+1)*(n-2)+4)/2`
-/

namespace A382411.P3500219817547691232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (((n + 1 : ℤ) * ((n : ℤ) - 2) + 4 : ℚ) / 2)

end

end A382411.P3500219817547691232

namespace A382411

/-- `(n+1)!*((n+1)*(n-2)+4)/2` -/
def P3500219817547691232.Spec : Prop :=
  ∀ n, P3500219817547691232.a n = (A382411 (n + 1) : ℚ)

end A382411

/-! ## A382411.P13968524649925157096

`A000142(n+1)*A152947(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382411

/-- `A000142(n+1)*A152947(n+1)` -/
def P13968524649925157096.Spec : Prop :=
  ∀ n, P13968524649925157096.a n = A382411 (n + 1)

theorem P13968524649925157096.correct : P13968524649925157096.Spec := by
  intro n
  simp only [A382411, Nat.add_sub_cancel]

end A382411

/-! ## A382411.P11989610041254858771

`(C(n, 2)+1)*(n+1)!`
-/

namespace A382411.P11989610041254858771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * Nat.factorial (n + 1)

end

end A382411.P11989610041254858771

namespace A382411

/-- `(C(n, 2)+1)*(n+1)!` -/
def P11989610041254858771.Spec : Prop :=
  ∀ n, (P11989610041254858771.a n : ℤ) = A382411 (n + 1)

end A382411

/-! ## A382411.P8444405030199756335

`(C(n, 2)+1)*∏[n+1]`
-/

namespace A382411.P8444405030199756335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A382411.P8444405030199756335

namespace A382411

/-- `(C(n, 2)+1)*∏[n+1]` -/
def P8444405030199756335.Spec : Prop :=
  ∀ n, (P8444405030199756335.a n : ℤ) = A382411 (n + 1)

end A382411

/-! ## A382411.P6300882398306710929

`∑[abs(1-n)]*∏[n+1]`
-/

namespace A382411.P6300882398306710929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A382411.P6300882398306710929

namespace A382411

/-- `∑[abs(1-n)]*∏[n+1]` -/
def P6300882398306710929.Spec : Prop :=
  ∀ n, P6300882398306710929.a n = A382411 (n + 1)

end A382411

/-! ## A382411.P6097881066628294157

`-(n-1-∑[n])*(n+1)!`
-/

namespace A382411.P6097881066628294157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (Nat.factorial (n + 1) : ℤ))

end

end A382411.P6097881066628294157

namespace A382411

/-- `-(n-1-∑[n])*(n+1)!` -/
def P6097881066628294157.Spec : Prop :=
  ∀ n, P6097881066628294157.a n = A382411 (n + 1)

end A382411

/-! ## A382411.P7080701054192959796

`A001286(n+2)-A052609(n+1)`
-/

namespace A382411.P7080701054192959796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2) - A052609 (n + 1)

end

end A382411.P7080701054192959796

namespace A382411

/-- `A001286(n+2)-A052609(n+1)` -/
def P7080701054192959796.Spec : Prop :=
  ∀ n, P7080701054192959796.a n = A382411 (n + 1)

end A382411

/-! ## A382411.P17871611068155073674

`A000142(n+1)+A000142(n+1)*A161680(n)`
-/

namespace A382411.P17871611068155073674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A000142 (n + 1) * A161680 n

end

end A382411.P17871611068155073674

namespace A382411

/-- `A000142(n+1)+A000142(n+1)*A161680(n)` -/
def P17871611068155073674.Spec : Prop :=
  ∀ n, P17871611068155073674.a n = A382411 (n + 1)

end A382411

/-! ## A382411.P4962172404034462342

`A001286(n+2)-A062119(n+1)-A062119(n+1)`
-/

namespace A382411.P4962172404034462342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2) - A062119 (n + 1) - A062119 (n + 1)

end

end A382411.P4962172404034462342

namespace A382411

/-- `A001286(n+2)-A062119(n+1)-A062119(n+1)` -/
def P4962172404034462342.Spec : Prop :=
  ∀ n, P4962172404034462342.a n = A382411 (n + 1)

end A382411

/-!
# A382412: Numbers with no zeros in their base-7 representation.

The programs for A382412, the canonical program `A382412.P15191290044430862285` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382412 has offset 1).

The definition of A382412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382412.P15191290044430862285

`lt[0, A309958(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A382412

/-- `lt[0, A309958(n)]` -/
def P15191290044430862285.Spec : Prop :=
  ∀ n, (P15191290044430862285.a n : ℤ) = A382412 (n + 1)

theorem P15191290044430862285.correct : P15191290044430862285.Spec := by
  intro n
  simp only [A382412, Nat.add_sub_cancel]

end A382412

/-! ## A382412.P16075209981140717373

`record[(n+1)/A303825(n+1)]`
-/

namespace A382412.P16075209981140717373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A303825 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382412.P16075209981140717373

namespace A382412

/-- `record[(n+1)/A303825(n+1)]` -/
def P16075209981140717373.Spec : Prop :=
  ∀ n, P16075209981140717373.a n = (A382412 (n + 1) : ℚ)

end A382412

/-! ## A382412.P8149258094784804372

`eq[A309958(n), A338880(n)]`
-/

namespace A382412.P8149258094784804372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382412.P8149258094784804372

namespace A382412

/-- `eq[A309958(n), A338880(n)]` -/
def P8149258094784804372.Spec : Prop :=
  ∀ n, (P8149258094784804372.a n : ℤ) = A382412 (n + 1)

end A382412

/-! ## A382412.P15388432609814808050

`A028902(A057436(n+1))`
-/

namespace A382412.P15388432609814808050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A057436 (n + 1)).toNat

end

end A382412.P15388432609814808050

namespace A382412

/-- `A028902(A057436(n+1))` -/
def P15388432609814808050.Spec : Prop :=
  ∀ n, P15388432609814808050.a n = A382412 (n + 1)

end A382412

/-! ## A382412.P2107578971308825882

`lt[2, A070560(A007093(n))]`
-/

namespace A382412.P2107578971308825882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070560 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382412.P2107578971308825882

namespace A382412

/-- `lt[2, A070560(A007093(n))]` -/
def P2107578971308825882.Spec : Prop :=
  ∀ n, (P2107578971308825882.a n : ℤ) = A382412 (n + 1)

end A382412

/-!
# A382413: Numbers with at least one zero in their base-7 representation.

The programs for A382413, the canonical program `A382413.P15062099165486915148` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382413 has offset 1).

The definition of A382413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382413.P15062099165486915148

`comp[A382412(n+1)]`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A382413

/-- `comp[A382412(n+1)]` -/
def P15062099165486915148.Spec : Prop :=
  ∀ n, (P15062099165486915148.a n : ℤ) = A382413 (n + 1)

theorem P15062099165486915148.correct : P15062099165486915148.Spec := by
  intro n
  simp only [A382413, Nat.add_sub_cancel]

end A382413

/-! ## A382413.P14540893028344340034

`eq[0, A309958(n)]`
-/

namespace A382413.P14540893028344340034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382413.P14540893028344340034

namespace A382413

/-- `eq[0, A309958(n)]` -/
def P14540893028344340034.Spec : Prop :=
  ∀ n, (P14540893028344340034.a n : ℤ) = A382413 (n + 1)

end A382413

/-! ## A382413.P8116055908841326402

`eq[A037901(n), A190596(n)]`
-/

namespace A382413.P8116055908841326402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382413.P8116055908841326402

namespace A382413

/-- `eq[A037901(n), A190596(n)]` -/
def P8116055908841326402.Spec : Prop :=
  ∀ n, (P8116055908841326402.a n : ℤ) = A382413 (n + 1)

end A382413

/-! ## A382413.P11074679361075910378

`eq[A007093(n), A009101(A007093(n))]`
-/

namespace A382413.P11074679361075910378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382413.P11074679361075910378

namespace A382413

/-- `eq[A007093(n), A009101(A007093(n))]` -/
def P11074679361075910378.Spec : Prop :=
  ∀ n, (P11074679361075910378.a n : ℤ) = A382413 (n + 1)

end A382413

/-! ## A382413.P11863325887127034011

`lt[A309958(n), A014963(A336548(n+1))]`
-/

namespace A382413.P11863325887127034011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A336548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382413.P11863325887127034011

namespace A382413

/-- `lt[A309958(n), A014963(A336548(n+1))]` -/
def P11863325887127034011.Spec : Prop :=
  ∀ n, (P11863325887127034011.a n : ℤ) = A382413 (n + 1)

end A382413

/-! ## A382413.P11021699822203248039

`lt[A007954(A007093(n)), 1]`
-/

namespace A382413.P11021699822203248039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007093 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382413.P11021699822203248039

namespace A382413

/-- `lt[A007954(A007093(n)), 1]` -/
def P11021699822203248039.Spec : Prop :=
  ∀ n, (P11021699822203248039.a n : ℤ) = A382413 (n + 1)

end A382413

/-! ## A382413.P10216775828860654447

`lt[A309958(n), A341865(A157677(n+1))]`
-/

namespace A382413.P10216775828860654447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341865 (A157677 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382413.P10216775828860654447

namespace A382413

/-- `lt[A309958(n), A341865(A157677(n+1))]` -/
def P10216775828860654447.Spec : Prop :=
  ∀ n, (P10216775828860654447.a n : ℤ) = A382413 (n + 1)

end A382413

/-!
# A382415: Numbers with at least one zero in their base-5 representation.

The programs for A382415, the canonical program `A382415.P7885958803409723842` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382415 has offset 1).

The definition of A382415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382415.P7885958803409723842

`comp[A023721(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382415

/-- `comp[A023721(n+1)]` -/
def P7885958803409723842.Spec : Prop :=
  ∀ n, (P7885958803409723842.a n : ℤ) = A382415 (n + 1)

theorem P7885958803409723842.correct : P7885958803409723842.Spec := by
  intro n
  simp only [A382415, Nat.add_sub_cancel]

end A382415

/-! ## A382415.P13921879485521104882

`eq[0, A309956(n)]`
-/

namespace A382415.P13921879485521104882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382415.P13921879485521104882

namespace A382415

/-- `eq[0, A309956(n)]` -/
def P13921879485521104882.Spec : Prop :=
  ∀ n, (P13921879485521104882.a n : ℤ) = A382415 (n + 1)

end A382415

/-! ## A382415.P13288969205870685318

`eq[A037899(n), A190594(n)]`
-/

namespace A382415.P13288969205870685318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382415.P13288969205870685318

namespace A382415

/-- `eq[A037899(n), A190594(n)]` -/
def P13288969205870685318.Spec : Prop :=
  ∀ n, (P13288969205870685318.a n : ℤ) = A382415 (n + 1)

end A382415

/-! ## A382415.P10526598548963978122

`lt[A030104(A319653(n)), A028310(n)]`
-/

namespace A382415.P10526598548963978122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A319653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382415.P10526598548963978122

namespace A382415

/-- `lt[A030104(A319653(n)), A028310(n)]` -/
def P10526598548963978122.Spec : Prop :=
  ∀ n, (P10526598548963978122.a n : ℤ) = A382415 (n + 1)

end A382415

/-! ## A382415.P5680389875409051357

`eq[0, A007954(A001744(n+1))]`
-/

namespace A382415.P5680389875409051357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382415.P5680389875409051357

namespace A382415

/-- `eq[0, A007954(A001744(n+1))]` -/
def P5680389875409051357.Spec : Prop :=
  ∀ n, (P5680389875409051357.a n : ℤ) = A382415 (n + 1)

end A382415

/-! ## A382415.P13337397086877439471

`eq[0, A007954(A014263(n+1))]`
-/

namespace A382415.P13337397086877439471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382415.P13337397086877439471

namespace A382415

/-- `eq[0, A007954(A014263(n+1))]` -/
def P13337397086877439471.Spec : Prop :=
  ∀ n, (P13337397086877439471.a n : ℤ) = A382415 (n + 1)

end A382415

/-!
# A382416: Numbers with at least one zero in their base-6 representation.

The programs for A382416, the canonical program `A382416.P15268872696336261264` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382416 has offset 1).

The definition of A382416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382416.P15268872696336261264

`comp[A248910(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382416

/-- `comp[A248910(n+1)]` -/
def P15268872696336261264.Spec : Prop :=
  ∀ n, (P15268872696336261264.a n : ℤ) = A382416 (n + 1)

theorem P15268872696336261264.correct : P15268872696336261264.Spec := by
  intro n
  simp only [A382416, Nat.add_sub_cancel]

end A382416

/-! ## A382416.P16354297463114012379

`eq[0, A309957(n)]`
-/

namespace A382416.P16354297463114012379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382416.P16354297463114012379

namespace A382416

/-- `eq[0, A309957(n)]` -/
def P16354297463114012379.Spec : Prop :=
  ∀ n, (P16354297463114012379.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P2288683590643342471

`eq[A037900(n), A190595(n)]`
-/

namespace A382416.P2288683590643342471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382416.P2288683590643342471

namespace A382416

/-- `eq[A037900(n), A190595(n)]` -/
def P2288683590643342471.Spec : Prop :=
  ∀ n, (P2288683590643342471.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P4420706957172541774

`lt[A309957(n), A010060(A120880(n))]`
-/

namespace A382416.P4420706957172541774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382416.P4420706957172541774

namespace A382416

/-- `lt[A309957(n), A010060(A120880(n))]` -/
def P4420706957172541774.Spec : Prop :=
  ∀ n, (P4420706957172541774.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P5653064126849311435

`lt[A007954(A007092(n)), 1]`
-/

namespace A382416.P5653064126849311435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007092 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382416.P5653064126849311435

namespace A382416

/-- `lt[A007954(A007092(n)), 1]` -/
def P5653064126849311435.Spec : Prop :=
  ∀ n, (P5653064126849311435.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P12434306491051059803

`lt[2, A055641(A084984(n+1))*A189834(n)]`
-/

namespace A382416.P12434306491051059803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A084984 (n + 1)).toNat * A189834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382416.P12434306491051059803

namespace A382416

/-- `lt[2, A055641(A084984(n+1))*A189834(n)]` -/
def P12434306491051059803.Spec : Prop :=
  ∀ n, (P12434306491051059803.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P3860231375853056937

`lt[2, A055641(A084984(n+1))*A274535(n+1)]`
-/

namespace A382416.P3860231375853056937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A084984 (n + 1)).toNat * A274535 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382416.P3860231375853056937

namespace A382416

/-- `lt[2, A055641(A084984(n+1))*A274535(n+1)]` -/
def P3860231375853056937.Spec : Prop :=
  ∀ n, (P3860231375853056937.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P13973983082110260789

`lt[2, A055641(A084984(n+1))*A274536(n+1)]`
-/

namespace A382416.P13973983082110260789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A084984 (n + 1)).toNat * A274536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382416.P13973983082110260789

namespace A382416

/-- `lt[2, A055641(A084984(n+1))*A274536(n+1)]` -/
def P13973983082110260789.Spec : Prop :=
  ∀ n, (P13973983082110260789.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P3681190362321766272

`lt[2, A055641(A084984(n+1))*A280651(3*n+2)]`
-/

namespace A382416.P3681190362321766272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A084984 (n + 1)).toNat * A280651 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382416.P3681190362321766272

namespace A382416

/-- `lt[2, A055641(A084984(n+1))*A280651(3*n+2)]` -/
def P3681190362321766272.Spec : Prop :=
  ∀ n, (P3681190362321766272.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P14471984314317697203

`lt[A309957(n), A285572(A000040(n+1))]`
-/

namespace A382416.P14471984314317697203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382416.P14471984314317697203

namespace A382416

/-- `lt[A309957(n), A285572(A000040(n+1))]` -/
def P14471984314317697203.Spec : Prop :=
  ∀ n, (P14471984314317697203.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P9979449201390768255

`lt[A135453(A309957(n)), A046799(n)]`
-/

namespace A382416.P9979449201390768255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (A309957 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382416.P9979449201390768255

namespace A382416

/-- `lt[A135453(A309957(n)), A046799(n)]` -/
def P9979449201390768255.Spec : Prop :=
  ∀ n, (P9979449201390768255.a n : ℤ) = A382416 (n + 1)

end A382416

/-! ## A382416.P15894659426307844621

`lt[A309957(n), A285572(A038133(n+1))]`
-/

namespace A382416.P15894659426307844621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A038133 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382416.P15894659426307844621

namespace A382416

/-- `lt[A309957(n), A285572(A038133(n+1))]` -/
def P15894659426307844621.Spec : Prop :=
  ∀ n, (P15894659426307844621.a n : ℤ) = A382416 (n + 1)

end A382416

/-!
# A382417: Numbers with at least one zero in their base-8 representation.

The programs for A382417, the canonical program `A382417.P4382839370036979022` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382417 has offset 1).

The definition of A382417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382417.P4382839370036979022

`A007814(2*n+3)+comp[A255805(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382417

/-- `A007814(2*n+3)+comp[A255805(n+1)]` -/
def P4382839370036979022.Spec : Prop :=
  ∀ n, P4382839370036979022.a n = A382417 (n + 1)

theorem P4382839370036979022.correct : P4382839370036979022.Spec := by
  intro n
  simp only [A382417, Nat.add_sub_cancel]

end A382417

/-! ## A382417.P10175254675146033640

`eq[0, A309959(n)]`
-/

namespace A382417.P10175254675146033640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382417.P10175254675146033640

namespace A382417

/-- `eq[0, A309959(n)]` -/
def P10175254675146033640.Spec : Prop :=
  ∀ n, (P10175254675146033640.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P12786672493274742895

`lt[A309959(n), A139355(A001316(n))]`
-/

namespace A382417.P12786672493274742895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382417.P12786672493274742895

namespace A382417

/-- `lt[A309959(n), A139355(A001316(n))]` -/
def P12786672493274742895.Spec : Prop :=
  ∀ n, (P12786672493274742895.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P12376395697082199696

`eq[A037902(n), A190597(n)]`
-/

namespace A382417.P12376395697082199696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382417.P12376395697082199696

namespace A382417

/-- `eq[A037902(n), A190597(n)]` -/
def P12376395697082199696.Spec : Prop :=
  ∀ n, (P12376395697082199696.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P17693615421714150535

`lt[A309959(n), A139355(A338803(n))]`
-/

namespace A382417.P17693615421714150535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382417.P17693615421714150535

namespace A382417

/-- `lt[A309959(n), A139355(A338803(n))]` -/
def P17693615421714150535.Spec : Prop :=
  ∀ n, (P17693615421714150535.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P3122715318272082319

`lt[A309788(A037477(n)), 1]`
-/

namespace A382417.P3122715318272082319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037477 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382417.P3122715318272082319

namespace A382417

/-- `lt[A309788(A037477(n)), 1]` -/
def P3122715318272082319.Spec : Prop :=
  ∀ n, (P3122715318272082319.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P8978142126458681427

`lt[A309959(n), A088705(A059905(2*n+1))]`
-/

namespace A382417.P8978142126458681427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A059905 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382417.P8978142126458681427

namespace A382417

/-- `lt[A309959(n), A088705(A059905(2*n+1))]` -/
def P8978142126458681427.Spec : Prop :=
  ∀ n, (P8978142126458681427.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P6608456124174789420

`lt[A309959(n), A268676(A309959(2*n+1))]`
-/

namespace A382417.P6608456124174789420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A309959 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382417.P6608456124174789420

namespace A382417

/-- `lt[A309959(n), A268676(A309959(2*n+1))]` -/
def P6608456124174789420.Spec : Prop :=
  ∀ n, (P6608456124174789420.a n : ℤ) = A382417 (n + 1)

end A382417

/-! ## A382417.P5696590312755166570

`eq[0, A007954(A007094(n))]`
-/

namespace A382417.P5696590312755166570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382417.P5696590312755166570

namespace A382417

/-- `eq[0, A007954(A007094(n))]` -/
def P5696590312755166570.Spec : Prop :=
  ∀ n, (P5696590312755166570.a n : ℤ) = A382417 (n + 1)

end A382417

/-!
# A382418: Numbers with at least one zero in their base-9 representation.

The programs for A382418, the canonical program `A382418.P11791072874298517319` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382418 has offset 1).

The definition of A382418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382418.P11791072874298517319

`eq[0, A309788(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382418

/-- `eq[0, A309788(n)]` -/
def P11791072874298517319.Spec : Prop :=
  ∀ n, (P11791072874298517319.a n : ℤ) = A382418 (n + 1)

theorem P11791072874298517319.correct : P11791072874298517319.Spec := by
  intro n
  simp only [A382418, Nat.add_sub_cancel]

end A382418

/-! ## A382418.P8516372279539937142

`eq[A037903(n), A190598(n)]`
-/

namespace A382418.P8516372279539937142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382418.P8516372279539937142

namespace A382418

/-- `eq[A037903(n), A190598(n)]` -/
def P8516372279539937142.Spec : Prop :=
  ∀ n, (P8516372279539937142.a n : ℤ) = A382418 (n + 1)

end A382418

/-! ## A382418.P51731797895462963

`lt[A030108(A319657(n)), A028310(n)]`
-/

namespace A382418.P51731797895462963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A319657 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382418.P51731797895462963

namespace A382418

/-- `lt[A030108(A319657(n)), A028310(n)]` -/
def P51731797895462963.Spec : Prop :=
  ∀ n, (P51731797895462963.a n : ℤ) = A382418 (n + 1)

end A382418

/-! ## A382418.P7872444424968289083

`eq[0, A054054(A007095(n))]`
-/

namespace A382418.P7872444424968289083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382418.P7872444424968289083

namespace A382418

/-- `eq[0, A054054(A007095(n))]` -/
def P7872444424968289083.Spec : Prop :=
  ∀ n, (P7872444424968289083.a n : ℤ) = A382418 (n + 1)

end A382418

/-! ## A382418.P2906179583337871605

`lt[A007954(A052404(n+1)), 1]`
-/

namespace A382418.P2906179583337871605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A052404 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382418.P2906179583337871605

namespace A382418

/-- `lt[A007954(A052404(n+1)), 1]` -/
def P2906179583337871605.Spec : Prop :=
  ∀ n, (P2906179583337871605.a n : ℤ) = A382418 (n + 1)

end A382418

/-! ## A382418.P6739602439577338564

`lt[A007954(A052421(n+1)), 1]`
-/

namespace A382418.P6739602439577338564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A052421 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382418.P6739602439577338564

namespace A382418

/-- `lt[A007954(A052421(n+1)), 1]` -/
def P6739602439577338564.Spec : Prop :=
  ∀ n, (P6739602439577338564.a n : ℤ) = A382418 (n + 1)

end A382418

/-!
# A382419: The product of exponents in the prime factorization of the cubefree numbers.

The programs for A382419, the canonical program `A382419.P6079477750325987353` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382419 has offset 1).

The definition of A382419 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382419.P6079477750325987353

`2^A376366(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A382419

/-- `2^A376366(n+1)` -/
def P6079477750325987353.Spec : Prop :=
  ∀ n, P6079477750325987353.a n = (A382419 (n + 1) : ℚ)

end A382419

/-! ## A382419.P83303940727476541

`A005361(A004709(n+1))`
-/

namespace A382419.P83303940727476541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A004709 (n + 1)).toNat

end

end A382419.P83303940727476541

namespace A382419

/-- `A005361(A004709(n+1))` -/
def P83303940727476541.Spec : Prop :=
  ∀ n, P83303940727476541.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P10744316920010912016

`∏{e}[A382889(n+1), #]`
-/

namespace A382419.P10744316920010912016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382419.P10744316920010912016

namespace A382419

/-- `∏{e}[A382889(n+1), #]` -/
def P10744316920010912016.Spec : Prop :=
  ∀ n, (P10744316920010912016.a n : ℤ) = A382419 (n + 1)

end A382419

/-! ## A382419.P9841238133176368026

`A002487(A358040(n+1))`
-/

namespace A382419.P9841238133176368026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A358040 (n + 1)).toNat

end

end A382419.P9841238133176368026

namespace A382419

/-- `A002487(A358040(n+1))` -/
def P9841238133176368026.Spec : Prop :=
  ∀ n, P9841238133176368026.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P15372385682980113475

`A000005(A382890(n+1))`
-/

namespace A382419.P15372385682980113475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A382890 (n + 1)).toNat

end

end A382419.P15372385682980113475

namespace A382419

/-- `A000005(A382890(n+1))` -/
def P15372385682980113475.Spec : Prop :=
  ∀ n, P15372385682980113475.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P3935537594091201017

`filter[A382422(n+1), A010060(#)]`
-/

namespace A382419.P3935537594091201017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A382419.P3935537594091201017

namespace A382419

/-- `filter[A382422(n+1), A010060(#)]` -/
def P3935537594091201017.Spec : Prop :=
  ∀ n, P3935537594091201017.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P11843676918332537235

`filter[A382422(n+1), A011655(#)]`
-/

namespace A382419.P11843676918332537235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A382419.P11843676918332537235

namespace A382419

/-- `filter[A382422(n+1), A011655(#)]` -/
def P11843676918332537235.Spec : Prop :=
  ∀ n, P11843676918332537235.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P7271153153783219746

`filter[A382422(n+1), A011751(#)]`
-/

namespace A382419.P7271153153783219746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A382419.P7271153153783219746

namespace A382419

/-- `filter[A382422(n+1), A011751(#)]` -/
def P7271153153783219746.Spec : Prop :=
  ∀ n, P7271153153783219746.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P4193169668167772936

`filter[A382422(n+1), A022928(#)]`
-/

namespace A382419.P4193169668167772936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022928 (f1 j).toNat = 1) n)

end

end A382419.P4193169668167772936

namespace A382419

/-- `filter[A382422(n+1), A022928(#)]` -/
def P4193169668167772936.Spec : Prop :=
  ∀ n, P4193169668167772936.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P2160544977160385392

`A000688(A382889(n+1))`
-/

namespace A382419.P2160544977160385392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A382889 (n + 1)).toNat

end

end A382419.P2160544977160385392

namespace A382419

/-- `A000688(A382889(n+1))` -/
def P2160544977160385392.Spec : Prop :=
  ∀ n, P2160544977160385392.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P15365274553045662134

`A000688(A382890(n+1)²)`
-/

namespace A382419.P15365274553045662134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A382890 (n + 1) ^ 2).toNat

end

end A382419.P15365274553045662134

namespace A382419

/-- `A000688(A382890(n+1)²)` -/
def P15365274553045662134.Spec : Prop :=
  ∀ n, P15365274553045662134.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P15189373237936155569

`filter[A000688(n+1), A076141(#)]`
-/

namespace A382419.P15189373237936155569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A382419.P15189373237936155569

namespace A382419

/-- `filter[A000688(n+1), A076141(#)]` -/
def P15189373237936155569.Spec : Prop :=
  ∀ n, P15189373237936155569.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P12209543716589942168

`A050361(A392365(n+1))`
-/

namespace A382419.P12209543716589942168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A392365 (n + 1)).toNat

end

end A382419.P12209543716589942168

namespace A382419

/-- `A050361(A392365(n+1))` -/
def P12209543716589942168.Spec : Prop :=
  ∀ n, P12209543716589942168.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P3618254547238027016

`A050361(A004709(n+1)²)`
-/

namespace A382419.P3618254547238027016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A004709 (n + 1) ^ 2).toNat

end

end A382419.P3618254547238027016

namespace A382419

/-- `A050361(A004709(n+1)²)` -/
def P3618254547238027016.Spec : Prop :=
  ∀ n, P3618254547238027016.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P10123189223317382361

`A050361(A004709(n+1)*A004709(n+1))`
-/

namespace A382419.P10123189223317382361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A004709 (n + 1) * A004709 (n + 1)).toNat

end

end A382419.P10123189223317382361

namespace A382419

/-- `A050361(A004709(n+1)*A004709(n+1))` -/
def P10123189223317382361.Spec : Prop :=
  ∀ n, P10123189223317382361.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P5134486601250007935

`filter[A112624(n+1), A010055(#)]`
-/

namespace A382419.P5134486601250007935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A382419.P5134486601250007935

namespace A382419

/-- `filter[A112624(n+1), A010055(#)]` -/
def P5134486601250007935.Spec : Prop :=
  ∀ n, P5134486601250007935.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P14571768968480670291

`filter[A112624(n+1), A010060(#)]`
-/

namespace A382419.P14571768968480670291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A382419.P14571768968480670291

namespace A382419

/-- `filter[A112624(n+1), A010060(#)]` -/
def P14571768968480670291.Spec : Prop :=
  ∀ n, P14571768968480670291.a n = A382419 (n + 1)

end A382419

/-! ## A382419.P11205082712087595113

`A034444(A057521(A004709(n+1))²)`
-/

namespace A382419.P11205082712087595113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A057521 (A004709 (n + 1)).toNat ^ 2).toNat

end

end A382419.P11205082712087595113

namespace A382419

/-- `A034444(A057521(A004709(n+1))²)` -/
def P11205082712087595113.Spec : Prop :=
  ∀ n, P11205082712087595113.a n = A382419 (n + 1)

end A382419

/-!
# A382420: The number of non-unitary prime divisors of the noncubefree numbers.

The programs for A382420, the canonical program `A382420.P7625293795778711111` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382420 has offset 1).

The definition of A382420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382420.P7625293795778711111

`A056170(A046099(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A382420

/-- `A056170(A046099(n+1))` -/
def P7625293795778711111.Spec : Prop :=
  ∀ n, P7625293795778711111.a n = A382420 (n + 1)

theorem P7625293795778711111.correct : P7625293795778711111.Spec := by
  intro n
  simp only [A382420, Nat.add_sub_cancel]

end A382420

/-! ## A382420.P17263492056136031187

`A122172(∑{e}[A356232(n+5), #])`
-/

namespace A382420.P17263492056136031187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356232 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122172 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A382420.P17263492056136031187

namespace A382420

/-- `A122172(∑{e}[A356232(n+5), #])` -/
def P17263492056136031187.Spec : Prop :=
  ∀ n, P17263492056136031187.a n = A382420 (n + 1)

end A382420

/-! ## A382420.P2188384258365267912

`A295659(A046099(n+1)²)`
-/

namespace A382420.P2188384258365267912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A046099 (n + 1) ^ 2).toNat

end

end A382420.P2188384258365267912

namespace A382420

/-- `A295659(A046099(n+1)²)` -/
def P2188384258365267912.Spec : Prop :=
  ∀ n, P2188384258365267912.a n = A382420 (n + 1)

end A382420

/-! ## A382420.P8829889654286672959

`A295884(A046099(n+1)²)`
-/

namespace A382420.P8829889654286672959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A046099 (n + 1) ^ 2).toNat

end

end A382420.P8829889654286672959

namespace A382420

/-- `A295884(A046099(n+1)²)` -/
def P8829889654286672959.Spec : Prop :=
  ∀ n, P8829889654286672959.a n = A382420 (n + 1)

end A382420

/-! ## A382420.P13241876474760625952

`A295659(A046099(n+1)*A046099(n+1))`
-/

namespace A382420.P13241876474760625952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A046099 (n + 1) * A046099 (n + 1)).toNat

end

end A382420.P13241876474760625952

namespace A382420

/-- `A295659(A046099(n+1)*A046099(n+1))` -/
def P13241876474760625952.Spec : Prop :=
  ∀ n, P13241876474760625952.a n = A382420 (n + 1)

end A382420

/-!
# A382421: The product of exponents in the prime factorization of the noncubefree numbers.

The programs for A382421, the canonical program `A382421.P17694037240617820596` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382421 has offset 1).

The definition of A382421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A046099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382421.P17694037240617820596

`A005361(A046099(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382421

/-- `A005361(A046099(n+1))` -/
def P17694037240617820596.Spec : Prop :=
  ∀ n, P17694037240617820596.a n = A382421 (n + 1)

theorem P17694037240617820596.correct : P17694037240617820596.Spec := by
  intro n
  simp only [A382421, Nat.add_sub_cancel]

end A382421

/-! ## A382421.P5724156200293014818

`∏{e}[∪[A046101(n+1), A176297(n+1)], #]`
-/

namespace A382421.P5724156200293014818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A382421.P5724156200293014818

namespace A382421

/-- `∏{e}[∪[A046101(n+1), A176297(n+1)], #]` -/
def P5724156200293014818.Spec : Prop :=
  ∀ n, (P5724156200293014818.a n : ℤ) = A382421 (n + 1)

end A382421

/-! ## A382421.P415669865988405304

`∏{e}[∪[A046101(n+1), A366761(n+1)], #]`
-/

namespace A382421.P415669865988405304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A382421.P415669865988405304

namespace A382421

/-- `∏{e}[∪[A046101(n+1), A366761(n+1)], #]` -/
def P415669865988405304.Spec : Prop :=
  ∀ n, (P415669865988405304.a n : ℤ) = A382421 (n + 1)

end A382421

/-! ## A382421.P10566560793359102356

`∏{e}[∪[A295661(n+1), A360723(n+1)], #]`
-/

namespace A382421.P10566560793359102356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A382421.P10566560793359102356

namespace A382421

/-- `∏{e}[∪[A295661(n+1), A360723(n+1)], #]` -/
def P10566560793359102356.Spec : Prop :=
  ∀ n, (P10566560793359102356.a n : ℤ) = A382421 (n + 1)

end A382421

/-! ## A382421.P2874138932092128884

`∏{e}[lt[A212793(n+1), 1]+1, #]`
-/

namespace A382421.P2874138932092128884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A382421.P2874138932092128884

namespace A382421

/-- `∏{e}[lt[A212793(n+1), 1]+1, #]` -/
def P2874138932092128884.Spec : Prop :=
  ∀ n, (P2874138932092128884.a n : ℤ) = A382421 (n + 1)

end A382421

/-! ## A382421.P8959175840796971006

`∏{e}[lt[A328722(n+1)², 1]+1, #]`
-/

namespace A382421.P8959175840796971006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328722 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A382421.P8959175840796971006

namespace A382421

/-- `∏{e}[lt[A328722(n+1)², 1]+1, #]` -/
def P8959175840796971006.Spec : Prop :=
  ∀ n, (P8959175840796971006.a n : ℤ) = A382421 (n + 1)

end A382421

/-! ## A382421.P4847696557645890315

`∏{e}[eq[A000203(n+1), A323403(n+1)]+1, #]`
-/

namespace A382421.P4847696557645890315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A382421.P4847696557645890315

namespace A382421

/-- `∏{e}[eq[A000203(n+1), A323403(n+1)]+1, #]` -/
def P4847696557645890315.Spec : Prop :=
  ∀ n, (P4847696557645890315.a n : ℤ) = A382421 (n + 1)

end A382421

/-!
# A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

The programs for A382422, the canonical program `A382422.P18312410070460850629` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382422 has offset 1).

The definition of A382422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A046100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382422.P18312410070460850629

`A005361(A046100(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382422

/-- `A005361(A046100(n+1))` -/
def P18312410070460850629.Spec : Prop :=
  ∀ n, P18312410070460850629.a n = A382422 (n + 1)

theorem P18312410070460850629.correct : P18312410070460850629.Spec := by
  intro n
  simp only [A382422, Nat.add_sub_cancel]

end A382422

/-! ## A382422.P6021198360927287297

`2^A382423(n+1)*3^A382424(n+1)`
-/

namespace A382422.P6021198360927287297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382423 (n + 1) : ℤ) * (3 : ℚ) ^ (A382424 (n + 1) : ℤ)

end

end A382422.P6021198360927287297

namespace A382422

/-- `2^A382423(n+1)*3^A382424(n+1)` -/
def P6021198360927287297.Spec : Prop :=
  ∀ n, P6021198360927287297.a n = (A382422 (n + 1) : ℚ)

end A382422

/-! ## A382422.P1641146116885614382

`∏{e}[A382906(n+1), #]`
-/

namespace A382422.P1641146116885614382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382422.P1641146116885614382

namespace A382422

/-- `∏{e}[A382906(n+1), #]` -/
def P1641146116885614382.Spec : Prop :=
  ∀ n, (P1641146116885614382.a n : ℤ) = A382422 (n + 1)

end A382422

/-! ## A382422.P10084292399644629423

`A000688(A382906(n+1))`
-/

namespace A382422.P10084292399644629423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A382906 (n + 1)).toNat

end

end A382422.P10084292399644629423

namespace A382422

/-- `A000688(A382906(n+1))` -/
def P10084292399644629423.Spec : Prop :=
  ∀ n, P10084292399644629423.a n = A382422 (n + 1)

end A382422

/-! ## A382422.P16317094844003703927

`filter[A000688(n+1), A065333(#)]`
-/

namespace A382422.P16317094844003703927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A382422.P16317094844003703927

namespace A382422

/-- `filter[A000688(n+1), A065333(#)]` -/
def P16317094844003703927.Spec : Prop :=
  ∀ n, P16317094844003703927.a n = A382422 (n + 1)

end A382422

/-! ## A382422.P779006680799874458

`A095691(A046100(2*n+1-n))`
-/

namespace A382422.P779006680799874458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (A046100 (2 * n + 1 - n)).toNat

end

end A382422.P779006680799874458

namespace A382422

/-- `A095691(A046100(2*n+1-n))` -/
def P779006680799874458.Spec : Prop :=
  ∀ n, P779006680799874458.a n = A382422 (n + 1)

end A382422

/-! ## A382422.P8021728107794641710

`A365333(A382906(n+1)²)`
-/

namespace A382422.P8021728107794641710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A382906 (n + 1) ^ 2).toNat

end

end A382422.P8021728107794641710

namespace A382422

/-- `A365333(A382906(n+1)²)` -/
def P8021728107794641710.Spec : Prop :=
  ∀ n, P8021728107794641710.a n = A382422 (n + 1)

end A382422

/-! ## A382422.P7003297864300441967

`A365333(A382906(n+1)*A382906(n+1))`
-/

namespace A382422.P7003297864300441967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A382906 (n + 1) * A382906 (n + 1)).toNat

end

end A382422.P7003297864300441967

namespace A382422

/-- `A365333(A382906(n+1)*A382906(n+1))` -/
def P7003297864300441967.Spec : Prop :=
  ∀ n, P7003297864300441967.a n = A382422 (n + 1)

end A382422

/-! ## A382422.P16164167111581020329

`A061704(A046100(n+1)²)`
-/

namespace A382422.P16164167111581020329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A046100 (n + 1) ^ 2).toNat

end

end A382422.P16164167111581020329

namespace A382422

/-- `A061704(A046100(n+1)²)` -/
def P16164167111581020329.Spec : Prop :=
  ∀ n, P16164167111581020329.a n = A382422 (n + 1)

end A382422

/-!
# A382423: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 2.

The programs for A382423, the canonical program `A382423.P17194027125548020755` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382423 has offset 1).

The definition of A382423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382423.P13381229632250230904

`A382425(n+1)-A382424(n+1)`
-/

namespace A382423.P13381229632250230904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382425 (n + 1) - A382424 (n + 1)

end

end A382423.P13381229632250230904

namespace A382423

/-- `A382425(n+1)-A382424(n+1)` -/
def P13381229632250230904.Spec : Prop :=
  ∀ n, P13381229632250230904.a n = A382423 (n + 1)

end A382423

/-! ## A382423.P17194027125548020755

`A369427(A046100(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382423

/-- `A369427(A046100(n+1))` -/
def P17194027125548020755.Spec : Prop :=
  ∀ n, P17194027125548020755.a n = A382423 (n + 1)

theorem P17194027125548020755.correct : P17194027125548020755.Spec := by
  intro n
  simp only [A382423, Nat.add_sub_cancel]

end A382423

/-! ## A382423.P3912770138794088159

`val(A382422(n+1), 2)`
-/

namespace A382423.P3912770138794088159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A382422 (n + 1)).toNat 2

end

end A382423.P3912770138794088159

namespace A382423

/-- `val(A382422(n+1), 2)` -/
def P3912770138794088159.Spec : Prop :=
  ∀ n, (P3912770138794088159.a n : ℤ) = A382423 (n + 1)

end A382423

/-! ## A382423.P12785533987321120308

`A162641(A382906(n+1))`
-/

namespace A382423.P12785533987321120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A382906 (n + 1)).toNat

end

end A382423.P12785533987321120308

namespace A382423

/-- `A162641(A382906(n+1))` -/
def P12785533987321120308.Spec : Prop :=
  ∀ n, P12785533987321120308.a n = A382423 (n + 1)

end A382423

/-! ## A382423.P7163176970209038848

`A046660(A382903(n+1))`
-/

namespace A382423.P7163176970209038848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A382903 (n + 1)).toNat

end

end A382423.P7163176970209038848

namespace A382423

/-- `A046660(A382903(n+1))` -/
def P7163176970209038848.Spec : Prop :=
  ∀ n, P7163176970209038848.a n = A382423 (n + 1)

end A382423

/-!
# A382424: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 3.

The programs for A382424, the canonical program `A382424.P3187914924083199922` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382424 has offset 1).

The definition of A382424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A295883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382424.P3187914924083199922

`A295883(A046100(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A382424

/-- `A295883(A046100(n+1))` -/
def P3187914924083199922.Spec : Prop :=
  ∀ n, P3187914924083199922.a n = A382424 (n + 1)

theorem P3187914924083199922.correct : P3187914924083199922.Spec := by
  intro n
  simp only [A382424, Nat.add_sub_cancel]

end A382424

/-! ## A382424.P14492856965925637191

`A382425(n+1)-A382423(n+1)`
-/

namespace A382424.P14492856965925637191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382425 (n + 1) - A382423 (n + 1)

end

end A382424.P14492856965925637191

namespace A382424

/-- `A382425(n+1)-A382423(n+1)` -/
def P14492856965925637191.Spec : Prop :=
  ∀ n, P14492856965925637191.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P2801705688538203452

`val(∏{e}[A382906(n+1), #], 3)`
-/

namespace A382424.P2801705688538203452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) 3

end

end A382424.P2801705688538203452

namespace A382424

/-- `val(∏{e}[A382906(n+1), #], 3)` -/
def P2801705688538203452.Spec : Prop :=
  ∀ n, (P2801705688538203452.a n : ℤ) = A382424 (n + 1)

end A382424

/-! ## A382424.P8922075509195361393

`A056170(A046100(n+1))-A382423(n+1)`
-/

namespace A382424.P8922075509195361393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046100 (n + 1)).toNat - A382423 (n + 1)

end

end A382424.P8922075509195361393

namespace A382424

/-- `A056170(A046100(n+1))-A382423(n+1)` -/
def P8922075509195361393.Spec : Prop :=
  ∀ n, P8922075509195361393.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P5975544285347311328

`A382425(n+1)-A369427(A046100(n+1))`
-/

namespace A382424.P5975544285347311328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382425 (n + 1) - A369427 (A046100 (n + 1)).toNat

end

end A382424.P5975544285347311328

namespace A382424

/-- `A382425(n+1)-A369427(A046100(n+1))` -/
def P5975544285347311328.Spec : Prop :=
  ∀ n, P5975544285347311328.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P4511496416081338096

`A380397(A113061(A046100(n+1))²)`
-/

namespace A382424.P4511496416081338096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380397 (A113061 (A046100 (n + 1)).toNat ^ 2).toNat

end

end A382424.P4511496416081338096

namespace A382424

/-- `A380397(A113061(A046100(n+1))²)` -/
def P4511496416081338096.Spec : Prop :=
  ∀ n, P4511496416081338096.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P789864847718198526

`A380397(A380396(A046100(n+1))²)`
-/

namespace A382424.P789864847718198526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380397 (A380396 (A046100 (n + 1)).toNat ^ 2).toNat

end

end A382424.P789864847718198526

namespace A382424

/-- `A380397(A380396(A046100(n+1))²)` -/
def P789864847718198526.Spec : Prop :=
  ∀ n, P789864847718198526.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P1095654280708673645

`filter[A127708(n+1), A010052(#)]`
-/

namespace A382424.P1095654280708673645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A382424.P1095654280708673645

namespace A382424

/-- `filter[A127708(n+1), A010052(#)]` -/
def P1095654280708673645.Spec : Prop :=
  ∀ n, P1095654280708673645.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P2666203266141478842

`filter[A127708(n+1), A010054(#)]`
-/

namespace A382424.P2666203266141478842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A382424.P2666203266141478842

namespace A382424

/-- `filter[A127708(n+1), A010054(#)]` -/
def P2666203266141478842.Spec : Prop :=
  ∀ n, P2666203266141478842.a n = A382424 (n + 1)

end A382424

/-! ## A382424.P17928850105820176487

`filter[A127708(n+1), A010057(#)]`
-/

namespace A382424.P17928850105820176487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010057 (f1 j).toNat = 1) n)

end

end A382424.P17928850105820176487

namespace A382424

/-- `filter[A127708(n+1), A010057(#)]` -/
def P17928850105820176487.Spec : Prop :=
  ∀ n, P17928850105820176487.a n = A382424 (n + 1)

end A382424

/-!
# A382425: The number of non-unitary prime divisors of the biquadratefree numbers.

The programs for A382425, the canonical program `A382425.P14354733787958842001` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382425 has offset 1).

The definition of A382425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382423, A382424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382425.P14354733787958842001

`A382423(n+1)+A382424(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A382425

/-- `A382423(n+1)+A382424(n+1)` -/
def P14354733787958842001.Spec : Prop :=
  ∀ n, P14354733787958842001.a n = A382425 (n + 1)

theorem P14354733787958842001.correct : P14354733787958842001.Spec := by
  intro n
  simp only [A382425, Nat.add_sub_cancel]

end A382425

/-! ## A382425.P1921337466986841071

`A056170(A046100(n+1))`
-/

namespace A382425.P1921337466986841071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046100 (n + 1)).toNat

end

end A382425.P1921337466986841071

namespace A382425

/-- `A056170(A046100(n+1))` -/
def P1921337466986841071.Spec : Prop :=
  ∀ n, P1921337466986841071.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P9289381179281190131

`log2(A394425(n+1))`
-/

namespace A382425.P9289381179281190131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A394425 (n + 1) : ℝ)

end

end A382425.P9289381179281190131

namespace A382425

/-- `log2(A394425(n+1))` -/
def P9289381179281190131.Spec : Prop :=
  ∀ n, P9289381179281190131.a n = (A382425 (n + 1) : ℝ)

end A382425

/-! ## A382425.P5163135368186986625

`∑{e}[A382422(n+1), #]`
-/

namespace A382425.P5163135368186986625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382425.P5163135368186986625

namespace A382425

/-- `∑{e}[A382422(n+1), #]` -/
def P5163135368186986625.Spec : Prop :=
  ∀ n, (P5163135368186986625.a n : ℤ) = A382425 (n + 1)

end A382425

/-! ## A382425.P12011604569601943505

`A001222(A382422(n+1))`
-/

namespace A382425.P12011604569601943505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A382422 (n + 1)).toNat

end

end A382425.P12011604569601943505

namespace A382425

/-- `A001222(A382422(n+1))` -/
def P12011604569601943505.Spec : Prop :=
  ∀ n, P12011604569601943505.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P2034117967827881978

`A001221(A382906(n+1))`
-/

namespace A382425.P2034117967827881978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A382906 (n + 1)).toNat

end

end A382425.P2034117967827881978

namespace A382425

/-- `A001221(A382906(n+1))` -/
def P2034117967827881978.Spec : Prop :=
  ∀ n, P2034117967827881978.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P9233181790986367872

`A382423(n+1)+A295883(A046100(n+1))`
-/

namespace A382425.P9233181790986367872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382423 (n + 1) + A295883 (A046100 (n + 1)).toNat

end

end A382425.P9233181790986367872

namespace A382425

/-- `A382423(n+1)+A295883(A046100(n+1))` -/
def P9233181790986367872.Spec : Prop :=
  ∀ n, P9233181790986367872.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P17513544926122000944

`A046660(A382902(n+1))`
-/

namespace A382425.P17513544926122000944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A382902 (n + 1)).toNat

end

end A382425.P17513544926122000944

namespace A382425

/-- `A046660(A382902(n+1))` -/
def P17513544926122000944.Spec : Prop :=
  ∀ n, P17513544926122000944.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P5536534658288498955

`A382424(n+1)+A369427(A046100(n+1))`
-/

namespace A382425.P5536534658288498955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382424 (n + 1) + A369427 (A046100 (n + 1)).toNat

end

end A382425.P5536534658288498955

namespace A382425

/-- `A382424(n+1)+A369427(A046100(n+1))` -/
def P5536534658288498955.Spec : Prop :=
  ∀ n, P5536534658288498955.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P11643567923126495117

`A295659(A046100(n+1)²)`
-/

namespace A382425.P11643567923126495117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A046100 (n + 1) ^ 2).toNat

end

end A382425.P11643567923126495117

namespace A382425

/-- `A295659(A046100(n+1)²)` -/
def P11643567923126495117.Spec : Prop :=
  ∀ n, P11643567923126495117.a n = A382425 (n + 1)

end A382425

/-! ## A382425.P9366724639048991923

`A295659(A046100(n+1)*A046100(n+1))`
-/

namespace A382425.P9366724639048991923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A046100 (n + 1) * A046100 (n + 1)).toNat

end

end A382425.P9366724639048991923

namespace A382425

/-- `A295659(A046100(n+1)*A046100(n+1))` -/
def P9366724639048991923.Spec : Prop :=
  ∀ n, P9366724639048991923.a n = A382425 (n + 1)

end A382425

/-!
# A382426: MM-numbers of sets of constant multisets with distinct sums.

The programs for A382426, there is no canonical definition to state claims against.
-/

/-! ## A382426.P18321970639164037218

`∩[A302492(n+1), A326535(n+1)]`
-/

namespace A382426.P18321970639164037218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382426.P18321970639164037218

/-! ## A382426.P11153139894423938949

`∩[A302496(n+1), A326535(n+1)]`
-/

namespace A382426.P11153139894423938949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382426.P11153139894423938949

/-! ## A382426.P8417400774431579599

`∩[A031981(n+1), A302496(n+1)]`
-/

namespace A382426.P8417400774431579599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382426.P8417400774431579599

/-! ## A382426.P9717785648753028760

`∩[A302496(n+1), A325389(n+1)]`
-/

namespace A382426.P9717785648753028760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382426.P9717785648753028760

/-! ## A382426.P15834545775805105368

`∩[A302496(n+1), A390364(n+1)]`
-/

namespace A382426.P15834545775805105368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382426.P15834545775805105368

/-!
# A382427: Number of integer partitions of n that can be partitioned into constant blocks with distinct sums.

The programs for A382427, there is no canonical definition to state claims against.
-/

/-! ## A382427.P18360762579894778271

`A000041(n)-A381717(n)`
-/

namespace A382427.P18360762579894778271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A381717 n

end

end A382427.P18360762579894778271

/-! ## A382427.P3814216557458161655

`A213598(n)-A381717(n)`
-/

namespace A382427.P3814216557458161655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A381717 n

end

end A382427.P3814216557458161655

/-! ## A382427.P950640870064798386

`A330643(n)-A381717(n)`
-/

namespace A382427.P950640870064798386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A381717 n

end

end A382427.P950640870064798386

/-! ## A382427.P4358038358538863856

`∑[A002865(n)]-A381717(n)`
-/

namespace A382427.P4358038358538863856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381717 n

end

end A382427.P4358038358538863856

/-! ## A382427.P457926783797440797

`A004526(A139582(n))-A381717(n)`
-/

namespace A382427.P457926783797440797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A139582 n).toNat - A381717 n

end

end A382427.P457926783797440797

/-!
# A382429: Number of normal multiset partitions of weight n into sets with a common sum.

The programs for A382429, there is no canonical definition to state claims against.
-/

/-! ## A382429.P17261002742248025134

`A325396(A103481(n))`
-/

namespace A382429.P17261002742248025134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (A103481 n).toNat

end

end A382429.P17261002742248025134

/-! ## A382429.P5194430552486739818

`A305398(A113405(n+1))`
-/

namespace A382429.P5194430552486739818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305398 (A113405 (n + 1)).toNat

end

end A382429.P5194430552486739818

/-! ## A382429.P3655816561873606464

`A000196(∑[∑[A099152(n)]])`
-/

namespace A382429.P3655816561873606464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099152 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382429.P3655816561873606464

/-! ## A382429.P2147114606533751771

`A135660(A382829(n))+A036018(n+1)`
-/

namespace A382429.P2147114606533751771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A382829 n).toNat + A036018 (n + 1)

end

end A382429.P2147114606533751771

/-! ## A382429.P16808751063988661216

`A123612(n)-A324572(A127435(n+1))`
-/

namespace A382429.P16808751063988661216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123612 n - A324572 (A127435 (n + 1)).toNat

end

end A382429.P16808751063988661216

/-!
# A382430: Number of non-isomorphic finite multisets of size n that cannot be partitioned into sets with distinct sums.

The programs for A382430, there is no canonical definition to state claims against.
-/

/-! ## A382430.P10335120106357304078

`A259361(A027154(n))`
-/

namespace A382430.P10335120106357304078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A027154 n).toNat

end

end A382430.P10335120106357304078

/-! ## A382430.P7207686718767229736

`A308754(A108796(n+1))`
-/

namespace A382430.P7207686718767229736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A108796 (n + 1)).toNat

end

end A382430.P7207686718767229736

/-! ## A382430.P5108612980447839968

`A335467(A115593(n+1))`
-/

namespace A382430.P5108612980447839968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A115593 (n + 1)).toNat

end

end A382430.P5108612980447839968

/-! ## A382430.P15260234392369672310

`A244229(A240206(n+1))`
-/

namespace A382430.P15260234392369672310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244229 (A240206 (n + 1)).toNat

end

end A382430.P15260234392369672310

/-! ## A382430.P11895647085914378847

`A356899(A241772(n+1))`
-/

namespace A382430.P11895647085914378847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356899 (A241772 (n + 1)).toNat

end

end A382430.P11895647085914378847

/-!
# A382432: a(n) = A074829(2*n-1, n).

The programs for A382432, there is no canonical definition to state claims against.
-/

/-! ## A382432.P11268986047534422817

`Δ[A176085(n)]`
-/

namespace A382432.P11268986047534422817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382432.P11268986047534422817

/-! ## A382432.P3538245020579708550

`A371870(n)+A257838(n)`
-/

namespace A382432.P3538245020579708550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371870 n + A257838 n

end

end A382432.P3538245020579708550

/-! ## A382432.P3432716448903709745

`A277287(n)-A109262(n)`
-/

namespace A382432.P3432716448903709745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A109262 n

end

end A382432.P3432716448903709745

/-! ## A382432.P8293189105760602303

`A176085(n+1)-A176085(n)`
-/

namespace A382432.P8293189105760602303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) - A176085 n

end

end A382432.P8293189105760602303

/-! ## A382432.P4947950761537059327

`A074829((n+1)²+n²)`
-/

namespace A382432.P4947950761537059327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 ((n + 1) ^ 2 + n ^ 2)

end

end A382432.P4947950761537059327

/-! ## A382432.P17571427759480022451

`Δ[A108617(2*n²)]`
-/

namespace A382432.P17571427759480022451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382432.P17571427759480022451

/-!
# A382433: a(n) = S(6,n), where S(r,n) = Sum_{k=0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A382433, there is no canonical definition to state claims against.
-/

/-! ## A382433.P17717218289249449978

`ceil(A382435(n)/2)`
-/

namespace A382433.P17717218289249449978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A382435 n : ℚ) / 2⌉

end

end A382433.P17717218289249449978

/-! ## A382433.P4437398729541931627

`A357824(A055998(n+5)-4)`
-/

namespace A382433.P4437398729541931627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357824 (A055998 (n + 5) - 4).toNat

end

end A382433.P4437398729541931627

/-!
# A382434: a(n) = Sum_{k=0..n} ( binomial(n,k) - binomial(n,k-1) )^4.

The programs for A382434, there is no canonical definition to state claims against.
-/

/-! ## A382434.P4264713124255432971

`2*A129123(n)-1`
-/

namespace A382434.P4264713124255432971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129123 n - 1

end

end A382434.P4264713124255432971

/-! ## A382434.P7052656768451374950

`A004273(A129123(n))`
-/

namespace A382434.P7052656768451374950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A129123 n).toNat

end

end A382434.P7052656768451374950

/-! ## A382434.P3452925723064209216

`A005843(A129123(n))-A124279(n)`
-/

namespace A382434.P3452925723064209216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A129123 n).toNat - A124279 n

end

end A382434.P3452925723064209216

/-!
# A382435: a(n) = Sum_{k=0..n} ( binomial(n,k) - binomial(n,k-1) )^6.

The programs for A382435, there is no canonical definition to state claims against.
-/

/-! ## A382435.P2772007916833689525

`2*A382433(n)-1`
-/

namespace A382435.P2772007916833689525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A382433 n - 1

end

end A382435.P2772007916833689525

/-!
# A382436: Triangle read by rows, defined by the two-variable g.f. 1/(1 - (y + 1)*x - y*x^2 - (y^2 + y)*x^3).

The programs for A382436, there is no canonical definition to state claims against.
-/

/-! ## A382436.P1222882040320388949

`A087739(A143007(n))`
-/

namespace A382436.P1222882040320388949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A143007 n).toNat

end

end A382436.P1222882040320388949

/-! ## A382436.P16771426443825188439

`A120565(A119307(n))`
-/

namespace A382436.P16771426443825188439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A119307 n).toNat

end

end A382436.P16771426443825188439

/-! ## A382436.P1762027092430896743

`A195872(A174117(n))`
-/

namespace A382436.P1762027092430896743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195872 (A174117 n).toNat

end

end A382436.P1762027092430896743

/-! ## A382436.P16413467449433377416

`A230406(A157641(n))`
-/

namespace A382436.P16413467449433377416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 (A157641 n).toNat

end

end A382436.P16413467449433377416

/-! ## A382436.P17006169651998216363

`A282426(A157156(n))`
-/

namespace A382436.P17006169651998216363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282426 (A157156 n).toNat

end

end A382436.P17006169651998216363

/-!
# A382437: a(n) = a(n-1)^2 + 4 * a(n-1), with a(0) = 2.

The programs for A382437, the canonical program `A382437.P1041316407920000600` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382437 has offset 0).

The definition of A382437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+4*a(n-1)` (program `A382437.P1041316407920000600`, by `A382437.P1041316407920000600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382437.P1041316407920000600

`a(n-1)²+4*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A382437

/-- `a(n-1)²+4*a(n-1)` -/
def P1041316407920000600.Spec : Prop :=
  ∀ n, (P1041316407920000600.a n : ℤ) = A382437 n

theorem P1041316407920000600.correct : P1041316407920000600.Spec := by
  intro n
  simp only [A382437]

end A382437

/-! ## A382437.P5317886031555073373

`A003010(n)-2`
-/

namespace A382437.P5317886031555073373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003010 n - 2

end

end A382437.P5317886031555073373

namespace A382437

/-- `A003010(n)-2` -/
def P5317886031555073373.Spec : Prop :=
  ∀ n, P5317886031555073373.a n = A382437 n

end A382437

/-! ## A382437.P15659753914567033547

`(a(n-1)+2)²-4` with `a(0)=2`
-/

namespace A382437.P15659753914567033547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + 2) ^ 2 - 4

end

end A382437.P15659753914567033547

namespace A382437

/-- `(a(n-1)+2)²-4` -/
def P15659753914567033547.Spec : Prop :=
  ∀ n, P15659753914567033547.a n = A382437 n

end A382437

/-! ## A382437.P16127321665854869945

`(a(n-1)+4)*a(n-1)` with `a(0)=2`
-/

namespace A382437.P16127321665854869945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + 4) * a (n - 1)

end

end A382437.P16127321665854869945

namespace A382437

/-- `(a(n-1)+4)*a(n-1)` -/
def P16127321665854869945.Spec : Prop :=
  ∀ n, (P16127321665854869945.a n : ℤ) = A382437 n

theorem P16127321665854869945.correct : P16127321665854869945.Spec := by
  intro n
  simp only [A382437, Nat.add_sub_cancel, A382437.P16127321665854869945.a, A382437.P1041316407920000600.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A382437

/-!
# A382438: Numbers k in A024619 such that all residues r (mod k) in row k of A381801 are such that rad(r) divides k, where rad = A007947.

The programs for A382438, there is no canonical definition to state claims against.
-/

/-! ## A382438.P1841287773217097158

`∩[A381750(A005520(n+1)), A381750(n+1)]`
-/

namespace A382438.P1841287773217097158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (A005520 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382438.P1841287773217097158

/-!
# A382439: Triangle read by rows: defined by the two-variable g.f. (x^3*y^2 + x^3*y - x^2*y + 1) / (1 - x^2*y - x*y - x).

The programs for A382439, there is no canonical definition to state claims against.
-/

/-! ## A382439.P3131583193802397107

`A382448(n)+A382448(n)-A382444(n)`
-/

namespace A382439.P3131583193802397107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382448 n + (A382448 n - A382444 n)

end

end A382439.P3131583193802397107

/-! ## A382439.P7697771026148738505

`A094838(A131061(n))`
-/

namespace A382439.P7697771026148738505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (A131061 n).toNat

end

end A382439.P7697771026148738505

/-! ## A382439.P11665293379859271931

`A061555(A174410(n))`
-/

namespace A382439.P11665293379859271931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061555 (A174410 n).toNat

end

end A382439.P11665293379859271931

/-! ## A382439.P17422701404068739866

`A257317(A176429(n))`
-/

namespace A382439.P17422701404068739866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257317 (A176429 n).toNat

end

end A382439.P17422701404068739866

/-! ## A382439.P9170896378374243306

`A307119(A173881(n))`
-/

namespace A382439.P9170896378374243306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307119 (A173881 n).toNat

end

end A382439.P9170896378374243306

/-!
# A382440: Number of rooted full binary trees with n internal nodes, up to their multiset of subtree sizes.

The programs for A382440, there is no canonical definition to state claims against.
-/

/-! ## A382440.P18094534744684989253

`A305194(A096228(n+2))`
-/

namespace A382440.P18094534744684989253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A096228 (n + 2)).toNat

end

end A382440.P18094534744684989253

/-! ## A382440.P3347488249244776514

`A247139(n+1)-A261990(A216653(n+5))`
-/

namespace A382440.P3347488249244776514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247139 (n + 1) - A261990 (A216653 (n + 5)).toNat

end

end A382440.P3347488249244776514

/-!
# A382441: Lexicographically earliest sequence of positive integers such that for any n > 1, a(n) does not divide any of the positive numbers whose decimal expansion appears as a contiguous subword in the concatenation of the previous terms.

The programs for A382441, there is no canonical definition to state claims against.
-/

/-! ## A382441.P8349421134061512769

`A186306(lt[A165257(n+1), A165265(n)])`
-/

namespace A382441.P8349421134061512769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186306 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382441.P8349421134061512769

/-!
# A382442: Lexicographically earliest sequence of positive integers such that for any n > 1, a(n) does not divide any of the positive numbers whose binary expansion appears as a contiguous subword in the concatenation of the previous terms.

The programs for A382442, there is no canonical definition to state claims against.
-/

/-! ## A382442.P18379912953584592500

`A324525(n+1)-A324539(A001349(n))`
-/

namespace A382442.P18379912953584592500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1) - A324539 (A001349 n).toNat

end

end A382442.P18379912953584592500

/-! ## A382442.P1464109619800242690

`A324525(n+1)-A057212(A362650(n))`
-/

namespace A382442.P1464109619800242690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1) - A057212 (A362650 n).toNat

end

end A382442.P1464109619800242690

/-! ## A382442.P13263121943513253408

`lt[A173921(A335458(n)), A255890(n+4)]`
-/

namespace A382442.P13263121943513253408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173921 (A335458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255890 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382442.P13263121943513253408

/-! ## A382442.P13625731414657229727

`A324525(n+1)-A010051(A097156(3*(n+1)))`
-/

namespace A382442.P13625731414657229727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1) - A010051 (A097156 (3 * (n + 1))).toNat

end

end A382442.P13625731414657229727

/-! ## A382442.P6596651498724836855

`A324525(n+1)-A001899(A000045(2*n+3))`
-/

namespace A382442.P6596651498724836855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1) - A001899 (A000045 (2 * n + 3)).toNat

end

end A382442.P6596651498724836855

/-!
# A382443: a(n) = Sum_{k=0..n} binomial(n,k) * ( binomial(n,k) - binomial(n,k-1) )^4.

The programs for A382443, there is no canonical definition to state claims against.
-/

/-! ## A382443.P910644707066088133

`A249009(A054413(n)+5)`
-/

namespace A382443.P910644707066088133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249009 (A054413 n + 5).toNat

end

end A382443.P910644707066088133

/-!
# A382444: Triangle read by rows, defined by the two-variable g.f. (1 + y*x^2 + (y^2 + y)*x^3)/(1-(1+y)*x-y*x^2).

The programs for A382444, there is no canonical definition to state claims against.
-/

/-! ## A382444.P2739539609457914385

`A196266(A081578(n))`
-/

namespace A382444.P2739539609457914385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A081578 n).toNat

end

end A382444.P2739539609457914385

/-! ## A382444.P10762922727324863545

`A194848(A202750(n))`
-/

namespace A382444.P10762922727324863545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 (A202750 n).toNat

end

end A382444.P10762922727324863545

/-! ## A382444.P6634224342141065296

`A194848(A007318(n)^4)`
-/

namespace A382444.P6634224342141065296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 (A007318 n ^ 4).toNat

end

end A382444.P6634224342141065296

/-! ## A382444.P18415005847879724048

`A194848(A007318(n)²²)`
-/

namespace A382444.P18415005847879724048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 ((A007318 n ^ 2) ^ 2).toNat

end

end A382444.P18415005847879724048

/-! ## A382444.P16090573667368800025

`A194848(A130595(n)²²)`
-/

namespace A382444.P16090573667368800025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 ((A130595 n ^ 2) ^ 2).toNat

end

end A382444.P16090573667368800025

/-!
# A382445: Lexicographically least increasing sequence of distinct positive integers such that for any n > 1, a(n) does not divide the concatenation of the earlier terms.

The programs for A382445, there is no canonical definition to state claims against.
-/

/-! ## A382445.P5078278861709932951

`comp[A270129(n)-1]`
-/

namespace A382445.P5078278861709932951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382445.P5078278861709932951

/-! ## A382445.P10844065727742432763

`comp[Δ[Δ[A246063(n)]]]`
-/

namespace A382445.P10844065727742432763
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382445.P10844065727742432763

/-! ## A382445.P5840682473066172942

`comp[A271740(n²)]+1`
-/

namespace A382445.P5840682473066172942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271740 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382445.P5840682473066172942

/-! ## A382445.P6289683861389588315

`comp[A041199(n)+1]+1`
-/

namespace A382445.P6289683861389588315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041199 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382445.P6289683861389588315

/-! ## A382445.P5468575090131280416

`comp[xor(1, A208355(3*n))]`
-/

namespace A382445.P5468575090131280416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A208355 (3 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382445.P5468575090131280416

/-! ## A382445.P1553013351844924406

`comp[A287987(n)-(n+3)]`
-/

namespace A382445.P1553013351844924406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287987 n - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382445.P1553013351844924406

/-! ## A382445.P2407033376274566123

`comp[(3-A035959(n))²-n]`
-/

namespace A382445.P2407033376274566123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A035959 n) ^ 2 - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382445.P2407033376274566123

/-! ## A382445.P1003240404570204475

`comp[xor(1, A060854(2*n+1))]`
-/

namespace A382445.P1003240404570204475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A060854 (2 * n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382445.P1003240404570204475

/-! ## A382445.P14404370648677053243

`comp[A349857(n)+1+n]+1`
-/

namespace A382445.P14404370648677053243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349857 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382445.P14404370648677053243

/-!
# A382448: Triangle read by rows, defined by the two-variable g.f. (x^3*y^2 + x^3*y + 1)/(1 - x^2*y - x*y - x).

The programs for A382448, there is no canonical definition to state claims against.
-/

/-! ## A382448.P15106364115805780764

`A139338(A334552(n+1))`
-/

namespace A382448.P15106364115805780764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A334552 (n + 1)).toNat

end

end A382448.P15106364115805780764

/-! ## A382448.P9203587350987974048

`A195932(A131235(n))`
-/

namespace A382448.P9203587350987974048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195932 (A131235 n).toNat

end

end A382448.P9203587350987974048

/-! ## A382448.P14759954299896626767

`A119605(A302997(n))`
-/

namespace A382448.P14759954299896626767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A302997 n).toNat

end

end A382448.P14759954299896626767

/-! ## A382448.P11098457093064564715

`A327707(A202812(n+1))`
-/

namespace A382448.P11098457093064564715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327707 (A202812 (n + 1)).toNat

end

end A382448.P11098457093064564715

/-! ## A382448.P7549922164315830206

`A386515(A347672(n+1))`
-/

namespace A382448.P7549922164315830206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386515 (A347672 (n + 1)).toNat

end

end A382448.P7549922164315830206

/-!
# A382449: Expansion of e.g.f. exp( x/(1-2*x)^(3/2) ).

The programs for A382449, there is no canonical definition to state claims against.
-/

/-! ## A382449.P11141019190058142114

`A316434(∑[A227309(2*n)²])`
-/

namespace A382449.P11141019190058142114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227309 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382449.P11141019190058142114

/-!
# A382450: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(2*x*A(x)) ).

The programs for A382450, there is no canonical definition to state claims against.
-/

/-! ## A382450.P11598528209268922831

`A384777(∑[n+1]+n)`
-/

namespace A382450.P11598528209268922831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384777 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A382450.P11598528209268922831

/-!
# A382454: Number of solutions winning the Tchoukaillon game with n seeds and 2n pits.

The programs for A382454, there is no canonical definition to state claims against.
-/

/-! ## A382454.P10541097829470716263

`A177517(A064226(n))`
-/

namespace A382454.P10541097829470716263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A064226 n).toNat

end

end A382454.P10541097829470716263

/-! ## A382454.P12228219547242422231

`A177517(A140064(n+1))`
-/

namespace A382454.P12228219547242422231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A140064 (n + 1)).toNat

end

end A382454.P12228219547242422231

/-! ## A382454.P10222027453485596995

`A060701(A062728(n))`
-/

namespace A382454.P10222027453485596995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (A062728 n).toNat

end

end A382454.P10222027453485596995

/-! ## A382454.P12734566314588578510

`A128564(A084849(n))`
-/

namespace A382454.P12734566314588578510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128564 (A084849 n).toNat

end

end A382454.P12734566314588578510

/-! ## A382454.P3556366825667059179

`A008302(A174794(n+1))`
-/

namespace A382454.P3556366825667059179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (A174794 (n + 1)).toNat

end

end A382454.P3556366825667059179

/-!
# A382455: Order 3 perimeter magic squares of magic sum n, all elements distinct and 1 in the set; bracelet symmetry.

The programs for A382455, there is no canonical definition to state claims against.
-/

/-! ## A382455.P12210476660181830058

`A335241(A096376(n))`
-/

namespace A382455.P12210476660181830058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335241 (A096376 n).toNat

end

end A382455.P12210476660181830058

/-! ## A382455.P6148322166651295271

`∑[∑[A049234(A144109(n))]]`
-/

namespace A382455.P6148322166651295271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049234 (A144109 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382455.P6148322166651295271

/-!
# A382456: Number of self-primes <= 10^n.

The programs for A382456, there is no canonical definition to state claims against.
-/

/-! ## A382456.P10689333847391903719

`A368207(A368233(n)+1)+1`
-/

namespace A382456.P10689333847391903719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (A368233 n + 1).toNat + 1

end

end A382456.P10689333847391903719

/-!
# A382461: a(n) is the smallest number whose sum of digits is 2^n.

The programs for A382461, the canonical program `A382461.P15882059474773188978` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382461 has offset 0).

The definition of A382461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382461.P2779522952175764533

`10^floor(2^n/9)*(1+2^n-9*floor(2^n/9))-1`
-/

namespace A382461.P2779522952175764533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(2 ^ n : ℚ) / 9⌋ : ℤ) * ((1 + 2 ^ n : ℤ) - 9 * ⌊(2 ^ n : ℚ) / 9⌋ : ℚ) - 1

end

end A382461.P2779522952175764533

namespace A382461

/-- `10^floor(2^n/9)*(1+2^n-9*floor(2^n/9))-1` -/
def P2779522952175764533.Spec : Prop :=
  ∀ n, P2779522952175764533.a n = (A382461 n : ℚ)

end A382461

/-! ## A382461.P15882059474773188978

`A051885(2^n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382461

/-- `A051885(2^n)` -/
def P15882059474773188978.Spec : Prop :=
  ∀ n, P15882059474773188978.a n = A382461 n

theorem P15882059474773188978.correct : P15882059474773188978.Spec := by
  intro n
  simp only [A382461]

end A382461

/-! ## A382461.P6871893797283178962

`record[A051885(A006519(n+1))]`
-/

namespace A382461.P6871893797283178962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382461.P6871893797283178962

namespace A382461

/-- `record[A051885(A006519(n+1))]` -/
def P6871893797283178962.Spec : Prop :=
  ∀ n, P6871893797283178962.a n = A382461 n

end A382461

/-! ## A382461.P16914557260939230599

`record[A051885(A061142(n+1))]`
-/

namespace A382461.P16914557260939230599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A061142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382461.P16914557260939230599

namespace A382461

/-- `record[A051885(A061142(n+1))]` -/
def P16914557260939230599.Spec : Prop :=
  ∀ n, P16914557260939230599.a n = A382461 n

end A382461

/-! ## A382461.P8481164951554848080

`record[A051885(A140740(n+1))]`
-/

namespace A382461.P8481164951554848080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A140740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382461.P8481164951554848080

namespace A382461

/-- `record[A051885(A140740(n+1))]` -/
def P8481164951554848080.Spec : Prop :=
  ∀ n, P8481164951554848080.a n = A382461 n

end A382461

/-!
# A382462: Lexicographically earliest sequence of distinct positive integers such that if a digit d in the digit stream (ignoring commas) is even, the previous digit is < d.

The programs for A382462, there is no canonical definition to state claims against.
-/

/-! ## A382462.P16973905142959313423

`A382463(n)+a(n-1)` with `a(0)=1`
-/

namespace A382462.P16973905142959313423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A382463 n + a (n - 1)

end

end A382462.P16973905142959313423

/-! ## A382462.P6023454176118654336

`lt[A122204(A244464(n)), 1]`
-/

namespace A382462.P6023454176118654336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (A244464 (n + 11)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382462.P6023454176118654336

/-! ## A382462.P9091770984550556619

`eq[2, A372555(A054842(n))]`
-/

namespace A382462.P9091770984550556619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372555 (A054842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382462.P9091770984550556619

/-! ## A382462.P3327128429140770137

`eq[A011734(n), A288326(n)]`
-/

namespace A382462.P3327128429140770137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382462.P3327128429140770137

/-! ## A382462.P12865853455369459520

`eq[A243831(n), A288326(n)]`
-/

namespace A382462.P12865853455369459520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382462.P12865853455369459520

/-!
# A382463: First differences of A382462.

The programs for A382463, there is no canonical definition to state claims against.
-/

/-! ## A382463.P16804068462944517829

`Δ[A382462(n+1)]`
-/

namespace A382463.P16804068462944517829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382463.P16804068462944517829

/-! ## A382463.P16751949335213904972

`A382462(n+2)-A382462(n+1)`
-/

namespace A382463.P16751949335213904972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382462 (n + 2) - A382462 (n + 1)

end

end A382463.P16751949335213904972

/-!
# A382464: Positive integers that contain an even digit d immediately preceded by a digit >= d.

The programs for A382464, there is no canonical definition to state claims against.
-/

/-! ## A382464.P7555662513379437858

`comp[A382465(n+1)-1]+1`
-/

namespace A382464.P7555662513379437858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382465 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382464.P7555662513379437858

/-! ## A382464.P13029550243377095066

`A098395(lt[2, A203991(n+1)]%A098395(3*n+4))`
-/

namespace A382464.P13029550243377095066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098395 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (A098395 (3 * n + 4))).toNat

end

end A382464.P13029550243377095066

/-! ## A382464.P14696316823434137648

`A098395(lt[2, A203991(n+1)]%A181141(n+1))`
-/

namespace A382464.P14696316823434137648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098395 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (A181141 (n + 1))).toNat

end

end A382464.P14696316823434137648

/-! ## A382464.P5786784130406990150

`eq[A040031(n), A260526(n)]`
-/

namespace A382464.P5786784130406990150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382464.P5786784130406990150

/-! ## A382464.P15881034865193979365

`eq[A040032(n), A260526(n)]`
-/

namespace A382464.P15881034865193979365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382464.P15881034865193979365

/-!
# A382465: Positive integers such that every even digit except the first is immediately preceded by a smaller digit.

The programs for A382465, there is no canonical definition to state claims against.
-/

/-! ## A382465.P1402617612594290369

`eq[1, char[A382462(n+1)]]`
-/

namespace A382465.P1402617612594290369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382462 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382465.P1402617612594290369

/-! ## A382465.P4189209267107902523

`lt[11*floor(n/10)-n, A204187((n+2)²)]`
-/

namespace A382465.P4189209267107902523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382465.P4189209267107902523

/-! ## A382465.P12158520555837613103

`lt[A017887(n), A209656(A057979(n))]`
-/

namespace A382465.P12158520555837613103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209656 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382465.P12158520555837613103

/-! ## A382465.P8073612634364944085

`lt[A017887(n), A327076(A093178(n))]`
-/

namespace A382465.P8073612634364944085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382465.P8073612634364944085

/-! ## A382465.P18282190209102562978

`lt[A017887(n), A057979(A367584(n+4))]`
-/

namespace A382465.P18282190209102562978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A367584 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382465.P18282190209102562978

/-!
# A382467: Irregular triangle read by rows, where row n lists the integers from 0 to 2^n - 1 sorted by the number of zeros in their binary representation (in case of ties, by their decimal value).

The programs for A382467, there is no canonical definition to state claims against.
-/

/-! ## A382467.P8836836207483485038

`A368413(∏{p}[n+1, #+1]*A152978(n+1))`
-/

namespace A382467.P8836836207483485038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) * A152978 (n + 1)).toNat

end

end A382467.P8836836207483485038

/-! ## A382467.P17208693639540463105

`A329278(n)+A010052(A279790(2*n+5))`
-/

namespace A382467.P17208693639540463105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329278 n + A010052 (A279790 (2 * n + 5)).toNat

end

end A382467.P17208693639540463105

/-! ## A382467.P3067955949972180167

`A257250(A329278(n))%A075458(2*n+3)`
-/

namespace A382467.P3067955949972180167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257250 (A329278 n).toNat) (A075458 (2 * n + 3))

end

end A382467.P3067955949972180167

/-! ## A382467.P4231285245455685514

`A188529(A121548(3*n+5))%A139248(n+1)`
-/

namespace A382467.P4231285245455685514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188529 (A121548 (3 * n + 5)).toNat) (A139248 (n + 1))

end

end A382467.P4231285245455685514

/-!
# A382468: a(n) = (largest prime factor of n) minus (its remaining distinct prime factors).

The programs for A382468, the canonical program `A382468.P9812451989353669786` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382468 has offset 2).

The definition of A382468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382468.P9812451989353669786

`2*A006530(n+2)-A008472(n+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A382468

/-- `2*A006530(n+2)-A008472(n+2)` -/
def P9812451989353669786.Spec : Prop :=
  ∀ n, P9812451989353669786.a n = A382468 (n + 2)

theorem P9812451989353669786.correct : P9812451989353669786.Spec := by
  intro n
  simp only [A382468, Nat.add_sub_cancel]

end A382468

/-! ## A382468.P3274559441678368310

`A382331(A342768(n+2))`
-/

namespace A382468.P3274559441678368310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382331 (A342768 (n + 2)).toNat

end

end A382468.P3274559441678368310

namespace A382468

/-- `A382331(A342768(n+2))` -/
def P3274559441678368310.Spec : Prop :=
  ∀ n, P3274559441678368310.a n = A382468 (n + 2)

end A382468

/-! ## A382468.P7924541050826119778

`A339767(∏{p}[n+2, #])`
-/

namespace A382468.P7924541050826119778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339767 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A382468.P7924541050826119778

namespace A382468

/-- `A339767(∏{p}[n+2, #])` -/
def P7924541050826119778.Spec : Prop :=
  ∀ n, P7924541050826119778.a n = A382468 (n + 2)

end A382468

/-! ## A382468.P8582138234101335104

`A335940(A166140(n+2))`
-/

namespace A382468.P8582138234101335104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335940 (A166140 (n + 2)).toNat

end

end A382468.P8582138234101335104

namespace A382468

/-- `A335940(A166140(n+2))` -/
def P8582138234101335104.Spec : Prop :=
  ∀ n, P8582138234101335104.a n = A382468 (n + 2)

end A382468

/-!
# A382469: 

The programs for A382469, there is no canonical definition to state claims against.
-/

/-! ## A382469.P14539375805195876010

`∩[A071140(n+1), A221054(n+1)]`
-/

namespace A382469.P14539375805195876010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382469.P14539375805195876010

/-! ## A382469.P6012080710324628134

`∩[A071139(n+1), A221054(n+1)]`
-/

namespace A382469.P6012080710324628134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382469.P6012080710324628134

/-!
# A382470: a(n) = Sum_{k=0..n} binomial(k+3,3) * binomial(2*k,2*n-2*k).

The programs for A382470, there is no canonical definition to state claims against.
-/

/-! ## A382470.P5071775074635006665

`A014085(A275794(n))-A008998(n)`
-/

namespace A382470.P5071775074635006665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A275794 n).toNat - A008998 n

end

end A382470.P5071775074635006665

/-!
# A382471: a(n) = Sum_{k=0..n} binomial(k+4,4) * binomial(2*k,2*n-2*k).

The programs for A382471, there is no canonical definition to state claims against.
-/

/-! ## A382471.P12979414816287858984

`A091072(A001223(n+1)*A317351(n))`
-/

namespace A382471.P12979414816287858984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (A001223 (n + 1) * A317351 n).toNat

end

end A382471.P12979414816287858984

/-!
# A382472: a(n) = Sum_{k=0..n} binomial(k+5,5) * binomial(2*k,2*n-2*k).

The programs for A382472, there is no canonical definition to state claims against.
-/

/-! ## A382472.P12621246530501573238

`A004001(A001579(n)-A270831(3*n+1))`
-/

namespace A382472.P12621246530501573238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A001579 n - A270831 (3 * n + 1)).toNat

end

end A382472.P12621246530501573238

/-!
# A382475: Numbers k where record values occur for A129132(k)/k = A380264(k)/A380265(k), the mean value of the maximum exponent in the prime factorization of the numbers {1, 2, ..., k}.

The programs for A382475, there is no canonical definition to state claims against.
-/

/-! ## A382475.P14112130350793595826

`A382476(n+1)+A000007(A001844(n))`
-/

namespace A382475.P14112130350793595826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A000007 (A001844 n).toNat

end

end A382475.P14112130350793595826

/-! ## A382475.P2495897718116592275

`A382476(n+1)%A261089(A382476(n+3))`
-/

namespace A382475.P2495897718116592275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382476 (n + 1)) (A261089 (A382476 (n + 3)).toNat)

end

end A382475.P2495897718116592275

/-! ## A382475.P13549048148094172931

`A382476(n+1)+A010815(A382509(3*n+4))`
-/

namespace A382475.P13549048148094172931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A010815 (A382509 (3 * n + 4)).toNat

end

end A382475.P13549048148094172931

/-! ## A382475.P9028207210747751730

`A382476(n+1)%A018187(A334030(n))`
-/

namespace A382475.P9028207210747751730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382476 (n + 1)) (A018187 (A334030 n).toNat)

end

end A382475.P9028207210747751730

/-! ## A382475.P1016750122864599869

`A382476(n+1)+A353557(A014414(n+1)+1)`
-/

namespace A382475.P1016750122864599869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A353557 (A014414 (n + 1) + 1).toNat

end

end A382475.P1016750122864599869

/-! ## A382475.P11926212453307890878

`A382476(n+1)+A010054(A000096(2*n+3))`
-/

namespace A382475.P11926212453307890878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A010054 (A000096 (2 * n + 3)).toNat

end

end A382475.P11926212453307890878

/-! ## A382475.P14797907707895727198

`A382476(n+1)+A000007(A117622(n+1))`
-/

namespace A382475.P14797907707895727198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A000007 (A117622 (n + 1)).toNat

end

end A382475.P14797907707895727198

/-! ## A382475.P11887039514681241897

`A382476(n+1)+A128229(A136061(n+1))`
-/

namespace A382475.P11887039514681241897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A128229 (A136061 (n + 1)).toNat

end

end A382475.P11887039514681241897

/-! ## A382475.P2567975715520892242

`A382476(n+1)+A000007(A000009(n))`
-/

namespace A382475.P2567975715520892242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A000007 (A000009 n).toNat

end

end A382475.P2567975715520892242

/-! ## A382475.P12549606577511761603

`A382476(n+1)+A362562(A020639(n+1))`
-/

namespace A382475.P12549606577511761603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382476 (n + 1) + A362562 (A020639 (n + 1)).toNat

end

end A382475.P12549606577511761603

/-!
# A382480: Number of minimum dominating sets in the n-transposition graph.

The programs for A382480, there is no canonical definition to state claims against.
-/

/-! ## A382480.P13376357355423536811

`A008284(A341956(n+1))+n`
-/

namespace A382480.P13376357355423536811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A341956 (n + 1)).toNat + (n : ℤ)

end

end A382480.P13376357355423536811

/-!
# A382481: a(n) is the number of primes less than 4^(n^2).

The programs for A382481, there is no canonical definition to state claims against.
-/

/-! ## A382481.P3273466352923631107

`A086680(n²)`
-/

namespace A382481.P3273466352923631107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 (n ^ 2)

end

end A382481.P3273466352923631107

/-! ## A382481.P11402898338868935876

`A007053(A001105(n))`
-/

namespace A382481.P11402898338868935876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A001105 n).toNat

end

end A382481.P11402898338868935876

/-! ## A382481.P18439365929255043100

`A007053(2*A000290(n))`
-/

namespace A382481.P18439365929255043100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * A000290 n).toNat

end

end A382481.P18439365929255043100

/-!
# A382482: a(1) = 1. Let a(n) be the most recently defined term. At each step, check for an undefined term with index < n. If such a term exists, then where i is the earliest such index, set a(i) = a(n) - (n - i). If no such term exists, then where i is the first undefined index >= n + a(n), set a(i) = the smallest integer not yet used.

The programs for A382482, there is no canonical definition to state claims against.
-/

/-! ## A382482.P4213559828653599842

`A088939(A331091(n+1))`
-/

namespace A382482.P4213559828653599842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (A331091 (n + 1)).toNat

end

end A382482.P4213559828653599842

/-!
# A382485: a(n) = ceiling(n/d^2) where d is the largest divisor of n which is not greater than the square root of n.

The programs for A382485, there is no canonical definition to state claims against.
-/

/-! ## A382485.P5196970277798318457

`ceil(A033677(n+1)/A033676(n+1))`
-/

namespace A382485.P5196970277798318457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033677 (n + 1) : ℚ) / (A033676 (n + 1) : ℚ)⌉

end

end A382485.P5196970277798318457

/-! ## A382485.P10456751993380380838

`ceil((n+1)/A162348(Δ[n²])²)`
-/

namespace A382485.P10456751993380380838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A162348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 : ℚ)⌉

end

end A382485.P10456751993380380838

/-! ## A382485.P5508366854376559539

`A070014(A328964(n+1))`
-/

namespace A382485.P5508366854376559539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (A328964 (n + 1)).toNat

end

end A382485.P5508366854376559539

/-! ## A382485.P15417405970734898974

`A124758(A094373(n+1)-A260739(n+1))`
-/

namespace A382485.P15417405970734898974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A094373 (n + 1) - A260739 (n + 1)).toNat

end

end A382485.P15417405970734898974

/-! ## A382485.P5801150976597343820

`A109004(C(∏{p}[n+1, #+1], A056737(n+1)))`
-/

namespace A382485.P5801150976597343820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) (A056737 (n + 1)).toNat)

end

end A382485.P5801150976597343820

/-!
# A382486: Product of distinct prime divisors of n that are <= sqrt(n).

The programs for A382486, the canonical program `A382486.P8725495810490072092` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382486 has offset 1).

The definition of A382486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382486.P8725495810490072092

`∏{p}[A072504(n+1), #]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382486

/-- `∏{p}[A072504(n+1), #]` -/
def P8725495810490072092.Spec : Prop :=
  ∀ n, (P8725495810490072092.a n : ℤ) = A382486 (n + 1)

theorem P8725495810490072092.correct : P8725495810490072092.Spec := by
  intro n
  simp only [A382486, Nat.add_sub_cancel]

end A382486

/-! ## A382486.P1273770250924624593

`gcd(n+1, A104588(n+1))`
-/

namespace A382486.P1273770250924624593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A104588 (n + 1))

end

end A382486.P1273770250924624593

namespace A382486

/-- `gcd(n+1, A104588(n+1))` -/
def P1273770250924624593.Spec : Prop :=
  ∀ n, (P1273770250924624593.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P1193709610793467244

`A007947(A072504(n+1))`
-/

namespace A382486.P1193709610793467244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072504 (n + 1)).toNat

end

end A382486.P1193709610793467244

namespace A382486

/-- `A007947(A072504(n+1))` -/
def P1193709610793467244.Spec : Prop :=
  ∀ n, P1193709610793467244.a n = A382486 (n + 1)

end A382486

/-! ## A382486.P6627811539330665559

`gcd(A072499(n+1), A144845(n))`
-/

namespace A382486.P6627811539330665559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072499 (n + 1)) (A144845 n)

end

end A382486.P6627811539330665559

namespace A382486

/-- `gcd(A072499(n+1), A144845(n))` -/
def P6627811539330665559.Spec : Prop :=
  ∀ n, (P6627811539330665559.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P3712250417904746289

`gcd(A007947(n+1), A045948(n+1))`
-/

namespace A382486.P3712250417904746289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A045948 (n + 1))

end

end A382486.P3712250417904746289

namespace A382486

/-- `gcd(A007947(n+1), A045948(n+1))` -/
def P3712250417904746289.Spec : Prop :=
  ∀ n, (P3712250417904746289.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P1718222668616897569

`lcm(A217581(n+1), A293810(n+1))`
-/

namespace A382486.P1718222668616897569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A217581 (n + 1)) (A293810 (n + 1))

end

end A382486.P1718222668616897569

namespace A382486

/-- `lcm(A217581(n+1), A293810(n+1))` -/
def P1718222668616897569.Spec : Prop :=
  ∀ n, (P1718222668616897569.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P7757131059298011756

`gcd(A000194(n)!, ∏{p}[n+1, #])`
-/

namespace A382486.P7757131059298011756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (A000194 n).toNat) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A382486.P7757131059298011756

namespace A382486

/-- `gcd(A000194(n)!, ∏{p}[n+1, #])` -/
def P7757131059298011756.Spec : Prop :=
  ∀ n, (P7757131059298011756.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P10278547447730160534

`gcd(A278110(n+1), A334085(n+1))`
-/

namespace A382486.P10278547447730160534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278110 (n + 1)) (A334085 (n + 1))

end

end A382486.P10278547447730160534

namespace A382486

/-- `gcd(A278110(n+1), A334085(n+1))` -/
def P10278547447730160534.Spec : Prop :=
  ∀ n, (P10278547447730160534.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P8271248820218886667

`∏{p}[A396068(n+1), #]`
-/

namespace A382486.P8271248820218886667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382486.P8271248820218886667

namespace A382486

/-- `∏{p}[A396068(n+1), #]` -/
def P8271248820218886667.Spec : Prop :=
  ∀ n, (P8271248820218886667.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P10913461154525701597

`gcd(A062953(n+1), A075182(n+1))`
-/

namespace A382486.P10913461154525701597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062953 (n + 1)) (A075182 (n + 1))

end

end A382486.P10913461154525701597

namespace A382486

/-- `gcd(A062953(n+1), A075182(n+1))` -/
def P10913461154525701597.Spec : Prop :=
  ∀ n, (P10913461154525701597.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P16712595437787131033

`gcd(A072504(n+1), A305702(n+1))`
-/

namespace A382486.P16712595437787131033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072504 (n + 1)) (A305702 (n + 1))

end

end A382486.P16712595437787131033

namespace A382486

/-- `gcd(A072504(n+1), A305702(n+1))` -/
def P16712595437787131033.Spec : Prop :=
  ∀ n, (P16712595437787131033.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P15328638665292411177

`gcd(A186944(n+1), A396079(n+1))`
-/

namespace A382486.P15328638665292411177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A396079 (n + 1))

end

end A382486.P15328638665292411177

namespace A382486

/-- `gcd(A186944(n+1), A396079(n+1))` -/
def P15328638665292411177.Spec : Prop :=
  ∀ n, (P15328638665292411177.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P8530940294008487954

`∏{p}[A072499(n+1), #]`
-/

namespace A382486.P8530940294008487954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382486.P8530940294008487954

namespace A382486

/-- `∏{p}[A072499(n+1), #]` -/
def P8530940294008487954.Spec : Prop :=
  ∀ n, (P8530940294008487954.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P15780480106548418656

`A007947(A396068(n+1))`
-/

namespace A382486.P15780480106548418656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A396068 (n + 1)).toNat

end

end A382486.P15780480106548418656

namespace A382486

/-- `A007947(A396068(n+1))` -/
def P15780480106548418656.Spec : Prop :=
  ∀ n, P15780480106548418656.a n = A382486 (n + 1)

end A382486

/-! ## A382486.P1303093606310356270

`gcd(A007947(n+1), A341107(n))`
-/

namespace A382486.P1303093606310356270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A341107 n)

end

end A382486.P1303093606310356270

namespace A382486

/-- `gcd(A007947(n+1), A341107(n))` -/
def P1303093606310356270.Spec : Prop :=
  ∀ n, (P1303093606310356270.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P5315198350933811654

`A007947(A072499(n+1))`
-/

namespace A382486.P5315198350933811654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072499 (n + 1)).toNat

end

end A382486.P5315198350933811654

namespace A382486

/-- `A007947(A072499(n+1))` -/
def P5315198350933811654.Spec : Prop :=
  ∀ n, P5315198350933811654.a n = A382486 (n + 1)

end A382486

/-! ## A382486.P9411779629800171362

`∏{p}[n+1, gcd(#, ((n+1)/#)!)]`
-/

namespace A382486.P9411779629800171362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd p (Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat)

end

end A382486.P9411779629800171362

namespace A382486

/-- `∏{p}[n+1, gcd(#, ((n+1)/#)!)]` -/
def P9411779629800171362.Spec : Prop :=
  ∀ n, (P9411779629800171362.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P3155145008518158818

`gcd(A015053(n+1), A195458(n+1))`
-/

namespace A382486.P3155145008518158818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015053 (n + 1)) (A195458 (n + 1))

end

end A382486.P3155145008518158818

namespace A382486

/-- `gcd(A015053(n+1), A195458(n+1))` -/
def P3155145008518158818.Spec : Prop :=
  ∀ n, (P3155145008518158818.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P17364197888959889487

`gcd(A104588(n+1), A152291(n))`
-/

namespace A382486.P17364197888959889487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104588 (n + 1)) (A152291 n)

end

end A382486.P17364197888959889487

namespace A382486

/-- `gcd(A104588(n+1), A152291(n))` -/
def P17364197888959889487.Spec : Prop :=
  ∀ n, (P17364197888959889487.a n : ℤ) = A382486 (n + 1)

end A382486

/-! ## A382486.P2892504174839899192

`gcd(A225481(n), A396079(n+1))`
-/

namespace A382486.P2892504174839899192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225481 n) (A396079 (n + 1))

end

end A382486.P2892504174839899192

namespace A382486

/-- `gcd(A225481(n), A396079(n+1))` -/
def P2892504174839899192.Spec : Prop :=
  ∀ n, (P2892504174839899192.a n : ℤ) = A382486 (n + 1)

end A382486

/-!
# A382487: The number of divisors of n whose largest prime factor is 3.

The programs for A382487, the canonical program `A382487.P7296272307731951991` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382487 has offset 1).

The definition of A382487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382487.P4338992955632838395

`(val(n+1, 2)+1)*val(n+1, 3)`
-/

namespace A382487.P4338992955632838395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) * SequenceMachineLib.valuation (n + 1) 3

end

end A382487.P4338992955632838395

namespace A382487

/-- `(val(n+1, 2)+1)*val(n+1, 3)` -/
def P4338992955632838395.Spec : Prop :=
  ∀ n, (P4338992955632838395.a n : ℤ) = A382487 (n + 1)

end A382487

/-! ## A382487.P7296272307731951991

`A072078(n+1)-A001511(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A382487

/-- `A072078(n+1)-A001511(n+1)` -/
def P7296272307731951991.Spec : Prop :=
  ∀ n, P7296272307731951991.a n = A382487 (n + 1)

theorem P7296272307731951991.correct : P7296272307731951991.Spec := by
  intro n
  simp only [A382487, Nat.add_sub_cancel]

end A382487

/-! ## A382487.P9252254291855609847

`A001511(n+1)*A007949(n+1)`
-/

namespace A382487.P9252254291855609847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A007949 (n + 1)

end

end A382487.P9252254291855609847

namespace A382487

/-- `A001511(n+1)*A007949(n+1)` -/
def P9252254291855609847.Spec : Prop :=
  ∀ n, P9252254291855609847.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P9694614797981497096

`A326987(A065331(n+1))`
-/

namespace A382487.P9694614797981497096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (A065331 (n + 1)).toNat

end

end A382487.P9694614797981497096

namespace A382487

/-- `A326987(A065331(n+1))` -/
def P9694614797981497096.Spec : Prop :=
  ∀ n, P9694614797981497096.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P8712878077301710010

`A007949(n+1)*A059129(n)`
-/

namespace A382487.P8712878077301710010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A059129 n

end

end A382487.P8712878077301710010

namespace A382487

/-- `A007949(n+1)*A059129(n)` -/
def P8712878077301710010.Spec : Prop :=
  ∀ n, P8712878077301710010.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P1943465253651367002

`A007949(n+1)*A091090(n)`
-/

namespace A382487.P1943465253651367002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A091090 n

end

end A382487.P1943465253651367002

namespace A382487

/-- `A007949(n+1)*A091090(n)` -/
def P1943465253651367002.Spec : Prop :=
  ∀ n, P1943465253651367002.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P8042336254715230173

`A007949(n+1)*A135560(n+1)`
-/

namespace A382487.P8042336254715230173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A135560 (n + 1)

end

end A382487.P8042336254715230173

namespace A382487

/-- `A007949(n+1)*A135560(n+1)` -/
def P8042336254715230173.Spec : Prop :=
  ∀ n, P8042336254715230173.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P9177057697180271737

`A007949(n+1)*A241235(n+1)`
-/

namespace A382487.P9177057697180271737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A241235 (n + 1)

end

end A382487.P9177057697180271737

namespace A382487

/-- `A007949(n+1)*A241235(n+1)` -/
def P9177057697180271737.Spec : Prop :=
  ∀ n, P9177057697180271737.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P4828829987952269206

`A326987(n+1)%A072078(n+1)`
-/

namespace A382487.P4828829987952269206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326987 (n + 1)) (A072078 (n + 1))

end

end A382487.P4828829987952269206

namespace A382487

/-- `A326987(n+1)%A072078(n+1)` -/
def P4828829987952269206.Spec : Prop :=
  ∀ n, P4828829987952269206.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P9382487576448315620

`(A007814(n+1)+1)*A007949(n+1)`
-/

namespace A382487.P9382487576448315620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A007949 (n + 1)

end

end A382487.P9382487576448315620

namespace A382487

/-- `(A007814(n+1)+1)*A007949(n+1)` -/
def P9382487576448315620.Spec : Prop :=
  ∀ n, P9382487576448315620.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P9657283596276015687

`∑{d}[n+1, A051064(#)*A099395((n+1)/#)]`
-/

namespace A382487.P9657283596276015687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A099395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382487.P9657283596276015687

namespace A382487

/-- `∑{d}[n+1, A051064(#)*A099395((n+1)/#)]` -/
def P9657283596276015687.Spec : Prop :=
  ∀ n, P9657283596276015687.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P17148105747610780832

`∑{d}[n+1, A007949(#)*A036987((n+1)/#-1)]`
-/

namespace A382487.P17148105747610780832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007949 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A382487.P17148105747610780832

namespace A382487

/-- `∑{d}[n+1, A007949(#)*A036987((n+1)/#-1)]` -/
def P17148105747610780832.Spec : Prop :=
  ∀ n, P17148105747610780832.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P17923543278811195379

`A000005(A065331(n+1))-A001511(n+1)`
-/

namespace A382487.P17923543278811195379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065331 (n + 1)).toNat - A001511 (n + 1)

end

end A382487.P17923543278811195379

namespace A382487

/-- `A000005(A065331(n+1))-A001511(n+1)` -/
def P17923543278811195379.Spec : Prop :=
  ∀ n, P17923543278811195379.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P11658028936800637691

`A001511(n+1)*A007814(A318509(n+1))`
-/

namespace A382487.P11658028936800637691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A007814 (A318509 (n + 1)).toNat

end

end A382487.P11658028936800637691

namespace A382487

/-- `A001511(n+1)*A007814(A318509(n+1))` -/
def P11658028936800637691.Spec : Prop :=
  ∀ n, P11658028936800637691.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P17059545961624714638

`(A005187(n+1)-A005187(n))*A007949(n+1)`
-/

namespace A382487.P17059545961624714638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A005187 n) * A007949 (n + 1)

end

end A382487.P17059545961624714638

namespace A382487

/-- `(A005187(n+1)-A005187(n))*A007949(n+1)` -/
def P17059545961624714638.Spec : Prop :=
  ∀ n, P17059545961624714638.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P4998932886103377385

`(A054861(n+1)-A054861(n))*A001511(n+1)`
-/

namespace A382487.P4998932886103377385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054861 (n + 1) - A054861 n) * A001511 (n + 1)

end

end A382487.P4998932886103377385

namespace A382487

/-- `(A054861(n+1)-A054861(n))*A001511(n+1)` -/
def P4998932886103377385.Spec : Prop :=
  ∀ n, P4998932886103377385.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P11194143424051754978

`(A054861(n+1)-A054861(n))*A135560(n+1)`
-/

namespace A382487.P11194143424051754978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054861 (n + 1) - A054861 n) * A135560 (n + 1)

end

end A382487.P11194143424051754978

namespace A382487

/-- `(A054861(n+1)-A054861(n))*A135560(n+1)` -/
def P11194143424051754978.Spec : Prop :=
  ∀ n, P11194143424051754978.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P12189729218527002083

`A001511(n+1)*A051064(n+1)-A001511(n+1)`
-/

namespace A382487.P12189729218527002083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A051064 (n + 1) - A001511 (n + 1)

end

end A382487.P12189729218527002083

namespace A382487

/-- `A001511(n+1)*A051064(n+1)-A001511(n+1)` -/
def P12189729218527002083.Spec : Prop :=
  ∀ n, P12189729218527002083.a n = A382487 (n + 1)

end A382487

/-! ## A382487.P11470118895479745098

`(A000005(n+1)-A035191(n+1))/A035218(n+1)`
-/

namespace A382487.P11470118895479745098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A035191 (n + 1) : ℚ) / (A035218 (n + 1) : ℚ)

end

end A382487.P11470118895479745098

namespace A382487

/-- `(A000005(n+1)-A035191(n+1))/A035218(n+1)` -/
def P11470118895479745098.Spec : Prop :=
  ∀ n, P11470118895479745098.a n = (A382487 (n + 1) : ℚ)

end A382487

/-! ## A382487.P9279105524926996043

`A072078(n+1)-A072078(n+1)/A051064(n+1)`
-/

namespace A382487.P9279105524926996043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072078 (n + 1) : ℚ) - (A072078 (n + 1) : ℚ) / (A051064 (n + 1) : ℚ)

end

end A382487.P9279105524926996043

namespace A382487

/-- `A072078(n+1)-A072078(n+1)/A051064(n+1)` -/
def P9279105524926996043.Spec : Prop :=
  ∀ n, P9279105524926996043.a n = (A382487 (n + 1) : ℚ)

end A382487

/-!
# A382488: The number of unitary 3-smooth divisors of n.

The programs for A382488, the canonical program `A382488.P2299356055555741481` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382488 has offset 1).

The definition of A382488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382488.P2299356055555741481

`abs(A181982(n+10))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A382488

/-- `abs(A181982(n+10))` -/
def P2299356055555741481.Spec : Prop :=
  ∀ n, P2299356055555741481.a n = A382488 (n + 1)

theorem P2299356055555741481.correct : P2299356055555741481.Spec := by
  intro n
  simp only [A382488, Nat.add_sub_cancel]

end A382488

/-!
# A382489: The number of unitary 5-smooth divisors of n.

The programs for A382489, the canonical program `A382489.P8206433590181445063` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382489 has offset 1).

The definition of A382489 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382489.P8206433590181445063

`A034444(A355582(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382489

/-- `A034444(A355582(n+1))` -/
def P8206433590181445063.Spec : Prop :=
  ∀ n, P8206433590181445063.a n = A382489 (n + 1)

theorem P8206433590181445063.correct : P8206433590181445063.Spec := by
  intro n
  simp only [A382489, Nat.add_sub_cancel]

end A382489

/-!
# A382490: The number of infinitary 3-smooth divisors of n.

The programs for A382490, the canonical program `A382490.P15041511037275720396` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382490 has offset 1).

The definition of A382490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382490.P15041511037275720396

`A037445(A065331(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382490

/-- `A037445(A065331(n+1))` -/
def P15041511037275720396.Spec : Prop :=
  ∀ n, P15041511037275720396.a n = A382490 (n + 1)

theorem P15041511037275720396.correct : P15041511037275720396.Spec := by
  intro n
  simp only [A382490, Nat.add_sub_cancel]

end A382490

/-! ## A382490.P7458942026486810991

`∏{e}[A065331(n+1), A001316(#)]`
-/

namespace A382490.P7458942026486810991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001316 (Nat.factorization (f1 n).natAbs p)

end

end A382490.P7458942026486810991

namespace A382490

/-- `∏{e}[A065331(n+1), A001316(#)]` -/
def P7458942026486810991.Spec : Prop :=
  ∀ n, P7458942026486810991.a n = A382490 (n + 1)

end A382490

/-! ## A382490.P11196209322564890548

`A037445(gcd(n+1, A165827(n+1)))`
-/

namespace A382490.P11196209322564890548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (Int.gcd (n + 1 : ℤ) (A165827 (n + 1)))

end

end A382490.P11196209322564890548

namespace A382490

/-- `A037445(gcd(n+1, A165827(n+1)))` -/
def P11196209322564890548.Spec : Prop :=
  ∀ n, P11196209322564890548.a n = A382490 (n + 1)

end A382490

/-! ## A382490.P42194198951173504

`A037445(n+1)/A037445(A065330(n+1))`
-/

namespace A382490.P42194198951173504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A037445 (A065330 (n + 1)).toNat : ℚ)

end

end A382490.P42194198951173504

namespace A382490

/-- `A037445(n+1)/A037445(A065330(n+1))` -/
def P42194198951173504.Spec : Prop :=
  ∀ n, P42194198951173504.a n = (A382490 (n + 1) : ℚ)

end A382490

/-! ## A382490.P2501737333286656315

`A034444(A072079(n+1))%A292113(n+1)`
-/

namespace A382490.P2501737333286656315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034444 (A072079 (n + 1)).toNat) (A292113 (n + 1))

end

end A382490.P2501737333286656315

namespace A382490

/-- `A034444(A072079(n+1))%A292113(n+1)` -/
def P2501737333286656315.Spec : Prop :=
  ∀ n, P2501737333286656315.a n = A382490 (n + 1)

end A382490

/-!
# A382491: a(n) is the numerator of the asymptotic density of the numbers whose number of 3-smooth divisors is n.

The programs for A382491, the canonical program `A382491.P14593848931818020885` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382491 has offset 1).

The definition of A382491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382491.P14593848931818020885

`∑{d}[n+1, 2^(n+1-#)*3^(n+1-(n+1)/#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A382491

/-- `∑{d}[n+1, 2^(n+1-#)*3^(n+1-(n+1)/#)]` -/
def P14593848931818020885.Spec : Prop :=
  ∀ n, P14593848931818020885.a n = (A382491 (n + 1) : ℝ)

end A382491

/-!
# A382492: a(n) is the least number that has exactly n 3-smooth divisors.

The programs for A382492, there is no canonical definition to state claims against.
-/

/-! ## A382492.P11189807781380262927

`2^A382493(n+1)*3^((n+1)/(A382493(n+1)+1)-1)`
-/

namespace A382492.P11189807781380262927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A382493 (n + 1) : ℤ) : ℝ) * (3 : ℝ) ^ ((n + 1 : ℚ) / (A382493 (n + 1) + 1 : ℚ) - 1 : ℝ)

end

end A382492.P11189807781380262927

/-! ## A382492.P10351456254781667030

`A385138(A005179(n+1)^A088569(3*n+5))`
-/

namespace A382492.P10351456254781667030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385138 (SequenceMachineLib.roundAway ((A005179 (n + 1) : ℚ) ^ (A088569 (3 * n + 5) : ℤ))).toNat

end

end A382492.P10351456254781667030

/-! ## A382492.P17081956170490142987

`A351425(5*A005179(n+1))`
-/

namespace A382492.P17081956170490142987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351425 (5 * A005179 (n + 1)).toNat

end

end A382492.P17081956170490142987

/-! ## A382492.P11549600066614050856

`A184944(A184944(n+1))+A005179(n+1)`
-/

namespace A382492.P11549600066614050856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 (A184944 (n + 1)).toNat + A005179 (n + 1)

end

end A382492.P11549600066614050856

/-! ## A382492.P17588273477484195015

`A166301(A101842(n+4))+A005179(n+1)`
-/

namespace A382492.P17588273477484195015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (A101842 (n + 4)).toNat + A005179 (n + 1)

end

end A382492.P17588273477484195015

/-!
# A382493: a(n) is the 2-adic valuation of the least number that has exactly n 3-smooth divisors.

The programs for A382493, there is no canonical definition to state claims against.
-/

/-! ## A382493.P16927260656742648721

`A007814(A382492(n+1))`
-/

namespace A382493.P16927260656742648721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A382492 (n + 1)).toNat

end

end A382493.P16927260656742648721

/-! ## A382493.P2077019930329381572

`(A033677(n+1)-1)%A157356(n+1)`
-/

namespace A382493.P2077019930329381572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (n + 1) - 1) (A157356 (n + 1))

end

end A382493.P2077019930329381572

/-! ## A382493.P12507568440478654724

`A033677(n+1)%A269236(n+1)-1`
-/

namespace A382493.P12507568440478654724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (n + 1)) (A269236 (n + 1)) - 1

end

end A382493.P12507568440478654724

/-! ## A382493.P17406611948054636875

`A057428(A001975(n))+A033677(n+1)`
-/

namespace A382493.P17406611948054636875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A001975 n).toNat + A033677 (n + 1)

end

end A382493.P17406611948054636875

/-! ## A382493.P5364398235923390911

`A072637(A072636(n))%A033677(n+1)`
-/

namespace A382493.P5364398235923390911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072637 (A072636 n).toNat) (A033677 (n + 1))

end

end A382493.P5364398235923390911

/-!
# A382499: Inverse permutation to A381968.

The programs for A382499, there is no canonical definition to state claims against.
-/

/-! ## A382499.P5459092758734080709

`A383724(A056023(n+1))`
-/

namespace A382499.P5459092758734080709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A056023 (n + 1)).toNat

end

end A382499.P5459092758734080709

/-! ## A382499.P4893941370904438663

`A056023(A383722(n+1))`
-/

namespace A382499.P4893941370904438663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A383722 (n + 1)).toNat

end

end A382499.P4893941370904438663

/-! ## A382499.P1270158285586775039

`A382680(A376214(n+1))`
-/

namespace A382499.P1270158285586775039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A376214 (n + 1)).toNat

end

end A382499.P1270158285586775039

/-! ## A382499.P4267484397110045575

`A376214(A382679(n+1))`
-/

namespace A382499.P4267484397110045575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A382679 (n + 1)).toNat

end

end A382499.P4267484397110045575

/-! ## A382499.P8227554100382919257

`A383590(A378762(n+1))`
-/

namespace A382499.P8227554100382919257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A378762 (n + 1)).toNat

end

end A382499.P8227554100382919257

/-! ## A382499.P11986972226599521904

`A382679(A380817(n+1))`
-/

namespace A382499.P11986972226599521904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A380817 (n + 1)).toNat

end

end A382499.P11986972226599521904

/-! ## A382499.P3431128314444121351

`A380817(A382680(n+1))`
-/

namespace A382499.P3431128314444121351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A382680 (n + 1)).toNat

end

end A382499.P3431128314444121351

/-! ## A382499.P13544350203751384115

`A381968(A381662(n+1))`
-/

namespace A382499.P13544350203751384115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A381662 (n + 1)).toNat

end

end A382499.P13544350203751384115

/-! ## A382499.P14013616154987451372

`A383589(A383419(n+1))`
-/

namespace A382499.P14013616154987451372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A383419 (n + 1)).toNat

end

end A382499.P14013616154987451372

/-! ## A382499.P1502924832163321640

`A383722(A383723(n+1))`
-/

namespace A382499.P1502924832163321640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A383723 (n + 1)).toNat

end

end A382499.P1502924832163321640

/-! ## A382499.P15672455144104590776

`A383723(A383724(n+1))`
-/

namespace A382499.P15672455144104590776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A383724 (n + 1)).toNat

end

end A382499.P15672455144104590776

/-! ## A382499.P13468541218681134887

`A383723(A056023(A381968(n+1)))`
-/

namespace A382499.P13468541218681134887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A056023 (A381968 (n + 1)).toNat).toNat

end

end A382499.P13468541218681134887

/-! ## A382499.P15094940075488519774

`A378200(A381968(A378200(n+1)))`
-/

namespace A382499.P15094940075488519774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381968 (A378200 (n + 1)).toNat).toNat

end

end A382499.P15094940075488519774

/-! ## A382499.P2231955566527960713

`A378684(A382679(A378684(n+1)))`
-/

namespace A382499.P2231955566527960713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A382679 (A378684 (n + 1)).toNat).toNat

end

end A382499.P2231955566527960713

/-! ## A382499.P14628140593995431674

`A381968(A379343(A379342(n+1)))`
-/

namespace A382499.P14628140593995431674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A379343 (A379342 (n + 1)).toNat).toNat

end

end A382499.P14628140593995431674

/-! ## A382499.P3420263508507704900

`A379343(A381968(A379343(n+1)))`
-/

namespace A382499.P3420263508507704900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381968 (A379343 (n + 1)).toNat).toNat

end

end A382499.P3420263508507704900

/-! ## A382499.P15234969223752317873

`A381968(A378684(A380200(n+1)))`
-/

namespace A382499.P15234969223752317873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378684 (A380200 (n + 1)).toNat).toNat

end

end A382499.P15234969223752317873

/-! ## A382499.P263129108060539180

`A382680(A378684(A380245(n+1)))`
-/

namespace A382499.P263129108060539180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A380245 (n + 1)).toNat).toNat

end

end A382499.P263129108060539180

/-! ## A382499.P2560188536152614962

`A378684(A381968(A381664(n+1)))`
-/

namespace A382499.P2560188536152614962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A381664 (n + 1)).toNat).toNat

end

end A382499.P2560188536152614962

/-! ## A382499.P6982635312073019652

`A382680(A379343(A380815(n+1)))`
-/

namespace A382499.P6982635312073019652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A379343 (A380815 (n + 1)).toNat).toNat

end

end A382499.P6982635312073019652

