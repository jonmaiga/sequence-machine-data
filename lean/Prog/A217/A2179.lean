import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A217900: O.g.f.: Sum_{n>=0} n^n * (n+1)^(n-1) * exp(-n*(n+1)*x) * x^n / n!.

The programs for A217900, the canonical program `A217900.P460479903124583524` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217900 has offset 0).

The definition of A217900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217900.P460479903124583524

`1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*#^n*(#+1)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217900

/-- `1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*#^n*(#+1)^(n-1)]` -/
def P460479903124583524.Spec : Prop :=
  ∀ n, P460479903124583524.a n = (A217900 n : ℚ)

end A217900

/-! ## A217900.P16704048891859490886

`A078739((1-n)²+n)`
-/

namespace A217900.P16704048891859490886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078739 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A217900.P16704048891859490886

namespace A217900

/-- `A078739((1-n)²+n)` -/
def P16704048891859490886.Spec : Prop :=
  ∀ n, P16704048891859490886.a n = A217900 n

end A217900

/-! ## A217900.P13302654444890903987

`A078739(A002061(n))+A025439(n)`
-/

namespace A217900.P13302654444890903987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078739 (A002061 n).toNat + A025439 n

end

end A217900.P13302654444890903987

namespace A217900

/-- `A078739(A002061(n))+A025439(n)` -/
def P13302654444890903987.Spec : Prop :=
  ∀ n, P13302654444890903987.a n = A217900 n

end A217900

/-! ## A217900.P16888290690567665934

`A078739(A002061(n))+A000007(2*n+1)`
-/

namespace A217900.P16888290690567665934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078739 (A002061 n).toNat + A000007 (2 * n + 1)

end

end A217900.P16888290690567665934

namespace A217900

/-- `A078739(A002061(n))+A000007(2*n+1)` -/
def P16888290690567665934.Spec : Prop :=
  ∀ n, P16888290690567665934.a n = A217900 n

end A217900

/-! ## A217900.P13295810631190377065

`or(A024155(2*n+5), A078739(A002061(n)))`
-/

namespace A217900.P13295810631190377065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024155 (2 * n + 5)) (A078739 (A002061 n).toNat)

end

end A217900.P13295810631190377065

namespace A217900

/-- `or(A024155(2*n+5), A078739(A002061(n)))` -/
def P13295810631190377065.Spec : Prop :=
  ∀ n, P13295810631190377065.a n = A217900 n

end A217900

/-!
# A217901: O.g.f.: Sum_{n>=0} 2*n^n * (n+2)^(n-1) * exp(-n*(n+2)*x) * x^n / n!.

The programs for A217901, the canonical program `A217901.P3819891232801824950` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217901 has offset 0).

The definition of A217901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217901.P3819891232801824950

`1/n!*∑{#}[n, 2*(-1)^(n-#)*C(n, #)*#^n*(#+2)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217901

/-- `1/n!*∑{#}[n, 2*(-1)^(n-#)*C(n, #)*#^n*(#+2)^(n-1)]` -/
def P3819891232801824950.Spec : Prop :=
  ∀ n, P3819891232801824950.a n = (A217901 n : ℚ)

end A217901

/-!
# A217902: O.g.f.: Sum_{n>=0} 3*n^n*(n+3)^(n-1) * exp(-n*(n+3)*x) * x^n / n!.

The programs for A217902, the canonical program `A217902.P15017170354328378573` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217902 has offset 0).

The definition of A217902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217902.P15017170354328378573

`1/n!*∑{#}[n, 3*(-1)^(n-#)*C(n, #)*#^n*(#+3)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217902

/-- `1/n!*∑{#}[n, 3*(-1)^(n-#)*C(n, #)*#^n*(#+3)^(n-1)]` -/
def P15017170354328378573.Spec : Prop :=
  ∀ n, P15017170354328378573.a n = (A217902 n : ℚ)

end A217902

/-!
# A217903: O.g.f.: Sum_{n>=0} 4*n^n*(n+4)^(n-1) * exp(-n*(n+4)*x) * x^n / n!.

The programs for A217903, the canonical program `A217903.P18126969004520978143` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217903 has offset 0).

The definition of A217903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217903.P18126969004520978143

`1/n!*∑{#}[n, 4*(-1)^(n-#)*C(n, #)*#^n*(#+4)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217903

/-- `1/n!*∑{#}[n, 4*(-1)^(n-#)*C(n, #)*#^n*(#+4)^(n-1)]` -/
def P18126969004520978143.Spec : Prop :=
  ∀ n, P18126969004520978143.a n = (A217903 n : ℚ)

end A217903

/-!
# A217904: O.g.f.: Sum_{n>=0} 5*n^n*(n+5)^(n-1) * exp(-n*(n+5)*x) * x^n / n!.

The programs for A217904, the canonical program `A217904.P13790429962004560665` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217904 has offset 0).

The definition of A217904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217904.P13790429962004560665

`1/n!*∑{#}[n, 5*(-1)^(n-#)*C(n, #)*#^n*(#+5)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217904

/-- `1/n!*∑{#}[n, 5*(-1)^(n-#)*C(n, #)*#^n*(#+5)^(n-1)]` -/
def P13790429962004560665.Spec : Prop :=
  ∀ n, P13790429962004560665.a n = (A217904 n : ℚ)

end A217904

/-!
# A217905: O.g.f.: Sum_{n>=0} -n^n*(n-1)^(n-1) * exp(-n*(n-1)*x) * x^n / n!.

The programs for A217905, there is no canonical definition to state claims against.
-/

/-! ## A217905.P12450879084821563553

`(-1)^∑[n]-A081163(comp[2*(n+1)])`
-/

namespace A217905.P12450879084821563553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - A081163 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A217905.P12450879084821563553

/-!
# A217906: O.g.f.: 1 / Sum_{n>=0} -n^n*(n-1)^(n-1) * exp(-n*(n-1)*x) * x^n / n!.

The programs for A217906, there is no canonical definition to state claims against.
-/

/-! ## A217906.P2845948420752091175

`A000015(A230317(n))`
-/

namespace A217906.P2845948420752091175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A230317 n).toNat

end

end A217906.P2845948420752091175

/-! ## A217906.P6599113662978581460

`A008578(A111102(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A217906.P6599113662978581460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A008578 (A111102 (a (n - 1)).toNat).toNat

end

end A217906.P6599113662978581460

/-!
# A217907: Numbers whose digits squared sum to a semiprime.

The programs for A217907, the canonical program `A217907.P2432424191338004999` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217907 has offset 1).

The definition of A217907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217907.P2432424191338004999

`eq[2, ∑{e}[∑{digits}[n, #²], #]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217907

/-- `eq[2, ∑{e}[∑{digits}[n, #²], #]]` -/
def P2432424191338004999.Spec : Prop :=
  ∀ n, (P2432424191338004999.a n : ℤ) = A217907 (n + 1)

theorem P2432424191338004999.correct : P2432424191338004999.Spec := by
  intro n
  simp only [A217907, Nat.add_sub_cancel]

end A217907

/-! ## A217907.P11371651098827571726

`eq[2, ∑{e}[A003132(n), #]]`
-/

namespace A217907.P11371651098827571726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217907.P11371651098827571726

namespace A217907

/-- `eq[2, ∑{e}[A003132(n), #]]` -/
def P11371651098827571726.Spec : Prop :=
  ∀ n, (P11371651098827571726.a n : ℤ) = A217907 (n + 1)

end A217907

/-! ## A217907.P7846996391269837954

`lt[1, A105700(∑{digits}[n, #²])]`
-/

namespace A217907.P7846996391269837954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217907.P7846996391269837954

namespace A217907

/-- `lt[1, A105700(∑{digits}[n, #²])]` -/
def P7846996391269837954.Spec : Prop :=
  ∀ n, (P7846996391269837954.a n : ℤ) = A217907 (n + 1)

end A217907

/-! ## A217907.P2350425998493078138

`lt[1, A105700(floor(∑{digits}[n, #^(4/2)]))]`
-/

namespace A217907.P2350425998493078138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ⌊((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217907.P2350425998493078138

namespace A217907

/-- `lt[1, A105700(floor(∑{digits}[n, #^(4/2)]))]` -/
def P2350425998493078138.Spec : Prop :=
  ∀ n, (P2350425998493078138.a n : ℤ) = A217907 (n + 1)

end A217907

/-! ## A217907.P8337723887315863969

`lt[1, A105700(A003132(n))]`
-/

namespace A217907.P8337723887315863969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217907.P8337723887315863969

namespace A217907

/-- `lt[1, A105700(A003132(n))]` -/
def P8337723887315863969.Spec : Prop :=
  ∀ n, (P8337723887315863969.a n : ℤ) = A217907 (n + 1)

end A217907

/-! ## A217907.P16488370388119096805

`eq[2, A001222(A003132(n+1))]+1`
-/

namespace A217907.P16488370388119096805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217907.P16488370388119096805

namespace A217907

/-- `eq[2, A001222(A003132(n+1))]+1` -/
def P16488370388119096805.Spec : Prop :=
  ∀ n, (P16488370388119096805.a n : ℤ) = A217907 (n + 1)

end A217907

/-! ## A217907.P17090562901510669944

`lt[1, A105700(A118881(n)-A069816(n))]`
-/

namespace A217907.P17090562901510669944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A118881 n - A069816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217907.P17090562901510669944

namespace A217907

/-- `lt[1, A105700(A118881(n)-A069816(n))]` -/
def P17090562901510669944.Spec : Prop :=
  ∀ n, (P17090562901510669944.a n : ℤ) = A217907 (n + 1)

end A217907

/-!
# A217908: Semiprime powers of distinct semiprimes.

The programs for A217908, there is no canonical definition to state claims against.
-/

/-! ## A217908.P17575706495353393385

`record[A113877(A038374(2*floor(ϕ*(n+2))+n))]`
-/

namespace A217908.P17575706495353393385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113877 (A038374 (2 * ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217908.P17575706495353393385

/-! ## A217908.P9818309650111112989

`A323644(A227549(n+3))²²`
-/

namespace A217908.P9818309650111112989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323644 (A227549 (n + 3)).toNat ^ 2) ^ 2

end

end A217908.P9818309650111112989

/-! ## A217908.P2122820211919397218

`A129539(A094372(n+1))`
-/

namespace A217908.P2122820211919397218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129539 (A094372 (n + 1)).toNat

end

end A217908.P2122820211919397218

/-!
# A217910: O.g.f.: Sum_{n>=0} n^n*(2*n+1)^(n-1) * exp(-n*(2*n+1)*x) * x^n / n!.

The programs for A217910, the canonical program `A217910.P10885196909227746672` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217910 has offset 0).

The definition of A217910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217910.P10885196909227746672

`1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*#^n*(2*#+1)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217910

/-- `1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*#^n*(2*#+1)^(n-1)]` -/
def P10885196909227746672.Spec : Prop :=
  ∀ n, P10885196909227746672.a n = (A217910 n : ℚ)

end A217910

/-!
# A217911: O.g.f.: Sum_{n>=0} n^n * (3*n+1)^(n-1) * exp(-n*(3*n+1)*x) * x^n / n!.

The programs for A217911, the canonical program `A217911.P13836107006556181141` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217911 has offset 0).

The definition of A217911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217911.P13836107006556181141

`1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*#^n*(3*#+1)^(n-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217911

/-- `1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*#^n*(3*#+1)^(n-1)]` -/
def P13836107006556181141.Spec : Prop :=
  ∀ n, P13836107006556181141.a n = (A217911 n : ℚ)

end A217911

/-!
# A217913: O.g.f.: Sum_{n>=0} (n^3)^n * exp(-n^3*x) * x^n / n!.

The programs for A217913, there is no canonical definition to state claims against.
-/

/-! ## A217913.P9155849518339148832

`A008278(∑[9*n-4]+5)`
-/

namespace A217913.P9155849518339148832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A217913.P9155849518339148832

/-! ## A217913.P13677361993489793229

`A106800(A062728(n))`
-/

namespace A217913.P13677361993489793229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A062728 n).toNat

end

end A217913.P13677361993489793229

/-! ## A217913.P1278360017012181741

`A106800(A062725(n)+n)`
-/

namespace A217913.P1278360017012181741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A062725 n + (n : ℤ)).toNat

end

end A217913.P1278360017012181741

/-! ## A217913.P15499465420731435050

`A106800(eq[A059268(n), A262616(n)])`
-/

namespace A217913.P15499465420731435050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A217913.P15499465420731435050

/-! ## A217913.P14536861890911905550

`A048993(2*n+∑[n]+(2*n)²)`
-/

namespace A217913.P14536861890911905550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n) ^ 2))

end

end A217913.P14536861890911905550

/-!
# A217914: O.g.f.: Sum_{n>=0} (n^4)^n * exp(-n^4*x) * x^n / n!.

The programs for A217914, there is no canonical definition to state claims against.
-/

/-! ## A217914.P721517382183233623

`A048993(A139276(n))`
-/

namespace A217914.P721517382183233623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A139276 n).toNat

end

end A217914.P721517382183233623

/-! ## A217914.P2654350513614622658

`A008278(A139275(n)+1)`
-/

namespace A217914.P2654350513614622658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A139275 n + 1).toNat

end

end A217914.P2654350513614622658

/-! ## A217914.P18258906068053771781

`A048993(n*A017101(n))`
-/

namespace A217914.P18258906068053771781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((n : ℤ) * A017101 n).toNat

end

end A217914.P18258906068053771781

/-! ## A217914.P15857942409431415466

`A048993(A014105(2*n)+n)`
-/

namespace A217914.P15857942409431415466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014105 (2 * n) + (n : ℤ)).toNat

end

end A217914.P15857942409431415466

/-! ## A217914.P8660026572608074704

`A008278(A058331(2*n)+n)`
-/

namespace A217914.P8660026572608074704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A058331 (2 * n) + (n : ℤ)).toNat

end

end A217914.P8660026572608074704

/-!
# A217915: O.g.f.: Sum_{n>=1} (n^5)^n * exp(-n^5*x) * x^n / n!.

The programs for A217915, there is no canonical definition to state claims against.
-/

/-! ## A217915.P99758224050303452

`A136011(A187508(n+1)+1)`
-/

namespace A217915.P99758224050303452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136011 (A187508 (n + 1) + 1).toNat

end

end A217915.P99758224050303452

/-! ## A217915.P11448757899233783754

`A106800(A139276(n)+A062728(n))`
-/

namespace A217915.P11448757899233783754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A139276 n + A062728 n).toNat

end

end A217915.P11448757899233783754

/-!
# A217916: a(n) = prime(n) - Sum_{k=1..A002024(n)-1} a(n-k), where A002024(m) = [sqrt(2*m)+1/2] is "n appears n times".

The programs for A217916, the canonical program `A217916.P17217710522096274754` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217916 has offset 1).

The definition of A217916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217916.P6461788280574773268

`A075526(n)+T(n-1,k-1)` with `a(0)=2`
-/

namespace A217916.P6461788280574773268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075526 n + SequenceMachineLib.triUpLeft a n

end

end A217916.P6461788280574773268

namespace A217916

/-- `A075526(n)+T(n-1,k-1)` -/
def P6461788280574773268.Spec : Prop :=
  ∀ n, P6461788280574773268.a n = A217916 (n + 1)

end A217916

/-! ## A217916.P17217710522096274754

