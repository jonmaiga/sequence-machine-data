import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C001
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
# A125900: Triangle of the numerators of the almost-harmonic numbers: n-th term in m-th row is numerator of (sum{k=1 to m} 1/k) - 1/n, 1<=n<=m.

The programs for A125900, there is no canonical definition to state claims against.
-/

/-! ## A125900.P13849409616773080419

`A116416(A130328(n)-1)`
-/

namespace A125900.P13849409616773080419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A130328 n - 1).toNat

end

end A125900.P13849409616773080419

/-! ## A125900.P17494198368694359461

`A116416(A204985(n+1)/2-1)`
-/

namespace A125900.P17494198368694359461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A125900.P17494198368694359461

/-! ## A125900.P3057748446462738141

`A116416(A140513(n)-(A059268(n)+1))`
-/

namespace A125900.P3057748446462738141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A140513 n - (A059268 n + 1)).toNat

end

end A125900.P3057748446462738141

/-! ## A125900.P18302936790424864550

`A116416(A140513(n)-1-A059268(n))`
-/

namespace A125900.P18302936790424864550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A140513 n - 1 - A059268 n).toNat

end

end A125900.P18302936790424864550

/-! ## A125900.P561475021947608511

`A214949(A081541(n+1))`
-/

namespace A125900.P561475021947608511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A081541 (n + 1)).toNat

end

end A125900.P561475021947608511

/-!
# A125901: Triangle of the denominators of the almost-harmonic numbers: n-th term in m-th row is denominator of (sum{k=1 to m} 1/k) - 1/n, 1<=n<=m.

The programs for A125901, there is no canonical definition to state claims against.
-/

/-! ## A125901.P10748940209602144256

`A116417(A130328(n)-1)`
-/

namespace A125901.P10748940209602144256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A130328 n - 1).toNat

end

end A125901.P10748940209602144256

/-! ## A125901.P14519268802891955950

`A094307(n+1)/A094307(A184955(n)+1)`
-/

namespace A125901.P14519268802891955950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094307 (n + 1) : ℚ) / (A094307 (A184955 n + 1).toNat : ℚ)

end

end A125901.P14519268802891955950

/-!
# A125902: a(n) = sum of the first n primes which are coprime to n.

The programs for A125902, the canonical program `A125902.P12495455694751999864` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125902 has offset 1).

The definition of A125902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125902.P12495455694751999864

`A007504(A229109(n+1))-A008472(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125902

/-- `A007504(A229109(n+1))-A008472(n+1)` -/
def P12495455694751999864.Spec : Prop :=
  ∀ n, P12495455694751999864.a n = A125902 (n + 1)

theorem P12495455694751999864.correct : P12495455694751999864.Spec := by
  intro n
  simp only [A125902, Nat.add_sub_cancel]

end A125902

/-! ## A125902.P5671670759757282694

`A007504(A001221(n+1)+n+1)-A008472(n+1)`
-/

namespace A125902.P5671670759757282694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A001221 (n + 1) + (n + 1 : ℤ)).toNat - A008472 (n + 1)

end

end A125902.P5671670759757282694

namespace A125902

/-- `A007504(A001221(n+1)+n+1)-A008472(n+1)` -/
def P5671670759757282694.Spec : Prop :=
  ∀ n, P5671670759757282694.a n = A125902 (n + 1)

end A125902

/-!
# A125903: a(n) = product of the first n primes which are coprime to n.

The programs for A125903, there is no canonical definition to state claims against.
-/

/-! ## A125903.P6664487848202890694

`A002110(∑{p}[n+1, gcd(n, #)]+n+1)/∏{p}[n+1, #]`
-/

namespace A125903.P6664487848202890694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + (n + 1)) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A125903.P6664487848202890694

/-! ## A125903.P2103972654514530456

`A002110(∑{p}[n+1, gcd(n, #)]+n+1)/A007947(n+1)`
-/

namespace A125903.P2103972654514530456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + (n + 1)) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A125903.P2103972654514530456

/-! ## A125903.P6215958590840808029

`A002110(A229109(n+1))/A007947(n+1)`
-/

namespace A125903.P6215958590840808029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A229109 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A125903.P6215958590840808029

/-! ## A125903.P7623988954976081637

`A002110(A001221(n+1)+n+1)/A007947(n+1)`
-/

namespace A125903.P7623988954976081637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A001221 (n + 1) + (n + 1 : ℤ)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A125903.P7623988954976081637

/-!
# A125904: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of the digits 1,2,3,4 and at least one of the digits 5,6,7,8,9.

The programs for A125904, there is no canonical definition to state claims against.
-/

/-! ## A125904.P7202032174577645421

`A000533(n+1)-A078898(A309799(n+1))`
-/

namespace A125904.P7202032174577645421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) - A078898 (A309799 (n + 1)).toNat

end

end A125904.P7202032174577645421

/-!
# A125905: a(0) = 1, a(1) = -4, a(n) = -4*a(n-1) - a(n-2) for n > 1.

The programs for A125905, the canonical program `A125905.P9792326582043427263` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125905 has offset 0).

The definition of A125905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-1)-a(n-2)` (program `A125905.P9792326582043427263`, by `A125905.P9792326582043427263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125905.P9792326582043427263

