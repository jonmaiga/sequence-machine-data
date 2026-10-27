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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A052500: A052484 / 9.

The programs for A052500, there is no canonical definition to state claims against.
-/

/-! ## A052500.P13057164699688736397

`A052484(n)/9`
-/

namespace A052500.P13057164699688736397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052484 n : ℚ) / 9

end

end A052500.P13057164699688736397

/-! ## A052500.P14154577430093576781

`A106610(A052484(n))`
-/

namespace A052500.P14154577430093576781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A052484 n).toNat

end

end A052500.P14154577430093576781

/-! ## A052500.P5083865844744088093

`A106619(2*A052484(n))`
-/

namespace A052500.P5083865844744088093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (2 * A052484 n).toNat

end

end A052500.P5083865844744088093

/-!
# A052501: Number of permutations sigma such that sigma^5=Id; degree-n permutations of order dividing 5.

The programs for A052501, the canonical program `A052501.P8235743457399303753` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052501 has offset 0).

The definition of A052501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052501.P8235743457399303753

`A059593(n)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052501

/-- `A059593(n)+1` -/
def P8235743457399303753.Spec : Prop :=
  ∀ n, P8235743457399303753.a n = A052501 n

theorem P8235743457399303753.correct : P8235743457399303753.Spec := by
  intro n
  simp only [A052501]

end A052501

/-! ## A052501.P15354824072745385731

`a(n-1)+a(n-5)*(n-1)!/(n-5)!` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A052501.P15354824072745385731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 5) * (Nat.factorial ((n : ℤ) - 1).toNat : ℚ) / (Nat.factorial ((n : ℤ) - 5).toNat : ℚ)

end

end A052501.P15354824072745385731

namespace A052501

/-- `a(n-1)+a(n-5)*(n-1)!/(n-5)!` -/
def P15354824072745385731.Spec : Prop :=
  ∀ n, P15354824072745385731.a n = (A052501 n : ℚ)

end A052501

/-! ## A052501.P2478131530570637374

`or(A057427(Δ[n²]), A059593(n))`
-/

namespace A052501.P2478131530570637374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A059593 n)

end

end A052501.P2478131530570637374

namespace A052501

/-- `or(A057427(Δ[n²]), A059593(n))` -/
def P2478131530570637374.Spec : Prop :=
  ∀ n, P2478131530570637374.a n = A052501 n

end A052501

/-! ## A052501.P15452244751170782064

`1-(A000035(2*n)-A059593(n))`
-/

namespace A052501.P15452244751170782064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A059593 n)

end

end A052501.P15452244751170782064

namespace A052501

/-- `1-(A000035(2*n)-A059593(n))` -/
def P15452244751170782064.Spec : Prop :=
  ∀ n, P15452244751170782064.a n = A052501 n

end A052501

/-! ## A052501.P14820678921004820156

`or(-A008683(A020483(n)), A059593(n))`
-/

namespace A052501.P14820678921004820156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A008683 (A020483 n).toNat) (A059593 n)

end

end A052501.P14820678921004820156

namespace A052501

/-- `or(-A008683(A020483(n)), A059593(n))` -/
def P14820678921004820156.Spec : Prop :=
  ∀ n, P14820678921004820156.a n = A052501 n

end A052501

/-! ## A052501.P16719231122486251893

`A008307(A167499(n+2))`
-/

namespace A052501.P16719231122486251893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 2)).toNat

end

end A052501.P16719231122486251893

namespace A052501

/-- `A008307(A167499(n+2))` -/
def P16719231122486251893.Spec : Prop :=
  ∀ n, P16719231122486251893.a n = A052501 n

end A052501

/-! ## A052501.P11236170280923160745

`A008307(A052905(n)+10)`
-/

namespace A052501.P11236170280923160745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A052905 n + 10).toNat

end

end A052501.P11236170280923160745

namespace A052501

/-- `A008307(A052905(n)+10)` -/
def P11236170280923160745.Spec : Prop :=
  ∀ n, P11236170280923160745.a n = A052501 n

end A052501

/-! ## A052501.P14577329220443719170

`A008307(Δ[A005286(n)]+6)`
-/

namespace A052501.P14577329220443719170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (f1 (n + 1) - f1 n + 6).toNat

end

end A052501.P14577329220443719170

namespace A052501

/-- `A008307(Δ[A005286(n)]+6)` -/
def P14577329220443719170.Spec : Prop :=
  ∀ n, P14577329220443719170.a n = A052501 n

end A052501

/-!
# A052502: Number of permutations sigma of [3n] without fixed points such that sigma^3 = Id.

The programs for A052502, the canonical program `A052502.P8797832424225588598` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052502 has offset 0).

The definition of A052502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052502.P8797832424225588598

`(3*n-1)*(3*n-2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052502

/-- `(3*n-1)*(3*n-2)*a(n-1)` -/
def P8797832424225588598.Spec : Prop :=
  ∀ n, P8797832424225588598.a n = A052502 n

theorem P8797832424225588598.correct : P8797832424225588598.Spec := by
  intro n
  simp only [A052502]

end A052502

/-! ## A052502.P13050916088791049967

`(3*n)!/(3^n*n!)`
-/

namespace A052502.P13050916088791049967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / (3 ^ n * Nat.factorial n : ℚ)

end

end A052502.P13050916088791049967

namespace A052502

/-- `(3*n)!/(3^n*n!)` -/
def P13050916088791049967.Spec : Prop :=
  ∀ n, P13050916088791049967.a n = (A052502 n : ℚ)

end A052502

/-! ## A052502.P16289398697603210796

`A091752(n²+1)`
-/

namespace A052502.P16289398697603210796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091752 (n ^ 2 + 1)

end

end A052502.P16289398697603210796

namespace A052502

/-- `A091752(n²+1)` -/
def P16289398697603210796.Spec : Prop :=
  ∀ n, P16289398697603210796.a n = A052502 n

end A052502

/-! ## A052502.P13148644801222066780

`A395146(∑[n+3])`
-/

namespace A052502.P13148644801222066780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052502.P13148644801222066780

namespace A052502

/-- `A395146(∑[n+3])` -/
def P13148644801222066780.Spec : Prop :=
  ∀ n, P13148644801222066780.a n = A052502 n

end A052502

/-! ## A052502.P10374976603825827085

`record[A091752(n+1)]`
-/

namespace A052502.P10374976603825827085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052502.P10374976603825827085

namespace A052502

/-- `record[A091752(n+1)]` -/
def P10374976603825827085.Spec : Prop :=
  ∀ n, P10374976603825827085.a n = A052502 n

end A052502

/-!
# A052503: Number of permutations sigma of [2n] without fixed points such that sigma^4 = Id.

The programs for A052503, there is no canonical definition to state claims against.
-/

/-! ## A052503.P6187792271657367132

`∏[abs(1-2*n)]*A047974(n)`
-/

namespace A052503.P6187792271657367132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A047974 n

end

end A052503.P6187792271657367132

/-! ## A052503.P17701784484751803437

`A291632(n+1)/(n+1)*∏[abs(1-2*n)]`
-/

namespace A052503.P17701784484751803437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291632 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052503.P17701784484751803437

/-! ## A052503.P2273512927268982857

`sqrt(A115326(n))*A001147(n)`
-/

namespace A052503.P2273512927268982857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115326 n : ℝ) * (A001147 n : ℝ)

end

end A052503.P2273512927268982857

/-! ## A052503.P1718547302243858369

`A047974(n)*A053979(∑[n])`
-/

namespace A052503.P1718547302243858369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047974 n * A053979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052503.P1718547302243858369

/-! ## A052503.P8785503298985068808

`A001147(n)*A122832(∑[n])`
-/

namespace A052503.P8785503298985068808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A122832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052503.P8785503298985068808

/-!
# A052504: Number of permutations sigma of [5n] without fixed points such that sigma^5 = Id.

The programs for A052504, the canonical program `A052504.P3891052893194974622` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052504 has offset 0).

The definition of A052504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052504.P3891052893194974622

`a(n-1)*C(5*n-1, 4)*24` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052504

/-- `a(n-1)*C(5*n-1, 4)*24` -/
def P3891052893194974622.Spec : Prop :=
  ∀ n, (P3891052893194974622.a n : ℤ) = A052504 n

theorem P3891052893194974622.correct : P3891052893194974622.Spec := by
  intro n
  simp only [A052504]

end A052504

/-! ## A052504.P3683023772180868071

`(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)*a(n-1)` with `a(0)=1, a(1)=24`
-/

namespace A052504.P3683023772180868071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  ((5 * n : ℤ) - 1) * (((5 * n : ℤ) - 2) * (((5 * n : ℤ) - 3) * (((5 * n : ℤ) - 4) * a (n - 1))))

end

end A052504.P3683023772180868071

namespace A052504

/-- `(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)*a(n-1)` -/
def P3683023772180868071.Spec : Prop :=
  ∀ n, P3683023772180868071.a n = A052504 n

end A052504

/-! ## A052504.P10458607067618531320

`A356858(4*n)`
-/

namespace A052504.P10458607067618531320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 (4 * n)

end

end A052504.P10458607067618531320

namespace A052504

/-- `A356858(4*n)` -/
def P10458607067618531320.Spec : Prop :=
  ∀ n, P10458607067618531320.a n = A052504 n

end A052504

/-! ## A052504.P12331781856665687332

`A232981(5*n)`
-/

namespace A052504.P12331781856665687332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232981 (5 * n)

end

end A052504.P12331781856665687332

namespace A052504

/-- `A232981(5*n)` -/
def P12331781856665687332.Spec : Prop :=
  ∀ n, P12331781856665687332.a n = A052504 n

end A052504

/-! ## A052504.P13746906134940948543

`a(n-1)*A001512(n-1)` with `a(0)=1`
-/

namespace A052504.P13746906134940948543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001512 (n - 1)

end

end A052504.P13746906134940948543

namespace A052504

/-- `a(n-1)*A001512(n-1)` -/
def P13746906134940948543.Spec : Prop :=
  ∀ n, P13746906134940948543.a n = A052504 n

end A052504

/-!
# A052505: Number of labeled 3-constrained functional graphs.

The programs for A052505, there is no canonical definition to state claims against.
-/

/-! ## A052505.P5589157392497379123

`A005809(n)*A014606(n)`
-/

namespace A052505.P5589157392497379123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A014606 n

end

end A052505.P5589157392497379123

/-! ## A052505.P11963723994063173694

`record[A264772(n)]*A014606(n)`
-/

namespace A052505.P11963723994063173694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A014606 n

end

end A052505.P11963723994063173694

/-! ## A052505.P13954991737587218097

`A014606(n)*A065942(2*n)`
-/

namespace A052505.P13954991737587218097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n * A065942 (2 * n)

end

end A052505.P13954991737587218097

/-! ## A052505.P11231380702071701078

`∏[A205545(∑[n+2])]*A005809(n)`
-/

namespace A052505.P11231380702071701078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205545 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005809 n

end

end A052505.P11231380702071701078

/-! ## A052505.P8760044449933208240

`A007318(A062728(n))*A014606(n)`
-/

namespace A052505.P8760044449933208240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A062728 n).toNat * A014606 n

end

end A052505.P8760044449933208240

/-!
# A052506: Expansion of e.g.f. exp(x*exp(x)-x).

The programs for A052506, there is no canonical definition to state claims against.
-/

/-! ## A052506.P15324874276415218202

`A355650(∑[n+1]+n)`
-/

namespace A052506.P15324874276415218202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355650 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A052506.P15324874276415218202

/-! ## A052506.P8673964819680345763

`A292892(∑[n+2]-1)`
-/

namespace A052506.P8673964819680345763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A052506.P8673964819680345763

/-! ## A052506.P4131393670601137250

`A292892(A034856(n+1))^A178334(n)`
-/

namespace A052506.P4131393670601137250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292892 (A034856 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A052506.P4131393670601137250

/-! ## A052506.P4873805425638242001

`gcd(A000038(n), A292892(A034856(n+1)))`
-/

namespace A052506.P4873805425638242001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292892 (A034856 (n + 1)).toNat)

end

end A052506.P4873805425638242001

/-! ## A052506.P11525087584360400735

`lcm(A033999(n), A292892(A034856(n+1)))`
-/

namespace A052506.P11525087584360400735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292892 (A034856 (n + 1)).toNat)

end

end A052506.P11525087584360400735

/-! ## A052506.P7733594864818781858

`or(A000007(n), A292892(A034856(n+1)))`
-/

namespace A052506.P7733594864818781858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292892 (A034856 (n + 1)).toNat)

end

end A052506.P7733594864818781858

/-! ## A052506.P4907972556315896587

`A292892(A034856(n+1))+A008423(p?[4*n+1])`
-/

namespace A052506.P4907972556315896587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 (A034856 (n + 1)).toNat + A008423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A052506.P4907972556315896587

/-! ## A052506.P16453348253106068060

`A227984(A046092(n))*A292892(A034856(n+1))`
-/

namespace A052506.P16453348253106068060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227984 (A046092 n).toNat * A292892 (A034856 (n + 1)).toNat

end

end A052506.P16453348253106068060

/-!
# A052507: Take n-th palindromic prime p, let P = all primes having same digits; a(n) = q-p where q is smallest prime in P >p if q exists; otherwise a(n) = p-r where r is largest prime in P <p if r exists; otherwise a(n) = 0.

The programs for A052507, there is no canonical definition to state claims against.
-/

/-! ## A052507.P2709912039994370946

`6*A128112(A160589(n))`
-/

namespace A052507.P2709912039994370946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A128112 (A160589 n).toNat

end

end A052507.P2709912039994370946

/-! ## A052507.P10200968098653451426

`18*A025442(A080143(n))`
-/

namespace A052507.P10200968098653451426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A025442 (A080143 n).toNat

end

end A052507.P10200968098653451426

/-! ## A052507.P11404473639290617127

`18*A285995(A320784(n))`
-/

namespace A052507.P11404473639290617127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A285995 (A320784 n).toNat

end

end A052507.P11404473639290617127

/-! ## A052507.P11628822946554776729

`lcm(A071520(n+4), A220478(C(n, 6)))`
-/

namespace A052507.P11628822946554776729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071520 (n + 4)) (A220478 (Nat.choose n 6))

end

end A052507.P11628822946554776729

/-! ## A052507.P341315172379751443

`A326545(A327475(n))%A094694(n+2)`
-/

namespace A052507.P341315172379751443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326545 (A327475 n).toNat) (A094694 (n + 2))

end

end A052507.P341315172379751443

/-!
# A052508: Smallest number such that the largest set of positive real numbers whose sum and product equals the number falls short by n.

The programs for A052508, there is no canonical definition to state claims against.
-/

/-! ## A052508.P8926317326750063271

`∏{p}[n+1, #]+A290653(n)+1`
-/

namespace A052508.P8926317326750063271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (A290653 (n + 15) + 1)

end

end A052508.P8926317326750063271

/-! ## A052508.P17140763906559284635

`A000267(A278416(n)+3)`
-/

namespace A052508.P17140763906559284635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A278416 n + 3).toNat

end

end A052508.P17140763906559284635

/-!
# A052509: Knights-move Pascal triangle: T(n,k), n >= 0, 0 <= k <= n; T(n,0) = T(n,n) = 1, T(n,k) = T(n-1,k) + T(n-2,k-1) for k = 1,2,...,n-1, n >= 2.

The programs for A052509, there is no canonical definition to state claims against.
-/

/-! ## A052509.P12692531519030173697

`(A131247(n)+1)/2`
-/

namespace A052509.P12692531519030173697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131247 n + 1 : ℚ) / 2

end

end A052509.P12692531519030173697

/-! ## A052509.P4587601295880706048

`A216274(A056943(n))`
-/

namespace A052509.P4587601295880706048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 (A056943 n).toNat

end

end A052509.P4587601295880706048

/-! ## A052509.P7984992351313848365

`A004070(A061579(n)-A144217(n+1))`
-/

namespace A052509.P7984992351313848365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A061579 n - A144217 (n + 1)).toNat

end

end A052509.P7984992351313848365

/-! ## A052509.P16242870983404758203

`A004070(A061579(n))`
-/

namespace A052509.P16242870983404758203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A061579 n).toNat

end

end A052509.P16242870983404758203

/-! ## A052509.P2800970646476285995

`A004070(A038722(n+1)-1)`
-/

namespace A052509.P2800970646476285995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A038722 (n + 1) - 1).toNat

end

end A052509.P2800970646476285995

/-! ## A052509.P4385111087096427631

`A004070(A038722(n+2))`
-/

namespace A052509.P4385111087096427631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A038722 (n + 2)).toNat

end

end A052509.P4385111087096427631

/-! ## A052509.P1330635484488595192

`A054123(comp[∑[n+1]])`
-/

namespace A052509.P1330635484488595192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A052509.P1330635484488595192

/-! ## A052509.P5150100818529160251

`2*A210489(n)-A210489(A007401(n+1))`
-/

namespace A052509.P5150100818529160251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210489 n - A210489 (A007401 (n + 1)).toNat

end

end A052509.P5150100818529160251

/-! ## A052509.P274716802714928797

`A054124(A099375(n)+1+n)`
-/

namespace A052509.P274716802714928797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A099375 n + 1 + (n : ℤ)).toNat

end

end A052509.P274716802714928797

/-! ## A052509.P4014505769125796409

`A054124(2*A004736(n+1)+n)`
-/

namespace A052509.P4014505769125796409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A052509.P4014505769125796409

/-! ## A052509.P12013428129819483781

`A054124(A114327(n)+A014132(n+1))`
-/

namespace A052509.P12013428129819483781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A114327 n + A014132 (n + 1)).toNat

end

end A052509.P12013428129819483781

/-! ## A052509.P5885945936256794661

`A054124(A061579(n)+A003057(n+2))`
-/

namespace A052509.P5885945936256794661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A061579 n + A003057 (n + 2)).toNat

end

end A052509.P5885945936256794661

/-! ## A052509.P11137902978270242554

`A054124(A003057(n+2)²-A080036(n))`
-/

namespace A052509.P11137902978270242554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A003057 (n + 2) ^ 2 - A080036 n).toNat

end

end A052509.P11137902978270242554

/-! ## A052509.P14244611748613637259

`A054124(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A052509.P14244611748613637259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A052509.P14244611748613637259

/-! ## A052509.P9054587664308698061

`A141905(n)/A007318(n)`
-/

namespace A052509.P9054587664308698061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141905 n : ℚ) / (A007318 n : ℚ)

end

end A052509.P9054587664308698061

/-! ## A052509.P9203200971424325908

`ceil(A141905(n)/A132749(n))`
-/

namespace A052509.P9203200971424325908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141905 n : ℚ) / (A132749 n : ℚ)⌉

end

end A052509.P9203200971424325908

/-! ## A052509.P11167215743009047584

`A000463(A131247(n))`
-/

namespace A052509.P11167215743009047584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131247 n).toNat

end

end A052509.P11167215743009047584

/-!
# A052510: Number of labeled planar binary trees with 2n-1 elements (external nodes or internal nodes).

The programs for A052510, the canonical program `A052510.P15062617454397280600` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052510 has offset 1).

The definition of A052510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052510.P195708085436306665

`(2*(n+1)-1)/(n+1)*((2*n)!/n!)²`
-/

namespace A052510.P195708085436306665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ) * ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)) ^ 2

end

end A052510.P195708085436306665

namespace A052510

/-- `(2*(n+1)-1)/(n+1)*((2*n)!/n!)²` -/
def P195708085436306665.Spec : Prop :=
  ∀ n, P195708085436306665.a n = (A052510 (n + 1) : ℚ)

end A052510

/-! ## A052510.P15062617454397280600

`(2*(n+1)-1)!*A000108(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052510

/-- `(2*(n+1)-1)!*A000108(n)` -/
def P15062617454397280600.Spec : Prop :=
  ∀ n, P15062617454397280600.a n = A052510 (n + 1)

theorem P15062617454397280600.correct : P15062617454397280600.Spec := by
  intro n
  simp only [A052510, Nat.add_sub_cancel]

end A052510

/-! ## A052510.P13175368843740833229

`4*n*(2*(n+1)-3)*(2*(n+1)-1)*a(n-1)/(n+1)` with `a(0)=1`
-/

namespace A052510.P13175368843740833229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) * ((2 * (n + 1) : ℤ) - 3) * ((2 * (n + 1) : ℤ) - 1) : ℚ) * a (n - 1) / (n + 1 : ℚ)

end

end A052510.P13175368843740833229

namespace A052510

/-- `4*n*(2*(n+1)-3)*(2*(n+1)-1)*a(n-1)/(n+1)` -/
def P13175368843740833229.Spec : Prop :=
  ∀ n, P13175368843740833229.a n = (A052510 (n + 1) : ℚ)

end A052510

/-! ## A052510.P5082592235492323224

`(2*n)!*C(Δ[n²], n)`
-/

namespace A052510.P5082592235492323224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A052510.P5082592235492323224

namespace A052510

/-- `(2*n)!*C(Δ[n²], n)` -/
def P5082592235492323224.Spec : Prop :=
  ∀ n, (P5082592235492323224.a n : ℤ) = A052510 (n + 1)

end A052510

/-! ## A052510.P18354882949957866555

`C(2*n+1, n)*(2*n)!`
-/

namespace A052510.P18354882949957866555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * Nat.factorial (2 * n)

end

end A052510.P18354882949957866555

namespace A052510

/-- `C(2*n+1, n)*(2*n)!` -/
def P18354882949957866555.Spec : Prop :=
  ∀ n, (P18354882949957866555.a n : ℤ) = A052510 (n + 1)

end A052510

/-!
# A052511: a(n) = prime(n) - 1 - A006218(n).

The programs for A052511, the canonical program `A052511.P3876828905905718149` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052511 has offset 1).

The definition of A052511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1-A006218(n+1)` (program `A052511.P3876828905905718149`, by `A052511.P3876828905905718149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052511.P3876828905905718149

`A000040(n+1)-1-A006218(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052511

/-- `A000040(n+1)-1-A006218(n+1)` -/
def P3876828905905718149.Spec : Prop :=
  ∀ n, P3876828905905718149.a n = A052511 (n + 1)

theorem P3876828905905718149.correct : P3876828905905718149.Spec := by
  intro n
  simp only [A052511, Nat.add_sub_cancel]

end A052511

/-! ## A052511.P13128566240351970714

`A040976(n+1)-A077597(n)`
-/

namespace A052511.P13128566240351970714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A077597 n

end

end A052511.P13128566240351970714

namespace A052511

/-- `A040976(n+1)-A077597(n)` -/
def P13128566240351970714.Spec : Prop :=
  ∀ n, P13128566240351970714.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P9350248755465410940

`∑[A075526(n)-A000005(n+1)]`
-/

namespace A052511.P9350248755465410940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052511.P9350248755465410940

namespace A052511

/-- `∑[A075526(n)-A000005(n+1)]` -/
def P9350248755465410940.Spec : Prop :=
  ∀ n, P9350248755465410940.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P8795403900646425967

`Δ[A007504(n)]-A054519(n+1)`
-/

namespace A052511.P8795403900646425967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054519 (n + 1)

end

end A052511.P8795403900646425967

namespace A052511

/-- `Δ[A007504(n)]-A054519(n+1)` -/
def P8795403900646425967.Spec : Prop :=
  ∀ n, P8795403900646425967.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P17629109024818792270

`A161912(n)+1-Δ[A006218(n)]`
-/

namespace A052511.P17629109024818792270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n + 1 - (f1 (n + 1) - f1 n)

end

end A052511.P17629109024818792270

namespace A052511

/-- `A161912(n)+1-Δ[A006218(n)]` -/
def P17629109024818792270.Spec : Prop :=
  ∀ n, P17629109024818792270.a n = A052511 (n + 1)

theorem P17629109024818792270.correct : P17629109024818792270.Spec := by
  intro n
  simp only [A052511, Nat.add_sub_cancel, A052511.P17629109024818792270.f1, A052511.P17629109024818792270.a, A052511.P3876828905905718149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006218, A006218.P9218434490128439557.a, A161912, A161912.P2457371058280528067.a, A000005, A000005.P16091521709108585461.a, A040976, A040976.P11599754272797435513.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052511

/-! ## A052511.P8802318466814350387

`A006093(n+1)-A006218(n+1)`
-/

namespace A052511.P8802318466814350387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A006218 (n + 1)

end

end A052511.P8802318466814350387

namespace A052511

/-- `A006093(n+1)-A006218(n+1)` -/
def P8802318466814350387.Spec : Prop :=
  ∀ n, P8802318466814350387.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P12333925930522422516

`A000040(n+1)-A054519(n+1)`
-/

namespace A052511.P12333925930522422516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A054519 (n + 1)

end

end A052511.P12333925930522422516

namespace A052511

/-- `A000040(n+1)-A054519(n+1)` -/
def P12333925930522422516.Spec : Prop :=
  ∀ n, P12333925930522422516.a n = A052511 (n + 1)

theorem P12333925930522422516.correct : P12333925930522422516.Spec := by
  intro n
  simp only [A052511, Nat.add_sub_cancel, A052511.P12333925930522422516.a, A052511.P3876828905905718149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052511

/-! ## A052511.P8202161260311073941

`A065890(n+1)-A002541(n+1)`
-/

namespace A052511.P8202161260311073941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) - A002541 (n + 1)

end

end A052511.P8202161260311073941

namespace A052511

/-- `A065890(n+1)-A002541(n+1)` -/
def P8202161260311073941.Spec : Prop :=
  ∀ n, P8202161260311073941.a n = A052511 (n + 1)

theorem P8202161260311073941.correct : P8202161260311073941.Spec := by
  intro n
  simp only [A052511, Nat.add_sub_cancel, A052511.P8202161260311073941.a, A052511.P3876828905905718149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002541, A002541.P10664040244727747136.a, A006218, A006218.P9218434490128439557.a, A065890, A065890.P15936493256530540462.a, A000005, A000005.P16091521709108585461.a, A014689, A014689.P6286543075765329050.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052511

/-! ## A052511.P8936878686117103051

`A095116(n+1)-A156745(n+1)`
-/

namespace A052511.P8936878686117103051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A156745 (n + 1)

end

end A052511.P8936878686117103051

namespace A052511

/-- `A095116(n+1)-A156745(n+1)` -/
def P8936878686117103051.Spec : Prop :=
  ∀ n, P8936878686117103051.a n = A052511 (n + 1)

theorem P8936878686117103051.correct : P8936878686117103051.Spec := by
  intro n
  simp only [A052511, Nat.add_sub_cancel, A052511.P8936878686117103051.a, A052511.P3876828905905718149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006218, A006218.P9218434490128439557.a, A095116, A095116.P2789422422958858773.a, A156745, A156745.P4004578976620637230.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052511

/-! ## A052511.P16859971188613963202

`A006093(n+1)-∑[A000005(n+1)]`
-/

namespace A052511.P16859971188613963202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052511.P16859971188613963202

namespace A052511

/-- `A006093(n+1)-∑[A000005(n+1)]` -/
def P16859971188613963202.Spec : Prop :=
  ∀ n, P16859971188613963202.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P5683569001491679312

`A000040(n+1)-(∑[A000005(n+1)]+1)`
-/

namespace A052511.P5683569001491679312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052511.P5683569001491679312

namespace A052511

/-- `A000040(n+1)-(∑[A000005(n+1)]+1)` -/
def P5683569001491679312.Spec : Prop :=
  ∀ n, P5683569001491679312.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P178243104793974643

`A040976(n+1)+1-∑[A000005(n+1)]`
-/

namespace A052511.P178243104793974643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052511.P178243104793974643

namespace A052511

/-- `A040976(n+1)+1-∑[A000005(n+1)]` -/
def P178243104793974643.Spec : Prop :=
  ∀ n, P178243104793974643.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P16997248792554239177

`A008864(n+1)-(∑[A000005(n+1)]+2)`
-/

namespace A052511.P16997248792554239177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A052511.P16997248792554239177

namespace A052511

/-- `A008864(n+1)-(∑[A000005(n+1)]+2)` -/
def P16997248792554239177.Spec : Prop :=
  ∀ n, P16997248792554239177.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P14415528865953530171

`∑[A054541(n+1)-A000005(n+1)]-1`
-/

namespace A052511.P14415528865953530171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052511.P14415528865953530171

namespace A052511

/-- `∑[A054541(n+1)-A000005(n+1)]-1` -/
def P14415528865953530171.Spec : Prop :=
  ∀ n, P14415528865953530171.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P10899162376569501426

`∑[A125266(n+1)-A000005(n+1)]-2`
-/

namespace A052511.P10899162376569501426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A052511.P10899162376569501426

namespace A052511

/-- `∑[A125266(n+1)-A000005(n+1)]-2` -/
def P10899162376569501426.Spec : Prop :=
  ∀ n, P10899162376569501426.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P17768658481148927033

`Δ[A007504(n)-A054519(n)]-A054519(n)`
-/

namespace A052511.P17768658481148927033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054519 n

end

end A052511.P17768658481148927033

namespace A052511

/-- `Δ[A007504(n)-A054519(n)]-A054519(n)` -/
def P17768658481148927033.Spec : Prop :=
  ∀ n, P17768658481148927033.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P9589787682390171511

`A008578(n+2)-A054519(n+1)`
-/

namespace A052511.P9589787682390171511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A054519 (n + 1)

end

end A052511.P9589787682390171511

namespace A052511

/-- `A008578(n+2)-A054519(n+1)` -/
def P9589787682390171511.Spec : Prop :=
  ∀ n, P9589787682390171511.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P9304442804982266623

`A008578(n+2)-(A006218(n+1)+1)`
-/

namespace A052511.P9304442804982266623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (A006218 (n + 1) + 1)

end

end A052511.P9304442804982266623

namespace A052511

/-- `A008578(n+2)-(A006218(n+1)+1)` -/
def P9304442804982266623.Spec : Prop :=
  ∀ n, P9304442804982266623.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P17313402885640277221

`A182986(n+2)-(A006218(n+1)+1)`
-/

namespace A052511.P17313402885640277221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - (A006218 (n + 1) + 1)

end

end A052511.P17313402885640277221

namespace A052511

/-- `A182986(n+2)-(A006218(n+1)+1)` -/
def P17313402885640277221.Spec : Prop :=
  ∀ n, P17313402885640277221.a n = A052511 (n + 1)

end A052511

/-! ## A052511.P15198913119677680948

`A244578(n+1)-(A244576(n+1)+A006218(n+1))`
-/

namespace A052511.P15198913119677680948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244578 (n + 1) - (A244576 (n + 1) + A006218 (n + 1))

end

end A052511.P15198913119677680948

namespace A052511

/-- `A244578(n+1)-(A244576(n+1)+A006218(n+1))` -/
def P15198913119677680948.Spec : Prop :=
  ∀ n, P15198913119677680948.a n = A052511 (n + 1)

end A052511

/-!
# A052512: Number of rooted labeled trees of height at most 2.

The programs for A052512, there is no canonical definition to state claims against.
-/

/-! ## A052512.P8174266896329439677

`n*A143398(A238531(n)-1)`
-/

namespace A052512.P8174266896329439677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143398 (A238531 n - 1).toNat

end

end A052512.P8174266896329439677

/-! ## A052512.P17145493850106762990

`n*A000248(A057428(n)+n)`
-/

namespace A052512.P17145493850106762990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000248 (A057428 n + (n : ℤ)).toNat

end

end A052512.P17145493850106762990

/-! ## A052512.P10114061321823248244

`A052506(n+1)+A052506(n)-A000248(n)`
-/

namespace A052512.P10114061321823248244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052506 (n + 1) + (A052506 n - A000248 n)

end

end A052512.P10114061321823248244

/-! ## A052512.P17149351113802655590

`n*A210725(A022856(n+2))`
-/

namespace A052512.P17149351113802655590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210725 (A022856 (n + 2)).toNat

end

end A052512.P17149351113802655590

/-! ## A052512.P2123966116468960145

`n*A245501(A027379(n))`
-/

namespace A052512.P2123966116468960145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A245501 (A027379 n).toNat

end

end A052512.P2123966116468960145

/-! ## A052512.P12910831672092873126

`n*A245501(A055998(n))`
-/

namespace A052512.P12910831672092873126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A245501 (A055998 n).toNat

end

end A052512.P12910831672092873126

/-! ## A052512.P8117016716874844110

`n*A245501(A055999(n)-n)`
-/

namespace A052512.P8117016716874844110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A245501 (A055999 n - (n : ℤ)).toNat

end

end A052512.P8117016716874844110

/-!
# A052513: Number of labeled trees of height at most 3.

The programs for A052513, there is no canonical definition to state claims against.
-/

/-! ## A052513.P3560078570320434831

`n*A000949(abs(1-n))`
-/

namespace A052513.P3560078570320434831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000949 |1 - (n : ℤ)|.toNat

end

end A052513.P3560078570320434831

/-!
# A052514: Number of labeled trees of height at most 4.

The programs for A052514, there is no canonical definition to state claims against.
-/

/-! ## A052514.P1867356703584035263

`A325205(n)-A325201(A325136(n))`
-/

namespace A052514.P1867356703584035263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325205 n - A325201 (A325136 n).toNat

end

end A052514.P1867356703584035263

/-! ## A052514.P11100189012523207429

`A325206(n)-A325201(A325136(n))`
-/

namespace A052514.P11100189012523207429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325206 n - A325201 (A325136 n).toNat

end

end A052514.P11100189012523207429

/-! ## A052514.P15976754916709604785

`A325207(n)-A325201(A325136(n))`
-/

namespace A052514.P15976754916709604785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325207 n - A325201 (A325136 n).toNat

end

end A052514.P15976754916709604785

/-!
# A052515: Number of ordered pairs of complementary subsets of an n-set with both subsets of cardinality at least 2.

The programs for A052515, the canonical program `A052515.P18224629826647100136` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052515 has offset 0).

The definition of A052515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052515.P18224629826647100136

`2*(a(n-1)-1+n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052515

/-- `2*(a(n-1)-1+n)` -/
def P18224629826647100136.Spec : Prop :=
  ∀ n, P18224629826647100136.a n = A052515 n

theorem P18224629826647100136.correct : P18224629826647100136.Spec := by
  intro n
  simp only [A052515]

end A052515

/-! ## A052515.P6011789484277723516

`2*(n-(1-a(n-1)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A052515.P6011789484277723516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  2 * ((n : ℤ) - (1 - a (n - 1)))

end

end A052515.P6011789484277723516

namespace A052515

/-- `2*(n-(1-a(n-1)))` -/
def P6011789484277723516.Spec : Prop :=
  ∀ n, P6011789484277723516.a n = A052515 n

end A052515

/-! ## A052515.P8143543172487754750

`∑[A078485(n)]-n`
-/

namespace A052515.P8143543172487754750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A052515.P8143543172487754750

namespace A052515

/-- `∑[A078485(n)]-n` -/
def P8143543172487754750.Spec : Prop :=
  ∀ n, P8143543172487754750.a n = A052515 n

end A052515

/-! ## A052515.P16825816702356933781

`abs(2*n-A255047(n))-1`
-/

namespace A052515.P16825816702356933781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A255047 n| - 1

end

end A052515.P16825816702356933781

namespace A052515

/-- `abs(2*n-A255047(n))-1` -/
def P16825816702356933781.Spec : Prop :=
  ∀ n, P16825816702356933781.a n = A052515 n

end A052515

/-! ## A052515.P1351915719811913124

`abs(Δ[n²]-A155559(n))-1`
-/

namespace A052515.P1351915719811913124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - A155559 n| - 1

end

end A052515.P1351915719811913124

namespace A052515

/-- `abs(Δ[n²]-A155559(n))-1` -/
def P1351915719811913124.Spec : Prop :=
  ∀ n, P1351915719811913124.a n = A052515 n

end A052515

/-! ## A052515.P5107339801607336727

`and(abs(2*n-A000225(n)), -2)`
-/

namespace A052515.P5107339801607336727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |(2 * n : ℤ) - A000225 n| (-2)

end

end A052515.P5107339801607336727

namespace A052515

/-- `and(abs(2*n-A000225(n)), -2)` -/
def P5107339801607336727.Spec : Prop :=
  ∀ n, P5107339801607336727.a n = A052515 n

end A052515

/-! ## A052515.P18114652816332269594

`abs(2^n-(A004277(n)+1))-1`
-/

namespace A052515.P18114652816332269594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (A004277 n + 1)| - 1

end

end A052515.P18114652816332269594

namespace A052515

/-- `abs(2^n-(A004277(n)+1))-1` -/
def P18114652816332269594.Spec : Prop :=
  ∀ n, P18114652816332269594.a n = A052515 n

end A052515

/-! ## A052515.P5301857615135722861

`abs(or(1, abs(2*n+1-A000079(n)))-1)`
-/

namespace A052515.P5301857615135722861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lor 1 |(2 * n + 1 : ℤ) - A000079 n| - 1)|

end

end A052515.P5301857615135722861

namespace A052515

/-- `abs(or(1, abs(2*n+1-A000079(n)))-1)` -/
def P5301857615135722861.Spec : Prop :=
  ∀ n, P5301857615135722861.a n = A052515 n

end A052515

/-! ## A052515.P6265928449166001076

`A000325(n)-A057544(n)`
-/

namespace A052515.P6265928449166001076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A057544 n

end

end A052515.P6265928449166001076

namespace A052515

/-- `A000325(n)-A057544(n)` -/
def P6265928449166001076.Spec : Prop :=
  ∀ n, P6265928449166001076.a n = A052515 n

end A052515

/-! ## A052515.P13553223464860028586

`A130102(A289207(n)+2)-2`
-/

namespace A052515.P13553223464860028586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130102 (A289207 n + 2).toNat - 2

end

end A052515.P13553223464860028586

namespace A052515

/-- `A130102(A289207(n)+2)-2` -/
def P13553223464860028586.Spec : Prop :=
  ∀ n, P13553223464860028586.a n = A052515 n

end A052515

/-! ## A052515.P16482770597696375316

`A130102(n)-A288699(2*n)`
-/

namespace A052515.P16482770597696375316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130102 n - A288699 (2 * n)

end

end A052515.P16482770597696375316

namespace A052515

/-- `A130102(n)-A288699(2*n)` -/
def P16482770597696375316.Spec : Prop :=
  ∀ n, P16482770597696375316.a n = A052515 n

end A052515

/-! ## A052515.P11109248362365914317

`A296965(n)-n*A329683(n)`
-/

namespace A052515.P11109248362365914317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n - (n : ℤ) * A329683 n

end

end A052515.P11109248362365914317

namespace A052515

/-- `A296965(n)-n*A329683(n)` -/
def P11109248362365914317.Spec : Prop :=
  ∀ n, P11109248362365914317.a n = A052515 n

end A052515

/-! ## A052515.P11256648896776702919

`abs(A000225(n)-A004277(n))-1`
-/

namespace A052515.P11256648896776702919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A004277 n| - 1

end

end A052515.P11256648896776702919

namespace A052515

/-- `abs(A000225(n)-A004277(n))-1` -/
def P11256648896776702919.Spec : Prop :=
  ∀ n, P11256648896776702919.a n = A052515 n

end A052515

/-! ## A052515.P1896235653139036263

`2*(A011782(n)-A179184(n)-n)`
-/

namespace A052515.P1896235653139036263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n - A179184 n - (n : ℤ))

end

end A052515.P1896235653139036263

namespace A052515

/-- `2*(A011782(n)-A179184(n)-n)` -/
def P1896235653139036263.Spec : Prop :=
  ∀ n, P1896235653139036263.a n = A052515 n

end A052515

/-! ## A052515.P2580849259625411102

`and(1-A005408(n+1), A078485(n+1))`
-/

namespace A052515.P2580849259625411102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A005408 (n + 1)) (A078485 (n + 1))

end

end A052515.P2580849259625411102

namespace A052515

/-- `and(1-A005408(n+1), A078485(n+1))` -/
def P2580849259625411102.Spec : Prop :=
  ∀ n, P2580849259625411102.a n = A052515 n

end A052515

/-! ## A052515.P2416181485594684106

`abs(1-abs(A004277(n)+1-A000079(n)))`
-/

namespace A052515.P2416181485594684106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A004277 n + 1 - A000079 n|)|

end

end A052515.P2416181485594684106

namespace A052515

/-- `abs(1-abs(A004277(n)+1-A000079(n)))` -/
def P2416181485594684106.Spec : Prop :=
  ∀ n, P2416181485594684106.a n = A052515 n

end A052515

/-! ## A052515.P9671983108803507902

`abs(A000225(n)-2*n)-(A157532(n+1)-2)`
-/

namespace A052515.P9671983108803507902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - (2 * n : ℤ)| - (A157532 (n + 1) - 2)

end

end A052515.P9671983108803507902

namespace A052515

/-- `abs(A000225(n)-2*n)-(A157532(n+1)-2)` -/
def P9671983108803507902.Spec : Prop :=
  ∀ n, P9671983108803507902.a n = A052515 n

end A052515

/-! ## A052515.P12813793224480202824

`A342352(n)+A342352(n)-A324172(n)`
-/

namespace A052515.P12813793224480202824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342352 n + (A342352 n - A324172 n)

end

end A052515.P12813793224480202824

namespace A052515

/-- `A342352(n)+A342352(n)-A324172(n)` -/
def P12813793224480202824.Spec : Prop :=
  ∀ n, P12813793224480202824.a n = A052515 n

end A052515

/-! ## A052515.P8798202689850926750

`A130102(n)-A130102(n-A289207(n))`
-/

namespace A052515.P8798202689850926750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130102 n - A130102 ((n : ℤ) - A289207 n).toNat

end

end A052515.P8798202689850926750

namespace A052515

/-- `A130102(n)-A130102(n-A289207(n))` -/
def P8798202689850926750.Spec : Prop :=
  ∀ n, P8798202689850926750.a n = A052515 n

end A052515

/-! ## A052515.P5327130355125099268

`∑[A000051(n)%A056469(n%A000045(n+1))]-n`
-/

namespace A052515.P5327130355125099268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A056469 (Int.tmod (n : ℤ) (A000045 (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A052515.P5327130355125099268

namespace A052515

/-- `∑[A000051(n)%A056469(n%A000045(n+1))]-n` -/
def P5327130355125099268.Spec : Prop :=
  ∀ n, P5327130355125099268.a n = A052515 n

end A052515

/-!
# A052516: Number of pairs of sets of cardinality at least 3.

The programs for A052516, the canonical program `A052516.P11934640766659568381` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052516 has offset 0).

The definition of A052516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052516.P11934640766659568381

`(A000918(n)-n²-n)%(A000918(n)-n²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052516

/-- `(A000918(n)-n²-n)%(A000918(n)-n²)` -/
def P11934640766659568381.Spec : Prop :=
  ∀ n, P11934640766659568381.a n = A052516 n

theorem P11934640766659568381.correct : P11934640766659568381.Spec := by
  intro n
  simp only [A052516]

end A052516

/-! ## A052516.P814852322587986630

`A002662(n)-A000124(n)%A014833(n)`
-/

namespace A052516.P814852322587986630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n - Int.tmod (A000124 n) (A014833 n)

end

end A052516.P814852322587986630

namespace A052516

/-- `A002662(n)-A000124(n)%A014833(n)` -/
def P814852322587986630.Spec : Prop :=
  ∀ n, P814852322587986630.a n = A052516 n

end A052516

/-! ## A052516.P1143830273239296854

`(A171950(n+1)-A071099(n))%A014833(n)`
-/

namespace A052516.P1143830273239296854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171950 (n + 1) - A071099 n) (A014833 n)

end

end A052516.P1143830273239296854

namespace A052516

/-- `(A171950(n+1)-A071099(n))%A014833(n)` -/
def P1143830273239296854.Spec : Prop :=
  ∀ n, P1143830273239296854.a n = A052516 n

end A052516

/-! ## A052516.P7468680568839201490

`(A095121(n)%A131924(n))%A095121(n)`
-/

namespace A052516.P7468680568839201490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A095121 n) (A131924 n)) (A095121 n)

end

end A052516.P7468680568839201490

namespace A052516

/-- `(A095121(n)%A131924(n))%A095121(n)` -/
def P7468680568839201490.Spec : Prop :=
  ∀ n, P7468680568839201490.a n = A052516 n

end A052516

/-! ## A052516.P16068083724870466469

`(A002662(n)*A133263(n))%A014833(n)`
-/

namespace A052516.P16068083724870466469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002662 n * A133263 n) (A014833 n)

end

end A052516.P16068083724870466469

namespace A052516

/-- `(A002662(n)*A133263(n))%A014833(n)` -/
def P16068083724870466469.Spec : Prop :=
  ∀ n, P16068083724870466469.a n = A052516 n

end A052516

/-!
# A052517: Number of ordered pairs of cycles over all n-permutations having two cycles.

The programs for A052517, there is no canonical definition to state claims against.
-/

/-! ## A052517.P5171979682804220664

`2*A132393(A133263(n))`
-/

namespace A052517.P5171979682804220664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132393 (A133263 n).toNat

end

end A052517.P5171979682804220664

/-! ## A052517.P2940513176648003435

`2*A000254(A289207(n+1))`
-/

namespace A052517.P2940513176648003435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000254 (A289207 (n + 1)).toNat

end

end A052517.P2940513176648003435

/-! ## A052517.P997662759386201874

`2*A132393(A238531(n+1))`
-/

namespace A052517.P997662759386201874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132393 (A238531 (n + 1)).toNat

end

end A052517.P997662759386201874

/-! ## A052517.P1528474286133039502

`2*A000254(A028310(n)-1)`
-/

namespace A052517.P1528474286133039502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000254 (A028310 n - 1).toNat

end

end A052517.P1528474286133039502

/-! ## A052517.P4161439033576131241

`2*A132393(A089071(n+1)+n)`
-/

namespace A052517.P4161439033576131241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132393 (A089071 (n + 1) + (n : ℤ)).toNat

end

end A052517.P4161439033576131241

/-! ## A052517.P15557059112999660982

`A052745(n+1)/(n+1)`
-/

namespace A052517.P15557059112999660982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052745 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052517.P15557059112999660982

/-! ## A052517.P389481124577891841

`A390723(A133263(n))`
-/

namespace A052517.P389481124577891841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390723 (A133263 n).toNat

end

end A052517.P389481124577891841

/-! ## A052517.P16199643262566907117

`A390723(A238531(n+1))`
-/

namespace A052517.P16199643262566907117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390723 (A238531 (n + 1)).toNat

end

end A052517.P16199643262566907117

/-! ## A052517.P15992634139461390044

`2/A028310(n)*A052881(n)`
-/

namespace A052517.P15992634139461390044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028310 n : ℚ) * (A052881 n : ℚ)

end

end A052517.P15992634139461390044

/-!
# A052518: Number of pairs of cycles of cardinality at least 2.

The programs for A052518, there is no canonical definition to state claims against.
-/

/-! ## A052518.P4765461407113212896

`2*A358622(A133263(n))`
-/

namespace A052518.P4765461407113212896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358622 (A133263 n).toNat

end

end A052518.P4765461407113212896

/-! ## A052518.P12837168230918845764

`∑{e}[A000400(n), A216778(#)]`
-/

namespace A052518.P12837168230918845764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A216778 (Nat.factorization (f1 n).natAbs p)

end

end A052518.P12837168230918845764

/-! ## A052518.P3519848432209686856

`Δ[A008621(8*A006184(n))]`
-/

namespace A052518.P3519848432209686856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (8 * A006184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052518.P3519848432209686856

/-! ## A052518.P4279903318619784573

`A257687(A001120(n)+1-n)`
-/

namespace A052518.P4279903318619784573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A001120 n + 1 - (n : ℤ)).toNat

end

end A052518.P4279903318619784573

/-!
# A052519: Number of pairs of cycles of cardinality at least 3.

The programs for A052519, there is no canonical definition to state claims against.
-/

/-! ## A052519.P6791847565709705512

`2*A257687(A038205(n))`
-/

namespace A052519.P6791847565709705512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257687 (A038205 n).toNat

end

end A052519.P6791847565709705512

/-! ## A052519.P8855503043845262454

`A005843(A355284(n)-A038205(n))`
-/

namespace A052519.P8855503043845262454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A355284 n - A038205 n).toNat

end

end A052519.P8855503043845262454

/-! ## A052519.P12484980173903513885

`A335595(n)-A042948(A038205(n))`
-/

namespace A052519.P12484980173903513885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335595 n - A042948 (A038205 n).toNat

end

end A052519.P12484980173903513885

/-! ## A052519.P13219872296495950436

`A008586(C((2*∑[and(n, -n)²]+n)/3, 19))`
-/

namespace A052519.P13219872296495950436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Nat.choose (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)).toNat 19)

end

end A052519.P13219872296495950436

/-!
# A052520: Number of pairs of sequences of cardinality at least 2.

The programs for A052520, there is no canonical definition to state claims against.
-/

/-! ## A052520.P6912557948470202951

`(n-3)*and(-4, n!)`
-/

namespace A052520.P6912557948470202951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * Int.land (-4) (Nat.factorial n : ℤ)

end

end A052520.P6912557948470202951

/-! ## A052520.P1099491138018068391

`(or(3, n!)-3)*(n-3)`
-/

namespace A052520.P1099491138018068391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (Nat.factorial n) : ℤ) - 3) * ((n : ℤ) - 3)

end

end A052520.P1099491138018068391

/-! ## A052520.P4591093780963371059

`and(2-n, (n-3)*n!)`
-/

namespace A052520.P4591093780963371059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - (n : ℤ)) (((n : ℤ) - 3) * (Nat.factorial n : ℤ))

end

end A052520.P4591093780963371059

/-! ## A052520.P13629206385268554339

`(n-3)*lcm(n!, C(n, 3))`
-/

namespace A052520.P13629206385268554339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Nat.lcm (Nat.factorial n) (Nat.choose n 3) : ℤ)

end

end A052520.P13629206385268554339

/-! ## A052520.P3498483310428127060

`abs(n-comp[2*(n+2)])*n!`
-/

namespace A052520.P3498483310428127060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)| * (Nat.factorial n : ℤ)

end

end A052520.P3498483310428127060

/-! ## A052520.P89478052952896681

`lcm((n-3)*n!, ∑{p}[1-n, #])`
-/

namespace A052520.P89478052952896681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 3) * (Nat.factorial n : ℤ)) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A052520.P89478052952896681

/-! ## A052520.P16508826898222326756

`a(n-1)*n+(n-1)!*n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A052520.P16508826898222326756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  a (n - 1) * n + Nat.factorial ((n : ℤ) - 1).toNat * n

end

end A052520.P16508826898222326756

/-! ## A052520.P3127433138554236071

`n!*A004197(A051890(n))`
-/

namespace A052520.P3127433138554236071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A004197 (A051890 n).toNat

end

end A052520.P3127433138554236071

/-! ## A052520.P6552691481284636083

`(A004274(n)-n)*A000142(n)`
-/

namespace A052520.P6552691481284636083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004274 n - (n : ℤ)) * A000142 n

end

end A052520.P6552691481284636083

/-! ## A052520.P1173013214401554674

`n!*A289207(A289207(n+1))`
-/

namespace A052520.P1173013214401554674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A289207 (A289207 (n + 1)).toNat

end

end A052520.P1173013214401554674

/-!
# A052521: Number of pairs of sequences of cardinality at least 3.

The programs for A052521, there is no canonical definition to state claims against.
-/

/-! ## A052521.P6663838257435089267

`(A004276(n)-n)*n!`
-/

namespace A052521.P6663838257435089267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004276 n - (n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052521.P6663838257435089267

/-! ## A052521.P267680100705167664

`A022961(n)²*A052794(n)`
-/

namespace A052521.P267680100705167664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022961 n ^ 2 * A052794 n

end

end A052521.P267680100705167664

/-! ## A052521.P13160180415712619926

`(A004276(n)-n)*A000142(n)`
-/

namespace A052521.P13160180415712619926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004276 n - (n : ℤ)) * A000142 n

end

end A052521.P13160180415712619926

/-! ## A052521.P7524831669005758857

`(n+1-A101272(n+1))*A000142(n)`
-/

namespace A052521.P7524831669005758857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A101272 (n + 1)) * A000142 n

end

end A052521.P7524831669005758857

/-! ## A052521.P5010835686755655892

`(A004276(n)-n)*A190782(A000217(n))`
-/

namespace A052521.P5010835686755655892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004276 n - (n : ℤ)) * A190782 (A000217 n).toNat

end

end A052521.P5010835686755655892

/-!
# A052522: Number of labeled mobiles with cycles of length at least 3.

The programs for A052522, there is no canonical definition to state claims against.
-/

/-! ## A052522.P15221426164170871451

`and(A004648(A177475(n+1)), A177478(n))`
-/

namespace A052522.P15221426164170871451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004648 (A177475 (n + 1)).toNat) (A177478 n)

end

end A052522.P15221426164170871451

/-!
# A052523: Number of unlabeled mobiles with cycles of length at least 3.

The programs for A052523, there is no canonical definition to state claims against.
-/

/-! ## A052523.P13660196260355209295

`A350349(round(ϕ*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A052523.P13660196260355209295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n a =>
  A350349 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A052523.P13660196260355209295

/-! ## A052523.P3733043357922782976

`A352131(A158911(n+2))`
-/

namespace A052523.P3733043357922782976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A158911 (n + 2)).toNat

end

end A052523.P3733043357922782976

/-!
# A052524: Number of ordered labeled rooted trees on n nodes with non-leaf nodes having more than two children.

The programs for A052524, there is no canonical definition to state claims against.
-/

/-! ## A052524.P4487845585058277783

`n!*A007376(A211083(n+1))`
-/

namespace A052524.P4487845585058277783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A007376 (A211083 (n + 1)).toNat

end

end A052524.P4487845585058277783

/-! ## A052524.P16599664321617044316

`A265024(n)%A257635(A051349(n))`
-/

namespace A052524.P16599664321617044316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265024 n) (A257635 (A051349 n).toNat)

end

end A052524.P16599664321617044316

/-! ## A052524.P8608835860962427061

`A000142(n)*A007376(A211083(n+1))`
-/

namespace A052524.P8608835860962427061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A007376 (A211083 (n + 1)).toNat

end

end A052524.P8608835860962427061

/-!
# A052525: Number of unlabeled rooted trees with n leaves in which the degrees of the root and all internal nodes are >= 3.

The programs for A052525, there is no canonical definition to state claims against.
-/

/-! ## A052525.P14928874300584653697

`A331488(n+1)+A088950(A001678(n))`
-/

namespace A052525.P14928874300584653697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (n + 1) + A088950 (A001678 n).toNat

end

end A052525.P14928874300584653697

/-! ## A052525.P17820542928396888055

`A331488(n+1)+A151950(A081651(n))`
-/

namespace A052525.P17820542928396888055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (n + 1) + A151950 (A081651 n).toNat

end

end A052525.P17820542928396888055

/-! ## A052525.P16992797958053439820

`A331488(n+1)+A102683(A052768(n))`
-/

namespace A052525.P16992797958053439820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (n + 1) + A102683 (A052768 n).toNat

end

end A052525.P16992797958053439820

/-! ## A052525.P18121422313166424318

`A331488(n+1)+A178798(A001679(n))`
-/

namespace A052525.P18121422313166424318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (n + 1) + A178798 (A001679 n).toNat

end

end A052525.P18121422313166424318

/-! ## A052525.P15520742129970238773

`A331488(n+1)+A056170(A156939(n))`
-/

namespace A052525.P15520742129970238773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (n + 1) + A056170 (A156939 n).toNat

end

end A052525.P15520742129970238773

/-!
# A052527: Expansion of (1-x)/(1-x-x^2-x^3+x^4).

The programs for A052527, the canonical program `A052527.P4580901180585569071` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052527 has offset 0).

The definition of A052527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2-x^3+x^4))` (program `A052527.P4580901180585569071`, by `A052527.P4580901180585569071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052527.P4580901180585569071

`ogf((1-x)/(1-x-x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052527

/-- `ogf((1-x)/(1-x-x^2-x^3+x^4))` -/
def P4580901180585569071.Spec : Prop :=
  ∀ n, P4580901180585569071.a n = A052527 n

theorem P4580901180585569071.correct : P4580901180585569071.Spec := by
  intro n
  simp only [A052527]

end A052527

/-! ## A052527.P17433933853448114730

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A052527.P17433933853448114730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4)

end

end A052527.P17433933853448114730

namespace A052527

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P17433933853448114730.Spec : Prop :=
  ∀ n, P17433933853448114730.a n = A052527 n

end A052527

/-! ## A052527.P12652956270807975600

`Δ[A116732(n+2)]`
-/

namespace A052527.P12652956270807975600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052527.P12652956270807975600

namespace A052527

/-- `Δ[A116732(n+2)]` -/
def P12652956270807975600.Spec : Prop :=
  ∀ n, P12652956270807975600.a n = A052527 n

end A052527

/-! ## A052527.P4851040080675224934

`A116201(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052527.P4851040080675224934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116201 (n + 1) - a (n - 1)

end

end A052527.P4851040080675224934

namespace A052527

/-- `A116201(n+1)-a(n-1)` -/
def P4851040080675224934.Spec : Prop :=
  ∀ n, P4851040080675224934.a n = A052527 n

end A052527

/-! ## A052527.P14742519317465704196

`A239909(n+1)-A116201(n)`
-/

namespace A052527.P14742519317465704196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 1) - A116201 n

end

end A052527.P14742519317465704196

namespace A052527

/-- `A239909(n+1)-A116201(n)` -/
def P14742519317465704196.Spec : Prop :=
  ∀ n, P14742519317465704196.a n = A052527 n

end A052527

/-! ## A052527.P10648121628336384752

`A116732(n+3)-A116732(n+2)`
-/

namespace A052527.P10648121628336384752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 3) - A116732 (n + 2)

end

end A052527.P10648121628336384752

namespace A052527

/-- `A116732(n+3)-A116732(n+2)` -/
def P10648121628336384752.Spec : Prop :=
  ∀ n, P10648121628336384752.a n = A052527 n

end A052527

/-! ## A052527.P6766035035648767667

`Δ[A135431(n)]-a(n-1)` with `a(0)=1`
-/

namespace A052527.P6766035035648767667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A052527.P6766035035648767667

namespace A052527

/-- `Δ[A135431(n)]-a(n-1)` -/
def P6766035035648767667.Spec : Prop :=
  ∀ n, P6766035035648767667.a n = A052527 n

end A052527

/-! ## A052527.P17771543111839658476

`Δ[Δ[A239909(n+1)]]`
-/

namespace A052527.P17771543111839658476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052527.P17771543111839658476

namespace A052527

/-- `Δ[Δ[A239909(n+1)]]` -/
def P17771543111839658476.Spec : Prop :=
  ∀ n, P17771543111839658476.a n = A052527 n

end A052527

/-!
# A052528: Expansion of (1 - x)/(1 - 2*x - 2*x^2 + 2*x^3).

The programs for A052528, the canonical program `A052528.P2802211436380254542` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052528 has offset 0).

The definition of A052528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^2+2x^3))` (program `A052528.P2802211436380254542`, by `A052528.P2802211436380254542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052528.P2802211436380254542

`ogf((1-x)/(1-2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052528

/-- `ogf((1-x)/(1-2x-2x^2+2x^3))` -/
def P2802211436380254542.Spec : Prop :=
  ∀ n, P2802211436380254542.a n = A052528 n

theorem P2802211436380254542.correct : P2802211436380254542.Spec := by
  intro n
  simp only [A052528]

end A052528

/-! ## A052528.P15185205583459606014

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052528.P15185205583459606014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A052528.P15185205583459606014

namespace A052528

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P15185205583459606014.Spec : Prop :=
  ∀ n, P15185205583459606014.a n = A052528 n

end A052528

/-! ## A052528.P1167634880375487550

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052528.P1167634880375487550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052528.P1167634880375487550

namespace A052528

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P1167634880375487550.Spec : Prop :=
  ∀ n, P1167634880375487550.a n = A052528 n

end A052528

/-! ## A052528.P15262497178103928890

`A181306(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052528.P15262497178103928890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A181306 n + a (n - 2)

end

end A052528.P15262497178103928890

namespace A052528

/-- `A181306(n)+a(n-2)` -/
def P15262497178103928890.Spec : Prop :=
  ∀ n, P15262497178103928890.a n = A052528 n

end A052528

/-! ## A052528.P3559375794309741025

`A052970(n+2)/2`
-/

namespace A052528.P3559375794309741025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052970 (n + 2) : ℚ) / 2

end

end A052528.P3559375794309741025

namespace A052528

/-- `A052970(n+2)/2` -/
def P3559375794309741025.Spec : Prop :=
  ∀ n, P3559375794309741025.a n = (A052528 n : ℚ)

end A052528

/-! ## A052528.P12695173244788576906

`A118649(n)-a(n-1)` with `a(0)=1`
-/

namespace A052528.P12695173244788576906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118649 n - a (n - 1)

end

end A052528.P12695173244788576906

namespace A052528

/-- `A118649(n)-a(n-1)` -/
def P12695173244788576906.Spec : Prop :=
  ∀ n, P12695173244788576906.a n = A052528 n

end A052528

/-! ## A052528.P9904034613121107148

`floor(∑[A077915(n)/A280560(n)])`
-/

namespace A052528.P9904034613121107148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077915 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A052528.P9904034613121107148

namespace A052528

/-- `floor(∑[A077915(n)/A280560(n)])` -/
def P9904034613121107148.Spec : Prop :=
  ∀ n, P9904034613121107148.a n = A052528 n

end A052528

/-! ## A052528.P5348350815918074398

`∑[A033999(n)*A118649(n)]*A033999(n)`
-/

namespace A052528.P5348350815918074398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A118649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A052528.P5348350815918074398

namespace A052528

/-- `∑[A033999(n)*A118649(n)]*A033999(n)` -/
def P5348350815918074398.Spec : Prop :=
  ∀ n, P5348350815918074398.a n = A052528 n

end A052528

/-! ## A052528.P12302597624096533687

`Δ[A106666(n)/2]`
-/

namespace A052528.P12302597624096533687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106666 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052528.P12302597624096533687

namespace A052528

/-- `Δ[A106666(n)/2]` -/
def P12302597624096533687.Spec : Prop :=
  ∀ n, P12302597624096533687.a n = (A052528 n : ℚ)

end A052528

/-! ## A052528.P14482412076570748127

`Δ[Δ[A181306(n)]]-A181306(n)`
-/

namespace A052528.P14482412076570748127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A181306 n

end

end A052528.P14482412076570748127

namespace A052528

/-- `Δ[Δ[A181306(n)]]-A181306(n)` -/
def P14482412076570748127.Spec : Prop :=
  ∀ n, P14482412076570748127.a n = A052528 n

end A052528

/-! ## A052528.P9657194142341443625

`Δ[record[A123108(n)+A110158(n)]]/2`
-/

namespace A052528.P9657194142341443625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n + A110158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A052528.P9657194142341443625

namespace A052528

/-- `Δ[record[A123108(n)+A110158(n)]]/2` -/
def P9657194142341443625.Spec : Prop :=
  ∀ n, P9657194142341443625.a n = (A052528 n : ℚ)

end A052528

/-! ## A052528.P11033691227947915868

`Δ[Δ[A118649(n)]-A118649(n)]`
-/

namespace A052528.P11033691227947915868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A118649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052528.P11033691227947915868

namespace A052528

/-- `Δ[Δ[A118649(n)]-A118649(n)]` -/
def P11033691227947915868.Spec : Prop :=
  ∀ n, P11033691227947915868.a n = A052528 n

end A052528

/-!
# A052529: Expansion of (1-x)^3/(1 - 4*x + 3*x^2 - x^3).

The programs for A052529, the canonical program `A052529.P3626985701074363706` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052529 has offset 0).

The definition of A052529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+3x^2-x^3)/(1-4x+3x^2-x^3))` (program `A052529.P3626985701074363706`, by `A052529.P3626985701074363706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052529.P3626985701074363706

`ogf((1-3x+3x^2-x^3)/(1-4x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052529

/-- `ogf((1-3x+3x^2-x^3)/(1-4x+3x^2-x^3))` -/
def P3626985701074363706.Spec : Prop :=
  ∀ n, P3626985701074363706.a n = A052529 n

theorem P3626985701074363706.correct : P3626985701074363706.Spec := by
  intro n
  simp only [A052529]

end A052529

/-! ## A052529.P3121491911787010205

`4*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=13`
-/

namespace A052529.P3121491911787010205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 13] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A052529.P3121491911787010205

namespace A052529

/-- `4*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3121491911787010205.Spec : Prop :=
  ∀ n, P3121491911787010205.a n = A052529 n

end A052529

/-! ## A052529.P496288280605444858

`A000930(abs(1-3*n))`
-/

namespace A052529.P496288280605444858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 |1 - (3 * n : ℤ)|.toNat

end

end A052529.P496288280605444858

namespace A052529

/-- `A000930(abs(1-3*n))` -/
def P496288280605444858.Spec : Prop :=
  ∀ n, P496288280605444858.a n = A052529 n

end A052529

/-! ## A052529.P3648031063642447856

`abs(Δ[A052544(abs(1-n))])`
-/

namespace A052529.P3648031063642447856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A052529.P3648031063642447856

namespace A052529

/-- `abs(Δ[A052544(abs(1-n))])` -/
def P3648031063642447856.Spec : Prop :=
  ∀ n, P3648031063642447856.a n = A052529 n

end A052529

/-! ## A052529.P7386685406510844221

`A124820(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A052529.P7386685406510844221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A124820 (n - 1) + a (n - 1)

end

end A052529.P7386685406510844221

namespace A052529

/-- `A124820(n-1)+a(n-1)` -/
def P7386685406510844221.Spec : Prop :=
  ∀ n, P7386685406510844221.a n = A052529 n

end A052529

/-! ## A052529.P5777021204728286649

`Δ[A078012(A008486(n))]`
-/

namespace A052529.P5777021204728286649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052529.P5777021204728286649

namespace A052529

/-- `Δ[A078012(A008486(n))]` -/
def P5777021204728286649.Spec : Prop :=
  ∀ n, P5777021204728286649.a n = A052529 n

end A052529

/-! ## A052529.P6634304748311289230

`A078012(A008486(n)+2)`
-/

namespace A052529.P6634304748311289230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A008486 n + 2).toNat

end

end A052529.P6634304748311289230

namespace A052529

/-- `A078012(A008486(n)+2)` -/
def P6634304748311289230.Spec : Prop :=
  ∀ n, P6634304748311289230.a n = A052529 n

end A052529

/-! ## A052529.P12673131760745047933

`A099560(A026488(n+2))`
-/

namespace A052529.P12673131760745047933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099560 (A026488 (n + 2)).toNat

end

end A052529.P12673131760745047933

namespace A052529

/-- `A099560(A026488(n+2))` -/
def P12673131760745047933.Spec : Prop :=
  ∀ n, P12673131760745047933.a n = A052529 n

end A052529

/-! ## A052529.P10561839762128317183

`A108104(A101328(n+2))`
-/

namespace A052529.P10561839762128317183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A101328 (n + 2)).toNat

end

end A052529.P10561839762128317183

namespace A052529

/-- `A108104(A101328(n+2))` -/
def P10561839762128317183.Spec : Prop :=
  ∀ n, P10561839762128317183.a n = A052529 n

end A052529

/-! ## A052529.P10583579170004915566

`A135851(A008486(n)+4)`
-/

namespace A052529.P10583579170004915566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (A008486 n + 4).toNat

end

end A052529.P10583579170004915566

namespace A052529

/-- `A135851(A008486(n)+4)` -/
def P10583579170004915566.Spec : Prop :=
  ∀ n, P10583579170004915566.a n = A052529 n

end A052529

/-! ## A052529.P8716090697325319917

`A068921(A289207(3*n))`
-/

namespace A052529.P8716090697325319917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A289207 (3 * n)).toNat

end

end A052529.P8716090697325319917

namespace A052529

/-- `A068921(A289207(3*n))` -/
def P8716090697325319917.Spec : Prop :=
  ∀ n, P8716090697325319917.a n = A052529 n

end A052529

/-! ## A052529.P9252545420451552653

`A078012(A163300(n+1)+n)`
-/

namespace A052529.P9252545420451552653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A163300 (n + 1) + (n : ℤ)).toNat

end

end A052529.P9252545420451552653

namespace A052529

/-- `A078012(A163300(n+1)+n)` -/
def P9252545420451552653.Spec : Prop :=
  ∀ n, P9252545420451552653.a n = A052529 n

end A052529

/-! ## A052529.P282135680542150738

`A078012(A004277(n)+2+n)`
-/

namespace A052529.P282135680542150738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A004277 n + 2 + (n : ℤ)).toNat

end

end A052529.P282135680542150738

namespace A052529

/-- `A078012(A004277(n)+2+n)` -/
def P282135680542150738.Spec : Prop :=
  ∀ n, P282135680542150738.a n = A052529 n

end A052529

/-! ## A052529.P3777394866175339663

`A078012(A051755(n+2)+n)`
-/

namespace A052529.P3777394866175339663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A051755 (n + 2) + (n : ℤ)).toNat

end

end A052529.P3777394866175339663

namespace A052529

/-- `A078012(A051755(n+2)+n)` -/
def P3777394866175339663.Spec : Prop :=
  ∀ n, P3777394866175339663.a n = A052529 n

end A052529

/-! ## A052529.P10836321526111269409

`A108104(2*(A004273(n)+n))`
-/

namespace A052529.P10836321526111269409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * (A004273 n + (n : ℤ))).toNat

end

end A052529.P10836321526111269409

namespace A052529

/-- `A108104(2*(A004273(n)+n))` -/
def P10836321526111269409.Spec : Prop :=
  ∀ n, P10836321526111269409.a n = A052529 n

end A052529

/-! ## A052529.P17809869883649530186

`A108104(A113127(n)+2*n)`
-/

namespace A052529.P17809869883649530186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A113127 n + (2 * n : ℤ)).toNat

end

end A052529.P17809869883649530186

namespace A052529

/-- `A108104(A113127(n)+2*n)` -/
def P17809869883649530186.Spec : Prop :=
  ∀ n, P17809869883649530186.a n = A052529 n

end A052529

/-! ## A052529.P11853828314319285134

`A108104(A130824(n)+2*n)`
-/

namespace A052529.P11853828314319285134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A130824 n + (2 * n : ℤ)).toNat

end

end A052529.P11853828314319285134

namespace A052529

/-- `A108104(A130824(n)+2*n)` -/
def P11853828314319285134.Spec : Prop :=
  ∀ n, P11853828314319285134.a n = A052529 n

end A052529

/-! ## A052529.P7901299073130051990

`A068921(A004275(2*n)-n)`
-/

namespace A052529.P7901299073130051990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A004275 (2 * n) - (n : ℤ)).toNat

end

end A052529.P7901299073130051990

namespace A052529

/-- `A068921(A004275(2*n)-n)` -/
def P7901299073130051990.Spec : Prop :=
  ∀ n, P7901299073130051990.a n = A052529 n

end A052529

/-! ## A052529.P13450340836575750022

`A068921(2*A004273(n)-n)`
-/

namespace A052529.P13450340836575750022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (2 * A004273 n - (n : ℤ)).toNat

end

end A052529.P13450340836575750022

namespace A052529

/-- `A068921(2*A004273(n)-n)` -/
def P13450340836575750022.Spec : Prop :=
  ∀ n, P13450340836575750022.a n = A052529 n

end A052529

/-! ## A052529.P3233491541774394000

`A108104(A113127(n)+n+n)`
-/

namespace A052529.P3233491541774394000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A113127 n + (n : ℤ) + (n : ℤ)).toNat

end

end A052529.P3233491541774394000

namespace A052529

/-- `A108104(A113127(n)+n+n)` -/
def P3233491541774394000.Spec : Prop :=
  ∀ n, P3233491541774394000.a n = A052529 n

end A052529

/-!
# A052530: a(n) = 4*a(n-1) - a(n-2), with a(0) = 0, a(1) = 2.

The programs for A052530, the canonical program `A052530.P4486985900610601816` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052530 has offset 0).

The definition of A052530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A052530.P4486985900610601816`, by `A052530.P4486985900610601816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052530.P4486985900610601816

`4*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052530

/-- `4*a(n-1)-a(n-2)` -/
def P4486985900610601816.Spec : Prop :=
  ∀ n, P4486985900610601816.a n = A052530 n

theorem P4486985900610601816.correct : P4486985900610601816.Spec := by
  intro n
  simp only [A052530]

end A052530

/-! ## A052530.P6234470689476227789

`A071954(n)-2`
-/

namespace A052530.P6234470689476227789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071954 n - 2

end

end A052530.P6234470689476227789

namespace A052530

/-- `A071954(n)-2` -/
def P6234470689476227789.Spec : Prop :=
  ∀ n, P6234470689476227789.a n = A052530 n

end A052530

/-! ## A052530.P13472179032827635603

`2*A001353(n)`
-/

namespace A052530.P13472179032827635603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001353 n

end

end A052530.P13472179032827635603

namespace A052530

/-- `2*A001353(n)` -/
def P13472179032827635603.Spec : Prop :=
  ∀ n, P13472179032827635603.a n = A052530 n

end A052530

/-! ## A052530.P6408538163463025027

`A001835(n+1)-A001835(n)`
-/

namespace A052530.P6408538163463025027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1) - A001835 n

end

end A052530.P6408538163463025027

namespace A052530

/-- `A001835(n+1)-A001835(n)` -/
def P6408538163463025027.Spec : Prop :=
  ∀ n, P6408538163463025027.a n = A052530 n

end A052530

/-! ## A052530.P1442647639792465562

`ogf(2x/(1-4x+x^2))`
-/

namespace A052530.P1442647639792465562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, 1] n

end

end A052530.P1442647639792465562

namespace A052530

/-- `ogf(2x/(1-4x+x^2))` -/
def P1442647639792465562.Spec : Prop :=
  ∀ n, P1442647639792465562.a n = A052530 n

end A052530

/-! ## A052530.P15059900465952265574

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A052530.P15059900465952265574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A052530.P15059900465952265574

namespace A052530

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P15059900465952265574.Spec : Prop :=
  ∀ n, P15059900465952265574.a n = A052530 n

end A052530

/-! ## A052530.P3932184302993911227

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A052530.P3932184302993911227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A052530.P3932184302993911227

namespace A052530

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P3932184302993911227.Spec : Prop :=
  ∀ n, P3932184302993911227.a n = (A052530 n : ℚ)

end A052530

/-! ## A052530.P854647122929775870

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A052530.P854647122929775870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A052530.P854647122929775870

namespace A052530

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P854647122929775870.Spec : Prop :=
  ∀ n, P854647122929775870.a n = A052530 n

theorem P854647122929775870.correct : P854647122929775870.Spec := by
  intro n
  simp only [A052530, Nat.add_sub_cancel, A052530.P854647122929775870.a, A052530.P4486985900610601816.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052530

/-! ## A052530.P11261610033344522539

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A052530.P11261610033344522539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A052530.P11261610033344522539

namespace A052530

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P11261610033344522539.Spec : Prop :=
  ∀ n, P11261610033344522539.a n = A052530 n

theorem P11261610033344522539.correct : P11261610033344522539.Spec := by
  intro n
  simp only [A052530, Nat.add_sub_cancel, A052530.P11261610033344522539.a, A052530.P4486985900610601816.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052530

/-! ## A052530.P5242871124718930449

`Δ[A001835(n)]`
-/

namespace A052530.P5242871124718930449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052530.P5242871124718930449

namespace A052530

/-- `Δ[A001835(n)]` -/
def P5242871124718930449.Spec : Prop :=
  ∀ n, P5242871124718930449.a n = A052530 n

end A052530

/-! ## A052530.P11597743283153071198

`A048788(2*n)`
-/

namespace A052530.P11597743283153071198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (2 * n)

end

end A052530.P11597743283153071198

namespace A052530

/-- `A048788(2*n)` -/
def P11597743283153071198.Spec : Prop :=
  ∀ n, P11597743283153071198.a n = A052530 n

end A052530

/-! ## A052530.P3034552928119068767

`A254308(3*n)`
-/

namespace A052530.P3034552928119068767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (3 * n)

end

end A052530.P3034552928119068767

namespace A052530

/-- `A254308(3*n)` -/
def P3034552928119068767.Spec : Prop :=
  ∀ n, P3034552928119068767.a n = A052530 n

end A052530

/-! ## A052530.P12389484441693556222

`A162959(Δ[n²])`
-/

namespace A052530.P12389484441693556222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052530.P12389484441693556222

namespace A052530

/-- `A162959(Δ[n²])` -/
def P12389484441693556222.Spec : Prop :=
  ∀ n, P12389484441693556222.a n = A052530 n

end A052530

/-! ## A052530.P3304963495603137894

`abs(2*A106707(n))`
-/

namespace A052530.P3304963495603137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A106707 n|

end

end A052530.P3304963495603137894

namespace A052530

/-- `abs(2*A106707(n))` -/
def P3304963495603137894.Spec : Prop :=
  ∀ n, P3304963495603137894.a n = A052530 n

end A052530

/-! ## A052530.P10684266410210626468

`Δ[A005246(2*n)]`
-/

namespace A052530.P10684266410210626468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052530.P10684266410210626468

namespace A052530

/-- `Δ[A005246(2*n)]` -/
def P10684266410210626468.Spec : Prop :=
  ∀ n, P10684266410210626468.a n = A052530 n

end A052530

/-! ## A052530.P16472422328139489242

`Δ[2*A101879(n)]`
-/

namespace A052530.P16472422328139489242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052530.P16472422328139489242

namespace A052530

/-- `Δ[2*A101879(n)]` -/
def P16472422328139489242.Spec : Prop :=
  ∀ n, P16472422328139489242.a n = A052530 n

end A052530

/-! ## A052530.P13384008701096573580

`Δ[A122573(Δ[n²])]`
-/

namespace A052530.P13384008701096573580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052530.P13384008701096573580

namespace A052530

/-- `Δ[A122573(Δ[n²])]` -/
def P13384008701096573580.Spec : Prop :=
  ∀ n, P13384008701096573580.a n = A052530 n

end A052530

/-! ## A052530.P14307394533069792208

`2*(A072110(n)-1)`
-/

namespace A052530.P14307394533069792208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072110 n - 1)

end

end A052530.P14307394533069792208

namespace A052530

/-- `2*(A072110(n)-1)` -/
def P14307394533069792208.Spec : Prop :=
  ∀ n, P14307394533069792208.a n = A052530 n

end A052530

/-! ## A052530.P7249562081513159640

`2*A002530(2*n)`
-/

namespace A052530.P7249562081513159640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002530 (2 * n)

end

end A052530.P7249562081513159640

namespace A052530

/-- `2*A002530(2*n)` -/
def P7249562081513159640.Spec : Prop :=
  ∀ n, P7249562081513159640.a n = A052530 n

end A052530

/-! ## A052530.P12581186620387191203

`2*A249578(3*n)`
-/

namespace A052530.P12581186620387191203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249578 (3 * n)

end

end A052530.P12581186620387191203

namespace A052530

/-- `2*A249578(3*n)` -/
def P12581186620387191203.Spec : Prop :=
  ∀ n, P12581186620387191203.a n = A052530 n

end A052530

/-!
# A052531: If n is even then 2^n+1 otherwise 2^n.

The programs for A052531, the canonical program `A052531.P6369340052517664160` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052531 has offset 0).

The definition of A052531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052531.P6369340052517664160

`2^n+(1+(-1)^n)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052531

/-- `2^n+(1+(-1)^n)/2` -/
def P6369340052517664160.Spec : Prop :=
  ∀ n, P6369340052517664160.a n = (A052531 n : ℚ)

end A052531

/-! ## A052531.P17400319600566996688

`∑{d}[n+2, C(2, #)^n]`
-/

namespace A052531.P17400319600566996688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 d ^ n

end

end A052531.P17400319600566996688

namespace A052531

/-- `∑{d}[n+2, C(2, #)^n]` -/
def P17400319600566996688.Spec : Prop :=
  ∀ n, (P17400319600566996688.a n : ℤ) = A052531 n

end A052531

/-! ## A052531.P1005631001082220854

`∑[ogf((-2+2x+x^2)/(-1+x+2x^2))]`
-/

namespace A052531.P1005631001082220854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052531.P1005631001082220854

namespace A052531

/-- `∑[ogf((-2+2x+x^2)/(-1+x+2x^2))]` -/
def P1005631001082220854.Spec : Prop :=
  ∀ n, P1005631001082220854.a n = A052531 n

end A052531

/-! ## A052531.P4479690781531502312

`ogf((-2+2x+x^2)/(-1+2x+x^2-2x^3))`
-/

namespace A052531.P4479690781531502312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1] [1, -2, -1, 2] n

end

end A052531.P4479690781531502312

namespace A052531

/-- `ogf((-2+2x+x^2)/(-1+2x+x^2-2x^3))` -/
def P4479690781531502312.Spec : Prop :=
  ∀ n, P4479690781531502312.a n = A052531 n

end A052531

/-! ## A052531.P2604994583257291575

`and(2^n+1, -(n+1))`
-/

namespace A052531.P2604994583257291575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A052531.P2604994583257291575

namespace A052531

/-- `and(2^n+1, -(n+1))` -/
def P2604994583257291575.Spec : Prop :=
  ∀ n, P2604994583257291575.a n = A052531 n

end A052531

/-! ## A052531.P17757823255185668513

`∑{d}[n+2, floor((2/#)^n)]`
-/

namespace A052531.P17757823255185668513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(2 / (d : ℚ)) ^ n⌋

end

end A052531.P17757823255185668513

namespace A052531

/-- `∑{d}[n+2, floor((2/#)^n)]` -/
def P17757823255185668513.Spec : Prop :=
  ∀ n, P17757823255185668513.a n = A052531 n

end A052531

/-! ## A052531.P15239909374488402858

`xor(1, a(n-1)+2^(n-1))` with `a(0)=2`
-/

namespace A052531.P15239909374488402858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A052531.P15239909374488402858

namespace A052531

/-- `xor(1, a(n-1)+2^(n-1))` -/
def P15239909374488402858.Spec : Prop :=
  ∀ n, P15239909374488402858.a n = A052531 n

end A052531

/-! ## A052531.P3710783140768996978

`∑[a(n-1)+2*a(n-2)]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A052531.P3710783140768996978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052531.P3710783140768996978

namespace A052531

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P3710783140768996978.Spec : Prop :=
  ∀ n, (P3710783140768996978.a n : ℤ) = A052531 n

end A052531

/-! ## A052531.P14790000147541874394

`floor(2*a(n-2)+a(n-1)-1)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052531.P14790000147541874394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) - 1)

end

end A052531.P14790000147541874394

namespace A052531

/-- `floor(2*a(n-2)+a(n-1)-1)` -/
def P14790000147541874394.Spec : Prop :=
  ∀ n, P14790000147541874394.a n = A052531 n

end A052531

/-! ## A052531.P605234990072634869

`floor(2*a(n-2)-(1-a(n-1)))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052531.P605234990072634869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * a (n - 2) - (1 - a (n - 1))

end

end A052531.P605234990072634869

namespace A052531

/-- `floor(2*a(n-2)-(1-a(n-1)))` -/
def P605234990072634869.Spec : Prop :=
  ∀ n, P605234990072634869.a n = A052531 n

end A052531

/-! ## A052531.P1662268126607295373

`2*(a(n-2)+(a(n-1)-1)/2)` with `a(0)=2, a(1)=2`
-/

namespace A052531.P1662268126607295373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 2) + (a (n - 1) - 1) / 2)

end

end A052531.P1662268126607295373

namespace A052531

/-- `2*(a(n-2)+(a(n-1)-1)/2)` -/
def P1662268126607295373.Spec : Prop :=
  ∀ n, P1662268126607295373.a n = (A052531 n : ℚ)

end A052531

/-! ## A052531.P18242523872838147160

`2*(a(n-2)-(1-a(n-1))/2)` with `a(0)=2, a(1)=2`
-/

namespace A052531.P18242523872838147160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 2) - (1 - a (n - 1)) / 2)

end

end A052531.P18242523872838147160

namespace A052531

/-- `2*(a(n-2)-(1-a(n-1))/2)` -/
def P18242523872838147160.Spec : Prop :=
  ∀ n, P18242523872838147160.a n = (A052531 n : ℚ)

end A052531

/-! ## A052531.P3699504692561489559

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A052531.P3699504692561489559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052531.P3699504692561489559

namespace A052531

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P3699504692561489559.Spec : Prop :=
  ∀ n, (P3699504692561489559.a n : ℤ) = A052531 n

end A052531

/-! ## A052531.P12257536361786103527

`floor(a(n-1)+a(n-2)+a(n-2)-1)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052531.P12257536361786103527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - 1))

end

end A052531.P12257536361786103527

namespace A052531

/-- `floor(a(n-1)+a(n-2)+a(n-2)-1)` -/
def P12257536361786103527.Spec : Prop :=
  ∀ n, P12257536361786103527.a n = A052531 n

end A052531

/-! ## A052531.P15004165905384940722

`floor(a(n-1)-(1-a(n-2)-a(n-2)))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052531.P15004165905384940722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 2))

end

end A052531.P15004165905384940722

namespace A052531

/-- `floor(a(n-1)-(1-a(n-2)-a(n-2)))` -/
def P15004165905384940722.Spec : Prop :=
  ∀ n, P15004165905384940722.a n = A052531 n

end A052531

/-! ## A052531.P5089409965031300221

`∑[A014551(n)-floor(2^(n-1))]`
-/

namespace A052531.P5089409965031300221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052531.P5089409965031300221

namespace A052531

/-- `∑[A014551(n)-floor(2^(n-1))]` -/
def P5089409965031300221.Spec : Prop :=
  ∀ n, P5089409965031300221.a n = A052531 n

end A052531

/-! ## A052531.P12515890974005372798

`xor(A000225(n)+2, char[2*n+1])`
-/

namespace A052531.P12515890974005372798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n + 2) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052531.P12515890974005372798

namespace A052531

/-- `xor(A000225(n)+2, char[2*n+1])` -/
def P12515890974005372798.Spec : Prop :=
  ∀ n, P12515890974005372798.a n = A052531 n

end A052531

/-! ## A052531.P13672709913134177797

`A228693(A042964(n+1))`
-/

namespace A052531.P13672709913134177797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (A042964 (n + 1)).toNat

end

end A052531.P13672709913134177797

namespace A052531

/-- `A228693(A042964(n+1))` -/
def P13672709913134177797.Spec : Prop :=
  ∀ n, P13672709913134177797.a n = A052531 n

end A052531

/-! ## A052531.P1278225913371671025

`A228693(A053438(n+1))`
-/

namespace A052531.P1278225913371671025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (A053438 (n + 1)).toNat

end

end A052531.P1278225913371671025

namespace A052531

/-- `A228693(A053438(n+1))` -/
def P1278225913371671025.Spec : Prop :=
  ∀ n, P1278225913371671025.a n = A052531 n

end A052531

/-!
# A052532: Expansion of (1-x)/(1-x-x^3-x^4+x^5).

The programs for A052532, the canonical program `A052532.P13935194968825394995` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052532 has offset 0).

The definition of A052532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^3-x^4+x^5))` (program `A052532.P13935194968825394995`, by `A052532.P13935194968825394995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052532.P13935194968825394995

`ogf((1-x)/(1-x-x^3-x^4+x^5))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052532

/-- `ogf((1-x)/(1-x-x^3-x^4+x^5))` -/
def P13935194968825394995.Spec : Prop :=
  ∀ n, P13935194968825394995.a n = A052532 n

theorem P13935194968825394995.correct : P13935194968825394995.Spec := by
  intro n
  simp only [A052532]

end A052532

/-! ## A052532.P10886821958143780161

`a(n-1)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A052532.P10886821958143780161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4) - a (n - 5)

end

end A052532.P10886821958143780161

namespace A052532

/-- `a(n-1)+a(n-3)+a(n-4)-a(n-5)` -/
def P10886821958143780161.Spec : Prop :=
  ∀ n, P10886821958143780161.a n = A052532 n

end A052532

/-! ## A052532.P3003699329484726507

`A052651(n)/n!`
-/

namespace A052532.P3003699329484726507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052651 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052532.P3003699329484726507

namespace A052532

/-- `A052651(n)/n!` -/
def P3003699329484726507.Spec : Prop :=
  ∀ n, P3003699329484726507.a n = (A052532 n : ℚ)

end A052532

/-! ## A052532.P1392976882301578808

`A052651(n)/A000142(n)`
-/

namespace A052532.P1392976882301578808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052651 n : ℚ) / (A000142 n : ℚ)

end

end A052532.P1392976882301578808

namespace A052532

/-- `A052651(n)/A000142(n)` -/
def P1392976882301578808.Spec : Prop :=
  ∀ n, P1392976882301578808.a n = (A052532 n : ℚ)

end A052532

/-! ## A052532.P15702154417718657650

`A052651(n)/∏[A028310(n)]`
-/

namespace A052532.P15702154417718657650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052651 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052532.P15702154417718657650

namespace A052532

/-- `A052651(n)/∏[A028310(n)]` -/
def P15702154417718657650.Spec : Prop :=
  ∀ n, P15702154417718657650.a n = (A052532 n : ℚ)

end A052532

/-! ## A052532.P10621229217825112292

`A052651(n)/A008279(A000096(n))`
-/

namespace A052532.P10621229217825112292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052651 n : ℚ) / (A008279 (A000096 n).toNat : ℚ)

end

end A052532.P10621229217825112292

namespace A052532

/-- `A052651(n)/A008279(A000096(n))` -/
def P10621229217825112292.Spec : Prop :=
  ∀ n, P10621229217825112292.a n = (A052532 n : ℚ)

end A052532

/-!
# A052533: Expansion of (1-x)/(1-x-3*x^2).

The programs for A052533, the canonical program `A052533.P16869979869100875161` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052533 has offset 0).

The definition of A052533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-3x^2))` (program `A052533.P16869979869100875161`, by `A052533.P16869979869100875161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052533.P16869979869100875161

`ogf((1-x)/(1-x-3x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052533

/-- `ogf((1-x)/(1-x-3x^2))` -/
def P16869979869100875161.Spec : Prop :=
  ∀ n, P16869979869100875161.a n = A052533 n

theorem P16869979869100875161.correct : P16869979869100875161.Spec := by
  intro n
  simp only [A052533]

end A052533

/-! ## A052533.P4272866725637141038

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052533.P4272866725637141038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 3 * a (n - 2)

end

end A052533.P4272866725637141038

namespace A052533

/-- `a(n-1)+3*a(n-2)` -/
def P4272866725637141038.Spec : Prop :=
  ∀ n, (P4272866725637141038.a n : ℤ) = A052533 n

end A052533

/-! ## A052533.P5078433042092445134

`3-(3*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A052533.P5078433042092445134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A052533.P5078433042092445134

namespace A052533

/-- `3-(3*(1-a(n-2))-a(n-1))` -/
def P5078433042092445134.Spec : Prop :=
  ∀ n, P5078433042092445134.a n = A052533 n

end A052533

/-! ## A052533.P15962974132422193575

`a(n-1)+a(n-2)/(1-2/3)` with `a(0)=1, a(1)=0`
-/

namespace A052533.P15962974132422193575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A052533.P15962974132422193575

namespace A052533

/-- `a(n-1)+a(n-2)/(1-2/3)` -/
def P15962974132422193575.Spec : Prop :=
  ∀ n, P15962974132422193575.a n = (A052533 n : ℚ)

end A052533

/-! ## A052533.P15524647880403874189

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052533.P15524647880403874189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A052533.P15524647880403874189

namespace A052533

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P15524647880403874189.Spec : Prop :=
  ∀ n, (P15524647880403874189.a n : ℤ) = A052533 n

end A052533

/-! ## A052533.P7199283537300868279

`A105476(n)-a(n-1)` with `a(0)=1`
-/

namespace A052533.P7199283537300868279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105476 n - a (n - 1)

end

end A052533.P7199283537300868279

namespace A052533

/-- `A105476(n)-a(n-1)` -/
def P7199283537300868279.Spec : Prop :=
  ∀ n, P7199283537300868279.a n = A052533 n

end A052533

/-! ## A052533.P15440765296122832851

`A075118(n)-A006130(n)`
-/

namespace A052533.P15440765296122832851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 n - A006130 n

end

end A052533.P15440765296122832851

namespace A052533

/-- `A075118(n)-A006130(n)` -/
def P15440765296122832851.Spec : Prop :=
  ∀ n, P15440765296122832851.a n = A052533 n

end A052533

/-! ## A052533.P2696800493718095088

`A006130(n)-abs(A182228(n))`
-/

namespace A052533.P2696800493718095088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n - |A182228 n|

end

end A052533.P2696800493718095088

namespace A052533

/-- `A006130(n)-abs(A182228(n))` -/
def P2696800493718095088.Spec : Prop :=
  ∀ n, P2696800493718095088.a n = A052533 n

end A052533

/-! ## A052533.P791053446358058450

`A006130(n)+A006130(n)-A006138(n)`
-/

namespace A052533.P791053446358058450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A006130 n - A006138 n)

end

end A052533.P791053446358058450

namespace A052533

/-- `A006130(n)+A006130(n)-A006138(n)` -/
def P791053446358058450.Spec : Prop :=
  ∀ n, P791053446358058450.a n = A052533 n

end A052533

/-! ## A052533.P2008395233015228869

`A006130(n)+A006130(n)-∑[A105476(n)]`
-/

namespace A052533.P2008395233015228869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A006130 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052533.P2008395233015228869

namespace A052533

/-- `A006130(n)+A006130(n)-∑[A105476(n)]` -/
def P2008395233015228869.Spec : Prop :=
  ∀ n, P2008395233015228869.a n = A052533 n

end A052533

/-! ## A052533.P12327052572431653637

`Δ[abs(A182228(n))]`
-/

namespace A052533.P12327052572431653637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182228 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052533.P12327052572431653637

namespace A052533

/-- `Δ[abs(A182228(n))]` -/
def P12327052572431653637.Spec : Prop :=
  ∀ n, P12327052572431653637.a n = A052533 n

end A052533

/-! ## A052533.P16665915806629902629

`Δ[A006138(n)-A006130(n)]`
-/

namespace A052533.P16665915806629902629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n - A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052533.P16665915806629902629

namespace A052533

/-- `Δ[A006138(n)-A006130(n)]` -/
def P16665915806629902629.Spec : Prop :=
  ∀ n, P16665915806629902629.a n = A052533 n

end A052533

/-! ## A052533.P5595288353932117478

`A006138(n+1)-A105963(n)`
-/

namespace A052533.P5595288353932117478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) - A105963 n

end

end A052533.P5595288353932117478

namespace A052533

/-- `A006138(n+1)-A105963(n)` -/
def P5595288353932117478.Spec : Prop :=
  ∀ n, P5595288353932117478.a n = A052533 n

end A052533

/-! ## A052533.P11797692256223150933

`A228661(n+1)-A006138(n)`
-/

namespace A052533.P11797692256223150933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228661 (n + 1) - A006138 n

end

end A052533.P11797692256223150933

namespace A052533

/-- `A228661(n+1)-A006138(n)` -/
def P11797692256223150933.Spec : Prop :=
  ∀ n, P11797692256223150933.a n = A052533 n

end A052533

/-! ## A052533.P7128360088254000047

`A384614(n+1)-A274977(n)`
-/

namespace A052533.P7128360088254000047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384614 (n + 1) - A274977 n

end

end A052533.P7128360088254000047

namespace A052533

/-- `A384614(n+1)-A274977(n)` -/
def P7128360088254000047.Spec : Prop :=
  ∀ n, P7128360088254000047.a n = A052533 n

end A052533

/-! ## A052533.P3964689426518256172

`abs(A182228(n+1)+A182228(n))`
-/

namespace A052533.P3964689426518256172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182228 (n + 1) + A182228 n|

end

end A052533.P3964689426518256172

namespace A052533

/-- `abs(A182228(n+1)+A182228(n))` -/
def P3964689426518256172.Spec : Prop :=
  ∀ n, P3964689426518256172.a n = A052533 n

end A052533

/-! ## A052533.P6344736795244373251

`2*A006130(n)-∑[A105476(n)]`
-/

namespace A052533.P6344736795244373251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006130 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052533.P6344736795244373251

namespace A052533

/-- `2*A006130(n)-∑[A105476(n)]` -/
def P6344736795244373251.Spec : Prop :=
  ∀ n, P6344736795244373251.a n = A052533 n

end A052533

/-! ## A052533.P18374300215413494107

`A274977(n)-2*Δ[A006130(n)]`
-/

namespace A052533.P18374300215413494107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274977 n - 2 * (f1 (n + 1) - f1 n)

end

end A052533.P18374300215413494107

namespace A052533

/-- `A274977(n)-2*Δ[A006130(n)]` -/
def P18374300215413494107.Spec : Prop :=
  ∀ n, P18374300215413494107.a n = A052533 n

end A052533

/-! ## A052533.P10242044548241908410

`A006130(n)+A105963(n)-A274977(n)`
-/

namespace A052533.P10242044548241908410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A105963 n - A274977 n)

end

end A052533.P10242044548241908410

namespace A052533

/-- `A006130(n)+A105963(n)-A274977(n)` -/
def P10242044548241908410.Spec : Prop :=
  ∀ n, P10242044548241908410.a n = A052533 n

end A052533

/-! ## A052533.P2924425934573029926

`A006130(n+1)+A006130(n)-A105963(n)`
-/

namespace A052533.P2924425934573029926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A006130 n - A105963 n)

end

end A052533.P2924425934573029926

namespace A052533

/-- `A006130(n+1)+A006130(n)-A105963(n)` -/
def P2924425934573029926.Spec : Prop :=
  ∀ n, P2924425934573029926.a n = A052533 n

end A052533

/-!
# A052534: Expansion of (1-x)*(1+x)/(1-2*x-x^2+x^3).

The programs for A052534, the canonical program `A052534.P16324848332930477974` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052534 has offset 0).

The definition of A052534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x-x^2+x^3))` (program `A052534.P16324848332930477974`, by `A052534.P16324848332930477974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052534.P16324848332930477974

`ogf((1-x^2)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052534

/-- `ogf((1-x^2)/(1-2x-x^2+x^3))` -/
def P16324848332930477974.Spec : Prop :=
  ∀ n, P16324848332930477974.a n = A052534 n

theorem P16324848332930477974.correct : P16324848332930477974.Spec := by
  intro n
  simp only [A052534]

end A052534

/-! ## A052534.P17950955840802357062

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052534.P17950955840802357062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A052534.P17950955840802357062

namespace A052534

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P17950955840802357062.Spec : Prop :=
  ∀ n, P17950955840802357062.a n = A052534 n

end A052534

/-! ## A052534.P17000417989269197812

`A006054(n+2)-A006054(n)`
-/

namespace A052534.P17000417989269197812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 2) - A006054 n

end

end A052534.P17000417989269197812

namespace A052534

/-- `A006054(n+2)-A006054(n)` -/
def P17000417989269197812.Spec : Prop :=
  ∀ n, P17000417989269197812.a n = A052534 n

end A052534

/-! ## A052534.P1138634825133161354

`a(n-2)-(a(n-3)-2*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052534.P1138634825133161354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) - (a (n - 3) - 2 * a (n - 1))

end

end A052534.P1138634825133161354

namespace A052534

/-- `a(n-2)-(a(n-3)-2*a(n-1))` -/
def P1138634825133161354.Spec : Prop :=
  ∀ n, P1138634825133161354.a n = A052534 n

end A052534

/-! ## A052534.P4285090361520861236

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052534.P4285090361520861236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052534.P4285090361520861236

namespace A052534

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P4285090361520861236.Spec : Prop :=
  ∀ n, P4285090361520861236.a n = A052534 n

end A052534

/-! ## A052534.P11150616203292400241

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052534.P11150616203292400241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A052534.P11150616203292400241

namespace A052534

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P11150616203292400241.Spec : Prop :=
  ∀ n, P11150616203292400241.a n = A052534 n

end A052534

/-! ## A052534.P12019048552035196819

`A187069(2*n+3)`
-/

namespace A052534.P12019048552035196819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 3)

end

end A052534.P12019048552035196819

namespace A052534

/-- `A187069(2*n+3)` -/
def P12019048552035196819.Spec : Prop :=
  ∀ n, P12019048552035196819.a n = A052534 n

end A052534

/-! ## A052534.P15213455143859311351

`∑[∑[A106803(n)]]+1`
-/

namespace A052534.P15213455143859311351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052534.P15213455143859311351

namespace A052534

/-- `∑[∑[A106803(n)]]+1` -/
def P15213455143859311351.Spec : Prop :=
  ∀ n, P15213455143859311351.a n = A052534 n

end A052534

/-! ## A052534.P8004227524052206996

`∑[A006054(n+1)]+1`
-/

namespace A052534.P8004227524052206996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052534.P8004227524052206996

namespace A052534

/-- `∑[A006054(n+1)]+1` -/
def P8004227524052206996.Spec : Prop :=
  ∀ n, P8004227524052206996.a n = A052534 n

end A052534

/-! ## A052534.P10263562031444856338

`∑[abs(∑[A199853(n)])]+n`
-/

namespace A052534.P10263562031444856338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199853 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A052534.P10263562031444856338

namespace A052534

/-- `∑[abs(∑[A199853(n)])]+n` -/
def P10263562031444856338.Spec : Prop :=
  ∀ n, P10263562031444856338.a n = A052534 n

end A052534

/-! ## A052534.P5136465321834783456

`A286062(n)-a(n-1)` with `a(0)=1`
-/

namespace A052534.P5136465321834783456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286062 n - a (n - 1)

end

end A052534.P5136465321834783456

namespace A052534

/-- `A286062(n)-a(n-1)` -/
def P5136465321834783456.Spec : Prop :=
  ∀ n, P5136465321834783456.a n = A052534 n

end A052534

/-! ## A052534.P12484074110474175555

`∑[∑[A187070(2*n)]]+1`
-/

namespace A052534.P12484074110474175555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052534.P12484074110474175555

namespace A052534

/-- `∑[∑[A187070(2*n)]]+1` -/
def P12484074110474175555.Spec : Prop :=
  ∀ n, P12484074110474175555.a n = A052534 n

end A052534

/-! ## A052534.P6154784037917463896

`A106805(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052534.P6154784037917463896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106805 (n - 1) + a (n - 1)

end

end A052534.P6154784037917463896

namespace A052534

/-- `A106805(n-1)+a(n-1)` -/
def P6154784037917463896.Spec : Prop :=
  ∀ n, P6154784037917463896.a n = A052534 n

end A052534

/-! ## A052534.P1643878352228785017

`A106803(n)+A077998(n)`
-/

namespace A052534.P1643878352228785017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 n + A077998 n

end

end A052534.P1643878352228785017

namespace A052534

/-- `A106803(n)+A077998(n)` -/
def P1643878352228785017.Spec : Prop :=
  ∀ n, P1643878352228785017.a n = A052534 n

end A052534

/-! ## A052534.P5644680769540170355

`A106805(n)-A006054(n)`
-/

namespace A052534.P5644680769540170355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n - A006054 n

end

end A052534.P5644680769540170355

namespace A052534

/-- `A106805(n)-A006054(n)` -/
def P5644680769540170355.Spec : Prop :=
  ∀ n, P5644680769540170355.a n = A052534 n

end A052534

/-! ## A052534.P15843035882080295516

`∑[A006054(A028310(n)+1)]`
-/

namespace A052534.P15843035882080295516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052534.P15843035882080295516

namespace A052534

/-- `∑[A006054(A028310(n)+1)]` -/
def P15843035882080295516.Spec : Prop :=
  ∀ n, P15843035882080295516.a n = A052534 n

end A052534

/-! ## A052534.P15103527743901769926

`A077998(n)+Δ[A006054(n)]`
-/

namespace A052534.P15103527743901769926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n + (f1 (n + 1) - f1 n)

end

end A052534.P15103527743901769926

namespace A052534

/-- `A077998(n)+Δ[A006054(n)]` -/
def P15103527743901769926.Spec : Prop :=
  ∀ n, P15103527743901769926.a n = A052534 n

end A052534

/-! ## A052534.P1077533141451001604

`A006356(n)-∑[A106803(n)]`
-/

namespace A052534.P1077533141451001604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052534.P1077533141451001604

namespace A052534

/-- `A006356(n)-∑[A106803(n)]` -/
def P1077533141451001604.Spec : Prop :=
  ∀ n, P1077533141451001604.a n = A052534 n

end A052534

/-! ## A052534.P14728315194609083086

`A106803(n+1)+A106803(n)`
-/

namespace A052534.P14728315194609083086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1) + A106803 n

end

end A052534.P14728315194609083086

namespace A052534

/-- `A106803(n+1)+A106803(n)` -/
def P14728315194609083086.Spec : Prop :=
  ∀ n, P14728315194609083086.a n = A052534 n

end A052534

/-! ## A052534.P5284377710454158761

`A187070(2*n)+A077998(n)`
-/

namespace A052534.P5284377710454158761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n) + A077998 n

end

end A052534.P5284377710454158761

namespace A052534

/-- `A187070(2*n)+A077998(n)` -/
def P5284377710454158761.Spec : Prop :=
  ∀ n, P5284377710454158761.a n = A052534 n

end A052534

/-!
# A052535: Expansion of (1-x)*(1+x)/(1-x-2*x^2+x^4).

The programs for A052535, the canonical program `A052535.P13167928089564966110` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052535 has offset 0).

The definition of A052535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-2x^2+x^4))` (program `A052535.P13167928089564966110`, by `A052535.P13167928089564966110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052535.P13167928089564966110

`ogf((1-x^2)/(1-x-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052535

/-- `ogf((1-x^2)/(1-x-2x^2+x^4))` -/
def P13167928089564966110.Spec : Prop :=
  ∀ n, P13167928089564966110.a n = A052535 n

theorem P13167928089564966110.correct : P13167928089564966110.Spec := by
  intro n
  simp only [A052535]

end A052535

/-! ## A052535.P1465466086533877916

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A052535.P1465466086533877916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 4)

end

end A052535.P1465466086533877916

namespace A052535

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P1465466086533877916.Spec : Prop :=
  ∀ n, P1465466086533877916.a n = A052535 n

end A052535

/-! ## A052535.P16494711287559578677

`A003269(Δ[n²])`
-/

namespace A052535.P16494711287559578677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052535.P16494711287559578677

namespace A052535

/-- `A003269(Δ[n²])` -/
def P16494711287559578677.Spec : Prop :=
  ∀ n, P16494711287559578677.a n = A052535 n

end A052535

/-! ## A052535.P16337451428816943782

`A017898(2*(n+2))`
-/

namespace A052535.P16337451428816943782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * (n + 2))

end

end A052535.P16337451428816943782

namespace A052535

/-- `A017898(2*(n+2))` -/
def P16337451428816943782.Spec : Prop :=
  ∀ n, P16337451428816943782.a n = A052535 n

end A052535

/-! ## A052535.P1855879280024202410

`A122522(4*n+1)`
-/

namespace A052535.P1855879280024202410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (4 * n + 1)

end

end A052535.P1855879280024202410

namespace A052535

/-- `A122522(4*n+1)` -/
def P1855879280024202410.Spec : Prop :=
  ∀ n, P1855879280024202410.a n = A052535 n

end A052535

/-! ## A052535.P18073802356401646455

`∑[A122789(2*n+1)]`
-/

namespace A052535.P18073802356401646455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052535.P18073802356401646455

namespace A052535

/-- `∑[A122789(2*n+1)]` -/
def P18073802356401646455.Spec : Prop :=
  ∀ n, P18073802356401646455.a n = A052535 n

end A052535

/-! ## A052535.P8804962019932500315

`A158943(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052535.P8804962019932500315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A158943 n + a (n - 2)

end

end A052535.P8804962019932500315

namespace A052535

/-- `A158943(n)+a(n-2)` -/
def P8804962019932500315.Spec : Prop :=
  ∀ n, P8804962019932500315.a n = A052535 n

end A052535

/-! ## A052535.P3329108441628535094

`xor(1, xor(1, A003269(2*n+1)))`
-/

namespace A052535.P3329108441628535094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A003269 (2 * n + 1)))

end

end A052535.P3329108441628535094

namespace A052535

/-- `xor(1, xor(1, A003269(2*n+1)))` -/
def P3329108441628535094.Spec : Prop :=
  ∀ n, P3329108441628535094.a n = A052535 n

end A052535

/-! ## A052535.P13035426482629626731

`A108742(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A052535.P13035426482629626731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A108742 (n - 2) + a (n - 1)

end

end A052535.P13035426482629626731

namespace A052535

/-- `A108742(n-2)+a(n-1)` -/
def P13035426482629626731.Spec : Prop :=
  ∀ n, P13035426482629626731.a n = A052535 n

end A052535

/-! ## A052535.P12367116391805981590

`A052969(abs(1-n))+A052969(n)`
-/

namespace A052535.P12367116391805981590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 |1 - (n : ℤ)|.toNat + A052969 n

end

end A052535.P12367116391805981590

namespace A052535

/-- `A052969(abs(1-n))+A052969(n)` -/
def P12367116391805981590.Spec : Prop :=
  ∀ n, P12367116391805981590.a n = A052535 n

end A052535

/-! ## A052535.P5479494664547423659

`A003269(2*n+1)+A000007(n+1)`
-/

namespace A052535.P5479494664547423659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) + A000007 (n + 1)

end

end A052535.P5479494664547423659

namespace A052535

/-- `A003269(2*n+1)+A000007(n+1)` -/
def P5479494664547423659.Spec : Prop :=
  ∀ n, P5479494664547423659.a n = A052535 n

end A052535

/-! ## A052535.P16686470673039494145

`A003269(2*n+1)*A057427(n+1)`
-/

namespace A052535.P16686470673039494145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) * A057427 (n + 1)

end

end A052535.P16686470673039494145

namespace A052535

/-- `A003269(2*n+1)*A057427(n+1)` -/
def P16686470673039494145.Spec : Prop :=
  ∀ n, P16686470673039494145.a n = A052535 n

end A052535

/-! ## A052535.P1032162250872150526

`A122789(2*(n+1))+A122789(2*n)`
-/

namespace A052535.P1032162250872150526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * (n + 1)) + A122789 (2 * n)

end

end A052535.P1032162250872150526

namespace A052535

/-- `A122789(2*(n+1))+A122789(2*n)` -/
def P1032162250872150526.Spec : Prop :=
  ∀ n, P1032162250872150526.a n = A052535 n

end A052535

/-! ## A052535.P11756031801338051329

`A003269(2*n+1)*A033999(2*n)`
-/

namespace A052535.P11756031801338051329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) * A033999 (2 * n)

end

end A052535.P11756031801338051329

namespace A052535

/-- `A003269(2*n+1)*A033999(2*n)` -/
def P11756031801338051329.Spec : Prop :=
  ∀ n, P11756031801338051329.a n = A052535 n

end A052535

/-! ## A052535.P17970849817356018176

`lcm(A003269(2*n+1), A062157(n+1))`
-/

namespace A052535.P17970849817356018176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003269 (2 * n + 1)) (A062157 (n + 1))

end

end A052535.P17970849817356018176

namespace A052535

/-- `lcm(A003269(2*n+1), A062157(n+1))` -/
def P17970849817356018176.Spec : Prop :=
  ∀ n, (P17970849817356018176.a n : ℤ) = A052535 n

end A052535

/-! ## A052535.P1146562789105646676

`A079979(2*n+1)+A003269(2*n+1)`
-/

namespace A052535.P1146562789105646676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (2 * n + 1) + A003269 (2 * n + 1)

end

end A052535.P1146562789105646676

namespace A052535

/-- `A079979(2*n+1)+A003269(2*n+1)` -/
def P1146562789105646676.Spec : Prop :=
  ∀ n, P1146562789105646676.a n = A052535 n

end A052535

/-! ## A052535.P7942430638900021091

`A121262(2*n+1)+A003269(2*n+1)`
-/

namespace A052535.P7942430638900021091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * n + 1) + A003269 (2 * n + 1)

end

end A052535.P7942430638900021091

namespace A052535

/-- `A121262(2*n+1)+A003269(2*n+1)` -/
def P7942430638900021091.Spec : Prop :=
  ∀ n, P7942430638900021091.a n = A052535 n

end A052535

/-! ## A052535.P8123877452482670553

`A003269(2*n+1)*A062157(2*n+1)`
-/

namespace A052535.P8123877452482670553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) * A062157 (2 * n + 1)

end

end A052535.P8123877452482670553

namespace A052535

/-- `A003269(2*n+1)*A062157(2*n+1)` -/
def P8123877452482670553.Spec : Prop :=
  ∀ n, P8123877452482670553.a n = A052535 n

end A052535

/-! ## A052535.P14786737655428761231

`A003269(2*n+1)+C(n, A000032(n+1))`
-/

namespace A052535.P14786737655428761231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) + (Nat.choose n (A000032 (n + 1)).toNat : ℤ)

end

end A052535.P14786737655428761231

namespace A052535

/-- `A003269(2*n+1)+C(n, A000032(n+1))` -/
def P14786737655428761231.Spec : Prop :=
  ∀ n, P14786737655428761231.a n = A052535 n

end A052535

/-! ## A052535.P14465387143873191037

`A003269(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A052535.P14465387143873191037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A052535.P14465387143873191037

namespace A052535

/-- `A003269(2*n+1)+2-A020639(2*(n+1))` -/
def P14465387143873191037.Spec : Prop :=
  ∀ n, P14465387143873191037.a n = A052535 n

end A052535

/-!
# A052536: Number of compositions of n when parts 1 and 2 are of two kinds.

The programs for A052536, the canonical program `A052536.P4388754108064257520` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052536 has offset 0).

The definition of A052536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052536.P4388754108064257520

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052536

/-- `3*a(n-1)-a(n-3)` -/
def P4388754108064257520.Spec : Prop :=
  ∀ n, P4388754108064257520.a n = A052536 n

theorem P4388754108064257520.correct : P4388754108064257520.Spec := by
  intro n
  simp only [A052536]

end A052536

/-! ## A052536.P1826094716946195027

`ogf((1-x)/(1-3x+x^3))`
-/

namespace A052536.P1826094716946195027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 0, 1] n

end

end A052536.P1826094716946195027

namespace A052536

/-- `ogf((1-x)/(1-3x+x^3))` -/
def P1826094716946195027.Spec : Prop :=
  ∀ n, P1826094716946195027.a n = A052536 n

end A052536

/-! ## A052536.P18130662211179093143

`∑[A052545(n)]`
-/

namespace A052536.P18130662211179093143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052536.P18130662211179093143

namespace A052536

/-- `∑[A052545(n)]` -/
def P18130662211179093143.Spec : Prop :=
  ∀ n, P18130662211179093143.a n = A052536 n

end A052536

/-! ## A052536.P11461118285488552952

`record[abs(A122099(n))]`
-/

namespace A052536.P11461118285488552952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052536.P11461118285488552952

namespace A052536

/-- `record[abs(A122099(n))]` -/
def P11461118285488552952.Spec : Prop :=
  ∀ n, P11461118285488552952.a n = A052536 n

end A052536

/-! ## A052536.P5762480184327171872

`record[abs(A122100(n))]`
-/

namespace A052536.P5762480184327171872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122100 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052536.P5762480184327171872

namespace A052536

/-- `record[abs(A122100(n))]` -/
def P5762480184327171872.Spec : Prop :=
  ∀ n, P5762480184327171872.a n = A052536 n

end A052536

/-! ## A052536.P3026276390965755811

`abs(A122099(n+3))`
-/

namespace A052536.P3026276390965755811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 (n + 3)|

end

end A052536.P3026276390965755811

namespace A052536

/-- `abs(A122099(n+3))` -/
def P3026276390965755811.Spec : Prop :=
  ∀ n, P3026276390965755811.a n = A052536 n

end A052536

/-! ## A052536.P1851127180557418829

`abs(A122100(n+3))`
-/

namespace A052536.P1851127180557418829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122100 (n + 3)|

end

end A052536.P1851127180557418829

namespace A052536

/-- `abs(A122100(n+3))` -/
def P1851127180557418829.Spec : Prop :=
  ∀ n, P1851127180557418829.a n = A052536 n

end A052536

/-! ## A052536.P8930402616728160549

`A187505(3*(n+1))`
-/

namespace A052536.P8930402616728160549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * (n + 1))

end

end A052536.P8930402616728160549

namespace A052536

/-- `A187505(3*(n+1))` -/
def P8930402616728160549.Spec : Prop :=
  ∀ n, P8930402616728160549.a n = A052536 n

end A052536

/-! ## A052536.P14595652147318870972

`record[-A122100(n+1)]`
-/

namespace A052536.P14595652147318870972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A122100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052536.P14595652147318870972

namespace A052536

/-- `record[-A122100(n+1)]` -/
def P14595652147318870972.Spec : Prop :=
  ∀ n, P14595652147318870972.a n = A052536 n

end A052536

/-! ## A052536.P5818325753827547476

`A187504(3*(n+1)+1)`
-/

namespace A052536.P5818325753827547476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * (n + 1) + 1)

end

end A052536.P5818325753827547476

namespace A052536

/-- `A187504(3*(n+1)+1)` -/
def P5818325753827547476.Spec : Prop :=
  ∀ n, P5818325753827547476.a n = A052536 n

end A052536

/-! ## A052536.P3145080357516069088

`A215448(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A052536.P3145080357516069088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215448 n + 2 * a (n - 1)

end

end A052536.P3145080357516069088

namespace A052536

/-- `A215448(n)+2*a(n-1)` -/
def P3145080357516069088.Spec : Prop :=
  ∀ n, P3145080357516069088.a n = A052536 n

end A052536

/-! ## A052536.P15190651633801495629

`A147704(n)+A123941(n)`
-/

namespace A052536.P15190651633801495629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 n + A123941 n

end

end A052536.P15190651633801495629

namespace A052536

/-- `A147704(n)+A123941(n)` -/
def P15190651633801495629.Spec : Prop :=
  ∀ n, P15190651633801495629.a n = A052536 n

end A052536

/-! ## A052536.P13939130509355131710

`A052545(n)-A122100(n+2)`
-/

namespace A052536.P13939130509355131710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n - A122100 (n + 2)

end

end A052536.P13939130509355131710

namespace A052536

/-- `A052545(n)-A122100(n+2)` -/
def P13939130509355131710.Spec : Prop :=
  ∀ n, P13939130509355131710.a n = A052536 n

end A052536

/-! ## A052536.P10452288973938840569

`A215448(n+1)-A122100(n+1)`
-/

namespace A052536.P10452288973938840569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 (n + 1) - A122100 (n + 1)

end

end A052536.P10452288973938840569

namespace A052536

/-- `A215448(n+1)-A122100(n+1)` -/
def P10452288973938840569.Spec : Prop :=
  ∀ n, P10452288973938840569.a n = A052536 n

end A052536

/-! ## A052536.P16031344874440966445

`A052545(n)+A052545(n)-A215448(n)`
-/

namespace A052536.P16031344874440966445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n + (A052545 n - A215448 n)

end

end A052536.P16031344874440966445

namespace A052536

/-- `A052545(n)+A052545(n)-A215448(n)` -/
def P16031344874440966445.Spec : Prop :=
  ∀ n, P16031344874440966445.a n = A052536 n

end A052536

/-! ## A052536.P15125015088893575143

`A052545(n)-(A122100(n)-A215448(n))`
-/

namespace A052536.P15125015088893575143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n - (A122100 n - A215448 n)

end

end A052536.P15125015088893575143

namespace A052536

/-- `A052545(n)-(A122100(n)-A215448(n))` -/
def P15125015088893575143.Spec : Prop :=
  ∀ n, P15125015088893575143.a n = A052536 n

end A052536

/-! ## A052536.P11390169165823378211

`Δ[A123941(n)]`
-/

namespace A052536.P11390169165823378211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052536.P11390169165823378211

namespace A052536

/-- `Δ[A123941(n)]` -/
def P11390169165823378211.Spec : Prop :=
  ∀ n, P11390169165823378211.a n = A052536 n

end A052536

/-! ## A052536.P3263791955226573324

`record[Δ[record[A187504(n)]]]`
-/

namespace A052536.P3263791955226573324
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052536.P3263791955226573324

namespace A052536

/-- `record[Δ[record[A187504(n)]]]` -/
def P3263791955226573324.Spec : Prop :=
  ∀ n, P3263791955226573324.a n = A052536 n

end A052536

/-! ## A052536.P7561089264736215706

`A123891(n+1)/3`
-/

namespace A052536.P7561089264736215706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123891 (n + 1) : ℚ) / 3

end

end A052536.P7561089264736215706

namespace A052536

/-- `A123891(n+1)/3` -/
def P7561089264736215706.Spec : Prop :=
  ∀ n, P7561089264736215706.a n = (A052536 n : ℚ)

end A052536

/-! ## A052536.P11857657453815609060

`Δ[A187503(3*(n+1)+1)]`
-/

namespace A052536.P11857657453815609060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052536.P11857657453815609060

namespace A052536

/-- `Δ[A187503(3*(n+1)+1)]` -/
def P11857657453815609060.Spec : Prop :=
  ∀ n, P11857657453815609060.a n = A052536 n

end A052536

/-!
# A052537: Expansion of (1-x)/(1-x-2*x^3).

The programs for A052537, the canonical program `A052537.P714385766570465894` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052537 has offset 0).

The definition of A052537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^3))` (program `A052537.P714385766570465894`, by `A052537.P714385766570465894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052537.P714385766570465894

`ogf((1-x)/(1-x-2x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052537

/-- `ogf((1-x)/(1-x-2x^3))` -/
def P714385766570465894.Spec : Prop :=
  ∀ n, P714385766570465894.a n = A052537 n

theorem P714385766570465894.correct : P714385766570465894.Spec := by
  intro n
  simp only [A052537]

end A052537

/-! ## A052537.P17171779530553115781

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052537.P17171779530553115781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + 2 * a (n - 3)

end

end A052537.P17171779530553115781

namespace A052537

/-- `a(n-1)+2*a(n-3)` -/
def P17171779530553115781.Spec : Prop :=
  ∀ n, (P17171779530553115781.a n : ℤ) = A052537 n

end A052537

/-! ## A052537.P12624065829913865540

`a(n-1)-floor(-(2*a(n-3)))` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052537.P12624065829913865540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (-(2 * a (n - 3)))

end

end A052537.P12624065829913865540

namespace A052537

/-- `a(n-1)-floor(-(2*a(n-3)))` -/
def P12624065829913865540.Spec : Prop :=
  ∀ n, P12624065829913865540.a n = A052537 n

end A052537

/-! ## A052537.P16820842951308499476

`a(n-1)-ceil(-(2*a(n-3)))` with `a(0)=1, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A052537.P16820842951308499476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (-(2 * a (n - 3)))

end

end A052537.P16820842951308499476

namespace A052537

/-- `a(n-1)-ceil(-(2*a(n-3)))` -/
def P16820842951308499476.Spec : Prop :=
  ∀ n, P16820842951308499476.a n = A052537 n

end A052537

/-! ## A052537.P686636188417966710

`a(n-1)-round(-(2*a(n-3)))` with `a(0)=1, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A052537.P686636188417966710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (-(2 * a (n - 3)))

end

end A052537.P686636188417966710

namespace A052537

/-- `a(n-1)-round(-(2*a(n-3)))` -/
def P686636188417966710.Spec : Prop :=
  ∀ n, P686636188417966710.a n = A052537 n

end A052537

/-! ## A052537.P5506955447655738053

`a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052537.P5506955447655738053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) + (a (n - 1) + a (n - 3))

end

end A052537.P5506955447655738053

namespace A052537

/-- `a(n-3)+a(n-1)+a(n-3)` -/
def P5506955447655738053.Spec : Prop :=
  ∀ n, (P5506955447655738053.a n : ℤ) = A052537 n

end A052537

/-! ## A052537.P4045860554080652932

`3*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052537.P4045860554080652932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A052537.P4045860554080652932

namespace A052537

/-- `3*a(n-3)-(a(n-3)-a(n-1))` -/
def P4045860554080652932.Spec : Prop :=
  ∀ n, P4045860554080652932.a n = A052537 n

end A052537

/-! ## A052537.P17707674743848666559

`A203175(n+1)-Δ[A203175(n+1)]`
-/

namespace A052537.P17707674743848666559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 1) - (f1 (n + 1) - f1 n)

end

end A052537.P17707674743848666559

namespace A052537

/-- `A203175(n+1)-Δ[A203175(n+1)]` -/
def P17707674743848666559.Spec : Prop :=
  ∀ n, P17707674743848666559.a n = A052537 n

end A052537

/-! ## A052537.P16169615882147267177

`A003229(n)+A077949(n)-A203175(n+2)`
-/

namespace A052537.P16169615882147267177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n + (A077949 n - A203175 (n + 2))

end

end A052537.P16169615882147267177

namespace A052537

/-- `A003229(n)+A077949(n)-A203175(n+2)` -/
def P16169615882147267177.Spec : Prop :=
  ∀ n, P16169615882147267177.a n = A052537 n

end A052537

/-! ## A052537.P160296566200709100

`A077949(n+1)+A077949(n)-A203175(n+2)`
-/

namespace A052537.P160296566200709100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 (n + 1) + (A077949 n - A203175 (n + 2))

end

end A052537.P160296566200709100

namespace A052537

/-- `A077949(n+1)+A077949(n)-A203175(n+2)` -/
def P160296566200709100.Spec : Prop :=
  ∀ n, P160296566200709100.a n = A052537 n

end A052537

/-! ## A052537.P6402355139772018836

`A203175(n+1)+A203175(n+1)-A203175(n+2)`
-/

namespace A052537.P6402355139772018836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 1) + (A203175 (n + 1) - A203175 (n + 2))

end

end A052537.P6402355139772018836

namespace A052537

/-- `A203175(n+1)+A203175(n+1)-A203175(n+2)` -/
def P6402355139772018836.Spec : Prop :=
  ∀ n, P6402355139772018836.a n = A052537 n

end A052537

/-! ## A052537.P12009750930626881567

`Δ[Δ[A003229(n)/2]]`
-/

namespace A052537.P12009750930626881567
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003229 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052537.P12009750930626881567

namespace A052537

/-- `Δ[Δ[A003229(n)/2]]` -/
def P12009750930626881567.Spec : Prop :=
  ∀ n, P12009750930626881567.a n = (A052537 n : ℚ)

end A052537

/-! ## A052537.P5640022595458956976

`Δ[Δ[A077949(n+1)/2]]`
-/

namespace A052537.P5640022595458956976
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052537.P5640022595458956976

namespace A052537

/-- `Δ[Δ[A077949(n+1)/2]]` -/
def P5640022595458956976.Spec : Prop :=
  ∀ n, P5640022595458956976.a n = (A052537 n : ℚ)

end A052537

/-! ## A052537.P7167426019523509191

`A003476(n+2)-A003229(n+1)`
-/

namespace A052537.P7167426019523509191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - A003229 (n + 1)

end

end A052537.P7167426019523509191

namespace A052537

/-- `A003476(n+2)-A003229(n+1)` -/
def P7167426019523509191.Spec : Prop :=
  ∀ n, P7167426019523509191.a n = A052537 n

end A052537

/-! ## A052537.P9077087587901523046

`A003476(n+2)-A077949(n+2)`
-/

namespace A052537.P9077087587901523046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - A077949 (n + 2)

end

end A052537.P9077087587901523046

namespace A052537

/-- `A003476(n+2)-A077949(n+2)` -/
def P9077087587901523046.Spec : Prop :=
  ∀ n, P9077087587901523046.a n = A052537 n

end A052537

/-! ## A052537.P11919992338071293602

`Δ[A003476(n+1)-Δ[A003476(n+1)]]`
-/

namespace A052537.P11919992338071293602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052537.P11919992338071293602

namespace A052537

/-- `Δ[A003476(n+1)-Δ[A003476(n+1)]]` -/
def P11919992338071293602.Spec : Prop :=
  ∀ n, P11919992338071293602.a n = A052537 n

end A052537

/-!
# A052538: Expansion of (1-x)/(1-2*x-3*x^2+3*x^3).

The programs for A052538, the canonical program `A052538.P8231341099716162713` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052538 has offset 0).

The definition of A052538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-3x^2+3x^3))` (program `A052538.P8231341099716162713`, by `A052538.P8231341099716162713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052538.P8231341099716162713

`ogf((1-x)/(1-2x-3x^2+3x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052538

/-- `ogf((1-x)/(1-2x-3x^2+3x^3))` -/
def P8231341099716162713.Spec : Prop :=
  ∀ n, P8231341099716162713.a n = A052538 n

theorem P8231341099716162713.correct : P8231341099716162713.Spec := by
  intro n
  simp only [A052538]

end A052538

/-! ## A052538.P581979778072095252

`2*a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A052538.P581979778072095252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 3 * a (n - 3)

end

end A052538.P581979778072095252

namespace A052538

/-- `2*a(n-1)+3*a(n-2)-3*a(n-3)` -/
def P581979778072095252.Spec : Prop :=
  ∀ n, P581979778072095252.a n = A052538 n

end A052538

/-! ## A052538.P6662440914858286775

`A052664(n)/n!`
-/

namespace A052538.P6662440914858286775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052664 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052538.P6662440914858286775

namespace A052538

/-- `A052664(n)/n!` -/
def P6662440914858286775.Spec : Prop :=
  ∀ n, P6662440914858286775.a n = (A052538 n : ℚ)

end A052538

/-! ## A052538.P15715549343996774309

`A052664(n)/A000142(n)`
-/

namespace A052538.P15715549343996774309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052664 n : ℚ) / (A000142 n : ℚ)

end

end A052538.P15715549343996774309

namespace A052538

/-- `A052664(n)/A000142(n)` -/
def P15715549343996774309.Spec : Prop :=
  ∀ n, P15715549343996774309.a n = (A052538 n : ℚ)

end A052538

/-! ## A052538.P14169880175849797877

`A052664(n)/∏[A028310(n)]`
-/

namespace A052538.P14169880175849797877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052664 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052538.P14169880175849797877

namespace A052538

/-- `A052664(n)/∏[A028310(n)]` -/
def P14169880175849797877.Spec : Prop :=
  ∀ n, P14169880175849797877.a n = (A052538 n : ℚ)

end A052538

/-! ## A052538.P11471001777430048898

`A052664(n)/A131689(A000096(n))`
-/

namespace A052538.P11471001777430048898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052664 n : ℚ) / (A131689 (A000096 n).toNat : ℚ)

end

end A052538.P11471001777430048898

namespace A052538

/-- `A052664(n)/A131689(A000096(n))` -/
def P11471001777430048898.Spec : Prop :=
  ∀ n, P11471001777430048898.a n = (A052538 n : ℚ)

end A052538

/-!
# A052539: a(n) = 4^n + 1.

The programs for A052539, the canonical program `A052539.P3422248518252475595` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052539 has offset 0).

The definition of A052539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+1` (program `A052539.P3422248518252475595`, by `A052539.P3422248518252475595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052539.P3422248518252475595

`4^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052539

/-- `4^n+1` -/
def P3422248518252475595.Spec : Prop :=
  ∀ n, (P3422248518252475595.a n : ℤ) = A052539 n

theorem P3422248518252475595.correct : P3422248518252475595.Spec := by
  intro n
  simp only [A052539]

end A052539

/-!
# A052540: Expansion of (1-x)/(1-2*x-x^3+x^4).

The programs for A052540, the canonical program `A052540.P1299557429056273682` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052540 has offset 0).

The definition of A052540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^3+x^4))` (program `A052540.P1299557429056273682`, by `A052540.P1299557429056273682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052540.P1299557429056273682

`ogf((1-x)/(1-2x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052540

/-- `ogf((1-x)/(1-2x-x^3+x^4))` -/
def P1299557429056273682.Spec : Prop :=
  ∀ n, P1299557429056273682.a n = A052540 n

theorem P1299557429056273682.correct : P1299557429056273682.Spec := by
  intro n
  simp only [A052540]

end A052540

/-! ## A052540.P7517326551384625778

`2*a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A052540.P7517326551384625778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  2 * a (n - 1) + a (n - 3) - a (n - 4)

end

end A052540.P7517326551384625778

namespace A052540

/-- `2*a(n-1)+a(n-3)-a(n-4)` -/
def P7517326551384625778.Spec : Prop :=
  ∀ n, P7517326551384625778.a n = A052540 n

end A052540

/-! ## A052540.P10832017572590368891

`a(n-1)+a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A052540.P10832017572590368891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 3) - a (n - 4)))

end

end A052540.P10832017572590368891

namespace A052540

/-- `a(n-1)+a(n-1)+a(n-3)-a(n-4)` -/
def P10832017572590368891.Spec : Prop :=
  ∀ n, P10832017572590368891.a n = A052540 n

end A052540

/-! ## A052540.P2743514041387653233

`a(n-1)-(a(n-4)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A052540.P2743514041387653233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1) - a (n - 3))

end

end A052540.P2743514041387653233

namespace A052540

/-- `a(n-1)-(a(n-4)-a(n-1)-a(n-3))` -/
def P2743514041387653233.Spec : Prop :=
  ∀ n, P2743514041387653233.a n = A052540 n

end A052540

/-! ## A052540.P2222853594670867760

`A052908(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052540.P2222853594670867760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A052908 n + a (n - 3)

end

end A052540.P2222853594670867760

namespace A052540

/-- `A052908(n)+a(n-3)` -/
def P2222853594670867760.Spec : Prop :=
  ∀ n, P2222853594670867760.a n = A052540 n

end A052540

/-! ## A052540.P872371397168142797

`Δ[A052908(n)%A052903(n)]`
-/

namespace A052540.P872371397168142797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052908 n) (A052903 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052540.P872371397168142797

namespace A052540

/-- `Δ[A052908(n)%A052903(n)]` -/
def P872371397168142797.Spec : Prop :=
  ∀ n, P872371397168142797.a n = A052540 n

end A052540

/-! ## A052540.P16692993827550535551

`A052908(A054977(n)+n)-A052908(n)`
-/

namespace A052540.P16692993827550535551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052908 (A054977 n + (n : ℤ)).toNat - A052908 n

end

end A052540.P16692993827550535551

namespace A052540

/-- `A052908(A054977(n)+n)-A052908(n)` -/
def P16692993827550535551.Spec : Prop :=
  ∀ n, P16692993827550535551.a n = A052540 n

end A052540

/-! ## A052540.P6349484495947008440

`A052908(n)+A052908(n+1)%A052908(n)`
-/

namespace A052540.P6349484495947008440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052908 n + Int.tmod (A052908 (n + 1)) (A052908 n)

end

end A052540.P6349484495947008440

namespace A052540

/-- `A052908(n)+A052908(n+1)%A052908(n)` -/
def P6349484495947008440.Spec : Prop :=
  ∀ n, P6349484495947008440.a n = A052540 n

end A052540

/-! ## A052540.P10089818573949813262

`Δ[A052908(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A052540.P10089818573949813262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A052908 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052540.P10089818573949813262

namespace A052540

/-- `Δ[A052908(gcd(n, n*a(n-1)))]` -/
def P10089818573949813262.Spec : Prop :=
  ∀ n, P10089818573949813262.a n = A052540 n

end A052540

/-!
# A052541: Expansion of 1/(1-3*x-x^3).

The programs for A052541, the canonical program `A052541.P5890190055183050785` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052541 has offset 0).

The definition of A052541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^3))` (program `A052541.P5890190055183050785`, by `A052541.P5890190055183050785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052541.P5890190055183050785

`ogf(1/(1-3x-x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052541

/-- `ogf(1/(1-3x-x^3))` -/
def P5890190055183050785.Spec : Prop :=
  ∀ n, P5890190055183050785.a n = A052541 n

theorem P5890190055183050785.correct : P5890190055183050785.Spec := by
  intro n
  simp only [A052541]

end A052541

/-! ## A052541.P5656204246672548256

`3*a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052541.P5656204246672548256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 3)

end

end A052541.P5656204246672548256

namespace A052541

/-- `3*a(n-1)+a(n-3)` -/
def P5656204246672548256.Spec : Prop :=
  ∀ n, (P5656204246672548256.a n : ℤ) = A052541 n

end A052541

/-! ## A052541.P3172549708528727924

`4*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052541.P3172549708528727924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  4 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A052541.P3172549708528727924

namespace A052541

/-- `4*a(n-1)-(a(n-1)-a(n-3))` -/
def P3172549708528727924.Spec : Prop :=
  ∀ n, P3172549708528727924.a n = A052541 n

end A052541

/-! ## A052541.P4559773272790000767

`a(n-1)+a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052541.P4559773272790000767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 3)))

end

end A052541.P4559773272790000767

namespace A052541

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-3)` -/
def P4559773272790000767.Spec : Prop :=
  ∀ n, (P4559773272790000767.a n : ℤ) = A052541 n

end A052541

/-! ## A052541.P5126760828352091676

`∑[A183188(n)]`
-/

namespace A052541.P5126760828352091676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052541.P5126760828352091676

namespace A052541

/-- `∑[A183188(n)]` -/
def P5126760828352091676.Spec : Prop :=
  ∀ n, P5126760828352091676.a n = A052541 n

end A052541

/-! ## A052541.P14798062701197967854

`∑[∑[A098183(n)]]`
-/

namespace A052541.P14798062701197967854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052541.P14798062701197967854

namespace A052541

/-- `∑[∑[A098183(n)]]` -/
def P14798062701197967854.Spec : Prop :=
  ∀ n, P14798062701197967854.a n = A052541 n

end A052541

/-! ## A052541.P15138333329260517720

`A183188(A005408(n)-(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A052541.P15138333329260517720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183188 (A005408 n - (n + 1 : ℤ)).toNat + a (n - 1)

end

end A052541.P15138333329260517720

namespace A052541

/-- `A183188(A005408(n)-(n+1))+a(n-1)` -/
def P15138333329260517720.Spec : Prop :=
  ∀ n, P15138333329260517720.a n = A052541 n

end A052541

/-! ## A052541.P15748543055817717304

`Δ[A098183(n+1)/3]`
-/

namespace A052541.P15748543055817717304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098183 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052541.P15748543055817717304

namespace A052541

/-- `Δ[A098183(n+1)/3]` -/
def P15748543055817717304.Spec : Prop :=
  ∀ n, P15748543055817717304.a n = (A052541 n : ℚ)

end A052541

/-!
# A052542: a(n) = 2*a(n-1) + a(n-2), with a(0) = 1, a(1) = 2, a(2) = 4.

The programs for A052542, the canonical program `A052542.P15719751164566101536` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052542 has offset 0).

The definition of A052542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A052542.P15719751164566101536`, by `A052542.P15719751164566101536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052542.P15719751164566101536

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052542

/-- `2*a(n-1)+a(n-2)` -/
def P15719751164566101536.Spec : Prop :=
  ∀ n, (P15719751164566101536.a n : ℤ) = A052542 n

theorem P15719751164566101536.correct : P15719751164566101536.Spec := by
  intro n
  simp only [A052542]

end A052542

/-! ## A052542.P4460632451390998853

`2*A001333(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052542.P4460632451390998853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A001333 (n - 1) + a (n - 1)

end

end A052542.P4460632451390998853

namespace A052542

/-- `2*A001333(n-1)+a(n-1)` -/
def P4460632451390998853.Spec : Prop :=
  ∀ n, P4460632451390998853.a n = A052542 n

end A052542

/-! ## A052542.P9242774292499627768

`2*A000129(n)+A000007(n)`
-/

namespace A052542.P9242774292499627768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n + A000007 n

end

end A052542.P9242774292499627768

namespace A052542

/-- `2*A000129(n)+A000007(n)` -/
def P9242774292499627768.Spec : Prop :=
  ∀ n, P9242774292499627768.a n = A052542 n

end A052542

/-! ## A052542.P14154826532655056050

`ogf((-1+x^2)/(-1+2x+x^2))`
-/

namespace A052542.P14154826532655056050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, -1] n

end

end A052542.P14154826532655056050

namespace A052542

/-- `ogf((-1+x^2)/(-1+2x+x^2))` -/
def P14154826532655056050.Spec : Prop :=
  ∀ n, P14154826532655056050.a n = A052542 n

end A052542

/-! ## A052542.P17331137552419115565

`Δ[a(n-2)+lcm(2, a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A052542.P17331137552419115565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052542.P17331137552419115565

namespace A052542

/-- `Δ[a(n-2)+lcm(2, a(n-1))]` -/
def P17331137552419115565.Spec : Prop :=
  ∀ n, P17331137552419115565.a n = A052542 n

end A052542

/-! ## A052542.P5848771826220539081

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052542.P5848771826220539081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A052542.P5848771826220539081

namespace A052542

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P5848771826220539081.Spec : Prop :=
  ∀ n, (P5848771826220539081.a n : ℤ) = A052542 n

theorem P5848771826220539081.correct : P5848771826220539081.Spec := by
  intro n
  simp only [A052542, Nat.add_sub_cancel, A052542.P5848771826220539081.a, A052542.P15719751164566101536.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052542

/-! ## A052542.P9471665586623183708

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052542.P9471665586623183708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A052542.P9471665586623183708

namespace A052542

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P9471665586623183708.Spec : Prop :=
  ∀ n, P9471665586623183708.a n = A052542 n

end A052542

/-! ## A052542.P2004445674898722498

`A082766(Δ[n²])`
-/

namespace A052542.P2004445674898722498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052542.P2004445674898722498

namespace A052542

/-- `A082766(Δ[n²])` -/
def P2004445674898722498.Spec : Prop :=
  ∀ n, P2004445674898722498.a n = A052542 n

end A052542

/-! ## A052542.P17924576802660114188

`record[Δ[A097564(n)]]`
-/

namespace A052542.P17924576802660114188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052542.P17924576802660114188

namespace A052542

/-- `record[Δ[A097564(n)]]` -/
def P17924576802660114188.Spec : Prop :=
  ∀ n, P17924576802660114188.a n = A052542 n

end A052542

/-! ## A052542.P11430964403807955035

`abs(Δ[Δ[A215936(n)]])`
-/

namespace A052542.P11430964403807955035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A052542.P11430964403807955035

namespace A052542

/-- `abs(Δ[Δ[A215936(n)]])` -/
def P11430964403807955035.Spec : Prop :=
  ∀ n, P11430964403807955035.a n = A052542 n

end A052542

/-! ## A052542.P3056537880515693263

`A002203(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052542.P3056537880515693263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002203 n - a (n - 1)

end

end A052542.P3056537880515693263

namespace A052542

/-- `A002203(n)-a(n-1)` -/
def P3056537880515693263.Spec : Prop :=
  ∀ n, P3056537880515693263.a n = A052542 n

end A052542

/-! ## A052542.P5768234643586508018

`A099425(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052542.P5768234643586508018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A099425 n - a (n - 1)

end

end A052542.P5768234643586508018

namespace A052542

/-- `A099425(n)-a(n-1)` -/
def P5768234643586508018.Spec : Prop :=
  ∀ n, P5768234643586508018.a n = A052542 n

end A052542

/-! ## A052542.P2964951104215297133

`A097564(A008486(n))`
-/

namespace A052542.P2964951104215297133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A008486 n).toNat

end

end A052542.P2964951104215297133

namespace A052542

/-- `A097564(A008486(n))` -/
def P2964951104215297133.Spec : Prop :=
  ∀ n, P2964951104215297133.a n = A052542 n

end A052542

/-! ## A052542.P7498703708608807982

`A119016(A004273(n)+2)`
-/

namespace A052542.P7498703708608807982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A004273 n + 2).toNat

end

end A052542.P7498703708608807982

namespace A052542

/-- `A119016(A004273(n)+2)` -/
def P7498703708608807982.Spec : Prop :=
  ∀ n, P7498703708608807982.a n = A052542 n

end A052542

/-! ## A052542.P4102709294041837844

`A249576(A008486(n)+2)`
-/

namespace A052542.P4102709294041837844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A008486 n + 2).toNat

end

end A052542.P4102709294041837844

namespace A052542

/-- `A249576(A008486(n)+2)` -/
def P4102709294041837844.Spec : Prop :=
  ∀ n, P4102709294041837844.a n = A052542 n

end A052542

/-! ## A052542.P15751271819139248728

`A215928(n)+A000129(n)`
-/

namespace A052542.P15751271819139248728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n + A000129 n

end

end A052542.P15751271819139248728

namespace A052542

/-- `A215928(n)+A000129(n)` -/
def P15751271819139248728.Spec : Prop :=
  ∀ n, P15751271819139248728.a n = A052542 n

end A052542

/-! ## A052542.P6528502505281515218

`A078057(n)-Δ[A215928(n)]`
-/

namespace A052542.P6528502505281515218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (f1 (n + 1) - f1 n)

end

end A052542.P6528502505281515218

namespace A052542

/-- `A078057(n)-Δ[A215928(n)]` -/
def P6528502505281515218.Spec : Prop :=
  ∀ n, P6528502505281515218.a n = A052542 n

end A052542

/-! ## A052542.P18247949238573247869

`A119016(A004275(n+1)+1)`
-/

namespace A052542.P18247949238573247869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A004275 (n + 1) + 1).toNat

end

end A052542.P18247949238573247869

namespace A052542

/-- `A119016(A004275(n+1)+1)` -/
def P18247949238573247869.Spec : Prop :=
  ∀ n, P18247949238573247869.a n = A052542 n

end A052542

/-! ## A052542.P17890445366011907558

`A163271(n+1)+A000007(n)`
-/

namespace A052542.P17890445366011907558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A000007 n

end

end A052542.P17890445366011907558

namespace A052542

/-- `A163271(n+1)+A000007(n)` -/
def P17890445366011907558.Spec : Prop :=
  ∀ n, P17890445366011907558.a n = A052542 n

end A052542

/-!
# A052543: Expansion of (1-x)/(1 - 3*x - 2*x^2 + 2*x^3).

The programs for A052543, the canonical program `A052543.P13608170854890099654` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052543 has offset 0).

The definition of A052543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-2x^2+2x^3))` (program `A052543.P13608170854890099654`, by `A052543.P13608170854890099654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052543.P13608170854890099654

`ogf((1-x)/(1-3x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052543

/-- `ogf((1-x)/(1-3x-2x^2+2x^3))` -/
def P13608170854890099654.Spec : Prop :=
  ∀ n, P13608170854890099654.a n = A052543 n

theorem P13608170854890099654.correct : P13608170854890099654.Spec := by
  intro n
  simp only [A052543]

end A052543

/-! ## A052543.P13867674321202560200

`3*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A052543.P13867674321202560200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A052543.P13867674321202560200

namespace A052543

/-- `3*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P13867674321202560200.Spec : Prop :=
  ∀ n, P13867674321202560200.a n = A052543 n

end A052543

/-! ## A052543.P10967835773740304627

`A214997(n)-A214996(n)`
-/

namespace A052543.P10967835773740304627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214997 n - A214996 n

end

end A052543.P10967835773740304627

namespace A052543

/-- `A214997(n)-A214996(n)` -/
def P10967835773740304627.Spec : Prop :=
  ∀ n, P10967835773740304627.a n = A052543 n

end A052543

/-! ## A052543.P10616370285650227973

`gcd(2, n)²+floor((sqrt(2)+2)*a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A052543.P10616370285650227973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.gcd 2 n ^ 2 : ℤ) + (⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 2)

end

end A052543.P10616370285650227973

namespace A052543

/-- `gcd(2, n)²+floor((sqrt(2)+2)*a(n-1))-2` -/
def P10616370285650227973.Spec : Prop :=
  ∀ n, P10616370285650227973.a n = A052543 n

end A052543

/-! ## A052543.P16378148487222666786

`A007052(n)-a(n-1)` with `a(0)=1`
-/

namespace A052543.P16378148487222666786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007052 n - a (n - 1)

end

end A052543.P16378148487222666786

namespace A052543

/-- `A007052(n)-a(n-1)` -/
def P16378148487222666786.Spec : Prop :=
  ∀ n, P16378148487222666786.a n = A052543 n

end A052543

/-! ## A052543.P13776521480977943644

`A003480(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052543.P13776521480977943644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003480 n + a (n - 2)

end

end A052543.P13776521480977943644

namespace A052543

/-- `A003480(n)+a(n-2)` -/
def P13776521480977943644.Spec : Prop :=
  ∀ n, P13776521480977943644.a n = A052543 n

end A052543

/-! ## A052543.P4628028240863984830

`A048580(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A052543.P4628028240863984830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048580 (n - 1) - a (n - 1)

end

end A052543.P4628028240863984830

namespace A052543

/-- `A048580(n-1)-a(n-1)` -/
def P4628028240863984830.Spec : Prop :=
  ∀ n, P4628028240863984830.a n = A052543 n

end A052543

/-! ## A052543.P11507124786491041856

`A007068(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A052543.P11507124786491041856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007068 (2 * n) - a (n - 1)

end

end A052543.P11507124786491041856

namespace A052543

/-- `A007068(2*n)-a(n-1)` -/
def P11507124786491041856.Spec : Prop :=
  ∀ n, P11507124786491041856.a n = A052543 n

end A052543

/-! ## A052543.P8471019348765987024

`A062113(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A052543.P8471019348765987024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062113 (2 * n) - a (n - 1)

end

end A052543.P8471019348765987024

namespace A052543

/-- `A062113(2*n)-a(n-1)` -/
def P8471019348765987024.Spec : Prop :=
  ∀ n, P8471019348765987024.a n = A052543 n

end A052543

/-! ## A052543.P1841390938999673333

`A020727(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052543.P1841390938999673333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020727 (n - 1) + a (n - 2)

end

end A052543.P1841390938999673333

namespace A052543

/-- `A020727(n-1)+a(n-2)` -/
def P1841390938999673333.Spec : Prop :=
  ∀ n, P1841390938999673333.a n = A052543 n

end A052543

/-! ## A052543.P9855800084550352030

`A006012(n+1)/2-a(n-1)` with `a(0)=1`
-/

namespace A052543.P9855800084550352030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A006012 (n + 1) : ℚ) / 2 - a (n - 1)

end

end A052543.P9855800084550352030

namespace A052543

/-- `A006012(n+1)/2-a(n-1)` -/
def P9855800084550352030.Spec : Prop :=
  ∀ n, P9855800084550352030.a n = (A052543 n : ℚ)

end A052543

/-!
# A052544: Expansion of (1-x)^2/(1 - 4*x + 3*x^2 - x^3).

The programs for A052544, the canonical program `A052544.P1124143424389382204` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052544 has offset 0).

The definition of A052544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-4x+3x^2-x^3))` (program `A052544.P1124143424389382204`, by `A052544.P1124143424389382204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052544.P1124143424389382204

`ogf((1-2x+x^2)/(1-4x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052544

/-- `ogf((1-2x+x^2)/(1-4x+3x^2-x^3))` -/
def P1124143424389382204.Spec : Prop :=
  ∀ n, P1124143424389382204.a n = A052544 n

theorem P1124143424389382204.correct : P1124143424389382204.Spec := by
  intro n
  simp only [A052544]

end A052544

/-! ## A052544.P5791944498867737488

`4*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052544.P5791944498867737488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A052544.P5791944498867737488

namespace A052544

/-- `4*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5791944498867737488.Spec : Prop :=
  ∀ n, P5791944498867737488.a n = A052544 n

end A052544

/-! ## A052544.P6192635244124927819

`∑[A052529(n)]`
-/

namespace A052544.P6192635244124927819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052544.P6192635244124927819

namespace A052544

/-- `∑[A052529(n)]` -/
def P6192635244124927819.Spec : Prop :=
  ∀ n, P6192635244124927819.a n = A052544 n

end A052544

/-! ## A052544.P7406204211252139739

`A204200(n+2)`
-/

namespace A052544.P7406204211252139739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204200 (n + 2)

end

end A052544.P7406204211252139739

namespace A052544

/-- `A204200(n+2)` -/
def P7406204211252139739.Spec : Prop :=
  ∀ n, P7406204211252139739.a n = A052544 n

end A052544

/-! ## A052544.P9048172980191622444

`A000930(3*n)`
-/

namespace A052544.P9048172980191622444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n)

end

end A052544.P9048172980191622444

namespace A052544

/-- `A000930(3*n)` -/
def P9048172980191622444.Spec : Prop :=
  ∀ n, P9048172980191622444.a n = A052544 n

end A052544

/-! ## A052544.P14821485538475124987

`A108104(6*n)`
-/

namespace A052544.P14821485538475124987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (6 * n)

end

end A052544.P14821485538475124987

namespace A052544

/-- `A108104(6*n)` -/
def P14821485538475124987.Spec : Prop :=
  ∀ n, P14821485538475124987.a n = A052544 n

end A052544

/-! ## A052544.P10031284761807524916

`abs(A199804(3*n))`
-/

namespace A052544.P10031284761807524916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 (3 * n)|

end

end A052544.P10031284761807524916

namespace A052544

/-- `abs(A199804(3*n))` -/
def P10031284761807524916.Spec : Prop :=
  ∀ n, P10031284761807524916.a n = A052544 n

end A052544

/-! ## A052544.P9264903671720408703

`A078012(3*(n+1))`
-/

namespace A052544.P9264903671720408703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * (n + 1))

end

end A052544.P9264903671720408703

namespace A052544

/-- `A078012(3*(n+1))` -/
def P9264903671720408703.Spec : Prop :=
  ∀ n, P9264903671720408703.a n = A052544 n

end A052544

/-! ## A052544.P12475236062025251062

`A135851(3*n+5)`
-/

namespace A052544.P12475236062025251062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (3 * n + 5)

end

end A052544.P12475236062025251062

namespace A052544

/-- `A135851(3*n+5)` -/
def P12475236062025251062.Spec : Prop :=
  ∀ n, P12475236062025251062.a n = A052544 n

end A052544

/-! ## A052544.P10384227895209671937

`A226916(6*n+7)`
-/

namespace A052544.P10384227895209671937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (6 * n + 7)

end

end A052544.P10384227895209671937

namespace A052544

/-- `A226916(6*n+7)` -/
def P10384227895209671937.Spec : Prop :=
  ∀ n, P10384227895209671937.a n = A052544 n

end A052544

/-! ## A052544.P5844519826417715878

`record[A000930(A006368(n))]`
-/

namespace A052544.P5844519826417715878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052544.P5844519826417715878

namespace A052544

/-- `record[A000930(A006368(n))]` -/
def P5844519826417715878.Spec : Prop :=
  ∀ n, P5844519826417715878.a n = A052544 n

end A052544

/-! ## A052544.P10121735875470307322

`A068921(A008486(n)-1)`
-/

namespace A052544.P10121735875470307322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A008486 n - 1).toNat

end

end A052544.P10121735875470307322

namespace A052544

/-- `A068921(A008486(n)-1)` -/
def P10121735875470307322.Spec : Prop :=
  ∀ n, P10121735875470307322.a n = A052544 n

end A052544

/-! ## A052544.P221648764613312003

`A068921(A004273(n)+n)`
-/

namespace A052544.P221648764613312003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A004273 n + (n : ℤ)).toNat

end

end A052544.P221648764613312003

namespace A052544

/-- `A068921(A004273(n)+n)` -/
def P221648764613312003.Spec : Prop :=
  ∀ n, P221648764613312003.a n = A052544 n

end A052544

/-! ## A052544.P14814791646626960052

`∑[A000930(record[A014682(n)])]`
-/

namespace A052544.P14814791646626960052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052544.P14814791646626960052

namespace A052544

/-- `∑[A000930(record[A014682(n)])]` -/
def P14814791646626960052.Spec : Prop :=
  ∀ n, P14814791646626960052.a n = A052544 n

end A052544

/-! ## A052544.P16204780527568405369

`∑[A068921(A289207(3*n))]`
-/

namespace A052544.P16204780527568405369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A289207 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052544.P16204780527568405369

namespace A052544

/-- `∑[A068921(A289207(3*n))]` -/
def P16204780527568405369.Spec : Prop :=
  ∀ n, P16204780527568405369.a n = A052544 n

end A052544

/-! ## A052544.P2025928168540767855

`record[A000930(A014682(n)+1)]`
-/

namespace A052544.P2025928168540767855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A014682 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052544.P2025928168540767855

namespace A052544

/-- `record[A000930(A014682(n)+1)]` -/
def P2025928168540767855.Spec : Prop :=
  ∀ n, P2025928168540767855.a n = A052544 n

end A052544

/-! ## A052544.P15480066728940359657

`A099560(A008585(n)+2)+1`
-/

namespace A052544.P15480066728940359657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099560 (A008585 n + 2).toNat + 1

end

end A052544.P15480066728940359657

namespace A052544

/-- `A099560(A008585(n)+2)+1` -/
def P15480066728940359657.Spec : Prop :=
  ∀ n, P15480066728940359657.a n = A052544 n

end A052544

/-! ## A052544.P17381487672737576594

`A068921(A008574(n)-(n+1))`
-/

namespace A052544.P17381487672737576594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A008574 n - (n + 1 : ℤ)).toNat

end

end A052544.P17381487672737576594

namespace A052544

/-- `A068921(A008574(n)-(n+1))` -/
def P17381487672737576594.Spec : Prop :=
  ∀ n, P17381487672737576594.a n = A052544 n

end A052544

/-! ## A052544.P7146661768292647550

`A068921(A008574(n)-1-n)`
-/

namespace A052544.P7146661768292647550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A008574 n - 1 - (n : ℤ)).toNat

end

end A052544.P7146661768292647550

namespace A052544

/-- `A068921(A008574(n)-1-n)` -/
def P7146661768292647550.Spec : Prop :=
  ∀ n, P7146661768292647550.a n = A052544 n

end A052544

/-! ## A052544.P16109201215735878230

`∑[A078012(A004277(n)+2+n)]`
-/

namespace A052544.P16109201215735878230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A004277 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052544.P16109201215735878230

namespace A052544

/-- `∑[A078012(A004277(n)+2+n)]` -/
def P16109201215735878230.Spec : Prop :=
  ∀ n, P16109201215735878230.a n = A052544 n

end A052544

/-!
# A052545: Expansion of (1-x)^2/(1-3*x+x^3).

The programs for A052545, the canonical program `A052545.P16687892535598241955` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052545 has offset 0).

The definition of A052545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+x^3))` (program `A052545.P16687892535598241955`, by `A052545.P16687892535598241955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052545.P16687892535598241955

`ogf((1-2x+x^2)/(1-3x+x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052545

/-- `ogf((1-2x+x^2)/(1-3x+x^3))` -/
def P16687892535598241955.Spec : Prop :=
  ∀ n, P16687892535598241955.a n = A052545 n

theorem P16687892535598241955.correct : P16687892535598241955.Spec := by
  intro n
  simp only [A052545]

end A052545

/-! ## A052545.P13260738137640200081

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052545.P13260738137640200081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 1) - a (n - 3)

end

end A052545.P13260738137640200081

namespace A052545

/-- `3*a(n-1)-a(n-3)` -/
def P13260738137640200081.Spec : Prop :=
  ∀ n, P13260738137640200081.a n = A052545 n

end A052545

/-! ## A052545.P1732017307289451768

`lcm(3, a(n-1))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052545.P1732017307289451768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 3)

end

end A052545.P1732017307289451768

namespace A052545

/-- `lcm(3, a(n-1))-a(n-3)` -/
def P1732017307289451768.Spec : Prop :=
  ∀ n, P1732017307289451768.a n = A052545 n

end A052545

/-! ## A052545.P15854956966959526647

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052545.P15854956966959526647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A052545.P15854956966959526647

namespace A052545

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P15854956966959526647.Spec : Prop :=
  ∀ n, P15854956966959526647.a n = A052545 n

end A052545

/-! ## A052545.P11226825821716843807

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052545.P11226825821716843807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A052545.P11226825821716843807

namespace A052545

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P11226825821716843807.Spec : Prop :=
  ∀ n, P11226825821716843807.a n = A052545 n

end A052545

/-! ## A052545.P11214483609292074927

`Δ[A187505(3*n)]`
-/

namespace A052545.P11214483609292074927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052545.P11214483609292074927

namespace A052545

/-- `Δ[A187505(3*n)]` -/
def P11214483609292074927.Spec : Prop :=
  ∀ n, P11214483609292074927.a n = A052545 n

end A052545

/-! ## A052545.P2311896637518860406

`Δ[abs(A122099(n+2))]`
-/

namespace A052545.P2311896637518860406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052545.P2311896637518860406

namespace A052545

/-- `Δ[abs(A122099(n+2))]` -/
def P2311896637518860406.Spec : Prop :=
  ∀ n, P2311896637518860406.a n = A052545 n

end A052545

/-! ## A052545.P2868895200337402727

`Δ[abs(A122100(n+2))]`
-/

namespace A052545.P2868895200337402727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122100 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052545.P2868895200337402727

namespace A052545

/-- `Δ[abs(A122100(n+2))]` -/
def P2868895200337402727.Spec : Prop :=
  ∀ n, P2868895200337402727.a n = A052545 n

end A052545

/-! ## A052545.P15694627255814574127

`Δ[A187504(3*n+1)]`
-/

namespace A052545.P15694627255814574127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052545.P15694627255814574127

namespace A052545

/-- `Δ[A187504(3*n+1)]` -/
def P15694627255814574127.Spec : Prop :=
  ∀ n, P15694627255814574127.a n = A052545 n

end A052545

/-! ## A052545.P1884347395417761577

`A215448(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052545.P1884347395417761577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215448 (n + 1) - a (n - 1)

end

end A052545.P1884347395417761577

namespace A052545

/-- `A215448(n+1)-a(n-1)` -/
def P1884347395417761577.Spec : Prop :=
  ∀ n, P1884347395417761577.a n = A052545 n

end A052545

/-! ## A052545.P567556483658497247

`A122100(n+2)+A052536(n)`
-/

namespace A052545.P567556483658497247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 2) + A052536 n

end

end A052545.P567556483658497247

namespace A052545

/-- `A122100(n+2)+A052536(n)` -/
def P567556483658497247.Spec : Prop :=
  ∀ n, P567556483658497247.a n = A052545 n

end A052545

/-! ## A052545.P1319205524398948527

`A123941(n)-A122100(n+1)`
-/

namespace A052545.P1319205524398948527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n - A122100 (n + 1)

end

end A052545.P1319205524398948527

namespace A052545

/-- `A123941(n)-A122100(n+1)` -/
def P1319205524398948527.Spec : Prop :=
  ∀ n, P1319205524398948527.a n = A052545 n

end A052545

/-! ## A052545.P12306216048768215303

`A215448(n)-A122100(n+2)`
-/

namespace A052545.P12306216048768215303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 n - A122100 (n + 2)

end

end A052545.P12306216048768215303

namespace A052545

/-- `A215448(n)-A122100(n+2)` -/
def P12306216048768215303.Spec : Prop :=
  ∀ n, P12306216048768215303.a n = A052545 n

end A052545

/-! ## A052545.P6492524505150648960

`2*A215448(n)-A122100(n)`
-/

namespace A052545.P6492524505150648960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215448 n - A122100 n

end

end A052545.P6492524505150648960

namespace A052545

/-- `2*A215448(n)-A122100(n)` -/
def P6492524505150648960.Spec : Prop :=
  ∀ n, P6492524505150648960.a n = A052545 n

end A052545

/-! ## A052545.P9876209231898980012

`A122100(n+2)-A122100(n+3)`
-/

namespace A052545.P9876209231898980012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 2) - A122100 (n + 3)

end

end A052545.P9876209231898980012

namespace A052545

/-- `A122100(n+2)-A122100(n+3)` -/
def P9876209231898980012.Spec : Prop :=
  ∀ n, P9876209231898980012.a n = A052545 n

end A052545

/-! ## A052545.P6382288498142097828

`A052536(n)-(A215448(n)-A122100(n))`
-/

namespace A052545.P6382288498142097828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - (A215448 n - A122100 n)

end

end A052545.P6382288498142097828

namespace A052545

/-- `A052536(n)-(A215448(n)-A122100(n))` -/
def P6382288498142097828.Spec : Prop :=
  ∀ n, P6382288498142097828.a n = A052545 n

end A052545

/-! ## A052545.P10550392162198512224

`Δ[record[Δ[A187504(n+1)]]]`
-/

namespace A052545.P10550392162198512224
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052545.P10550392162198512224

namespace A052545

/-- `Δ[record[Δ[A187504(n+1)]]]` -/
def P10550392162198512224.Spec : Prop :=
  ∀ n, P10550392162198512224.a n = A052545 n

end A052545

/-! ## A052545.P16979877456382528803

`Δ[Δ[A187503(3*n+1)]]`
-/

namespace A052545.P16979877456382528803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052545.P16979877456382528803

namespace A052545

/-- `Δ[Δ[A187503(3*n+1)]]` -/
def P16979877456382528803.Spec : Prop :=
  ∀ n, P16979877456382528803.a n = A052545 n

end A052545

/-! ## A052545.P5234125492586643993

`A076264(n)-A215448(n+1)`
-/

namespace A052545.P5234125492586643993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n - A215448 (n + 1)

end

end A052545.P5234125492586643993

namespace A052545

/-- `A076264(n)-A215448(n+1)` -/
def P5234125492586643993.Spec : Prop :=
  ∀ n, P5234125492586643993.a n = A052545 n

end A052545

/-! ## A052545.P9681171172780097181

`(A215448(n)+A052536(n))/2`
-/

namespace A052545.P9681171172780097181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215448 n + A052536 n : ℚ) / 2

end

end A052545.P9681171172780097181

namespace A052545

/-- `(A215448(n)+A052536(n))/2` -/
def P9681171172780097181.Spec : Prop :=
  ∀ n, P9681171172780097181.a n = (A052545 n : ℚ)

end A052545

/-!
# A052546: Expansion of (1-x)/(1-x-x^2-2*x^3+2*x^4).

The programs for A052546, the canonical program `A052546.P12318279396022559641` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052546 has offset 0).

The definition of A052546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2-2x^3+2x^4))` (program `A052546.P12318279396022559641`, by `A052546.P12318279396022559641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052546.P12318279396022559641

`ogf((1-x)/(1-x-x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052546

/-- `ogf((1-x)/(1-x-x^2-2x^3+2x^4))` -/
def P12318279396022559641.Spec : Prop :=
  ∀ n, P12318279396022559641.a n = A052546 n

theorem P12318279396022559641.correct : P12318279396022559641.Spec := by
  intro n
  simp only [A052546]

end A052546

/-! ## A052546.P21241426157729128

`a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A052546.P21241426157729128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A052546.P21241426157729128

namespace A052546

/-- `a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P21241426157729128.Spec : Prop :=
  ∀ n, P21241426157729128.a n = A052546 n

end A052546

/-! ## A052546.P4943655126672359476

`A052681(n)/n!`
-/

namespace A052546.P4943655126672359476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052681 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052546.P4943655126672359476

namespace A052546

/-- `A052681(n)/n!` -/
def P4943655126672359476.Spec : Prop :=
  ∀ n, P4943655126672359476.a n = (A052546 n : ℚ)

end A052546

/-! ## A052546.P10126746535136403373

`A052681(n)/A000142(n)`
-/

namespace A052546.P10126746535136403373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052681 n : ℚ) / (A000142 n : ℚ)

end

end A052546.P10126746535136403373

namespace A052546

/-- `A052681(n)/A000142(n)` -/
def P10126746535136403373.Spec : Prop :=
  ∀ n, P10126746535136403373.a n = (A052546 n : ℚ)

end A052546

/-! ## A052546.P12116603234898895732

`A052681(n)/∏[A028310(n)]`
-/

namespace A052546.P12116603234898895732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052681 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052546.P12116603234898895732

namespace A052546

/-- `A052681(n)/∏[A028310(n)]` -/
def P12116603234898895732.Spec : Prop :=
  ∀ n, P12116603234898895732.a n = (A052546 n : ℚ)

end A052546

/-! ## A052546.P3518802521656673527

`A052681(n)/A142589(A000124(n))`
-/

namespace A052546.P3518802521656673527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052681 n : ℚ) / (A142589 (A000124 n).toNat : ℚ)

end

end A052546.P3518802521656673527

namespace A052546

/-- `A052681(n)/A142589(A000124(n))` -/
def P3518802521656673527.Spec : Prop :=
  ∀ n, P3518802521656673527.a n = (A052546 n : ℚ)

end A052546

/-!
# A052547: Expansion of (1-x)/(1-x-2*x^2+x^3).

The programs for A052547, the canonical program `A052547.P12121530465901065862` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052547 has offset 0).

The definition of A052547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^2+x^3))` (program `A052547.P12121530465901065862`, by `A052547.P12121530465901065862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052547.P12121530465901065862

`ogf((1-x)/(1-x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052547

/-- `ogf((1-x)/(1-x-2x^2+x^3))` -/
def P12121530465901065862.Spec : Prop :=
  ∀ n, P12121530465901065862.a n = A052547 n

theorem P12121530465901065862.correct : P12121530465901065862.Spec := by
  intro n
  simp only [A052547]

end A052547

/-! ## A052547.P11239874430474287355

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052547.P11239874430474287355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A052547.P11239874430474287355

namespace A052547

/-- `a(n-1)+2*a(n-2)-a(n-3)` -/
def P11239874430474287355.Spec : Prop :=
  ∀ n, P11239874430474287355.a n = A052547 n

end A052547

/-! ## A052547.P4326312140449265733

`a(n-1)-(a(n-3)-2*a(n-2))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052547.P4326312140449265733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) - (a (n - 3) - 2 * a (n - 2))

end

end A052547.P4326312140449265733

namespace A052547

/-- `a(n-1)-(a(n-3)-2*a(n-2))` -/
def P4326312140449265733.Spec : Prop :=
  ∀ n, P4326312140449265733.a n = A052547 n

end A052547

/-! ## A052547.P8144010777068370710

`a(n-1)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052547.P8144010777068370710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A052547.P8144010777068370710

namespace A052547

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-3)` -/
def P8144010777068370710.Spec : Prop :=
  ∀ n, P8144010777068370710.a n = A052547 n

end A052547

/-! ## A052547.P17617263533270893632

`a(n-1)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052547.P17617263533270893632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A052547.P17617263533270893632

namespace A052547

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2))` -/
def P17617263533270893632.Spec : Prop :=
  ∀ n, P17617263533270893632.a n = A052547 n

end A052547

/-! ## A052547.P8410002332165182036

`A096976(n+2)`
-/

namespace A052547.P8410002332165182036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 2)

end

end A052547.P8410002332165182036

namespace A052547

/-- `A096976(n+2)` -/
def P8410002332165182036.Spec : Prop :=
  ∀ n, P8410002332165182036.a n = A052547 n

end A052547

/-! ## A052547.P3961460629437324792

`A187066(2*n)`
-/

namespace A052547.P3961460629437324792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (2 * n)

end

end A052547.P3961460629437324792

namespace A052547

/-- `A187066(2*n)` -/
def P3961460629437324792.Spec : Prop :=
  ∀ n, P3961460629437324792.a n = A052547 n

end A052547

/-! ## A052547.P8420130739226813248

`A187065(2*(n+1))`
-/

namespace A052547.P8420130739226813248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (2 * (n + 1))

end

end A052547.P8420130739226813248

namespace A052547

/-- `A187065(2*(n+1))` -/
def P8420130739226813248.Spec : Prop :=
  ∀ n, P8420130739226813248.a n = A052547 n

end A052547

/-! ## A052547.P7753146608531640671

`A265755(2*n+3)`
-/

namespace A052547.P7753146608531640671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * n + 3)

end

end A052547.P7753146608531640671

namespace A052547

/-- `A265755(2*n+3)` -/
def P7753146608531640671.Spec : Prop :=
  ∀ n, P7753146608531640671.a n = A052547 n

end A052547

/-! ## A052547.P6278285727531941884

`A028495(n)-a(n-1)` with `a(0)=1`
-/

namespace A052547.P6278285727531941884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028495 n - a (n - 1)

end

end A052547.P6278285727531941884

namespace A052547

/-- `A028495(n)-a(n-1)` -/
def P6278285727531941884.Spec : Prop :=
  ∀ n, P6278285727531941884.a n = A052547 n

end A052547

/-! ## A052547.P6080652603412403022

`A006053(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052547.P6080652603412403022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A006053 n + a (n - 2)

end

end A052547.P6080652603412403022

namespace A052547

/-- `A006053(n)+a(n-2)` -/
def P6080652603412403022.Spec : Prop :=
  ∀ n, P6080652603412403022.a n = A052547 n

end A052547

/-! ## A052547.P9388600613642339117

`A028495(n)-A187065(2*n)`
-/

namespace A052547.P9388600613642339117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A187065 (2 * n)

end

end A052547.P9388600613642339117

namespace A052547

/-- `A028495(n)-A187065(2*n)` -/
def P9388600613642339117.Spec : Prop :=
  ∀ n, P9388600613642339117.a n = A052547 n

end A052547

/-! ## A052547.P6517540185255493933

`∑[A028495(n)*A033999(n)]*A033999(n)`
-/

namespace A052547.P6517540185255493933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A052547.P6517540185255493933

namespace A052547

/-- `∑[A028495(n)*A033999(n)]*A033999(n)` -/
def P6517540185255493933.Spec : Prop :=
  ∀ n, P6517540185255493933.a n = A052547 n

end A052547

/-! ## A052547.P8711492817457442405

`Δ[A006053(n+1)]`
-/

namespace A052547.P8711492817457442405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052547.P8711492817457442405

namespace A052547

/-- `Δ[A006053(n+1)]` -/
def P8711492817457442405.Spec : Prop :=
  ∀ n, P8711492817457442405.a n = A052547 n

end A052547

/-! ## A052547.P10241431885014317419

`Δ[A187067(2*n)]`
-/

namespace A052547.P10241431885014317419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052547.P10241431885014317419

namespace A052547

/-- `Δ[A187067(2*n)]` -/
def P10241431885014317419.Spec : Prop :=
  ∀ n, P10241431885014317419.a n = A052547 n

end A052547

/-! ## A052547.P13859244151128907611

`Δ[A187066(Δ[n²])]`
-/

namespace A052547.P13859244151128907611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052547.P13859244151128907611

namespace A052547

/-- `Δ[A187066(Δ[n²])]` -/
def P13859244151128907611.Spec : Prop :=
  ∀ n, P13859244151128907611.a n = A052547 n

end A052547

/-! ## A052547.P14927267876444607959

`Δ[A265755(n+2+n)]`
-/

namespace A052547.P14927267876444607959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052547.P14927267876444607959

namespace A052547

/-- `Δ[A265755(n+2+n)]` -/
def P14927267876444607959.Spec : Prop :=
  ∀ n, P14927267876444607959.a n = A052547 n

end A052547

/-! ## A052547.P9252607816570887660

`Δ[A187065(n+3+n)]`
-/

namespace A052547.P9252607816570887660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052547.P9252607816570887660

namespace A052547

/-- `Δ[A187065(n+3+n)]` -/
def P9252607816570887660.Spec : Prop :=
  ∀ n, P9252607816570887660.a n = A052547 n

end A052547

/-! ## A052547.P10204984004403815315

`a(n-1)-A122161(n)` with `a(0)=1`
-/

namespace A052547.P10204984004403815315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A122161 n

end

end A052547.P10204984004403815315

namespace A052547

/-- `a(n-1)-A122161(n)` -/
def P10204984004403815315.Spec : Prop :=
  ∀ n, P10204984004403815315.a n = A052547 n

end A052547

/-! ## A052547.P11002161395571165589

`A006053(n+2)-A006053(n+1)`
-/

namespace A052547.P11002161395571165589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2) - A006053 (n + 1)

end

end A052547.P11002161395571165589

namespace A052547

/-- `A006053(n+2)-A006053(n+1)` -/
def P11002161395571165589.Spec : Prop :=
  ∀ n, P11002161395571165589.a n = A052547 n

end A052547

/-!
# A052548: a(n) = 2^n + 2.

The programs for A052548, the canonical program `A052548.P18180923888402085992` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052548 has offset 0).

The definition of A052548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2` (program `A052548.P18180923888402085992`, by `A052548.P18180923888402085992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052548.P18180923888402085992

`2^n+2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052548

/-- `2^n+2` -/
def P18180923888402085992.Spec : Prop :=
  ∀ n, (P18180923888402085992.a n : ℤ) = A052548 n

theorem P18180923888402085992.correct : P18180923888402085992.Spec := by
  intro n
  simp only [A052548]

end A052548

/-!
# A052549: a(n) = 5*2^(n-1) - 1, n>0, with a(0)=1.

The programs for A052549, the canonical program `A052549.P17972618579142578720` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052549 has offset 0).

The definition of A052549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052549.P17972618579142578720

`2*a(n-1)+1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052549

/-- `2*a(n-1)+1` -/
def P17972618579142578720.Spec : Prop :=
  ∀ n, (P17972618579142578720.a n : ℤ) = A052549 n

theorem P17972618579142578720.correct : P17972618579142578720.Spec := by
  intro n
  simp only [A052549]

end A052549

/-! ## A052549.P8121998637129256509

`ogf((1+x-x^2)/(1-3x+2x^2))`
-/

namespace A052549.P8121998637129256509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -3, 2] n

end

end A052549.P8121998637129256509

namespace A052549

/-- `ogf((1+x-x^2)/(1-3x+2x^2))` -/
def P8121998637129256509.Spec : Prop :=
  ∀ n, P8121998637129256509.a n = A052549 n

end A052549

/-! ## A052549.P9224181902108683847

`∑[round(5*2^(n-2))]`
-/

namespace A052549.P9224181902108683847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052549.P9224181902108683847

namespace A052549

/-- `∑[round(5*2^(n-2))]` -/
def P9224181902108683847.Spec : Prop :=
  ∀ n, P9224181902108683847.a n = A052549 n

end A052549

/-! ## A052549.P606962949634374277

`or(1, 2*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A052549.P606962949634374277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A052549.P606962949634374277

namespace A052549

/-- `or(1, 2*a(n-1))` -/
def P606962949634374277.Spec : Prop :=
  ∀ n, (P606962949634374277.a n : ℤ) = A052549 n

end A052549

/-! ## A052549.P2764289321589108772

`xor(1, 2*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A052549.P2764289321589108772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A052549.P2764289321589108772

namespace A052549

/-- `xor(1, 2*a(n-1))` -/
def P2764289321589108772.Spec : Prop :=
  ∀ n, (P2764289321589108772.a n : ℤ) = A052549 n

end A052549

/-! ## A052549.P15969578048314604601

`record[2*a(n-2)]-1` with `a(0)=2, a(1)=5`
-/

namespace A052549.P15969578048314604601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A052549.P15969578048314604601

namespace A052549

/-- `record[2*a(n-2)]-1` -/
def P15969578048314604601.Spec : Prop :=
  ∀ n, P15969578048314604601.a n = A052549 n

end A052549

/-! ## A052549.P2327796080269990763

`3-2*(1-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A052549.P2327796080269990763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A052549.P2327796080269990763

namespace A052549

/-- `3-2*(1-a(n-1))` -/
def P2327796080269990763.Spec : Prop :=
  ∀ n, P2327796080269990763.a n = A052549 n

end A052549

/-! ## A052549.P2969031948009685803

`a(n-1)+1+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A052549.P2969031948009685803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (1 + a (n - 1))

end

end A052549.P2969031948009685803

namespace A052549

/-- `a(n-1)+1+a(n-1)` -/
def P2969031948009685803.Spec : Prop :=
  ∀ n, (P2969031948009685803.a n : ℤ) = A052549 n

theorem P2969031948009685803.correct : P2969031948009685803.Spec := by
  intro n
  simp only [A052549, Nat.add_sub_cancel, A052549.P2969031948009685803.a, A052549.P17972618579142578720.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052549

/-! ## A052549.P8011046731302999786

`floor(a(n-1)-(2/(1/n-2)-a(n-1)))` with `a(0)=1`
-/

namespace A052549.P8011046731302999786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (2 / (1 / (n : ℚ) - 2) - (a (n - 1) : ℚ))⌋

end

end A052549.P8011046731302999786

namespace A052549

/-- `floor(a(n-1)-(2/(1/n-2)-a(n-1)))` -/
def P8011046731302999786.Spec : Prop :=
  ∀ n, P8011046731302999786.a n = A052549 n

end A052549

/-! ## A052549.P13662273167129023305

`a(n-1)-((2-a(n-1))%a(n-1)-3)` with `a(0)=1`
-/

namespace A052549.P13662273167129023305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (Int.tmod (2 - a (n - 1)) (a (n - 1)) - 3)

end

end A052549.P13662273167129023305

namespace A052549

/-- `a(n-1)-((2-a(n-1))%a(n-1)-3)` -/
def P13662273167129023305.Spec : Prop :=
  ∀ n, P13662273167129023305.a n = A052549 n

end A052549

/-! ## A052549.P2327054253502533997

`A133124(n)+n`
-/

namespace A052549.P2327054253502533997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133124 n + (n : ℤ)

end

end A052549.P2327054253502533997

namespace A052549

/-- `A133124(n)+n` -/
def P2327054253502533997.Spec : Prop :=
  ∀ n, P2327054253502533997.a n = A052549 n

end A052549

/-! ## A052549.P11454987148562282365

`A084215(n+1)-1`
-/

namespace A052549.P11454987148562282365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (n + 1) - 1

end

end A052549.P11454987148562282365

namespace A052549

/-- `A084215(n+1)-1` -/
def P11454987148562282365.Spec : Prop :=
  ∀ n, P11454987148562282365.a n = A052549 n

end A052549

/-! ## A052549.P6911111828860234523

`A055010(n)+2^n`
-/

namespace A052549.P6911111828860234523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + (2 ^ n : ℤ)

end

end A052549.P6911111828860234523

namespace A052549

/-- `A055010(n)+2^n` -/
def P6911111828860234523.Spec : Prop :=
  ∀ n, P6911111828860234523.a n = A052549 n

end A052549

/-! ## A052549.P3397959558726687121

`abs(5*A131577(n)-1)`
-/

namespace A052549.P3397959558726687121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A131577 n - 1|

end

end A052549.P3397959558726687121

namespace A052549

/-- `abs(5*A131577(n)-1)` -/
def P3397959558726687121.Spec : Prop :=
  ∀ n, P3397959558726687121.a n = A052549 n

end A052549

/-! ## A052549.P8368893392968846337

`∑[A257113(n+1)]-1`
-/

namespace A052549.P8368893392968846337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052549.P8368893392968846337

namespace A052549

/-- `∑[A257113(n+1)]-1` -/
def P8368893392968846337.Spec : Prop :=
  ∀ n, P8368893392968846337.a n = A052549 n

end A052549

/-! ## A052549.P4912218129175999879

`A029745(2*(n+1))-1`
-/

namespace A052549.P4912218129175999879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029745 (2 * (n + 1)) - 1

end

end A052549.P4912218129175999879

namespace A052549

/-- `A029745(2*(n+1))-1` -/
def P4912218129175999879.Spec : Prop :=
  ∀ n, P4912218129175999879.a n = A052549 n

end A052549

/-! ## A052549.P4497328285351096359

`A094958(2*(n+1))-1`
-/

namespace A052549.P4497328285351096359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (2 * (n + 1)) - 1

end

end A052549.P4497328285351096359

namespace A052549

/-- `A094958(2*(n+1))-1` -/
def P4497328285351096359.Spec : Prop :=
  ∀ n, P4497328285351096359.a n = A052549 n

end A052549

/-! ## A052549.P5553727180606610875

`A087940(n+1)-and(1, n)`
-/

namespace A052549.P5553727180606610875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087940 (n + 1) - (Nat.land 1 n : ℤ)

end

end A052549.P5553727180606610875

namespace A052549

/-- `A087940(n+1)-and(1, n)` -/
def P5553727180606610875.Spec : Prop :=
  ∀ n, P5553727180606610875.a n = A052549 n

end A052549

/-! ## A052549.P3322492271997762402

`A060182(n)-a(n-1)` with `a(0)=1`
-/

namespace A052549.P3322492271997762402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060182 n - a (n - 1)

end

end A052549.P3322492271997762402

namespace A052549

/-- `A060182(n)-a(n-1)` -/
def P3322492271997762402.Spec : Prop :=
  ∀ n, P3322492271997762402.a n = A052549 n

end A052549

/-! ## A052549.P9407970225946024231

`A052996(n+1)-2^(n+1)`
-/

namespace A052549.P9407970225946024231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A052549.P9407970225946024231

namespace A052549

/-- `A052996(n+1)-2^(n+1)` -/
def P9407970225946024231.Spec : Prop :=
  ∀ n, P9407970225946024231.a n = A052549 n

end A052549

/-!
# A052550: Expansion of (1-2*x)/(1 - 3*x - x^2 + 2*x^3).

The programs for A052550, the canonical program `A052550.P7304336276943108275` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052550 has offset 0).

The definition of A052550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-3x-x^2+2x^3))` (program `A052550.P7304336276943108275`, by `A052550.P7304336276943108275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052550.P7304336276943108275

`ogf((1-2x)/(1-3x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052550

/-- `ogf((1-2x)/(1-3x-x^2+2x^3))` -/
def P7304336276943108275.Spec : Prop :=
  ∀ n, P7304336276943108275.a n = A052550 n

theorem P7304336276943108275.correct : P7304336276943108275.Spec := by
  intro n
  simp only [A052550]

end A052550

/-! ## A052550.P6737726740453987371

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052550.P6737726740453987371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A052550.P6737726740453987371

namespace A052550

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P6737726740453987371.Spec : Prop :=
  ∀ n, P6737726740453987371.a n = A052550 n

end A052550

/-! ## A052550.P2133168665401334130

`2*A052911(n)-A100058(n)`
-/

namespace A052550.P2133168665401334130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052911 n - A100058 n

end

end A052550.P2133168665401334130

namespace A052550

/-- `2*A052911(n)-A100058(n)` -/
def P2133168665401334130.Spec : Prop :=
  ∀ n, P2133168665401334130.a n = A052550 n

end A052550

/-! ## A052550.P6513717017945820476

`2*A052939(n)-A100059(n+1)`
-/

namespace A052550.P6513717017945820476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052939 n - A100059 (n + 1)

end

end A052550.P6513717017945820476

namespace A052550

/-- `2*A052939(n)-A100059(n+1)` -/
def P6513717017945820476.Spec : Prop :=
  ∀ n, P6513717017945820476.a n = A052550 n

end A052550

/-! ## A052550.P6139403312262641604

`A052939(n+1)+A052911(n)-A100058(n+1)`
-/

namespace A052550.P6139403312262641604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 (n + 1) + (A052911 n - A100058 (n + 1))

end

end A052550.P6139403312262641604

namespace A052550

/-- `A052939(n+1)+A052911(n)-A100058(n+1)` -/
def P6139403312262641604.Spec : Prop :=
  ∀ n, P6139403312262641604.a n = A052550 n

end A052550

/-! ## A052550.P7382532640321298988

`A100059(n+2)-(A100058(n+1)+A100058(n))`
-/

namespace A052550.P7382532640321298988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100059 (n + 2) - (A100058 (n + 1) + A100058 n)

end

end A052550.P7382532640321298988

namespace A052550

/-- `A100059(n+2)-(A100058(n+1)+A100058(n))` -/
def P7382532640321298988.Spec : Prop :=
  ∀ n, P7382532640321298988.a n = A052550 n

end A052550

/-! ## A052550.P3531677996834240924

`∑[A052911(n+2)%A052911(n+1)]`
-/

namespace A052550.P3531677996834240924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052911 (n + 2)) (A052911 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052550.P3531677996834240924

namespace A052550

/-- `∑[A052911(n+2)%A052911(n+1)]` -/
def P3531677996834240924.Spec : Prop :=
  ∀ n, P3531677996834240924.a n = A052550 n

end A052550

/-! ## A052550.P11856890986315995104

`A019481(n+2)%Δ[A052939(n+1)]`
-/

namespace A052550.P11856890986315995104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019481 (n + 2)) (f1 (n + 1) - f1 n)

end

end A052550.P11856890986315995104

namespace A052550

/-- `A019481(n+2)%Δ[A052939(n+1)]` -/
def P11856890986315995104.Spec : Prop :=
  ∀ n, P11856890986315995104.a n = A052550 n

end A052550

/-!
# A052551: Expansion of 1/((1 - x)*(1 - 2*x^2)).

The programs for A052551, the canonical program `A052551.P12451787209951696191` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052551 has offset 0).

The definition of A052551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+2x^3))` (program `A052551.P12451787209951696191`, by `A052551.P12451787209951696191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052551.P12451787209951696191

`ogf(1/(1-x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052551

/-- `ogf(1/(1-x-2x^2+2x^3))` -/
def P12451787209951696191.Spec : Prop :=
  ∀ n, P12451787209951696191.a n = A052551 n

theorem P12451787209951696191.correct : P12451787209951696191.Spec := by
  intro n
  simp only [A052551]

end A052551

/-! ## A052551.P387091836928010403

`2^(1+floor(n/2))-1`
-/

namespace A052551.P387091836928010403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + ⌊(n : ℚ) / 2⌋ : ℤ) - 1

end

end A052551.P387091836928010403

namespace A052551

/-- `2^(1+floor(n/2))-1` -/
def P387091836928010403.Spec : Prop :=
  ∀ n, P387091836928010403.a n = (A052551 n : ℚ)

end A052551

/-! ## A052551.P17578693569889837493

`∑[2*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A052551.P17578693569889837493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052551.P17578693569889837493

namespace A052551

/-- `∑[2*a(n-2)]` -/
def P17578693569889837493.Spec : Prop :=
  ∀ n, (P17578693569889837493.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P16707046023538801469

`or(1, 2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052551.P16707046023538801469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor 1 (2 * a (n - 2))

end

end A052551.P16707046023538801469

namespace A052551

/-- `or(1, 2*a(n-2))` -/
def P16707046023538801469.Spec : Prop :=
  ∀ n, (P16707046023538801469.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P17924115213856473060

`xor(1, 2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052551.P17924115213856473060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (2 * a (n - 2))

end

end A052551.P17924115213856473060

namespace A052551

/-- `xor(1, 2*a(n-2))` -/
def P17924115213856473060.Spec : Prop :=
  ∀ n, (P17924115213856473060.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P5625135188621939569

`abs(2*a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A052551.P5625135188621939569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) + 1

end

end A052551.P5625135188621939569

namespace A052551

/-- `abs(2*a(n-2)+1)` -/
def P5625135188621939569.Spec : Prop :=
  ∀ n, (P5625135188621939569.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P16526107599333323411

`2*(a(n-2)+1/2)` with `a(0)=1, a(1)=1`
-/

namespace A052551.P16526107599333323411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 2) + (1 : ℚ) / 2)

end

end A052551.P16526107599333323411

namespace A052551

/-- `2*(a(n-2)+1/2)` -/
def P16526107599333323411.Spec : Prop :=
  ∀ n, P16526107599333323411.a n = (A052551 n : ℚ)

end A052551

/-! ## A052551.P13371501929590175882

`∑[((2*(n+1))%4)^(n/2)]`
-/

namespace A052551.P13371501929590175882
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) % 4 : ℕ) : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052551.P13371501929590175882

namespace A052551

/-- `∑[((2*(n+1))%4)^(n/2)]` -/
def P13371501929590175882.Spec : Prop :=
  ∀ n, P13371501929590175882.a n = (A052551 n : ℝ)

end A052551

/-! ## A052551.P15538121059035455059

`∑[a(n-2)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A052551.P15538121059035455059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052551.P15538121059035455059

namespace A052551

/-- `∑[a(n-2)+a(n-2)]` -/
def P15538121059035455059.Spec : Prop :=
  ∀ n, (P15538121059035455059.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P7094388099838261171

`∑[a(n-2)/(1-1/2)]` with `a(0)=1, a(1)=0`
-/

namespace A052551.P7094388099838261171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052551.P7094388099838261171

namespace A052551

/-- `∑[a(n-2)/(1-1/2)]` -/
def P7094388099838261171.Spec : Prop :=
  ∀ n, P7094388099838261171.a n = (A052551 n : ℚ)

end A052551

/-! ## A052551.P5293193743886119619

`or(a(n-2)+1, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A052551.P5293193743886119619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor (a (n - 2) + 1) (a (n - 1))

end

end A052551.P5293193743886119619

namespace A052551

/-- `or(a(n-2)+1, a(n-1))` -/
def P5293193743886119619.Spec : Prop :=
  ∀ n, (P5293193743886119619.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P13243938452369577032

`xor(a(n-2)+1, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052551.P13243938452369577032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (a (n - 2) + 1) (a (n - 2))

end

end A052551.P13243938452369577032

namespace A052551

/-- `xor(a(n-2)+1, a(n-2))` -/
def P13243938452369577032.Spec : Prop :=
  ∀ n, (P13243938452369577032.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P13485308101906917757

`2*(1-(1/2-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A052551.P13485308101906917757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (1 - ((1 : ℚ) / 2 - a (n - 2)))

end

end A052551.P13485308101906917757

namespace A052551

/-- `2*(1-(1/2-a(n-2)))` -/
def P13485308101906917757.Spec : Prop :=
  ∀ n, P13485308101906917757.a n = (A052551 n : ℚ)

end A052551

/-! ## A052551.P9906938506853248852

`abs(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A052551.P9906938506853248852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A052551.P9906938506853248852

namespace A052551

/-- `abs(a(n-2)+a(n-2)+1)` -/
def P9906938506853248852.Spec : Prop :=
  ∀ n, (P9906938506853248852.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P651950844293485706

`floor(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A052551.P651950844293485706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A052551.P651950844293485706

namespace A052551

/-- `floor(a(n-2)+a(n-2)+1)` -/
def P651950844293485706.Spec : Prop :=
  ∀ n, (P651950844293485706.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P8466670975335747851

`ceil(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A052551.P8466670975335747851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A052551.P8466670975335747851

namespace A052551

/-- `ceil(a(n-2)+a(n-2)+1)` -/
def P8466670975335747851.Spec : Prop :=
  ∀ n, (P8466670975335747851.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P17800366134920543618

`round(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A052551.P17800366134920543618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A052551.P17800366134920543618

namespace A052551

/-- `round(a(n-2)+a(n-2)+1)` -/
def P17800366134920543618.Spec : Prop :=
  ∀ n, (P17800366134920543618.a n : ℤ) = A052551 n

end A052551

/-! ## A052551.P8859736858012824568

`(a(n-2)+a(n-2)+1)/a(n-1)%2` with `a(0)=1, a(1)=1`
-/

namespace A052551.P8859736858012824568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) + (a (n - 2) + 1)) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)

end

end A052551.P8859736858012824568

namespace A052551

/-- `(a(n-2)+a(n-2)+1)/a(n-1)%2` -/
def P8859736858012824568.Spec : Prop :=
  ∀ n, P8859736858012824568.a n = (A052551 n : ℚ)

end A052551

/-! ## A052551.P7876790663033247199

`∑[A077957(n)]`
-/

namespace A052551.P7876790663033247199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052551.P7876790663033247199

namespace A052551

/-- `∑[A077957(n)]` -/
def P7876790663033247199.Spec : Prop :=
  ∀ n, P7876790663033247199.a n = A052551 n

end A052551

/-! ## A052551.P6661675725776725799

`A087100(or(1, n))`
-/

namespace A052551.P6661675725776725799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (Nat.lor 1 n)

end

end A052551.P6661675725776725799

namespace A052551

/-- `A087100(or(1, n))` -/
def P6661675725776725799.Spec : Prop :=
  ∀ n, P6661675725776725799.a n = A052551 n

end A052551

/-!
# A052552: a(2*n+1) = 1, a(2*n) = 2*a(2*n-2) - 1.

The programs for A052552, the canonical program `A052552.P5617847279663752581` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052552 has offset 0).

The definition of A052552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052552.P5617847279663752581

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052552

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P5617847279663752581.Spec : Prop :=
  ∀ n, P5617847279663752581.a n = A052552 n

theorem P5617847279663752581.correct : P5617847279663752581.Spec := by
  intro n
  simp only [A052552]

end A052552

/-! ## A052552.P14372058094924998756

`abs(a(n-1)-a(n-2)-a(n-1)*a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A052552.P14372058094924998756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  |a (n - 1) - a (n - 2) - a (n - 1) * a (n - 2)|

end

end A052552.P14372058094924998756

namespace A052552

/-- `abs(a(n-1)-a(n-2)-a(n-1)*a(n-2))` -/
def P14372058094924998756.Spec : Prop :=
  ∀ n, P14372058094924998756.a n = A052552 n

end A052552

/-! ## A052552.P8767940491512970165

`∑[ogf((-2+x+2x^2)/(-1+2x^2))]`
-/

namespace A052552.P8767940491512970165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052552.P8767940491512970165

namespace A052552

/-- `∑[ogf((-2+x+2x^2)/(-1+2x^2))]` -/
def P8767940491512970165.Spec : Prop :=
  ∀ n, P8767940491512970165.a n = A052552 n

end A052552

/-! ## A052552.P4333453598019937875

`ogf((-2+x+2x^2)/(-1+x+2x^2-2x^3))`
-/

namespace A052552.P4333453598019937875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, -1, -2, 2] n

end

end A052552.P4333453598019937875

namespace A052552

/-- `ogf((-2+x+2x^2)/(-1+x+2x^2-2x^3))` -/
def P4333453598019937875.Spec : Prop :=
  ∀ n, P4333453598019937875.a n = A052552 n

end A052552

/-! ## A052552.P2352173728359218077

`2*a(n-2)-1` with `a(0)=2, a(1)=1`
-/

namespace A052552.P2352173728359218077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * a (n - 2) - 1

end

end A052552.P2352173728359218077

namespace A052552

/-- `2*a(n-2)-1` -/
def P2352173728359218077.Spec : Prop :=
  ∀ n, P2352173728359218077.a n = A052552 n

end A052552

/-! ## A052552.P1006908139437390944

`lcm(2, a(n-2))-1` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052552.P1006908139437390944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  (Int.lcm 2 (a (n - 2)) : ℤ) - 1

end

end A052552.P1006908139437390944

namespace A052552

/-- `lcm(2, a(n-2))-1` -/
def P1006908139437390944.Spec : Prop :=
  ∀ n, P1006908139437390944.a n = A052552 n

end A052552

/-! ## A052552.P8224442055888955401

`((-1)^n+1)^(n/2)+1`
-/

namespace A052552.P8224442055888955401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 1 : ℝ) ^ ((n : ℚ) / 2 : ℝ) + 1

end

end A052552.P8224442055888955401

namespace A052552

/-- `((-1)^n+1)^(n/2)+1` -/
def P8224442055888955401.Spec : Prop :=
  ∀ n, P8224442055888955401.a n = (A052552 n : ℝ)

end A052552

/-! ## A052552.P1303984618882180827

`A051032(n)/a(n-1)` with `a(0)=2`
-/

namespace A052552.P1303984618882180827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A051032 n : ℚ) / a (n - 1)

end

end A052552.P1303984618882180827

namespace A052552

/-- `A051032(n)/a(n-1)` -/
def P1303984618882180827.Spec : Prop :=
  ∀ n, P1303984618882180827.a n = (A052552 n : ℚ)

end A052552

/-! ## A052552.P5800834075202072254

`A094373(A027656(n))`
-/

namespace A052552.P5800834075202072254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A027656 n).toNat

end

end A052552.P5800834075202072254

namespace A052552

/-- `A094373(A027656(n))` -/
def P5800834075202072254.Spec : Prop :=
  ∀ n, P5800834075202072254.a n = A052552 n

end A052552

/-! ## A052552.P7606269372231652124

`A094373(∑[∑[A105811(n+3)]])`
-/

namespace A052552.P7606269372231652124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052552.P7606269372231652124

namespace A052552

/-- `A094373(∑[∑[A105811(n+3)]])` -/
def P7606269372231652124.Spec : Prop :=
  ∀ n, P7606269372231652124.a n = A052552 n

end A052552

/-! ## A052552.P10168655909252137688

`(A077957(n)+A010684(n))/A010684(n)`
-/

namespace A052552.P10168655909252137688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077957 n + A010684 n : ℚ) / (A010684 n : ℚ)

end

end A052552.P10168655909252137688

namespace A052552

/-- `(A077957(n)+A010684(n))/A010684(n)` -/
def P10168655909252137688.Spec : Prop :=
  ∀ n, P10168655909252137688.a n = (A052552 n : ℚ)

end A052552

/-! ## A052552.P12916492298906436500

`(A082388(n+1)+A077957(n))/A082388(n+1)`
-/

namespace A052552.P12916492298906436500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082388 (n + 1) + A077957 n : ℚ) / (A082388 (n + 1) : ℚ)

end

end A052552.P12916492298906436500

namespace A052552

/-- `(A082388(n+1)+A077957(n))/A082388(n+1)` -/
def P12916492298906436500.Spec : Prop :=
  ∀ n, P12916492298906436500.a n = (A052552 n : ℚ)

end A052552

/-! ## A052552.P6797421090310453941

`gcd(A010673(n), A051032(n+1))`
-/

namespace A052552.P6797421090310453941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010673 n) (A051032 (n + 1))

end

end A052552.P6797421090310453941

namespace A052552

/-- `gcd(A010673(n), A051032(n+1))` -/
def P6797421090310453941.Spec : Prop :=
  ∀ n, (P6797421090310453941.a n : ℤ) = A052552 n

end A052552

/-! ## A052552.P18149015195617887

`and(A016116(n+1)+1, A033999(n+1))`
-/

namespace A052552.P18149015195617887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016116 (n + 1) + 1) (A033999 (n + 1))

end

end A052552.P18149015195617887

namespace A052552

/-- `and(A016116(n+1)+1, A033999(n+1))` -/
def P18149015195617887.Spec : Prop :=
  ∀ n, P18149015195617887.a n = A052552 n

end A052552

/-! ## A052552.P7444603644283586036

`Δ[A060546(n)+n]`
-/

namespace A052552.P7444603644283586036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052552.P7444603644283586036

namespace A052552

/-- `Δ[A060546(n)+n]` -/
def P7444603644283586036.Spec : Prop :=
  ∀ n, P7444603644283586036.a n = A052552 n

end A052552

/-! ## A052552.P1271631899101698444

`abs(Δ[A106624(n+1)])`
-/

namespace A052552.P1271631899101698444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A052552.P1271631899101698444

namespace A052552

/-- `abs(Δ[A106624(n+1)])` -/
def P1271631899101698444.Spec : Prop :=
  ∀ n, P1271631899101698444.a n = A052552 n

end A052552

/-! ## A052552.P1992573865705906061

`Δ[∑[A131575(n)]+n]`
-/

namespace A052552.P1992573865705906061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052552.P1992573865705906061

namespace A052552

/-- `Δ[∑[A131575(n)]+n]` -/
def P1992573865705906061.Spec : Prop :=
  ∀ n, P1992573865705906061.a n = A052552 n

end A052552

/-! ## A052552.P13448550453347945893

`Δ[A016116(n+1)+n]`
-/

namespace A052552.P13448550453347945893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052552.P13448550453347945893

namespace A052552

/-- `Δ[A016116(n+1)+n]` -/
def P13448550453347945893.Spec : Prop :=
  ∀ n, P13448550453347945893.a n = A052552 n

end A052552

/-! ## A052552.P17822980740015802797

`Δ[A131572(n+1)+n]`
-/

namespace A052552.P17822980740015802797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052552.P17822980740015802797

namespace A052552

/-- `Δ[A131572(n+1)+n]` -/
def P17822980740015802797.Spec : Prop :=
  ∀ n, P17822980740015802797.a n = A052552 n

end A052552

/-! ## A052552.P2676589533721117956

`A140407(A193356(n+1))`
-/

namespace A052552.P2676589533721117956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (A193356 (n + 1)).toNat

end

end A052552.P2676589533721117956

namespace A052552

/-- `A140407(A193356(n+1))` -/
def P2676589533721117956.Spec : Prop :=
  ∀ n, P2676589533721117956.a n = A052552 n

end A052552

/-!
# A052553: Square array of binomial coefficients T(n,k) = binomial(n,k), n >= 0, k >= 0, read by upward antidiagonals.

The programs for A052553, the canonical program `A052553.P6824603088273532891` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052553 has offset 0).

The definition of A052553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)-col(n), col(n))` (program `A052553.P6824603088273532891`, by `A052553.P6824603088273532891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052553.P6824603088273532891

`C(row(n)-col(n), col(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052553

/-- `C(row(n)-col(n), col(n))` -/
def P6824603088273532891.Spec : Prop :=
  ∀ n, (P6824603088273532891.a n : ℤ) = A052553 n

theorem P6824603088273532891.correct : P6824603088273532891.Spec := by
  intro n
  simp only [A052553]

end A052553

/-! ## A052553.P2811362406236783156

`T(n-1,k)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A052553.P2811362406236783156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUp2Left a n

end

end A052553.P2811362406236783156

namespace A052553

/-- `T(n-1,k)+T(n-2,k-1)` -/
def P2811362406236783156.Spec : Prop :=
  ∀ n, (P2811362406236783156.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P10380942589065027924

`A089627(n)/A007318(n)`
-/

namespace A052553.P10380942589065027924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A007318 n : ℚ)

end

end A052553.P10380942589065027924

namespace A052553

/-- `A089627(n)/A007318(n)` -/
def P10380942589065027924.Spec : Prop :=
  ∀ n, P10380942589065027924.a n = (A052553 n : ℚ)

end A052553

/-! ## A052553.P11748680671898398416

`C(A025581(n), A002262(n))`
-/

namespace A052553.P11748680671898398416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A002262 n).toNat

end

end A052553.P11748680671898398416

namespace A052553

/-- `C(A025581(n), A002262(n))` -/
def P11748680671898398416.Spec : Prop :=
  ∀ n, (P11748680671898398416.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P886884050665530597

`C(A025581(n), log2(A059268(n)))`
-/

namespace A052553.P886884050665530597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A052553.P886884050665530597

namespace A052553

/-- `C(A025581(n), log2(A059268(n)))` -/
def P886884050665530597.Spec : Prop :=
  ∀ n, (P886884050665530597.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P5916124161797605338

`A059674(n)*A077605(n+1)`
-/

namespace A052553.P5916124161797605338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 n * A077605 (n + 1)

end

end A052553.P5916124161797605338

namespace A052553

/-- `A059674(n)*A077605(n+1)` -/
def P5916124161797605338.Spec : Prop :=
  ∀ n, P5916124161797605338.a n = A052553 n

end A052553

/-! ## A052553.P16295344054618565196

`A077605(n+1)*A085476(n)`
-/

namespace A052553.P16295344054618565196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A085476 n

end

end A052553.P16295344054618565196

namespace A052553

/-- `A077605(n+1)*A085476(n)` -/
def P16295344054618565196.Spec : Prop :=
  ∀ n, P16295344054618565196.a n = A052553 n

end A052553

/-! ## A052553.P125955349783021501

`C(A144257(n+1), A002262(n))`
-/

namespace A052553.P125955349783021501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1)).toNat (A002262 n).toNat

end

end A052553.P125955349783021501

namespace A052553

/-- `C(A144257(n+1), A002262(n))` -/
def P125955349783021501.Spec : Prop :=
  ∀ n, (P125955349783021501.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P10792528441892248209

`C(A193592(n)-1, A002262(n))`
-/

namespace A052553.P10792528441892248209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A193592 n - 1).toNat (A002262 n).toNat

end

end A052553.P10792528441892248209

namespace A052553

/-- `C(A193592(n)-1, A002262(n))` -/
def P10792528441892248209.Spec : Prop :=
  ∀ n, (P10792528441892248209.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P3093260707289441092

`C(A025581(n), n-A057944(n))`
-/

namespace A052553.P3093260707289441092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat ((n : ℤ) - A057944 n).toNat

end

end A052553.P3093260707289441092

namespace A052553

/-- `C(A025581(n), n-A057944(n))` -/
def P3093260707289441092.Spec : Prop :=
  ∀ n, (P3093260707289441092.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P12739075560286685163

`C(A004736(n+1)-1, A002262(n))`
-/

namespace A052553.P12739075560286685163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) - 1).toNat (A002262 n).toNat

end

end A052553.P12739075560286685163

namespace A052553

/-- `C(A004736(n+1)-1, A002262(n))` -/
def P12739075560286685163.Spec : Prop :=
  ∀ n, (P12739075560286685163.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P12093800250280773171

`C(A025581(n), A002260(n+1)-1)`
-/

namespace A052553.P12093800250280773171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A002260 (n + 1) - 1).toNat

end

end A052553.P12093800250280773171

namespace A052553

/-- `C(A025581(n), A002260(n+1)-1)` -/
def P12093800250280773171.Spec : Prop :=
  ∀ n, (P12093800250280773171.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P8221545194137256870

`C(A004736(n+1)-1, A053616(n))`
-/

namespace A052553.P8221545194137256870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) - 1).toNat (A053616 n).toNat

end

end A052553.P8221545194137256870

namespace A052553

/-- `C(A004736(n+1)-1, A053616(n))` -/
def P8221545194137256870.Spec : Prop :=
  ∀ n, (P8221545194137256870.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P9267829723766771687

`C(A004736(n+1)-1, log2(A059268(n)))`
-/

namespace A052553.P9267829723766771687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) - 1).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A052553.P9267829723766771687

namespace A052553

/-- `C(A004736(n+1)-1, log2(A059268(n)))` -/
def P9267829723766771687.Spec : Prop :=
  ∀ n, (P9267829723766771687.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P4464321155560808341

`C(A004736(n+1)-1, A002260(n+1)-1)`
-/

namespace A052553.P4464321155560808341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) - 1).toNat (A002260 (n + 1) - 1).toNat

end

end A052553.P4464321155560808341

namespace A052553

/-- `C(A004736(n+1)-1, A002260(n+1)-1)` -/
def P4464321155560808341.Spec : Prop :=
  ∀ n, (P4464321155560808341.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P9709811698491198546

`C(A057554(2*(n+1)), A057554(2*n+1))`
-/

namespace A052553.P9709811698491198546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057554 (2 * (n + 1))).toNat (A057554 (2 * n + 1)).toNat

end

end A052553.P9709811698491198546

namespace A052553

/-- `C(A057554(2*(n+1)), A057554(2*n+1))` -/
def P9709811698491198546.Spec : Prop :=
  ∀ n, (P9709811698491198546.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P4156617256258448383

`C(A025581(n), A025581(A112367(n)))`
-/

namespace A052553.P4156617256258448383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A025581 (A112367 n).toNat).toNat

end

end A052553.P4156617256258448383

namespace A052553

/-- `C(A025581(n), A025581(A112367(n)))` -/
def P4156617256258448383.Spec : Prop :=
  ∀ n, (P4156617256258448383.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P4203356806262085520

`C(A000096(A003056(n))-n, A002262(n))`
-/

namespace A052553.P4203356806262085520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000096 (A003056 n).toNat - (n : ℤ)).toNat (A002262 n).toNat

end

end A052553.P4203356806262085520

namespace A052553

/-- `C(A000096(A003056(n))-n, A002262(n))` -/
def P4203356806262085520.Spec : Prop :=
  ∀ n, (P4203356806262085520.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P13409089804313503137

`C(A025581(n), A003056(n)-A025581(n))`
-/

namespace A052553.P13409089804313503137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A003056 n - A025581 n).toNat

end

end A052553.P13409089804313503137

namespace A052553

/-- `C(A025581(n), A003056(n)-A025581(n))` -/
def P13409089804313503137.Spec : Prop :=
  ∀ n, (P13409089804313503137.a n : ℤ) = A052553 n

end A052553

/-! ## A052553.P9871472546310822910

`C(A000096(A003056(n))-n, A002260(n+1)-1)`
-/

namespace A052553.P9871472546310822910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000096 (A003056 n).toNat - (n : ℤ)).toNat (A002260 (n + 1) - 1).toNat

end

end A052553.P9871472546310822910

namespace A052553

/-- `C(A000096(A003056(n))-n, A002260(n+1)-1)` -/
def P9871472546310822910.Spec : Prop :=
  ∀ n, (P9871472546310822910.a n : ℤ) = A052553 n

end A052553

/-!
# A052554: Expansion of e.g.f.: (1-x)/(1 - x - x^2).

The programs for A052554, the canonical program `A052554.P9995278227307206288` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052554 has offset 0).

The definition of A052554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052554.P9995278227307206288

`n*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052554

/-- `n*a(n-1)+n*(n-1)*a(n-2)` -/
def P9995278227307206288.Spec : Prop :=
  ∀ n, P9995278227307206288.a n = A052554 n

theorem P9995278227307206288.correct : P9995278227307206288.Spec := by
  intro n
  simp only [A052554]

end A052554

/-! ## A052554.P4449071327521365330

`n!*A212804(n)`
-/

namespace A052554.P4449071327521365330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A212804 n

end

end A052554.P4449071327521365330

namespace A052554

/-- `n!*A212804(n)` -/
def P4449071327521365330.Spec : Prop :=
  ∀ n, P4449071327521365330.a n = A052554 n

end A052554

/-! ## A052554.P8215861558782178985

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A052554.P8215861558782178985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052554.P8215861558782178985

namespace A052554

/-- `n*(a(n-1)+(n-1)*a(n-2))` -/
def P8215861558782178985.Spec : Prop :=
  ∀ n, P8215861558782178985.a n = A052554 n

theorem P8215861558782178985.correct : P8215861558782178985.Spec := by
  intro n
  simp only [A052554, Nat.add_sub_cancel, A052554.P8215861558782178985.a, A052554.P9995278227307206288.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052554

/-! ## A052554.P1427740711825675504

`abs(Δ[a(n-2)-a(n-1)])*n!` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A052554.P1427740711825675504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * (Nat.factorial n : ℤ)

end

end A052554.P1427740711825675504

namespace A052554

/-- `abs(Δ[a(n-2)-a(n-1)])*n!` -/
def P1427740711825675504.Spec : Prop :=
  ∀ n, P1427740711825675504.a n = A052554 n

end A052554

/-! ## A052554.P7518108073863262479

`(∑[a(n-1)-(1-a(n-2))]-n)*n!` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052554.P7518108073863262479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052554.P7518108073863262479

namespace A052554

/-- `(∑[a(n-1)-(1-a(n-2))]-n)*n!` -/
def P7518108073863262479.Spec : Prop :=
  ∀ n, P7518108073863262479.a n = A052554 n

end A052554

/-! ## A052554.P11801870599469708203

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A052554.P11801870599469708203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A052554.P11801870599469708203

namespace A052554

/-- `n*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P11801870599469708203.Spec : Prop :=
  ∀ n, P11801870599469708203.a n = A052554 n

theorem P11801870599469708203.correct : P11801870599469708203.Spec := by
  intro n
  simp only [A052554, Nat.add_sub_cancel, A052554.P11801870599469708203.a, A052554.P9995278227307206288.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052554

/-! ## A052554.P1972348817434769730

`n!*Δ[A000045(n)]`
-/

namespace A052554.P1972348817434769730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052554.P1972348817434769730

namespace A052554

/-- `n!*Δ[A000045(n)]` -/
def P1972348817434769730.Spec : Prop :=
  ∀ n, P1972348817434769730.a n = A052554 n

end A052554

/-! ## A052554.P363679651560790168

`n!*Δ[A001611(n)]`
-/

namespace A052554.P363679651560790168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052554.P363679651560790168

namespace A052554

/-- `n!*Δ[A001611(n)]` -/
def P363679651560790168.Spec : Prop :=
  ∀ n, P363679651560790168.a n = A052554 n

end A052554

/-! ## A052554.P4389862640680365679

`n!*A000045(abs(1-n))`
-/

namespace A052554.P4389862640680365679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 |1 - (n : ℤ)|.toNat

end

end A052554.P4389862640680365679

namespace A052554

/-- `n!*A000045(abs(1-n))` -/
def P4389862640680365679.Spec : Prop :=
  ∀ n, P4389862640680365679.a n = A052554 n

end A052554

/-! ## A052554.P9324042507717107816

`A000142(n)*A212804(n)`
-/

namespace A052554.P9324042507717107816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A212804 n

end

end A052554.P9324042507717107816

namespace A052554

/-- `A000142(n)*A212804(n)` -/
def P9324042507717107816.Spec : Prop :=
  ∀ n, P9324042507717107816.a n = A052554 n

end A052554

/-!
# A052555: Expansion of e.g.f. 1/(1-2*x-x^2).

The programs for A052555, the canonical program `A052555.P12048574818209855516` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052555 has offset 0).

The definition of A052555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052555.P12048574818209855516

`2*n*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052555

/-- `2*n*a(n-1)+n*(n-1)*a(n-2)` -/
def P12048574818209855516.Spec : Prop :=
  ∀ n, P12048574818209855516.a n = A052555 n

theorem P12048574818209855516.correct : P12048574818209855516.Spec := by
  intro n
  simp only [A052555]

end A052555

/-! ## A052555.P11275904283079145521

`n!*A000129(n+1)`
-/

namespace A052555.P11275904283079145521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000129 (n + 1)

end

end A052555.P11275904283079145521

namespace A052555

/-- `n!*A000129(n+1)` -/
def P11275904283079145521.Spec : Prop :=
  ∀ n, P11275904283079145521.a n = A052555 n

end A052555

/-! ## A052555.P11960077521649668270

`n!*∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A052555.P11960077521649668270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052555.P11960077521649668270

namespace A052555

/-- `n!*∑[a(n-2)+2*a(n-1)]` -/
def P11960077521649668270.Spec : Prop :=
  ∀ n, (P11960077521649668270.a n : ℤ) = A052555 n

end A052555

/-! ## A052555.P9930458846940406960

`n*(2*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A052555.P9930458846940406960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052555.P9930458846940406960

namespace A052555

/-- `n*(2*a(n-1)+(n-1)*a(n-2))` -/
def P9930458846940406960.Spec : Prop :=
  ∀ n, P9930458846940406960.a n = A052555 n

theorem P9930458846940406960.correct : P9930458846940406960.Spec := by
  intro n
  simp only [A052555, Nat.add_sub_cancel, A052555.P9930458846940406960.a, A052555.P12048574818209855516.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052555

/-! ## A052555.P6813835986333918316

`A110327(∑[n])`
-/

namespace A052555.P6813835986333918316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052555.P6813835986333918316

namespace A052555

/-- `A110327(∑[n])` -/
def P6813835986333918316.Spec : Prop :=
  ∀ n, P6813835986333918316.a n = A052555 n

end A052555

/-! ## A052555.P12706495535496584510

`record[A110327(n)]`
-/

namespace A052555.P12706495535496584510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052555.P12706495535496584510

namespace A052555

/-- `record[A110327(n)]` -/
def P12706495535496584510.Spec : Prop :=
  ∀ n, P12706495535496584510.a n = A052555 n

end A052555

/-! ## A052555.P401565902468357773

`n!*∑[A001333(n)]`
-/

namespace A052555.P401565902468357773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052555.P401565902468357773

namespace A052555

/-- `n!*∑[A001333(n)]` -/
def P401565902468357773.Spec : Prop :=
  ∀ n, P401565902468357773.a n = A052555 n

end A052555

/-! ## A052555.P9743227475304940315

`n!*Δ[A024537(n)]`
-/

namespace A052555.P9743227475304940315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052555.P9743227475304940315

namespace A052555

/-- `n!*Δ[A024537(n)]` -/
def P9743227475304940315.Spec : Prop :=
  ∀ n, P9743227475304940315.a n = A052555 n

end A052555

/-! ## A052555.P5613784916577375447

`n!*A215928(n+1)`
-/

namespace A052555.P5613784916577375447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A215928 (n + 1)

end

end A052555.P5613784916577375447

namespace A052555

/-- `n!*A215928(n+1)` -/
def P5613784916577375447.Spec : Prop :=
  ∀ n, P5613784916577375447.a n = A052555 n

end A052555

/-!
# A052556: Expansion of e.g.f. 1/(1-x-x^3).

The programs for A052556, the canonical program `A052556.P7653366935109672189` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052556 has offset 0).

The definition of A052556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052556.P7653366935109672189

`n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052556

/-- `n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` -/
def P7653366935109672189.Spec : Prop :=
  ∀ n, P7653366935109672189.a n = A052556 n

theorem P7653366935109672189.correct : P7653366935109672189.Spec := by
  intro n
  simp only [A052556]

end A052556

/-! ## A052556.P8860654978604218161

`n!*A000930(n)`
-/

namespace A052556.P8860654978604218161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000930 n

end

end A052556.P8860654978604218161

namespace A052556

/-- `n!*A000930(n)` -/
def P8860654978604218161.Spec : Prop :=
  ∀ n, P8860654978604218161.a n = A052556 n

end A052556

/-! ## A052556.P992706715619268023

`abs(n!*A199804(n))`
-/

namespace A052556.P992706715619268023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A199804 n|

end

end A052556.P992706715619268023

namespace A052556

/-- `abs(n!*A199804(n))` -/
def P992706715619268023.Spec : Prop :=
  ∀ n, P992706715619268023.a n = A052556 n

end A052556

/-! ## A052556.P10113474444265906380

`n!*∑[A078012(n)]`
-/

namespace A052556.P10113474444265906380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052556.P10113474444265906380

namespace A052556

/-- `n!*∑[A078012(n)]` -/
def P10113474444265906380.Spec : Prop :=
  ∀ n, P10113474444265906380.a n = A052556 n

end A052556

/-! ## A052556.P2437841715975528686

`n!*A078012(n+3)`
-/

namespace A052556.P2437841715975528686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A078012 (n + 3)

end

end A052556.P2437841715975528686

namespace A052556

/-- `n!*A078012(n+3)` -/
def P2437841715975528686.Spec : Prop :=
  ∀ n, P2437841715975528686.a n = A052556 n

end A052556

/-! ## A052556.P10000402103477867206

`n!*A068921(abs(1-n))`
-/

namespace A052556.P10000402103477867206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A068921 |1 - (n : ℤ)|.toNat

end

end A052556.P10000402103477867206

namespace A052556

/-- `n!*A068921(abs(1-n))` -/
def P10000402103477867206.Spec : Prop :=
  ∀ n, P10000402103477867206.a n = A052556 n

end A052556

/-! ## A052556.P5228202940723835520

`n!*A226916(2*n+7)`
-/

namespace A052556.P5228202940723835520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A226916 (2 * n + 7)

end

end A052556.P5228202940723835520

namespace A052556

/-- `n!*A226916(2*n+7)` -/
def P5228202940723835520.Spec : Prop :=
  ∀ n, P5228202940723835520.a n = A052556 n

end A052556

/-! ## A052556.P3642440446736032077

`n!*Δ[Δ[A077868(n+1)]]`
-/

namespace A052556.P3642440446736032077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052556.P3642440446736032077

namespace A052556

/-- `n!*Δ[Δ[A077868(n+1)]]` -/
def P3642440446736032077.Spec : Prop :=
  ∀ n, P3642440446736032077.a n = A052556 n

end A052556

/-! ## A052556.P1135156569819022151

`A052557(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052556.P1135156569819022151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052557 n + (n : ℤ) * a (n - 1)

end

end A052556.P1135156569819022151

namespace A052556

/-- `A052557(n)+n*a(n-1)` -/
def P1135156569819022151.Spec : Prop :=
  ∀ n, P1135156569819022151.a n = A052556 n

end A052556

/-! ## A052556.P13514464524664580181

`A000142(n)*A000930(n)`
-/

namespace A052556.P13514464524664580181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000930 n

end

end A052556.P13514464524664580181

namespace A052556

/-- `A000142(n)*A000930(n)` -/
def P13514464524664580181.Spec : Prop :=
  ∀ n, P13514464524664580181.a n = A052556 n

end A052556

/-!
# A052557: Expansion of e.g.f. (1-x)/(1-x-x^3).

The programs for A052557, the canonical program `A052557.P1366558070652620937` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052557 has offset 0).

The definition of A052557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052557.P1366558070652620937

`n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052557

/-- `n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` -/
def P1366558070652620937.Spec : Prop :=
  ∀ n, P1366558070652620937.a n = A052557 n

theorem P1366558070652620937.correct : P1366558070652620937.Spec := by
  intro n
  simp only [A052557]

end A052557

/-! ## A052557.P7795293401513918182

`n!*A078012(n)`
-/

namespace A052557.P7795293401513918182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A078012 n

end

end A052557.P7795293401513918182

namespace A052557

/-- `n!*A078012(n)` -/
def P7795293401513918182.Spec : Prop :=
  ∀ n, P7795293401513918182.a n = A052557 n

end A052557

/-! ## A052557.P15868664494374325178

`A000142(n)*A078012(n)`
-/

namespace A052557.P15868664494374325178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A078012 n

end

end A052557.P15868664494374325178

namespace A052557

/-- `A000142(n)*A078012(n)` -/
def P15868664494374325178.Spec : Prop :=
  ∀ n, P15868664494374325178.a n = A052557 n

end A052557

/-! ## A052557.P17690539521951535350

`∏[A028310(n)]*A078012(n)`
-/

namespace A052557.P17690539521951535350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A078012 n

end

end A052557.P17690539521951535350

namespace A052557

/-- `∏[A028310(n)]*A078012(n)` -/
def P17690539521951535350.Spec : Prop :=
  ∀ n, P17690539521951535350.a n = A052557 n

end A052557

/-! ## A052557.P9286555019377492163

`A000142(n)*A135851(n+2)`
-/

namespace A052557.P9286555019377492163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A135851 (n + 2)

end

end A052557.P9286555019377492163

namespace A052557

/-- `A000142(n)*A135851(n+2)` -/
def P9286555019377492163.Spec : Prop :=
  ∀ n, P9286555019377492163.a n = A052557 n

end A052557

/-! ## A052557.P9329781852544046794

`A021009(A000217(n))*A078012(n)`
-/

namespace A052557.P9329781852544046794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A000217 n).toNat * A078012 n

end

end A052557.P9329781852544046794

namespace A052557

/-- `A021009(A000217(n))*A078012(n)` -/
def P9329781852544046794.Spec : Prop :=
  ∀ n, P9329781852544046794.a n = A052557 n

end A052557

/-! ## A052557.P2430811130723675495

`A078012(n)*A098361(A000096(n))`
-/

namespace A052557.P2430811130723675495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n * A098361 (A000096 n).toNat

end

end A052557.P2430811130723675495

namespace A052557

/-- `A078012(n)*A098361(A000096(n))` -/
def P2430811130723675495.Spec : Prop :=
  ∀ n, P2430811130723675495.a n = A052557 n

end A052557

/-! ## A052557.P5595155872509218716

`A000142(n)*A144903(A000096(n+1))`
-/

namespace A052557.P5595155872509218716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A144903 (A000096 (n + 1)).toNat

end

end A052557.P5595155872509218716

namespace A052557

/-- `A000142(n)*A144903(A000096(n+1))` -/
def P5595155872509218716.Spec : Prop :=
  ∀ n, P5595155872509218716.a n = A052557 n

end A052557

/-! ## A052557.P6545582243363506848

`A052605(n+1)/(n+1)`
-/

namespace A052557.P6545582243363506848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052605 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052557.P6545582243363506848

namespace A052557

/-- `A052605(n+1)/(n+1)` -/
def P6545582243363506848.Spec : Prop :=
  ∀ n, P6545582243363506848.a n = (A052557 n : ℚ)

end A052557

/-!
# A052558: a(n) = n! *((-1)^n + 2*n + 3)/4.

The programs for A052558, the canonical program `A052558.P7414200787905979476` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052558 has offset 0).

The definition of A052558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052558.P7414200787905979476

`a(n-1)+(n²-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052558

/-- `a(n-1)+(n²-1)*a(n-2)` -/
def P7414200787905979476.Spec : Prop :=
  ∀ n, P7414200787905979476.a n = A052558 n

theorem P7414200787905979476.correct : P7414200787905979476.Spec := by
  intro n
  simp only [A052558]

end A052558

/-! ## A052558.P1204786325750698729

`((-1)^n+2*n+3)*n!/4`
-/

namespace A052558.P1204786325750698729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((-1) ^ n + (2 * n : ℤ) + 3) * (Nat.factorial n : ℤ) : ℚ) / 4

end

end A052558.P1204786325750698729

namespace A052558

/-- `((-1)^n+2*n+3)*n!/4` -/
def P1204786325750698729.Spec : Prop :=
  ∀ n, P1204786325750698729.a n = (A052558 n : ℚ)

end A052558

/-! ## A052558.P8701342678615977981

`n!*((-1)^n+2*n+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052558.P8701342678615977981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * ((-1) ^ n + (2 * n : ℤ) + 3) : ℚ) / 4

end

end A052558.P8701342678615977981

namespace A052558

/-- `n!*((-1)^n+2*n+3)/4` -/
def P8701342678615977981.Spec : Prop :=
  ∀ n, P8701342678615977981.a n = (A052558 n : ℚ)

end A052558

/-! ## A052558.P13288605448539654644

`(n+1)!-A052591(n)`
-/

namespace A052558.P13288605448539654644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A052591 n

end

end A052558.P13288605448539654644

namespace A052558

/-- `(n+1)!-A052591(n)` -/
def P13288605448539654644.Spec : Prop :=
  ∀ n, P13288605448539654644.a n = A052558 n

end A052558

/-! ## A052558.P17628197707031638511

`n!*∑[char[2*n]]`
-/

namespace A052558.P17628197707031638511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052558.P17628197707031638511

namespace A052558

/-- `n!*∑[char[2*n]]` -/
def P17628197707031638511.Spec : Prop :=
  ∀ n, (P17628197707031638511.a n : ℤ) = A052558 n

end A052558

/-! ## A052558.P10547456577483198305

`(1+floor(n/2))*n!`
-/

namespace A052558.P10547456577483198305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋) * (Nat.factorial n : ℤ)

end

end A052558.P10547456577483198305

namespace A052558

/-- `(1+floor(n/2))*n!` -/
def P10547456577483198305.Spec : Prop :=
  ∀ n, P10547456577483198305.a n = A052558 n

end A052558

/-! ## A052558.P13959084641125441273

`∏[ceil(sin(n)²)+xor(1, n)]`
-/

namespace A052558.P13959084641125441273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052558.P13959084641125441273

namespace A052558

/-- `∏[ceil(sin(n)²)+xor(1, n)]` -/
def P13959084641125441273.Spec : Prop :=
  ∀ n, P13959084641125441273.a n = A052558 n

end A052558

/-! ## A052558.P4735159063115668934

`∏[a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052558.P4735159063115668934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052558.P4735159063115668934

namespace A052558

/-- `∏[a(n-2)+2]` -/
def P4735159063115668934.Spec : Prop :=
  ∀ n, (P4735159063115668934.a n : ℤ) = A052558 n

end A052558

/-! ## A052558.P18192253801408997595

`∏[∑[2-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052558.P18192253801408997595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052558.P18192253801408997595

namespace A052558

/-- `∏[∑[2-a(n-1)]]` -/
def P18192253801408997595.Spec : Prop :=
  ∀ n, P18192253801408997595.a n = A052558 n

end A052558

/-! ## A052558.P11991868270423954106

`(xor(1, n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A052558.P11991868270423954106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor 1 n + 1) * a (n - 1)

end

end A052558.P11991868270423954106

namespace A052558

/-- `(xor(1, n)+1)*a(n-1)` -/
def P11991868270423954106.Spec : Prop :=
  ∀ n, (P11991868270423954106.a n : ℤ) = A052558 n

end A052558

/-!
# A052559: Expansion of e.g.f. (1-x)/(1 - 2*x - x^2 + x^3).

The programs for A052559, the canonical program `A052559.P8913627615231802633` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052559 has offset 0).

The definition of A052559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052559.P8913627615231802633

`n!*A077998(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052559

/-- `n!*A077998(n)` -/
def P8913627615231802633.Spec : Prop :=
  ∀ n, P8913627615231802633.a n = A052559 n

theorem P8913627615231802633.correct : P8913627615231802633.Spec := by
  intro n
  simp only [A052559]

end A052559

/-! ## A052559.P12480885803219405959

`2*n*a(n-1)+n*(n-1)*a(n-2)-n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A052559.P12480885803219405959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) + (n : ℤ) * (((n : ℤ) - 1) * a (n - 2)) - (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A052559.P12480885803219405959

namespace A052559

/-- `2*n*a(n-1)+n*(n-1)*a(n-2)-n*(n-1)*(n-2)*a(n-3)` -/
def P12480885803219405959.Spec : Prop :=
  ∀ n, P12480885803219405959.a n = A052559 n

end A052559

/-! ## A052559.P17891386997714541059

`n!*A106803(n+1)`
-/

namespace A052559.P17891386997714541059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A106803 (n + 1)

end

end A052559.P17891386997714541059

namespace A052559

/-- `n!*A106803(n+1)` -/
def P17891386997714541059.Spec : Prop :=
  ∀ n, P17891386997714541059.a n = A052559 n

end A052559

/-! ## A052559.P12767816081809560794

`A052662(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A052559.P12767816081809560794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052662 n - (n : ℤ) * a (n - 1)

end

end A052559.P12767816081809560794

namespace A052559

/-- `A052662(n)-n*a(n-1)` -/
def P12767816081809560794.Spec : Prop :=
  ∀ n, P12767816081809560794.a n = A052559 n

end A052559

/-! ## A052559.P13476828406955823845

`A052662(n)-A052640(n)`
-/

namespace A052559.P13476828406955823845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052662 n - A052640 n

end

end A052559.P13476828406955823845

namespace A052559

/-- `A052662(n)-A052640(n)` -/
def P13476828406955823845.Spec : Prop :=
  ∀ n, P13476828406955823845.a n = A052559 n

end A052559

/-! ## A052559.P589509913277414432

`A000142(n)*A077998(n)`
-/

namespace A052559.P589509913277414432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A077998 n

end

end A052559.P589509913277414432

namespace A052559

/-- `A000142(n)*A077998(n)` -/
def P589509913277414432.Spec : Prop :=
  ∀ n, P589509913277414432.a n = A052559 n

end A052559

/-! ## A052559.P3682610028679823969

`∏[A028310(n)]*A077998(n)`
-/

namespace A052559.P3682610028679823969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A077998 n

end

end A052559.P3682610028679823969

namespace A052559

/-- `∏[A028310(n)]*A077998(n)` -/
def P3682610028679823969.Spec : Prop :=
  ∀ n, P3682610028679823969.a n = A052559 n

end A052559

/-! ## A052559.P13680166913742436197

`A000142(n)*A106803(n+1)`
-/

namespace A052559.P13680166913742436197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A106803 (n + 1)

end

end A052559.P13680166913742436197

namespace A052559

/-- `A000142(n)*A106803(n+1)` -/
def P13680166913742436197.Spec : Prop :=
  ∀ n, P13680166913742436197.a n = A052559 n

end A052559

/-! ## A052559.P18260446853843091274

`Δ[A006054(n+1)]*A000142(n)`
-/

namespace A052559.P18260446853843091274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052559.P18260446853843091274

namespace A052559

/-- `Δ[A006054(n+1)]*A000142(n)` -/
def P18260446853843091274.Spec : Prop :=
  ∀ n, P18260446853843091274.a n = A052559 n

end A052559

/-! ## A052559.P14245903284117136493

`A077998(n)*A094587(A000124(n))`
-/

namespace A052559.P14245903284117136493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n * A094587 (A000124 n).toNat

end

end A052559.P14245903284117136493

namespace A052559

/-- `A077998(n)*A094587(A000124(n))` -/
def P14245903284117136493.Spec : Prop :=
  ∀ n, P14245903284117136493.a n = A052559 n

end A052559

/-!
# A052560: a(n) = 3*n!.

The programs for A052560, the canonical program `A052560.P16127495256931462694` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052560 has offset 0).

The definition of A052560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n!` (program `A052560.P16127495256931462694`, by `A052560.P16127495256931462694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052560.P16127495256931462694

`3*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052560

/-- `3*n!` -/
def P16127495256931462694.Spec : Prop :=
  ∀ n, (P16127495256931462694.a n : ℤ) = A052560 n

theorem P16127495256931462694.correct : P16127495256931462694.Spec := by
  intro n
  simp only [A052560]

end A052560

/-! ## A052560.P15437819108408820288

`n*a(n-1)` with `a(0)=3`
-/

namespace A052560.P15437819108408820288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  n * a (n - 1)

end

end A052560.P15437819108408820288

namespace A052560

/-- `n*a(n-1)` -/
def P15437819108408820288.Spec : Prop :=
  ∀ n, (P15437819108408820288.a n : ℤ) = A052560 n

end A052560

/-! ## A052560.P2123077818167700942

`n!/tan(acot(3))`
-/

namespace A052560.P2123077818167700942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

end

end A052560.P2123077818167700942

namespace A052560

/-- `n!/tan(acot(3))` -/
def P2123077818167700942.Spec : Prop :=
  ∀ n, P2123077818167700942.a n = (A052560 n : ℝ)

end A052560

/-! ## A052560.P16026069888523925344

`n!/cot(atan(3))`
-/

namespace A052560.P16026069888523925344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.cot (Real.arctan (3 : ℝ))

end

end A052560.P16026069888523925344

namespace A052560

/-- `n!/cot(atan(3))` -/
def P16026069888523925344.Spec : Prop :=
  ∀ n, P16026069888523925344.a n = (A052560 n : ℝ)

end A052560

/-! ## A052560.P12248444299815404389

`n!/sqrt(1/9)`
-/

namespace A052560.P12248444299815404389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A052560.P12248444299815404389

namespace A052560

/-- `n!/sqrt(1/9)` -/
def P12248444299815404389.Spec : Prop :=
  ∀ n, P12248444299815404389.a n = (A052560 n : ℝ)

theorem P12248444299815404389.correct : P12248444299815404389.Spec := by
  intro n
  simp only [A052560, Nat.add_sub_cancel, A052560.P12248444299815404389.a, A052560.P16127495256931462694.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052560

/-! ## A052560.P9591747695110985839

`lcm(3, 1-n!)+3`
-/

namespace A052560.P9591747695110985839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (Nat.factorial n : ℤ)) + 3

end

end A052560.P9591747695110985839

namespace A052560

/-- `lcm(3, 1-n!)+3` -/
def P9591747695110985839.Spec : Prop :=
  ∀ n, (P9591747695110985839.a n : ℤ) = A052560 n

end A052560

/-! ## A052560.P1950565980481261704

`2^(log2(3)+log2(n!))`
-/

namespace A052560.P1950565980481261704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (3 : ℝ) + Real.logb 2 (Nat.factorial n : ℝ))

end

end A052560.P1950565980481261704

namespace A052560

/-- `2^(log2(3)+log2(n!))` -/
def P1950565980481261704.Spec : Prop :=
  ∀ n, P1950565980481261704.a n = (A052560 n : ℝ)

end A052560

/-! ## A052560.P18098468246063078629

`∏[C(3, 4^n)+n]`
-/

namespace A052560.P18098468246063078629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (4 ^ n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052560.P18098468246063078629

namespace A052560

/-- `∏[C(3, 4^n)+n]` -/
def P18098468246063078629.Spec : Prop :=
  ∀ n, (P18098468246063078629.a n : ℤ) = A052560 n

end A052560

/-! ## A052560.P10595450767615357949

`∏[gcd(n, C(3, n+2))]`
-/

namespace A052560.P10595450767615357949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 3 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052560.P10595450767615357949

namespace A052560

/-- `∏[gcd(n, C(3, n+2))]` -/
def P10595450767615357949.Spec : Prop :=
  ∀ n, (P10595450767615357949.a n : ℤ) = A052560 n

end A052560

/-! ## A052560.P1924007302511763965

`∏[or(n, C(3, n+2))]`
-/

namespace A052560.P1924007302511763965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.choose 3 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052560.P1924007302511763965

namespace A052560

/-- `∏[or(n, C(3, n+2))]` -/
def P1924007302511763965.Spec : Prop :=
  ∀ n, (P1924007302511763965.a n : ℤ) = A052560 n

end A052560

/-!
# A052561: a(n) = (1 + 2^n) * n!.

The programs for A052561, the canonical program `A052561.P15030560017801226101` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052561 has offset 0).

The definition of A052561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+2^n)*n!` (program `A052561.P15030560017801226101`, by `A052561.P15030560017801226101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052561.P15030560017801226101

`(1+2^n)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052561

/-- `(1+2^n)*n!` -/
def P15030560017801226101.Spec : Prop :=
  ∀ n, (P15030560017801226101.a n : ℤ) = A052561 n

theorem P15030560017801226101.correct : P15030560017801226101.Spec := by
  intro n
  simp only [A052561]

end A052561

/-! ## A052561.P6732848447704577464

`A000051(n)*A000142(n)`
-/

namespace A052561.P6732848447704577464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000142 n

end

end A052561.P6732848447704577464

namespace A052561

/-- `A000051(n)*A000142(n)` -/
def P6732848447704577464.Spec : Prop :=
  ∀ n, P6732848447704577464.a n = A052561 n

theorem P6732848447704577464.correct : P6732848447704577464.Spec := by
  intro n
  simp only [A052561, Nat.add_sub_cancel, A052561.P6732848447704577464.a, A052561.P15030560017801226101.a, A000051, A000051.P14067217022188782580.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052561

/-! ## A052561.P8145413801411620718

`3*n*a(n-1)-2*n*(n-1)*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A052561.P8145413801411620718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (3 * n : ℤ) * a (n - 1) - (2 * n : ℤ) * ((n : ℤ) - 1) * a (n - 2)

end

end A052561.P8145413801411620718

namespace A052561

/-- `3*n*a(n-1)-2*n*(n-1)*a(n-2)` -/
def P8145413801411620718.Spec : Prop :=
  ∀ n, P8145413801411620718.a n = A052561 n

end A052561

/-! ## A052561.P2684506029375643355

`n!*Δ[or(n, 2^n)]`
-/

namespace A052561.P2684506029375643355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A052561.P2684506029375643355

namespace A052561

/-- `n!*Δ[or(n, 2^n)]` -/
def P2684506029375643355.Spec : Prop :=
  ∀ n, P2684506029375643355.a n = A052561 n

end A052561

/-! ## A052561.P12292590308310610598

`∏[floor(2/acot(n))]+n!`
-/

namespace A052561.P12292590308310610598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052561.P12292590308310610598

namespace A052561

/-- `∏[floor(2/acot(n))]+n!` -/
def P12292590308310610598.Spec : Prop :=
  ∀ n, P12292590308310610598.a n = A052561 n

end A052561

/-! ## A052561.P9447368807517360353

`n!*∑[2^abs(1-n)]`
-/

namespace A052561.P9447368807517360353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052561.P9447368807517360353

namespace A052561

/-- `n!*∑[2^abs(1-n)]` -/
def P9447368807517360353.Spec : Prop :=
  ∀ n, P9447368807517360353.a n = (A052561 n : ℚ)

end A052561

/-! ## A052561.P882724273680989350

`∏[log2(lcm(2, 4^n))]+n!`
-/

namespace A052561.P882724273680989350
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℝ)

end

end A052561.P882724273680989350

namespace A052561

/-- `∏[log2(lcm(2, 4^n))]+n!` -/
def P882724273680989350.Spec : Prop :=
  ∀ n, P882724273680989350.a n = (A052561 n : ℝ)

end A052561

/-! ## A052561.P7818041053238089140

`n!+n!/2^-n`
-/

namespace A052561.P7818041053238089140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) + (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A052561.P7818041053238089140

namespace A052561

/-- `n!+n!/2^-n` -/
def P7818041053238089140.Spec : Prop :=
  ∀ n, P7818041053238089140.a n = (A052561 n : ℚ)

theorem P7818041053238089140.correct : P7818041053238089140.Spec := by
  intro n
  simp only [A052561, Nat.add_sub_cancel, A052561.P7818041053238089140.a, A052561.P15030560017801226101.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052561

/-! ## A052561.P10287449817665225733

`2*n*a(n-1)-n!` with `a(0)=2`
-/

namespace A052561.P10287449817665225733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n : ℤ) * a (n - 1) - (Nat.factorial n : ℤ)

end

end A052561.P10287449817665225733

namespace A052561

/-- `2*n*a(n-1)-n!` -/
def P10287449817665225733.Spec : Prop :=
  ∀ n, P10287449817665225733.a n = A052561 n

end A052561

/-! ## A052561.P6645797939264056832

`A000165(n)+n!`
-/

namespace A052561.P6645797939264056832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n + (Nat.factorial n : ℤ)

end

end A052561.P6645797939264056832

namespace A052561

/-- `A000165(n)+n!` -/
def P6645797939264056832.Spec : Prop :=
  ∀ n, P6645797939264056832.a n = A052561 n

theorem P6645797939264056832.correct : P6645797939264056832.Spec := by
  intro n
  simp only [A052561, Nat.add_sub_cancel, A052561.P6645797939264056832.a, A052561.P15030560017801226101.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052561

/-!
# A052562: a(n) = 5^n * n!.

The programs for A052562, the canonical program `A052562.P1600029599119446722` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052562 has offset 0).

The definition of A052562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*n!` (program `A052562.P1600029599119446722`, by `A052562.P1600029599119446722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052562.P1600029599119446722

`5^n*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052562

/-- `5^n*n!` -/
def P1600029599119446722.Spec : Prop :=
  ∀ n, (P1600029599119446722.a n : ℤ) = A052562 n

theorem P1600029599119446722.correct : P1600029599119446722.Spec := by
  intro n
  simp only [A052562]

end A052562

/-! ## A052562.P3150764993990430556

`5*n*a(n-1)` with `a(0)=1`
-/

namespace A052562.P3150764993990430556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * n * a (n - 1)

end

end A052562.P3150764993990430556

namespace A052562

/-- `5*n*a(n-1)` -/
def P3150764993990430556.Spec : Prop :=
  ∀ n, (P3150764993990430556.a n : ℤ) = A052562 n

end A052562

/-! ## A052562.P3324330064869219061

`n!*A000351(n)`
-/

namespace A052562.P3324330064869219061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000351 n

end

end A052562.P3324330064869219061

namespace A052562

/-- `n!*A000351(n)` -/
def P3324330064869219061.Spec : Prop :=
  ∀ n, P3324330064869219061.a n = A052562 n

theorem P3324330064869219061.correct : P3324330064869219061.Spec := by
  intro n
  simp only [A052562, Nat.add_sub_cancel, A052562.P3324330064869219061.a, A052562.P1600029599119446722.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052562

/-! ## A052562.P12950796694738491128

`n!/5^-n`
-/

namespace A052562.P12950796694738491128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (5 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A052562.P12950796694738491128

namespace A052562

/-- `n!/5^-n` -/
def P12950796694738491128.Spec : Prop :=
  ∀ n, P12950796694738491128.a n = (A052562 n : ℚ)

theorem P12950796694738491128.correct : P12950796694738491128.Spec := by
  intro n
  simp only [A052562, Nat.add_sub_cancel, A052562.P12950796694738491128.a, A052562.P1600029599119446722.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052562

/-! ## A052562.P12041231384155660683

`∏[round(1/acot(5*n))]`
-/

namespace A052562.P12041231384155660683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052562.P12041231384155660683

namespace A052562

/-- `∏[round(1/acot(5*n))]` -/
def P12041231384155660683.Spec : Prop :=
  ∀ n, P12041231384155660683.a n = A052562 n

end A052562

/-! ## A052562.P7723321343442636372

`∏[floor(acot(n))+5*n]`
-/

namespace A052562.P7723321343442636372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052562.P7723321343442636372

namespace A052562

/-- `∏[floor(acot(n))+5*n]` -/
def P7723321343442636372.Spec : Prop :=
  ∀ n, P7723321343442636372.a n = A052562 n

end A052562

/-! ## A052562.P870797468323337512

`∏[gcd(5*n, floor(acot(n)))]`
-/

namespace A052562.P870797468323337512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052562.P870797468323337512

namespace A052562

/-- `∏[gcd(5*n, floor(acot(n)))]` -/
def P870797468323337512.Spec : Prop :=
  ∀ n, (P870797468323337512.a n : ℤ) = A052562 n

end A052562

/-! ## A052562.P16031496619343955203

`∏[or(5*n, floor(acot(n)))]`
-/

namespace A052562.P16031496619343955203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052562.P16031496619343955203

namespace A052562

/-- `∏[or(5*n, floor(acot(n)))]` -/
def P16031496619343955203.Spec : Prop :=
  ∀ n, P16031496619343955203.a n = A052562 n

end A052562

/-! ## A052562.P659326796464146646

`∏[a(n-1)+5]` with `a(0)=1, a(1)=5`
-/

namespace A052562.P659326796464146646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052562.P659326796464146646

namespace A052562

/-- `∏[a(n-1)+5]` -/
def P659326796464146646.Spec : Prop :=
  ∀ n, (P659326796464146646.a n : ℤ) = A052562 n

end A052562

/-! ## A052562.P4519849865584517403

`∏[C(2, n+2)+5*n]`
-/

namespace A052562.P4519849865584517403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052562.P4519849865584517403

namespace A052562

/-- `∏[C(2, n+2)+5*n]` -/
def P4519849865584517403.Spec : Prop :=
  ∀ n, (P4519849865584517403.a n : ℤ) = A052562 n

end A052562

/-!
# A052563: Expansion of e.g.f.: (1-x)/(1-3*x).

The programs for A052563, there is no canonical definition to state claims against.
-/

/-! ## A052563.P15321041460054984658

`∏[xor(3*n, char[n^6])]`
-/

namespace A052563.P15321041460054984658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * n) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052563.P15321041460054984658

/-! ## A052563.P11923181511009816279

`∏[floor(3/acot(n))-char[1]]`
-/

namespace A052563.P11923181511009816279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052563.P11923181511009816279

/-! ## A052563.P652547755175079422

`∏[a(n-1)+3]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052563.P652547755175079422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052563.P652547755175079422

/-! ## A052563.P8368368349277402782

`3*n*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052563.P8368368349277402782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (n * a (n - 1))

end

end A052563.P8368368349277402782

/-! ## A052563.P4683191566849575565

`n!*Δ[floor(3^(n-1))]`
-/

namespace A052563.P4683191566849575565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052563.P4683191566849575565

/-! ## A052563.P6078425868076416132

`ceil(n!*Δ[3^(n-1)])`
-/

namespace A052563.P6078425868076416132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n)⌉

end

end A052563.P6078425868076416132

/-! ## A052563.P17533347098551482347

`round(n!*Δ[3^(n-1)])`
-/

namespace A052563.P17533347098551482347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n))

end

end A052563.P17533347098551482347

/-! ## A052563.P14171384654504665960

`∏[∪[3*(n+2), (n+1)!]]`
-/

namespace A052563.P14171384654504665960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052563.P14171384654504665960

/-! ## A052563.P6115674051566666266

`∏[comp[comp[3*(n+1)]+2]+1]`
-/

namespace A052563.P6115674051566666266
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052563.P6115674051566666266

/-! ## A052563.P8566685221213680161

`ceil(A098559(n)/3)`
-/

namespace A052563.P8566685221213680161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098559 n : ℚ) / 3⌉

end

end A052563.P8566685221213680161

/-!
# A052564: Expansion of e.g.f. x*(1-x)/(1-2*x).

The programs for A052564, the canonical program `A052564.P5133734044377297783` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052564 has offset 0).

The definition of A052564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052564.P5133734044377297783

`2*n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052564

/-- `2*n*a(n-1)` -/
def P5133734044377297783.Spec : Prop :=
  ∀ n, (P5133734044377297783.a n : ℤ) = A052564 n

theorem P5133734044377297783.correct : P5133734044377297783.Spec := by
  intro n
  simp only [A052564]

end A052564

/-! ## A052564.P10576238899952980234

`round(2^(n-2)*n!)`
-/

namespace A052564.P10576238899952980234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.factorial n : ℚ))

end

end A052564.P10576238899952980234

namespace A052564

/-- `round(2^(n-2)*n!)` -/
def P10576238899952980234.Spec : Prop :=
  ∀ n, P10576238899952980234.a n = A052564 n

end A052564

/-! ## A052564.P2570877564973128627

`round(2^n*n!/4)`
-/

namespace A052564.P2570877564973128627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℚ) / 4)

end

end A052564.P2570877564973128627

namespace A052564

/-- `round(2^n*n!/4)` -/
def P2570877564973128627.Spec : Prop :=
  ∀ n, P2570877564973128627.a n = A052564 n

end A052564

/-! ## A052564.P252156312174116297

`round(∏[floor(2/acot(n))]/4)`
-/

namespace A052564.P252156312174116297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A052564.P252156312174116297

namespace A052564

/-- `round(∏[floor(2/acot(n))]/4)` -/
def P252156312174116297.Spec : Prop :=
  ∀ n, P252156312174116297.a n = A052564 n

end A052564

/-! ## A052564.P1794503040042407590

`round(∏[log2(lcm(2, 4^n))]/4)`
-/

namespace A052564.P1794503040042407590
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 4)

end

end A052564.P1794503040042407590

namespace A052564

/-- `round(∏[log2(lcm(2, 4^n))]/4)` -/
def P1794503040042407590.Spec : Prop :=
  ∀ n, P1794503040042407590.a n = A052564 n

end A052564

/-! ## A052564.P10978535880312197067

`round(2^(log2(n!)+n)/4)`
-/

namespace A052564.P10978535880312197067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ)) / 4)

end

end A052564.P10978535880312197067

namespace A052564

/-- `round(2^(log2(n!)+n)/4)` -/
def P10978535880312197067.Spec : Prop :=
  ∀ n, P10978535880312197067.a n = A052564 n

end A052564

/-! ## A052564.P1560250607546571367

`floor((2^n*n!+2)/4)`
-/

namespace A052564.P1560250607546571367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n * Nat.factorial n + 2 : ℚ) / 4⌋

end

end A052564.P1560250607546571367

namespace A052564

/-- `floor((2^n*n!+2)/4)` -/
def P1560250607546571367.Spec : Prop :=
  ∀ n, P1560250607546571367.a n = A052564 n

end A052564

/-! ## A052564.P6448293672512484502

`round(∏[ceil(abs(2*n-γ))]/4)`
-/

namespace A052564.P6448293672512484502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 * n : ℝ) - Real.eulerMascheroniConstant|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A052564.P6448293672512484502

namespace A052564

/-- `round(∏[ceil(abs(2*n-γ))]/4)` -/
def P6448293672512484502.Spec : Prop :=
  ∀ n, P6448293672512484502.a n = A052564 n

end A052564

/-! ## A052564.P3671188835570002464

`2*floor(n*a(floor(n²/(n+1))))` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052564.P3671188835570002464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A052564.P3671188835570002464

namespace A052564

/-- `2*floor(n*a(floor(n²/(n+1))))` -/
def P3671188835570002464.Spec : Prop :=
  ∀ n, (P3671188835570002464.a n : ℤ) = A052564 n

end A052564

/-! ## A052564.P14430833422027609896

`a(n-1)/n^-1+a(n-1)/tan(acot(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052564.P14430833422027609896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A052564.P14430833422027609896

namespace A052564

/-- `a(n-1)/n^-1+a(n-1)/tan(acot(n))` -/
def P14430833422027609896.Spec : Prop :=
  ∀ n, P14430833422027609896.a n = (A052564 n : ℝ)

end A052564

/-!
# A052565: E.g.f. (1+x^3-x^4)/(1-x).

The programs for A052565, there is no canonical definition to state claims against.
-/

/-! ## A052565.P1001405941937862795

`(char[3]+1)*n!`
-/

namespace A052565.P1001405941937862795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * Nat.factorial n

end

end A052565.P1001405941937862795

/-! ## A052565.P10140856903015559788

`lcm(∏{e}[n+1, #²], n!)`
-/

namespace A052565.P10140856903015559788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) (Nat.factorial n)

end

end A052565.P10140856903015559788

/-! ## A052565.P3068033366788951864

`n!*ceil(acot((3-n)²))`
-/

namespace A052565.P3068033366788951864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈SequenceMachineLib.acot ((3 - (n : ℤ)) ^ 2 : ℝ)⌉

end

end A052565.P3068033366788951864

/-! ## A052565.P11001041124106973181

`n!*a(ceil(acot(n-3)))` with `a(0)=1`
-/

namespace A052565.P11001041124106973181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n * a ⌈SequenceMachineLib.acot ((n : ℤ) - 3 : ℝ)⌉.toNat

end

end A052565.P11001041124106973181

/-! ## A052565.P4857137890765651773

`n*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=12, a(4)=24`
-/

namespace A052565.P4857137890765651773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 12, 24] fun n a =>
  n * a (n - 1)

end

end A052565.P4857137890765651773

/-! ## A052565.P11290205349544682592

`lcm((1-and(2, n))*n!, ∑{e}[n+1, #]!²)`
-/

namespace A052565.P11290205349544682592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (Nat.land 2 n : ℤ)) * (Nat.factorial n : ℤ)) (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 : ℤ)

end

end A052565.P11290205349544682592

/-! ## A052565.P15872611420348507218

`lcm(n!, A091894(n))`
-/

namespace A052565.P15872611420348507218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A091894 n)

end

end A052565.P15872611420348507218

/-! ## A052565.P17117747519378862260

`n!*A007318(and(n+1, n!))`
-/

namespace A052565.P17117747519378862260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A007318 (Nat.land (n + 1) (Nat.factorial n))

end

end A052565.P17117747519378862260

/-! ## A052565.P12635971876924102552

`(2-A267871(n))*A000142(n)`
-/

namespace A052565.P12635971876924102552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A267871 n) * A000142 n

end

end A052565.P12635971876924102552

/-!
# A052566: Expansion of e.g.f. (2 + x)/(1 - x^2).

The programs for A052566, there is no canonical definition to state claims against.
-/

/-! ## A052566.P14913196658641643137

`gcd(2, n)*n!`
-/

namespace A052566.P14913196658641643137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * Nat.factorial n

end

end A052566.P14913196658641643137

/-! ## A052566.P13378418206500247844

`(2-n%2)*n!`
-/

namespace A052566.P13378418206500247844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A052566.P13378418206500247844

/-! ## A052566.P4892264467908461901

`(2-and(1, n))*n!`
-/

namespace A052566.P4892264467908461901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052566.P4892264467908461901

/-! ## A052566.P13703179416236126939

`abs(or(n, -2))*n!`
-/

namespace A052566.P13703179416236126939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-2)| * (Nat.factorial n : ℤ)

end

end A052566.P13703179416236126939

/-! ## A052566.P8834429049200635955

`-(n!*or(n, -2))`
-/

namespace A052566.P8834429049200635955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial n : ℤ) * Int.lor (n : ℤ) (-2))

end

end A052566.P8834429049200635955

/-! ## A052566.P8798749822390638761

`((n+1)%2+1)*n!`
-/

namespace A052566.P8798749822390638761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2 + 1) * Nat.factorial n

end

end A052566.P8798749822390638761

/-! ## A052566.P356581137133507047

`(and(1, n+1)+1)*n!`
-/

namespace A052566.P356581137133507047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * Nat.factorial n

end

end A052566.P356581137133507047

/-! ## A052566.P10203362328066667415

`val(2*or(2, n), 2)*n!`
-/

namespace A052566.P10203362328066667415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * Nat.lor 2 n) 2 * Nat.factorial n

end

end A052566.P10203362328066667415

/-! ## A052566.P16952203071897601923

`(or(1, n)-(n-1))*n!`
-/

namespace A052566.P16952203071897601923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1)) * (Nat.factorial n : ℤ)

end

end A052566.P16952203071897601923

/-! ## A052566.P15779680767303032493

`Δ[or(1, n+1)]!*n!`
-/

namespace A052566.P15779680767303032493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * Nat.factorial n

end

end A052566.P15779680767303032493

/-!
# A052567: E.g.f.: (1-x)^2/(1-3*x+x^2).

The programs for A052567, there is no canonical definition to state claims against.
-/

/-! ## A052567.P5590622860709493878

`n!*A088305(n)`
-/

namespace A052567.P5590622860709493878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A088305 n

end

end A052567.P5590622860709493878

/-! ## A052567.P4277614654858631351

`A052623(n+1)/(n+1)`
-/

namespace A052567.P4277614654858631351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052623 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052567.P4277614654858631351

/-! ## A052567.P8655622438275616034

`n!*A000045(abs(1-n)+n+1)`
-/

namespace A052567.P8655622438275616034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

end

end A052567.P8655622438275616034

/-! ## A052567.P14849514811619290807

`n!*round(A000045(2*n+1)/ϕ)`
-/

namespace A052567.P14849514811619290807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway ((A000045 (2 * n + 1) : ℝ) / Real.goldenRatio)

end

end A052567.P14849514811619290807

/-! ## A052567.P13847423832224210123

`A000142(n)*A088305(n)`
-/

namespace A052567.P13847423832224210123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A088305 n

end

end A052567.P13847423832224210123

/-! ## A052567.P131342633817380239

`(Δ[record[A000045(A006257(n))]]+(2*n)%2)*n!`
-/

namespace A052567.P131342633817380239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + ((2 * n % 2 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A052567.P131342633817380239

/-! ## A052567.P13306932659500211187

`A000045(A004277(n))*A000142(n)`
-/

namespace A052567.P13306932659500211187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004277 n).toNat * A000142 n

end

end A052567.P13306932659500211187

/-! ## A052567.P11356162853047511517

`(A038507(n)-1)*A000045(A004277(n))`
-/

namespace A052567.P11356162853047511517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038507 n - 1) * A000045 (A004277 n).toNat

end

end A052567.P11356162853047511517

/-! ## A052567.P14446434989391841630

`A000045(A028310(2*n))*A000142(n)`
-/

namespace A052567.P14446434989391841630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 (2 * n)).toNat * A000142 n

end

end A052567.P14446434989391841630

/-!
# A052568: E.g.f.: (1-x)/(1-3*x+x^2).

The programs for A052568, the canonical program `A052568.P10250969859322345287` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052568 has offset 0).

The definition of A052568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052568.P10250969859322345287

`n!*A122367(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052568

/-- `n!*A122367(n)` -/
def P10250969859322345287.Spec : Prop :=
  ∀ n, P10250969859322345287.a n = A052568 n

theorem P10250969859322345287.correct : P10250969859322345287.Spec := by
  intro n
  simp only [A052568]

end A052568

/-! ## A052568.P9187778180397421628

`A000045(2*n+1)*n!`
-/

namespace A052568.P9187778180397421628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * (Nat.factorial n : ℤ)

end

end A052568.P9187778180397421628

namespace A052568

/-- `A000045(2*n+1)*n!` -/
def P9187778180397421628.Spec : Prop :=
  ∀ n, P9187778180397421628.a n = A052568 n

end A052568

/-! ## A052568.P17493725463992739060

`n!*Δ[A001906(n)]`
-/

namespace A052568.P17493725463992739060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052568.P17493725463992739060

namespace A052568

/-- `n!*Δ[A001906(n)]` -/
def P17493725463992739060.Spec : Prop :=
  ∀ n, P17493725463992739060.a n = A052568 n

end A052568

/-! ## A052568.P16405997046682529540

`n!*A001519(n+1)`
-/

namespace A052568.P16405997046682529540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001519 (n + 1)

end

end A052568.P16405997046682529540

namespace A052568

/-- `n!*A001519(n+1)` -/
def P16405997046682529540.Spec : Prop :=
  ∀ n, P16405997046682529540.a n = A052568 n

end A052568

/-! ## A052568.P12815728700204559253

`n!*A094967(2*n)`
-/

namespace A052568.P12815728700204559253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A094967 (2 * n)

end

end A052568.P12815728700204559253

namespace A052568

/-- `n!*A094967(2*n)` -/
def P12815728700204559253.Spec : Prop :=
  ∀ n, P12815728700204559253.a n = A052568 n

end A052568

/-! ## A052568.P12394068614489931804

`n!*A000045(Δ[n²])`
-/

namespace A052568.P12394068614489931804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052568.P12394068614489931804

namespace A052568

/-- `n!*A000045(Δ[n²])` -/
def P12394068614489931804.Spec : Prop :=
  ∀ n, P12394068614489931804.a n = A052568 n

end A052568

/-! ## A052568.P12547534111665164602

`A052574(n+1)/(n+1)`
-/

namespace A052568.P12547534111665164602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052574 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052568.P12547534111665164602

namespace A052568

/-- `A052574(n+1)/(n+1)` -/
def P12547534111665164602.Spec : Prop :=
  ∀ n, P12547534111665164602.a n = (A052568 n : ℚ)

end A052568

/-! ## A052568.P11786855979799075153

`n!*Δ[A000045(2*n)]`
-/

namespace A052568.P11786855979799075153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052568.P11786855979799075153

namespace A052568

/-- `n!*Δ[A000045(2*n)]` -/
def P11786855979799075153.Spec : Prop :=
  ∀ n, P11786855979799075153.a n = A052568 n

end A052568

/-! ## A052568.P10841860540656735763

`A000142(n)*A122367(n)`
-/

namespace A052568.P10841860540656735763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A122367 n

end

end A052568.P10841860540656735763

namespace A052568

/-- `A000142(n)*A122367(n)` -/
def P10841860540656735763.Spec : Prop :=
  ∀ n, P10841860540656735763.a n = A052568 n

end A052568

/-! ## A052568.P11618704500665251405

`A000142(n)*A001519(n+1)`
-/

namespace A052568.P11618704500665251405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001519 (n + 1)

end

end A052568.P11618704500665251405

namespace A052568

/-- `A000142(n)*A001519(n+1)` -/
def P11618704500665251405.Spec : Prop :=
  ∀ n, P11618704500665251405.a n = A052568 n

end A052568

/-!
# A052569: E.g.f. 1/((1-x)(1-x^3)).

The programs for A052569, the canonical program `A052569.P10109366130611393965` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052569 has offset 0).

The definition of A052569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052569.P10109366130611393965

`n!*A008620(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052569

/-- `n!*A008620(n)` -/
def P10109366130611393965.Spec : Prop :=
  ∀ n, P10109366130611393965.a n = A052569 n

theorem P10109366130611393965.correct : P10109366130611393965.Spec := by
  intro n
  simp only [A052569]

end A052569

/-! ## A052569.P16609893044443254887

`n!*∑[char[3*n]]`
-/

namespace A052569.P16609893044443254887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052569.P16609893044443254887

namespace A052569

/-- `n!*∑[char[3*n]]` -/
def P16609893044443254887.Spec : Prop :=
  ∀ n, (P16609893044443254887.a n : ℤ) = A052569 n

end A052569

/-! ## A052569.P17340350211347717105

`(floor(n/3)+1)*n!`
-/

namespace A052569.P17340350211347717105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ + 1) * (Nat.factorial n : ℤ)

end

end A052569.P17340350211347717105

namespace A052569

/-- `(floor(n/3)+1)*n!` -/
def P17340350211347717105.Spec : Prop :=
  ∀ n, P17340350211347717105.a n = A052569 n

theorem P17340350211347717105.correct : P17340350211347717105.Spec := by
  intro n
  simp only [A052569, Nat.add_sub_cancel, A052569.P17340350211347717105.a, A052569.P10109366130611393965.a, A008620, A008620.P16090772857505074278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052569

/-! ## A052569.P806527564632840901

`(floor(n/3)+1)*∏[round(1/acot(n))]`
-/

namespace A052569.P806527564632840901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052569.P806527564632840901

namespace A052569

/-- `(floor(n/3)+1)*∏[round(1/acot(n))]` -/
def P806527564632840901.Spec : Prop :=
  ∀ n, P806527564632840901.a n = A052569 n

end A052569

/-! ## A052569.P2803236414857946549

`(floor(n/3)+1)*∏[ceil(abs(γ-n))]`
-/

namespace A052569.P2803236414857946549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052569.P2803236414857946549

namespace A052569

/-- `(floor(n/3)+1)*∏[ceil(abs(γ-n))]` -/
def P2803236414857946549.Spec : Prop :=
  ∀ n, P2803236414857946549.a n = A052569 n

end A052569

/-! ## A052569.P10978711741727736048

`∏[(3*char[3*n]+n)%A081294(n+1)]`
-/

namespace A052569.P10978711741727736048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 * (if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ) (A081294 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052569.P10978711741727736048

namespace A052569

/-- `∏[(3*char[3*n]+n)%A081294(n+1)]` -/
def P10978711741727736048.Spec : Prop :=
  ∀ n, P10978711741727736048.a n = A052569 n

end A052569

/-! ## A052569.P11008204614652320409

`A052688(n+1)/(n+1)`
-/

namespace A052569.P11008204614652320409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052688 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052569.P11008204614652320409

namespace A052569

/-- `A052688(n+1)/(n+1)` -/
def P11008204614652320409.Spec : Prop :=
  ∀ n, P11008204614652320409.a n = (A052569 n : ℚ)

end A052569

/-!
# A052570: E.g.f.: x/(1-4*x).

The programs for A052570, there is no canonical definition to state claims against.
-/

/-! ## A052570.P4873601954116905043

`floor(4^(n-1)*n!)`
-/

namespace A052570.P4873601954116905043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)⌋

end

end A052570.P4873601954116905043

/-! ## A052570.P10551401340640674654

`round(4^(n-1)*n!)`
-/

namespace A052570.P10551401340640674654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ))

end

end A052570.P10551401340640674654

/-! ## A052570.P3704128795308760010

`floor(4^n*n!/4)`
-/

namespace A052570.P3704128795308760010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n * Nat.factorial n : ℚ) / 4⌋

end

end A052570.P3704128795308760010

/-! ## A052570.P3429422139696447272

`round(4^n*n!/4)`
-/

namespace A052570.P3429422139696447272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n * Nat.factorial n : ℚ) / 4)

end

end A052570.P3429422139696447272

/-! ## A052570.P10833648830649350428

`4*n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A052570.P10833648830649350428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (n * a (n - 1))

end

end A052570.P10833648830649350428

/-! ## A052570.P1766200680439939423

`4^(n-1)*lcm(n!, dr(n))`
-/

namespace A052570.P1766200680439939423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ)) : ℚ)

end

end A052570.P1766200680439939423

/-! ## A052570.P7465435215613762702

`floor(A051711(n)/2)`
-/

namespace A052570.P7465435215613762702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051711 n : ℚ) / 2⌋

end

end A052570.P7465435215613762702

/-! ## A052570.P9055274571367319010

`floor(A047053(n)/4)`
-/

namespace A052570.P9055274571367319010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047053 n : ℚ) / 4⌋

end

end A052570.P9055274571367319010

/-! ## A052570.P12964416837596732681

`A131577(n)²*n!`
-/

namespace A052570.P12964416837596732681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 * (Nat.factorial n : ℤ)

end

end A052570.P12964416837596732681

/-! ## A052570.P3593988018134155529

`(A155559(n)/2)²*n!`
-/

namespace A052570.P3593988018134155529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A155559 n : ℚ) / 2) ^ 2 * (Nat.factorial n : ℚ)

end

end A052570.P3593988018134155529

/-!
# A052571: E.g.f. x^3/(1-x)^2.

The programs for A052571, there is no canonical definition to state claims against.
-/

/-! ## A052571.P11437182547094804724

`n!*floor(n-atan(n))`
-/

namespace A052571.P11437182547094804724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A052571.P11437182547094804724

/-! ## A052571.P10629612355105146939

`(n-ceil(atan(n)))*n!`
-/

namespace A052571.P10629612355105146939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉) * (Nat.factorial n : ℤ)

end

end A052571.P10629612355105146939

/-! ## A052571.P1551489237215685432

`(n-2)*and(-2, n!)`
-/

namespace A052571.P1551489237215685432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * Int.land (-2) (Nat.factorial n : ℤ)

end

end A052571.P1551489237215685432

/-! ## A052571.P16358621300245561568

`(or(1, n!)-1)*(n-2)`
-/

namespace A052571.P16358621300245561568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (Nat.factorial n) : ℤ) - 1) * ((n : ℤ) - 2)

end

end A052571.P16358621300245561568

/-! ## A052571.P17587274975039038869

`and(1-n, (n-2)*n!)`
-/

namespace A052571.P17587274975039038869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (((n : ℤ) - 2) * (Nat.factorial n : ℤ))

end

end A052571.P17587274975039038869

/-! ## A052571.P17920930709366011328

`(n-2)*lcm(n!, C(n, 2))`
-/

namespace A052571.P17920930709366011328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.lcm (Nat.factorial n) (Nat.choose n 2) : ℤ)

end

end A052571.P17920930709366011328

/-! ## A052571.P11544709103444847655

`lcm((n-2)*n!, ∑{p}[n, #])`
-/

namespace A052571.P11544709103444847655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 2) * (Nat.factorial n : ℤ)) ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A052571.P11544709103444847655

/-! ## A052571.P13569054470958334251

`(gcd(1-n, n!)-1)*n!`
-/

namespace A052571.P13569054470958334251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (1 - (n : ℤ)) (Nat.factorial n : ℤ) : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A052571.P13569054470958334251

/-! ## A052571.P1370045641536071805

`(n-2)*(n!-C(n, n²))`
-/

namespace A052571.P1370045641536071805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((Nat.factorial n : ℤ) - (Nat.choose n (n ^ 2) : ℤ))

end

end A052571.P1370045641536071805

/-! ## A052571.P13531542477384178512

`C(2, n+1)+(n-2)*n!`
-/

namespace A052571.P13531542477384178512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + ((n : ℤ) - 2) * (Nat.factorial n : ℤ)

end

end A052571.P13531542477384178512

/-!
# A052572: Expansion of e.g.f.: (1+2*x-2*x^2)/(1-x)^2.

The programs for A052572, there is no canonical definition to state claims against.
-/

/-! ## A052572.P5038105561931430611

`xor(1, (n+3)*n!)-1`
-/

namespace A052572.P5038105561931430611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((n + 3) * Nat.factorial n) : ℤ) - 1

end

end A052572.P5038105561931430611

/-! ## A052572.P13220610311103048363

`(3%comp[∑[n]]+n)*n!`
-/

namespace A052572.P13220610311103048363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) * Nat.factorial n

end

end A052572.P13220610311103048363

/-! ## A052572.P2893126104548549291

`n!+n*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A052572.P2893126104548549291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.factorial n + n * a (n - 1)

end

end A052572.P2893126104548549291

/-! ## A052572.P12165070374728805980

`∏[n+1]+lcm(n, 2*n!)`
-/

namespace A052572.P12165070374728805980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (2 * Nat.factorial n)

end

end A052572.P12165070374728805980

/-! ## A052572.P7536410391573626414

`gcd(n+3, C(2, n+2))*n!`
-/

namespace A052572.P7536410391573626414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (Nat.choose 2 (n + 2)) * Nat.factorial n

end

end A052572.P7536410391573626414

/-! ## A052572.P15584730480867687343

`(2*(n+1)-abs(1-n))*n!`
-/

namespace A052572.P15584730480867687343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - |1 - (n : ℤ)|) * (Nat.factorial n : ℤ)

end

end A052572.P15584730480867687343

/-! ## A052572.P11811561613931956355

`record[(n+1)*((2*n)%(n+2))!]`
-/

namespace A052572.P11811561613931956355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (2 * n % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052572.P11811561613931956355

/-! ## A052572.P9255230602843498272

`(n/(n+2)+n)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A052572.P9255230602843498272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((n : ℚ) / (n + 2 : ℚ) + (n : ℚ)) * a (n - 1)

end

end A052572.P9255230602843498272

/-! ## A052572.P7361773176822161237

`xor((n+3)*n!, C(2, 2*n+1))`
-/

namespace A052572.P7361773176822161237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 3) * Nat.factorial n) (Nat.choose 2 (2 * n + 1))

end

end A052572.P7361773176822161237

/-! ## A052572.P5836727720793305184

`2*n*a(n-1)-∏[n+1]` with `a(0)=1, a(1)=4`
-/

namespace A052572.P5836727720793305184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (2 * n : ℤ) * a (n - 1) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052572.P5836727720793305184

/-!
# A052573: (1+3^n)*n!.

The programs for A052573, the canonical program `A052573.P17531478761167125292` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052573 has offset 0).

The definition of A052573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+3^n)*n!` (program `A052573.P17531478761167125292`, by `A052573.P17531478761167125292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052573.P17531478761167125292

`(1+3^n)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052573

/-- `(1+3^n)*n!` -/
def P17531478761167125292.Spec : Prop :=
  ∀ n, (P17531478761167125292.a n : ℤ) = A052573 n

theorem P17531478761167125292.correct : P17531478761167125292.Spec := by
  intro n
  simp only [A052573]

end A052573

/-! ## A052573.P3083783974164488421

`∏[floor(3/acot(n))]+n!`
-/

namespace A052573.P3083783974164488421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052573.P3083783974164488421

namespace A052573

/-- `∏[floor(3/acot(n))]+n!` -/
def P3083783974164488421.Spec : Prop :=
  ∀ n, P3083783974164488421.a n = A052573 n

end A052573

/-! ## A052573.P6561826665314355343

`(3^n+1)*∏[ceil(abs(γ-n))]`
-/

namespace A052573.P6561826665314355343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052573.P6561826665314355343

namespace A052573

/-- `(3^n+1)*∏[ceil(abs(γ-n))]` -/
def P6561826665314355343.Spec : Prop :=
  ∀ n, P6561826665314355343.a n = A052573 n

end A052573

/-! ## A052573.P13252048679463000716

`A032031(n)+n!`
-/

namespace A052573.P13252048679463000716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032031 n + (Nat.factorial n : ℤ)

end

end A052573.P13252048679463000716

namespace A052573

/-- `A032031(n)+n!` -/
def P13252048679463000716.Spec : Prop :=
  ∀ n, P13252048679463000716.a n = A052573 n

theorem P13252048679463000716.correct : P13252048679463000716.Spec := by
  intro n
  simp only [A052573, Nat.add_sub_cancel, A052573.P13252048679463000716.a, A052573.P17531478761167125292.a, A032031, A032031.P13727891932517305363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052573

/-! ## A052573.P14104684729823169828

`∏[A008486(n)]+n!`
-/

namespace A052573.P14104684729823169828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052573.P14104684729823169828

namespace A052573

/-- `∏[A008486(n)]+n!` -/
def P14104684729823169828.Spec : Prop :=
  ∀ n, P14104684729823169828.a n = A052573 n

end A052573

/-! ## A052573.P17268325237625049406

`A000142(n)+∏[floor(3/acot(n))]`
-/

namespace A052573.P17268325237625049406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052573.P17268325237625049406

namespace A052573

/-- `A000142(n)+∏[floor(3/acot(n))]` -/
def P17268325237625049406.Spec : Prop :=
  ∀ n, P17268325237625049406.a n = A052573 n

end A052573

/-! ## A052573.P13675268206428743936

`A052563(n)+n*a(n-1)` with `a(0)=2`
-/

namespace A052573.P13675268206428743936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052563 n + (n : ℤ) * a (n - 1)

end

end A052573.P13675268206428743936

namespace A052573

/-- `A052563(n)+n*a(n-1)` -/
def P13675268206428743936.Spec : Prop :=
  ∀ n, P13675268206428743936.a n = A052573 n

end A052573

/-! ## A052573.P14308246406320652912

`A032031(n)+A000142(n)`
-/

namespace A052573.P14308246406320652912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032031 n + A000142 n

end

end A052573.P14308246406320652912

namespace A052573

/-- `A032031(n)+A000142(n)` -/
def P14308246406320652912.Spec : Prop :=
  ∀ n, P14308246406320652912.a n = A052573 n

theorem P14308246406320652912.correct : P14308246406320652912.Spec := by
  intro n
  simp only [A052573, Nat.add_sub_cancel, A052573.P14308246406320652912.a, A052573.P17531478761167125292.a, A000142, A000142.P3272619076580183195.a, A032031, A032031.P13727891932517305363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052573

/-! ## A052573.P10199931008186401760

`A000142(n)+∏[A008486(n)]`
-/

namespace A052573.P10199931008186401760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052573.P10199931008186401760

namespace A052573

/-- `A000142(n)+∏[A008486(n)]` -/
def P10199931008186401760.Spec : Prop :=
  ∀ n, P10199931008186401760.a n = A052573 n

end A052573

/-! ## A052573.P443928202594384991

`A000142(n)+∏[A028310(3*n)]`
-/

namespace A052573.P443928202594384991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052573.P443928202594384991

namespace A052573

/-- `A000142(n)+∏[A028310(3*n)]` -/
def P443928202594384991.Spec : Prop :=
  ∀ n, P443928202594384991.a n = A052573 n

end A052573

/-!
# A052574: Expansion of e.g.f. (1-2x)/(1-3x+x^2).

The programs for A052574, the canonical program `A052574.P6335048710962307925` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052574 has offset 0).

The definition of A052574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052574.P6335048710962307925

`n!*A001519(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052574

/-- `n!*A001519(n)` -/
def P6335048710962307925.Spec : Prop :=
  ∀ n, P6335048710962307925.a n = A052574 n

theorem P6335048710962307925.correct : P6335048710962307925.Spec := by
  intro n
  simp only [A052574]

end A052574

/-! ## A052574.P11027466183744261383

`n!*A238941(∑[n])`
-/

namespace A052574.P11027466183744261383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A238941 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052574.P11027466183744261383

namespace A052574

/-- `n!*A238941(∑[n])` -/
def P11027466183744261383.Spec : Prop :=
  ∀ n, P11027466183744261383.a n = A052574 n

end A052574

/-! ## A052574.P4624891468922184730

`n!*A212804(2*n)`
-/

namespace A052574.P4624891468922184730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A212804 (2 * n)

end

end A052574.P4624891468922184730

namespace A052574

/-- `n!*A212804(2*n)` -/
def P4624891468922184730.Spec : Prop :=
  ∀ n, P4624891468922184730.a n = A052574 n

end A052574

/-! ## A052574.P15595634554823101059

`n!*A000045(abs(1-2*n))`
-/

namespace A052574.P15595634554823101059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 |1 - (2 * n : ℤ)|.toNat

end

end A052574.P15595634554823101059

namespace A052574

/-- `n!*A000045(abs(1-2*n))` -/
def P15595634554823101059.Spec : Prop :=
  ∀ n, P15595634554823101059.a n = A052574 n

end A052574

/-! ## A052574.P10836984143733332698

`A000142(n)*A001519(n)`
-/

namespace A052574.P10836984143733332698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001519 n

end

end A052574.P10836984143733332698

namespace A052574

/-- `A000142(n)*A001519(n)` -/
def P10836984143733332698.Spec : Prop :=
  ∀ n, P10836984143733332698.a n = A052574 n

end A052574

/-! ## A052574.P6545594649799788448

`Δ[A003422(n)]*A001519(n)`
-/

namespace A052574.P6545594649799788448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001519 n

end

end A052574.P6545594649799788448

namespace A052574

/-- `Δ[A003422(n)]*A001519(n)` -/
def P6545594649799788448.Spec : Prop :=
  ∀ n, P6545594649799788448.a n = A052574 n

end A052574

/-! ## A052574.P3943513052637081810

`A000142(n)*A212804(2*n)`
-/

namespace A052574.P3943513052637081810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A212804 (2 * n)

end

end A052574.P3943513052637081810

namespace A052574

/-- `A000142(n)*A212804(2*n)` -/
def P3943513052637081810.Spec : Prop :=
  ∀ n, P3943513052637081810.a n = A052574 n

end A052574

/-! ## A052574.P13414232135847866958

`A081123(2*n)*A212804(2*n)`
-/

namespace A052574.P13414232135847866958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) * A212804 (2 * n)

end

end A052574.P13414232135847866958

namespace A052574

/-- `A081123(2*n)*A212804(2*n)` -/
def P13414232135847866958.Spec : Prop :=
  ∀ n, P13414232135847866958.a n = A052574 n

end A052574

/-! ## A052574.P2618286188240105624

`A000045(abs(1-2*n))*∏[A028310(n)]`
-/

namespace A052574.P2618286188240105624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (2 * n : ℤ)|.toNat * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052574.P2618286188240105624

namespace A052574

/-- `A000045(abs(1-2*n))*∏[A028310(n)]` -/
def P2618286188240105624.Spec : Prop :=
  ∀ n, P2618286188240105624.a n = A052574 n

end A052574

/-!
# A052575: Expansion of e.g.f. (1-x)/(1-2*x-2*x^2+2*x^3).

The programs for A052575, the canonical program `A052575.P7489531080747848846` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052575 has offset 0).

The definition of A052575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052575.P7489531080747848846

`n!*A052528(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052575

/-- `n!*A052528(n)` -/
def P7489531080747848846.Spec : Prop :=
  ∀ n, P7489531080747848846.a n = A052575 n

theorem P7489531080747848846.correct : P7489531080747848846.Spec := by
  intro n
  simp only [A052575]

end A052575

/-! ## A052575.P16253643601031680081

`A000142(n)*A052528(n)`
-/

namespace A052575.P16253643601031680081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052528 n

end

end A052575.P16253643601031680081

namespace A052575

/-- `A000142(n)*A052528(n)` -/
def P16253643601031680081.Spec : Prop :=
  ∀ n, P16253643601031680081.a n = A052575 n

end A052575

/-! ## A052575.P13238948804362692171

`A047922(∑[n])*A052528(n)`
-/

namespace A052575.P13238948804362692171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (∑ j ∈ Finset.range (n + 1), f1 j) * A052528 n

end

end A052575.P13238948804362692171

namespace A052575

/-- `A047922(∑[n])*A052528(n)` -/
def P13238948804362692171.Spec : Prop :=
  ∀ n, P13238948804362692171.a n = A052575 n

end A052575

/-! ## A052575.P16788110433280121250

`∏[A028310(n)]*A052528(n)`
-/

namespace A052575.P16788110433280121250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052528 n

end

end A052575.P16788110433280121250

namespace A052575

/-- `∏[A028310(n)]*A052528(n)` -/
def P16788110433280121250.Spec : Prop :=
  ∀ n, P16788110433280121250.a n = A052575 n

end A052575

/-!
# A052576: E.g.f. (1+x^2-2x^3)/(1-2x).

The programs for A052576, there is no canonical definition to state claims against.
-/

/-! ## A052576.P8297127751491772426

`(char[2]+2^n)*n!`
-/

namespace A052576.P8297127751491772426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n) * Nat.factorial n

end

end A052576.P8297127751491772426

/-! ## A052576.P16085265400622624399

`A000165(n)+2*char[2]`
-/

namespace A052576.P16085265400622624399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A052576.P16085265400622624399

/-! ## A052576.P1902233511266688326

`n!*A240951(n+1)`
-/

namespace A052576.P1902233511266688326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A240951 (n + 1)

end

end A052576.P1902233511266688326

/-! ## A052576.P16191063100710932789

`A000142(n)*A240951(n+1)`
-/

namespace A052576.P16191063100710932789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A240951 (n + 1)

end

end A052576.P16191063100710932789

/-! ## A052576.P3056565454859683631

`or(and(2, A007582(n)), A000165(n))`
-/

namespace A052576.P3056565454859683631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 2 (A007582 n)) (A000165 n)

end

end A052576.P3056565454859683631

/-! ## A052576.P1061944174043346688

`A037223(2*n)+and(n, A037223(n+1))`
-/

namespace A052576.P1061944174043346688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (2 * n) + Int.land (n : ℤ) (A037223 (n + 1))

end

end A052576.P1061944174043346688

/-!
# A052577: a(n) = (3^(n+1)-1)*n!/2.

The programs for A052577, the canonical program `A052577.P1440392319022274675` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052577 has offset 0).

The definition of A052577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052577.P6713629511574825598

`(3^(n+1)-1)*n!/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052577.P6713629511574825598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ (n + 1) : ℤ) - 1) * (Nat.factorial n : ℤ) : ℚ) / 2

end

end A052577.P6713629511574825598

namespace A052577

/-- `(3^(n+1)-1)*n!/2` -/
def P6713629511574825598.Spec : Prop :=
  ∀ n, P6713629511574825598.a n = (A052577 n : ℚ)

end A052577

/-! ## A052577.P1440392319022274675

`n!*A003462(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052577

/-- `n!*A003462(n+1)` -/
def P1440392319022274675.Spec : Prop :=
  ∀ n, P1440392319022274675.a n = A052577 n

theorem P1440392319022274675.correct : P1440392319022274675.Spec := by
  intro n
  simp only [A052577]

end A052577

/-! ## A052577.P9771250441324993741

`n!*∑[3^n]`
-/

namespace A052577.P9771250441324993741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052577.P9771250441324993741

namespace A052577

/-- `n!*∑[3^n]` -/
def P9771250441324993741.Spec : Prop :=
  ∀ n, (P9771250441324993741.a n : ℤ) = A052577 n

end A052577

/-! ## A052577.P15637607358592365843

`∑[3^n]*∏[ceil(abs(γ-n))]`
-/

namespace A052577.P15637607358592365843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052577.P15637607358592365843

namespace A052577

/-- `∑[3^n]*∏[ceil(abs(γ-n))]` -/
def P15637607358592365843.Spec : Prop :=
  ∀ n, P15637607358592365843.a n = A052577 n

end A052577

/-! ## A052577.P2570489518993159850

`n!+3*n*a(n-1)` with `a(0)=1`
-/

namespace A052577.P2570489518993159850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n + 3 * n * a (n - 1)

end

end A052577.P2570489518993159850

namespace A052577

/-- `n!+3*n*a(n-1)` -/
def P2570489518993159850.Spec : Prop :=
  ∀ n, (P2570489518993159850.a n : ℤ) = A052577 n

end A052577

/-! ## A052577.P17394428039753467506

`A032031(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052577.P17394428039753467506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032031 n + (n : ℤ) * a (n - 1)

end

end A052577.P17394428039753467506

namespace A052577

/-- `A032031(n)+n*a(n-1)` -/
def P17394428039753467506.Spec : Prop :=
  ∀ n, P17394428039753467506.a n = A052577 n

end A052577

/-! ## A052577.P12350407306493131353

`A052698(n+1)/(n+1)`
-/

namespace A052577.P12350407306493131353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052698 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052577.P12350407306493131353

namespace A052577

/-- `A052698(n+1)/(n+1)` -/
def P12350407306493131353.Spec : Prop :=
  ∀ n, P12350407306493131353.a n = (A052577 n : ℚ)

end A052577

/-!
# A052578: a(0) = 0, a(n) = 4*n! for n > 0.

The programs for A052578, there is no canonical definition to state claims against.
-/

/-! ## A052578.P17588724844657680695

`lcm(n, 4*n!)`
-/

namespace A052578.P17588724844657680695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (4 * Nat.factorial n)

end

end A052578.P17588724844657680695

/-! ## A052578.P17838015058911638200

`and(4*n!, -n)`
-/

namespace A052578.P17838015058911638200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 * Nat.factorial n : ℤ) (-(n : ℤ))

end

end A052578.P17838015058911638200

/-! ## A052578.P9767613791163354255

`a(n-1)*n` with `a(0)=0, a(1)=4`
-/

namespace A052578.P9767613791163354255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) * n

end

end A052578.P9767613791163354255

/-! ## A052578.P13376067344680154511

`4*n!%∑[n!]`
-/

namespace A052578.P13376067344680154511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A052578.P13376067344680154511

/-! ## A052578.P10191480394028227505

`4*(n!-floor(acot(n)))`
-/

namespace A052578.P10191480394028227505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.factorial n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A052578.P10191480394028227505

/-! ## A052578.P11067645240819591404

`4*xor(n!, floor(acot(n)))`
-/

namespace A052578.P11067645240819591404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.xor (Nat.factorial n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A052578.P11067645240819591404

/-! ## A052578.P15091941093953625357

`4*n*abs(1-n)!`
-/

namespace A052578.P15091941093953625357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A052578.P15091941093953625357

/-! ## A052578.P14852605979922954714

`(2%(n+2))²*n!`
-/

namespace A052578.P14852605979922954714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 % (n + 2)) ^ 2 * Nat.factorial n

end

end A052578.P14852605979922954714

/-! ## A052578.P14415735677544148252

`ceil(atan(2*n))²*n!`
-/

namespace A052578.P14415735677544148252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 * n : ℝ)⌉ ^ 2 * (Nat.factorial n : ℤ)

end

end A052578.P14415735677544148252

/-! ## A052578.P1473184166146867396

`4*(n!-C(2, n+2))`
-/

namespace A052578.P1473184166146867396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.factorial n : ℤ) - (Nat.choose 2 (n + 2) : ℤ))

end

end A052578.P1473184166146867396

/-!
# A052579: E.g.f. (2+x+x^2)/((1-x)(1+x+x^2)).

The programs for A052579, the canonical program `A052579.P13235325419935773831` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052579 has offset 0).

The definition of A052579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052579.P13235325419935773831

`n!*A131534(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052579

/-- `n!*A131534(n+1)` -/
def P13235325419935773831.Spec : Prop :=
  ∀ n, P13235325419935773831.a n = A052579 n

theorem P13235325419935773831.correct : P13235325419935773831.Spec := by
  intro n
  simp only [A052579]

end A052579

/-! ## A052579.P15267509749078642004

`(2-n²%3)*n!`
-/

namespace A052579.P15267509749078642004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n ^ 2 % 3 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A052579.P15267509749078642004

namespace A052579

/-- `(2-n²%3)*n!` -/
def P15267509749078642004.Spec : Prop :=
  ∀ n, P15267509749078642004.a n = A052579 n

end A052579

/-! ## A052579.P8332310850152228221

`log2(gcd(3, n)+1)*n!`
-/

namespace A052579.P8332310850152228221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 3 n + 1 : ℝ) * (Nat.factorial n : ℝ)

end

end A052579.P8332310850152228221

namespace A052579

/-- `log2(gcd(3, n)+1)*n!` -/
def P8332310850152228221.Spec : Prop :=
  ∀ n, P8332310850152228221.a n = (A052579 n : ℝ)

end A052579

/-! ## A052579.P9167188761874313921

`((n+2)%3)!*n!`
-/

namespace A052579.P9167188761874313921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 2) % 3) * Nat.factorial n

end

end A052579.P9167188761874313921

namespace A052579

/-- `((n+2)%3)!*n!` -/
def P9167188761874313921.Spec : Prop :=
  ∀ n, (P9167188761874313921.a n : ℤ) = A052579 n

end A052579

/-! ## A052579.P12316421604696875118

`(char[3*n]+1)*n!`
-/

namespace A052579.P12316421604696875118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * Nat.factorial n

end

end A052579.P12316421604696875118

namespace A052579

/-- `(char[3*n]+1)*n!` -/
def P12316421604696875118.Spec : Prop :=
  ∀ n, (P12316421604696875118.a n : ℤ) = A052579 n

end A052579

/-! ## A052579.P12164712476795812415

`n!*and(3, -A000032(2*n))`
-/

namespace A052579.P12164712476795812415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * Int.land 3 (-A000032 (2 * n))

end

end A052579.P12164712476795812415

namespace A052579

/-- `n!*and(3, -A000032(2*n))` -/
def P12164712476795812415.Spec : Prop :=
  ∀ n, P12164712476795812415.a n = A052579 n

end A052579

/-! ## A052579.P5035251401428489785

`n!*A000010(gcd(n+3, 2*n))`
-/

namespace A052579.P5035251401428489785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000010 (Nat.gcd (n + 3) (2 * n))

end

end A052579.P5035251401428489785

namespace A052579

/-- `n!*A000010(gcd(n+3, 2*n))` -/
def P5035251401428489785.Spec : Prop :=
  ∀ n, P5035251401428489785.a n = A052579 n

end A052579

/-! ## A052579.P9985260480770262861

`(2-A011655(n))*A000142(n)`
-/

namespace A052579.P9985260480770262861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A011655 n) * A000142 n

end

end A052579.P9985260480770262861

namespace A052579

/-- `(2-A011655(n))*A000142(n)` -/
def P9985260480770262861.Spec : Prop :=
  ∀ n, P9985260480770262861.a n = A052579 n

end A052579

/-!
# A052580: E.g.f. (1-2x)/(1-2x-x^2).

The programs for A052580, there is no canonical definition to state claims against.
-/

/-! ## A052580.P2910124028482245336

`n*(2*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A052580.P2910124028482245336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052580.P2910124028482245336

/-! ## A052580.P7006864543175244400

`abs(n!*A176981(n))`
-/

namespace A052580.P7006864543175244400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A176981 n|

end

end A052580.P7006864543175244400

/-! ## A052580.P6451509602509151234

`n!*A000129(abs(1-n))`
-/

namespace A052580.P6451509602509151234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000129 |1 - (n : ℤ)|.toNat

end

end A052580.P6451509602509151234

/-! ## A052580.P639095516012133856

`abs(A000142(n)*A176981(n))`
-/

namespace A052580.P639095516012133856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n * A176981 n|

end

end A052580.P639095516012133856

/-! ## A052580.P10245077522553963864

`(A001333(n)-A000129(n))*n!`
-/

namespace A052580.P10245077522553963864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001333 n - A000129 n) * (Nat.factorial n : ℤ)

end

end A052580.P10245077522553963864

/-! ## A052580.P17738367770516247058

`(A001333(n)-A000129(n))*A000142(n)`
-/

namespace A052580.P17738367770516247058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001333 n - A000129 n) * A000142 n

end

end A052580.P17738367770516247058

/-! ## A052580.P17708389578272660041

`(A002203(n)-A000129(n+1))*A000142(n)`
-/

namespace A052580.P17708389578272660041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002203 n - A000129 (n + 1)) * A000142 n

end

end A052580.P17708389578272660041

/-! ## A052580.P1738486683101612995

`A052608(n)-A052631(n)`
-/

namespace A052580.P1738486683101612995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052608 n - A052631 n

end

end A052580.P1738486683101612995

/-!
# A052581: E.g.f. (1-x)/(1-x-x^4).

The programs for A052581, the canonical program `A052581.P9378520260020928493` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052581 has offset 0).

The definition of A052581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052581.P9378520260020928493

`n!*A017898(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052581

/-- `n!*A017898(n)` -/
def P9378520260020928493.Spec : Prop :=
  ∀ n, P9378520260020928493.a n = A052581 n

theorem P9378520260020928493.correct : P9378520260020928493.Spec := by
  intro n
  simp only [A052581]

end A052581

/-! ## A052581.P2708837302656960219

`n!*Δ[A003269(n)]`
-/

namespace A052581.P2708837302656960219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052581.P2708837302656960219

namespace A052581

/-- `n!*Δ[A003269(n)]` -/
def P2708837302656960219.Spec : Prop :=
  ∀ n, P2708837302656960219.a n = A052581 n

end A052581

/-! ## A052581.P18382611333494005720

`A000142(n)*A017898(n)`
-/

namespace A052581.P18382611333494005720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A017898 n

end

end A052581.P18382611333494005720

namespace A052581

/-- `A000142(n)*A017898(n)` -/
def P18382611333494005720.Spec : Prop :=
  ∀ n, P18382611333494005720.a n = A052581 n

end A052581

/-! ## A052581.P11381585588767464631

`Δ[A003269(n)]*A000142(n)`
-/

namespace A052581.P11381585588767464631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052581.P11381585588767464631

namespace A052581

/-- `Δ[A003269(n)]*A000142(n)` -/
def P11381585588767464631.Spec : Prop :=
  ∀ n, P11381585588767464631.a n = A052581 n

end A052581

/-!
# A052582: a(n) = 2*n*n!.

The programs for A052582, the canonical program `A052582.P13913083830858757425` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052582 has offset 0).

The definition of A052582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*n!` (program `A052582.P13913083830858757425`, by `A052582.P13913083830858757425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052582.P13913083830858757425

`2*n*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052582

/-- `2*n*n!` -/
def P13913083830858757425.Spec : Prop :=
  ∀ n, (P13913083830858757425.a n : ℤ) = A052582 n

theorem P13913083830858757425.correct : P13913083830858757425.Spec := by
  intro n
  simp only [A052582]

end A052582

/-! ## A052582.P9393015278507472576

`2*A001563(n)`
-/

namespace A052582.P9393015278507472576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001563 n

end

end A052582.P9393015278507472576

namespace A052582

/-- `2*A001563(n)` -/
def P9393015278507472576.Spec : Prop :=
  ∀ n, P9393015278507472576.a n = A052582 n

theorem P9393015278507472576.correct : P9393015278507472576.Spec := by
  intro n
  simp only [A052582, Nat.add_sub_cancel, A052582.P9393015278507472576.a, A052582.P13913083830858757425.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052582

/-! ## A052582.P339771597813657365

`A001339(n)-A007808(n)`
-/

namespace A052582.P339771597813657365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n - A007808 n

end

end A052582.P339771597813657365

namespace A052582

/-- `A001339(n)-A007808(n)` -/
def P339771597813657365.Spec : Prop :=
  ∀ n, P339771597813657365.a n = A052582 n

end A052582

/-! ## A052582.P13727842273765866916

`Δ[2*n!]`
-/

namespace A052582.P13727842273765866916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052582.P13727842273765866916

namespace A052582

/-- `Δ[2*n!]` -/
def P13727842273765866916.Spec : Prop :=
  ∀ n, P13727842273765866916.a n = A052582 n

theorem P13727842273765866916.correct : P13727842273765866916.Spec := by
  intro n
  simp only [A052582, Nat.add_sub_cancel, A052582.P13727842273765866916.f1, A052582.P13727842273765866916.a, A052582.P13913083830858757425.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052582

/-! ## A052582.P13085096805932007093

`Δ[n!+n!]`
-/

namespace A052582.P13085096805932007093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052582.P13085096805932007093

namespace A052582

/-- `Δ[n!+n!]` -/
def P13085096805932007093.Spec : Prop :=
  ∀ n, P13085096805932007093.a n = A052582 n

theorem P13085096805932007093.correct : P13085096805932007093.Spec := by
  intro n
  simp only [A052582, Nat.add_sub_cancel, A052582.P13085096805932007093.f1, A052582.P13085096805932007093.a, A052582.P13913083830858757425.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052582

/-! ## A052582.P7616289565427876761

`Δ[lcm(2, 1-n!)]`
-/

namespace A052582.P7616289565427876761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052582.P7616289565427876761

namespace A052582

/-- `Δ[lcm(2, 1-n!)]` -/
def P7616289565427876761.Spec : Prop :=
  ∀ n, P7616289565427876761.a n = A052582 n

end A052582

/-! ## A052582.P824338450812253855

`Δ[n*a(n-1)]` with `a(0)=2`
-/

namespace A052582.P824338450812253855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052582.P824338450812253855

namespace A052582

/-- `Δ[n*a(n-1)]` -/
def P824338450812253855.Spec : Prop :=
  ∀ n, P824338450812253855.a n = A052582 n

end A052582

/-! ## A052582.P14699075641499658623

`Δ[n!/sqrt(1/4)]`
-/

namespace A052582.P14699075641499658623
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052582.P14699075641499658623

namespace A052582

/-- `Δ[n!/sqrt(1/4)]` -/
def P14699075641499658623.Spec : Prop :=
  ∀ n, P14699075641499658623.a n = (A052582 n : ℝ)

theorem P14699075641499658623.correct : P14699075641499658623.Spec := by
  intro n
  simp only [A052582, Nat.add_sub_cancel, A052582.P14699075641499658623.f1, A052582.P14699075641499658623.a, A052582.P13913083830858757425.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052582

/-! ## A052582.P5532816676100416216

`Δ[∏[abs(1-n)+1]]`
-/

namespace A052582.P5532816676100416216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052582.P5532816676100416216

namespace A052582

/-- `Δ[∏[abs(1-n)+1]]` -/
def P5532816676100416216.Spec : Prop :=
  ∀ n, P5532816676100416216.a n = A052582 n

end A052582

/-! ## A052582.P2192118425720216926

`Δ[n!]-Δ[-n!]`
-/

namespace A052582.P2192118425720216926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (f2 (n + 1) - f2 n)

end

end A052582.P2192118425720216926

namespace A052582

/-- `Δ[n!]-Δ[-n!]` -/
def P2192118425720216926.Spec : Prop :=
  ∀ n, P2192118425720216926.a n = A052582 n

theorem P2192118425720216926.correct : P2192118425720216926.Spec := by
  intro n
  simp only [A052582, Nat.add_sub_cancel, A052582.P2192118425720216926.f1, A052582.P2192118425720216926.f2, A052582.P2192118425720216926.a, A052582.P13913083830858757425.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052582

/-!
# A052583: E.g.f. x(1-x)/(1-x-x^2).

The programs for A052583, there is no canonical definition to state claims against.
-/

/-! ## A052583.P14354813732653885713

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A052583.P14354813732653885713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052583.P14354813732653885713

/-! ## A052583.P18394153807633595146

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A052583.P18394153807633595146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A052583.P18394153807633595146

/-! ## A052583.P7358672323059473423

`n*A052554(abs(1-n))`
-/

namespace A052583.P7358672323059473423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052554 |1 - (n : ℤ)|.toNat

end

end A052583.P7358672323059473423

/-! ## A052583.P9805998415441091927

`n!*A000045((2*n)%(n+2))`
-/

namespace A052583.P9805998415441091927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 (2 * n % (n + 2))

end

end A052583.P9805998415441091927

/-! ## A052583.P5116528024341229515

`Δ[A212804(n)]%C(2*n, n)²*n!`
-/

namespace A052583.P5116528024341229515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (Nat.choose (2 * n) n ^ 2 : ℤ) * (Nat.factorial n : ℤ)

end

end A052583.P5116528024341229515

/-! ## A052583.P8479518210485101091

`n!*A141169(A052905(n))`
-/

namespace A052583.P8479518210485101091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A141169 (A052905 n).toNat

end

end A052583.P8479518210485101091

/-! ## A052583.P1611684795064780921

`Δ[A212804(n)]%A016129(n)*n!`
-/

namespace A052583.P1611684795064780921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016129 n) * (Nat.factorial n : ℤ)

end

end A052583.P1611684795064780921

/-! ## A052583.P6541877508960887603

`A000142(n)*A141169(A052905(n))`
-/

namespace A052583.P6541877508960887603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A141169 (A052905 n).toNat

end

end A052583.P6541877508960887603

/-! ## A052583.P4727778310658216335

`A052602(n+1)/(n+1)`
-/

namespace A052583.P4727778310658216335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052602 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052583.P4727778310658216335

/-! ## A052583.P16461212798558331206

`A005443(n)-A052554(A028310(n))`
-/

namespace A052583.P16461212798558331206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005443 n - A052554 (A028310 n).toNat

end

end A052583.P16461212798558331206

/-!
# A052584: Expansion of e.g.f. (2 - 4*x + x^2)/((1 - x)*(1 - 2*x)).

The programs for A052584, there is no canonical definition to state claims against.
-/

/-! ## A052584.P7041001728618426473

`(ceil(2^(n-1))+1)*n!`
-/

namespace A052584.P7041001728618426473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1) * (Nat.factorial n : ℤ)

end

end A052584.P7041001728618426473

/-! ## A052584.P11163222418719805794

`∏[(2*n)^floor(atan(n))]+n!`
-/

namespace A052584.P11163222418719805794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℚ)

end

end A052584.P11163222418719805794

/-! ## A052584.P4450212610884186220

`∏[C(2*n, floor(atan(n)))]+n!`
-/

namespace A052584.P4450212610884186220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ⌊Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n

end

end A052584.P4450212610884186220

/-! ## A052584.P8308915030960274918

`round(2^(n-1)*n!)+n!`
-/

namespace A052584.P8308915030960274918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)) + (Nat.factorial n : ℤ)

end

end A052584.P8308915030960274918

/-! ## A052584.P14833820904698805476

`ceil(2^n*n!/2)+n!`
-/

namespace A052584.P14833820904698805476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n * Nat.factorial n : ℚ) / 2⌉ + (Nat.factorial n : ℤ)

end

end A052584.P14833820904698805476

/-! ## A052584.P8478520466777488199

`round(2^n*n!/2)+n!`
-/

namespace A052584.P8478520466777488199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℚ) / 2) + (Nat.factorial n : ℤ)

end

end A052584.P8478520466777488199

/-! ## A052584.P10030998677724160887

`2*n*a(n-1)-n!` with `a(0)=2, a(1)=2`
-/

namespace A052584.P10030998677724160887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (2 * n : ℤ) * a (n - 1) - (Nat.factorial n : ℤ)

end

end A052584.P10030998677724160887

/-! ## A052584.P2618663275844800245

`n!+n!*round(2^xor(-1, -n))`
-/

namespace A052584.P2618663275844800245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ))

end

end A052584.P2618663275844800245

/-! ## A052584.P8263480620195769835

`∏[comp[2*(n+1)]+1-char[1]]+n!`
-/

namespace A052584.P8263480620195769835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052584.P8263480620195769835

/-! ## A052584.P11550622069350638761

`(ceil(2^(n-1))+1)*∏[ceil(abs(γ-n))]`
-/

namespace A052584.P11550622069350638761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052584.P11550622069350638761

/-!
# A052585: E.g.f. 1/(1-x-2*x^2).

The programs for A052585, the canonical program `A052585.P9647059601011471314` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052585 has offset 0).

The definition of A052585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052585.P9647059601011471314

`n!*A001045(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052585

/-- `n!*A001045(n+1)` -/
def P9647059601011471314.Spec : Prop :=
  ∀ n, P9647059601011471314.a n = A052585 n

theorem P9647059601011471314.correct : P9647059601011471314.Spec := by
  intro n
  simp only [A052585]

end A052585

/-! ## A052585.P3783993579182958345

`abs(∑[(-2)^n])*n!`
-/

namespace A052585.P3783993579182958345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| * (Nat.factorial n : ℤ)

end

end A052585.P3783993579182958345

namespace A052585

/-- `abs(∑[(-2)^n])*n!` -/
def P3783993579182958345.Spec : Prop :=
  ∀ n, P3783993579182958345.a n = A052585 n

end A052585

/-! ## A052585.P221003817527663832

`lcm(n!*∑[(-2)^n], n!)`
-/

namespace A052585.P221003817527663832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.factorial n : ℤ)

end

end A052585.P221003817527663832

namespace A052585

/-- `lcm(n!*∑[(-2)^n], n!)` -/
def P221003817527663832.Spec : Prop :=
  ∀ n, (P221003817527663832.a n : ℤ) = A052585 n

end A052585

/-! ## A052585.P13663569263197581584

`2^n*n!-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A052585.P13663569263197581584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n * Nat.factorial n : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A052585.P13663569263197581584

namespace A052585

/-- `2^n*n!-a(n-1)/n^(-1)` -/
def P13663569263197581584.Spec : Prop :=
  ∀ n, P13663569263197581584.a n = (A052585 n : ℚ)

end A052585

/-! ## A052585.P6759606566497151701

`∏[log2(lcm(2, 4^n))]-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A052585.P6759606566497151701
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ)

end

end A052585.P6759606566497151701

namespace A052585

/-- `∏[log2(lcm(2, 4^n))]-a(n-1)/n^(-1)` -/
def P6759606566497151701.Spec : Prop :=
  ∀ n, P6759606566497151701.a n = (A052585 n : ℝ)

end A052585

/-! ## A052585.P3430242027977545375

`2^n*n!-n*a((2*n)%(n+1))` with `a(0)=1`
-/

namespace A052585.P3430242027977545375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n * Nat.factorial n : ℤ) - (n : ℤ) * a (2 * n % (n + 1))

end

end A052585.P3430242027977545375

namespace A052585

/-- `2^n*n!-n*a((2*n)%(n+1))` -/
def P3430242027977545375.Spec : Prop :=
  ∀ n, P3430242027977545375.a n = A052585 n

end A052585

/-! ## A052585.P13560077354868946023

`n*(a(n-1)+2*(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052585.P13560077354868946023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2)))

end

end A052585.P13560077354868946023

namespace A052585

/-- `n*(a(n-1)+2*(n-1)*a(n-2))` -/
def P13560077354868946023.Spec : Prop :=
  ∀ n, P13560077354868946023.a n = A052585 n

end A052585

/-! ## A052585.P5615382982504154260

`A110321(∑[n])`
-/

namespace A052585.P5615382982504154260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052585.P5615382982504154260

namespace A052585

/-- `A110321(∑[n])` -/
def P5615382982504154260.Spec : Prop :=
  ∀ n, P5615382982504154260.a n = A052585 n

end A052585

/-! ## A052585.P12080891051556628949

`n!*∑[A078008(n)]`
-/

namespace A052585.P12080891051556628949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052585.P12080891051556628949

namespace A052585

/-- `n!*∑[A078008(n)]` -/
def P12080891051556628949.Spec : Prop :=
  ∀ n, P12080891051556628949.a n = A052585 n

end A052585

/-! ## A052585.P8256704456046215721

`n!*Δ[A000975(n)]`
-/

namespace A052585.P8256704456046215721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052585.P8256704456046215721

namespace A052585

/-- `n!*Δ[A000975(n)]` -/
def P8256704456046215721.Spec : Prop :=
  ∀ n, P8256704456046215721.a n = A052585 n

end A052585

/-!
# A052586: Expansion of e.g.f.: (1-x^3)/(1-x-x^3).

The programs for A052586, there is no canonical definition to state claims against.
-/

/-! ## A052586.P7544666067843936950

`n!*A108104(A004275(n))`
-/

namespace A052586.P7544666067843936950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A108104 (A004275 n).toNat

end

end A052586.P7544666067843936950

/-! ## A052586.P8504823417838798392

`n!*A108104(A004280(n+1))`
-/

namespace A052586.P8504823417838798392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A108104 (A004280 (n + 1)).toNat

end

end A052586.P8504823417838798392

/-! ## A052586.P16023798426410473642

`A000142(n)*A108104(A004273(n))`
-/

namespace A052586.P16023798426410473642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A108104 (A004273 n).toNat

end

end A052586.P16023798426410473642

/-! ## A052586.P1867939126562665590

`A000142(n)*A108104(A004275(n))`
-/

namespace A052586.P1867939126562665590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A108104 (A004275 n).toNat

end

end A052586.P1867939126562665590

/-! ## A052586.P2791443716063947487

`n!*A172356(∑[n]+1)`
-/

namespace A052586.P2791443716063947487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A172356 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052586.P2791443716063947487

/-!
# A052587: Expansion of e.g.f. x^2*(1-x)/(1-2*x).

The programs for A052587, there is no canonical definition to state claims against.
-/

/-! ## A052587.P14809130257565539900

`n!*round(2^(n-3))`
-/

namespace A052587.P14809130257565539900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

end

end A052587.P14809130257565539900

/-! ## A052587.P7357711757422442720

`2*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A052587.P7357711757422442720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 6] fun n a =>
  2 * (n * a (n - 1))

end

end A052587.P7357711757422442720

/-! ## A052587.P1776079303097499759

`n*A052564(abs(1-n))`
-/

namespace A052587.P1776079303097499759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052564 |1 - (n : ℤ)|.toNat

end

end A052587.P1776079303097499759

/-! ## A052587.P9767534614962873769

`round(2^(n-3))*A000142(n)`
-/

namespace A052587.P9767534614962873769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) * A000142 n

end

end A052587.P9767534614962873769

/-! ## A052587.P1511233610839465383

`lcm(n, A001710(n)*A034008(n))`
-/

namespace A052587.P1511233610839465383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A001710 n * A034008 n)

end

end A052587.P1511233610839465383

/-! ## A052587.P13661052662139787266

`A000142(n)*A166444(A289207(n+1))`
-/

namespace A052587.P13661052662139787266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A166444 (A289207 (n + 1)).toNat

end

end A052587.P13661052662139787266

/-! ## A052587.P10293845993103753178

`A052671(n+1)/(n+1)`
-/

namespace A052587.P10293845993103753178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052671 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052587.P10293845993103753178

/-!
# A052588: Expansion of e.g.f.: (1-x)/(1-x-x^2-x^3+x^4).

The programs for A052588, the canonical program `A052588.P12550214512986652467` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052588 has offset 0).

The definition of A052588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052588.P12550214512986652467

`n!*A052527(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052588

/-- `n!*A052527(n)` -/
def P12550214512986652467.Spec : Prop :=
  ∀ n, P12550214512986652467.a n = A052588 n

theorem P12550214512986652467.correct : P12550214512986652467.Spec := by
  intro n
  simp only [A052588]

end A052588

/-! ## A052588.P3904386433481946321

`n!*Δ[A116732(n+2)]`
-/

namespace A052588.P3904386433481946321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052588.P3904386433481946321

namespace A052588

/-- `n!*Δ[A116732(n+2)]` -/
def P3904386433481946321.Spec : Prop :=
  ∀ n, P3904386433481946321.a n = A052588 n

end A052588

/-! ## A052588.P17581057691930670680

`A000142(n)*A052527(n)`
-/

namespace A052588.P17581057691930670680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052527 n

end

end A052588.P17581057691930670680

namespace A052588

/-- `A000142(n)*A052527(n)` -/
def P17581057691930670680.Spec : Prop :=
  ∀ n, P17581057691930670680.a n = A052588 n

end A052588

/-! ## A052588.P10901869547663992377

`A021009(∑[n])*A052527(n)`
-/

namespace A052588.P10901869547663992377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (∑ j ∈ Finset.range (n + 1), f1 j) * A052527 n

end

end A052588.P10901869547663992377

namespace A052588

/-- `A021009(∑[n])*A052527(n)` -/
def P10901869547663992377.Spec : Prop :=
  ∀ n, P10901869547663992377.a n = A052588 n

end A052588

/-! ## A052588.P14225152007434363642

`Δ[A003422(n)]*A052527(n)`
-/

namespace A052588.P14225152007434363642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052527 n

end

end A052588.P14225152007434363642

namespace A052588

/-- `Δ[A003422(n)]*A052527(n)` -/
def P14225152007434363642.Spec : Prop :=
  ∀ n, P14225152007434363642.a n = A052588 n

end A052588

/-! ## A052588.P10961141087499757002

`∏[A028310(n)]*A052527(n)`
-/

namespace A052588.P10961141087499757002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052527 n

end

end A052588.P10961141087499757002

namespace A052588

/-- `∏[A028310(n)]*A052527(n)` -/
def P10961141087499757002.Spec : Prop :=
  ∀ n, P10961141087499757002.a n = A052588 n

end A052588

/-! ## A052588.P6420005529024181305

`(A033312(n)+1)*A052527(n)`
-/

namespace A052588.P6420005529024181305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033312 n + 1) * A052527 n

end

end A052588.P6420005529024181305

namespace A052588

/-- `(A033312(n)+1)*A052527(n)` -/
def P6420005529024181305.Spec : Prop :=
  ∀ n, P6420005529024181305.a n = A052588 n

theorem P6420005529024181305.correct : P6420005529024181305.Spec := by
  intro n
  simp only [A052588, Nat.add_sub_cancel, A052588.P6420005529024181305.a, A052588.P12550214512986652467.a, A033312, A033312.P12652974073192440444.a, A052527, A052527.P4580901180585569071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052588

/-!
# A052589: a(n) = (2^n - 1)*n!.

The programs for A052589, the canonical program `A052589.P15167345839042951927` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052589 has offset 0).

The definition of A052589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*n!` (program `A052589.P15167345839042951927`, by `A052589.P15167345839042951927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052589.P15167345839042951927

`(2^n-1)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052589

/-- `(2^n-1)*n!` -/
def P15167345839042951927.Spec : Prop :=
  ∀ n, P15167345839042951927.a n = A052589 n

theorem P15167345839042951927.correct : P15167345839042951927.Spec := by
  intro n
  simp only [A052589]

end A052589

/-! ## A052589.P7700437460602439005

`∏[floor(2/acot(n))]-n!`
-/

namespace A052589.P7700437460602439005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial n : ℤ)

end

end A052589.P7700437460602439005

namespace A052589

/-- `∏[floor(2/acot(n))]-n!` -/
def P7700437460602439005.Spec : Prop :=
  ∀ n, P7700437460602439005.a n = A052589 n

end A052589

/-! ## A052589.P15334587999943295352

`n!*floor(∑[2^n/2])`
-/

namespace A052589.P15334587999943295352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A052589.P15334587999943295352

namespace A052589

/-- `n!*floor(∑[2^n/2])` -/
def P15334587999943295352.Spec : Prop :=
  ∀ n, P15334587999943295352.a n = A052589 n

end A052589

/-! ## A052589.P18018368032238478882

`∏[log2(lcm(2, 4^n))]-n!`
-/

namespace A052589.P18018368032238478882
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial n : ℝ)

end

end A052589.P18018368032238478882

namespace A052589

/-- `∏[log2(lcm(2, 4^n))]-n!` -/
def P18018368032238478882.Spec : Prop :=
  ∀ n, P18018368032238478882.a n = (A052589 n : ℝ)

end A052589

/-! ## A052589.P14905719254449065506

`n!/2^-n-n!`
-/

namespace A052589.P14905719254449065506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ) - (Nat.factorial n : ℚ)

end

end A052589.P14905719254449065506

namespace A052589

/-- `n!/2^-n-n!` -/
def P14905719254449065506.Spec : Prop :=
  ∀ n, P14905719254449065506.a n = (A052589 n : ℚ)

theorem P14905719254449065506.correct : P14905719254449065506.Spec := by
  intro n
  simp only [A052589, Nat.add_sub_cancel, A052589.P14905719254449065506.a, A052589.P15167345839042951927.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052589

/-! ## A052589.P1454362083404581250

`2^(log2(n!)+n)-n!`
-/

namespace A052589.P1454362083404581250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ)) - (Nat.factorial n : ℝ)

end

end A052589.P1454362083404581250

namespace A052589

/-- `2^(log2(n!)+n)-n!` -/
def P1454362083404581250.Spec : Prop :=
  ∀ n, P1454362083404581250.a n = (A052589 n : ℝ)

end A052589

/-! ## A052589.P1823880441816623556

`∏[ceil(abs(2*n-γ))]-n!`
-/

namespace A052589.P1823880441816623556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 * n : ℝ) - Real.eulerMascheroniConstant|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial n : ℤ)

end

end A052589.P1823880441816623556

namespace A052589

/-- `∏[ceil(abs(2*n-γ))]-n!` -/
def P1823880441816623556.Spec : Prop :=
  ∀ n, P1823880441816623556.a n = A052589 n

end A052589

/-! ## A052589.P13574631825831992153

`n!+2*n*a(n-1)` with `a(0)=0`
-/

namespace A052589.P13574631825831992153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial n + 2 * (n * a (n - 1))

end

end A052589.P13574631825831992153

namespace A052589

/-- `n!+2*n*a(n-1)` -/
def P13574631825831992153.Spec : Prop :=
  ∀ n, (P13574631825831992153.a n : ℤ) = A052589 n

end A052589

/-! ## A052589.P11690547865054299892

`(2^n-1)*∏[ceil(abs(γ-n))]`
-/

namespace A052589.P11690547865054299892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052589.P11690547865054299892

namespace A052589

/-- `(2^n-1)*∏[ceil(abs(γ-n))]` -/
def P11690547865054299892.Spec : Prop :=
  ∀ n, P11690547865054299892.a n = A052589 n

end A052589

/-! ## A052589.P10711708948208095327

`A000165(n)-A000142(n)`
-/

namespace A052589.P10711708948208095327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n - A000142 n

end

end A052589.P10711708948208095327

namespace A052589

/-- `A000165(n)-A000142(n)` -/
def P10711708948208095327.Spec : Prop :=
  ∀ n, P10711708948208095327.a n = A052589 n

theorem P10711708948208095327.correct : P10711708948208095327.Spec := by
  intro n
  simp only [A052589, Nat.add_sub_cancel, A052589.P10711708948208095327.a, A052589.P15167345839042951927.a, A000142, A000142.P3272619076580183195.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052589

/-!
# A052590: E.g.f. (1-x)/(1-4x+2x^2).

The programs for A052590, the canonical program `A052590.P6065693457165867755` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052590 has offset 0).

The definition of A052590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052590.P6065693457165867755

`n!*A007052(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052590

/-- `n!*A007052(n)` -/
def P6065693457165867755.Spec : Prop :=
  ∀ n, P6065693457165867755.a n = A052590 n

theorem P6065693457165867755.correct : P6065693457165867755.Spec := by
  intro n
  simp only [A052590]

end A052590

/-! ## A052590.P4675961627812526259

`n!*∑[A003480(n)]`
-/

namespace A052590.P4675961627812526259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052590.P4675961627812526259

namespace A052590

/-- `n!*∑[A003480(n)]` -/
def P4675961627812526259.Spec : Prop :=
  ∀ n, P4675961627812526259.a n = A052590 n

end A052590

/-! ## A052590.P4608570522915398046

`n!*A030436(2*n+1)`
-/

namespace A052590.P4608570522915398046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A030436 (2 * n + 1)

end

end A052590.P4608570522915398046

namespace A052590

/-- `n!*A030436(2*n+1)` -/
def P4608570522915398046.Spec : Prop :=
  ∀ n, P4608570522915398046.a n = A052590 n

end A052590

/-! ## A052590.P13735076581646412163

`A346432(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052590.P13735076581646412163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346432 n + (n : ℤ) * a (n - 1)

end

end A052590.P13735076581646412163

namespace A052590

/-- `A346432(n)+n*a(n-1)` -/
def P13735076581646412163.Spec : Prop :=
  ∀ n, P13735076581646412163.a n = A052590 n

end A052590

/-! ## A052590.P10865132460898683968

`A000142(n)*A007052(n)`
-/

namespace A052590.P10865132460898683968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A007052 n

end

end A052590.P10865132460898683968

namespace A052590

/-- `A000142(n)*A007052(n)` -/
def P10865132460898683968.Spec : Prop :=
  ∀ n, P10865132460898683968.a n = A052590 n

end A052590

/-! ## A052590.P8365168640515719045

`∑[A003480(n)]*A000142(n)`
-/

namespace A052590.P8365168640515719045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052590.P8365168640515719045

namespace A052590

/-- `∑[A003480(n)]*A000142(n)` -/
def P8365168640515719045.Spec : Prop :=
  ∀ n, P8365168640515719045.a n = A052590 n

end A052590

/-! ## A052590.P3582536078240347488

`Δ[A003422(n)]*A007052(n)`
-/

namespace A052590.P3582536078240347488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007052 n

end

end A052590.P3582536078240347488

namespace A052590

/-- `Δ[A003422(n)]*A007052(n)` -/
def P3582536078240347488.Spec : Prop :=
  ∀ n, P3582536078240347488.a n = A052590 n

end A052590

/-! ## A052590.P2303350215197349647

`∏[A028310(n)]*A007052(n)`
-/

namespace A052590.P2303350215197349647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A007052 n

end

end A052590.P2303350215197349647

namespace A052590

/-- `∏[A028310(n)]*A007052(n)` -/
def P2303350215197349647.Spec : Prop :=
  ∀ n, P2303350215197349647.a n = A052590 n

end A052590

/-! ## A052590.P12071613552247998317

`∑[A003480(n)]*A094587(∑[n])`
-/

namespace A052590.P12071613552247998317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A094587 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A052590.P12071613552247998317

namespace A052590

/-- `∑[A003480(n)]*A094587(∑[n])` -/
def P12071613552247998317.Spec : Prop :=
  ∀ n, P12071613552247998317.a n = A052590 n

end A052590

/-! ## A052590.P2601986971819840954

`∑[A003480(n)]*∏[A028310(n)]`
-/

namespace A052590.P2601986971819840954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052590.P2601986971819840954

namespace A052590

/-- `∑[A003480(n)]*∏[A028310(n)]` -/
def P2601986971819840954.Spec : Prop :=
  ∀ n, P2601986971819840954.a n = A052590 n

end A052590

/-!
# A052591: Expansion of e.g.f. x/((1-x)(1-x^2)).

The programs for A052591, the canonical program `A052591.P4447380120026229449` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052591 has offset 0).

The definition of A052591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052591.P4447380120026229449

`(1/4*(-1)^(1-n)+1/2*n+1/4)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052591

/-- `(1/4*(-1)^(1-n)+1/2*n+1/4)*n!` -/
def P4447380120026229449.Spec : Prop :=
  ∀ n, P4447380120026229449.a n = (A052591 n : ℚ)

end A052591

/-! ## A052591.P10014517904495911433

`(n+1)!-A052558(n)`
-/

namespace A052591.P10014517904495911433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A052558 n

end

end A052591.P10014517904495911433

namespace A052591

/-- `(n+1)!-A052558(n)` -/
def P10014517904495911433.Spec : Prop :=
  ∀ n, P10014517904495911433.a n = A052591 n

end A052591

/-! ## A052591.P17321770573475002951

`n!*ceil(n/2)`
-/

namespace A052591.P17321770573475002951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A052591.P17321770573475002951

namespace A052591

/-- `n!*ceil(n/2)` -/
def P17321770573475002951.Spec : Prop :=
  ∀ n, P17321770573475002951.a n = A052591 n

end A052591

/-! ## A052591.P828342149673883649

`(and(1, n)+n)*n!/2`
-/

namespace A052591.P828342149673883649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + n : ℚ) * ((Nat.factorial n : ℚ) / 2)

end

end A052591.P828342149673883649

namespace A052591

/-- `(and(1, n)+n)*n!/2` -/
def P828342149673883649.Spec : Prop :=
  ∀ n, P828342149673883649.a n = (A052591 n : ℚ)

end A052591

/-! ## A052591.P4908555583008392857

`n*(n!-a(n-1))` with `a(0)=0`
-/

namespace A052591.P4908555583008392857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((Nat.factorial n : ℤ) - a (n - 1))

end

end A052591.P4908555583008392857

namespace A052591

/-- `n*(n!-a(n-1))` -/
def P4908555583008392857.Spec : Prop :=
  ∀ n, P4908555583008392857.a n = A052591 n

end A052591

/-! ## A052591.P15451004540138916489

`ceil(n/2)*∏[round(1/acot(n))]`
-/

namespace A052591.P15451004540138916489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052591.P15451004540138916489

namespace A052591

/-- `ceil(n/2)*∏[round(1/acot(n))]` -/
def P15451004540138916489.Spec : Prop :=
  ∀ n, P15451004540138916489.a n = A052591 n

end A052591

/-! ## A052591.P13558949535024849517

`ceil(n/2)*∏[round(sqrt(n²+1))]`
-/

namespace A052591.P13558949535024849517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052591.P13558949535024849517

namespace A052591

/-- `ceil(n/2)*∏[round(sqrt(n²+1))]` -/
def P13558949535024849517.Spec : Prop :=
  ∀ n, P13558949535024849517.a n = A052591 n

end A052591

/-! ## A052591.P13646971549469844593

`record[A152662(n+1)]`
-/

namespace A052591.P13646971549469844593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052591.P13646971549469844593

namespace A052591

/-- `record[A152662(n+1)]` -/
def P13646971549469844593.Spec : Prop :=
  ∀ n, P13646971549469844593.a n = A052591 n

end A052591

/-! ## A052591.P14256736630416922607

`abs(n!*A001057(n))`
-/

namespace A052591.P14256736630416922607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A001057 n|

end

end A052591.P14256736630416922607

namespace A052591

/-- `abs(n!*A001057(n))` -/
def P14256736630416922607.Spec : Prop :=
  ∀ n, P14256736630416922607.a n = A052591 n

end A052591

/-! ## A052591.P14680496499649422291

`abs((n-A004526(n))*n!)`
-/

namespace A052591.P14680496499649422291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A004526 n) * (Nat.factorial n : ℤ)|

end

end A052591.P14680496499649422291

namespace A052591

/-- `abs((n-A004526(n))*n!)` -/
def P14680496499649422291.Spec : Prop :=
  ∀ n, P14680496499649422291.a n = A052591 n

end A052591

/-!
# A052592: E.g.f. (1-x)/(1-4x).

The programs for A052592, there is no canonical definition to state claims against.
-/

/-! ## A052592.P5737143389607085503

`∏[a(n-1)+4]` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A052592.P5737143389607085503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052592.P5737143389607085503

/-! ## A052592.P11749787086664366069

`4*n*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A052592.P11749787086664366069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (n * a (n - 1))

end

end A052592.P11749787086664366069

/-! ## A052592.P4412682726743414385

`n!*Δ[floor(4^(n-1))]`
-/

namespace A052592.P4412682726743414385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052592.P4412682726743414385

/-! ## A052592.P3570933676368498120

`ceil(n!*Δ[4^(n-1)])`
-/

namespace A052592.P3570933676368498120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n)⌉

end

end A052592.P3570933676368498120

/-! ## A052592.P14356202450703963822

`round(n!*Δ[4^(n-1)])`
-/

namespace A052592.P14356202450703963822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n))

end

end A052592.P14356202450703963822

/-! ## A052592.P2321657408502721948

`∏[floor(3/acot(n))+n-char[1]]`
-/

namespace A052592.P2321657408502721948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052592.P2321657408502721948

/-! ## A052592.P17062346868621032504

`∏[A316571(record[xor(1, n)])]`
-/

namespace A052592.P17062346868621032504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052592.P17062346868621032504

/-! ## A052592.P5309114228533454590

`∏[A316571(2*n+1)]`
-/

namespace A052592.P5309114228533454590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052592.P5309114228533454590

/-! ## A052592.P7491296972965802286

`a(n-1)*A008574(n)` with `a(0)=1, a(1)=3`
-/

namespace A052592.P7491296972965802286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A008574 n

end

end A052592.P7491296972965802286

/-! ## A052592.P11503680253400729514

`a(n-1)*A008586(n)` with `a(0)=1, a(1)=3`
-/

namespace A052592.P11503680253400729514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A008586 n

end

end A052592.P11503680253400729514

/-!
# A052593: E.g.f. 1/(1-x-x^4).

The programs for A052593, the canonical program `A052593.P16798939789168535615` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052593 has offset 0).

The definition of A052593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052593.P16798939789168535615

`n!*A003269(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052593

/-- `n!*A003269(n+1)` -/
def P16798939789168535615.Spec : Prop :=
  ∀ n, P16798939789168535615.a n = A052593 n

theorem P16798939789168535615.correct : P16798939789168535615.Spec := by
  intro n
  simp only [A052593]

end A052593

/-! ## A052593.P5526053228359545978

`n*a(n-1)+n*(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A052593.P5526053228359545978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * (((n : ℤ) - 3) * a (n - 4))))

end

end A052593.P5526053228359545978

namespace A052593

/-- `n*a(n-1)+n*(n-1)*(n-2)*(n-3)*a(n-4)` -/
def P5526053228359545978.Spec : Prop :=
  ∀ n, P5526053228359545978.a n = A052593 n

end A052593

/-! ## A052593.P2339683703024690191

`n!*∑[A017898(n)]`
-/

namespace A052593.P2339683703024690191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052593.P2339683703024690191

namespace A052593

/-- `n!*∑[A017898(n)]` -/
def P2339683703024690191.Spec : Prop :=
  ∀ n, P2339683703024690191.a n = A052593 n

end A052593

/-! ## A052593.P6278605905294683162

`A052581(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052593.P6278605905294683162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052581 n + (n : ℤ) * a (n - 1)

end

end A052593.P6278605905294683162

namespace A052593

/-- `A052581(n)+n*a(n-1)` -/
def P6278605905294683162.Spec : Prop :=
  ∀ n, P6278605905294683162.a n = A052593 n

end A052593

/-! ## A052593.P13783623030947365310

`∑[A017898(n)]*A000142(n)`
-/

namespace A052593.P13783623030947365310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052593.P13783623030947365310

namespace A052593

/-- `∑[A017898(n)]*A000142(n)` -/
def P13783623030947365310.Spec : Prop :=
  ∀ n, P13783623030947365310.a n = A052593 n

end A052593

/-! ## A052593.P11964902496149809085

`Δ[A098578(n)]*A000142(n)`
-/

namespace A052593.P11964902496149809085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052593.P11964902496149809085

namespace A052593

/-- `Δ[A098578(n)]*A000142(n)` -/
def P11964902496149809085.Spec : Prop :=
  ∀ n, P11964902496149809085.a n = A052593 n

end A052593

/-! ## A052593.P4269977829447693627

`A000142(n)*A003269(n+1)`
-/

namespace A052593.P4269977829447693627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003269 (n + 1)

end

end A052593.P4269977829447693627

namespace A052593

/-- `A000142(n)*A003269(n+1)` -/
def P4269977829447693627.Spec : Prop :=
  ∀ n, P4269977829447693627.a n = A052593 n

end A052593

/-! ## A052593.P3026108746772717880

`A000142(n)*A122522(2*(n+1))`
-/

namespace A052593.P3026108746772717880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A122522 (2 * (n + 1))

end

end A052593.P3026108746772717880

namespace A052593

/-- `A000142(n)*A122522(2*(n+1))` -/
def P3026108746772717880.Spec : Prop :=
  ∀ n, P3026108746772717880.a n = A052593 n

end A052593

/-! ## A052593.P6172092709940324000

`A003269(n+1)/A003520(n)*A052632(n)`
-/

namespace A052593.P6172092709940324000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003269 (n + 1) : ℚ) / (A003520 n : ℚ) * (A052632 n : ℚ)

end

end A052593.P6172092709940324000

namespace A052593

/-- `A003269(n+1)/A003520(n)*A052632(n)` -/
def P6172092709940324000.Spec : Prop :=
  ∀ n, P6172092709940324000.a n = (A052593 n : ℚ)

end A052593

/-! ## A052593.P13817453713693928181

`A052692(n+1)/(n+1)`
-/

namespace A052593.P13817453713693928181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052692 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052593.P13817453713693928181

namespace A052593

/-- `A052692(n+1)/(n+1)` -/
def P13817453713693928181.Spec : Prop :=
  ∀ n, P13817453713693928181.a n = (A052593 n : ℚ)

end A052593

/-!
# A052594: E.g.f. x(1+x-2x^2)/(1-2x).

The programs for A052594, there is no canonical definition to state claims against.
-/

/-! ## A052594.P15734900671825252867

`n*A006882(A092535(n))`
-/

namespace A052594.P15734900671825252867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006882 (A092535 n).toNat

end

end A052594.P15734900671825252867

/-! ## A052594.P2799083747004576888

`lcm(n, A081405(A163985(n)))`
-/

namespace A052594.P2799083747004576888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A081405 (A163985 n).toNat)

end

end A052594.P2799083747004576888

/-! ## A052594.P12277719035172856781

`n*A006882(A058992(n+1))`
-/

namespace A052594.P12277719035172856781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006882 (A058992 (n + 1)).toNat

end

end A052594.P12277719035172856781

/-! ## A052594.P10197528869620855915

`A052638(n+1)/(n+1)`
-/

namespace A052594.P10197528869620855915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052638 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052594.P10197528869620855915

/-! ## A052594.P8192758934783268861

`n!*A218616(A218600(n))`
-/

namespace A052594.P8192758934783268861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A218616 (A218600 n).toNat

end

end A052594.P8192758934783268861

/-!
# A052595: E.g.f. 1/(1-3x-x^2).

The programs for A052595, the canonical program `A052595.P8975647524645264757` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052595 has offset 0).

The definition of A052595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052595.P8975647524645264757

`n!*A006190(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052595

/-- `n!*A006190(n+1)` -/
def P8975647524645264757.Spec : Prop :=
  ∀ n, P8975647524645264757.a n = A052595 n

theorem P8975647524645264757.correct : P8975647524645264757.Spec := by
  intro n
  simp only [A052595]

end A052595

/-! ## A052595.P6442376754945559456

`n*(3*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A052595.P6442376754945559456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) * (3 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052595.P6442376754945559456

namespace A052595

/-- `n*(3*a(n-1)+(n-1)*a(n-2))` -/
def P6442376754945559456.Spec : Prop :=
  ∀ n, P6442376754945559456.a n = A052595 n

end A052595

/-! ## A052595.P10890551939917523178

`n!*∑[A052924(n)]`
-/

namespace A052595.P10890551939917523178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052595.P10890551939917523178

namespace A052595

/-- `n!*∑[A052924(n)]` -/
def P10890551939917523178.Spec : Prop :=
  ∀ n, P10890551939917523178.a n = A052595 n

end A052595

/-! ## A052595.P1365456253048228643

`n!*record[Δ[A249579(n)]]`
-/

namespace A052595.P1365456253048228643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052595.P1365456253048228643

namespace A052595

/-- `n!*record[Δ[A249579(n)]]` -/
def P1365456253048228643.Spec : Prop :=
  ∀ n, P1365456253048228643.a n = A052595 n

end A052595

/-! ## A052595.P17800755007529181076

`∑[A052924(n)]*A000142(n)`
-/

namespace A052595.P17800755007529181076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052595.P17800755007529181076

namespace A052595

/-- `∑[A052924(n)]*A000142(n)` -/
def P17800755007529181076.Spec : Prop :=
  ∀ n, P17800755007529181076.a n = A052595 n

end A052595

/-! ## A052595.P7530030008449166351

`A000142(n)*A006190(n+1)`
-/

namespace A052595.P7530030008449166351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006190 (n + 1)

end

end A052595.P7530030008449166351

namespace A052595

/-- `A000142(n)*A006190(n+1)` -/
def P7530030008449166351.Spec : Prop :=
  ∀ n, P7530030008449166351.a n = A052595 n

end A052595

/-! ## A052595.P14778972864302436168

`abs(A006190(n+1)*A133942(n))`
-/

namespace A052595.P14778972864302436168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006190 (n + 1) * A133942 n|

end

end A052595.P14778972864302436168

namespace A052595

/-- `abs(A006190(n+1)*A133942(n))` -/
def P14778972864302436168.Spec : Prop :=
  ∀ n, P14778972864302436168.a n = A052595 n

end A052595

/-! ## A052595.P9831082433147246407

`∏[A028310(n)]*A006190(n+1)`
-/

namespace A052595.P9831082433147246407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A006190 (n + 1)

end

end A052595.P9831082433147246407

namespace A052595

/-- `∏[A028310(n)]*A006190(n+1)` -/
def P9831082433147246407.Spec : Prop :=
  ∀ n, P9831082433147246407.a n = A052595 n

end A052595

/-! ## A052595.P3305659704750738537

`A006190(n+1)/A000079(n)*A000165(n)`
-/

namespace A052595.P3305659704750738537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 (n + 1) : ℚ) / (A000079 n : ℚ) * (A000165 n : ℚ)

end

end A052595.P3305659704750738537

namespace A052595

/-- `A006190(n+1)/A000079(n)*A000165(n)` -/
def P3305659704750738537.Spec : Prop :=
  ∀ n, P3305659704750738537.a n = (A052595 n : ℚ)

end A052595

/-! ## A052595.P11391782325670290806

`A006190(n+1)/A018902(n)*A052629(n)`
-/

namespace A052595.P11391782325670290806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 (n + 1) : ℚ) / (A018902 n : ℚ) * (A052629 n : ℚ)

end

end A052595.P11391782325670290806

namespace A052595

/-- `A006190(n+1)/A018902(n)*A052629(n)` -/
def P11391782325670290806.Spec : Prop :=
  ∀ n, P11391782325670290806.a n = (A052595 n : ℚ)

end A052595

/-!
# A052596: E.g.f. (1+x^4-x^5)/(1-x).

The programs for A052596, there is no canonical definition to state claims against.
-/

/-! ## A052596.P17306775987637484887

`(char[4]+1)*n!`
-/

namespace A052596.P17306775987637484887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * Nat.factorial n

end

end A052596.P17306775987637484887

/-! ## A052596.P3939449623823342347

`lcm(∏{e}[2*n+1, #]^4, n!)`
-/

namespace A052596.P3939449623823342347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 4) (Nat.factorial n)

end

end A052596.P3939449623823342347

/-! ## A052596.P18375055610201761271

`(char[4]+1)*A000142(n)`
-/

namespace A052596.P18375055610201761271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A000142 n

end

end A052596.P18375055610201761271

/-! ## A052596.P7164770816342919734

`(char[4]+1)*(A038507(n)-1)`
-/

namespace A052596.P7164770816342919734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * (A038507 n - 1)

end

end A052596.P7164770816342919734

/-! ## A052596.P327528684708212661

`lcm(A001221(n+2)^4, n!)`
-/

namespace A052596.P327528684708212661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2) ^ 4) (Nat.factorial n : ℤ)

end

end A052596.P327528684708212661

/-! ## A052596.P16200506996501444970

`n!*A007318(C(n, (3-n)²))`
-/

namespace A052596.P16200506996501444970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A007318 (Nat.choose n ((3 - (n : ℤ)) ^ 2).toNat)

end

end A052596.P16200506996501444970

/-! ## A052596.P13385091012748453137

`lcm(A132046(n)², A000142(n))`
-/

namespace A052596.P13385091012748453137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132046 n ^ 2) (A000142 n)

end

end A052596.P13385091012748453137

/-! ## A052596.P14907950248332274756

`A052699(n+1)/(n+1)`
-/

namespace A052596.P14907950248332274756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052699 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052596.P14907950248332274756

/-! ## A052596.P597710982549510465

`lcm(A060500(n+1)²², A199660(2*n+1))`
-/

namespace A052596.P597710982549510465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((A060500 (n + 1) ^ 2) ^ 2) (A199660 (2 * n + 1))

end

end A052596.P597710982549510465

/-! ## A052596.P1309535270350104366

`A000142(n)*A167155(2*n+1)`
-/

namespace A052596.P1309535270350104366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A167155 (2 * n + 1)

end

end A052596.P1309535270350104366

/-!
# A052597: E.g.f. 1/(1-x^2-x^3).

The programs for A052597, the canonical program `A052597.P7626341955321284122` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052597 has offset 0).

The definition of A052597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052597.P7626341955321284122

`n!*A000931(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052597

/-- `n!*A000931(n+3)` -/
def P7626341955321284122.Spec : Prop :=
  ∀ n, P7626341955321284122.a n = A052597 n

theorem P7626341955321284122.correct : P7626341955321284122.Spec := by
  intro n
  simp only [A052597]

end A052597

/-! ## A052597.P9566891086984053802

`n!*A182097(n)`
-/

namespace A052597.P9566891086984053802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A182097 n

end

end A052597.P9566891086984053802

namespace A052597

/-- `n!*A182097(n)` -/
def P9566891086984053802.Spec : Prop :=
  ∀ n, P9566891086984053802.a n = A052597 n

end A052597

/-! ## A052597.P1857690315522094552

`n!*∑[A078027(n)]`
-/

namespace A052597.P1857690315522094552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052597.P1857690315522094552

namespace A052597

/-- `n!*∑[A078027(n)]` -/
def P1857690315522094552.Spec : Prop :=
  ∀ n, P1857690315522094552.a n = A052597 n

end A052597

/-! ## A052597.P5411648364517571683

`n!*Δ[A023434(n)]`
-/

namespace A052597.P5411648364517571683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052597.P5411648364517571683

namespace A052597

/-- `n!*Δ[A023434(n)]` -/
def P5411648364517571683.Spec : Prop :=
  ∀ n, P5411648364517571683.a n = A052597 n

end A052597

/-! ## A052597.P7170729860273254074

`A000142(n)*A182097(n)`
-/

namespace A052597.P7170729860273254074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A182097 n

end

end A052597.P7170729860273254074

namespace A052597

/-- `A000142(n)*A182097(n)` -/
def P7170729860273254074.Spec : Prop :=
  ∀ n, P7170729860273254074.a n = A052597 n

end A052597

/-! ## A052597.P132009344259744288

`∑[A078027(n)]*A000142(n)`
-/

namespace A052597.P132009344259744288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052597.P132009344259744288

namespace A052597

/-- `∑[A078027(n)]*A000142(n)` -/
def P132009344259744288.Spec : Prop :=
  ∀ n, P132009344259744288.a n = A052597 n

end A052597

/-! ## A052597.P1457080925499944294

`Δ[A023434(n)]*A000142(n)`
-/

namespace A052597.P1457080925499944294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052597.P1457080925499944294

namespace A052597

/-- `Δ[A023434(n)]*A000142(n)` -/
def P1457080925499944294.Spec : Prop :=
  ∀ n, P1457080925499944294.a n = A052597 n

end A052597

/-!
# A052598: E.g.f. (1-x)/(1-x-2x^2).

The programs for A052598, the canonical program `A052598.P11690898167567233870` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052598 has offset 0).

The definition of A052598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052598.P11690898167567233870

`n!*A078008(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052598

/-- `n!*A078008(n)` -/
def P11690898167567233870.Spec : Prop :=
  ∀ n, P11690898167567233870.a n = A052598 n

theorem P11690898167567233870.correct : P11690898167567233870.Spec := by
  intro n
  simp only [A052598]

end A052598

/-! ## A052598.P9922440513954734375

`n!*Δ[round(2^n/3)]`
-/

namespace A052598.P9922440513954734375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052598.P9922440513954734375

namespace A052598

/-- `n!*Δ[round(2^n/3)]` -/
def P9922440513954734375.Spec : Prop :=
  ∀ n, P9922440513954734375.a n = A052598 n

end A052598

/-! ## A052598.P15908940156062555299

`n*a(n-1)+2*n*(n-1)*a(n-2)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A052598.P15908940156062555299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  (n : ℤ) * a (n - 1) + 2 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2)))

end

end A052598.P15908940156062555299

namespace A052598

/-- `n*a(n-1)+2*n*(n-1)*a(n-2)` -/
def P15908940156062555299.Spec : Prop :=
  ∀ n, P15908940156062555299.a n = A052598 n

end A052598

/-! ## A052598.P10591925785287034667

`abs(n!*Δ[A128209(n)])`
-/

namespace A052598.P10591925785287034667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A052598.P10591925785287034667

namespace A052598

/-- `abs(n!*Δ[A128209(n)])` -/
def P10591925785287034667.Spec : Prop :=
  ∀ n, P10591925785287034667.a n = A052598 n

end A052598

/-! ## A052598.P6738638923204241317

`(A005578(n)-and(1, n))*n!`
-/

namespace A052598.P6738638923204241317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005578 n - (Nat.land 1 n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052598.P6738638923204241317

namespace A052598

/-- `(A005578(n)-and(1, n))*n!` -/
def P6738638923204241317.Spec : Prop :=
  ∀ n, P6738638923204241317.a n = A052598 n

end A052598

/-! ## A052598.P2632710411474342669

`A002866(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A052598.P2632710411474342669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002866 n - (n : ℤ) * a (n - 1)

end

end A052598.P2632710411474342669

namespace A052598

/-- `A002866(n)-n*a(n-1)` -/
def P2632710411474342669.Spec : Prop :=
  ∀ n, P2632710411474342669.a n = A052598 n

end A052598

/-! ## A052598.P3377040424971534755

`Δ[round(2^n/3)]*A152656(∑[n])`
-/

namespace A052598.P3377040424971534755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A152656 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A052598.P3377040424971534755

namespace A052598

/-- `Δ[round(2^n/3)]*A152656(∑[n])` -/
def P3377040424971534755.Spec : Prop :=
  ∀ n, P3377040424971534755.a n = A052598 n

end A052598

/-! ## A052598.P9762956008419484848

`A000142(n)*A078008(n)`
-/

namespace A052598.P9762956008419484848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A078008 n

end

end A052598.P9762956008419484848

namespace A052598

/-- `A000142(n)*A078008(n)` -/
def P9762956008419484848.Spec : Prop :=
  ∀ n, P9762956008419484848.a n = A052598 n

end A052598

/-! ## A052598.P8167710587919660285

`Δ[A001045(n)]*A000142(n)`
-/

namespace A052598.P8167710587919660285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052598.P8167710587919660285

namespace A052598

/-- `Δ[A001045(n)]*A000142(n)` -/
def P8167710587919660285.Spec : Prop :=
  ∀ n, P8167710587919660285.a n = A052598 n

end A052598

/-!
# A052599: Expansion of e.g.f.: 1/(1-2x-x^3).

The programs for A052599, the canonical program `A052599.P8769073470589604222` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052599 has offset 0).

The definition of A052599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052599.P8769073470589604222

`n!*A008998(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052599

/-- `n!*A008998(n)` -/
def P8769073470589604222.Spec : Prop :=
  ∀ n, P8769073470589604222.a n = A052599 n

theorem P8769073470589604222.correct : P8769073470589604222.Spec := by
  intro n
  simp only [A052599]

end A052599

/-! ## A052599.P5706738160905774480

`n!*∑[A052980(n)]`
-/

namespace A052599.P5706738160905774480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052599.P5706738160905774480

namespace A052599

/-- `n!*∑[A052980(n)]` -/
def P5706738160905774480.Spec : Prop :=
  ∀ n, P5706738160905774480.a n = A052599 n

end A052599

/-! ## A052599.P6822798054801794769

`A000142(n)*A008998(n)`
-/

namespace A052599.P6822798054801794769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008998 n

end

end A052599.P6822798054801794769

namespace A052599

/-- `A000142(n)*A008998(n)` -/
def P6822798054801794769.Spec : Prop :=
  ∀ n, P6822798054801794769.a n = A052599 n

end A052599

/-! ## A052599.P15112823846342170148

`∑[A052980(n)]*A000142(n)`
-/

namespace A052599.P15112823846342170148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052599.P15112823846342170148

namespace A052599

/-- `∑[A052980(n)]*A000142(n)` -/
def P15112823846342170148.Spec : Prop :=
  ∀ n, P15112823846342170148.a n = A052599 n

end A052599

/-! ## A052599.P13005286772048683985

`∏[A028310(n)]*A008998(n)`
-/

namespace A052599.P13005286772048683985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A008998 n

end

end A052599.P13005286772048683985

namespace A052599

/-- `∏[A028310(n)]*A008998(n)` -/
def P13005286772048683985.Spec : Prop :=
  ∀ n, P13005286772048683985.a n = A052599 n

end A052599