`A054541(n+1)+T(n-1,k-1)` with `a(0)=2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A217916

/-- `A054541(n+1)+T(n-1,k-1)` -/
def P17217710522096274754.Spec : Prop :=
  ∀ n, P17217710522096274754.a n = A217916 (n + 1)

theorem P17217710522096274754.correct : P17217710522096274754.Spec := by
  intro n
  simp only [A217916, Nat.add_sub_cancel]

end A217916

/-! ## A217916.P4497408138010869382

`T(n-1,k-1)+Δ[record[∑{p}[n, #]]]` with `a(0)=2`
-/

namespace A217916.P4497408138010869382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A217916.P4497408138010869382

namespace A217916

/-- `T(n-1,k-1)+Δ[record[∑{p}[n, #]]]` -/
def P4497408138010869382.Spec : Prop :=
  ∀ n, P4497408138010869382.a n = A217916 (n + 1)

end A217916

/-! ## A217916.P18289873584816343036

`T(n-1,k-1)+Δ[lt[∑{e}[n+1, #], 2]]` with `a(0)=2`
-/

namespace A217916.P18289873584816343036
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A217916.P18289873584816343036

namespace A217916

/-- `T(n-1,k-1)+Δ[lt[∑{e}[n+1, #], 2]]` -/
def P18289873584816343036.Spec : Prop :=
  ∀ n, P18289873584816343036.a n = A217916 (n + 1)

end A217916

/-!
# A217917: Odd numbers that appear in sequence A217916.

The programs for A217917, the canonical program `A217917.P15689719771155511156` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217917 has offset 1).

The definition of A217917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217917.P15689719771155511156

`A217916((n+2)*(n+3)/2-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A217917

/-- `A217916((n+2)*(n+3)/2-1)` -/
def P15689719771155511156.Spec : Prop :=
  ∀ n, P15689719771155511156.a n = A217917 (n + 1)

theorem P15689719771155511156.correct : P15689719771155511156.Spec := by
  intro n
  simp only [A217917, Nat.add_sub_cancel]

end A217917

/-! ## A217917.P6413253404485104331

`∑[A001223(∑[n+2]-1)]`
-/

namespace A217917.P6413253404485104331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P6413253404485104331

namespace A217917

/-- `∑[A001223(∑[n+2]-1)]` -/
def P6413253404485104331.Spec : Prop :=
  ∀ n, P6413253404485104331.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P7805563526605811792

`or(1, ∑[A001223(A034856(1+n))])`
-/

namespace A217917.P7805563526605811792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A034856 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217917.P7805563526605811792

namespace A217917

/-- `or(1, ∑[A001223(A034856(1+n))])` -/
def P7805563526605811792.Spec : Prop :=
  ∀ n, P7805563526605811792.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P8447116865028289720

`A000027(∑[A001223(∑[n+1]+n)])`
-/

namespace A217917.P8447116865028289720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217917.P8447116865028289720

namespace A217917

/-- `A000027(∑[A001223(∑[n+1]+n)])` -/
def P8447116865028289720.Spec : Prop :=
  ∀ n, P8447116865028289720.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P11529230846974728094

`A026741(∑[A001223(∑[n+1]+n)])`
-/

namespace A217917.P11529230846974728094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217917.P11529230846974728094

namespace A217917

/-- `A026741(∑[A001223(∑[n+1]+n)])` -/
def P11529230846974728094.Spec : Prop :=
  ∀ n, P11529230846974728094.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P6422804173410665519

`A040026(∑[A001223(∑[n+1]+n)])`
-/

namespace A217917.P6422804173410665519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217917.P6422804173410665519

namespace A217917

/-- `A040026(∑[A001223(∑[n+1]+n)])` -/
def P6422804173410665519.Spec : Prop :=
  ∀ n, P6422804173410665519.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P15750561649519803961

`A001223(A027379(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A217917.P15750561649519803961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001223 (A027379 n + 1).toNat + a (n - 1)

end

end A217917.P15750561649519803961

namespace A217917

/-- `A001223(A027379(n)+1)+a(n-1)` -/
def P15750561649519803961.Spec : Prop :=
  ∀ n, P15750561649519803961.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P13693574522993025053

`∑[A001223(∑[n+1]+n)%A007937(n+1)]`
-/

namespace A217917.P13693574522993025053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (∑ j ∈ Finset.range (n + 1), f2 j + n)) (A007937 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P13693574522993025053

namespace A217917

/-- `∑[A001223(∑[n+1]+n)%A007937(n+1)]` -/
def P13693574522993025053.Spec : Prop :=
  ∀ n, P13693574522993025053.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P13346329218100328590

`A028310(a(n-1))+A001223(A034856(n+1))` with `a(0)=1`
-/

namespace A217917.P13346329218100328590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A001223 (A034856 (n + 1)).toNat

end

end A217917.P13346329218100328590

namespace A217917

/-- `A028310(a(n-1))+A001223(A034856(n+1))` -/
def P13346329218100328590.Spec : Prop :=
  ∀ n, P13346329218100328590.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P5798924667279852748

`filter[A217916(n+1), A000035(#)]`
-/

namespace A217917.P5798924667279852748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A217917.P5798924667279852748

namespace A217917

/-- `filter[A217916(n+1), A000035(#)]` -/
def P5798924667279852748.Spec : Prop :=
  ∀ n, P5798924667279852748.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P13500348596936859654

`∑[A054541(∑[n+2])]`
-/

namespace A217917.P13500348596936859654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P13500348596936859654

namespace A217917

/-- `∑[A054541(∑[n+2])]` -/
def P13500348596936859654.Spec : Prop :=
  ∀ n, P13500348596936859654.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P13971442534271320834

`∑[A125266(∑[n+2])]`
-/

namespace A217917.P13971442534271320834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P13971442534271320834

namespace A217917

/-- `∑[A125266(∑[n+2])]` -/
def P13971442534271320834.Spec : Prop :=
  ∀ n, P13971442534271320834.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P17566398915369066096

`∑[A181346(∑[n+2])]+1`
-/

namespace A217917.P17566398915369066096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A217917.P17566398915369066096

namespace A217917

/-- `∑[A181346(∑[n+2])]+1` -/
def P17566398915369066096.Spec : Prop :=
  ∀ n, P17566398915369066096.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P9242879294361662595

`∑[A046933(∑[n+2]-1)+1]`
-/

namespace A217917.P9242879294361662595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (∑ j ∈ Finset.range (n + 1), f2 j - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P9242879294361662595

namespace A217917

/-- `∑[A046933(∑[n+2]-1)+1]` -/
def P9242879294361662595.Spec : Prop :=
  ∀ n, P9242879294361662595.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P7885685807183430850

`∑[A230849((n+2)²+n-1)]`
-/

namespace A217917.P7885685807183430850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P7885685807183430850

namespace A217917

/-- `∑[A230849((n+2)²+n-1)]` -/
def P7885685807183430850.Spec : Prop :=
  ∀ n, P7885685807183430850.a n = A217917 (n + 1)

end A217917

/-! ## A217917.P9684278947376761972

`∑[A166597(A006093(∑[n+2]))]`
-/

namespace A217917.P9684278947376761972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A006093 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P9684278947376761972

namespace A217917

/-- `∑[A166597(A006093(∑[n+2]))]` -/
def P9684278947376761972.Spec : Prop :=
  ∀ n, P9684278947376761972.a n = A217917 (n + 1)

end A217917

/-!
# A217918: Positions of 2 in sequence A217916.

The programs for A217918, there is no canonical definition to state claims against.
-/

/-! ## A217918.P15785033111318510484

`C(A217919(n+1), 2)+1`
-/

namespace A217918.P15785033111318510484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A217919 (n + 1)).toNat 2 + 1

end

end A217918.P15785033111318510484

/-! ## A217918.P1722638023849651675

`A152947(A217919(n+1)+1)`
-/

namespace A217918.P1722638023849651675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A217919 (n + 1) + 1).toNat

end

end A217918.P1722638023849651675

/-! ## A217918.P14457768368303122189

`A000124(A217919(n+1)-1)`
-/

namespace A217918.P14457768368303122189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A217919 (n + 1) - 1).toNat

end

end A217918.P14457768368303122189

/-! ## A217918.P5623633018315936676

`A000124(eq[2, A217920(n+1)])`
-/

namespace A217918.P5623633018315936676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217918.P5623633018315936676

/-! ## A217918.P11489987428569357752

`A000217(A217919(n+1)-1)+1`
-/

namespace A217918.P11489987428569357752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A217919 (n + 1) - 1).toNat + 1

end

end A217918.P11489987428569357752

/-!
# A217919: Rows of A217916 in which 2's appear, when A217916 is formed into a number triangle.

The programs for A217919, there is no canonical definition to state claims against.
-/

/-! ## A217919.P4341689312599322953

`eq[2, A217920(n+1)]+1`
-/

namespace A217919.P4341689312599322953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217919.P4341689312599322953

/-! ## A217919.P17778813566401507600

`A113881(A217918(n+1))`
-/

namespace A217919.P17778813566401507600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A217918 (n + 1)).toNat

end

end A217919.P17778813566401507600

/-! ## A217919.P7709486191803500283

`2*record[n/A001223(A179865(n+1))]+1`
-/

namespace A217919.P7709486191803500283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A001223 (A179865 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A217919.P7709486191803500283

/-! ## A217919.P12229128987415582493

`record[A000027(n+1)/A217916(A217920(n+1))]`
-/

namespace A217919.P12229128987415582493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A217916 (A217920 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217919.P12229128987415582493

/-! ## A217919.P7868499574630638707

`A280499(A217918(n+1))%A034472(n)`
-/

namespace A217919.P7868499574630638707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280499 (A217918 (n + 1)).toNat) (A034472 n)

end

end A217919.P7868499574630638707

/-!
# A217920: Column 1 of A217916 (when formed into a number triangle).

The programs for A217920, the canonical program `A217920.P8141071150989026145` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217920 has offset 1).

The definition of A217920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217920.P8141071150989026145

`A001223(abs(1-∑[n])+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217920

/-- `A001223(abs(1-∑[n])+1)` -/
def P8141071150989026145.Spec : Prop :=
  ∀ n, P8141071150989026145.a n = A217920 (n + 1)

theorem P8141071150989026145.correct : P8141071150989026145.Spec := by
  intro n
  simp only [A217920, Nat.add_sub_cancel]

end A217920

/-! ## A217920.P15524648073207880147

`A001223(A179865(1+n))+A000007(n)`
-/

namespace A217920.P15524648073207880147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A179865 (1 + n)).toNat + A000007 n

end

end A217920.P15524648073207880147

namespace A217920

/-- `A001223(A179865(1+n))+A000007(n)` -/
def P15524648073207880147.Spec : Prop :=
  ∀ n, P15524648073207880147.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P114990393113031705

`A187036(2*n+1)+A001223(A179865(n+1))`
-/

namespace A217920.P114990393113031705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (2 * n + 1) + A001223 (A179865 (n + 1)).toNat

end

end A217920.P114990393113031705

namespace A217920

/-- `A187036(2*n+1)+A001223(A179865(n+1))` -/
def P114990393113031705.Spec : Prop :=
  ∀ n, P114990393113031705.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P15997077533238955762

`A055641(A000120(n))+A001223(A179865(n+1))`
-/

namespace A217920.P15997077533238955762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000120 n).toNat + A001223 (A179865 (n + 1)).toNat

end

end A217920.P15997077533238955762

namespace A217920

/-- `A055641(A000120(n))+A001223(A179865(n+1))` -/
def P15997077533238955762.Spec : Prop :=
  ∀ n, P15997077533238955762.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P13586836692848434765

`A001223(A000217(A000007(n)+n))+A000007(n)`
-/

namespace A217920.P13586836692848434765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000217 (A000007 n + (n : ℤ)).toNat).toNat + A000007 n

end

end A217920.P13586836692848434765

namespace A217920

/-- `A001223(A000217(A000007(n)+n))+A000007(n)` -/
def P13586836692848434765.Spec : Prop :=
  ∀ n, P13586836692848434765.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P2196886276974960782

`A001223(A179865(n+1))+A000035(A001223(n+1))`
-/

namespace A217920.P2196886276974960782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A179865 (n + 1)).toNat + A000035 (A001223 (n + 1)).toNat

end

end A217920.P2196886276974960782

namespace A217920

/-- `A001223(A179865(n+1))+A000035(A001223(n+1))` -/
def P2196886276974960782.Spec : Prop :=
  ∀ n, P2196886276974960782.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P16574964803754030096

`A054541(∑[n]+1)`
-/

namespace A217920.P16574964803754030096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217920.P16574964803754030096

namespace A217920

/-- `A054541(∑[n]+1)` -/
def P16574964803754030096.Spec : Prop :=
  ∀ n, P16574964803754030096.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P1333817993392118597

`A217916(∑[n]+1)`
-/

namespace A217920.P1333817993392118597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217920.P1333817993392118597

namespace A217920

/-- `A217916(∑[n]+1)` -/
def P1333817993392118597.Spec : Prop :=
  ∀ n, P1333817993392118597.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P10572373379387424588

`A230847(∑[n]+1)-1`
-/

namespace A217920.P10572373379387424588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A217920.P10572373379387424588

namespace A217920

/-- `A230847(∑[n]+1)-1` -/
def P10572373379387424588.Spec : Prop :=
  ∀ n, P10572373379387424588.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P15665601122653513724

`abs(A054541(A000217(n)+1)-1)+1`
-/

namespace A217920.P15665601122653513724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054541 (A000217 n + 1).toNat - 1| + 1

end

end A217920.P15665601122653513724

namespace A217920

/-- `abs(A054541(A000217(n)+1)-1)+1` -/
def P15665601122653513724.Spec : Prop :=
  ∀ n, P15665601122653513724.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P8224781649058341864

`A000027(A054541((n²+n)/2+1)+1)-1`
-/

namespace A217920.P8224781649058341864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A054541 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2 + 1)).toNat + 1).toNat - 1

end

end A217920.P8224781649058341864

namespace A217920

/-- `A000027(A054541((n²+n)/2+1)+1)-1` -/
def P8224781649058341864.Spec : Prop :=
  ∀ n, P8224781649058341864.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P10252194119549126289

`A054541(A000217(n)+1)-A341916(A341915(n))+n`
-/

namespace A217920.P10252194119549126289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A000217 n + 1).toNat - A341916 (A341915 n).toNat + (n : ℤ)

end

end A217920.P10252194119549126289

namespace A217920

/-- `A054541(A000217(n)+1)-A341916(A341915(n))+n` -/
def P10252194119549126289.Spec : Prop :=
  ∀ n, P10252194119549126289.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P11526908347086546520

`A166597(A006093(∑[n]+1))`
-/

namespace A217920.P11526908347086546520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A006093 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A217920.P11526908347086546520

namespace A217920

/-- `A166597(A006093(∑[n]+1))` -/
def P11526908347086546520.Spec : Prop :=
  ∀ n, P11526908347086546520.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P2086639965431663358

`A166597(A000040(∑[n]+1)-1)`
-/

namespace A217920.P2086639965431663358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A217920.P2086639965431663358

namespace A217920

/-- `A166597(A000040(∑[n]+1)-1)` -/
def P2086639965431663358.Spec : Prop :=
  ∀ n, P2086639965431663358.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P9723029258016588436

`A230850(∑[2*n]+1)`
-/

namespace A217920.P9723029258016588436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217920.P9723029258016588436

namespace A217920

/-- `A230850(∑[2*n]+1)` -/
def P9723029258016588436.Spec : Prop :=
  ∀ n, P9723029258016588436.a n = A217920 (n + 1)

end A217920

/-! ## A217920.P1265066126060973027

`A134735(A103505(n+1))`
-/

namespace A217920.P1265066126060973027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A103505 (n + 1)).toNat

end

end A217920.P1265066126060973027

namespace A217920

/-- `A134735(A103505(n+1))` -/
def P1265066126060973027.Spec : Prop :=
  ∀ n, P1265066126060973027.a n = A217920 (n + 1)

end A217920

/-!
# A217921: Number of steps to calculate A175872(n).

The programs for A217921, there is no canonical definition to state claims against.
-/

/-! ## A217921.P7942841383439095253

`A318928(n+1)-A065357(A083527(n+1))`
-/

namespace A217921.P7942841383439095253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (n + 1) - A065357 (A083527 (n + 1)).toNat

end

end A217921.P7942841383439095253

/-! ## A217921.P15577371987151431149

`A318928(n+1)-A051996(A089170(n))`
-/

namespace A217921.P15577371987151431149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (n + 1) - A051996 (A089170 n).toNat

end

end A217921.P15577371987151431149

/-! ## A217921.P11188528044810021133

`A318928(n+1)-A202605(A084546(n))`
-/

namespace A217921.P11188528044810021133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (n + 1) - A202605 (A084546 n).toNat

end

end A217921.P11188528044810021133

/-! ## A217921.P18378845267414482842

`A178356(A318928(n+1)^A333805(n+1))`
-/

namespace A217921.P18378845267414482842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178356 (SequenceMachineLib.roundAway ((A318928 (n + 1) : ℚ) ^ (A333805 (n + 1) : ℤ))).toNat

end

end A217921.P18378845267414482842

/-! ## A217921.P2296580530591354718

`A351290(A318928(n+1)^A285337(n+1))`
-/

namespace A217921.P2296580530591354718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (SequenceMachineLib.roundAway ((A318928 (n + 1) : ℚ) ^ (A285337 (n + 1) : ℤ))).toNat

end

end A217921.P2296580530591354718

/-!
# A217923: F-block elements for Janet periodic table.

The programs for A217923, there is no canonical definition to state claims against.
-/

/-! ## A217923.P14426682233621244785

`lt[12, xor(n, floor(n/2))-n]+25`
-/

namespace A217923.P14426682233621244785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 25

end

end A217923.P14426682233621244785

/-! ## A217923.P5219914179637902641

`∑[gcd(57, A063005(n))]`
-/

namespace A217923.P5219914179637902641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 57 (A063005 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217923.P5219914179637902641

/-! ## A217923.P11471792446852735439

`lt[8, A007305(n)]+7`
-/

namespace A217923.P11471792446852735439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 7

end

end A217923.P11471792446852735439

/-! ## A217923.P17517500266076485838

`record[A135559(n+4)-1]`
-/

namespace A217923.P17517500266076485838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135559 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217923.P17517500266076485838

/-! ## A217923.P12658622617839114379

`A138100(n+15)+8*8/2`
-/

namespace A217923.P12658622617839114379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138100 (n + 15) : ℚ) + 8 * ((8 : ℚ) / 2)

end

end A217923.P12658622617839114379

/-!
# A217924: a(n) = n! * [x^n] exp(2*exp(x) - x - 2). Row sums of triangle A217537.

The programs for A217924, there is no canonical definition to state claims against.
-/

/-! ## A217924.P16053658959414043491

`∑{#}[n, C(n, #)*A194689(#)]`
-/

namespace A217924.P16053658959414043491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A194689 k

end

end A217924.P16053658959414043491

/-! ## A217924.P15571248160849322728

`A194689(n)+A194689(n+1)/2`
-/

namespace A217924.P15571248160849322728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194689 n : ℚ) + (A194689 (n + 1) : ℚ) / 2

end

end A217924.P15571248160849322728

/-! ## A217924.P13070529878186198645

`∑{#}[n, (-1)^(n-#)*C(n, #)*A001861(#)]`
-/

namespace A217924.P13070529878186198645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A001861 k : ℚ)

end

end A217924.P13070529878186198645

/-! ## A217924.P14223131158900720412

`A194689(n)+A004526(A194689(n+1))`
-/

namespace A217924.P14223131158900720412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194689 n + A004526 (A194689 (n + 1)).toNat

end

end A217924.P14223131158900720412

/-!
# A217925: G.f. A(x) satisfies A(x) = 1 + x*A(x)*A(x^2)^2.

The programs for A217925, there is no canonical definition to state claims against.
-/

/-! ## A217925.P10212851338327887742

`A350969(A094373(n))+A292515(n+1)`
-/

namespace A217925.P10212851338327887742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A094373 n).toNat + A292515 (n + 1)

end

end A217925.P10212851338327887742

/-! ## A217925.P5747198352956037239

`A330998(A002013(n))`
-/

namespace A217925.P5747198352956037239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330998 (A002013 n).toNat

end

end A217925.P5747198352956037239

/-! ## A217925.P15825149604127191071

`A267304(2*A079962(n))`
-/

namespace A217925.P15825149604127191071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267304 (2 * A079962 n).toNat

end

end A217925.P15825149604127191071