`-4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=-4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125905

/-- `-4*a(n-1)-a(n-2)` -/
def P9792326582043427263.Spec : Prop :=
  ∀ n, P9792326582043427263.a n = A125905 n

theorem P9792326582043427263.correct : P9792326582043427263.Spec := by
  intro n
  simp only [A125905]

end A125905

/-! ## A125905.P8484690575050045173

`(-1)^n*A001353(n+1)`
-/

namespace A125905.P8484690575050045173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001353 (n + 1)

end

end A125905.P8484690575050045173

namespace A125905

/-- `(-1)^n*A001353(n+1)` -/
def P8484690575050045173.Spec : Prop :=
  ∀ n, P8484690575050045173.a n = A125905 n

end A125905

/-! ## A125905.P17131805276678587899

`(-1)^(n+1)*A106707(n+1)`
-/

namespace A125905.P17131805276678587899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A106707 (n + 1)

end

end A125905.P17131805276678587899

namespace A125905

/-- `(-1)^(n+1)*A106707(n+1)` -/
def P17131805276678587899.Spec : Prop :=
  ∀ n, P17131805276678587899.a n = A125905 n

end A125905

/-! ## A125905.P13246906834831590290

`ogf(1/(1+4x+x^2))`
-/

namespace A125905.P13246906834831590290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 4, 1] n

end

end A125905.P13246906834831590290

namespace A125905

/-- `ogf(1/(1+4x+x^2))` -/
def P13246906834831590290.Spec : Prop :=
  ∀ n, P13246906834831590290.a n = A125905 n

end A125905

/-! ## A125905.P18413678426639058591

`round(a(n-1)/(sqrt(3)-2))` with `a(0)=1`
-/

namespace A125905.P18413678426639058591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A125905.P18413678426639058591

namespace A125905

/-- `round(a(n-1)/(sqrt(3)-2))` -/
def P18413678426639058591.Spec : Prop :=
  ∀ n, P18413678426639058591.a n = A125905 n

end A125905

/-! ## A125905.P7299583333901909745

`-round((sqrt(3)+2)*a(n-1))` with `a(0)=1`
-/

namespace A125905.P7299583333901909745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A125905.P7299583333901909745

namespace A125905

/-- `-round((sqrt(3)+2)*a(n-1))` -/
def P7299583333901909745.Spec : Prop :=
  ∀ n, P7299583333901909745.a n = A125905 n

end A125905

/-! ## A125905.P2806223734628454695

`∑[(-1)^n*∑[ceil((sqrt(3)+2)^n)]]`
-/

namespace A125905.P2806223734628454695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125905.P2806223734628454695

namespace A125905

/-- `∑[(-1)^n*∑[ceil((sqrt(3)+2)^n)]]` -/
def P2806223734628454695.Spec : Prop :=
  ∀ n, P2806223734628454695.a n = A125905 n

end A125905

/-! ## A125905.P2247720689051218783

`(-1)^n*Δ[A101265(n+1)]`
-/

namespace A125905.P2247720689051218783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A125905.P2247720689051218783

namespace A125905

/-- `(-1)^n*Δ[A101265(n+1)]` -/
def P2247720689051218783.Spec : Prop :=
  ∀ n, P2247720689051218783.a n = A125905 n

end A125905

/-! ## A125905.P4021445045161857452

`A110294(n)/A000034(n)`
-/

namespace A125905.P4021445045161857452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110294 n : ℚ) / (A000034 n : ℚ)

end

end A125905.P4021445045161857452

namespace A125905

/-- `A110294(n)/A000034(n)` -/
def P4021445045161857452.Spec : Prop :=
  ∀ n, P4021445045161857452.a n = (A125905 n : ℚ)

end A125905

/-! ## A125905.P5348512684082829872

`A001353(n+1)*A033999(n)`
-/

namespace A125905.P5348512684082829872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A033999 n

end

end A125905.P5348512684082829872

namespace A125905

/-- `A001353(n+1)*A033999(n)` -/
def P5348512684082829872.Spec : Prop :=
  ∀ n, P5348512684082829872.a n = A125905 n

end A125905

/-! ## A125905.P9536132205594190124

`A110294(n)/A176895(2*n)`
-/

namespace A125905.P9536132205594190124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110294 n : ℚ) / (A176895 (2 * n) : ℚ)

end

end A125905.P9536132205594190124

namespace A125905

/-- `A110294(n)/A176895(2*n)` -/
def P9536132205594190124.Spec : Prop :=
  ∀ n, P9536132205594190124.a n = (A125905 n : ℚ)

end A125905

/-! ## A125905.P16296188217698895257

`Δ[A061278(n)]*A056594(2*n)`
-/

namespace A125905.P16296188217698895257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056594 (2 * n)

end

end A125905.P16296188217698895257

namespace A125905

/-- `Δ[A061278(n)]*A056594(2*n)` -/
def P16296188217698895257.Spec : Prop :=
  ∀ n, P16296188217698895257.a n = A125905 n

end A125905

/-! ## A125905.P4341147183797194422

`A001353(n+1)/A033999(n+2)`
-/

namespace A125905.P4341147183797194422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A125905.P4341147183797194422

namespace A125905

/-- `A001353(n+1)/A033999(n+2)` -/
def P4341147183797194422.Spec : Prop :=
  ∀ n, P4341147183797194422.a n = (A125905 n : ℚ)

end A125905

/-! ## A125905.P1098996686365065563

`A001353(n+1)*A056594(2*n)`
-/

namespace A125905.P1098996686365065563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A056594 (2 * n)

end

end A125905.P1098996686365065563

namespace A125905

/-- `A001353(n+1)*A056594(2*n)` -/
def P1098996686365065563.Spec : Prop :=
  ∀ n, P1098996686365065563.a n = A125905 n

end A125905

/-! ## A125905.P7612314101317150274

`A001353(n+1)*A057077(2*n)`
-/

namespace A125905.P7612314101317150274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A057077 (2 * n)

end

end A125905.P7612314101317150274

namespace A125905

/-- `A001353(n+1)*A057077(2*n)` -/
def P7612314101317150274.Spec : Prop :=
  ∀ n, P7612314101317150274.a n = A125905 n

end A125905

/-! ## A125905.P5614024249993865490

`A033999(n)*A108412(2*n+1)`
-/

namespace A125905.P5614024249993865490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108412 (2 * n + 1)

end

end A125905.P5614024249993865490

namespace A125905

/-- `A033999(n)*A108412(2*n+1)` -/
def P5614024249993865490.Spec : Prop :=
  ∀ n, P5614024249993865490.a n = A125905 n

end A125905

/-! ## A125905.P6611850352052451225

`A056594(2*n)*A259592(2*n)`
-/

namespace A125905.P6611850352052451225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A259592 (2 * n)

end

end A125905.P6611850352052451225

namespace A125905

/-- `A056594(2*n)*A259592(2*n)` -/
def P6611850352052451225.Spec : Prop :=
  ∀ n, P6611850352052451225.a n = A125905 n

end A125905

/-! ## A125905.P6621592529308701337

`A001353(n+1)*A034947(2*n+1)`
-/

namespace A125905.P6621592529308701337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A034947 (2 * n + 1)

end

end A125905.P6621592529308701337

namespace A125905

/-- `A001353(n+1)*A034947(2*n+1)` -/
def P6621592529308701337.Spec : Prop :=
  ∀ n, P6621592529308701337.a n = A125905 n

end A125905

/-! ## A125905.P3616015243210118263

`(2-A010684(n))*A108412(2*n+1)`
-/

namespace A125905.P3616015243210118263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A108412 (2 * n + 1)

end

end A125905.P3616015243210118263

namespace A125905

/-- `(2-A010684(n))*A108412(2*n+1)` -/
def P3616015243210118263.Spec : Prop :=
  ∀ n, P3616015243210118263.a n = A125905 n

end A125905

/-! ## A125905.P15147508136969136740

`A162959(2*(n+1))/(2*A056594(2*n))`
-/

namespace A125905.P15147508136969136740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162959 (2 * (n + 1)) : ℚ) / (2 * A056594 (2 * n) : ℚ)

end

end A125905.P15147508136969136740

namespace A125905

/-- `A162959(2*(n+1))/(2*A056594(2*n))` -/
def P15147508136969136740.Spec : Prop :=
  ∀ n, P15147508136969136740.a n = (A125905 n : ℚ)

end A125905

/-!
# A125906: Riordan array (1/(1 + 5*x + x^2), x/(1 + 5*x + x^2))^(-1); inverse of Riordan array A123967.

The programs for A125906, there is no canonical definition to state claims against.
-/

/-! ## A125906.P17555098785261701239

`gcd(A081187(A324666(n)), A324660(n))`
-/

namespace A125906.P17555098785261701239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081187 (A324666 n).toNat) (A324660 n)

end

end A125906.P17555098785261701239

/-!
# A125908: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digits 1 and 2 and at least one of digits 3,4,5,6,7,8,9.

The programs for A125908, there is no canonical definition to state claims against.
-/

/-! ## A125908.P15843089499976813481

`A125948(n+1)+A126640(n+1)-A125945(n+1)`
-/

namespace A125908.P15843089499976813481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125948 (n + 1) + (A126640 (n + 1) - A125945 (n + 1))

end

end A125908.P15843089499976813481

/-! ## A125908.P15367661728882164113

`A158198(eq[7, A002262(n)])`
-/

namespace A125908.P15367661728882164113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125908.P15367661728882164113

/-! ## A125908.P15201731991460539040

`A158198(A000096(n+6)+8)`
-/

namespace A125908.P15201731991460539040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000096 (n + 6) + 8).toNat

end

end A125908.P15201731991460539040

/-! ## A125908.P8160103231530381637

`A158198(eq[8, A002260(n+1)])`
-/

namespace A125908.P8160103231530381637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125908.P8160103231530381637

/-! ## A125908.P6848144609593504830

`A158198(A000217(n+8)+n-(2*n+1))`
-/

namespace A125908.P6848144609593504830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000217 (n + 8) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A125908.P6848144609593504830

/-!
# A125909: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digit 1, at least one of the digits 2,3 and at least one of digits 4,5,6,7,8,9.

The programs for A125909, there is no canonical definition to state claims against.
-/

/-! ## A125909.P4388741169501347661

`(A126640(n+1)+A125946(n+1))/2`
-/

namespace A125909.P4388741169501347661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126640 (n + 1) + A125946 (n + 1) : ℚ) / 2

end

end A125909.P4388741169501347661

/-! ## A125909.P9173277417429605675

`A125908(n+1)+A125945(n+1)-A125910(n+1)`
-/

namespace A125909.P9173277417429605675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125908 (n + 1) + (A125945 (n + 1) - A125910 (n + 1))

end

end A125909.P9173277417429605675

/-! ## A125909.P9400692107160179048

`A125910(n+1)+A125946(n+1)-A125948(n+1)`
-/

namespace A125909.P9400692107160179048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125910 (n + 1) + (A125946 (n + 1) - A125948 (n + 1))

end

end A125909.P9400692107160179048

/-! ## A125909.P10267538003711844635

`A125945(n+1)+A125947(n+1)-A125946(n+1)`
-/

namespace A125909.P10267538003711844635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125945 (n + 1) + (A125947 (n + 1) - A125946 (n + 1))

end

end A125909.P10267538003711844635

/-!
# A125910: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digit 1, at least one of digits 2,3,4 and at least one of digits 5,6,7,8,9.

The programs for A125910, there is no canonical definition to state claims against.
-/

/-! ## A125910.P11324712768197020209

`A125908(n+1)+A125945(n+1)-A125909(n+1)`
-/

namespace A125910.P11324712768197020209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125908 (n + 1) + (A125945 (n + 1) - A125909 (n + 1))

end

end A125910.P11324712768197020209

/-! ## A125910.P7632895342445358912

`A125908(n+1)+A125946(n+1)-A125947(n+1)`
-/

namespace A125910.P7632895342445358912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125908 (n + 1) + (A125946 (n + 1) - A125947 (n + 1))

end

end A125910.P7632895342445358912

/-! ## A125910.P10830848382120600225

`A125909(n+1)+A125948(n+1)-A125946(n+1)`
-/

namespace A125910.P10830848382120600225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125909 (n + 1) + (A125948 (n + 1) - A125946 (n + 1))

end

end A125910.P10830848382120600225

/-! ## A125910.P871445259688649813

`A125948(n+1)+A126640(n+1)-A125909(n+1)`
-/

namespace A125910.P871445259688649813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125948 (n + 1) + (A126640 (n + 1) - A125909 (n + 1))

end

end A125910.P871445259688649813

/-!
# A125911: Product of the even divisors of n.

The programs for A125911, the canonical program `A125911.P3841651622429786425` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125911 has offset 1).

The definition of A125911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A136655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125911.P3841651622429786425

`A007955(n+1)/A136655(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A125911

/-- `A007955(n+1)/A136655(n+1)` -/
def P3841651622429786425.Spec : Prop :=
  ∀ n, P3841651622429786425.a n = (A125911 (n + 1) : ℚ)

end A125911

/-! ## A125911.P16122433619873778202

`∏{d}[n+1, gcd(#, #%2)]`
-/

namespace A125911.P16122433619873778202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.gcd d (d % 2)

end

end A125911.P16122433619873778202

namespace A125911

/-- `∏{d}[n+1, gcd(#, #%2)]` -/
def P16122433619873778202.Spec : Prop :=
  ∀ n, (P16122433619873778202.a n : ℤ) = A125911 (n + 1)

end A125911

/-! ## A125911.P17125813515448669610

`∏{d}[∑[n]%(n+1), 2*#]`
-/

namespace A125911.P17125813515448669610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), 2 * d

end

end A125911.P17125813515448669610

namespace A125911

/-- `∏{d}[∑[n]%(n+1), 2*#]` -/
def P17125813515448669610.Spec : Prop :=
  ∀ n, (P17125813515448669610.a n : ℤ) = A125911 (n + 1)

end A125911

/-! ## A125911.P10906034914843135301

`∏{d}[A142150(n+1), 2*#]`
-/

namespace A125911.P10906034914843135301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, 2 * d

end

end A125911.P10906034914843135301

namespace A125911

/-- `∏{d}[A142150(n+1), 2*#]` -/
def P10906034914843135301.Spec : Prop :=
  ∀ n, (P10906034914843135301.a n : ℤ) = A125911 (n + 1)

end A125911

/-! ## A125911.P14003895959824830561

`A007955(n+1)/A007955(A000265(n+1))`
-/

namespace A125911.P14003895959824830561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A007955 (A000265 (n + 1)).toNat : ℚ)

end

end A125911.P14003895959824830561

namespace A125911

/-- `A007955(n+1)/A007955(A000265(n+1))` -/
def P14003895959824830561.Spec : Prop :=
  ∀ n, P14003895959824830561.a n = (A125911 (n + 1) : ℚ)

end A125911

/-! ## A125911.P7434191533628902623

`A007955(n+1)/(A140210(n+1)*A140211(n+1))`
-/

namespace A125911.P7434191533628902623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A140210 (n + 1) * A140211 (n + 1) : ℚ)

end

end A125911.P7434191533628902623

namespace A125911

/-- `A007955(n+1)/(A140210(n+1)*A140211(n+1))` -/
def P7434191533628902623.Spec : Prop :=
  ∀ n, P7434191533628902623.a n = (A125911 (n + 1) : ℚ)

end A125911

/-! ## A125911.P5066775814537116555

`A007955(n+1)/A385349(2*(n+1))`
-/

namespace A125911.P5066775814537116555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A385349 (2 * (n + 1)) : ℚ)

end

end A125911.P5066775814537116555

namespace A125911

/-- `A007955(n+1)/A385349(2*(n+1))` -/
def P5066775814537116555.Spec : Prop :=
  ∀ n, P5066775814537116555.a n = (A125911 (n + 1) : ℚ)

end A125911

/-! ## A125911.P1875268091224808263

`∏{d}[n+1, A220604(#²)]`
-/

namespace A125911.P1875268091224808263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A220604 (d ^ 2)

end

end A125911.P1875268091224808263

namespace A125911

/-- `∏{d}[n+1, A220604(#²)]` -/
def P1875268091224808263.Spec : Prop :=
  ∀ n, P1875268091224808263.a n = A125911 (n + 1)

end A125911

/-! ## A125911.P11162527683867163399

`A175068(n+1)/A136655(n+1)*A178646(n+1)`
-/

namespace A125911.P11162527683867163399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175068 (n + 1) : ℚ) / (A136655 (n + 1) : ℚ) * (A178646 (n + 1) : ℚ)

end

end A125911.P11162527683867163399

namespace A125911