/-! ## A217925.P2993591699235458369

`A004526(A376989(2*n+5))+1`
-/

namespace A217925.P2993591699235458369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A376989 (2 * n + 5)).toNat + 1

end

end A217925.P2993591699235458369

/-! ## A217925.P12041722453722201584

`A064876(A289587(n)+A168653(n))`
-/

namespace A217925.P12041722453722201584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A289587 n + A168653 n).toNat

end

end A217925.P12041722453722201584

/-!
# A217926: A sequence relating to the rational values zeta(2n)^2/zeta(4n), which are expressible in terms of Bernoulli's numbers (see comments for definition of the sequence).

The programs for A217926, there is no canonical definition to state claims against.
-/

/-! ## A217926.P2931173567863803418

`A178128(A008619(n)+1)%A181678(n+3)`
-/

namespace A217926.P2931173567863803418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178128 (A008619 n + 1).toNat) (A181678 (n + 3))

end

end A217926.P2931173567863803418

/-!
# A217928: Sum of distinct decimal digits appearing in n.

The programs for A217928, there is no canonical definition to state claims against.
-/

/-! ## A217928.P12525841770110819469

`∑{digits}[A137564(n), #]`
-/

namespace A217928.P12525841770110819469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A217928.P12525841770110819469

/-! ## A217928.P18122387794991071178

`∑{digits}[A227362(n), #]`
-/

namespace A217928.P18122387794991071178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A217928.P18122387794991071178

/-! ## A217928.P331536744132651147

`A007953(A137564(n))`
-/

namespace A217928.P331536744132651147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A137564 n).toNat

end

end A217928.P331536744132651147

/-! ## A217928.P13605777401228105239

`A073642(A086066(n))`
-/

namespace A217928.P13605777401228105239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A086066 n).toNat

end

end A217928.P13605777401228105239

/-! ## A217928.P14868238480602075966

`A007953(A227362(n))`
-/

namespace A217928.P14868238480602075966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A227362 n).toNat

end

end A217928.P14868238480602075966

/-! ## A217928.P5887470351838586302

`A066328(A113581(n))`
-/

namespace A217928.P5887470351838586302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A113581 n).toNat

end

end A217928.P5887470351838586302

/-! ## A217928.P2762831443182923129

`gcd(A113009(n), A331472(n))`
-/

namespace A217928.P2762831443182923129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113009 n) (A331472 n)

end

end A217928.P2762831443182923129

/-! ## A217928.P10115481944106148493

`A136565(A054842(n))`
-/

namespace A217928.P10115481944106148493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136565 (A054842 n).toNat

end

end A217928.P10115481944106148493

/-! ## A217928.P549791166667288479

`A136565(A069877(n))`
-/

namespace A217928.P549791166667288479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136565 (A069877 n).toNat

end

end A217928.P549791166667288479

/-!
# A217929: Number of sequences of n 2's and 3's with curling number 2, which have the form XY^2 with Y = 2, and which are robust.

The programs for A217929, there is no canonical definition to state claims against.
-/

/-! ## A217929.P15955785725695253037

`A217832(n+1)-A217930(n+1)`
-/

namespace A217929.P15955785725695253037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217832 (n + 1) - A217930 (n + 1)

end

end A217929.P15955785725695253037

/-! ## A217929.P1411304249429958771

`A217931(n+1)/2-A217930(n+1)`
-/

namespace A217929.P1411304249429958771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217931 (n + 1) : ℚ) / 2 - (A217930 (n + 1) : ℚ)

end

end A217929.P1411304249429958771

/-! ## A217929.P18304214637403772502

`tan(acot(A040000(n)))*A217931(n+1)-A217930(n+1)`
-/

namespace A217929.P18304214637403772502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A040000 n : ℝ)) * (A217931 (n + 1) : ℝ) - (A217930 (n + 1) : ℝ)

end

end A217929.P18304214637403772502

/-! ## A217929.P13496193042492111474

`2^A008683(A006450(n+1))*A217931(n+1)-A217930(n+1)`
-/

namespace A217929.P13496193042492111474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A217931 (n + 1) : ℚ) - (A217930 (n + 1) : ℚ)

end

end A217929.P13496193042492111474

/-! ## A217929.P17961213418054128658

`2^A008683(A142644(n+1))*A217931(n+1)-A217930(n+1)`
-/

namespace A217929.P17961213418054128658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ) * (A217931 (n + 1) : ℚ) - (A217930 (n + 1) : ℚ)

end

end A217929.P17961213418054128658

/-!
# A217930: Number of sequences of n 2's and 3's with curling number 2, which have the form XY^2 with Y = 2, and which are not robust.

The programs for A217930, there is no canonical definition to state claims against.
-/

/-! ## A217930.P5308670730196792229

`A217832(n+1)-A217929(n+1)`
-/

namespace A217930.P5308670730196792229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217832 (n + 1) - A217929 (n + 1)

end

end A217930.P5308670730196792229

/-! ## A217930.P9928812012048574030

`A217931(n+1)/2-A217929(n+1)`
-/

namespace A217930.P9928812012048574030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217931 (n + 1) : ℚ) / 2 - (A217929 (n + 1) : ℚ)

end

end A217930.P9928812012048574030

/-! ## A217930.P15727256668666493412

`round(tan(acot(A040000(n)))*A217931(n+1)-A217929(n+1))`
-/

namespace A217930.P15727256668666493412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.acot (A040000 n : ℝ)) * (A217931 (n + 1) : ℝ) - (A217929 (n + 1) : ℝ))

end

end A217930.P15727256668666493412

/-! ## A217930.P14482251363705940294

`2^A008683(A006450(n+1))*A217931(n+1)-A217929(n+1)`
-/

namespace A217930.P14482251363705940294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A217931 (n + 1) : ℚ) - (A217929 (n + 1) : ℚ)

end

end A217930.P14482251363705940294

/-! ## A217930.P14554066845778254422

`2^A008683(A142644(n+1))*A217931(n+1)-A217929(n+1)`
-/

namespace A217930.P14554066845778254422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ) * (A217931 (n + 1) : ℚ) - (A217929 (n + 1) : ℚ)

end

end A217930.P14554066845778254422

/-!
# A217931: Number of sequences of n 2's and 3's with curling number 2 and which have the form XY^2 where Y has length 1 (so Y is 2 or 3).

The programs for A217931, there is no canonical definition to state claims against.
-/

/-! ## A217931.P9471161013788400402

`2*A217832(n+1)`
-/

namespace A217931.P9471161013788400402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217832 (n + 1)

end

end A217931.P9471161013788400402

/-! ## A217931.P15117696395477840959

`∑{e}[A006094(n+1), A217832(#+n)]`
-/

namespace A217931.P15117696395477840959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A217832 (Nat.factorization (f1 n).natAbs p + n)

end

end A217931.P15117696395477840959

/-! ## A217931.P535017779709288622

`∑{e}[A175710(n+1), A217832(#+n)]`
-/

namespace A217931.P535017779709288622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A217832 (Nat.factorization (f1 n).natAbs p + n)

end

end A217931.P535017779709288622

/-! ## A217931.P15230201925142189794

`A217832(C(n+1, n))+A217832(n+1)`
-/

namespace A217931.P15230201925142189794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217832 (Nat.choose (n + 1) n) + A217832 (n + 1)

end

end A217931.P15230201925142189794

/-! ## A217931.P18343200352950461591

`A217832(n+1)+A217832(abs(xor(n, -1)))`
-/

namespace A217931.P18343200352950461591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217832 (n + 1) + A217832 |Int.xor (n : ℤ) (-1)|.toNat

end

end A217931.P18343200352950461591

/-!
# A217932: a(n) = total number of binary sequences S of length n and curling number k (so S = XY^k) in which Y can be taken to have length 1.

The programs for A217932, there is no canonical definition to state claims against.
-/

/-! ## A217932.P4028966706213352639

`2*A217933(n+1)`
-/

namespace A217932.P4028966706213352639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217933 (n + 1)

end

end A217932.P4028966706213352639

/-! ## A217932.P10869191423770126463

`A217933(n+1)+A217933(-xor(n, -1))`
-/

namespace A217932.P10869191423770126463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217933 (n + 1) + A217933 (-Int.xor (n : ℤ) (-1)).toNat

end

end A217932.P10869191423770126463

/-! ## A217932.P2573336522839717698

`A217933(A000027(n+1))+A217933(n+1)`
-/

namespace A217932.P2573336522839717698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217933 (A000027 (n + 1)).toNat + A217933 (n + 1)

end

end A217932.P2573336522839717698

/-! ## A217932.P13902178589611366746

`A217933(A090107(n+1))+A217933(n+1)`
-/

namespace A217932.P13902178589611366746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217933 (A090107 (n + 1)).toNat + A217933 (n + 1)

end

end A217932.P13902178589611366746

/-! ## A217932.P7616557935317678825

`A217933(n+1)+A217933(A262065(n+2))`
-/

namespace A217932.P7616557935317678825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217933 (n + 1) + A217933 (A262065 (n + 2)).toNat

end

end A217932.P7616557935317678825

/-!
# A217933: A217932/2.

The programs for A217933, there is no canonical definition to state claims against.
-/

/-! ## A217933.P2262756527150041308

`A217932(n+1)/2`
-/

namespace A217933.P2262756527150041308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217932 (n + 1) : ℚ) / 2

end

end A217933.P2262756527150041308

/-! ## A217933.P2026473837749311459

`floor(A217932(A008619(2*n))/2)`
-/

namespace A217933.P2026473837749311459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217932 (A008619 (2 * n)).toNat : ℚ) / 2⌋

end

end A217933.P2026473837749311459

/-! ## A217933.P4452012957733097890

`A217932(A008619(2*n))/2*A007318(∑[n])`
-/

namespace A217933.P4452012957733097890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217932 (A008619 (2 * n)).toNat : ℚ) / 2 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A217933.P4452012957733097890

/-! ## A217933.P1263502611235169539

`(A217932(A008619(2*n))/2)%A000032(2*n)`
-/

namespace A217933.P1263502611235169539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A217932 (A008619 (2 * n)).toNat : ℚ) / 2)) (A000032 (2 * n))

end

end A217933.P1263502611235169539

/-! ## A217933.P3245687475064444468

`A217932(A008619(2*n))/2*A007318(C(n, 2))²`
-/

namespace A217933.P3245687475064444468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217932 (A008619 (2 * n)).toNat : ℚ) / 2 * (A007318 (Nat.choose n 2) ^ 2 : ℚ)

end

end A217933.P3245687475064444468

/-!
# A217934: Records in A102419.

The programs for A217934, there is no canonical definition to state claims against.
-/

/-! ## A217934.P7971201342782113480

`record[A102419(n+1)]`
-/

namespace A217934.P7971201342782113480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217934.P7971201342782113480

/-! ## A217934.P9941395464177796960

`record[A074473(n+1)-1]`
-/

namespace A217934.P9941395464177796960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217934.P9941395464177796960

/-!
# A217937: Numbers achieving strength records in 3x+1 problem.

The programs for A217937, there is no canonical definition to state claims against.
-/

/-! ## A217937.P4397768866432429387

`A033491(A217936(n+1))`
-/

namespace A217937.P4397768866432429387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A217936 (n + 1)).toNat

end

end A217937.P4397768866432429387

/-!
# A217938: Bidendriforms (see Foissy and Patras for precise definition).

The programs for A217938, there is no canonical definition to state claims against.
-/

/-! ## A217938.P3364803421645569127

`A333902(n)-A329257(A333902(n))`
-/

namespace A217938.P3364803421645569127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333902 n - A329257 (A333902 n).toNat

end

end A217938.P3364803421645569127

/-! ## A217938.P11540578071099142200

`A004277(A001266(n+2)-A086853(n))`
-/

namespace A217938.P11540578071099142200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001266 (n + 2) - A086853 n).toNat

end

end A217938.P11540578071099142200

/-!
# A217941: a(n) = Sum_{k=1..n} k*C(n,k), where C(n,k) = number of binary sequences of length n and curling number k (A216955).

The programs for A217941, there is no canonical definition to state claims against.
-/

/-! ## A217941.P8434754634724825576

`A216951(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A217941.P8434754634724825576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A216951 (n + 1) + 2 * a (n - 1)

end

end A217941.P8434754634724825576

/-! ## A217941.P2168488385089123327

`2*A217942(n+1)`
-/

namespace A217941.P2168488385089123327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217942 (n + 1)

end

end A217941.P2168488385089123327

/-! ## A217941.P12167428250276255825

`∑[A217942(n+1)+A216952(n+1)]`
-/

namespace A217941.P12167428250276255825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217942 (n + 1) + A216952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217941.P12167428250276255825

/-! ## A217941.P12870700467566340321

`A217942(n+1)+A217942(-xor(n, -1))`
-/

namespace A217941.P12870700467566340321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217942 (n + 1) + A217942 (-Int.xor (n : ℤ) (-1)).toNat

end

end A217941.P12870700467566340321

/-! ## A217941.P16586300633096851834

`A217942(n+1)/(A007318(C(2, n+1))-1/2)`
-/

namespace A217941.P16586300633096851834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217942 (n + 1) : ℚ) / ((A007318 (Nat.choose 2 (n + 1)) : ℚ) - (1 : ℚ) / 2)

end

end A217941.P16586300633096851834

/-!
# A217942: A217941(n)/2.

The programs for A217942, there is no canonical definition to state claims against.
-/

/-! ## A217942.P14930972488053973254

`A217941(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217942.P14930972488053973254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217941 (n + 1) : ℚ) / 2

end

end A217942.P14930972488053973254

/-! ## A217942.P8110676152738113889

`A216952(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A217942.P8110676152738113889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216952 (n + 1) + 2 * a (n - 1)

end

end A217942.P8110676152738113889

/-! ## A217942.P8494768095584348546

`record[A217941(A143182(n))/2]`
-/

namespace A217942.P8494768095584348546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217941 (A143182 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217942.P8494768095584348546

/-! ## A217942.P335907736730855071

`record[A217941(A152271(n))/2]`
-/

namespace A217942.P335907736730855071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217941 (A152271 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217942.P335907736730855071

/-! ## A217942.P6339794097204405831

`record[A217941(A193592(n))/2]`
-/

namespace A217942.P6339794097204405831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217941 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217942.P6339794097204405831

/-!
# A217943: Triangle read by rows: T(n,k) = 2*C(n-1,k)-C(n,k) for k<n, T(n,n)=-2, where C(n,k) = A216955(n,k).

The programs for A217943, there is no canonical definition to state claims against.
-/

/-! ## A217943.P14263755858889573241

`Δ[A035195(A050227(n+1)²)]`
-/

namespace A217943.P14263755858889573241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A050227 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217943.P14263755858889573241

/-! ## A217943.P16714071297552976818

`Δ[A175462(A251721(n+1)!)]`
-/

namespace A217943.P16714071297552976818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (Nat.factorial (A251721 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217943.P16714071297552976818

/-! ## A217943.P3873327645743762674

`Δ[2*A348613(A083221(n+2))]`
-/

namespace A217943.P3873327645743762674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348613 (A083221 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217943.P3873327645743762674

/-! ## A217943.P4727915742511460951

`Δ[A004956(A348613(A083221(n+2)))]`
-/

namespace A217943.P4727915742511460951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A348613 (A083221 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217943.P4727915742511460951

/-! ## A217943.P9761254240960534732

`2*A266330(A187829(n+1))`
-/

namespace A217943.P9761254240960534732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266330 (A187829 (n + 1)).toNat

end

end A217943.P9761254240960534732

/-!
# A217944: Number of different lattices formed by intersections of two composition series of length n.

The programs for A217944, there is no canonical definition to state claims against.
-/

/-! ## A217944.P7091670630837223851

`A267099(A139421(n!))`
-/

namespace A217944.P7091670630837223851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A139421 (Nat.factorial n)).toNat

end

end A217944.P7091670630837223851

/-! ## A217944.P14154196053282956163

`A071903(∑[A000254(n)])`
-/

namespace A217944.P14154196053282956163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217944.P14154196053282956163

/-! ## A217944.P16738518351106136425

`A220658(A020120(n+1))`
-/

namespace A217944.P16738518351106136425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A020120 (n + 1)).toNat

end

end A217944.P16738518351106136425

/-!
# A217945: Number of indecomposable slim semimodular lattices of length n.

The programs for A217945, there is no canonical definition to state claims against.
-/

/-! ## A217945.P16200636485042251411

`A002264(∑[A067084(n+1)])`
-/

namespace A217945.P16200636485042251411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217945.P16200636485042251411

/-! ## A217945.P8396111456800117295

`∑{d}[(2*a(n-1))², #*#%2]*A069352(n+1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A217945.P8396111456800117295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 4, 6] fun n f1 =>
  (2 * f1 (n - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) * A069352 (n + 1)

end

end A217945.P8396111456800117295

/-! ## A217945.P1064723087875531594

`A008615(A074291(n!))`
-/

namespace A217945.P1064723087875531594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A074291 (Nat.factorial n)).toNat

end

end A217945.P1064723087875531594

/-!
# A217946: a(n) = 4^n*(n+1)*(8*n^2+32*n+33)*P(3/2,n)/(3*P(4,n)) where P(a,n) is the Pochhammer rising factorial.

The programs for A217946, the canonical program `A217946.P4119184011466137260` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217946 has offset 0).

The definition of A217946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217946.P1132732312267818433

`A002011(n+1)-Δ[A051944(n+1)]`
-/

namespace A217946.P1132732312267818433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 (n + 1) - (f1 (n + 1) - f1 n)

end

end A217946.P1132732312267818433

namespace A217946

/-- `A002011(n+1)-Δ[A051944(n+1)]` -/
def P1132732312267818433.Spec : Prop :=
  ∀ n, P1132732312267818433.a n = A217946 n

end A217946

/-! ## A217946.P4119184011466137260