/-- `A175068(n+1)/A136655(n+1)*A178646(n+1)` -/
def P11162527683867163399.Spec : Prop :=
  ∀ n, P11162527683867163399.a n = (A125911 (n + 1) : ℚ)

end A125911

/-!
# A125912: Sprague-Grundy values for octal game .141.

The programs for A125912, there is no canonical definition to state claims against.
-/

/-! ## A125912.P4708384786055076257

`A269247(Δ[A212098(n+1)])`
-/

namespace A125912.P4708384786055076257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (f1 (n + 1) - f1 n).toNat

end

end A125912.P4708384786055076257

/-!
# A125913: Sprague-Grundy values for octal game .144.

The programs for A125913, there is no canonical definition to state claims against.
-/

/-! ## A125913.P11027209113172614481

`A125915(∑[char[A047207(n+1)]])`
-/

namespace A125913.P11027209113172614481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125913.P11027209113172614481

/-!
# A125914: Sprague-Grundy values for octal game .145.

The programs for A125914, there is no canonical definition to state claims against.
-/

/-! ## A125914.P3019869394448600390

`A125927(5*(n+1))`
-/

namespace A125914.P3019869394448600390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125927 (5 * (n + 1))

end

end A125914.P3019869394448600390

/-!
# A125915: Sprague-Grundy values for octal game .147.

The programs for A125915, there is no canonical definition to state claims against.
-/

/-! ## A125915.P13524595227596012208

`A125913(A304802(n))`
-/

namespace A125915.P13524595227596012208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125913 (A304802 n).toNat

end

end A125915.P13524595227596012208

/-!
# A125916: Sprague-Grundy values for octal game .15 (Guiles).

The programs for A125916, the canonical program `A125916.P2641125795698928432` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125916 has offset 0).

The definition of A125916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125916.P2641125795698928432

`((a(n-1)-n)%5)%3+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125916

/-- `((a(n-1)-n)%5)%3+2` -/
def P2641125795698928432.Spec : Prop :=
  ∀ n, P2641125795698928432.a n = A125916 n

theorem P2641125795698928432.correct : P2641125795698928432.Spec := by
  intro n
  simp only [A125916]

end A125916

/-!
# A125918: Sprague-Grundy values for octal game .154.

The programs for A125918, there is no canonical definition to state claims against.
-/

/-! ## A125918.P1910236183589628147

`A125912(3*(n+1))-char[2]`
-/

namespace A125918.P1910236183589628147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125912 (3 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A125918.P1910236183589628147

/-!
# A125919: Sprague-Grundy values for octal game .171.

The programs for A125919, there is no canonical definition to state claims against.
-/

/-! ## A125919.P13071042345592144830

`A020882(A260275(n+1))%A260254(n+2)`
-/

namespace A125919.P13071042345592144830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020882 (A260275 (n + 1)).toNat) (A260254 (n + 2))

end

end A125919.P13071042345592144830

/-!
# A125921: Sprague-Grundy values for octal game .314.

The programs for A125921, there is no canonical definition to state claims against.
-/

/-! ## A125921.P200388283715553547

`A356006(A355996(n+1)+A303667(2*n))`
-/

namespace A125921.P200388283715553547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A355996 (n + 1) + A303667 (2 * n)).toNat

end

end A125921.P200388283715553547

/-!
# A125922: Sprague-Grundy values for octal game .316.

The programs for A125922, there is no canonical definition to state claims against.
-/

/-! ## A125922.P5157875877368318333

`(A159257(n+2)%(n+1)+n+1)%4`
-/

namespace A125922.P5157875877368318333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A159257 (n + 2)) (n + 1 : ℤ) + (n + 1 : ℤ)) 4

end

end A125922.P5157875877368318333

/-!
# A125924: Sprague-Grundy values for octal game .34.

The programs for A125924, there is no canonical definition to state claims against.
-/

/-! ## A125924.P15512270997589828655

`A020639(A000217(A247643(n)))%A133265(n)`
-/

namespace A125924.P15512270997589828655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A000217 (A247643 n).toNat).toNat) (A133265 n)

end

end A125924.P15512270997589828655

/-!
# A125925: Sprague-Grundy values for octal game .351.

The programs for A125925, the canonical program `A125925.P2259033093901940848` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125925 has offset 1).

The definition of A125925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125925.P2259033093901940848

`A036579(and(7, n-2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125925

/-- `A036579(and(7, n-2))` -/
def P2259033093901940848.Spec : Prop :=
  ∀ n, P2259033093901940848.a n = A125925 (n + 1)

theorem P2259033093901940848.correct : P2259033093901940848.Spec := by
  intro n
  simp only [A125925, Nat.add_sub_cancel]

end A125925

/-!
# A125927: Sprague-Grundy values for octal game .53.

The programs for A125927, there is no canonical definition to state claims against.
-/

/-! ## A125927.P9754650655127548254

`A004222(A072843(n))%A033810(n+1)`
-/

namespace A125927.P9754650655127548254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004222 (A072843 n).toNat) (A033810 (n + 1))

end

end A125927.P9754650655127548254

/-!
# A125933: Sprague-Grundy values for octal game .7307.

The programs for A125933, there is no canonical definition to state claims against.
-/

/-! ## A125933.P6703784560857405135

`A000005(30*2^n+1)^(n²%3)`
-/

namespace A125933.P6703784560857405135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * 2 ^ n + 1) ^ (n ^ 2 % 3)

end

end A125933.P6703784560857405135

/-!
# A125936: Sprague-Grundy values for octal game .7707.

The programs for A125936, there is no canonical definition to state claims against.
-/

/-! ## A125936.P319072383854908626

`A071441(A091937(4*n+2)-A008624(n))`
-/

namespace A125936.P319072383854908626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071441 (A091937 (4 * n + 2) - A008624 n).toNat

end

end A125936.P319072383854908626

/-!
# A125940: Sprague-Grundy values for octal game 4.324.

The programs for A125940, there is no canonical definition to state claims against.
-/

/-! ## A125940.P17693123025081906221

`A125943(record[A000005(A141539(n))])`
-/

namespace A125940.P17693123025081906221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141539 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125940.P17693123025081906221

/-! ## A125940.P14226530130560427910

`A125943(n+1)/A043284(A288260(n))`
-/

namespace A125940.P14226530130560427910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125943 (n + 1) : ℚ) / (A043284 (A288260 n).toNat : ℚ)

end

end A125940.P14226530130560427910

/-! ## A125940.P15744147389335305173

`A125943(n+1)^A004718(A022180(n))`
-/

namespace A125940.P15744147389335305173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125943 (n + 1) : ℚ) ^ (A004718 (A022180 n).toNat : ℤ)

end

end A125940.P15744147389335305173

/-! ## A125940.P703943106811733875

`gcd(A102683(A001006(n)), A125943(n+1))`
-/

namespace A125940.P703943106811733875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102683 (A001006 n).toNat) (A125943 (n + 1))

end

end A125940.P703943106811733875

/-! ## A125940.P8593091380609926590

`A071504(n+1)-A130130(A185284(3*(n+1)))`
-/

namespace A125940.P8593091380609926590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071504 (n + 1) - A130130 (A185284 (3 * (n + 1))).toNat

end

end A125940.P8593091380609926590

/-!
# A125941: Sprague-Grundy values for octal game 4.327.

The programs for A125941, there is no canonical definition to state claims against.
-/

/-! ## A125941.P17861030937412685282

`A001222(A246864(3*n+5)+A002805(n+1))`
-/

namespace A125941.P17861030937412685282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246864 (3 * n + 5) + A002805 (n + 1)).toNat

end

end A125941.P17861030937412685282

/-!
# A125943: Sprague-Grundy values for octal game 4.364.

The programs for A125943, there is no canonical definition to state claims against.
-/

/-! ## A125943.P5178843590405780177

`A185284(A158611(n+1))+A071504(n+1)`
-/

namespace A125943.P5178843590405780177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A158611 (n + 1)).toNat + A071504 (n + 1)

end

end A125943.P5178843590405780177

/-!
# A125945: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of digits 1,2, at least one of digits 3,4 and at least one of digits 5,6,7,8,9.

The programs for A125945, there is no canonical definition to state claims against.
-/

/-! ## A125945.P7545232361329031274

`A125909(n+1)+A125910(n+1)-A125908(n+1)`
-/

namespace A125945.P7545232361329031274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125909 (n + 1) + (A125910 (n + 1) - A125908 (n + 1))

end

end A125945.P7545232361329031274

/-! ## A125945.P10109725508662159587

`A125909(n+1)+A125946(n+1)-A125947(n+1)`
-/

namespace A125945.P10109725508662159587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125909 (n + 1) + (A125946 (n + 1) - A125947 (n + 1))

end

end A125945.P10109725508662159587

/-! ## A125945.P10658129187662203608

`A125948(n+1)+A126640(n+1)-A125908(n+1)`
-/

namespace A125945.P10658129187662203608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125948 (n + 1) + (A126640 (n + 1) - A125908 (n + 1))

end

end A125945.P10658129187662203608

/-!
# A125946: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of digits 1,2, at least one of digits 3,4,5 and at least one of digits 6,7,8,9.

The programs for A125946, there is no canonical definition to state claims against.
-/

/-! ## A125946.P12731280696211708037

`2*A125909(n+1)-A126640(n+1)`
-/

namespace A125946.P12731280696211708037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125909 (n + 1) - A126640 (n + 1)

end

end A125946.P12731280696211708037

/-! ## A125946.P1448935371579747013

`A125909(n+1)+A125948(n+1)-A125910(n+1)`
-/

namespace A125946.P1448935371579747013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125909 (n + 1) + (A125948 (n + 1) - A125910 (n + 1))

end

end A125946.P1448935371579747013

/-! ## A125946.P15553407550261702742

`A125910(n+1)+A125947(n+1)-A125908(n+1)`
-/

namespace A125946.P15553407550261702742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125910 (n + 1) + (A125947 (n + 1) - A125908 (n + 1))

end

end A125946.P15553407550261702742

/-! ## A125946.P13117561362145718518

`A125945(n+1)+A125947(n+1)-A125909(n+1)`
-/

namespace A125946.P13117561362145718518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125945 (n + 1) + (A125947 (n + 1) - A125909 (n + 1))

end

end A125946.P13117561362145718518

/-!
# A125947: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digit 1, at least one of digits 2,3,4,5 and at least one of digits 6,7,8,9.

The programs for A125947, there is no canonical definition to state claims against.
-/

/-! ## A125947.P1596150953193525342

`A125908(n+1)+A125946(n+1)-A125910(n+1)`
-/

namespace A125947.P1596150953193525342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125908 (n + 1) + (A125946 (n + 1) - A125910 (n + 1))

end

end A125947.P1596150953193525342

/-! ## A125947.P108961810956070096

`A125909(n+1)+A125946(n+1)-A125945(n+1)`
-/

namespace A125947.P108961810956070096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125909 (n + 1) + (A125946 (n + 1) - A125945 (n + 1))

end

end A125947.P108961810956070096

/-!
# A125948: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of digits 1,2,3, at least one of digits 4,5,6 and at least one of digits 7,8,9.

The programs for A125948, there is no canonical definition to state claims against.
-/

/-! ## A125948.P4121433244279031989

`A125910(n+1)+A125946(n+1)-A125909(n+1)`
-/

namespace A125948.P4121433244279031989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125910 (n + 1) + (A125946 (n + 1) - A125909 (n + 1))

end

end A125948.P4121433244279031989

/-! ## A125948.P13020970978400352202

`A125908(n+1)+A125945(n+1)-A126640(n+1)`
-/

namespace A125948.P13020970978400352202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125908 (n + 1) + (A125945 (n + 1) - A126640 (n + 1))

end

end A125948.P13020970978400352202

/-!
# A125950: a(0)=a(1)=...=a(9)=1; a(n) = - a(n-1) + a(n-3) + a(n-4) + a(n-5) + a(n-6) + a(n-7) - a(n-9) - a(n-10).

The programs for A125950, there is no canonical definition to state claims against.
-/

/-! ## A125950.P3944590557067167406

`A137735(floor(A351511(n)/A003993(n+2)))`
-/

namespace A125950.P3944590557067167406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ⌊(A351511 n : ℚ) / (A003993 (n + 2) : ℚ)⌋.toNat

end

end A125950.P3944590557067167406

/-! ## A125950.P2697349433683118341

`A255270(4*(A332651(n)+1))`
-/

namespace A125950.P2697349433683118341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (4 * (A332651 n + 1)).toNat

end

end A125950.P2697349433683118341

/-!
# A125951: Exponents f(n), n = 1, 2, ..., in the infinite product 1 - z - z^2 - z^3 = Product_{n>=1} (1-z^n)^f(n).

The programs for A125951, there is no canonical definition to state claims against.
-/

/-! ## A125951.P963628040912688867

`A349904(n+1)+A006206(n+1)`
-/

namespace A125951.P963628040912688867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349904 (n + 1) + A006206 (n + 1)

end

end A125951.P963628040912688867

/-! ## A125951.P13604846425530353833

`A349802(∑[n+1]+2)+A006206(n+1)`
-/

namespace A125951.P13604846425530353833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349802 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A006206 (n + 1)

end

end A125951.P13604846425530353833

/-! ## A125951.P12203836709898651866

`A349904(n+1)+A348422(∑[n]+1)+char[1]`
-/

namespace A125951.P12203836709898651866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349904 (n + 1) + (A348422 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A125951.P12203836709898651866

/-! ## A125951.P1634867285853065337

`∑{d}[n+1, A008683(#)*A093305((n+1)/#)]`
-/

namespace A125951.P1634867285853065337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A093305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A125951.P1634867285853065337

/-! ## A125951.P14779403205991326073

`A349904(n+1)+char[1]+A031367(n+1)/(n+1)`
-/

namespace A125951.P14779403205991326073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349904 (n + 1) : ℚ) + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A031367 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A125951.P14779403205991326073

/-!
# A125954: Least number k > 0 such that ((2n+1)^k - 2^k)/(2n-1) is prime.

The programs for A125954, there is no canonical definition to state claims against.
-/

/-! ## A125954.P17890051700393297947

`A007097(A034693(2*(n+2))^A005361(n+1))`
-/

namespace A125954.P17890051700393297947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (SequenceMachineLib.roundAway ((A034693 (2 * (n + 2)) : ℚ) ^ (A005361 (n + 1) : ℤ))).toNat

end

end A125954.P17890051700393297947

/-! ## A125954.P12363395909339374250

`A007097(A034693(2*(n+2))^A333267(n+1))`
-/

namespace A125954.P12363395909339374250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (SequenceMachineLib.roundAway ((A034693 (2 * (n + 2)) : ℚ) ^ (A333267 (n + 1) : ℤ))).toNat

end

end A125954.P12363395909339374250

/-! ## A125954.P3988454627928409252

`A204895(A204901(n+1)^A141419(n+1))`
-/

namespace A125954.P3988454627928409252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (SequenceMachineLib.roundAway ((A204901 (n + 1) : ℚ) ^ (A141419 (n + 1) : ℤ))).toNat

end

end A125954.P3988454627928409252

/-! ## A125954.P7623021467488526688

`p?[A300360(p?[A317624(n)])]`
-/

namespace A125954.P7623021467488526688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300360 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125954.P7623021467488526688

/-!
# A125956: Numbers k such that (2^k + 9^k)/11 is prime.

The programs for A125956, there is no canonical definition to state claims against.
-/

/-! ## A125956.P15315952329262893065

`p?[A224880(∑[A087845(n+1)])]`
-/

namespace A125956.P15315952329262893065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125956.P15315952329262893065

/-!
# A125957: Numbers n such that (2^n + 11^n)/13 is prime.

The programs for A125957, there is no canonical definition to state claims against.
-/

/-! ## A125957.P12082057852919949514

`p?[A182210(∑[A000291(n)])]`
-/

namespace A125957.P12082057852919949514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125957.P12082057852919949514

/-! ## A125957.P3589958535191758546

`p?[∑[A135895(A127586(n))]]`
-/

namespace A125957.P3589958535191758546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (A127586 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125957.P3589958535191758546

/-!
# A125959: Infinite array of nine columns, read by rows: A(j,k) = digital root of j*k for j >= 1, 1 <= k <= 9.

The programs for A125959, the canonical program `A125959.P4849886120965517372` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125959 has offset 1).

The definition of A125959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125959.P4849886120965517372

`dr((1+floor(n/9))*(1+n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125959

/-- `dr((1+floor(n/9))*(1+n))` -/
def P4849886120965517372.Spec : Prop :=
  ∀ n, (P4849886120965517372.a n : ℤ) = A125959 (n + 1)

theorem P4849886120965517372.correct : P4849886120965517372.Spec := by
  intro n
  simp only [A125959, Nat.add_sub_cancel]

end A125959

/-!
# A125960: Sum of [n mod Sum_of_digits(n)] and [Sum_of_digits(n) mod n].

The programs for A125960, there is no canonical definition to state claims against.
-/

/-! ## A125960.P16900777442558754735

`A070635(n+1)+∑{digits}[n+1, #]%(n+1)`
-/

namespace A125960.P16900777442558754735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1) : ℕ) : ℤ)

end

end A125960.P16900777442558754735

/-! ## A125960.P5574045104999673973

`A049765(A007953(n+1)+∑[n])`
-/

namespace A125960.P5574045104999673973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049765 (A007953 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A125960.P5574045104999673973

/-! ## A125960.P9203194217171554320

`A070635(n+1)+A053392(n+1)`
-/

namespace A125960.P9203194217171554320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1) + A053392 (n + 1)

end

end A125960.P9203194217171554320

/-! ## A125960.P6309839261816732569

`A093882(n+1)+A070635(n+1)`
-/

namespace A125960.P6309839261816732569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 (n + 1) + A070635 (n + 1)

end

end A125960.P6309839261816732569

/-! ## A125960.P16779402122722394836

`A138953(n+1)+A070635(n+1)`
-/

namespace A125960.P16779402122722394836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138953 (n + 1) + A070635 (n + 1)

end

end A125960.P16779402122722394836

/-! ## A125960.P5996021033277982882

`A307629(n+1)+A070635(n+1)`
-/

namespace A125960.P5996021033277982882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (n + 1) + A070635 (n + 1)

end

end A125960.P5996021033277982882

/-! ## A125960.P7868244919647005332

`A053392(n+1)+(n+1)%A007953(n+1)`
-/

namespace A125960.P7868244919647005332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (n + 1) + Int.tmod (n + 1 : ℤ) (A007953 (n + 1))

end

end A125960.P7868244919647005332

/-! ## A125960.P14229224349186477616

`A070635(n+1)+A088133(n+1)%A199343(n)`
-/

namespace A125960.P14229224349186477616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1) + Int.tmod (A088133 (n + 1)) (A199343 n)

end

end A125960.P14229224349186477616

/-! ## A125960.P2622533810108907317

`A070635(n+1)+A007953(n+1)%A005349(n+1)`
-/

namespace A125960.P2622533810108907317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1) + Int.tmod (A007953 (n + 1)) (A005349 (n + 1))

end

end A125960.P2622533810108907317

/-! ## A125960.P9338301336781389861

`A062028(n+1)%(n+1)+A062028(n+1)%A007953(n+1)`
-/

namespace A125960.P9338301336781389861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (n + 1)) (n + 1 : ℤ) + Int.tmod (A062028 (n + 1)) (A007953 (n + 1))

end

end A125960.P9338301336781389861

/-!
# A125962: Numbers whose base-9 representation is 555555555......5.

The programs for A125962, the canonical program `A125962.P17734588464359974742` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125962 has offset 0).

The definition of A125962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125962.P17734588464359974742

`9*a(n-1)+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125962

/-- `9*a(n-1)+5` -/
def P17734588464359974742.Spec : Prop :=
  ∀ n, (P17734588464359974742.a n : ℤ) = A125962 n

theorem P17734588464359974742.correct : P17734588464359974742.Spec := by
  intro n
  simp only [A125962]

end A125962

/-! ## A125962.P10403024427625683465

`(9^n-1)*5/8`
-/

namespace A125962.P10403024427625683465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 ^ n : ℤ) - 1) * 5 : ℚ) / 8

end

end A125962.P10403024427625683465

namespace A125962

/-- `(9^n-1)*5/8` -/
def P10403024427625683465.Spec : Prop :=
  ∀ n, P10403024427625683465.a n = (A125962 n : ℚ)

theorem P10403024427625683465.correct : P10403024427625683465.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125962, Nat.add_sub_cancel, A125962.P10403024427625683465.a, A125962.P17734588464359974742.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125962, Nat.add_sub_cancel, A125962.P10403024427625683465.a, A125962.P17734588464359974742.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A125962

/-! ## A125962.P5077075647778546508

`ogf(5x/(1-10x+9x^2))`
-/

namespace A125962.P5077075647778546508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -10, 9] n

end

end A125962.P5077075647778546508

namespace A125962

/-- `ogf(5x/(1-10x+9x^2))` -/
def P5077075647778546508.Spec : Prop :=
  ∀ n, P5077075647778546508.a n = A125962 n

end A125962

/-! ## A125962.P732283862073529509

`lcm(9, a(n-1))+5` with `a(0)=0`
-/

namespace A125962.P732283862073529509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 5

end

end A125962.P732283862073529509

namespace A125962

/-- `lcm(9, a(n-1))+5` -/
def P732283862073529509.Spec : Prop :=
  ∀ n, (P732283862073529509.a n : ℤ) = A125962 n

end A125962

/-! ## A125962.P12296754034892166989

`∑[9*a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A125962.P12296754034892166989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125962.P12296754034892166989

namespace A125962

/-- `∑[9*a(n-1)]` -/
def P12296754034892166989.Spec : Prop :=
  ∀ n, (P12296754034892166989.a n : ℤ) = A125962 n

end A125962

/-! ## A125962.P15439085835624751712

`a(n-1)/(1/3)²+5` with `a(0)=0`
-/

namespace A125962.P15439085835624751712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 5

end

end A125962.P15439085835624751712

namespace A125962

/-- `a(n-1)/(1/3)²+5` -/
def P15439085835624751712.Spec : Prop :=
  ∀ n, P15439085835624751712.a n = (A125962 n : ℚ)

end A125962

/-! ## A125962.P2624352413017076781

`∑[a(n-1)/(1/3)²]` with `a(0)=0, a(1)=5`
-/

namespace A125962.P2624352413017076781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125962.P2624352413017076781

namespace A125962

/-- `∑[a(n-1)/(1/3)²]` -/
def P2624352413017076781.Spec : Prop :=
  ∀ n, P2624352413017076781.a n = (A125962 n : ℚ)

end A125962

/-! ## A125962.P16774336177853023743

`5*A002452(n)`
-/

namespace A125962.P16774336177853023743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002452 n

end

end A125962.P16774336177853023743

namespace A125962

/-- `5*A002452(n)` -/
def P16774336177853023743.Spec : Prop :=
  ∀ n, P16774336177853023743.a n = A125962 n

end A125962

/-! ## A125962.P7839146553439715940

`∑[A067403(n)]-1`
-/

namespace A125962.P7839146553439715940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125962.P7839146553439715940

namespace A125962

/-- `∑[A067403(n)]-1` -/
def P7839146553439715940.Spec : Prop :=
  ∀ n, P7839146553439715940.a n = A125962 n

end A125962

/-! ## A125962.P9803759497947083091

`5*(A047854(n)-1)`
-/

namespace A125962.P9803759497947083091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A047854 n - 1)