`A000245(n+1)+record[A232500(n+5)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217946

/-- `A000245(n+1)+record[A232500(n+5)]` -/
def P4119184011466137260.Spec : Prop :=
  ∀ n, P4119184011466137260.a n = A217946 n

theorem P4119184011466137260.correct : P4119184011466137260.Spec := by
  intro n
  simp only [A217946]

end A217946

/-! ## A217946.P4306925122512011152

`record[A232500(n+5)]+Δ[A000108(n+1)]`
-/

namespace A217946.P4306925122512011152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A217946.P4306925122512011152

namespace A217946

/-- `record[A232500(n+5)]+Δ[A000108(n+1)]` -/
def P4306925122512011152.Spec : Prop :=
  ∀ n, P4306925122512011152.a n = A217946 n

theorem P4306925122512011152.correct : P4306925122512011152.Spec := by
  intro n
  simp only [A217946, Nat.add_sub_cancel, A217946.P4306925122512011152.f1, A217946.P4306925122512011152.f2, A217946.P4306925122512011152.a, A217946.P4119184011466137260.f1, A217946.P4119184011466137260.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A232500, A232500.P15749173745370117261.a, A056040, A056040.P782074390748687976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217946

/-!
# A217947: a(n) = (n+1)*(n^3+15*n^2+74*n+132)/12.

The programs for A217947, the canonical program `A217947.P3313743399037332398` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217947 has offset 0).

The definition of A217947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n^3+15*n²+74*n+132)/12` (program `A217947.P4908384811888146868`, by `A217947.P4908384811888146868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217947.P12789754742519427435

`ogf((11-18x+12x^2-3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A217947.P12789754742519427435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -18, 12, -3] [1, -5, 10, -10, 5, -1] n

end

end A217947.P12789754742519427435

namespace A217947

/-- `ogf((11-18x+12x^2-3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12789754742519427435.Spec : Prop :=
  ∀ n, P12789754742519427435.a n = A217947 n

end A217947

/-! ## A217947.P4908384811888146868

`(n+1)*(n^3+15*n²+74*n+132)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217947.P4908384811888146868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n ^ 3 + 15 * n ^ 2 + 74 * n + 132) : ℚ) / 12

end

end A217947.P4908384811888146868

namespace A217947

/-- `(n+1)*(n^3+15*n²+74*n+132)/12` -/
def P4908384811888146868.Spec : Prop :=
  ∀ n, P4908384811888146868.a n = (A217947 n : ℚ)

theorem P4908384811888146868.correct : P4908384811888146868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A217947, Nat.add_sub_cancel, A217947.P4908384811888146868.a, A217947.P3313743399037332398.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A217947, Nat.add_sub_cancel, A217947.P4908384811888146868.a, A217947.P3313743399037332398.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A217947

/-! ## A217947.P3313743399037332398

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=11, a(1)=37, a(2)=87, a(3)=172, a(4)=305`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217947

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3313743399037332398.Spec : Prop :=
  ∀ n, P3313743399037332398.a n = A217947 n

theorem P3313743399037332398.correct : P3313743399037332398.Spec := by
  intro n
  simp only [A217947]

end A217947

/-! ## A217947.P17787949582548721008

`A062748(n)+2*A063258(n)`
-/

namespace A217947.P17787949582548721008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + 2 * A063258 n

end

end A217947.P17787949582548721008

namespace A217947

/-- `A062748(n)+2*A063258(n)` -/
def P17787949582548721008.Spec : Prop :=
  ∀ n, P17787949582548721008.a n = A217947 n

end A217947

/-! ## A217947.P16329891251572829292

`A051743(n+1)+A000439(n+1)`
-/

namespace A217947.P16329891251572829292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) + A000439 (n + 1)

end

end A217947.P16329891251572829292

namespace A217947

/-- `A051743(n+1)+A000439(n+1)` -/
def P16329891251572829292.Spec : Prop :=
  ∀ n, P16329891251572829292.a n = A217947 n

end A217947

/-! ## A217947.P14484588919072239011

`A005701(n+1)-3`
-/

namespace A217947.P14484588919072239011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 (n + 1) - 3

end

end A217947.P14484588919072239011

namespace A217947

/-- `A005701(n+1)-3` -/
def P14484588919072239011.Spec : Prop :=
  ∀ n, P14484588919072239011.a n = A217947 n

end A217947

/-! ## A217947.P2540730118930151607

`A052472(n+4)+1+n`
-/

namespace A217947.P2540730118930151607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 4) + 1 + (n : ℤ)

end

end A217947.P2540730118930151607

namespace A217947

/-- `A052472(n+4)+1+n` -/
def P2540730118930151607.Spec : Prop :=
  ∀ n, P2540730118930151607.a n = A217947 n

end A217947

/-! ## A217947.P5418390757856495054

`A028557(n+1)+A090453(n)+A055998(n+1)`
-/

namespace A217947.P5418390757856495054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (n + 1) + (A090453 n + A055998 (n + 1))

end

end A217947.P5418390757856495054

namespace A217947

/-- `A028557(n+1)+A090453(n)+A055998(n+1)` -/
def P5418390757856495054.Spec : Prop :=
  ∀ n, P5418390757856495054.a n = A217947 n

end A217947

/-! ## A217947.P14538588390571210913

`Δ[A130857(n+2)]-3`
-/

namespace A217947.P14538588390571210913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A217947.P14538588390571210913

namespace A217947

/-- `Δ[A130857(n+2)]-3` -/
def P14538588390571210913.Spec : Prop :=
  ∀ n, P14538588390571210913.a n = A217947 n

end A217947

/-! ## A217947.P9221817623081912867

`∑[A047732(n+2)]-(n+1)`
-/

namespace A217947.P9221817623081912867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A217947.P9221817623081912867

namespace A217947

/-- `∑[A047732(n+2)]-(n+1)` -/
def P9221817623081912867.Spec : Prop :=
  ∀ n, P9221817623081912867.a n = A217947 n

end A217947

/-! ## A217947.P12761211107035510269

`∑[∑[A000290(n+3)]-n+1]+n+1`
-/

namespace A217947.P12761211107035510269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A217947.P12761211107035510269

namespace A217947

/-- `∑[∑[A000290(n+3)]-n+1]+n+1` -/
def P12761211107035510269.Spec : Prop :=
  ∀ n, P12761211107035510269.a n = A217947 n

end A217947

/-! ## A217947.P15272602122369659667

`∑[A051925(n+3)]`
-/

namespace A217947.P15272602122369659667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217947.P15272602122369659667

namespace A217947

/-- `∑[A051925(n+3)]` -/
def P15272602122369659667.Spec : Prop :=
  ∀ n, P15272602122369659667.a n = A217947 n

end A217947

/-! ## A217947.P1503547894938167401

`A050297(n+4)-3`
-/

namespace A217947.P1503547894938167401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050297 (n + 4) - 3

end

end A217947.P1503547894938167401

namespace A217947

/-- `A050297(n+4)-3` -/
def P1503547894938167401.Spec : Prop :=
  ∀ n, P1503547894938167401.a n = A217947 n

end A217947

/-! ## A217947.P13268447570490494569

`∑[record[A229834(n+3)]]`
-/

namespace A217947.P13268447570490494569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229834 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217947.P13268447570490494569

namespace A217947

/-- `∑[record[A229834(n+3)]]` -/
def P13268447570490494569.Spec : Prop :=
  ∀ n, P13268447570490494569.a n = A217947 n

end A217947

/-! ## A217947.P16314167331065926110

`∑[A229834(2*n+3)]`
-/

namespace A217947.P16314167331065926110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229834 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217947.P16314167331065926110

namespace A217947

/-- `∑[A229834(2*n+3)]` -/
def P16314167331065926110.Spec : Prop :=
  ∀ n, P16314167331065926110.a n = A217947 n

end A217947

/-! ## A217947.P9538724540300115814

`A117651(2*(n+3))+n+1`
-/

namespace A217947.P9538724540300115814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117651 (2 * (n + 3)) + (n + 1 : ℤ)

end

end A217947.P9538724540300115814

namespace A217947

/-- `A117651(2*(n+3))+n+1` -/
def P9538724540300115814.Spec : Prop :=
  ∀ n, P9538724540300115814.a n = A217947 n

end A217947

/-! ## A217947.P17490096143794943383

`A034856(A034856(n+2))-A145126(n+1)`
-/

namespace A217947.P17490096143794943383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A034856 (n + 2)).toNat - A145126 (n + 1)

end

end A217947.P17490096143794943383

namespace A217947

/-- `A034856(A034856(n+2))-A145126(n+1)` -/
def P17490096143794943383.Spec : Prop :=
  ∀ n, P17490096143794943383.a n = A217947 n

end A217947

/-!
# A217948: List of numbers 2n for which the riffle permutation permutes all except the first and last of the 2n cards.

The programs for A217948, there is no canonical definition to state claims against.
-/

/-! ## A217948.P14036375372524229038

`2*A051733(n+1)`
-/

namespace A217948.P14036375372524229038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051733 (n + 1)

end

end A217948.P14036375372524229038

/-! ## A217948.P7825440246019796011

`A179194(n+1)-1`
-/

namespace A217948.P7825440246019796011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1) - 1

end

end A217948.P7825440246019796011

/-! ## A217948.P11996210597963181205

`A001122(1+n)+1`
-/

namespace A217948.P11996210597963181205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (1 + n) + 1

end

end A217948.P11996210597963181205

/-! ## A217948.P8866630633523437793

`A050229(3+n)+1`
-/

namespace A217948.P8866630633523437793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (3 + n) + 1

end

end A217948.P8866630633523437793

/-! ## A217948.P6223063406222072162

`A071642(n+3)+2`
-/

namespace A217948.P6223063406222072162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 3) + 2

end

end A217948.P6223063406222072162

/-! ## A217948.P9719612313690090393

`p?[A139099(n+1)]+1`
-/

namespace A217948.P9719612313690090393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A217948.P9719612313690090393

/-! ## A217948.P8568012957803592371

`p?[A167791(n+1)]+1`
-/

namespace A217948.P8568012957803592371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A217948.P8568012957803592371

/-! ## A217948.P12447544434574536163

`A241040(n)+a(n-1)` with `a(0)=4`
-/

namespace A217948.P12447544434574536163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A241040 n + a (n - 1)

end

end A217948.P12447544434574536163

/-! ## A217948.P339900602103026926

`∩[A003629(n+1), A007885(n+1)]+1`
-/

namespace A217948.P339900602103026926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P339900602103026926

/-! ## A217948.P14826943566398629165

`∩[A042999(n+1), A139099(n+1)]+1`
-/

namespace A217948.P14826943566398629165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P14826943566398629165

/-! ## A217948.P12204718165791927121

`∩[A007885(n+1), A040100(n+1)]+1`
-/

namespace A217948.P12204718165791927121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P12204718165791927121

/-! ## A217948.P2062272779656543447

`∩[A007885(n+1), A045316(n+1)]+1`
-/

namespace A217948.P2062272779656543447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P2062272779656543447

/-! ## A217948.P13740099039262233671

`∩[A007885(n+1), A014662(n+1)]+1`
-/

namespace A217948.P13740099039262233671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P13740099039262233671

/-! ## A217948.P8616794822010573293

`∩[A007885(n+1), A059349(n+1)]+1`
-/

namespace A217948.P8616794822010573293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P8616794822010573293

/-! ## A217948.P12617758778404343451

`∩[A007885(n+1), A045403(n+1)]+1`
-/

namespace A217948.P12617758778404343451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A217948.P12617758778404343451

/-! ## A217948.P4804131648969705275

`record[A014664(n+2)+2]`
-/

namespace A217948.P4804131648969705275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217948.P4804131648969705275

/-! ## A217948.P12185464095833758902

`A008864(A072190(n+1))`
-/

namespace A217948.P12185464095833758902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A072190 (n + 1)).toNat

end

end A217948.P12185464095833758902

/-! ## A217948.P2655348524102603573

`A000203(A001122(n+1))`
-/

namespace A217948.P2655348524102603573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001122 (n + 1)).toNat

end

end A217948.P2655348524102603573

/-! ## A217948.P5174357586334203081

`A000203(A050229(n+3))`
-/

namespace A217948.P5174357586334203081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050229 (n + 3)).toNat

end

end A217948.P5174357586334203081

/-! ## A217948.P3432973094460381432

`p?[A319009(n+1)]+1`
-/

namespace A217948.P3432973094460381432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A217948.P3432973094460381432

/-!
# A217949: Number of n-element 0..3 arrays with each element the minimum of 3 adjacent elements of a random 0..3 array of n+2 elements.

The programs for A217949, the canonical program `A217949.P9930796763260041059` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217949 has offset 1).

The definition of A217949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217949.P9930796763260041059

`ogf((4+10x^2+10x^3+6x^4+12x^5+7x^6+3x^7+3x^8+x^9)/(1-4x+6x^2-4x^3-5x^4+4x^5-6x^6-4x^7-2x^9-x^10))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217949

/-- `ogf((4+10x^2+10x^3+6x^4+12x^5+7x^6+3x^7+3x^8+x^9)/(1-4x+6x^2-4x^3-5x^4+4x^5-6x^6-4x^7-2x^9-x^10))` -/
def P9930796763260041059.Spec : Prop :=
  ∀ n, P9930796763260041059.a n = A217949 (n + 1)

theorem P9930796763260041059.correct : P9930796763260041059.Spec := by
  intro n
  simp only [A217949, Nat.add_sub_cancel]

end A217949

/-! ## A217949.P898003020458985788

`A228461(∑[n+3]+1)`
-/

namespace A217949.P898003020458985788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217949.P898003020458985788

namespace A217949

/-- `A228461(∑[n+3]+1)` -/
def P898003020458985788.Spec : Prop :=
  ∀ n, P898003020458985788.a n = A217949 (n + 1)

end A217949

/-! ## A217949.P16956483417140620912

`A228461(Δ[A008778(n)])/gcd(n, n+1)`
-/

namespace A217949.P16956483417140620912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228461 (f1 (n + 1) - f1 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A217949.P16956483417140620912

namespace A217949

/-- `A228461(Δ[A008778(n)])/gcd(n, n+1)` -/
def P16956483417140620912.Spec : Prop :=
  ∀ n, P16956483417140620912.a n = (A217949 (n + 1) : ℚ)

end A217949

/-! ## A217949.P11208871496907514892

`A228461(A052905(n)+3)/ceil((n+1)^-6)`
-/

namespace A217949.P11208871496907514892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228461 (A052905 n + 3).toNat : ℚ) / (⌈(n + 1 : ℚ) ^ (-6 : ℤ)⌉ : ℚ)

end

end A217949.P11208871496907514892

namespace A217949

/-- `A228461(A052905(n)+3)/ceil((n+1)^-6)` -/
def P11208871496907514892.Spec : Prop :=
  ∀ n, P11208871496907514892.a n = (A217949 (n + 1) : ℚ)

end A217949

/-! ## A217949.P4762684234437687255

`A228461(A052905(n)+3)%A199421(n)²`
-/

namespace A217949.P4762684234437687255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228461 (A052905 n + 3).toNat) (A199421 n ^ 2)

end

end A217949.P4762684234437687255

namespace A217949

/-- `A228461(A052905(n)+3)%A199421(n)²` -/
def P4762684234437687255.Spec : Prop :=
  ∀ n, P4762684234437687255.a n = A217949 (n + 1)

end A217949

/-! ## A217949.P2463355984981528890

`A228461(Δ[A008778(n)])%A228457(n+1)`
-/

namespace A217949.P2463355984981528890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228461 (f1 (n + 1) - f1 n).toNat) (A228457 (n + 1))

end

end A217949.P2463355984981528890

namespace A217949

/-- `A228461(Δ[A008778(n)])%A228457(n+1)` -/
def P2463355984981528890.Spec : Prop :=
  ∀ n, P2463355984981528890.a n = A217949 (n + 1)

end A217949

/-! ## A217949.P443803458073586016

`A228461(A055999(n)+4)%A126718(n+1)`
-/

namespace A217949.P443803458073586016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228461 (A055999 n + 4).toNat) (A126718 (n + 1))

end

end A217949.P443803458073586016

namespace A217949

/-- `A228461(A055999(n)+4)%A126718(n+1)` -/
def P443803458073586016.Spec : Prop :=
  ∀ n, P443803458073586016.a n = A217949 (n + 1)

end A217949

/-! ## A217949.P10271721382063600040

`A228461(A052905(n)+3)+A010051(12*n+6)`
-/

namespace A217949.P10271721382063600040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A052905 n + 3).toNat + A010051 (12 * n + 6)

end

end A217949.P10271721382063600040

namespace A217949

/-- `A228461(A052905(n)+3)+A010051(12*n+6)` -/
def P10271721382063600040.Spec : Prop :=
  ∀ n, P10271721382063600040.a n = A217949 (n + 1)

end A217949

/-!
# A217950: Number of n element 0..3 arrays with each element the minimum of 4 adjacent elements of a random 0..3 array of n+3 elements.

The programs for A217950, the canonical program `A217950.P18321898710630491286` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217950 has offset 1).

The definition of A217950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217950.P18321898710630491286