end

end A125962.P9803759497947083091

namespace A125962

/-- `5*(A047854(n)-1)` -/
def P9803759497947083091.Spec : Prop :=
  ∀ n, P9803759497947083091.a n = A125962 n

end A125962

/-! ## A125962.P6305628695809832687

`5*A099583(2*n)`
-/

namespace A125962.P6305628695809832687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099583 (2 * n)

end

end A125962.P6305628695809832687

namespace A125962

/-- `5*A099583(2*n)` -/
def P6305628695809832687.Spec : Prop :=
  ∀ n, P6305628695809832687.a n = A125962 n

end A125962

/-! ## A125962.P8140787000815558301

`5*A152298(2*n)`
-/

namespace A125962.P8140787000815558301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A152298 (2 * n)

end

end A125962.P8140787000815558301

namespace A125962

/-- `5*A152298(2*n)` -/
def P8140787000815558301.Spec : Prop :=
  ∀ n, P8140787000815558301.a n = A125962 n

end A125962

/-! ## A125962.P4356047498486250649

`5/4*A191681(n)`
-/

namespace A125962.P4356047498486250649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A191681 n : ℚ)

end

end A125962.P4356047498486250649

namespace A125962

/-- `5/4*A191681(n)` -/
def P4356047498486250649.Spec : Prop :=
  ∀ n, P4356047498486250649.a n = (A125962 n : ℚ)

end A125962

/-! ## A125962.P856583005502188008

`A153773(Δ[n²])-1`
-/

namespace A125962.P856583005502188008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A125962.P856583005502188008

namespace A125962

/-- `A153773(Δ[n²])-1` -/
def P856583005502188008.Spec : Prop :=
  ∀ n, P856583005502188008.a n = A125962 n

end A125962

/-! ## A125962.P15381920841467367238

`5/2*A125857(n+1)`
-/

namespace A125962.P15381920841467367238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A125857 (n + 1) : ℚ)

end

end A125962.P15381920841467367238

namespace A125962

/-- `5/2*A125857(n+1)` -/
def P15381920841467367238.Spec : Prop :=
  ∀ n, P15381920841467367238.a n = (A125962 n : ℚ)

end A125962

/-! ## A125962.P9842176045037038593

`A104522(2*n)-(n+1)`
-/

namespace A125962.P9842176045037038593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104522 (2 * n) - (n + 1 : ℤ)

end

end A125962.P9842176045037038593

namespace A125962

/-- `A104522(2*n)-(n+1)` -/
def P9842176045037038593.Spec : Prop :=
  ∀ n, P9842176045037038593.a n = A125962 n

end A125962

/-! ## A125962.P13597251191152712334

`A191681(n)+A002452(n)`
-/

namespace A125962.P13597251191152712334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + A002452 n

end

end A125962.P13597251191152712334

namespace A125962

/-- `A191681(n)+A002452(n)` -/
def P13597251191152712334.Spec : Prop :=
  ∀ n, P13597251191152712334.a n = A125962 n

end A125962

/-! ## A125962.P11383706380665134603

`A006342(2*n)+A015518(2*n)-1`
-/

namespace A125962.P11383706380665134603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * n) + (A015518 (2 * n) - 1)

end

end A125962.P11383706380665134603

namespace A125962

/-- `A006342(2*n)+A015518(2*n)-1` -/
def P11383706380665134603.Spec : Prop :=
  ∀ n, P11383706380665134603.a n = A125962 n

end A125962

/-! ## A125962.P12717005671576599923

`A015518(2*n)+A039300(2*n)-1`
-/

namespace A125962.P12717005671576599923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * n) + (A039300 (2 * n) - 1)

end

end A125962.P12717005671576599923

namespace A125962

/-- `A015518(2*n)+A039300(2*n)-1` -/
def P12717005671576599923.Spec : Prop :=
  ∀ n, P12717005671576599923.a n = A125962 n

end A125962

/-! ## A125962.P1617837924343592864

`A111277(2*n)+A183119(2*n)-1`
-/

namespace A125962.P1617837924343592864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 (2 * n) + (A183119 (2 * n) - 1)

end

end A125962.P1617837924343592864

namespace A125962

/-- `A111277(2*n)+A183119(2*n)-1` -/
def P1617837924343592864.Spec : Prop :=
  ∀ n, P1617837924343592864.a n = A125962 n

end A125962

/-!
# A125964: Numbers k such that k^3 + k^2 + k - 1 is prime.

The programs for A125964, there is no canonical definition to state claims against.
-/

/-! ## A125964.P4404220074211146582

`floor(root(A156018(n+1), 3))`
-/

namespace A125964.P4404220074211146582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156018 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A125964.P4404220074211146582

/-! ## A125964.P6668910754996891119

`A000027(round(root(A156018(n+1), 3)))`
-/

namespace A125964.P6668910754996891119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A156018 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A125964.P6668910754996891119

/-! ## A125964.P3095304237594884771

`round(root(A156018(n+1), 3))%A153976(n)`
-/

namespace A125964.P3095304237594884771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156018 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A153976 n)

end

end A125964.P3095304237594884771

/-! ## A125964.P1402832800502251659

`ceil(root(A156018(n+1), 3)-A000034(n)/2)`
-/

namespace A125964.P1402832800502251659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156018 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) - ((A000034 n : ℚ) / 2 : ℝ)⌉

end

end A125964.P1402832800502251659

/-! ## A125964.P14329383967693075558

`A008611(round(3*root(A156018(n+1), 3)))`
-/

namespace A125964.P14329383967693075558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway (3 * (A156018 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A125964.P14329383967693075558

/-!
# A125965: Numbers k for which k^8+k^7-1 is prime.

The programs for A125965, there is no canonical definition to state claims against.
-/

/-! ## A125965.P13934240914208309662

`A293442(A316796(2*n+3)+A105588(n))+n`
-/

namespace A125965.P13934240914208309662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A316796 (2 * n + 3) + A105588 n).toNat + (n : ℤ)

end

end A125965.P13934240914208309662

/-!
# A125972: Numbers k for which k^15+k^14-1 is prime.

The programs for A125972, there is no canonical definition to state claims against.
-/

/-! ## A125972.P650776277719946153

`A318978(A260793(n+1))+A000120(n)`
-/

namespace A125972.P650776277719946153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (A260793 (n + 1)).toNat + A000120 n

end

end A125972.P650776277719946153

/-!
# A125975: Integers i, for which A125974(A125974(i)) = i.

The programs for A125975, there is no canonical definition to state claims against.
-/

/-! ## A125975.P15275067998998128305

`eq[A007318(A064658(n+2)), A064661(n+4)]`
-/

namespace A125975.P15275067998998128305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A064658 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064661 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125975.P15275067998998128305

/-!
# A125976: Signature-permutation of Kreweras' 1970 involution on Dyck paths.

The programs for A125976, there is no canonical definition to state claims against.
-/

/-! ## A125976.P16608457465194138832

`A057163(A125977(n))`
-/

namespace A125976.P16608457465194138832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125977 n).toNat

end

end A125976.P16608457465194138832

/-! ## A125976.P8538718886533695245

`A069772(A126313(n))`
-/

namespace A125976.P8538718886533695245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A126313 n).toNat

end

end A125976.P8538718886533695245

/-! ## A125976.P71017948735599690

`A069771(A126315(n))`
-/

namespace A125976.P71017948735599690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A126315 n).toNat

end

end A125976.P71017948735599690

/-! ## A125976.P3741927341713466990

`A057505(A125977(A057164(n)))`
-/

namespace A125976.P3741927341713466990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125977 (A057164 n).toNat).toNat

end

end A125976.P3741927341713466990

/-! ## A125976.P2050868633436629374

`A057164(A125979(n))`
-/

namespace A125976.P2050868633436629374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A125979 n).toNat

end

end A125976.P2050868633436629374

/-! ## A125976.P14491592882319863611

`A126314(A069772(n))`
-/

namespace A125976.P14491592882319863611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 (A069772 n).toNat

end

end A125976.P14491592882319863611

/-! ## A125976.P9245316260071723051

`A126314(A057164(A069771(n)))`
-/

namespace A125976.P9245316260071723051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 (A057164 (A069771 n).toNat).toNat

end

end A125976.P9245316260071723051

/-! ## A125976.P14080180995234972627

`A126314(A069888(A069771(A057501(n))))`
-/

namespace A125976.P14080180995234972627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 (A069888 (A069771 (A057501 n).toNat).toNat).toNat

end

end A125976.P14080180995234972627

/-! ## A125976.P17952762311764285493

`A126314(A069771(A057501(A069889(n))))`
-/

namespace A125976.P17952762311764285493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 (A069771 (A057501 (A069889 n).toNat).toNat).toNat

end

end A125976.P17952762311764285493

/-! ## A125976.P9121296685134984982

`A057505(A125977(A126315(A126314(n))))`
-/

namespace A125976.P9121296685134984982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125977 (A126315 (A126314 n).toNat).toNat).toNat

end

end A125976.P9121296685134984982

/-!
# A125977: Signature-permutation of a Catalan automorphism: composition of A057163 and A125976.

The programs for A125977, there is no canonical definition to state claims against.
-/

/-! ## A125977.P14276463016053427050

`A057163(A125976(n))`
-/

namespace A125977.P14276463016053427050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125976 n).toNat

end

end A125977.P14276463016053427050

/-! ## A125977.P16788471902786414821

`A057506(A125976(A057164(n)))`
-/

namespace A125977.P16788471902786414821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A125976 (A057164 n).toNat).toNat

end

end A125977.P16788471902786414821

/-! ## A125977.P16520368521922398387

`A057506(A125979(n))`
-/

namespace A125977.P16520368521922398387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A125979 n).toNat

end

end A125977.P16520368521922398387

/-! ## A125977.P16260845477436687009

`A071661(A125978(A071661(A125978(A071661(n)))))`
-/

namespace A125977.P16260845477436687009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A125978 (A071661 (A125978 (A071661 n).toNat).toNat).toNat).toNat

end

end A125977.P16260845477436687009

/-! ## A125977.P17890141398363387973

`A057163(A126313(A125978(A057163(A126313(n)))))`
-/

namespace A125977.P17890141398363387973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A126313 (A125978 (A057163 (A126313 n).toNat).toNat).toNat).toNat

end

end A125977.P17890141398363387973

/-! ## A125977.P13949036104235492271

`A057163(A126316(A125978(A057163(A126316(n)))))`
-/

namespace A125977.P13949036104235492271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A126316 (A125978 (A057163 (A126316 n).toNat).toNat).toNat).toNat

end

end A125977.P13949036104235492271

/-! ## A125977.P10797837597483523204

`A125980(A057163(n))`
-/

namespace A125977.P10797837597483523204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125980 (A057163 n).toNat

end

end A125977.P10797837597483523204

/-! ## A125977.P17501303217136301683

`A057506(A125978(A057506(n)))`
-/

namespace A125977.P17501303217136301683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A125978 (A057506 n).toNat).toNat

end

end A125977.P17501303217136301683

/-! ## A125977.P6829753950360263414

`A125980(A071662(A126320(n)))`
-/

namespace A125977.P6829753950360263414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125980 (A071662 (A126320 n).toNat).toNat

end

end A125977.P6829753950360263414

/-! ## A125977.P16673653146014289804

`A125980(A125976(A125978(n)))`
-/

namespace A125977.P16673653146014289804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125980 (A125976 (A125978 n).toNat).toNat

end

end A125977.P16673653146014289804

/-!
# A125978: Signature-permutation of a Catalan automorphism: composition of A125976 and A057163.

The programs for A125978, there is no canonical definition to state claims against.
-/

/-! ## A125978.P10046442460087880466

`A125976(A057163(n))`
-/

namespace A125978.P10046442460087880466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057163 n).toNat

end

end A125978.P10046442460087880466

/-! ## A125978.P14564473728306016206

`A125976(A057506(A057164(n)))`
-/

namespace A125978.P14564473728306016206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057506 (A057164 n).toNat).toNat

end

end A125978.P14564473728306016206

/-! ## A125978.P8626453958164178404

`A125976(A057164(A057505(n)))`
-/

namespace A125978.P8626453958164178404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057164 (A057505 n).toNat).toNat

end

end A125978.P8626453958164178404

/-! ## A125978.P10329310132758504699

`A125976(A125977(A125976(n)))`
-/

namespace A125978.P10329310132758504699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A125977 (A125976 n).toNat).toNat

end

end A125978.P10329310132758504699

/-! ## A125978.P15832273375314420855

`A057505(A125977(A057505(2*n-n)))`
-/

namespace A125978.P15832273375314420855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125977 (A057505 (2 * n - n)).toNat).toNat

end

end A125978.P15832273375314420855

/-! ## A125978.P13074300419995535821

`A125976(A071663(A057164(A071665(n))))`
-/

namespace A125978.P13074300419995535821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A071663 (A057164 (A071665 n).toNat).toNat).toNat

end

end A125978.P13074300419995535821

/-! ## A125978.P5169634973173958116

`A071669(A125977(A071662(A071662(n))))`
-/

namespace A125978.P5169634973173958116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A125977 (A071662 (A071662 n).toNat).toNat).toNat

end

end A125978.P5169634973173958116

/-! ## A125978.P2569439084990119064

`A057163(A125977(A057163(n)*A057427(n)))`
-/

namespace A125978.P2569439084990119064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125977 (A057163 n * A057427 n).toNat).toNat

end

end A125978.P2569439084990119064

/-! ## A125978.P15424750044383292177

`A057163(A125977(A071666(A057163(A071666(n)))))`
-/

namespace A125978.P15424750044383292177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125977 (A071666 (A057163 (A071666 n).toNat).toNat).toNat).toNat

end

end A125978.P15424750044383292177

/-! ## A125978.P9170997419031751820

`A071662(A071662(A125977(A071665(A071661(n)))))`
-/

namespace A125978.P9170997419031751820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (A071662 (A125977 (A071665 (A071661 n).toNat).toNat).toNat).toNat

end

end A125978.P9170997419031751820

/-!
# A125979: Signature-permutation of a Catalan automorphism: composition of A125976 and A057164.

The programs for A125979, there is no canonical definition to state claims against.
-/

/-! ## A125979.P13471519348824102827

`A125976(A057164(n))`
-/

namespace A125979.P13471519348824102827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057164 n).toNat

end

end A125979.P13471519348824102827

/-! ## A125979.P394570765523846835

`A057505(A125977(n))`
-/

namespace A125979.P394570765523846835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125977 n).toNat

end

end A125979.P394570765523846835

/-! ## A125979.P18107428789169012531

`A126316(A069772(n))`
-/

namespace A125979.P18107428789169012531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126316 (A069772 n).toNat

end

end A125979.P18107428789169012531

/-! ## A125979.P286184592370143699

`A069771(A126313(n))`
-/

namespace A125979.P286184592370143699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A126313 n).toNat

end

end A125979.P286184592370143699

/-! ## A125979.P1749460665547241959

`A069772(A126315(n))`
-/

namespace A125979.P1749460665547241959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A126315 n).toNat

end

end A125979.P1749460665547241959

/-! ## A125979.P10432767400677908316

`A125976(A057505(A057163(n)))`
-/

namespace A125979.P10432767400677908316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057505 (A057163 n).toNat).toNat

end

end A125979.P10432767400677908316

/-! ## A125979.P5784498396712468729

`A125976(A057163(A057506(n)))`
-/

namespace A125979.P5784498396712468729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057163 (A057506 n).toNat).toNat

end

end A125979.P5784498396712468729

/-! ## A125979.P17684102072074908314

`A125976(A057502(A069888(n)))`
-/

namespace A125979.P17684102072074908314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057502 (A069888 n).toNat).toNat

end

end A125979.P17684102072074908314

/-! ## A125979.P2490650814513000067

`A125976(A057501(A069889(n)))`
-/

namespace A125979.P2490650814513000067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A057501 (A069889 n).toNat).toNat

end

end A125979.P2490650814513000067

/-! ## A125979.P1952952092977299354

`A125976(A069772(A069771(n)))`
-/

namespace A125979.P1952952092977299354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069772 (A069771 n).toNat).toNat

end

end A125979.P1952952092977299354

/-!
# A125980: Signature-permutation of a Catalan automorphism: A057163-conjugate of A125976.

The programs for A125980, there is no canonical definition to state claims against.
-/

/-! ## A125980.P451652278292681482

`A125977(A057163(n))`
-/

namespace A125980.P451652278292681482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A057163 n).toNat

end

end A125980.P451652278292681482

/-! ## A125980.P9954147888994415769

`A057163(A125978(n))`
-/

namespace A125980.P9954147888994415769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125978 n).toNat

end

end A125980.P9954147888994415769

/-! ## A125980.P16136173557056166542

`A125977(A057506(A057164(n)))`
-/

namespace A125980.P16136173557056166542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A057506 (A057164 n).toNat).toNat

end

end A125980.P16136173557056166542

/-! ## A125980.P8570004955823353007

`A125977(A057164(A057505(n)))`
-/

namespace A125980.P8570004955823353007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A057164 (A057505 n).toNat).toNat

end

end A125980.P8570004955823353007

/-! ## A125980.P7437579820733192350

`A125977(A125977(A125976(n)))`
-/

namespace A125980.P7437579820733192350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A125977 (A125976 n).toNat).toNat

end

end A125980.P7437579820733192350

/-! ## A125980.P4277403424278699810

`A057164(A057505(A125978(2*n-n)))`
-/

namespace A125980.P4277403424278699810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 (A125978 (2 * n - n)).toNat).toNat

end

end A125980.P4277403424278699810

/-! ## A125980.P10404555897416085667

`A057506(A125976(A057505(2*n-n)))`
-/

namespace A125980.P10404555897416085667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A125976 (A057505 (2 * n - n)).toNat).toNat

end

end A125980.P10404555897416085667

/-! ## A125980.P13773084028992436594

`A057506(A125978(A057164(A071661(n))))`
-/

namespace A125980.P13773084028992436594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A125978 (A057164 (A071661 n).toNat).toNat).toNat

end

end A125980.P13773084028992436594

/-! ## A125980.P1296785017723971325

`A125977(A125977(A126314(A069772(n))))`
-/

namespace A125980.P1296785017723971325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A125977 (A126314 (A069772 n).toNat).toNat).toNat

end

end A125980.P1296785017723971325

/-! ## A125980.P2240349793516961920

`A125977(A125977(A069772(A126313(n))))`
-/

namespace A125980.P2240349793516961920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A125977 (A069772 (A126313 n).toNat).toNat).toNat

end

end A125980.P2240349793516961920

/-!
# A125981: Signature-permutation of Deutsch's 2000 bijection on ordered trees.

The programs for A125981, there is no canonical definition to state claims against.
-/

/-! ## A125981.P4541244526657450114

`A085170(A057505(n))`
-/

namespace A125981.P4541244526657450114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A057505 n).toNat

end

end A125981.P4541244526657450114

/-! ## A125981.P17294711023449524795

`A074683(A085171(n))`
-/

namespace A125981.P17294711023449524795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085171 n).toNat

end

end A125981.P17294711023449524795

/-! ## A125981.P6181682184316498610

`A130922(A057164(n))`
-/

namespace A125981.P6181682184316498610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A057164 n).toNat

end

end A125981.P6181682184316498610

/-! ## A125981.P6449017909147640631

`A130922(A057505(A057163(n)))`
-/

namespace A125981.P6449017909147640631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A057505 (A057163 n).toNat).toNat

end

end A125981.P6449017909147640631

/-! ## A125981.P11838706943080830982

`A130922(A130922(A074684(n)))`
-/

namespace A125981.P11838706943080830982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A130922 (A074684 n).toNat).toNat

end

end A125981.P11838706943080830982

/-! ## A125981.P4932425225480832594

`A130922(A074683(A130921(n)))`
-/

namespace A125981.P4932425225480832594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A074683 (A130921 n).toNat).toNat

end

end A125981.P4932425225480832594

/-! ## A125981.P15252794278093939376

`A057164(A086426(n))`
-/

namespace A125981.P15252794278093939376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086426 n).toNat

end

end A125981.P15252794278093939376