`ogf((4+10x^2+10x^3+16x^4+12x^5+19x^6+15x^7+12x^8+7x^9+6x^10+3x^11+x^12)/(1-4x+6x^2-4x^3+x^4-6x^5+4x^6-6x^7-4x^8-5x^9-x^10-3x^11-2x^12-x^13))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217950

/-- `ogf((4+10x^2+10x^3+16x^4+12x^5+19x^6+15x^7+12x^8+7x^9+6x^10+3x^11+x^12)/(1-4x+6x^2-4x^3+x^4-6x^5+4x^6-6x^7-4x^8-5x^9-x^10-3x^11-2x^12-x^13))` -/
def P18321898710630491286.Spec : Prop :=
  ∀ n, P18321898710630491286.a n = A217950 (n + 1)

theorem P18321898710630491286.correct : P18321898710630491286.Spec := by
  intro n
  simp only [A217950, Nat.add_sub_cancel]

end A217950

/-! ## A217950.P11673640671773099148

`record[A217954(A027379(n))]`
-/

namespace A217950.P11673640671773099148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217950.P11673640671773099148

namespace A217950

/-- `record[A217954(A027379(n))]` -/
def P11673640671773099148.Spec : Prop :=
  ∀ n, P11673640671773099148.a n = A217950 (n + 1)

end A217950

/-! ## A217950.P6587865479207768529

`A217954(A027379(n+2))`
-/

namespace A217950.P6587865479207768529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A027379 (n + 2)).toNat

end

end A217950.P6587865479207768529

namespace A217950

/-- `A217954(A027379(n+2))` -/
def P6587865479207768529.Spec : Prop :=
  ∀ n, P6587865479207768529.a n = A217950 (n + 1)

end A217950

/-! ## A217950.P2863180176132425085

`A217954(A055998(n+2))`
-/

namespace A217950.P2863180176132425085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A055998 (n + 2)).toNat

end

end A217950.P2863180176132425085

namespace A217950

/-- `A217954(A055998(n+2))` -/
def P2863180176132425085.Spec : Prop :=
  ∀ n, P2863180176132425085.a n = A217950 (n + 1)

end A217950

/-! ## A217950.P3237965342040109748

`A217954(A056000(n)+7)`
-/

namespace A217950.P3237965342040109748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A056000 n + 7).toNat

end

end A217950.P3237965342040109748

namespace A217950

/-- `A217954(A056000(n)+7)` -/
def P3237965342040109748.Spec : Prop :=
  ∀ n, P3237965342040109748.a n = A217950 (n + 1)

end A217950

/-!
# A217951: Number of n element 0..3 arrays with each element the minimum of 5 adjacent elements of a random 0..3 array of n+4 elements.

The programs for A217951, there is no canonical definition to state claims against.
-/

/-! ## A217951.P5329862610947458528

`A217954(Δ[A264443(n)])`
-/

namespace A217951.P5329862610947458528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (f1 (n + 1) - f1 n).toNat

end

end A217951.P5329862610947458528

/-! ## A217951.P5474298807550377579

`A217954(A046691(n+3))`
-/

namespace A217951.P5474298807550377579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A046691 (n + 3)).toNat

end

end A217951.P5474298807550377579

/-! ## A217951.P408629958860367548

`A217954(Δ[A023545(n+1)])`
-/

namespace A217951.P408629958860367548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (f1 (n + 1) - f1 n).toNat

end

end A217951.P408629958860367548

/-! ## A217951.P21952050786320837

`A217954(A052905(n+2)+1)`
-/

namespace A217951.P21952050786320837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A052905 (n + 2) + 1).toNat

end

end A217951.P21952050786320837

/-! ## A217951.P5203753708563269660

`A217954(A027379(n+3)-1)`
-/

namespace A217951.P5203753708563269660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A027379 (n + 3) - 1).toNat

end

end A217951.P5203753708563269660

/-!
# A217952: Number of n element 0..3 arrays with each element the minimum of 6 adjacent elements of a random 0..3 array of n+5 elements.

The programs for A217952, there is no canonical definition to state claims against.
-/

/-! ## A217952.P15968766580761595084

`A217954(A052905(n+3))`
-/

namespace A217952.P15968766580761595084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A052905 (n + 3)).toNat

end

end A217952.P15968766580761595084

/-! ## A217952.P4105643669954914445

`A217954(A055998(n+4)-2)`
-/

namespace A217952.P4105643669954914445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A055998 (n + 4) - 2).toNat

end

end A217952.P4105643669954914445

/-! ## A217952.P7280848854930266498

`A217954(A000096(n+5)-4)`
-/

namespace A217952.P7280848854930266498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A000096 (n + 5) - 4).toNat

end

end A217952.P7280848854930266498

/-! ## A217952.P12451434092173197731

`A217954(A000217(n+6)-5)`
-/

namespace A217952.P12451434092173197731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A000217 (n + 6) - 5).toNat

end

end A217952.P12451434092173197731

/-! ## A217952.P10650584486704818987

`A217954(A000124(n+6)-6)`
-/

namespace A217952.P10650584486704818987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A000124 (n + 6) - 6).toNat

end

end A217952.P10650584486704818987

/-!
# A217953: Number of n element 0..3 arrays with each element the minimum of 7 adjacent elements of a random 0..3 array of n+6 elements.

The programs for A217953, there is no canonical definition to state claims against.
-/

/-! ## A217953.P12353124879764246292

`A217954(A055999(n+4))`
-/

namespace A217953.P12353124879764246292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A055999 (n + 4)).toNat

end

end A217953.P12353124879764246292

/-! ## A217953.P609072141408244790

`A217954(A052905(n+4)-1)`
-/

namespace A217953.P609072141408244790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A052905 (n + 4) - 1).toNat

end

end A217953.P609072141408244790

/-! ## A217953.P8946291554253851953

`A217954(A000217(n+7)-6)`
-/

namespace A217953.P8946291554253851953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A000217 (n + 7) - 6).toNat

end

end A217953.P8946291554253851953

/-! ## A217953.P8300616880490361874

`A217954(A000124(n+7)-7)`
-/

namespace A217953.P8300616880490361874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A000124 (n + 7) - 7).toNat

end

end A217953.P8300616880490361874

/-! ## A217953.P2299502811789585777

`A217954(A000096(n+5)+n+2)`
-/

namespace A217953.P2299502811789585777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217954 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A217953.P2299502811789585777

/-!
# A217954: T(n,k) = number of n-element 0..3 arrays with each element the minimum of k adjacent elements of a random 0..3 array of n+k-1 elements.

The programs for A217954, there is no canonical definition to state claims against.
-/

/-! ## A217954.P5803959498642836853

`A324700(A217883(n+1))`
-/

namespace A217954.P5803959498642836853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324700 (A217883 (n + 1)).toNat

end

end A217954.P5803959498642836853

/-! ## A217954.P1086130218270150182

`A324701(A217883(n+1))-A242784(n)`
-/

namespace A217954.P1086130218270150182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A217883 (n + 1)).toNat - A242784 n

end

end A217954.P1086130218270150182

/-!
# A217956: Total number of solutions to the equation x^2+k*y^2 = n with x > 0, y > 0, k >= 0, or 0 if infinite. (Order matters for the equation x^2+y^2 = n).

The programs for A217956, there is no canonical definition to state claims against.
-/

/-! ## A217956.P219440287756271143

`(1-Δ[floor(sqrt(n))])*A217834(n+1)`
-/

namespace A217956.P219440287756271143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A217834 (n + 1)

end

end A217956.P219440287756271143

/-! ## A217956.P4906469706111587515

`A217834(1+n)*A267866(n)`
-/

namespace A217956.P4906469706111587515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (1 + n) * A267866 n

end

end A217956.P4906469706111587515

/-! ## A217956.P14713782959283168155

`lcm(Δ[A028391(n)], A217834(n+1))`
-/

namespace A217956.P14713782959283168155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A217834 (n + 1))

end

end A217956.P14713782959283168155

/-! ## A217956.P9577516993660183179

`A217834(n*A049240(n+1)+1)`
-/

namespace A217956.P9577516993660183179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 ((n : ℤ) * A049240 (n + 1) + 1).toNat

end

end A217956.P9577516993660183179

/-! ## A217956.P15540257790258736862

`A217834(n+1)%A059903(n+1)`
-/

namespace A217956.P15540257790258736862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217834 (n + 1)) (A059903 (n + 1))

end

end A217956.P15540257790258736862

/-! ## A217956.P2836739210593869798

`A217834(lcm(n, A068717(n+1))+1)`
-/

namespace A217956.P2836739210593869798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (Int.lcm (n : ℤ) (A068717 (n + 1)) + 1)

end

end A217956.P2836739210593869798

/-! ## A217956.P15561794874745944610

`A217834(∑[1-Δ[A056926(n)²]]+1)`
-/

namespace A217956.P15561794874745944610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A217956.P15561794874745944610

/-! ## A217956.P8190747938755791594

`A217834(gcd(n+1, A216503(n+1)-A216505(n+1)))`
-/

namespace A217956.P8190747938755791594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (Int.gcd (n + 1 : ℤ) (A216503 (n + 1) - A216505 (n + 1)))

end

end A217956.P8190747938755791594

/-! ## A217956.P7242947464435677539

`A217834((n+1)/A056926(n+1)-A056926(n+1)+1)`
-/

namespace A217956.P7242947464435677539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056926 (n + 1) : ℚ) - (A056926 (n + 1) : ℚ) + 1)).toNat

end

end A217956.P7242947464435677539

/-! ## A217956.P10923223596372251294

`A216674(n+1)+A217840(n+1)-A216673(n+1)`
-/

namespace A217956.P10923223596372251294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216674 (n + 1) + (A217840 (n + 1) - A216673 (n + 1))

end

end A217956.P10923223596372251294

/-!
# A217957: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 n X n array.

The programs for A217957, there is no canonical definition to state claims against.
-/

/-! ## A217957.P14475895488590206822

`A217964(∑[4*n]+1)`
-/

namespace A217957.P14475895488590206822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217957.P14475895488590206822

/-! ## A217957.P1616458705978473724

`or(1, A217964(A001844(n)))`
-/

namespace A217957.P1616458705978473724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217964 (A001844 n).toNat)

end

end A217957.P1616458705978473724

/-! ## A217957.P15294465718534178540

`record[A003982(n)*A217964(n+1)]`
-/

namespace A217957.P15294465718534178540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A217964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217957.P15294465718534178540

/-! ## A217957.P16188433512570036388

`record[gcd(A003987(n), A217964(n+1))]`
-/

namespace A217957.P16188433512570036388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A217964 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217957.P16188433512570036388

/-! ## A217957.P14585194807800073465

`A217964(A001844(n))+A025469(n)`
-/

namespace A217957.P14585194807800073465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A001844 n).toNat + A025469 n

end

end A217957.P14585194807800073465

/-!
# A217958: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 n X 2 array.

The programs for A217958, the canonical program `A217958.P13749532466168737842` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217958 has offset 1).

The definition of A217958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217958.P16993316144931783505

`ogf((3+5x+3x^2+x^3)/(1-4x-2x^2+x^4))`
-/

namespace A217958.P16993316144931783505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 3, 1] [1, -4, -2, 0, 1] n

end

end A217958.P16993316144931783505

namespace A217958

/-- `ogf((3+5x+3x^2+x^3)/(1-4x-2x^2+x^4))` -/
def P16993316144931783505.Spec : Prop :=
  ∀ n, P16993316144931783505.a n = A217958 (n + 1)

end A217958

/-! ## A217958.P13749532466168737842

`4*a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=3, a(1)=17, a(2)=77, a(3)=343`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217958

/-- `4*a(n-1)+2*a(n-2)-a(n-4)` -/
def P13749532466168737842.Spec : Prop :=
  ∀ n, P13749532466168737842.a n = A217958 (n + 1)

theorem P13749532466168737842.correct : P13749532466168737842.Spec := by
  intro n
  simp only [A217958, Nat.add_sub_cancel]

end A217958

/-! ## A217958.P14583727402763622499

`A217450(2*(n+1))`
-/

namespace A217958.P14583727402763622499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (2 * (n + 1))

end

end A217958.P14583727402763622499

namespace A217958

/-- `A217450(2*(n+1))` -/
def P14583727402763622499.Spec : Prop :=
  ∀ n, P14583727402763622499.a n = A217958 (n + 1)

end A217958

/-! ## A217958.P10170513198540032028

`record[A217450(n+2)^((n+1)%2)]`
-/

namespace A217958.P10170513198540032028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (n + 2) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217958.P10170513198540032028

namespace A217958

/-- `record[A217450(n+2)^((n+1)%2)]` -/
def P10170513198540032028.Spec : Prop :=
  ∀ n, P10170513198540032028.a n = A217958 (n + 1)

end A217958

/-! ## A217958.P14802360323439388252

`or(1, A217450(A317440(n+1)))`
-/

namespace A217958.P14802360323439388252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217450 (A317440 (n + 1)).toNat)

end

end A217958.P14802360323439388252

namespace A217958

/-- `or(1, A217450(A317440(n+1)))` -/
def P14802360323439388252.Spec : Prop :=
  ∀ n, P14802360323439388252.a n = A217958 (n + 1)

end A217958

/-! ## A217958.P6970718553732455357

`record[A217450(abs(A157128(2*n)))]`
-/

namespace A217958.P6970718553732455357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 |A157128 (2 * n)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217958.P6970718553732455357

namespace A217958

/-- `record[A217450(abs(A157128(2*n)))]` -/
def P6970718553732455357.Spec : Prop :=
  ∀ n, P6970718553732455357.a n = A217958 (n + 1)

end A217958

/-! ## A217958.P10429959051622091502

`record[A217450(n+2)/A297402(n+1)]`
-/

namespace A217958.P10429959051622091502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217450 (n + 2) : ℚ) / (A297402 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217958.P10429959051622091502

namespace A217958

/-- `record[A217450(n+2)/A297402(n+1)]` -/
def P10429959051622091502.Spec : Prop :=
  ∀ n, P10429959051622091502.a n = (A217958 (n + 1) : ℚ)

end A217958

/-! ## A217958.P9354929854901804806

`record[A217450(A099375(n)+1)]`
-/

namespace A217958.P9354929854901804806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217958.P9354929854901804806

namespace A217958

/-- `record[A217450(A099375(n)+1)]` -/
def P9354929854901804806.Spec : Prop :=
  ∀ n, P9354929854901804806.a n = A217958 (n + 1)

end A217958

/-! ## A217958.P9057878751860770366

`A217450(A317440(n+1))/A007318(A000217(n))`
-/

namespace A217958.P9057878751860770366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217450 (A317440 (n + 1)).toNat : ℚ) / (A007318 (A000217 n).toNat : ℚ)

end

end A217958.P9057878751860770366

namespace A217958

/-- `A217450(A317440(n+1))/A007318(A000217(n))` -/
def P9057878751860770366.Spec : Prop :=
  ∀ n, P9057878751860770366.a n = (A217958 (n + 1) : ℚ)

end A217958

/-! ## A217958.P15261763296000440294

`record[A217450(A056753(n)+1)]`
-/

namespace A217958.P15261763296000440294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (A056753 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217958.P15261763296000440294

namespace A217958

/-- `record[A217450(A056753(n)+1)]` -/
def P15261763296000440294.Spec : Prop :=
  ∀ n, P15261763296000440294.a n = A217958 (n + 1)

end A217958

/-!
# A217959: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 n X 3 array.

The programs for A217959, the canonical program `A217959.P5256309286763435940` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217959 has offset 1).

The definition of A217959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217959.P5256309286763435940

`ogf((9+x-39x^2-41x^3-26x^4)/(1-10x+4x^2+20x^3+23x^4+10x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217959

/-- `ogf((9+x-39x^2-41x^3-26x^4)/(1-10x+4x^2+20x^3+23x^4+10x^5))` -/
def P5256309286763435940.Spec : Prop :=
  ∀ n, P5256309286763435940.a n = A217959 (n + 1)

theorem P5256309286763435940.correct : P5256309286763435940.Spec := by
  intro n
  simp only [A217959, Nat.add_sub_cancel]

end A217959

/-! ## A217959.P6810931461624223203

`A217964(∑[n+3]+1)`
-/

namespace A217959.P6810931461624223203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217959.P6810931461624223203

namespace A217959

/-- `A217964(∑[n+3]+1)` -/
def P6810931461624223203.Spec : Prop :=
  ∀ n, P6810931461624223203.a n = A217959 (n + 1)

end A217959

/-! ## A217959.P17315712598159926822

`record[A217964(A198464(n+1))]`
-/

namespace A217959.P17315712598159926822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217959.P17315712598159926822

namespace A217959

/-- `record[A217964(A198464(n+1))]` -/
def P17315712598159926822.Spec : Prop :=
  ∀ n, P17315712598159926822.a n = A217959 (n + 1)

end A217959

/-! ## A217959.P7037811938721520660

`or(1, A217964(A034856(n+2)))`
-/

namespace A217959.P7037811938721520660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217964 (A034856 (n + 2)).toNat)

end

end A217959.P7037811938721520660

namespace A217959

/-- `or(1, A217964(A034856(n+2)))` -/
def P7037811938721520660.Spec : Prop :=
  ∀ n, P7037811938721520660.a n = A217959 (n + 1)

end A217959

/-! ## A217959.P9754460358639761053

`A217964(A034856(n+2))%A217960(n+1)`
-/

namespace A217959.P9754460358639761053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217964 (A034856 (n + 2)).toNat) (A217960 (n + 1))

end

end A217959.P9754460358639761053

namespace A217959

/-- `A217964(A034856(n+2))%A217960(n+1)` -/
def P9754460358639761053.Spec : Prop :=
  ∀ n, P9754460358639761053.a n = A217959 (n + 1)

end A217959

/-!
# A217960: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A217960, there is no canonical definition to state claims against.
-/

/-! ## A217960.P16391251584870095678

`A217964(A141214(n+1))`
-/

namespace A217960.P16391251584870095678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A141214 (n + 1)).toNat

end

end A217960.P16391251584870095678

/-! ## A217960.P1237978899422356028

`A217964(A155212(n)+5)`
-/

namespace A217960.P1237978899422356028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A155212 n + 5).toNat

end

end A217960.P1237978899422356028

/-! ## A217960.P16276694587527608216

`A217964(A056000(n)+7)`
-/

namespace A217960.P16276694587527608216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A056000 n + 7).toNat

end

end A217960.P16276694587527608216

/-! ## A217960.P158689145225145844

`A217964(eq[3, A193592(n)])`
-/

namespace A217960.P158689145225145844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217960.P158689145225145844

/-! ## A217960.P12764097947953249492

`A217964(A052905(n+1)+2)`
-/

namespace A217960.P12764097947953249492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A052905 (n + 1) + 2).toNat

end

end A217960.P12764097947953249492

/-!
# A217961: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A217961, there is no canonical definition to state claims against.
-/