/-! ## A125981.P3593527110486298509

`A082332(A125983(n))`
-/

namespace A125981.P3593527110486298509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A125983 n).toNat

end

end A125981.P3593527110486298509

/-! ## A125981.P11874944274278674447

`A122302(A125982(A122302(n)))`
-/

namespace A125981.P11874944274278674447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122302 (A125982 (A122302 n).toNat).toNat

end

end A125981.P11874944274278674447

/-! ## A125981.P12640499216923972721

`A074683(A130921(A086426(2*n-n)))`
-/

namespace A125981.P12640499216923972721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A130921 (A086426 (2 * n - n)).toNat).toNat

end

end A125981.P12640499216923972721

/-!
# A125982: Signature-permutation of the inverse of Deutsch's 2000 bijection on ordered trees.

The programs for A125982, there is no canonical definition to state claims against.
-/

/-! ## A125982.P17862125221348666912

`A057506(A085169(n))`
-/

namespace A125982.P17862125221348666912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A085169 n).toNat

end

end A125982.P17862125221348666912

/-! ## A125982.P9144622154687720938

`A085172(A074684(n))`
-/

namespace A125982.P9144622154687720938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A074684 n).toNat

end

end A125982.P9144622154687720938

/-! ## A125982.P4667055002620057280

`A057164(A130921(n))`
-/

namespace A125982.P4667055002620057280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130921 n).toNat

end

end A125982.P4667055002620057280

/-! ## A125982.P3476996661953286015

`A127292(A127289(A074684(A127292(A127289(n)))))`
-/

namespace A125982.P3476996661953286015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A074684 (A127292 (A127289 n).toNat).toNat).toNat).toNat

end

end A125982.P3476996661953286015

/-! ## A125982.P12592171899623176981

`A086425(A057164(n))`
-/

namespace A125982.P12592171899623176981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A057164 n).toNat

end

end A125982.P12592171899623176981

/-! ## A125982.P14514080442057087139

`A086425(A074684(A086426(n)))`
-/

namespace A125982.P14514080442057087139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A074684 (A086426 n).toNat).toNat

end

end A125982.P14514080442057087139

/-! ## A125982.P3326230953540911395

`A122301(A125981(A122301(n)))`
-/

namespace A125982.P3326230953540911395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A125981 (A122301 n).toNat).toNat

end

end A125982.P3326230953540911395

/-! ## A125982.P9134341582527146255

`A086431(A086425(n))`
-/

namespace A125982.P9134341582527146255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086425 n).toNat

end

end A125982.P9134341582527146255

/-! ## A125982.P6632494607045814107

`A125984(A082331(n))`
-/

namespace A125982.P6632494607045814107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125984 (A082331 n).toNat

end

end A125982.P6632494607045814107

/-! ## A125982.P6089307965589850885

`A057163(A125984(A057163(n)))`
-/

namespace A125982.P6089307965589850885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125984 (A057163 n).toNat).toNat

end

end A125982.P6089307965589850885

/-!
# A125983: Signature-permutation of a Catalan automorphism: A057163-conjugate of A125981.

The programs for A125983, there is no canonical definition to state claims against.
-/

/-! ## A125983.P13123693883615054147

`A082331(A125981(n))`
-/

namespace A125983.P13123693883615054147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A125981 n).toNat

end

end A125983.P13123693883615054147

/-! ## A125983.P16675723142568291500

`A057163(A125981(A057163(n)))`
-/

namespace A125983.P16675723142568291500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125981 (A057163 n).toNat).toNat

end

end A125983.P16675723142568291500

/-! ## A125983.P12715120229083463349

`A057163(A130922(A057505(n)))`
-/

namespace A125983.P12715120229083463349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130922 (A057505 n).toNat).toNat

end

end A125983.P12715120229083463349

/-! ## A125983.P15350630419590152441

`A086431(A086427(A057501(A086426(n))))`
-/

namespace A125983.P15350630419590152441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A057501 (A086426 n).toNat).toNat).toNat

end

end A125983.P15350630419590152441

/-! ## A125983.P1634418219182500497

`A086431(A086427(A086426(A086427(n))))`
-/

namespace A125983.P1634418219182500497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A086426 (A086427 n).toNat).toNat).toNat

end

end A125983.P1634418219182500497

/-! ## A125983.P11995077156038176527

`A086428(A086431(A086426(A086429(A086428(n)))))`
-/

namespace A125983.P11995077156038176527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086431 (A086426 (A086429 (A086428 n).toNat).toNat).toNat).toNat

end

end A125983.P11995077156038176527

/-!
# A125984: Signature-permutation of a Catalan automorphism: A057163-conjugate of A125982.

The programs for A125984, there is no canonical definition to state claims against.
-/

/-! ## A125984.P12175341732915705515

`A125982(A082332(n))`
-/

namespace A125984.P12175341732915705515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A082332 n).toNat

end

end A125984.P12175341732915705515

/-! ## A125984.P11859105388756607101

`A057163(A125982(A057163(n)))`
-/

namespace A125984.P11859105388756607101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A125982 (A057163 n).toNat).toNat

end

end A125984.P11859105388756607101

/-! ## A125984.P12223807158971275599

`A125982(A057501(A057505(n)))`
-/

namespace A125984.P12223807158971275599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A057501 (A057505 n).toNat).toNat

end

end A125984.P12223807158971275599

/-! ## A125984.P10585115046210218687

`A086428(A086425(A086431(A086427(n))))`
-/

namespace A125984.P10585115046210218687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086425 (A086431 (A086427 n).toNat).toNat).toNat

end

end A125984.P10585115046210218687

/-! ## A125984.P7769874890462092642

`A086428(A086425(A086428(A086431(n))))`
-/

namespace A125984.P7769874890462092642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086425 (A086428 (A086431 n).toNat).toNat).toNat

end

end A125984.P7769874890462092642

/-!
# A125985: Signature-permutation of Vaillé's 1997 bijection on 'bridges' (Dyck paths).

The programs for A125985, there is no canonical definition to state claims against.
-/

/-! ## A125985.P4402395831803979977

`A125986(A125987(n))`
-/

namespace A125985.P4402395831803979977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125986 (A125987 n).toNat

end

end A125985.P4402395831803979977

/-! ## A125985.P2312110115592021826

`A072088(A057505(n))`
-/

namespace A125985.P2312110115592021826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A057505 n).toNat

end

end A125985.P2312110115592021826

/-! ## A125985.P3526933146751566168

`A072088(A057164(A057163(n)))`
-/

namespace A125985.P3526933146751566168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A057164 (A057163 n).toNat).toNat

end

end A125985.P3526933146751566168

/-! ## A125985.P16459387624599199116

`A131007(A057117(n)%A080312(2*n+3))`
-/

namespace A125985.P16459387624599199116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131007 (Int.tmod (A057117 n) (A080312 (2 * n + 3))).toNat

end

end A125985.P16459387624599199116

/-!
# A125986: Signature-permutation of the inverse of Vaillé's 1997 bijection on Dyck paths.

The programs for A125986, there is no canonical definition to state claims against.
-/

/-! ## A125986.P13836854416493706456

`A057506(A072089(n))`
-/

namespace A125986.P13836854416493706456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A072089 n).toNat

end

end A125986.P13836854416493706456

/-! ## A125986.P15841709163241030370

`A057163(A057164(A072089(n))%A057548(n))`
-/

namespace A125986.P15841709163241030370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (Int.tmod (A057164 (A072089 n).toNat) (A057548 n)).toNat

end

end A125986.P15841709163241030370

/-! ## A125986.P1661852868145079470

`A057163(A057164(A072089(n)%A072795(n)))`
-/

namespace A125986.P1661852868145079470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057164 (Int.tmod (A072089 n) (A072795 n)).toNat).toNat

end

end A125986.P1661852868145079470

/-! ## A125986.P4931689120948004667

`A125985(A125988(n))`
-/

namespace A125986.P4931689120948004667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125985 (A125988 n).toNat

end

end A125986.P4931689120948004667

/-! ## A125986.P5642763944037798042

`A057506(A072088(n)%A330811(n))`
-/

namespace A125986.P5642763944037798042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (Int.tmod (A072088 n) (A330811 n)).toNat

end

end A125986.P5642763944037798042

/-!
# A125987: Signature-permutation of the square of Vaillé's 1997 bijection on Dyck paths.

The programs for A125987, there is no canonical definition to state claims against.
-/

/-! ## A125987.P15537861925856481764

`A125985(A125985(n))`
-/

namespace A125987.P15537861925856481764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125985 (A125985 n).toNat

end

end A125987.P15537861925856481764

/-! ## A125987.P4165313650425236119

`A072088(A071661(n)%A080292(n))`
-/

namespace A125987.P4165313650425236119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (Int.tmod (A071661 n) (A080292 n)).toNat

end

end A125987.P4165313650425236119

/-! ## A125987.P13936782075596364783

`A072088(A071666(n)%A080292(n))`
-/

namespace A125987.P13936782075596364783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (Int.tmod (A071666 n) (A080292 n)).toNat

end

end A125987.P13936782075596364783

/-! ## A125987.P11927655714665769003

`A072088(A125977(n)%A080292(n))`
-/

namespace A125987.P11927655714665769003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (Int.tmod (A125977 n) (A080292 n)).toNat

end

end A125987.P11927655714665769003

/-!
# A125988: Signature-permutation of the square of A125986.

The programs for A125988, there is no canonical definition to state claims against.
-/

/-! ## A125988.P10818497752955069350

`A125986(A125986(n))`
-/

namespace A125988.P10818497752955069350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125986 (A125986 n).toNat

end

end A125988.P10818497752955069350

/-! ## A125988.P13124407439135936096

`A073199(n)+A025469(A008862(n))`
-/

namespace A125988.P13124407439135936096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073199 n + A025469 (A008862 n).toNat

end

end A125988.P13124407439135936096

/-! ## A125988.P13577418755527025665

`A254379(A005043(n))+A073199(n)`
-/

namespace A125988.P13577418755527025665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A005043 n).toNat + A073199 n

end

end A125988.P13577418755527025665

/-! ## A125988.P1738335679230357425

`A366123(A366141(n))+A073199(n)`
-/

namespace A125988.P1738335679230357425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 (A366141 n).toNat + A073199 n

end

end A125988.P1738335679230357425

/-! ## A125988.P16457444264731686729

`A366123(A366107(n+5))+A073199(n)`
-/

namespace A125988.P16457444264731686729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 (A366107 (n + 5)).toNat + A073199 n

end

end A125988.P16457444264731686729

/-!
# A125989: Sum of heights of 10's in binary expansion of n.

The programs for A125989, there is no canonical definition to state claims against.
-/

/-! ## A125989.P4058027276823964474

`A023416(n)-a(A035327(n))` with `a(0)=0`
-/

namespace A125989.P4058027276823964474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023416 n - a (A035327 n).toNat

end

end A125989.P4058027276823964474

/-! ## A125989.P15154951443460757562