/-! ## A217961.P1008970417217014337

`A217964(eq[4, A193592(n)])`
-/

namespace A217961.P1008970417217014337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217961.P1008970417217014337

/-! ## A217961.P10250251265035444086

`A217964(eq[5, A239144(n)])`
-/

namespace A217961.P10250251265035444086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217961.P10250251265035444086

/-! ## A217961.P1424060598008885805

`A217964(Δ[A023545(n+1)])`
-/

namespace A217961.P1424060598008885805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (f1 (n + 1) - f1 n).toNat

end

end A217961.P1424060598008885805

/-! ## A217961.P10175508610080750816

`A217964(eq[5, A200370(n+1)])`
-/

namespace A217961.P10175508610080750816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217961.P10175508610080750816

/-! ## A217961.P14452633870288466802

`A217964(eq[6, A185782(n+1)])`
-/

namespace A217961.P14452633870288466802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217961.P14452633870288466802

/-!
# A217962: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A217962, there is no canonical definition to state claims against.
-/

/-! ## A217962.P4261145339159750947

`A217964(A052905(n+3))`
-/

namespace A217962.P4261145339159750947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A052905 (n + 3)).toNat

end

end A217962.P4261145339159750947

/-! ## A217962.P14055747253097164883

`A217964(eq[3, A219347(n)])`
-/

namespace A217962.P14055747253097164883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217962.P14055747253097164883

/-! ## A217962.P7225677649324781400

`A217964(eq[5, A193592(n)])`
-/

namespace A217962.P7225677649324781400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217962.P7225677649324781400

/-! ## A217962.P13454339661940470086

`A217964(eq[8, A185782(n+1)])`
-/

namespace A217962.P13454339661940470086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217962.P13454339661940470086

/-! ## A217962.P10170470030448041475

`A217964(Δ[Δ[A006504(n+1)]])`
-/

namespace A217962.P10170470030448041475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (f1 (n + 1) - f1 n).toNat

end

end A217962.P10170470030448041475

/-!
# A217963: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 nX7 array.

The programs for A217963, there is no canonical definition to state claims against.
-/

/-! ## A217963.P6893528447446311564

`A217964(eq[4, A219347(n)])`
-/

namespace A217963.P6893528447446311564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217963.P6893528447446311564

/-! ## A217963.P14853877086135841250

`A217964(eq[6, A193592(n)])`
-/

namespace A217963.P14853877086135841250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217963.P14853877086135841250

/-! ## A217963.P18119465910907499871

`A217964(eq[7, A200370(n+1)])`
-/

namespace A217963.P18119465910907499871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217963.P18119465910907499871

/-! ## A217963.P9924790408935177002

`A217964(eq[10, A185782(n+1)])`
-/

namespace A217963.P9924790408935177002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217963.P9924790408935177002

/-! ## A217963.P2297874212825110801

`A217964(eq[32, A057728(n+1)])`
-/

namespace A217963.P2297874212825110801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217963.P2297874212825110801

/-!
# A217964: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 nXk array.

The programs for A217964, there is no canonical definition to state claims against.
-/

/-! ## A217964.P1442748029337607932

`A217645(A172540(n+1)+A006254(n+1))`
-/

namespace A217964.P1442748029337607932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A172540 (n + 1) + A006254 (n + 1)).toNat

end

end A217964.P1442748029337607932

/-! ## A217964.P8945972804293419665

`A217645(A172630(n+1)+A006254(n+1))`
-/

namespace A217964.P8945972804293419665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A172630 (n + 1) + A006254 (n + 1)).toNat

end

end A217964.P8945972804293419665

/-! ## A217964.P9975137089569282172

`A217645(A127963(n+1)%A134587(n+1))`
-/

namespace A217964.P9975137089569282172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (Int.tmod (A127963 (n + 1)) (A134587 (n + 1))).toNat

end

end A217964.P9975137089569282172

/-!
# A217965: Number of 2Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 2Xn array.

The programs for A217965, there is no canonical definition to state claims against.
-/

/-! ## A217965.P6372975277447488474

`A217964(∑[n+1]+2)`
-/

namespace A217965.P6372975277447488474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217965.P6372975277447488474

/-!
# A217966: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A217966, there is no canonical definition to state claims against.
-/

/-! ## A217966.P14004611554110881496

`A217964(∑[n+2]+4)`
-/

namespace A217966.P14004611554110881496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217966.P14004611554110881496

/-! ## A217966.P6240309975167935577

`or(1, A217964(A167614(n+1)))`
-/

namespace A217966.P6240309975167935577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217964 (A167614 (n + 1)).toNat)

end

end A217966.P6240309975167935577

/-! ## A217966.P386393830374742898

`A217964(A167614(n+1))+A185284(n)`
-/

namespace A217966.P386393830374742898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A167614 (n + 1)).toNat + A185284 n

end

end A217966.P386393830374742898

/-! ## A217966.P2889822670554255681

`lcm(A033999(n), A217964(A167614(n+1)))`
-/

namespace A217966.P2889822670554255681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A217964 (A167614 (n + 1)).toNat)

end

end A217966.P2889822670554255681

/-! ## A217966.P13553288609409446462

`A043290(n+1)*A217964(A167614(n+1))`
-/

namespace A217966.P13553288609409446462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (n + 1) * A217964 (A167614 (n + 1)).toNat

end

end A217966.P13553288609409446462

/-!
# A217967: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A217967, there is no canonical definition to state claims against.
-/

/-! ## A217967.P3720144403720896559

`A217964(A141214(n)+7)`
-/

namespace A217967.P3720144403720896559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A141214 n + 7).toNat

end

end A217967.P3720144403720896559

/-! ## A217967.P16394183235810311828

`A217964(A052905(n)+9)`
-/

namespace A217967.P16394183235810311828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A052905 n + 9).toNat

end

end A217967.P16394183235810311828

/-! ## A217967.P5576367099818522310

`A217964(A055999(n)+10)`
-/

namespace A217967.P5576367099818522310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A055999 n + 10).toNat

end

end A217967.P5576367099818522310

/-! ## A217967.P10952914724050996894

`A217964(A167614(n+2)+1)`
-/

namespace A217967.P10952914724050996894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A167614 (n + 2) + 1).toNat

end

end A217967.P10952914724050996894

/-! ## A217967.P16162957515975469030

`A217964(eq[5, A131818(n+1)])`
-/

namespace A217967.P16162957515975469030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217967.P16162957515975469030

/-!
# A217968: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 5Xn array.

The programs for A217968, there is no canonical definition to state claims against.
-/

/-! ## A217968.P14416073545684066030

`A217964(A167499(n+3))`
-/

namespace A217968.P14416073545684066030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A167499 (n + 3)).toNat

end

end A217968.P14416073545684066030

/-! ## A217968.P3563692023364321534

`A217964(A155212(n)+13)`
-/

namespace A217968.P3563692023364321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A155212 n + 13).toNat

end

end A217968.P3563692023364321534

/-! ## A217968.P5484673841585885931

`A217964(eq[7, A066657(n)])`
-/

namespace A217968.P5484673841585885931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217968.P5484673841585885931

/-! ## A217968.P6062127004091632490

`A217964(A034856(n+3)+7)`
-/

namespace A217968.P6062127004091632490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A034856 (n + 3) + 7).toNat

end

end A217968.P6062127004091632490

/-! ## A217968.P2381862275524820837

`A217964(eq[6, A131818(n+1)])`
-/

namespace A217968.P2381862275524820837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217968.P2381862275524820837

/-!
# A217969: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 6Xn array.

The programs for A217969, there is no canonical definition to state claims against.
-/

/-! ## A217969.P14226640953685249269

`A217964(A056115(n)+21)`
-/

namespace A217969.P14226640953685249269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A056115 n + 21).toNat

end

end A217969.P14226640953685249269

/-! ## A217969.P1603527052428373696

`A217964(A052905(n+2)+11)`
-/

namespace A217969.P1603527052428373696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A052905 (n + 2) + 11).toNat

end

end A217969.P1603527052428373696

/-! ## A217969.P7064248787688583299

`A217964(eq[7, A131818(n+1)])`
-/

namespace A217969.P7064248787688583299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217969.P7064248787688583299

/-! ## A217969.P9052298120099561283

`A217964(Δ[A023545(n+1)]+10)`
-/

namespace A217969.P9052298120099561283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (f1 (n + 1) - f1 n + 10).toNat

end

end A217969.P9052298120099561283

/-! ## A217969.P14601127930938650406

`A217964(A000124(n+6)-(n+1))`
-/

namespace A217969.P14601127930938650406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A217969.P14601127930938650406

/-!
# A217970: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..2 7Xn array.

The programs for A217970, there is no canonical definition to state claims against.
-/

/-! ## A217970.P8864133533741119095

`A217964(eq[11, A066657(n)])`
-/

namespace A217970.P8864133533741119095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217970.P8864133533741119095

/-! ## A217970.P10965532823238615115

`A217964(A167499(5+n)+2)`
-/

namespace A217970.P10965532823238615115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A167499 (5 + n) + 2).toNat

end

end A217970.P10965532823238615115

/-! ## A217970.P16221364222907377882

`A217964(A000124(n+6)+6)`
-/

namespace A217970.P16221364222907377882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A000124 (n + 6) + 6).toNat

end

end A217970.P16221364222907377882

/-! ## A217970.P4176645718099019559

`A217964(A161680(n+7)+7)`
-/

namespace A217970.P4176645718099019559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A161680 (n + 7) + 7).toNat

end

end A217970.P4176645718099019559

/-! ## A217970.P10497746228809204930

`A217964(A052905(n+3)+12)`
-/

namespace A217970.P10497746228809204930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217964 (A052905 (n + 3) + 12).toNat

end

end A217970.P10497746228809204930

/-!
# A217971: a(n) = 2^(2*n+1) * (2*n+1)*n^(2*n).

The programs for A217971, the canonical program `A217971.P14574319884081935161` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217971 has offset 1).

The definition of A217971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*(n+1)+1)*(2*(n+1)+1)*(n+1)^(2*(n+1))` (program `A217971.P14574319884081935161`, by `A217971.P14574319884081935161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217971.P14574319884081935161

`2^(2*(n+1)+1)*(2*(n+1)+1)*(n+1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217971

/-- `2^(2*(n+1)+1)*(2*(n+1)+1)*(n+1)^(2*(n+1))` -/
def P14574319884081935161.Spec : Prop :=
  ∀ n, (P14574319884081935161.a n : ℤ) = A217971 (n + 1)

theorem P14574319884081935161.correct : P14574319884081935161.Spec := by
  intro n
  simp only [A217971, Nat.add_sub_cancel]

end A217971

/-!
# A217972: Numbers n such that n^8 + 1 and (n + 2)^8 + 1 are both prime.

The programs for A217972, there is no canonical definition to state claims against.
-/

/-! ## A217972.P17220233267223257686

`∩[A006314(n+1)-2, A006314(n+1)]`
-/

namespace A217972.P17220233267223257686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217972.P17220233267223257686

/-!
# A217973: Niven (or Harshad) numbers not containing the digit 0.

The programs for A217973, the canonical program `A217973.P11846285657803405566` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217973 has offset 1).

The definition of A217973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217973.P7433908392903307755

`∩[A005349(n+1), A052382(n+1)]`
-/

namespace A217973.P7433908392903307755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217973.P7433908392903307755

namespace A217973

/-- `∩[A005349(n+1), A052382(n+1)]` -/
def P7433908392903307755.Spec : Prop :=
  ∀ n, (P7433908392903307755.a n : ℤ) = A217973 (n + 1)

end A217973

/-! ## A217973.P12599251507894661866

`∩[A052382(n+1), A356349(n+1)]`
-/

namespace A217973.P12599251507894661866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217973.P12599251507894661866

namespace A217973

/-- `∩[A052382(n+1), A356349(n+1)]` -/
def P12599251507894661866.Spec : Prop :=
  ∀ n, (P12599251507894661866.a n : ℤ) = A217973 (n + 1)

end A217973

/-! ## A217973.P11618397275806204162

`record[A004719(A005349(1+n))]`
-/

namespace A217973.P11618397275806204162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A005349 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217973.P11618397275806204162

namespace A217973

/-- `record[A004719(A005349(1+n))]` -/
def P11618397275806204162.Spec : Prop :=
  ∀ n, P11618397275806204162.a n = A217973 (n + 1)

end A217973

/-! ## A217973.P13071528386232612008

`filter[A005349(n+1), A168046(#)]`
-/

namespace A217973.P13071528386232612008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A217973.P13071528386232612008

namespace A217973

/-- `filter[A005349(n+1), A168046(#)]` -/
def P13071528386232612008.Spec : Prop :=
  ∀ n, P13071528386232612008.a n = A217973 (n + 1)

end A217973

/-! ## A217973.P11846285657803405566

`filter[A052382(n+1), A188641(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A217973

/-- `filter[A052382(n+1), A188641(#)]` -/
def P11846285657803405566.Spec : Prop :=
  ∀ n, P11846285657803405566.a n = A217973 (n + 1)

theorem P11846285657803405566.correct : P11846285657803405566.Spec := by
  intro n
  simp only [A217973, Nat.add_sub_cancel]

end A217973

/-! ## A217973.P6808335058342383309

`filter[A356349(n+1), A168046(#)]`
-/

namespace A217973.P6808335058342383309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A217973.P6808335058342383309

namespace A217973

/-- `filter[A356349(n+1), A168046(#)]` -/
def P6808335058342383309.Spec : Prop :=
  ∀ n, P6808335058342383309.a n = A217973 (n + 1)

end A217973

/-! ## A217973.P56118297826874093

`record[A004719(n+1)*A188641(n+1)]`
-/

namespace A217973.P56118297826874093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1) * A188641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217973.P56118297826874093

namespace A217973

/-- `record[A004719(n+1)*A188641(n+1)]` -/
def P56118297826874093.Spec : Prop :=
  ∀ n, P56118297826874093.a n = A217973 (n + 1)

end A217973

/-! ## A217973.P2859458756454198683

`record[A004719(n+1)/A065518(n+1)]`
-/

namespace A217973.P2859458756454198683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004719 (n + 1) : ℚ) / (A065518 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217973.P2859458756454198683

namespace A217973

/-- `record[A004719(n+1)/A065518(n+1)]` -/
def P2859458756454198683.Spec : Prop :=
  ∀ n, P2859458756454198683.a n = (A217973 (n + 1) : ℚ)

end A217973

/-! ## A217973.P17152504545087966974

`record[A004719(n+1)/A144261(n+1)]`
-/

namespace A217973.P17152504545087966974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004719 (n + 1) : ℚ) / (A144261 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217973.P17152504545087966974

namespace A217973

/-- `record[A004719(n+1)/A144261(n+1)]` -/
def P17152504545087966974.Spec : Prop :=
  ∀ n, P17152504545087966974.a n = (A217973 (n + 1) : ℚ)

end A217973

/-! ## A217973.P9415472802840465023

`record[gcd(A004719(n+1), A070635(n+1))]`
-/

namespace A217973.P9415472802840465023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004719 (n + 1)) (A070635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217973.P9415472802840465023

namespace A217973

/-- `record[gcd(A004719(n+1), A070635(n+1))]` -/
def P9415472802840465023.Spec : Prop :=
  ∀ n, (P9415472802840465023.a n : ℤ) = A217973 (n + 1)

end A217973

/-!
# A217975: Integers k such that 2*k^2 - 7 is a square.

The programs for A217975, the canonical program `A217975.P7747702962349785081` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217975 has offset 1).

The definition of A217975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217975.P17806356076895931561

`ogf((2+4x-4x^2-2x^3)/(1-6x^2+x^4))`
-/

namespace A217975.P17806356076895931561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -4, -2] [1, 0, -6, 0, 1] n

end

end A217975.P17806356076895931561

namespace A217975

/-- `ogf((2+4x-4x^2-2x^3)/(1-6x^2+x^4))` -/
def P17806356076895931561.Spec : Prop :=
  ∀ n, P17806356076895931561.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P7747702962349785081

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=22`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217975

/-- `6*a(n-2)-a(n-4)` -/
def P7747702962349785081.Spec : Prop :=
  ∀ n, P7747702962349785081.a n = A217975 (n + 1)

theorem P7747702962349785081.correct : P7747702962349785081.Spec := by
  intro n
  simp only [A217975, Nat.add_sub_cancel]

end A217975

/-! ## A217975.P5795346016979756460

`2*A006452(n+1)`
-/

namespace A217975.P5795346016979756460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006452 (n + 1)

end

end A217975.P5795346016979756460

namespace A217975

/-- `2*A006452(n+1)` -/
def P5795346016979756460.Spec : Prop :=
  ∀ n, P5795346016979756460.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P10188396655986282454

`a(n-1)+A077446(n)+A123335(n-1)` with `a(0)=2`
-/

namespace A217975.P10188396655986282454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A077446 n + A123335 (n - 1)

end

end A217975.P10188396655986282454

namespace A217975

/-- `a(n-1)+A077446(n)+A123335(n-1)` -/
def P10188396655986282454.Spec : Prop :=
  ∀ n, P10188396655986282454.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P6951976773153734148

`A077447(n+1)/2`
-/

namespace A217975.P6951976773153734148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077447 (n + 1) : ℚ) / 2

end

end A217975.P6951976773153734148

namespace A217975

/-- `A077447(n+1)/2` -/
def P6951976773153734148.Spec : Prop :=
  ∀ n, P6951976773153734148.a n = (A217975 (n + 1) : ℚ)

end A217975

/-! ## A217975.P3036333306214340886

`Δ[2*∑[A006452(n)]]`
-/

namespace A217975.P3036333306214340886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217975.P3036333306214340886

namespace A217975

/-- `Δ[2*∑[A006452(n)]]` -/
def P3036333306214340886.Spec : Prop :=
  ∀ n, P3036333306214340886.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P16016354802140203318

`record[Δ[A276600(n+1)]]`
-/

namespace A217975.P16016354802140203318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217975.P16016354802140203318

namespace A217975

/-- `record[Δ[A276600(n+1)]]` -/
def P16016354802140203318.Spec : Prop :=
  ∀ n, P16016354802140203318.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P9035534685885716244

`2*A216162(2*(n+1))`
-/

namespace A217975.P9035534685885716244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216162 (2 * (n + 1))

end

end A217975.P9035534685885716244

namespace A217975

/-- `2*A216162(2*(n+1))` -/
def P9035534685885716244.Spec : Prop :=
  ∀ n, P9035534685885716244.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P7674131754192690037

`Δ[2*∑[A216162(2*n)]]`
-/

namespace A217975.P7674131754192690037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217975.P7674131754192690037

namespace A217975

/-- `Δ[2*∑[A216162(2*n)]]` -/
def P7674131754192690037.Spec : Prop :=
  ∀ n, P7674131754192690037.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P14257665741529770315

`A082981(2*n)+a(n-1)` with `a(0)=2`
-/

namespace A217975.P14257665741529770315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A082981 (2 * n) + a (n - 1)

end

end A217975.P14257665741529770315

namespace A217975

/-- `A082981(2*n)+a(n-1)` -/
def P14257665741529770315.Spec : Prop :=
  ∀ n, P14257665741529770315.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P9450823756923802354

`a(n-1)+2*A084068(n)` with `a(0)=2`
-/

namespace A217975.P9450823756923802354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A084068 n

end

end A217975.P9450823756923802354

namespace A217975

/-- `a(n-1)+2*A084068(n)` -/
def P9450823756923802354.Spec : Prop :=
  ∀ n, P9450823756923802354.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P10837685700201955800

`A266504(A042948(n+1))`
-/

namespace A217975.P10837685700201955800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A042948 (n + 1)).toNat

end

end A217975.P10837685700201955800

namespace A217975

/-- `A266504(A042948(n+1))` -/
def P10837685700201955800.Spec : Prop :=
  ∀ n, P10837685700201955800.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P17122723298630776423

`A266504(A338062(n+1))`
-/

namespace A217975.P17122723298630776423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A338062 (n + 1)).toNat

end

end A217975.P17122723298630776423

namespace A217975

/-- `A266504(A338062(n+1))` -/
def P17122723298630776423.Spec : Prop :=
  ∀ n, P17122723298630776423.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P10157694310113036984

`A266506(A047467(n+2))`
-/

namespace A217975.P10157694310113036984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047467 (n + 2)).toNat

end

end A217975.P10157694310113036984

namespace A217975

/-- `A266506(A047467(n+2))` -/
def P10157694310113036984.Spec : Prop :=
  ∀ n, P10157694310113036984.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P8653959336536956081

`A266506(A047471(n+2)-1)`
-/

namespace A217975.P8653959336536956081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047471 (n + 2) - 1).toNat

end

end A217975.P8653959336536956081

namespace A217975

/-- `A266506(A047471(n+2)-1)` -/
def P8653959336536956081.Spec : Prop :=
  ∀ n, P8653959336536956081.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P10304555191678535361

`A266504(A042964(n+2)-2)`
-/

namespace A217975.P10304555191678535361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A042964 (n + 2) - 2).toNat

end

end A217975.P10304555191678535361

namespace A217975

/-- `A266504(A042964(n+2)-2)` -/
def P10304555191678535361.Spec : Prop :=
  ∀ n, P10304555191678535361.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P9786682904325500132

`A266504(A338064(n+2)-2)`
-/

namespace A217975.P9786682904325500132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A338064 (n + 2) - 2).toNat

end

end A217975.P9786682904325500132

namespace A217975

/-- `A266504(A338064(n+2)-2)` -/
def P9786682904325500132.Spec : Prop :=
  ∀ n, P9786682904325500132.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P14763166444009090099

`A079496(n+1)+A079496(n)`
-/

namespace A217975.P14763166444009090099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 1) + A079496 n

end

end A217975.P14763166444009090099

namespace A217975

/-- `A079496(n+1)+A079496(n)` -/
def P14763166444009090099.Spec : Prop :=
  ∀ n, P14763166444009090099.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P15489329242408598307

`A001333(n+2)-A077442(n)`
-/

namespace A217975.P15489329242408598307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - A077442 n

end

end A217975.P15489329242408598307

namespace A217975

/-- `A001333(n+2)-A077442(n)` -/
def P15489329242408598307.Spec : Prop :=
  ∀ n, P15489329242408598307.a n = A217975 (n + 1)

end A217975

/-! ## A217975.P5603050751006532583

`A124124(n+2)-A006451(n)`
-/

namespace A217975.P5603050751006532583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 2) - A006451 n

end

end A217975.P5603050751006532583

namespace A217975

/-- `A124124(n+2)-A006451(n)` -/
def P5603050751006532583.Spec : Prop :=
  ∀ n, P5603050751006532583.a n = A217975 (n + 1)

end A217975

/-!
# A217976: First time n appears in the first differences of n*log(n): A217865.

The programs for A217976, there is no canonical definition to state claims against.
-/

/-! ## A217976.P7615184675867771858

`A106733(∑[A177478(n+1)])`
-/

namespace A217976.P7615184675867771858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217976.P7615184675867771858

/-! ## A217976.P6211748653327874529

`A328803(A226170(n+1)+1)`
-/

namespace A217976.P6211748653327874529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (A226170 (n + 1) + 1).toNat

end

end A217976.P6211748653327874529

/-!
# A217977: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..1 n X n array.

The programs for A217977, there is no canonical definition to state claims against.
-/

/-! ## A217977.P482054713304966386

`A217982(∑[4*n]+1)`
-/

namespace A217977.P482054713304966386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217977.P482054713304966386

/-! ## A217977.P3169115993855130776

`lcm(2, A217982(A001844(n)))`
-/

namespace A217977.P3169115993855130776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A217982 (A001844 n).toNat)

end

end A217977.P3169115993855130776

/-! ## A217977.P14227052462511474267

`A014963(8*n+6)*A217982(A001844(n))`
-/

namespace A217977.P14227052462511474267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A217982 (A001844 n).toNat

end

end A217977.P14227052462511474267

/-! ## A217977.P80759251718175324

`C(2, A000005(n+2))!*A217982(A001844(n))`
-/

namespace A217977.P80759251718175324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (A000005 (n + 2)).toNat) : ℤ) * A217982 (A001844 n).toNat

end

end A217977.P80759251718175324

/-! ## A217977.P16344107425641072898

`A008683(A031933(n))²*A217982(A001844(n))`
-/

namespace A217977.P16344107425641072898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031933 n).toNat ^ 2 * A217982 (A001844 n).toNat

end

end A217977.P16344107425641072898

/-!
# A217978: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..1 n X 4 array.

The programs for A217978, the canonical program `A217978.P16869048365158242329` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217978 has offset 1).

The definition of A217978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217978.P16869048365158242329

`ogf((6-6x-6x^2-10x^3+10x^4+8x^5)/(1-2x-5x^2-x^3+5x^4+8x^5-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217978

/-- `ogf((6-6x-6x^2-10x^3+10x^4+8x^5)/(1-2x-5x^2-x^3+5x^4+8x^5-x^6-2x^7))` -/
def P16869048365158242329.Spec : Prop :=
  ∀ n, P16869048365158242329.a n = A217978 (n + 1)

theorem P16869048365158242329.correct : P16869048365158242329.Spec := by
  intro n
  simp only [A217978, Nat.add_sub_cancel]

end A217978

/-! ## A217978.P15640903311268511460

`A217982(A141214(n)+7)`
-/

namespace A217978.P15640903311268511460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A141214 n + 7).toNat

end

end A217978.P15640903311268511460

namespace A217978

/-- `A217982(A141214(n)+7)` -/
def P15640903311268511460.Spec : Prop :=
  ∀ n, P15640903311268511460.a n = A217978 (n + 1)

end A217978

/-! ## A217978.P12947793164600394736

`A217982(A052905(n)+9)`
-/

namespace A217978.P12947793164600394736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A052905 n + 9).toNat

end

end A217978.P12947793164600394736

namespace A217978

/-- `A217982(A052905(n)+9)` -/
def P12947793164600394736.Spec : Prop :=
  ∀ n, P12947793164600394736.a n = A217978 (n + 1)

end A217978

/-! ## A217978.P9016762673084457654

`A217982(A055999(n)+10)`
-/

namespace A217978.P9016762673084457654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A055999 n + 10).toNat

end

end A217978.P9016762673084457654

namespace A217978

/-- `A217982(A055999(n)+10)` -/
def P9016762673084457654.Spec : Prop :=
  ∀ n, P9016762673084457654.a n = A217978 (n + 1)

end A217978

/-! ## A217978.P14186159274927246346

`A217982(A167614(n+2)+1)`
-/

namespace A217978.P14186159274927246346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A167614 (n + 2) + 1).toNat

end

end A217978.P14186159274927246346

namespace A217978

/-- `A217982(A167614(n+2)+1)` -/
def P14186159274927246346.Spec : Prop :=
  ∀ n, P14186159274927246346.a n = A217978 (n + 1)

end A217978

/-!
# A217979: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..1 n X 5 array.

The programs for A217979, there is no canonical definition to state claims against.
-/

/-! ## A217979.P14962975276471261668

`A217982(A167499(n+3))`
-/

namespace A217979.P14962975276471261668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A167499 (n + 3)).toNat

end

end A217979.P14962975276471261668

/-! ## A217979.P9914356329278514595

`A217982(A167614(n+3)+2)`
-/

namespace A217979.P9914356329278514595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A167614 (n + 3) + 2).toNat

end

end A217979.P9914356329278514595

/-! ## A217979.P11216282560929234750

`A217982(A000217(n+4)+5)`
-/

namespace A217979.P11216282560929234750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A000217 (n + 4) + 5).toNat

end

end A217979.P11216282560929234750

/-! ## A217979.P4325890407566655033

`A217982(A374005(n+1))`
-/

namespace A217979.P4325890407566655033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A374005 (n + 1)).toNat

end

end A217979.P4325890407566655033

/-! ## A217979.P3741224545254381933

`A217982(A046691(n+3))`
-/

namespace A217979.P3741224545254381933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A046691 (n + 3)).toNat

end

end A217979.P3741224545254381933

/-!
# A217980: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A217980, there is no canonical definition to state claims against.
-/

/-! ## A217980.P1245095366056430029

`A217982(A166136(n+4))`
-/

namespace A217980.P1245095366056430029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A166136 (n + 4)).toNat

end

end A217980.P1245095366056430029

/-! ## A217980.P15396974972764428861

`A217982(A056115(n)+21)`
-/

namespace A217980.P15396974972764428861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A056115 n + 21).toNat

end

end A217980.P15396974972764428861

/-! ## A217980.P812215327782027667

`A217982(A000096(n+4)+7)`
-/

namespace A217980.P812215327782027667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A000096 (n + 4) + 7).toNat

end

end A217980.P812215327782027667

/-! ## A217980.P17473374915284493661

`A217982(A055999(n+2)+12)`
-/

namespace A217980.P17473374915284493661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A055999 (n + 2) + 12).toNat

end

end A217980.P17473374915284493661

/-! ## A217980.P4218750614737271840

`A217982(Δ[A023551(n+2)]-(2*n+1))`
-/

namespace A217980.P4218750614737271840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A217980.P4218750614737271840

/-!
# A217981: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..1 nX7 array.

The programs for A217981, there is no canonical definition to state claims against.
-/

/-! ## A217981.P1031005518037246441

`A217982(A166136(n+5)+1)`
-/

namespace A217981.P1031005518037246441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A166136 (n + 5) + 1).toNat

end

end A217981.P1031005518037246441

/-! ## A217981.P17310863265281050550

`A217982(A167614(n+5)+4)`
-/

namespace A217981.P17310863265281050550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A167614 (n + 5) + 4).toNat

end

end A217981.P17310863265281050550

/-! ## A217981.P1091430601352397694

`A217982(A000124(n+6)+6)`
-/

namespace A217981.P1091430601352397694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A000124 (n + 6) + 6).toNat

end

end A217981.P1091430601352397694

/-! ## A217981.P5985172235990177541

`A217982(A055998(n+1)+A016777(n+8))`
-/

namespace A217981.P5985172235990177541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A055998 (n + 1) + A016777 (n + 8)).toNat

end

end A217981.P5985172235990177541

/-! ## A217981.P3563478205632098614

`A217982(A374008(n+1))`
-/

namespace A217981.P3563478205632098614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217982 (A374008 (n + 1)).toNat

end

end A217981.P3563478205632098614

/-!
# A217982: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..1 nXk array.

The programs for A217982, there is no canonical definition to state claims against.
-/

/-! ## A217982.P16566696913906684170

`A058071(n)*A278235(A008300(n))`
-/

namespace A217982.P16566696913906684170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n * A278235 (A008300 n).toNat

end

end A217982.P16566696913906684170

/-! ## A217982.P6899836359685235367

`A278235(A008300(n))/A007318(n)*A109906(n)`
-/

namespace A217982.P6899836359685235367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278235 (A008300 n).toNat : ℚ) / (A007318 n : ℚ) * (A109906 n : ℚ)

end

end A217982.P6899836359685235367

/-! ## A217982.P8242287920867741333

`(A108035(n+1)-A039913(n))*A278235(A008300(n))`
-/

namespace A217982.P8242287920867741333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108035 (n + 1) - A039913 n) * A278235 (A008300 n).toNat

end

end A217982.P8242287920867741333

/-! ## A217982.P12840576041128484393

`(A131410(n+1)-A098356(n))*A278235(A008300(n))`
-/

namespace A217982.P12840576041128484393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131410 (n + 1) - A098356 n) * A278235 (A008300 n).toNat

end

end A217982.P12840576041128484393

/-! ## A217982.P12140414597573751926

`A110361(n+1)/A110102(n+1)*A278235(A008300(n))`
-/

namespace A217982.P12140414597573751926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110361 (n + 1) : ℚ) / (A110102 (n + 1) : ℚ) * (A278235 (A008300 n).toNat : ℚ)

end

end A217982.P12140414597573751926

/-!
# A217983: If n = floor(p/2) * p^e, for some (by necessity unique) prime p and exponent e > 0, then a(n) = p, otherwise a(n) = 1.

The programs for A217983, there is no canonical definition to state claims against.
-/

/-! ## A217983.P567263725908256606

`gcd(A081469(n+1), A342257(n+1))`
-/

namespace A217983.P567263725908256606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081469 (n + 1)) (A342257 (n + 1))

end

end A217983.P567263725908256606

/-! ## A217983.P2527974031524434477

`gcd(∑{d}[n+1, lcm(#, n+1)], A381887(2*(n+1)))`
-/

namespace A217983.P2527974031524434477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ) (A381887 (2 * (n + 1)))

end

end A217983.P2527974031524434477

/-! ## A217983.P13645870924784500048

`gcd(A195441(2*n+3), A256267(2*(n+1)))`
-/

namespace A217983.P13645870924784500048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195441 (2 * n + 3)) (A256267 (2 * (n + 1)))

end

end A217983.P13645870924784500048

/-! ## A217983.P8294218980483003352

`gcd(Δ[A286515(2*n+1)], A342257(2*(n+1)))`
-/

namespace A217983.P8294218980483003352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286515 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A342257 (2 * (n + 1)))

end

end A217983.P8294218980483003352

/-! ## A217983.P8496643765593764026

`gcd(A051717(2*(n+1)), A342257(2*(n+1)))`
-/

namespace A217983.P8496643765593764026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051717 (2 * (n + 1))) (A342257 (2 * (n + 1)))

end

end A217983.P8496643765593764026

/-! ## A217983.P15069608594317714831

`gcd(A056609(2*n+1), A079612(2*(n+1)))`
-/

namespace A217983.P15069608594317714831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056609 (2 * n + 1)) (A079612 (2 * (n + 1)))

end

end A217983.P15069608594317714831

/-! ## A217983.P8977727653242928799

`gcd(A056609(A005408(n)), A202318(n+1))`
-/

namespace A217983.P8977727653242928799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056609 (A005408 n).toNat) (A202318 (n + 1))

end

end A217983.P8977727653242928799

/-! ## A217983.P6354471476974058035

`gcd(12-A298882(n+1), A006530(n+1))`
-/

namespace A217983.P6354471476974058035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 - A298882 (n + 1)) (A006530 (n + 1))

end

end A217983.P6354471476974058035

/-!
# A217984: Number of divisors of n^3 + 1 of the form k^3 + 1.

The programs for A217984, there is no canonical definition to state claims against.
-/

/-! ## A217984.P8839499438712045793

`floor(A069929(A028310(n))+atan(2*n))`
-/

namespace A217984.P8839499438712045793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069929 (A028310 n).toNat : ℝ) + Real.arctan (2 * n : ℝ)⌋

end

end A217984.P8839499438712045793

/-! ## A217984.P443794722369469196

`A069929(A028310(n))+A057427(n)`
-/

namespace A217984.P443794722369469196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat + A057427 n

end

end A217984.P443794722369469196

/-! ## A217984.P11228233301873161500

`A069929(A028310(n))-A057428(n)`
-/

namespace A217984.P11228233301873161500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat - A057428 n

end

end A217984.P11228233301873161500

/-! ## A217984.P12771492816593467121

`A069929(A028310(n))+A062157(n)²`
-/

namespace A217984.P12771492816593467121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat + A062157 n ^ 2

end

end A217984.P12771492816593467121

/-! ## A217984.P1212441268486285063

`A069929(A028310(n))+A040000(n)-1`
-/

namespace A217984.P1212441268486285063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat + (A040000 n - 1)

end

end A217984.P1212441268486285063

/-! ## A217984.P17117228401577231799

`A069929(A028310(n))+char[A038722(n+1)]`
-/

namespace A217984.P17117228401577231799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A217984.P17117228401577231799

/-! ## A217984.P15400330814027782487

`A069929(A028310(n))-A062157(2*n)`
-/

namespace A217984.P15400330814027782487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat - A062157 (2 * n)