`A080791(n)-a(A035327(n))` with `a(0)=0`
-/

namespace A125989.P15154951443460757562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080791 n - a (A035327 n).toNat

end

end A125989.P15154951443460757562

/-! ## A125989.P852107225522226067

`A286552(n)-A003557(A022169(n))`
-/

namespace A125989.P852107225522226067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n - A003557 (A022169 n).toNat

end

end A125989.P852107225522226067

/-! ## A125989.P16601799878070758828

`A286552(n)-A124778(A046741(n))`
-/

namespace A125989.P16601799878070758828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n - A124778 (A046741 n).toNat

end

end A125989.P16601799878070758828

/-! ## A125989.P12262060518860644505

`A286552(n)-A167230(A022166(n))`
-/

namespace A125989.P12262060518860644505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n - A167230 (A022166 n).toNat

end

end A125989.P12262060518860644505

/-!
# A125991: A106486-encodings of combinatorial games with zero value.

The programs for A125991, there is no canonical definition to state claims against.
-/

/-! ## A125991.P1630768271237809343

`A079599(eq[n, and(9, n)+n])`
-/

namespace A125991.P1630768271237809343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 9 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125991.P1630768271237809343

/-! ## A125991.P15843279721772434726

`A079599(record[and(4, n)+n]+and(n, -4)+n)`
-/

namespace A125991.P15843279721772434726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + (Int.land (n : ℤ) (-4) + (n : ℤ))).toNat

end

end A125991.P15843279721772434726

/-! ## A125991.P9642714465870140526

`A079599(2*n-and(3, n)+and(n, -4)+n)`
-/

namespace A125991.P9642714465870140526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 ((2 * n : ℤ) - (Nat.land 3 n : ℤ) + (Int.land (n : ℤ) (-4) + (n : ℤ))).toNat

end

end A125991.P9642714465870140526

/-! ## A125991.P15434437569999166789

`A079599(or(3, n)-3+n+and(n, -4)+n)`
-/

namespace A125991.P15434437569999166789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 ((Nat.lor 3 n : ℤ) - 3 + (n : ℤ) + (Int.land (n : ℤ) (-4) + (n : ℤ))).toNat

end

end A125991.P15434437569999166789

/-! ## A125991.P9060275199151018259

`A079599(xor(3, or(3, n))+n+and(n, -4)+n)`
-/

namespace A125991.P9060275199151018259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 ((Nat.xor 3 (Nat.lor 3 n) + n : ℤ) + (Int.land (n : ℤ) (-4) + (n : ℤ))).toNat

end

end A125991.P9060275199151018259

/-!
# A125992: A106486-encodings of combinatorial games with value 1.

The programs for A125992, there is no canonical definition to state claims against.
-/

/-! ## A125992.P9446602145481140983

`A125997(n+1)-8`
-/

namespace A125992.P9446602145481140983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125997 (n + 1) - 8

end

end A125992.P9446602145481140983

/-! ## A125992.P12883438139407681711

`xor(8, A125997(A000027(n+1)))`
-/

namespace A125992.P12883438139407681711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A125997 (A000027 (n + 1)).toNat)

end

end A125992.P12883438139407681711

/-! ## A125992.P11387017960489009527

`A000265(xor(8, A125997(n+1)))`
-/

namespace A125992.P11387017960489009527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 8 (A125997 (n + 1))).toNat

end

end A125992.P11387017960489009527

/-! ## A125992.P12590680053685925550

`A009001(xor(8, A125997(n+1)))`
-/

namespace A125992.P12590680053685925550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (Int.xor 8 (A125997 (n + 1))).toNat

end

end A125992.P12590680053685925550

/-! ## A125992.P5368801602066640949

`A093178(xor(8, A125997(n+1)))`
-/

namespace A125992.P5368801602066640949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.xor 8 (A125997 (n + 1))).toNat

end

end A125992.P5368801602066640949

/-!
# A125993: A106486-encodings of combinatorial games with value -1.

The programs for A125993, there is no canonical definition to state claims against.
-/

/-! ## A125993.P12385546642686858927

`A062880(record[or(5, n)-4])`
-/

namespace A125993.P12385546642686858927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125993.P12385546642686858927

/-! ## A125993.P10188057486167147219

`A145849(or(1, n)+n)+1`
-/

namespace A125993.P10188057486167147219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145849 (Nat.lor 1 n + n) + 1

end

end A125993.P10188057486167147219

/-! ## A125993.P1999732708342952924

`A062880(xor(1, 3*n)+n)`
-/

namespace A125993.P1999732708342952924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (Nat.xor 1 (3 * n) + n)

end

end A125993.P1999732708342952924

/-! ## A125993.P17847615904471927497

`A062880(eq[n+3, xor(5, n)])`
-/

namespace A125993.P17847615904471927497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125993.P17847615904471927497

/-! ## A125993.P7540639005694895626

`A062880(2*comp[or(2, n)]+1)`
-/

namespace A125993.P7540639005694895626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A125993.P7540639005694895626

/-!
# A125994: A106486-encodings of combinatorial games equivalent to game {0|0}.

The programs for A125994, there is no canonical definition to state claims against.
-/

/-! ## A125994.P15400070881648810335

`A125991(A126007(n)+1)+3`
-/

namespace A125994.P15400070881648810335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125991 (A126007 n + 1).toNat + 3

end

end A125994.P15400070881648810335

/-! ## A125994.P2066681114667669512

`A126000(∑[n+3]+7)`
-/

namespace A125994.P2066681114667669512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126000 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A125994.P2066681114667669512

/-! ## A125994.P16177693287536728475

`A326685(n)+A126000(A055999(n)+10)`
-/

namespace A125994.P16177693287536728475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A126000 (A055999 n + 10).toNat

end

end A125994.P16177693287536728475

/-! ## A125994.P664328566549612385

`A338333(n)+A126000(A167614(n+2)+1)`
-/

namespace A125994.P664328566549612385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338333 n + A126000 (A167614 (n + 2) + 1).toNat

end

end A125994.P664328566549612385

/-!
# A125995: A106486-encodings of combinatorial games with value 2.

The programs for A125995, there is no canonical definition to state claims against.
-/

/-! ## A125995.P7311099365115903120

`record[A063694(A125998(n+1))]`
-/

namespace A125995.P7311099365115903120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A125998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125995.P7311099365115903120

/-!
# A125996: A106486-encodings of combinatorial games equivalent to game {1|0}.

The programs for A125996, there is no canonical definition to state claims against.
-/

/-! ## A125996.P17127247257014048867

`eq[95, or(89, n)]`
-/

namespace A125996.P17127247257014048867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  95

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 89 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125996.P17127247257014048867

/-! ## A125996.P15590141853046663250

`record[95-xor(89, n)]`
-/

namespace A125996.P15590141853046663250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  95 - (Nat.xor 89 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125996.P15590141853046663250

/-! ## A125996.P541730147372713625

`eq[6, and(38, A118759(n))]`
-/

namespace A125996.P541730147372713625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 38 (A118759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125996.P541730147372713625

/-! ## A125996.P4728958903255053062

`eq[and(89, n), A004447(n)]`
-/

namespace A125996.P4728958903255053062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 89 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125996.P4728958903255053062

/-! ## A125996.P17164215787079274902

`eq[6, A126012(n)]`
-/

namespace A125996.P17164215787079274902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125996.P17164215787079274902

/-!
# A125997: A106486-encodings of combinatorial games equivalent to game {0|1}.

The programs for A125997, there is no canonical definition to state claims against.
-/

/-! ## A125997.P16770880618998375278

`A125992(n+1)+8`
-/

namespace A125997.P16770880618998375278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125992 (n + 1) + 8

end

end A125997.P16770880618998375278

/-! ## A125997.P4613686792729877168

`or(8, A125992(ϕ²-(ϕ-n)))`
-/

namespace A125997.P4613686792729877168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A125992 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A125997.P4613686792729877168

/-! ## A125997.P11240257714094707276

`A004449(A125992(n+1))`
-/

namespace A125997.P11240257714094707276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A125992 (n + 1)).toNat

end

end A125997.P11240257714094707276

/-! ## A125997.P15515443592962188264

`A125998(Δ[n²])-3`
-/

namespace A125997.P15515443592962188264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A125997.P15515443592962188264

/-! ## A125997.P15080621022101672786

`record[xor(5, A125998(n+1))]`
-/

namespace A125997.P15080621022101672786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A125998 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125997.P15080621022101672786

/-!
# A125998: A106486-encodings of combinatorial games equivalent to game {1|1}.

The programs for A125998, there is no canonical definition to state claims against.
-/

/-! ## A125998.P6045737836003452451

`record[xor(10, A125996(n+1))]`
-/

namespace A125998.P6045737836003452451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A125996 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125998.P6045737836003452451

/-! ## A125998.P11365156814116196016

`A125996(or(1, n)+n)+6`
-/

namespace A125998.P11365156814116196016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125996 (Nat.lor 1 n + n) + 6

end

end A125998.P11365156814116196016

/-! ## A125998.P4975288453123704895

`A037462(eq[95, or(89, n)])+2`
-/

namespace A125998.P4975288453123704895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  95

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 89 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 2

end

end A125998.P4975288453123704895

/-! ## A125998.P15246490354094955626

`A004447(A037462(eq[95, or(89, n)]))`
-/

namespace A125998.P15246490354094955626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  95

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 89 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (A037462 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A125998.P15246490354094955626

/-! ## A125998.P12748475202666667168

`A125996(A126001(n+1)+1)+6`
-/

namespace A125998.P12748475202666667168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125996 (A126001 (n + 1) + 1).toNat + 6

end

end A125998.P12748475202666667168

/-!
# A125999: Square array A(g,h) = 1 if combinatorial game g has value greater than or equal to that of game h, otherwise 0, listed antidiagonally in order A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ...

The programs for A125999, there is no canonical definition to state claims against.
-/

/-! ## A125999.P11534964547965706934

`A323621(A349079(n+1))%2`
-/

namespace A125999.P11534964547965706934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323621 (A349079 (n + 1)).toNat) 2

end

end A125999.P11534964547965706934

/-! ## A125999.P1149623243430050890

`A276799(A009766(n+2)*A278497(2*n+3))`
-/

namespace A125999.P1149623243430050890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276799 (A009766 (n + 2) * A278497 (2 * n + 3)).toNat

end

end A125999.P1149623243430050890

/-! ## A125999.P2099359823879282277

`A247227(∑[∑[dr(n+1)%2-n%2]])%2`
-/

namespace A125999.P2099359823879282277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) % 2 : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A125999.P2099359823879282277

/-! ## A125999.P17284676317680250368

`A189028(A159938(n+3))`
-/

namespace A125999.P17284676317680250368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A159938 (n + 3)).toNat

end

end A125999.P17284676317680250368

/-! ## A125999.P1383869453386369516

`A099076(A080697(n+1))`
-/

namespace A125999.P1383869453386369516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099076 (A080697 (n + 1)).toNat

end

end A125999.P1383869453386369516