end

end A217984.P15400330814027782487

/-! ## A217984.P2956341905623908263

`A069929(A123108(2*n))-A057428(n)`
-/

namespace A217984.P2956341905623908263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A123108 (2 * n)).toNat - A057428 n

end

end A217984.P2956341905623908263

/-! ## A217984.P10829532642346811893

`A069929(A028310(n))+A000035(A000040(n+1))`
-/

namespace A217984.P10829532642346811893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A028310 n).toNat + A000035 (A000040 (n + 1)).toNat

end

end A217984.P10829532642346811893

/-! ## A217984.P16424892459153450580

`A069929(A003056(∑[n]+1))+A057427(n)`
-/

namespace A217984.P16424892459153450580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069929 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + A057427 n

end

end A217984.P16424892459153450580

/-!
# A217987: Number of connected graphs on n nodes with clique number 7.

The programs for A217987, there is no canonical definition to state claims against.
-/

/-! ## A217987.P1457291988798686792

`A005843(A077394(n+1))-∑[A077394(n+1)]`
-/

namespace A217987.P1457291988798686792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A077394 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217987.P1457291988798686792

/-! ## A217987.P3518572829783828710

`round(A248571(n+1)/5)`
-/

namespace A217987.P3518572829783828710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248571 (n + 1) : ℚ) / 5)

end

end A217987.P3518572829783828710

/-! ## A217987.P1318601958974194353

`floor(A003178(2*n)/23)`
-/

namespace A217987.P1318601958974194353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003178 (2 * n) : ℚ) / 23⌋

end

end A217987.P1318601958974194353

/-! ## A217987.P12694191359005256621

`A352128(ceil(ceil(2^(n-1))/2))`
-/

namespace A217987.P12694191359005256621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352128 ⌈(⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) / 2⌉.toNat

end

end A217987.P12694191359005256621

/-! ## A217987.P12622613884243534539

`A210717(A092424(n))`
-/

namespace A217987.P12622613884243534539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (A092424 n).toNat

end

end A217987.P12622613884243534539

/-!
# A217988: Binomial transform of A215495(n).

The programs for A217988, the canonical program `A217988.P7324729420100477941` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217988 has offset 0).

The definition of A217988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217988.P4617500383796129964

`A218009(n)+A146559(n)`
-/

namespace A217988.P4617500383796129964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218009 n + A146559 n

end

end A217988.P4617500383796129964

namespace A217988

/-- `A218009(n)+A146559(n)` -/
def P4617500383796129964.Spec : Prop :=
  ∀ n, P4617500383796129964.a n = A217988 n

end A217988

/-! ## A217988.P11013595139144183333

`ogf((1-4x+6x^2-2x^3-2x^4+2x^5)/(1-6x+14x^2-16x^3+8x^4))`
-/

namespace A217988.P11013595139144183333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -2, -2, 2] [1, -6, 14, -16, 8] n

end

end A217988.P11013595139144183333

namespace A217988

/-- `ogf((1-4x+6x^2-2x^3-2x^4+2x^5)/(1-6x+14x^2-16x^3+8x^4))` -/
def P11013595139144183333.Spec : Prop :=
  ∀ n, P11013595139144183333.a n = A217988 n

end A217988

/-! ## A217988.P7324729420100477941

`6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10, a(4)=26, a(5)=66`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217988

/-- `6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` -/
def P7324729420100477941.Spec : Prop :=
  ∀ n, P7324729420100477941.a n = A217988 n

theorem P7324729420100477941.correct : P7324729420100477941.Spec := by
  intro n
  simp only [A217988]

end A217988

/-! ## A217988.P6704536109081627803

`A098156(n)-A038505(n)`
-/

namespace A217988.P6704536109081627803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 n - A038505 n

end

end A217988.P6704536109081627803

namespace A217988

/-- `A098156(n)-A038505(n)` -/
def P6704536109081627803.Spec : Prop :=
  ∀ n, P6704536109081627803.a n = A217988 n

end A217988

/-! ## A217988.P14950266012295197932

`A218009(n)+Δ[A009545(n)]`
-/

namespace A217988.P14950266012295197932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218009 n + (f1 (n + 1) - f1 n)

end

end A217988.P14950266012295197932

namespace A217988

/-- `A218009(n)+Δ[A009545(n)]` -/
def P14950266012295197932.Spec : Prop :=
  ∀ n, P14950266012295197932.a n = A217988 n

end A217988

/-! ## A217988.P269253936640895019

`A099087(n)+A218009(n)-A009545(n)`
-/

namespace A217988.P269253936640895019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n + (A218009 n - A009545 n)

end

end A217988.P269253936640895019

namespace A217988

/-- `A099087(n)+A218009(n)-A009545(n)` -/
def P269253936640895019.Spec : Prop :=
  ∀ n, P269253936640895019.a n = A217988 n

end A217988

/-! ## A217988.P8934214100782728343

`A009545(n+1)+A218009(n)-A009545(n)`
-/

namespace A217988.P8934214100782728343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + (A218009 n - A009545 n)

end

end A217988.P8934214100782728343

namespace A217988

/-- `A009545(n+1)+A218009(n)-A009545(n)` -/
def P8934214100782728343.Spec : Prop :=
  ∀ n, P8934214100782728343.a n = A217988 n

end A217988

/-! ## A217988.P4721300765375469581

`∑{#}[n, C(n, #)*A215495(#)]`
-/

namespace A217988.P4721300765375469581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A215495 k

end

end A217988.P4721300765375469581

namespace A217988

/-- `∑{#}[n, C(n, #)*A215495(#)]` -/
def P4721300765375469581.Spec : Prop :=
  ∀ n, P4721300765375469581.a n = A217988 n

end A217988

/-!
# A217989: G.f. satisfies: A(x) = 1+x + x^2*A'(x)*A(x)^2.

The programs for A217989, there is no canonical definition to state claims against.
-/

/-! ## A217989.P16656048160046368294

`A300763(A073479(n))`
-/

namespace A217989.P16656048160046368294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A073479 n).toNat

end

end A217989.P16656048160046368294

/-! ## A217989.P17885577370020812538

`A065033(ceil(A084894(n+1)/3))`
-/

namespace A217989.P17885577370020812538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈(A084894 (n + 1) : ℚ) / 3⌉.toNat

end

end A217989.P17885577370020812538

/-! ## A217989.P6520666618145954133

`A081753(n)+A008624(A122455(n))`
-/

namespace A217989.P6520666618145954133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 n + A008624 (A122455 n).toNat

end

end A217989.P6520666618145954133

/-!
# A217990: Size of largest semigroup generated by one Boolean n X n matrix.

The programs for A217990, there is no canonical definition to state claims against.
-/

/-! ## A217990.P8029820507528659215

`A122391(A088155(n))+n²`
-/

namespace A217990.P8029820507528659215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (A088155 n).toNat + (n ^ 2 : ℤ)

end

end A217990.P8029820507528659215

/-! ## A217990.P18430697123835995606

`A048570(A184964(n))+n²`
-/

namespace A217990.P18430697123835995606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A184964 n).toNat + (n ^ 2 : ℤ)

end

end A217990.P18430697123835995606

/-! ## A217990.P11585770474875010585

`A111825(A274581(n))+n²`
-/

namespace A217990.P11585770474875010585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111825 (A274581 n).toNat + (n ^ 2 : ℤ)

end

end A217990.P11585770474875010585

/-! ## A217990.P12775718859443383746

`A060945(A014376(n)²)+n²`
-/

namespace A217990.P12775718859443383746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (A014376 n ^ 2).toNat + (n ^ 2 : ℤ)

end

end A217990.P12775718859443383746

/-! ## A217990.P1894878601200956959

`A183570(A067157(n+1))+n²`
-/

namespace A217990.P1894878601200956959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183570 (A067157 (n + 1 + 10)).toNat + (n ^ 2 : ℤ)

end

end A217990.P1894878601200956959

/-!
# A217991: Numbers n such that n^16+1 and (n+2)^16+1 are both prime.

The programs for A217991, there is no canonical definition to state claims against.
-/

/-! ## A217991.P10566060920885662221

`∩[A006313(n+1)-2, A006313(n+1)]`
-/

namespace A217991.P10566060920885662221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217991.P10566060920885662221

/-! ## A217991.P12138181901713162474

`∩[A006313(n+1), A023444(A006313(n+1))]`
-/

namespace A217991.P12138181901713162474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A006313 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217991.P12138181901713162474

/-! ## A217991.P15173546804706335787

`∩[A006313(n+1), A249744(A006313(n+4))]`
-/

namespace A217991.P15173546804706335787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249744 (A006313 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217991.P15173546804706335787

/-!
# A217992: Numbers n such that n^32+1 and (n+2)^32+1 are both prime.

The programs for A217992, there is no canonical definition to state claims against.
-/

/-! ## A217992.P4131099177349809939

`∩[A006315(n+1)-2, A006315(n+1)]`
-/

namespace A217992.P4131099177349809939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006315 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217992.P4131099177349809939

/-! ## A217992.P6856697980287304481

`∩[A006315(n+1), A023444(A006315(n+1))]`
-/

namespace A217992.P6856697980287304481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A006315 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217992.P6856697980287304481

/-! ## A217992.P11295994578989685694

`∩[A006315(n+1), A065168(A006315(n+2))]`
-/

namespace A217992.P11295994578989685694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A006315 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217992.P11295994578989685694

/-!
# A217993: Smallest k such that k^(2^n) + 1 and (k+2)^(2^n) + 1 are both prime.

The programs for A217993, there is no canonical definition to state claims against.
-/

/-! ## A217993.P6041941686670855177

`A118539(round(acot(n)+n))-1`
-/

namespace A217993.P6041941686670855177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118539 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A217993.P6041941686670855177

/-! ## A217993.P6900423094372935243

`A118539(abs(1-n)+1)-1`
-/

namespace A217993.P6900423094372935243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118539 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A217993.P6900423094372935243

/-! ## A217993.P16508747491586876476

`A193356(A118539(round(sqrt(n²+1))))-1`
-/

namespace A217993.P16508747491586876476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A118539 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat - 1

end

end A217993.P16508747491586876476

/-!
# A217994: a(n) = 2^((2 + n + n^2)/2).

The programs for A217994, the canonical program `A217994.P15456848668074478390` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217994 has offset 0).

The definition of A217994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217994.P15456848668074478390

`a(n-1)*2^n` with `a(0)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217994

/-- `a(n-1)*2^n` -/
def P15456848668074478390.Spec : Prop :=
  ∀ n, (P15456848668074478390.a n : ℤ) = A217994 n

theorem P15456848668074478390.correct : P15456848668074478390.Spec := by
  intro n
  simp only [A217994]

end A217994

/-! ## A217994.P5754171783054153740

`2^((2+n+n²)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217994.P5754171783054153740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((2 + n + n ^ 2 : ℚ) / 2 : ℝ)

end

end A217994.P5754171783054153740

namespace A217994

/-- `2^((2+n+n²)/2)` -/
def P5754171783054153740.Spec : Prop :=
  ∀ n, P5754171783054153740.a n = (A217994 n : ℝ)

end A217994

/-! ## A217994.P9539496664047756914

`2*A006125(n+1)`
-/

namespace A217994.P9539496664047756914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006125 (n + 1)

end

end A217994.P9539496664047756914

namespace A217994

/-- `2*A006125(n+1)` -/
def P9539496664047756914.Spec : Prop :=
  ∀ n, P9539496664047756914.a n = A217994 n

end A217994

/-! ## A217994.P15593397941002379247

`A000079(A000124(n))`
-/

namespace A217994.P15593397941002379247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000124 n).toNat

end

end A217994.P15593397941002379247

namespace A217994

/-- `A000079(A000124(n))` -/
def P15593397941002379247.Spec : Prop :=
  ∀ n, P15593397941002379247.a n = A217994 n

end A217994

/-! ## A217994.P11271306786556231110

`∏[lcm(2, (-2)^n)]`
-/

namespace A217994.P11271306786556231110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((-2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217994.P11271306786556231110

namespace A217994

/-- `∏[lcm(2, (-2)^n)]` -/
def P11271306786556231110.Spec : Prop :=
  ∀ n, (P11271306786556231110.a n : ℤ) = A217994 n

end A217994

/-!
# A217995: Number of n X 1 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 n X 1 array.

The programs for A217995, the canonical program `A217995.P18394692427622179726` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217995 has offset 1).

The definition of A217995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217995.P18394692427622179726

`ogf((3-5x^2-9x^3-6x^4+3x^5)/(1-3x-x^2-2x^3+13x^4+7x^5-3x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217995

/-- `ogf((3-5x^2-9x^3-6x^4+3x^5)/(1-3x-x^2-2x^3+13x^4+7x^5-3x^6))` -/
def P18394692427622179726.Spec : Prop :=
  ∀ n, P18394692427622179726.a n = A217995 (n + 1)

theorem P18394692427622179726.correct : P18394692427622179726.Spec := by
  intro n
  simp only [A217995, Nat.add_sub_cancel]

end A217995

/-! ## A217995.P10416337728846776518

`A217999(∑[n]+1)`
-/

namespace A217995.P10416337728846776518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217995.P10416337728846776518

namespace A217995

/-- `A217999(∑[n]+1)` -/
def P10416337728846776518.Spec : Prop :=
  ∀ n, P10416337728846776518.a n = A217995 (n + 1)

end A217995

/-! ## A217995.P1457064584172726927

`or(1, A217999(A000124(n)))`
-/

namespace A217995.P1457064584172726927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217999 (A000124 n).toNat)

end

end A217995.P1457064584172726927

namespace A217995

/-- `or(1, A217999(A000124(n)))` -/
def P1457064584172726927.Spec : Prop :=
  ∀ n, P1457064584172726927.a n = A217995 (n + 1)

end A217995

/-! ## A217995.P795272428617628506

`record[A010054(n)*A217999(n+1)]`
-/

namespace A217995.P795272428617628506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A217999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217995.P795272428617628506

namespace A217995

/-- `record[A010054(n)*A217999(n+1)]` -/
def P795272428617628506.Spec : Prop :=
  ∀ n, P795272428617628506.a n = A217995 (n + 1)

end A217995

/-! ## A217995.P14954103916985654809

`record[A103451(n)*A217999(n+1)]`
-/

namespace A217995.P14954103916985654809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A217999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217995.P14954103916985654809

namespace A217995

/-- `record[A103451(n)*A217999(n+1)]` -/
def P14954103916985654809.Spec : Prop :=
  ∀ n, P14954103916985654809.a n = A217995 (n + 1)

end A217995

/-!
# A217996: Number of nX3 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nX3 array.

The programs for A217996, there is no canonical definition to state claims against.
-/

/-! ## A217996.P10971011791852711712

`A217999(∑[n+2]+4)`
-/

namespace A217996.P10971011791852711712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217999 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217996.P10971011791852711712

/-! ## A217996.P14740692506046486007

`or(1, A217999(A167614(n+1)))`
-/

namespace A217996.P14740692506046486007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217999 (A167614 (n + 1)).toNat)

end

end A217996.P14740692506046486007

/-! ## A217996.P9917818751723382420

`record[A167374(n)*A217999(n+4)]`
-/

namespace A217996.P9917818751723382420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A217999 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217996.P9917818751723382420

/-! ## A217996.P3456429166285625523

`A326630(n)+A217999(A167614(n+1))`
-/

namespace A217996.P3456429166285625523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326630 n + A217999 (A167614 (n + 1)).toNat

end

end A217996.P3456429166285625523

/-!
# A217997: Number of nX4 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nX4 array.

The programs for A217997, there is no canonical definition to state claims against.
-/

/-! ## A217997.P17706703538328073788

`A217999(A141214(n)+7)`
-/

namespace A217997.P17706703538328073788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217999 (A141214 n + 7).toNat

end

end A217997.P17706703538328073788

/-! ## A217997.P1229445227002982337

`A217999(A052905(n)+9)`
-/

namespace A217997.P1229445227002982337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217999 (A052905 n + 9).toNat

end

end A217997.P1229445227002982337

/-! ## A217997.P17144160901582692939

`A217999(A055999(n)+10)`
-/

namespace A217997.P17144160901582692939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217999 (A055999 n + 10).toNat

end

end A217997.P17144160901582692939

/-!
# A217998: Number of nX5 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nX5 array.

The programs for A217998, there is no canonical definition to state claims against.
-/

/-! ## A217998.P8541224185410637985

`A217999(Δ[A264443(n)])`
-/

namespace A217998.P8541224185410637985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217999 (f1 (n + 1) - f1 n).toNat

end

end A217998.P8541224185410637985

/-!
# A217999: T(n,k)=Number of nXk arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nXk array.

The programs for A217999, there is no canonical definition to state claims against.
-/

/-! ## A217999.P5746339648575949585

`A296518(A223576(n+1))+1`
-/

namespace A217999.P5746339648575949585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296518 (A223576 (n + 1)).toNat + 1

end

end A217999.P5746339648575949585

/-! ## A217999.P15152707988204511738

`A223576(n+1)-A292251(A149594(n))`
-/

namespace A217999.P15152707988204511738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (n + 1) - A292251 (A149594 n).toNat

end

end A217999.P15152707988204511738

/-! ## A217999.P2136452049100069245

`A228977(n+1)-A292251(A149594(n))`
-/

namespace A217999.P2136452049100069245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (n + 1) - A292251 (A149594 n).toNat

end

end A217999.P2136452049100069245

/-! ## A217999.P4795436746283413616

`A223576(n+1)-A319935(A300003(2*n))`
-/

namespace A217999.P4795436746283413616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223576 (n + 1) - A319935 (A300003 (2 * n)).toNat

end

end A217999.P4795436746283413616

/-! ## A217999.P11873001897818154157

`A228977(n+1)-A319935(A300003(2*n))`
-/

namespace A217999.P11873001897818154157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (n + 1) - A319935 (A300003 (2 * n)).toNat

end

end A217999.P11873001897818154157

