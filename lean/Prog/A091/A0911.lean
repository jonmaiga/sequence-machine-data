import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

/-!
# A091100: Number of Gaussian primes whose norm is less than 10^n.

The programs for A091100, there is no canonical definition to state claims against.
-/

/-! ## A091100.P2999360929117027078

`4*(A091102(n+1)+A091098(n+1))`
-/

namespace A091100.P2999360929117027078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A091102 (n + 1) + A091098 (n + 1))

end

end A091100.P2999360929117027078

/-!
# A091101: Number of first-quadrant Gaussian primes whose norm is less than 10^n.

The programs for A091101, there is no canonical definition to state claims against.
-/

/-! ## A091101.P2791517549077069187

`2*A091102(n+1)-1`
-/

namespace A091101.P2791517549077069187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091102 (n + 1) - 1

end

end A091101.P2791517549077069187

/-! ## A091101.P9730126826067335649

`-A000213(n)%2+2*A091102(n+1)`
-/

namespace A091101.P9730126826067335649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A000213 n) 2 + 2 * A091102 (n + 1)

end

end A091101.P9730126826067335649

/-! ## A091101.P13837428253146735519

`A008683(A002148(n))+2*A091102(n+1)`
-/

namespace A091101.P13837428253146735519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 2 * A091102 (n + 1)

end

end A091101.P13837428253146735519

/-! ## A091101.P15944870952434113864

`A008683(A057673(n))+2*A091102(n+1)`
-/

namespace A091101.P15944870952434113864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A057673 n).toNat + 2 * A091102 (n + 1)

end

end A091101.P15944870952434113864

/-! ## A091101.P11558663895717380685

`A008683(A120115(n+1))+2*A091102(n+1)`
-/

namespace A091101.P11558663895717380685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A120115 (n + 1)).toNat + 2 * A091102 (n + 1)

end

end A091101.P11558663895717380685

/-!
# A091102: Number of first half-quadrant Gaussian primes whose norm is less than 10^n.

The programs for A091102, there is no canonical definition to state claims against.
-/

/-! ## A091102.P16125629116199165580

`ceil(A091101(n+1)/2)`
-/

namespace A091102.P16125629116199165580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091101 (n + 1) : ℚ) / 2⌉

end

end A091102.P16125629116199165580

/-! ## A091102.P11600223801851583669

`(A091101(A080197(n+1))+1)/2`
-/

namespace A091102.P11600223801851583669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091101 (A080197 (n + 1)).toNat + 1 : ℚ) / 2

end

end A091102.P11600223801851583669

/-! ## A091102.P12095349728474316996

`round(A091101(n+1)/A076303(n+1))`
-/

namespace A091102.P12095349728474316996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A091101 (n + 1) : ℚ) / (A076303 (n + 1) : ℚ))

end

end A091102.P12095349728474316996

/-! ## A091102.P10035926288059635116

`A091100(n+1)/4-A091098(n+1)`
-/

namespace A091102.P10035926288059635116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091100 (n + 1) : ℚ) / 4 - (A091098 (n + 1) : ℚ)

end

end A091102.P10035926288059635116

/-! ## A091102.P1028622880641818711

`or((A091101(n+1)+1)/2, A000007(n))`
-/

namespace A091102.P1028622880641818711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A091101 (n + 1) + 1 : ℚ) / 2)) (A000007 n)

end

end A091102.P1028622880641818711

/-!
# A091103: Expansion of (1-3*x+12*x^2)/((1-3*x)*(1+3*x)).

The programs for A091103, the canonical program `A091103.P5619292512230306655` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091103 has offset 0).

The definition of A091103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+12x^2)/(1-9x^2))` (program `A091103.P5619292512230306655`, by `A091103.P5619292512230306655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091103.P5619292512230306655

`ogf((1-3x+12x^2)/(1-9x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091103

/-- `ogf((1-3x+12x^2)/(1-9x^2))` -/
def P5619292512230306655.Spec : Prop :=
  ∀ n, P5619292512230306655.a n = A091103 n

theorem P5619292512230306655.correct : P5619292512230306655.Spec := by
  intro n
  simp only [A091103]

end A091103

/-! ## A091103.P7163223539905576285

`9*a(n-2)` with `a(0)=1, a(1)=-3, a(2)=21`
-/

namespace A091103.P7163223539905576285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 21] fun n a =>
  9 * a (n - 2)

end

end A091103.P7163223539905576285

namespace A091103

/-- `9*a(n-2)` -/
def P7163223539905576285.Spec : Prop :=
  ∀ n, P7163223539905576285.a n = A091103 n

end A091103

/-! ## A091103.P7702755224885223867

`2*A133494(n)-A084244(n)`
-/

namespace A091103.P7702755224885223867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133494 n - A084244 n

end

end A091103.P7702755224885223867

namespace A091103

/-- `2*A133494(n)-A084244(n)` -/
def P7702755224885223867.Spec : Prop :=
  ∀ n, P7702755224885223867.a n = A091103 n

end A091103

/-! ## A091103.P5006980776568386923

`lcm(2, A025192(n))-A084244(n)`
-/

namespace A091103.P5006980776568386923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A025192 n) : ℤ) - A084244 n

end

end A091103.P5006980776568386923

namespace A091103

/-- `lcm(2, A025192(n))-A084244(n)` -/
def P5006980776568386923.Spec : Prop :=
  ∀ n, P5006980776568386923.a n = A091103 n

end A091103

/-! ## A091103.P13489523619701192292

`A025192(A000007(n)+n)-A084244(n)`
-/

namespace A091103.P13489523619701192292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A000007 n + (n : ℤ)).toNat - A084244 n

end

end A091103.P13489523619701192292

namespace A091103

/-- `A025192(A000007(n)+n)-A084244(n)` -/
def P13489523619701192292.Spec : Prop :=
  ∀ n, P13489523619701192292.a n = A091103 n

end A091103

/-! ## A091103.P7489238855635164563

`A000007(n)-(A084244(n)-A025192(n))`
-/

namespace A091103.P7489238855635164563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A084244 n - A025192 n)

end

end A091103.P7489238855635164563

namespace A091103

/-- `A000007(n)-(A084244(n)-A025192(n))` -/
def P7489238855635164563.Spec : Prop :=
  ∀ n, P7489238855635164563.a n = A091103 n

end A091103

/-! ## A091103.P6759098161585711455

`or(A025192(n)-A084244(n), A010054(n))`
-/

namespace A091103.P6759098161585711455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025192 n - A084244 n) (A010054 n)

end

end A091103.P6759098161585711455

namespace A091103

/-- `or(A025192(n)-A084244(n), A010054(n))` -/
def P6759098161585711455.Spec : Prop :=
  ∀ n, P6759098161585711455.a n = A091103 n

end A091103

/-! ## A091103.P17361384141688079278

`A000038(n)/2+A025192(n)-A084244(n)`
-/

namespace A091103.P17361384141688079278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 + (A025192 n - A084244 n : ℚ)

end

end A091103.P17361384141688079278

namespace A091103

/-- `A000038(n)/2+A025192(n)-A084244(n)` -/
def P17361384141688079278.Spec : Prop :=
  ∀ n, P17361384141688079278.a n = (A091103 n : ℚ)

end A091103

/-!
# A091104: Expansion of (1-4x+24x^2)/((1-4x)(1+4x)).

The programs for A091104, the canonical program `A091104.P6906783936717127644` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091104 has offset 0).

The definition of A091104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+24x^2)/(1-16x^2))` (program `A091104.P6906783936717127644`, by `A091104.P6906783936717127644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091104.P6906783936717127644

`ogf((1-4x+24x^2)/(1-16x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091104

/-- `ogf((1-4x+24x^2)/(1-16x^2))` -/
def P6906783936717127644.Spec : Prop :=
  ∀ n, P6906783936717127644.a n = A091104 n

theorem P6906783936717127644.correct : P6906783936717127644.Spec := by
  intro n
  simp only [A091104]

end A091104

/-! ## A091104.P11514101184236214329

`Δ[A103424(n)]*A104721(n)`
-/

namespace A091104.P11514101184236214329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A104721 n

end

end A091104.P11514101184236214329

namespace A091104

/-- `Δ[A103424(n)]*A104721(n)` -/
def P11514101184236214329.Spec : Prop :=
  ∀ n, P11514101184236214329.a n = A091104 n

end A091104

/-! ## A091104.P978748769557164139

`A009117(n)*A059855(n+1)`
-/

namespace A091104.P978748769557164139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n * A059855 (n + 1)

end

end A091104.P978748769557164139

namespace A091104

/-- `A009117(n)*A059855(n+1)` -/
def P978748769557164139.Spec : Prop :=
  ∀ n, P978748769557164139.a n = A091104 n

end A091104

/-! ## A091104.P4719034467613631603

`A007051(n)%6*A009117(n)`
-/

namespace A091104.P4719034467613631603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007051 n) 6 * A009117 n

end

end A091104.P4719034467613631603

namespace A091104

/-- `A007051(n)%6*A009117(n)` -/
def P4719034467613631603.Spec : Prop :=
  ∀ n, P4719034467613631603.a n = A091104 n

end A091104

/-! ## A091104.P16445126513860954213

`Δ[A103424(n)]*Δ[A136326(n)]`
-/

namespace A091104.P16445126513860954213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A091104.P16445126513860954213

namespace A091104

/-- `Δ[A103424(n)]*Δ[A136326(n)]` -/
def P16445126513860954213.Spec : Prop :=
  ∀ n, P16445126513860954213.a n = A091104 n

end A091104

/-!
# A091105: Expansion of (1-5x+40x^2)/((1-5x)(1+5x)).

The programs for A091105, the canonical program `A091105.P14754563747204023324` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091105 has offset 0).

The definition of A091105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+40x^2)/(1-25x^2))` (program `A091105.P14754563747204023324`, by `A091105.P14754563747204023324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091105.P14754563747204023324

`ogf((1-5x+40x^2)/(1-25x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091105

/-- `ogf((1-5x+40x^2)/(1-25x^2))` -/
def P14754563747204023324.Spec : Prop :=
  ∀ n, P14754563747204023324.a n = A091105 n

theorem P14754563747204023324.correct : P14754563747204023324.Spec := by
  intro n
  simp only [A091105]

end A091105

/-! ## A091105.P14151829385373601647

`25*a(n-2)` with `a(0)=1, a(1)=-5, a(2)=65`
-/

namespace A091105.P14151829385373601647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -5, 65] fun n a =>
  25 * a (n - 2)

end

end A091105.P14151829385373601647

namespace A091105

/-- `25*a(n-2)` -/
def P14151829385373601647.Spec : Prop :=
  ∀ n, P14151829385373601647.a n = A091105 n

end A091105

/-!
# A091106: a(0)=a(1)=-1. For n>1: a(n)=Sum(i!i^2 Stirling2[n-1,i],i=2,..,n-1).

The programs for A091106, there is no canonical definition to state claims against.
-/

/-! ## A091106.P14426616600883323667

`1/2*(A069321(n)-A000670(n))-1`
-/

namespace A091106.P14426616600883323667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A069321 n - A000670 n : ℚ) - 1

end

end A091106.P14426616600883323667

/-! ## A091106.P11184827110420024909

`A052876(n)/2-1`
-/

namespace A091106.P11184827110420024909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052876 n : ℚ) / 2 - 1

end

end A091106.P11184827110420024909

/-! ## A091106.P13433583999229756995

`A083411(A028310(n))-1`
-/

namespace A091106.P13433583999229756995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083411 (A028310 n).toNat - 1

end

end A091106.P13433583999229756995

/-! ## A091106.P16490914834350330971

`A083411(A123108(2*n))-1`
-/

namespace A091106.P16490914834350330971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083411 (A123108 (2 * n)).toNat - 1

end

end A091106.P16490914834350330971

/-! ## A091106.P13207204815380021339

`A083411(A000007(n)+n)-1`
-/

namespace A091106.P13207204815380021339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083411 (A000007 n + (n : ℤ)).toNat - 1

end

end A091106.P13207204815380021339

/-! ## A091106.P12923108123595045929

`(A005649(n)-A000629(n))/2-1`
-/

namespace A091106.P12923108123595045929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005649 n - A000629 n : ℚ) / 2 - 1

end

end A091106.P12923108123595045929

/-!
# A091107: Number of nonorientable hyperbolic 3-manifolds of cusp type 2 obtained from n ideal tetrahedra.

The programs for A091107, there is no canonical definition to state claims against.
-/

/-! ## A091107.P6067453018400505523

`ogf((-x+x^2-4x^3+5x^4-2x^5)/(-1+3x-x^2+3x^3))`
-/

namespace A091107.P6067453018400505523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 4, -5, 2] [1, -3, 1, -3] n

end

end A091107.P6067453018400505523

/-! ## A091107.P4105695183712921789

`A292617(n)-(2-char[∑[n]])`
-/

namespace A091107.P4105695183712921789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292617 n - (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A091107.P4105695183712921789

/-! ## A091107.P9128547467655416547

`Δ[A125094(n)+char[∏{p}[n, #]-1]]`
-/

namespace A091107.P9128547467655416547
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125094 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091107.P9128547467655416547

/-!
# A091108: Number of cusped orientable hyperbolic 3-manifolds obtained from n ideal tetrahedra.

The programs for A091108, there is no canonical definition to state claims against.
-/

/-! ## A091108.P14689466230920191700

`A092304(n+1)-A091145(n+1)`
-/

namespace A091108.P14689466230920191700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092304 (n + 1) - A091145 (n + 1)

end

end A091108.P14689466230920191700

/-!
# A091110: Number of editing steps (deletion, insertion, or substitution) to transform the binary representation of n into the ternary representation of n.

The programs for A091110, there is no canonical definition to state claims against.
-/

/-! ## A091110.P17324955282008493609

`A175834(A008585(n)-A307322(n+1))`
-/

namespace A091110.P17324955282008493609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (A008585 n - A307322 (n + 1)).toNat

end

end A091110.P17324955282008493609

/-!
# A091113: Nonprimes of the form 4*k+1.

The programs for A091113, the canonical program `A091113.P2066234327924851190` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091113 has offset 1).

The definition of A091113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091113.P18080496779639714964

`record[A171435(4*n+1)]`
-/

namespace A091113.P18080496779639714964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091113.P18080496779639714964

namespace A091113

/-- `record[A171435(4*n+1)]` -/
def P18080496779639714964.Spec : Prop :=
  ∀ n, P18080496779639714964.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P2066234327924851190

`4*A045751(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A091113

/-- `4*A045751(n+1)+1` -/
def P2066234327924851190.Spec : Prop :=
  ∀ n, P2066234327924851190.a n = A091113 (n + 1)

theorem P2066234327924851190.correct : P2066234327924851190.Spec := by
  intro n
  simp only [A091113, Nat.add_sub_cancel]

end A091113

/-! ## A091113.P13612970460103173195

`4*comp[A005098(n+1)]+1`
-/

namespace A091113.P13612970460103173195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091113.P13612970460103173195

namespace A091113

/-- `4*comp[A005098(n+1)]+1` -/
def P13612970460103173195.Spec : Prop :=
  ∀ n, (P13612970460103173195.a n : ℤ) = A091113 (n + 1)

end A091113

/-! ## A091113.P3581720266390825446

`4*lt[A020639(4*n+1), n+2]+1`
-/

namespace A091113.P3581720266390825446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091113.P3581720266390825446

namespace A091113

/-- `4*lt[A020639(4*n+1), n+2]+1` -/
def P3581720266390825446.Spec : Prop :=
  ∀ n, (P3581720266390825446.a n : ℤ) = A091113 (n + 1)

end A091113

/-! ## A091113.P15389861589423999238

`eq[1, A373978(n+1)]+1`
-/

namespace A091113.P15389861589423999238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091113.P15389861589423999238

namespace A091113

/-- `eq[1, A373978(n+1)]+1` -/
def P15389861589423999238.Spec : Prop :=
  ∀ n, (P15389861589423999238.a n : ℤ) = A091113 (n + 1)

end A091113

/-! ## A091113.P3139278520959752280

`A016813(comp[round(p?[2*n+2*n+1]/4)])`
-/

namespace A091113.P3139278520959752280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A091113.P3139278520959752280

namespace A091113

/-- `A016813(comp[round(p?[2*n+2*n+1]/4)])` -/
def P3139278520959752280.Spec : Prop :=
  ∀ n, P3139278520959752280.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P9746390490619340411

`A016813(A045751(n+1))`
-/

namespace A091113.P9746390490619340411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A045751 (n + 1)).toNat

end

end A091113.P9746390490619340411

namespace A091113

/-- `A016813(A045751(n+1))` -/
def P9746390490619340411.Spec : Prop :=
  ∀ n, P9746390490619340411.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P6475615127968414062

`filter[A016813(n), A005171(#)]`
-/

namespace A091113.P6475615127968414062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091113.P6475615127968414062

namespace A091113

/-- `filter[A016813(n), A005171(#)]` -/
def P6475615127968414062.Spec : Prop :=
  ∀ n, P6475615127968414062.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P4684821356085541318

`filter[A222945(n), A005171(#)]`
-/

namespace A091113.P4684821356085541318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091113.P4684821356085541318

namespace A091113

/-- `filter[A222945(n), A005171(#)]` -/
def P4684821356085541318.Spec : Prop :=
  ∀ n, P4684821356085541318.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P15717371897827328783

`filter[A016813(n), A292438(#)]`
-/

namespace A091113.P15717371897827328783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091113.P15717371897827328783

namespace A091113

/-- `filter[A016813(n), A292438(#)]` -/
def P15717371897827328783.Spec : Prop :=
  ∀ n, P15717371897827328783.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P91362434237388146

`filter[A016813(n), A373978(#)]`
-/

namespace A091113.P91362434237388146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A091113.P91362434237388146

namespace A091113

/-- `filter[A016813(n), A373978(#)]` -/
def P91362434237388146.Spec : Prop :=
  ∀ n, P91362434237388146.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P17626707842518652033

`filter[A222945(n), A292438(#)]`
-/

namespace A091113.P17626707842518652033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091113.P17626707842518652033

namespace A091113

/-- `filter[A222945(n), A292438(#)]` -/
def P17626707842518652033.Spec : Prop :=
  ∀ n, P17626707842518652033.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P13119723291210942102

`filter[A222945(n), A373978(#)]`
-/

namespace A091113.P13119723291210942102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A091113.P13119723291210942102

namespace A091113

/-- `filter[A222945(n), A373978(#)]` -/
def P13119723291210942102.Spec : Prop :=
  ∀ n, P13119723291210942102.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P12285693475726535058

`A016813(comp[lt[n+1, A020639(4*n+1)]])`
-/

namespace A091113.P12285693475726535058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091113.P12285693475726535058

namespace A091113

/-- `A016813(comp[lt[n+1, A020639(4*n+1)]])` -/
def P12285693475726535058.Spec : Prop :=
  ∀ n, P12285693475726535058.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P4960602805418795938

`A016813(comp[eq[4*n, A000010(4*n+1)]])`
-/

namespace A091113.P4960602805418795938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091113.P4960602805418795938

namespace A091113

/-- `A016813(comp[eq[4*n, A000010(4*n+1)]])` -/
def P4960602805418795938.Spec : Prop :=
  ∀ n, P4960602805418795938.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P4048168260534146632

`A016813(comp[lt[2*(n+1), A006530(4*n+1)]])`
-/

namespace A091113.P4048168260534146632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091113.P4048168260534146632

namespace A091113

/-- `A016813(comp[lt[2*(n+1), A006530(4*n+1)]])` -/
def P4048168260534146632.Spec : Prop :=
  ∀ n, P4048168260534146632.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P4567443772718304052

`filter[A079523(n+1), A373978(#)]`
-/

namespace A091113.P4567443772718304052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A091113.P4567443772718304052

namespace A091113

/-- `filter[A079523(n+1), A373978(#)]` -/
def P4567443772718304052.Spec : Prop :=
  ∀ n, P4567443772718304052.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P9949392247476836547

`filter[A277549(n+1), A373978(#)]`
-/

namespace A091113.P9949392247476836547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A091113.P9949392247476836547

namespace A091113

/-- `filter[A277549(n+1), A373978(#)]` -/
def P9949392247476836547.Spec : Prop :=
  ∀ n, P9949392247476836547.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P6002009771041894113

`filter[A304868(n+1), A373978(#)]`
-/

namespace A091113.P6002009771041894113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A091113.P6002009771041894113

namespace A091113

/-- `filter[A304868(n+1), A373978(#)]` -/
def P6002009771041894113.Spec : Prop :=
  ∀ n, P6002009771041894113.a n = A091113 (n + 1)

end A091113

/-! ## A091113.P8783985231932458510

`filter[A026448(n+1), A373978(#)]`
-/

namespace A091113.P8783985231932458510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A091113.P8783985231932458510

namespace A091113

/-- `filter[A026448(n+1), A373978(#)]` -/
def P8783985231932458510.Spec : Prop :=
  ∀ n, P8783985231932458510.a n = A091113 (n + 1)

end A091113

/-!
# A091114: Number of partitions of n-th composite number containing the smallest prime factor: a(n) = A027293(A002808(n), A056608(n)).

The programs for A091114, there is no canonical definition to state claims against.
-/

/-! ## A091114.P3272710706896906873

`A000041(A085271(n+1))`
-/

namespace A091114.P3272710706896906873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A085271 (n + 1)).toNat

end

end A091114.P3272710706896906873

/-! ## A091114.P13578579843239100635

`A035363(2*A085271(n+1))`
-/

namespace A091114.P13578579843239100635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A085271 (n + 1)).toNat

end

end A091114.P13578579843239100635

/-! ## A091114.P13856413771312882169

`A058696(A085271(n+1)/2)`
-/

namespace A091114.P13856413771312882169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (SequenceMachineLib.roundAway ((A085271 (n + 1) : ℚ) / 2)).toNat

end

end A091114.P13856413771312882169

/-! ## A091114.P2912853380198383909

`∑{d}[A085271(n+1), A000837(#)]`
-/

namespace A091114.P2912853380198383909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A091114.P2912853380198383909

/-! ## A091114.P4870623695216127162

`A000041(A046666(A018252(n+2)))`
-/

namespace A091114.P4870623695216127162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A046666 (A018252 (n + 2)).toNat).toNat

end

end A091114.P4870623695216127162

/-!
# A091115: Number of primes of the form 6k+1 less than 10^n.

The programs for A091115, there is no canonical definition to state claims against.
-/

/-! ## A091115.P8285727882839371313

`A091163(n+1)+A091161(n+1)`
-/

namespace A091115.P8285727882839371313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091163 (n + 1) + A091161 (n + 1)

end

end A091115.P8285727882839371313

/-! ## A091115.P8935233821707085457

`A006880(n+1)%(A091119(n+1)+2)`
-/

namespace A091115.P8935233821707085457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006880 (n + 1)) (A091119 (n + 1) + 2)

end

end A091115.P8935233821707085457

/-! ## A091115.P2386611756503306035

`A091098(n+1)+A091163(n+1)-A091162(n+1)`
-/

namespace A091115.P2386611756503306035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091163 (n + 1) - A091162 (n + 1))

end

end A091115.P2386611756503306035

/-! ## A091115.P7755271394799783079

`A091161(n+1)+A091099(n+1)-(A091164(n+1)+1)`
-/

namespace A091115.P7755271394799783079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091161 (n + 1) + (A091099 (n + 1) - (A091164 (n + 1) + 1))

end

end A091115.P7755271394799783079

/-! ## A091115.P11419493322792598435

`A091098(n+1)+A091099(n+1)-A091116(n+1)`
-/

namespace A091115.P11419493322792598435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091099 (n + 1) - A091116 (n + 1))

end

end A091115.P11419493322792598435

/-!
# A091116: Number of primes of the form 3k+2 less than 10^n.

The programs for A091116, there is no canonical definition to state claims against.
-/

/-! ## A091116.P4017540208488324012

`A091119(n+1)+1`
-/

namespace A091116.P4017540208488324012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091119 (n + 1) + 1

end

end A091116.P4017540208488324012

/-! ## A091116.P12450365434100931956

`A091162(n+1)+A091164(n+1)+1`
-/

namespace A091116.P12450365434100931956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091162 (n + 1) + (A091164 (n + 1) + 1)

end

end A091116.P12450365434100931956

/-! ## A091116.P2701436119571036682

`A091098(n+1)+A091099(n+1)-A091115(n+1)`
-/

namespace A091116.P2701436119571036682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091099 (n + 1) - A091115 (n + 1))

end

end A091116.P2701436119571036682

/-! ## A091116.P139042835030574170

`A091099(n+1)+A091162(n+1)-A091163(n+1)`
-/

namespace A091116.P139042835030574170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) + (A091162 (n + 1) - A091163 (n + 1))

end

end A091116.P139042835030574170

/-! ## A091116.P10734996599638565025

`A091098(n+1)-A091161(n+1)+A091164(n+1)+1`
-/

namespace A091116.P10734996599638565025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) - A091161 (n + 1) + (A091164 (n + 1) + 1)

end

end A091116.P10734996599638565025

/-!
# A091117: Number of primes of the form 5k+2 less than 10^n.

The programs for A091117, there is no canonical definition to state claims against.
-/

/-! ## A091117.P5278885068036154784

`A073507(n+1)+1`
-/

namespace A091117.P5278885068036154784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073507 (n + 1) + 1

end

end A091117.P5278885068036154784

/-! ## A091117.P201032225278297804

`A091166(n+1)+A091169(n+1)+1`
-/

namespace A091117.P201032225278297804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091166 (n + 1) + (A091169 (n + 1) + 1)

end

end A091117.P201032225278297804

/-! ## A091117.P14420666025058447251

`∑[A087632(n+1)]+1`
-/

namespace A091117.P14420666025058447251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091117.P14420666025058447251

/-!
# A091119: Number of primes of the form 6k+5 less than 10^n.

The programs for A091119, there is no canonical definition to state claims against.
-/

/-! ## A091119.P10598547838036877686

`A006880(n+1)-2-A091115(n+1)`
-/

namespace A091119.P10598547838036877686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - 2 - A091115 (n + 1)

end

end A091119.P10598547838036877686

/-! ## A091119.P2670883355600557113

`A091116(n+1)-1`
-/

namespace A091119.P2670883355600557113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091116 (n + 1) - 1

end

end A091119.P2670883355600557113

/-! ## A091119.P1085126316517405321

`A091098(n+1)+A091099(n+1)-A091115(n+1)-1`
-/

namespace A091119.P1085126316517405321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091099 (n + 1) - A091115 (n + 1)) - 1

end

end A091119.P1085126316517405321

/-! ## A091119.P5212710093383216472

`record[A091116(A304101(n))-1]`
-/

namespace A091119.P5212710093383216472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091116 (A304101 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091119.P5212710093383216472

/-! ## A091119.P14621664983728611762

`A134824(n+2)+A091116(n+1)`
-/

namespace A091119.P14621664983728611762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A091116 (n + 1)

end

end A091119.P14621664983728611762

/-!
# A091120: Number of primes of the form 7k+1 less than 10^n.

The programs for A091120, there is no canonical definition to state claims against.
-/

/-! ## A091120.P7098907758131550826

`A008611(round(∑[A092637(n+2)]/3))`
-/

namespace A091120.P7098907758131550826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092637 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)).toNat

end

end A091120.P7098907758131550826

/-!
# A091121: Number of primes of the form 7k+2 less than 10^n.

The programs for A091121, there is no canonical definition to state claims against.
-/

/-! ## A091121.P9480043276615897775

`A127763(10^n)-(n%4+n)/2`
-/

namespace A091121.P9480043276615897775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127763 (10 ^ n) : ℚ) - ((n % 4 + n : ℕ) : ℚ) / 2

end

end A091121.P9480043276615897775

/-!
# A091122: Number of primes of the form 7k+3 less than 10^n.

The programs for A091122, there is no canonical definition to state claims against.
-/

/-! ## A091122.P15355498522271517949

`A255070(∑[A033844(n)²])`
-/

namespace A091122.P15355498522271517949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091122.P15355498522271517949

/-!
# A091123: Number of primes of the form 7k+4 less than 10^n.

The programs for A091123, there is no canonical definition to state claims against.
-/

/-! ## A091123.P9878426286809082980

`∑[∑[A274576(A076906(2*(n+1)))]]`
-/

namespace A091123.P9878426286809082980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274576 (A076906 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091123.P9878426286809082980

/-!
# A091124: Number of primes of the form 7k+5 less than 10^n.

The programs for A091124, there is no canonical definition to state claims against.
-/

/-! ## A091124.P2934776225525184825

`A004396(A093388(n)+A000129(n))`
-/

namespace A091124.P2934776225525184825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A093388 n + A000129 n).toNat

end

end A091124.P2934776225525184825

/-!
# A091125: Number of primes of the form 7k+6 less than 10^n.

The programs for A091125, there is no canonical definition to state claims against.
-/

/-! ## A091125.P12223035797370531954

`A280226(A083301(n))+n-1`
-/

namespace A091125.P12223035797370531954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280226 (A083301 n).toNat + ((n : ℤ) - 1)

end

end A091125.P12223035797370531954

/-!
# A091126: Number of primes of the form 8k+1 less than 10^n.

The programs for A091126, there is no canonical definition to state claims against.
-/

/-! ## A091126.P11394749633136003601

`A091098(n+1)-A091128(n+1)`
-/

namespace A091126.P11394749633136003601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) - A091128 (n + 1)

end

end A091126.P11394749633136003601

/-! ## A091126.P14275454040749996609

`A091098(n+1)%A091128(A291769(n))`
-/

namespace A091126.P14275454040749996609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091098 (n + 1)) (A091128 (A291769 n).toNat)

end

end A091126.P14275454040749996609

/-! ## A091126.P14594517160652493922

`A091098(A000027(n+1))%A091128(n+1)`
-/

namespace A091126.P14594517160652493922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091098 (A000027 (n + 1)).toNat) (A091128 (n + 1))

end

end A091126.P14594517160652493922

/-! ## A091126.P661927872722348698

`A091098(A289555(n+1))%A091128(n+1)`
-/

namespace A091126.P661927872722348698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091098 (A289555 (n + 1)).toNat) (A091128 (n + 1))

end

end A091126.P661927872722348698

/-!
# A091127: Number of primes of the form 8k+3 less than 10^n.

The programs for A091127, there is no canonical definition to state claims against.
-/

/-! ## A091127.P16604200592456948782

`A091099(n+1)-A091129(n+1)`
-/

namespace A091127.P16604200592456948782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - A091129 (n + 1)

end

end A091127.P16604200592456948782

/-! ## A091127.P15554656678789550123

`A091098(n+1)+A091295(n+1)-A091129(n+1)`
-/

namespace A091127.P15554656678789550123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091295 (n + 1) - A091129 (n + 1))

end

end A091127.P15554656678789550123

/-! ## A091127.P1699661348938719121

`A091098(n+1)+A093153(n+1)+1-A091129(n+1)`
-/

namespace A091127.P1699661348938719121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A093153 (n + 1) + 1) - A091129 (n + 1)

end

end A091127.P1699661348938719121

/-! ## A091127.P9084188720266579962

`(A093153(n+1)+A006880(n+1))/2-A091129(n+1)`
-/

namespace A091127.P9084188720266579962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093153 (n + 1) + A006880 (n + 1) : ℚ) / 2 - (A091129 (n + 1) : ℚ)

end

end A091127.P9084188720266579962

/-! ## A091127.P4795328533733710133

`A091126(n+1)+A091295(n+1)+A091128(n+1)-A091129(n+1)`
-/

namespace A091127.P4795328533733710133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091126 (n + 1) + (A091295 (n + 1) + A091128 (n + 1)) - A091129 (n + 1)

end

end A091127.P4795328533733710133

/-!
# A091128: Number of primes of the form 8k+5 less than 10^n.

The programs for A091128, there is no canonical definition to state claims against.
-/

/-! ## A091128.P8270411413160614330

`A091098(n+1)-A091126(n+1)`
-/

namespace A091128.P8270411413160614330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) - A091126 (n + 1)

end

end A091128.P8270411413160614330

/-! ## A091128.P18288051226228374733

`A091098(n+1)+A057428(n)*A091126(n+1)`
-/

namespace A091128.P18288051226228374733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + A057428 n * A091126 (n + 1)

end

end A091128.P18288051226228374733

/-! ## A091128.P14908039504696161084

`A091099(n+1)-(A091295(n+1)+A091126(n+1))`
-/

namespace A091128.P14908039504696161084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A091295 (n + 1) + A091126 (n + 1))

end

end A091128.P14908039504696161084

/-! ## A091128.P7127458558279401743

`A091099(n+1)-(A093153(n+1)+1)-A091126(n+1)`
-/

namespace A091128.P7127458558279401743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A093153 (n + 1) + 1) - A091126 (n + 1)

end

end A091128.P7127458558279401743

/-! ## A091128.P10828474533970845053

`A091127(n+1)+A091129(n+1)-A091295(n+1)-A091126(n+1)`
-/

namespace A091128.P10828474533970845053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091127 (n + 1) + (A091129 (n + 1) - A091295 (n + 1)) - A091126 (n + 1)

end

end A091128.P10828474533970845053

/-!
# A091129: Number of primes of the form 8k+7 less than 10^n.

The programs for A091129, there is no canonical definition to state claims against.
-/

/-! ## A091129.P8151176091076139242

`A091099(n+1)-A091127(n+1)`
-/

namespace A091129.P8151176091076139242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - A091127 (n + 1)

end

end A091129.P8151176091076139242

/-! ## A091129.P3513228147949517539

`A091098(n+1)+A091295(n+1)-A091127(n+1)`
-/

namespace A091129.P3513228147949517539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091295 (n + 1) - A091127 (n + 1))

end

end A091129.P3513228147949517539

/-! ## A091129.P5832618185615312295

`A091098(n+1)+A093153(n+1)+1-A091127(n+1)`
-/

namespace A091129.P5832618185615312295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A093153 (n + 1) + 1) - A091127 (n + 1)

end

end A091129.P5832618185615312295

/-! ## A091129.P12564711441791775365

`(A093153(n+1)+A006880(n+1))/2-A091127(n+1)`
-/

namespace A091129.P12564711441791775365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093153 (n + 1) + A006880 (n + 1) : ℚ) / 2 - (A091127 (n + 1) : ℚ)

end

end A091129.P12564711441791775365

/-! ## A091129.P8626387119789209964

`A091126(n+1)+A091295(n+1)+A091128(n+1)-A091127(n+1)`
-/

namespace A091129.P8626387119789209964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091126 (n + 1) + (A091295 (n + 1) + A091128 (n + 1)) - A091127 (n + 1)

end

end A091129.P8626387119789209964

/-!
# A091131: Decimal expansion of e - 1.

The programs for A091131, there is no canonical definition to state claims against.
-/

/-! ## A091131.P7065766911429644650

`A001113(n)-floor(acot(n))`
-/

namespace A091131.P7065766911429644650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A091131.P7065766911429644650

/-! ## A091131.P13332891991682214877

`A001113(abs(1-n)+1)`
-/

namespace A091131.P13332891991682214877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((|1 - (n : ℤ)| + 1).toNat + 1)

end

end A091131.P13332891991682214877

/-! ## A091131.P6794159265282476826

`A001113(n)-A000007(n)`
-/

namespace A091131.P6794159265282476826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - A000007 n

end

end A091131.P6794159265282476826

/-! ## A091131.P16725106014499608021

`A001113(n)/A054977(n)`
-/

namespace A091131.P16725106014499608021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001113 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A091131.P16725106014499608021

/-! ## A091131.P17307502225187034206

`A001113(n)^A057428(n)²`
-/

namespace A091131.P17307502225187034206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001113 (n + 1) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A091131.P17307502225187034206

/-! ## A091131.P4591098852033473100

`A001113(n)+A057427(n)-1`
-/

namespace A091131.P4591098852033473100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (A057427 n - 1)

end

end A091131.P4591098852033473100

/-! ## A091131.P2356010032276600728

`A001113(n)-A278226(n)%2`
-/

namespace A091131.P2356010032276600728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - Int.tmod (A278226 n) 2

end

end A091131.P2356010032276600728

/-! ## A091131.P3472504276432591781

`A001113(n)+n-A028310(n)`
-/

namespace A091131.P3472504276432591781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + ((n : ℤ) - A028310 n)

end

end A091131.P3472504276432591781

/-! ## A091131.P10712824367506098229

`A001113(n)-C(A032634(n), n)`
-/

namespace A091131.P10712824367506098229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - (Nat.choose (A032634 n).toNat n : ℤ)

end

end A091131.P10712824367506098229

/-! ## A091131.P41116399290376148

`A001113(n)+A062157(n)²-1`
-/

namespace A091131.P41116399290376148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (A062157 n ^ 2 - 1)

end

end A091131.P41116399290376148

/-! ## A091131.P12968329120107392709

`A001113(n)-A109578(2*n+1)`
-/

namespace A091131.P12968329120107392709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - A109578 (2 * n + 1)

end

end A091131.P12968329120107392709

/-! ## A091131.P9044762591782571508

`A001113(n)/gcd(2, A000040(n+1))`
-/

namespace A091131.P9044762591782571508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001113 (n + 1) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A091131.P9044762591782571508

/-! ## A091131.P16074719670480503984

`A001113(n)-A008683(A008574(n))`
-/

namespace A091131.P16074719670480503984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - A008683 (A008574 n).toNat

end

end A091131.P16074719670480503984

/-! ## A091131.P5922322483678238161

`A001113(n)^A001221(A001316(n))`
-/

namespace A091131.P5922322483678238161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001113 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A091131.P5922322483678238161

/-! ## A091131.P7962576307558740155

`gcd(A001113(n), A001113(A028310(n)))`
-/

namespace A091131.P7962576307558740155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001113 (n + 1)) (A001113 ((A028310 n).toNat + 1))

end

end A091131.P7962576307558740155

/-! ## A091131.P12629363019116551457

`A001113(n)+A001622(n)-A104457(n)`
-/

namespace A091131.P12629363019116551457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (A001622 (n + 1) - A104457 (n + 1))

end

end A091131.P12629363019116551457

/-! ## A091131.P3908358968605416137

`A007318(A007318(a(n-1)))*A001113(n)` with `a(0)=1`
-/

namespace A091131.P3908358968605416137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (A007318 (a (n - 1)).toNat).toNat * A001113 (n + 1)

end

end A091131.P3908358968605416137

/-! ## A091131.P10946716647183977781

`A053139(n+1)+A001113(n)-A127705(n+1)`
-/

namespace A091131.P10946716647183977781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) + (A001113 (n + 1) - A127705 (n + 1))

end

end A091131.P10946716647183977781

/-! ## A091131.P16437428748726232493

`A004233(n+1)+A001113(n)-A363832(n+1)`
-/

namespace A091131.P16437428748726232493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) + (A001113 (n + 1) - A363832 (n + 1))

end

end A091131.P16437428748726232493

/-!
# A091134: Number of Gaussian primes a+b*i such that sqrt(a^2 + b^2) <= 10^n.

The programs for A091134, there is no canonical definition to state claims against.
-/

/-! ## A091134.P5462835461489386253

`8*A091098(2*(n+1))+4*A091099(n+1)+4`
-/

namespace A091134.P5462835461489386253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091098 (2 * (n + 1)) + 4 * A091099 (n + 1) + 4

end

end A091134.P5462835461489386253

/-! ## A091134.P5522000626579445895

`A091100(2*(n+1))`
-/

namespace A091134.P5522000626579445895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091100 (2 * (n + 1))

end

end A091134.P5522000626579445895

/-! ## A091134.P1817455071026235957

`record[A091100(A101113(n+2))]`
-/

namespace A091134.P1817455071026235957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091100 (A101113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091134.P1817455071026235957

/-!
# A091135: Number of Dyck paths of semilength n+4, having exactly two long ascents (i.e., ascents of length at least two).

The programs for A091135, the canonical program `A091135.P17099913468211130685` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091135 has offset 0).

The definition of A091135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091135.P17099913468211130685

`(n²+9*n+20)/2+2^(n+1)*(n²+3*n-4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091135

/-- `(n²+9*n+20)/2+2^(n+1)*(n²+3*n-4)` -/
def P17099913468211130685.Spec : Prop :=
  ∀ n, P17099913468211130685.a n = (A091135 n : ℚ)

end A091135

/-! ## A091135.P11426229363453001579

`∑[∑[∑[A268586(n+3)]]]`
-/

namespace A091135.P11426229363453001579
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091135.P11426229363453001579

namespace A091135

/-- `∑[∑[∑[A268586(n+3)]]]` -/
def P11426229363453001579.Spec : Prop :=
  ∀ n, P11426229363453001579.a n = A091135 n

end A091135

/-! ## A091135.P17373786143315613274

`∑[A058877(n+2)+2*a(n-1)]` with `a(0)=2`
-/

namespace A091135.P17373786143315613274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A058877 (n + 2) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091135.P17373786143315613274

namespace A091135

/-- `∑[A058877(n+2)+2*a(n-1)]` -/
def P17373786143315613274.Spec : Prop :=
  ∀ n, P17373786143315613274.a n = A091135 n

end A091135

/-! ## A091135.P8830967844736467164

`∑[∑[A001788(n+1)+A000337(n+1)]]`
-/

namespace A091135.P8830967844736467164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + A000337 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091135.P8830967844736467164

namespace A091135

/-- `∑[∑[A001788(n+1)+A000337(n+1)]]` -/
def P8830967844736467164.Spec : Prop :=
  ∀ n, P8830967844736467164.a n = A091135 n

end A091135

/-! ## A091135.P8368813993219836734

`A166073((n+3)²-∑[n+1])`
-/

namespace A091135.P8368813993219836734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166073 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091135.P8368813993219836734

namespace A091135

/-- `A166073((n+3)²-∑[n+1])` -/
def P8368813993219836734.Spec : Prop :=
  ∀ n, P8368813993219836734.a n = A091135 n

end A091135

/-!
# A091136: Smallest number m such that number of times m divides k! is almost k/n for large k, i.e., smallest m with A090624(m)=n.

The programs for A091136, there is no canonical definition to state claims against.
-/

/-! ## A091136.P3336116237669634245

`A141310(n)^n^and(9, n)`
-/

namespace A091136.P3336116237669634245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n ^ n ^ Nat.land 9 n

end

end A091136.P3336116237669634245

/-! ## A091136.P14344518723404176560

`A020639(n+1)^n^and(9, n)`
-/

namespace A091136.P14344518723404176560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ n ^ Nat.land 9 n

end

end A091136.P14344518723404176560

/-! ## A091136.P12978496470713586523

`((n+1)*∏{p}[n+1, #^val((n-1)!, #)])%A004137(3*(n+1))`
-/

namespace A091136.P12978496470713586523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p) : ℕ) : ℤ) (A004137 (3 * (n + 1)))

end

end A091136.P12978496470713586523

/-! ## A091136.P14389668756207234230

`A087179(A133647(n+1))`
-/

namespace A091136.P14389668756207234230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A133647 (n + 1)).toNat

end

end A091136.P14389668756207234230

/-!
# A091137: The Hirzebruch numbers. a(n) = Product_{2 <= p <= n+1, p prime} p^floor(n / (p - 1)).

The programs for A091137, the canonical program `A091137.P5644376634537276402` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091137 has offset 0).

The definition of A091137 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363596, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091137.P5644376634537276402

`(n+1)!*A363596(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A091137

/-- `(n+1)!*A363596(n)` -/
def P5644376634537276402.Spec : Prop :=
  ∀ n, P5644376634537276402.a n = A091137 n

theorem P5644376634537276402.correct : P5644376634537276402.Spec := by
  intro n
  simp only [A091137]

end A091137

/-! ## A091137.P5863974561692513720

`A027760(n)*a(n-1)` with `a(0)=1`
-/

namespace A091137.P5863974561692513720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027760 n * a (n - 1)

end

end A091137.P5863974561692513720

namespace A091137

/-- `A027760(n)*a(n-1)` -/
def P5863974561692513720.Spec : Prop :=
  ∀ n, P5863974561692513720.a n = A091137 n

end A091137

/-! ## A091137.P3115209323788908034

`∏[A141056(n)]`
-/

namespace A091137.P3115209323788908034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091137.P3115209323788908034

namespace A091137

/-- `∏[A141056(n)]` -/
def P3115209323788908034.Spec : Prop :=
  ∀ n, P3115209323788908034.a n = A091137 n

end A091137

/-! ## A091137.P16847709575032818648

`A165313(∑[n+1])`
-/

namespace A091137.P16847709575032818648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091137.P16847709575032818648

namespace A091137

/-- `A165313(∑[n+1])` -/
def P16847709575032818648.Spec : Prop :=
  ∀ n, P16847709575032818648.a n = A091137 n

end A091137

/-! ## A091137.P12404814109197789418

`record[A165313(n+1)]`
-/

namespace A091137.P12404814109197789418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091137.P12404814109197789418

namespace A091137

/-- `record[A165313(n+1)]` -/
def P12404814109197789418.Spec : Prop :=
  ∀ n, P12404814109197789418.a n = A091137 n

end A091137

/-! ## A091137.P1912991158538839313

`a(n-1)*A176591(n)` with `a(0)=1, a(1)=2`
-/

namespace A091137.P1912991158538839313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A176591 n

end

end A091137.P1912991158538839313

namespace A091137

/-- `a(n-1)*A176591(n)` -/
def P1912991158538839313.Spec : Prop :=
  ∀ n, P1912991158538839313.a n = A091137 n

end A091137

/-! ## A091137.P17935116801146332102

`A001316(n)*A165641(n)`
-/

namespace A091137.P17935116801146332102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A165641 n

end

end A091137.P17935116801146332102

namespace A091137

/-- `A001316(n)*A165641(n)` -/
def P17935116801146332102.Spec : Prop :=
  ∀ n, P17935116801146332102.a n = A091137 n

end A091137

/-! ## A091137.P14365200996799317102

`A000142(n+1)*A363596(n)`
-/

namespace A091137.P14365200996799317102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A363596 n

end

end A091137.P14365200996799317102

namespace A091137

/-- `A000142(n+1)*A363596(n)` -/
def P14365200996799317102.Spec : Prop :=
  ∀ n, P14365200996799317102.a n = A091137 n

end A091137

/-! ## A091137.P1101205722132776703

`∏[A027760(n+1)]/A027760(n+1)`
-/

namespace A091137.P1101205722132776703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A091137.P1101205722132776703

namespace A091137

/-- `∏[A027760(n+1)]/A027760(n+1)` -/
def P1101205722132776703.Spec : Prop :=
  ∀ n, P1101205722132776703.a n = (A091137 n : ℚ)

end A091137

/-!
# A091138: E.g.f. A(x) satisfies A(A(x)) = x/(1-x)^2.

The programs for A091138, there is no canonical definition to state claims against.
-/

/-! ## A091138.P17689975065623309730

`A353667(A193936(n+1))%A052560(n)`
-/

namespace A091138.P17689975065623309730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353667 (A193936 (n + 1)).toNat) (A052560 n)

end

end A091138.P17689975065623309730

/-! ## A091138.P14559808998876810052

`A076826(n+1)*A093803(A000142(n+1))`
-/

namespace A091138.P14559808998876810052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (n + 1) * A093803 (A000142 (n + 1)).toNat

end

end A091138.P14559808998876810052

/-! ## A091138.P12024964145766909527

`A076826(n+1)*A093803(A193936(n+1))`
-/

namespace A091138.P12024964145766909527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (n + 1) * A093803 (A193936 (n + 1)).toNat

end

end A091138.P12024964145766909527

/-!
# A091139: Row sums of triangle A091063.

The programs for A091139, there is no canonical definition to state claims against.
-/

/-! ## A091139.P1074696979126419718

`A157271(A056593(n))`
-/

namespace A091139.P1074696979126419718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A056593 n).toNat

end

end A091139.P1074696979126419718

/-! ## A091139.P9996449918623507093

`A323089(∑[A002062(n)])`
-/

namespace A091139.P9996449918623507093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091139.P9996449918623507093

/-! ## A091139.P12873835731829485609

`A204892(A007841(n))-1`
-/

namespace A091139.P12873835731829485609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A007841 n).toNat - 1

end

end A091139.P12873835731829485609

/-!
# A091140: a(n) = 2*a(n-1) + 4*a(n-2) - 2*a(n-3) with initial terms 1, 3, 9.

The programs for A091140, the canonical program `A091140.P587042715601345519` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091140 has offset 1).

The definition of A091140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-2*a(n-3)` (program `A091140.P587042715601345519`, by `A091140.P587042715601345519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091140.P587042715601345519

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091140

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P587042715601345519.Spec : Prop :=
  ∀ n, P587042715601345519.a n = A091140 (n + 1)

theorem P587042715601345519.correct : P587042715601345519.Spec := by
  intro n
  simp only [A091140, Nat.add_sub_cancel]

end A091140

/-! ## A091140.P2492081744045588913

`ogf((1+x-x^2)/(1-2x-4x^2+2x^3))`
-/

namespace A091140.P2492081744045588913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -4, 2] n

end

end A091140.P2492081744045588913

namespace A091140

/-- `ogf((1+x-x^2)/(1-2x-4x^2+2x^3))` -/
def P2492081744045588913.Spec : Prop :=
  ∀ n, P2492081744045588913.a n = A091140 (n + 1)

end A091140

/-! ## A091140.P17138479499835340574

`A091142(n+2)/2`
-/

namespace A091140.P17138479499835340574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091142 (n + 2) : ℚ) / 2

end

end A091140.P17138479499835340574

namespace A091140

/-- `A091142(n+2)/2` -/
def P17138479499835340574.Spec : Prop :=
  ∀ n, P17138479499835340574.a n = (A091140 (n + 1) : ℚ)

end A091140

/-! ## A091140.P5729561020810696061

`Δ[A091141(n+1)/3]`
-/

namespace A091140.P5729561020810696061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091141 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091140.P5729561020810696061

namespace A091140

/-- `Δ[A091141(n+1)/3]` -/
def P5729561020810696061.Spec : Prop :=
  ∀ n, P5729561020810696061.a n = (A091140 (n + 1) : ℚ)

end A091140

/-! ## A091140.P7714368852875529449

`Δ[A091141(n+1)]-A091142(n+2)`
-/

namespace A091140.P7714368852875529449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091142 (n + 2)

end

end A091140.P7714368852875529449

namespace A091140

/-- `Δ[A091141(n+1)]-A091142(n+2)` -/
def P7714368852875529449.Spec : Prop :=
  ∀ n, P7714368852875529449.a n = A091140 (n + 1)

end A091140

/-! ## A091140.P18260787392612018390

`(A091141(n+2)-A091141(n+1))/3`
-/

namespace A091140.P18260787392612018390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091141 (n + 2) - A091141 (n + 1) : ℚ) / 3

end

end A091140.P18260787392612018390

namespace A091140

/-- `(A091141(n+2)-A091141(n+1))/3` -/
def P18260787392612018390.Spec : Prop :=
  ∀ n, P18260787392612018390.a n = (A091140 (n + 1) : ℚ)

end A091140

/-! ## A091140.P2148988575442896686

`A091141(n+2)-(A091142(n+2)+A091141(n+1))`
-/

namespace A091140.P2148988575442896686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091141 (n + 2) - (A091142 (n + 2) + A091141 (n + 1))

end

end A091140.P2148988575442896686

namespace A091140

/-- `A091141(n+2)-(A091142(n+2)+A091141(n+1))` -/
def P2148988575442896686.Spec : Prop :=
  ∀ n, P2148988575442896686.a n = A091140 (n + 1)

end A091140

/-!
# A091141: a(n) = 2*a(n-1) + 4*a(n-2) - 2*a(n-3) with initial terms 1, 4, 13.

The programs for A091141, the canonical program `A091141.P1282894558408962365` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091141 has offset 1).

The definition of A091141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-2*a(n-3)` (program `A091141.P1282894558408962365`, by `A091141.P1282894558408962365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091141.P1282894558408962365

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091141

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P1282894558408962365.Spec : Prop :=
  ∀ n, P1282894558408962365.a n = A091141 (n + 1)

theorem P1282894558408962365.correct : P1282894558408962365.Spec := by
  intro n
  simp only [A091141, Nat.add_sub_cancel]

end A091141

/-! ## A091141.P11249744329460945038

`ogf((1+2x+x^2)/(1-2x-4x^2+2x^3))`
-/

namespace A091141.P11249744329460945038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, -4, 2] n

end

end A091141.P11249744329460945038

namespace A091141

/-- `ogf((1+2x+x^2)/(1-2x-4x^2+2x^3))` -/
def P11249744329460945038.Spec : Prop :=
  ∀ n, P11249744329460945038.a n = A091141 (n + 1)

end A091141

/-! ## A091141.P11346140628258975594

`a(n-1)+3*A091140(n)` with `a(0)=1`
-/

namespace A091141.P11346140628258975594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A091140 n

end

end A091141.P11346140628258975594

namespace A091141

/-- `a(n-1)+3*A091140(n)` -/
def P11346140628258975594.Spec : Prop :=
  ∀ n, P11346140628258975594.a n = A091141 (n + 1)

end A091141

/-! ## A091141.P7863868540104155789

`A091140(n+1)+Δ[A091142(A028310(n))]`
-/

namespace A091141.P7863868540104155789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091142 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 1) + (f1 (n + 1) - f1 n)

end

end A091141.P7863868540104155789

namespace A091141

/-- `A091140(n+1)+Δ[A091142(A028310(n))]` -/
def P7863868540104155789.Spec : Prop :=
  ∀ n, P7863868540104155789.a n = A091141 (n + 1)

end A091141

/-! ## A091141.P9008025834951580943

`A091140(n+1)+A091142(n+1)-A091142(A028310(n))`
-/

namespace A091141.P9008025834951580943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 1) + (A091142 (n + 1) - A091142 (A028310 n).toNat)

end

end A091141.P9008025834951580943

namespace A091141

/-- `A091140(n+1)+A091142(n+1)-A091142(A028310(n))` -/
def P9008025834951580943.Spec : Prop :=
  ∀ n, P9008025834951580943.a n = A091141 (n + 1)

end A091141

/-! ## A091141.P16401386672938736625

`Δ[A091140(n+1)]-A091142(n+1)`
-/

namespace A091141.P16401386672938736625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091142 (n + 1)

end

end A091141.P16401386672938736625

namespace A091141

/-- `Δ[A091140(n+1)]-A091142(n+1)` -/
def P16401386672938736625.Spec : Prop :=
  ∀ n, P16401386672938736625.a n = A091141 (n + 1)

end A091141

/-! ## A091141.P13446416863482997592

`A091140(n+2)-(A091142(n+1)+A091140(n+1))`
-/

namespace A091141.P13446416863482997592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 2) - (A091142 (n + 1) + A091140 (n + 1))

end

end A091141.P13446416863482997592

namespace A091141

/-- `A091140(n+2)-(A091142(n+1)+A091140(n+1))` -/
def P13446416863482997592.Spec : Prop :=
  ∀ n, P13446416863482997592.a n = A091141 (n + 1)

end A091141

/-! ## A091141.P3826188529638319265

`Δ[A091142(n+2)/2]-A091142(n+1)`
-/

namespace A091141.P3826188529638319265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091142 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A091142 (n + 1) : ℚ)

end

end A091141.P3826188529638319265

namespace A091141

/-- `Δ[A091142(n+2)/2]-A091142(n+1)` -/
def P3826188529638319265.Spec : Prop :=
  ∀ n, P3826188529638319265.a n = (A091141 (n + 1) : ℚ)

end A091141

/-!
# A091142: a(n) = 2*a(n-1) + 4*a(n-2) - 2*a(n-3) with initial terms 1, 2, 6.

The programs for A091142, the canonical program `A091142.P17986835963942788074` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091142 has offset 1).

The definition of A091142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-2*a(n-3)` (program `A091142.P17986835963942788074`, by `A091142.P17986835963942788074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091142.P17986835963942788074

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091142

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P17986835963942788074.Spec : Prop :=
  ∀ n, P17986835963942788074.a n = A091142 (n + 1)

theorem P17986835963942788074.correct : P17986835963942788074.Spec := by
  intro n
  simp only [A091142, Nat.add_sub_cancel]

end A091142

/-! ## A091142.P13231184796803822137

`ogf((1-2x^2)/(1-2x-4x^2+2x^3))`
-/

namespace A091142.P13231184796803822137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2, -4, 2] n

end

end A091142.P13231184796803822137

namespace A091142

/-- `ogf((1-2x^2)/(1-2x-4x^2+2x^3))` -/
def P13231184796803822137.Spec : Prop :=
  ∀ n, P13231184796803822137.a n = A091142 (n + 1)

end A091142

/-! ## A091142.P11961714087000479018

`∑[A091141(n+1)-A091140(n+1)]+1`
-/

namespace A091142.P11961714087000479018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091141 (n + 1) - A091140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091142.P11961714087000479018

namespace A091142

/-- `∑[A091141(n+1)-A091140(n+1)]+1` -/
def P11961714087000479018.Spec : Prop :=
  ∀ n, P11961714087000479018.a n = A091142 (n + 1)

end A091142

/-! ## A091142.P3079277499147755009

`Δ[A091140(n+1)]-A091141(n+1)`
-/

namespace A091142.P3079277499147755009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091141 (n + 1)

end

end A091142.P3079277499147755009

namespace A091142

/-- `Δ[A091140(n+1)]-A091141(n+1)` -/
def P3079277499147755009.Spec : Prop :=
  ∀ n, P3079277499147755009.a n = A091142 (n + 1)

end A091142

/-! ## A091142.P6699087125070740650

`A091140(n+2)-(A091141(n+1)+A091140(n+1))`
-/

namespace A091142.P6699087125070740650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 2) - (A091141 (n + 1) + A091140 (n + 1))

end

end A091142.P6699087125070740650

namespace A091142

/-- `A091140(n+2)-(A091141(n+1)+A091140(n+1))` -/
def P6699087125070740650.Spec : Prop :=
  ∀ n, P6699087125070740650.a n = A091142 (n + 1)

end A091142

/-! ## A091142.P9669204192890112796

`A091140(n+3)%A091141(n+2)`
-/

namespace A091142.P9669204192890112796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091140 (n + 3)) (A091141 (n + 2))

end

end A091142.P9669204192890112796

namespace A091142

/-- `A091140(n+3)%A091141(n+2)` -/
def P9669204192890112796.Spec : Prop :=
  ∀ n, P9669204192890112796.a n = A091142 (n + 1)

end A091142

/-!
# A091143: Number of Pythagorean triples mod 2^n; i.e., number of solutions to x^2 + y^2 = z^2 mod 2^n.

The programs for A091143, the canonical program `A091143.P15692410574933453105` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091143 has offset 0).

The definition of A091143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091143.P15692410574933453105

`4*a(n-1)+8*a(n-2)-32*a(n-3)` with `a(0)=1, a(1)=4, a(2)=24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091143

/-- `4*a(n-1)+8*a(n-2)-32*a(n-3)` -/
def P15692410574933453105.Spec : Prop :=
  ∀ n, P15692410574933453105.a n = A091143 n

theorem P15692410574933453105.correct : P15692410574933453105.Spec := by
  intro n
  simp only [A091143]

end A091143

/-! ## A091143.P15483801780474811118

`4^n+8*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A091143.P15483801780474811118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 ^ n + 8 * a (n - 2)

end

end A091143.P15483801780474811118

namespace A091143

/-- `4^n+8*a(n-2)` -/
def P15483801780474811118.Spec : Prop :=
  ∀ n, (P15483801780474811118.a n : ℤ) = A091143 n

end A091143

/-! ## A091143.P4739740926529292442

`2^n*A122746(n)`
-/

namespace A091143.P4739740926529292442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A122746 n

end

end A091143.P4739740926529292442

namespace A091143

/-- `2^n*A122746(n)` -/
def P4739740926529292442.Spec : Prop :=
  ∀ n, P4739740926529292442.a n = A091143 n

end A091143

/-! ## A091143.P5716795654239855131

`2^n*A032085(n+2)`
-/

namespace A091143.P5716795654239855131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A032085 (n + 2)

end

end A091143.P5716795654239855131

namespace A091143

/-- `2^n*A032085(n+2)` -/
def P5716795654239855131.Spec : Prop :=
  ∀ n, P5716795654239855131.a n = A091143 n

end A091143

/-! ## A091143.P610697179409479577

`(∏[gcd(2, n)]-1)*A094015(n)`
-/

namespace A091143.P610697179409479577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A094015 n

end

end A091143.P610697179409479577

namespace A091143

/-- `(∏[gcd(2, n)]-1)*A094015(n)` -/
def P610697179409479577.Spec : Prop :=
  ∀ n, P610697179409479577.a n = A091143 n

end A091143

/-! ## A091143.P5790260004915177354

`2^(n-1)*A233411(n+2)`
-/

namespace A091143.P5790260004915177354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A233411 (n + 2) : ℚ)

end

end A091143.P5790260004915177354

namespace A091143

/-- `2^(n-1)*A233411(n+2)` -/
def P5790260004915177354.Spec : Prop :=
  ∀ n, P5790260004915177354.a n = (A091143 n : ℚ)

end A091143

/-! ## A091143.P17047647397797299511

`2^(n-2)*A208901(n+3)`
-/

namespace A091143.P17047647397797299511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A208901 (n + 3) : ℚ)

end

end A091143.P17047647397797299511

namespace A091143

/-- `2^(n-2)*A208901(n+3)` -/
def P17047647397797299511.Spec : Prop :=
  ∀ n, P17047647397797299511.a n = (A091143 n : ℚ)

end A091143

/-! ## A091143.P14750531944441138909

`A004171(n)-A094015(n)`
-/

namespace A091143.P14750531944441138909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A094015 n

end

end A091143.P14750531944441138909

namespace A091143

/-- `A004171(n)-A094015(n)` -/
def P14750531944441138909.Spec : Prop :=
  ∀ n, P14750531944441138909.a n = A091143 n

end A091143

/-! ## A091143.P14654769294748917439

`A052551(n)*A094015(n)`
-/

namespace A091143.P14654769294748917439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A094015 n

end

end A091143.P14654769294748917439

namespace A091143

/-- `A052551(n)*A094015(n)` -/
def P14654769294748917439.Spec : Prop :=
  ∀ n, P14654769294748917439.a n = A091143 n

end A091143

/-! ## A091143.P16308078607274096858

`A151821(n+1)*A354294(n)`
-/

namespace A091143.P16308078607274096858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) * A354294 n

end

end A091143.P16308078607274096858

namespace A091143

/-- `A151821(n+1)*A354294(n)` -/
def P16308078607274096858.Spec : Prop :=
  ∀ n, P16308078607274096858.a n = A091143 n

end A091143

/-! ## A091143.P12944360337421198689

`A122746(n)*A152166(2*n)`
-/

namespace A091143.P12944360337421198689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n * A152166 (2 * n)

end

end A091143.P12944360337421198689

namespace A091143

/-- `A122746(n)*A152166(2*n)` -/
def P12944360337421198689.Spec : Prop :=
  ∀ n, P12944360337421198689.a n = A091143 n

end A091143

/-! ## A091143.P16581369657134394586

`A052551(n)*A060546(3*n)`
-/

namespace A091143.P16581369657134394586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A060546 (3 * n)

end

end A091143.P16581369657134394586

namespace A091143

/-- `A052551(n)*A060546(3*n)` -/
def P16581369657134394586.Spec : Prop :=
  ∀ n, P16581369657134394586.a n = A091143 n

end A091143

/-! ## A091143.P5467517434466411439

`2*A000079(n)²-A094015(n)`
-/

namespace A091143.P5467517434466411439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A094015 n

end

end A091143.P5467517434466411439

namespace A091143

/-- `2*A000079(n)²-A094015(n)` -/
def P5467517434466411439.Spec : Prop :=
  ∀ n, P5467517434466411439.a n = A091143 n

end A091143

/-! ## A091143.P6825432583866876696

`A007179(n+1)*A007179(n+2)`
-/

namespace A091143.P6825432583866876696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) * A007179 (n + 2)

end

end A091143.P6825432583866876696

namespace A091143

/-- `A007179(n+1)*A007179(n+2)` -/
def P6825432583866876696.Spec : Prop :=
  ∀ n, P6825432583866876696.a n = A091143 n

end A091143

/-! ## A091143.P8335711894519569136

`A000079(2*n+1)-A094015(n)`
-/

namespace A091143.P8335711894519569136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A094015 n

end

end A091143.P8335711894519569136

namespace A091143

/-- `A000079(2*n+1)-A094015(n)` -/
def P8335711894519569136.Spec : Prop :=
  ∀ n, P8335711894519569136.a n = A091143 n

end A091143

/-! ## A091143.P9792928976133460514

`A122746(n)*A131572(2*n+1)`
-/

namespace A091143.P9792928976133460514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n * A131572 (2 * n + 1)

end

end A091143.P9792928976133460514

namespace A091143

/-- `A122746(n)*A131572(2*n+1)` -/
def P9792928976133460514.Spec : Prop :=
  ∀ n, P9792928976133460514.a n = A091143 n

end A091143

/-! ## A091143.P9127852277746881682

`A122746(n)*A164073(2*n+1)`
-/

namespace A091143.P9127852277746881682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n * A164073 (2 * n + 1)

end

end A091143.P9127852277746881682

namespace A091143

/-- `A122746(n)*A164073(2*n+1)` -/
def P9127852277746881682.Spec : Prop :=
  ∀ n, P9127852277746881682.a n = A091143 n

end A091143

/-! ## A091143.P10775132544897706883

`A032085(n+2)*A060546(2*n)`
-/

namespace A091143.P10775132544897706883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (n + 2) * A060546 (2 * n)

end

end A091143.P10775132544897706883

namespace A091143

/-- `A032085(n+2)*A060546(2*n)` -/
def P10775132544897706883.Spec : Prop :=
  ∀ n, P10775132544897706883.a n = A091143 n

end A091143

/-! ## A091143.P18279988123125753235

`A032085(n+2)*A077957(2*n)`
-/

namespace A091143.P18279988123125753235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (n + 2) * A077957 (2 * n)

end

end A091143.P18279988123125753235

namespace A091143

/-- `A032085(n+2)*A077957(2*n)` -/
def P18279988123125753235.Spec : Prop :=
  ∀ n, P18279988123125753235.a n = A091143 n

end A091143

/-! ## A091143.P3206584238762916561

`A032085(n+2)*A056503(2*n+1)`
-/

namespace A091143.P3206584238762916561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (n + 2) * A056503 (2 * n + 1)

end

end A091143.P3206584238762916561

namespace A091143

/-- `A032085(n+2)*A056503(2*n+1)` -/
def P3206584238762916561.Spec : Prop :=
  ∀ n, P3206584238762916561.a n = A091143 n

end A091143

/-!
# A091144: a(n) = binomial(n^2, n)/(1+(n-1)*n).

The programs for A091144, the canonical program `A091144.P15605289047946874653` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091144 has offset 0).

The definition of A091144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091144.P15605289047946874653

`C(n², n)/(1+(n-1)*n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091144

/-- `C(n², n)/(1+(n-1)*n)` -/
def P15605289047946874653.Spec : Prop :=
  ∀ n, P15605289047946874653.a n = (A091144 n : ℚ)

end A091144

/-! ## A091144.P13288784331425680036

`A014062(n)/A002061(n)`
-/

namespace A091144.P13288784331425680036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014062 n : ℚ) / (A002061 n : ℚ)

end

end A091144.P13288784331425680036

namespace A091144

/-- `A014062(n)/A002061(n)` -/
def P13288784331425680036.Spec : Prop :=
  ∀ n, P13288784331425680036.a n = (A091144 n : ℚ)

end A091144

/-! ## A091144.P3219198731028086096

`A014062(n)/sqrt(A058031(n))`
-/

namespace A091144.P3219198731028086096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014062 n : ℝ) / Real.sqrt (A058031 n : ℝ)

end

end A091144.P3219198731028086096

namespace A091144

/-- `A014062(n)/sqrt(A058031(n))` -/
def P3219198731028086096.Spec : Prop :=
  ∀ n, P3219198731028086096.a n = (A091144 n : ℝ)

end A091144

/-! ## A091144.P6752863811190001142

`2*A014062(n)/A051890(n)`
-/

namespace A091144.P6752863811190001142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A014062 n : ℚ) / (A051890 n : ℚ))

end

end A091144.P6752863811190001142

namespace A091144

/-- `2*A014062(n)/A051890(n)` -/
def P6752863811190001142.Spec : Prop :=
  ∀ n, P6752863811190001142.a n = (A091144 n : ℚ)

end A091144

/-!
# A091145: Number of cusped nonorientable hyperbolic 3-manifolds obtained from n ideal tetrahedra.

The programs for A091145, there is no canonical definition to state claims against.
-/

/-! ## A091145.P12091609407088389897

`A092304(n+1)-A091108(n+1)`
-/

namespace A091145.P12091609407088389897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092304 (n + 1) - A091108 (n + 1)

end

end A091145.P12091609407088389897

/-! ## A091145.P8701805337308067786

`A005811(A000579(3*n+1))+A000984(n)`
-/

namespace A091145.P8701805337308067786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A000579 (3 * n + 1)).toNat + A000984 n

end

end A091145.P8701805337308067786

/-!
# A091146: a(n) = ceiling((n - sqrt(n))^n).

The programs for A091146, there is no canonical definition to state claims against.
-/

/-! ## A091146.P13601016468406386064

`ceil((n-sqrt(n))^n)`
-/

namespace A091146.P13601016468406386064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.sqrt (n : ℝ)) ^ n⌉

end

end A091146.P13601016468406386064

/-! ## A091146.P16331224744400562169

`A000010(a(n-2)^n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=16`
-/

namespace A091146.P16331224744400562169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3, 16] fun n a =>
  A000010 (a (n - 2) ^ n).toNat

end

end A091146.P16331224744400562169

/-!
# A091147: Expansion of (1-x-sqrt(1-2*x-15*x^2))/(8*x^2).

The programs for A091147, the canonical program `A091147.P12961140139336904514` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091147 has offset 0).

The definition of A091147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091147.P12961140139336904514

`((2*n+1)*a(n-1)-15*(1-n)*a(n-2))/(n+2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091147

/-- `((2*n+1)*a(n-1)-15*(1-n)*a(n-2))/(n+2)` -/
def P12961140139336904514.Spec : Prop :=
  ∀ n, P12961140139336904514.a n = (A091147 n : ℚ)

end A091147

/-! ## A091147.P3910523455504948456

`A014433(n+1)/4`
-/

namespace A091147.P3910523455504948456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014433 (n + 1) : ℚ) / 4

end

end A091147.P3910523455504948456

namespace A091147

/-- `A014433(n+1)/4` -/
def P3910523455504948456.Spec : Prop :=
  ∀ n, P3910523455504948456.a n = (A091147 n : ℚ)

end A091147

/-! ## A091147.P3824563631426012009

`Δ[∑[A014433(n)]/4]`
-/

namespace A091147.P3824563631426012009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014433 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091147.P3824563631426012009

namespace A091147

/-- `Δ[∑[A014433(n)]/4]` -/
def P3824563631426012009.Spec : Prop :=
  ∀ n, P3824563631426012009.a n = (A091147 n : ℚ)

end A091147

/-! ## A091147.P4057427732781174671

`A098520(n+1)/(n+1)`
-/

namespace A091147.P4057427732781174671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098520 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A091147.P4057427732781174671

namespace A091147

/-- `A098520(n+1)/(n+1)` -/
def P4057427732781174671.Spec : Prop :=
  ∀ n, P4057427732781174671.a n = (A091147 n : ℚ)

end A091147

/-! ## A091147.P9360455606693864693

`A344557(∑[n])`
-/

namespace A091147.P9360455606693864693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344557 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091147.P9360455606693864693

namespace A091147

/-- `A344557(∑[n])` -/
def P9360455606693864693.Spec : Prop :=
  ∀ n, P9360455606693864693.a n = A091147 n

end A091147

/-! ## A091147.P11893707072017450289

`A306684(2*n+∑[n+3]+7)`
-/

namespace A091147.P11893707072017450289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A091147.P11893707072017450289

namespace A091147

/-- `A306684(2*n+∑[n+3]+7)` -/
def P11893707072017450289.Spec : Prop :=
  ∀ n, P11893707072017450289.a n = A091147 n

end A091147

/-! ## A091147.P627262946298781712

`A084604(A028387(n))/(n+1)`
-/

namespace A091147.P627262946298781712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084604 (A028387 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A091147.P627262946298781712

namespace A091147

/-- `A084604(A028387(n))/(n+1)` -/
def P627262946298781712.Spec : Prop :=
  ∀ n, P627262946298781712.a n = (A091147 n : ℚ)

end A091147

/-!
# A091148: Expansion of (1-x-sqrt(1-2x-19x^2))/(10x^2).

The programs for A091148, there is no canonical definition to state claims against.
-/

/-! ## A091148.P6041956236212697396

`A014434(n+1)/5`
-/

namespace A091148.P6041956236212697396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014434 (n + 1) : ℚ) / 5

end

end A091148.P6041956236212697396

/-! ## A091148.P15509631911450252727

`A306684(A055999(n+3))`
-/

namespace A091148.P15509631911450252727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A055999 (n + 3)).toNat

end

end A091148.P15509631911450252727

/-! ## A091148.P8857700513970833557

`A306684(A046691(n+4)-2)`
-/

namespace A091148.P8857700513970833557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A046691 (n + 4) - 2).toNat

end

end A091148.P8857700513970833557

/-! ## A091148.P6851685848266925680

`A306684(A000217(n+6)-6)`
-/

namespace A091148.P6851685848266925680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000217 (n + 6) - 6).toNat

end

end A091148.P6851685848266925680

/-! ## A091148.P7499685577642933742

`A306684(A000124(n+6)-7)`
-/

namespace A091148.P7499685577642933742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000124 (n + 6) - 7).toNat

end

end A091148.P7499685577642933742

/-! ## A091148.P16284278885027375940

`A306684(Δ[A023545(n+2)]-2)`
-/

namespace A091148.P16284278885027375940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (f1 (n + 1) - f1 n - 2).toNat

end

end A091148.P16284278885027375940

/-! ## A091148.P5563434036971835802

`A306684(A000096(n+4)+n+1)`
-/

namespace A091148.P5563434036971835802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A091148.P5563434036971835802

/-! ## A091148.P7293234619113208340

`A306684(Δ[Δ[A006504(n+1)]]-1)`
-/

namespace A091148.P7293234619113208340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (f1 (n + 1) - f1 n - 1).toNat

end

end A091148.P7293234619113208340

/-! ## A091148.P9475587398811155839

`A306684(A020744(n)+∑[n+4]+3)`
-/

namespace A091148.P9475587398811155839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A020744 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)).toNat

end

end A091148.P9475587398811155839

/-! ## A091148.P17691253470061805572

`A306684(2*n+A000217(n+4)+5)`
-/

namespace A091148.P17691253470061805572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A091148.P17691253470061805572

/-!
# A091149: Expansion of (1 - x - sqrt(1 - 2*x - 23*x^2))/(12*x^2).

The programs for A091149, there is no canonical definition to state claims against.
-/

/-! ## A091149.P6587903084115642942

`A014435(n+1)/6`
-/

namespace A091149.P6587903084115642942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014435 (n + 1) : ℚ) / 6

end

end A091149.P6587903084115642942

/-! ## A091149.P14953062405386540538

`a(n-1)*ratio[A014435(n)]` with `a(0)=1`
-/

namespace A091149.P14953062405386540538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014435 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A091149.P14953062405386540538

/-! ## A091149.P5753358959358849505

`A306684(A055999(n+4)-1)`
-/

namespace A091149.P5753358959358849505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A055999 (n + 4) - 1).toNat

end

end A091149.P5753358959358849505

/-! ## A091149.P7100966168348828112

`A306684(A000217(n+7)-7)`
-/

namespace A091149.P7100966168348828112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000217 (n + 7) - 7).toNat

end

end A091149.P7100966168348828112

/-! ## A091149.P10350508314104872991

`A306684(A000124(n+6)+n-1)`
-/

namespace A091149.P10350508314104872991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A091149.P10350508314104872991

/-! ## A091149.P8775689412930900775

`A306684(2*n+A000217(n+5)+6)`
-/

namespace A091149.P8775689412930900775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A091149.P8775689412930900775

/-! ## A091149.P16672130369346685754

`A306684(2*n+A055998(n+3)+9)`
-/

namespace A091149.P16672130369346685754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 ((2 * n : ℤ) + (A055998 (n + 3) + 9)).toNat

end

end A091149.P16672130369346685754

/-! ## A091149.P2427055562898489427

`A306684(2*n+A046691(n+3)+10)`
-/

namespace A091149.P2427055562898489427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 ((2 * n : ℤ) + (A046691 (n + 3) + 10)).toNat

end

end A091149.P2427055562898489427

/-!
# A091150: Triangle, read by rows, where the n-th row lists the coefficients of the polynomial of degree n that generates the n-th diagonal of this sequence.

The programs for A091150, there is no canonical definition to state claims against.
-/

/-! ## A091150.P4030273318334157249

`A091351(n)-A133010(A091351(n))`
-/

namespace A091150.P4030273318334157249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n - A133010 (A091351 n).toNat

end

end A091150.P4030273318334157249

/-! ## A091150.P11361529893465914918

`A123719(A091351(n)-A011731(n))`
-/

namespace A091150.P11361529893465914918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A091351 n - A011731 n).toNat

end

end A091150.P11361529893465914918

/-! ## A091150.P237569304312424004

`A091351(n)-A124761(A069777(n))`
-/

namespace A091150.P237569304312424004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n - A124761 (A069777 n).toNat

end

end A091150.P237569304312424004

/-! ## A091150.P12584269353296844186

`A091351(n)-A185044(A370890(n))`
-/

namespace A091150.P12584269353296844186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n - A185044 (A370890 n).toNat

end

end A091150.P12584269353296844186

/-! ## A091150.P9054809921047921899

`A091351(n)+A010815(A005935(n+2))`
-/

namespace A091150.P9054809921047921899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n + A010815 (A005935 (n + 2)).toNat

end

end A091150.P9054809921047921899

/-!
# A091151: Row sums of triangle A091150, in which the n-th row lists the coefficients of the polynomial of degree n that generates the n-th diagonal.

The programs for A091151, there is no canonical definition to state claims against.
-/

/-! ## A091151.P11449132262564279080

`record[ratio[A091150(n)]]`
-/

namespace A091151.P11449132262564279080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091151.P11449132262564279080

/-! ## A091151.P12008144211963018941

`A091150(∑[n+1]+1)`
-/

namespace A091151.P12008144211963018941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091151.P12008144211963018941

/-! ## A091151.P808442364669836715

`record[A091150(A038722(n+1)+1)]`
-/

namespace A091151.P808442364669836715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A038722 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091151.P808442364669836715

/-! ## A091151.P14943821938445190081

`record[A091150(n+1)/A007318(n)]`
-/

namespace A091151.P14943821938445190081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091150 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091151.P14943821938445190081

/-! ## A091151.P17153999778038069888

`record[A091150(n+1)/A091150(n)]`
-/

namespace A091151.P17153999778038069888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091150 (n + 1) : ℚ) / (A091150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091151.P17153999778038069888

/-!
# A091152: Second column of triangle A091150, in which the n-th row lists the coefficients of the polynomial of degree n that generates the n-th diagonal.

The programs for A091152, there is no canonical definition to state claims against.
-/

/-! ## A091152.P9848560975759884165

`A091150(∑[n+2]+3)`
-/

namespace A091152.P9848560975759884165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A091152.P9848560975759884165

/-! ## A091152.P678188865060562241

`record[A091150(A005369(2*n)*(n+2))]`
-/

namespace A091152.P678188865060562241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A005369 (2 * n) * (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091152.P678188865060562241

/-! ## A091152.P2156686646629482953

`record[A091150(A133263(A008611(n)))]`
-/

namespace A091152.P2156686646629482953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091152.P2156686646629482953

/-! ## A091152.P14547557301829283273

`record[A091150(A133263(A057979(n)))]`
-/

namespace A091152.P14547557301829283273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A133263 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091152.P14547557301829283273

/-! ## A091152.P9585538070393890455

`A091150(A133263(n+2))+A000007(3*n+4)`
-/

namespace A091152.P9585538070393890455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A133263 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A091152.P9585538070393890455

/-!
# A091153: Third column of triangle A091150, in which the n-th row lists the coefficients of the polynomial of degree n that generates the n-th diagonal.

The programs for A091153, there is no canonical definition to state claims against.
-/

/-! ## A091153.P2487803488729931616

`A091150(A167614(n+2))`
-/

namespace A091153.P2487803488729931616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A167614 (n + 2)).toNat

end

end A091153.P2487803488729931616

/-! ## A091153.P18167873013997892722

`A091150(A000096(n+2)+4)`
-/

namespace A091153.P18167873013997892722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A000096 (n + 2) + 4).toNat

end

end A091153.P18167873013997892722

/-! ## A091153.P9478334520187076546

`record[root(A091150(n+5), A091150(n+1))]`
-/

namespace A091153.P9478334520187076546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A091150 (n + 5) : ℝ) ^ (1 / (A091150 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091153.P9478334520187076546

/-! ## A091153.P12887276792370216351

`record[A091150(A167614(A286552(n)))]`
-/

namespace A091153.P12887276792370216351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A167614 (A286552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091153.P12887276792370216351

/-! ## A091153.P1896734767427742307

`A091150(A046691(n+3)-A265283(2*n))`
-/

namespace A091153.P1896734767427742307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 (A046691 (n + 3) - A265283 (2 * n)).toNat

end

end A091153.P1896734767427742307

/-!
# A091154: Numerator of Maclaurin expansion of (t*sqrt(t^2+1) + arcsinh(t))/2, the arc length of Archimedes' spiral.

The programs for A091154, the canonical program `A091154.P3915821087696335756` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091154 has offset 1).

The definition of A091154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091154.P3915821087696335756

`A002596(n)/(2*n+1)*A056617(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A091154

/-- `A002596(n)/(2*n+1)*A056617(n)` -/
def P3915821087696335756.Spec : Prop :=
  ∀ n, P3915821087696335756.a n = (A091154 (n + 1) : ℚ)

end A091154

/-! ## A091154.P4197856243679163097

`A055786(n)/A009001(A004273(n))`
-/

namespace A091154.P4197856243679163097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055786 n : ℚ) / (A009001 (A004273 n).toNat : ℚ)

end

end A091154.P4197856243679163097

namespace A091154

/-- `A055786(n)/A009001(A004273(n))` -/
def P4197856243679163097.Spec : Prop :=
  ∀ n, P4197856243679163097.a n = (A091154 (n + 1) : ℚ)

end A091154

/-! ## A091154.P4676517085872146431

`A002596(n)/A001790(n)*A055786(n)`
-/

namespace A091154.P4676517085872146431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n : ℚ) / (A001790 n : ℚ) * (A055786 n : ℚ)

end

end A091154.P4676517085872146431

namespace A091154

/-- `A002596(n)/A001790(n)*A055786(n)` -/
def P4676517085872146431.Spec : Prop :=
  ∀ n, P4676517085872146431.a n = (A091154 (n + 1) : ℚ)

end A091154

/-! ## A091154.P11899357775336647831

`A002596(n)/gcd(A001790(n), A005408(n))`
-/

namespace A091154.P11899357775336647831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n : ℚ) / (Int.gcd (A001790 n) (A005408 n) : ℚ)

end

end A091154.P11899357775336647831

namespace A091154

/-- `A002596(n)/gcd(A001790(n), A005408(n))` -/
def P11899357775336647831.Spec : Prop :=
  ∀ n, P11899357775336647831.a n = (A091154 (n + 1) : ℚ)

end A091154

/-!
# A091157: Primes occurring in the sequence 3, 1, 4, 5, 9, 14, 23, ... (A000285 prefixed with 3).

The programs for A091157, there is no canonical definition to state claims against.
-/

/-! ## A091157.P15826363837813170123

`A104449(A091158(n+1)-1)`
-/

namespace A091157.P15826363837813170123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (A091158 (n + 1) - 1).toNat

end

end A091157.P15826363837813170123

/-! ## A091157.P12468119239917087518

`p?[a(n-1)+a(n-2)]` with `a(0)=3, a(1)=1`
-/

namespace A091157.P12468119239917087518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091157.P12468119239917087518

/-! ## A091157.P11079310495075933901

`p?[a(n-1)-floor(-a(n-2))]` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A091157.P11079310495075933901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091157.P11079310495075933901

/-! ## A091157.P9606026054607698883

`p?[a(n-1)-ceil(-a(n-2))]` with `a(0)=3, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A091157.P9606026054607698883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091157.P9606026054607698883

/-! ## A091157.P9741777384772943263

`p?[a(n-1)-round(-a(n-2))]` with `a(0)=3, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A091157.P9741777384772943263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091157.P9741777384772943263

/-!
# A091161: Number of primes of the form 12k + 1 less than 10^n.

The programs for A091161, there is no canonical definition to state claims against.
-/

/-! ## A091161.P8399586969747880592

`A091098(n+1)-A091162(n+1)`
-/

namespace A091161.P8399586969747880592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) - A091162 (n + 1)

end

end A091161.P8399586969747880592

/-! ## A091161.P9210204044366327837

`A091115(n+1)-A091163(n+1)`
-/

namespace A091161.P9210204044366327837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091115 (n + 1) - A091163 (n + 1)

end

end A091161.P9210204044366327837

/-! ## A091161.P1398875468219053777

`A091115(n+1)%record[A091163(A304101(n))]`
-/

namespace A091161.P1398875468219053777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091163 (A304101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091115 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A091161.P1398875468219053777

/-! ## A091161.P15321693555471904633

`A091098(A000027(n+1))%A091162(n+1)`
-/

namespace A091161.P15321693555471904633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091098 (A000027 (n + 1)).toNat) (A091162 (n + 1))

end

end A091161.P15321693555471904633

/-! ## A091161.P5918655081821451902

`A091115(A000027(n+1))%A091163(n+1)`
-/

namespace A091161.P5918655081821451902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091115 (A000027 (n + 1)).toNat) (A091163 (n + 1))

end

end A091161.P5918655081821451902

/-!
# A091162: Number of primes of the form 12k + 5 less than 10^n.

The programs for A091162, there is no canonical definition to state claims against.
-/

/-! ## A091162.P10782529249627794732

`A091098(n+1)-A091161(n+1)`
-/

namespace A091162.P10782529249627794732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) - A091161 (n + 1)

end

end A091162.P10782529249627794732

/-! ## A091162.P5679478507082620096

`A091119(n+1)-A091164(n+1)`
-/

namespace A091162.P5679478507082620096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091119 (n + 1) - A091164 (n + 1)

end

end A091162.P5679478507082620096

/-! ## A091162.P4931347477042272087

`A091098(n+1)+A057428(n)*A091161(n+1)`
-/

namespace A091162.P4931347477042272087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + A057428 n * A091161 (n + 1)

end

end A091162.P4931347477042272087

/-! ## A091162.P3702674053941496729

`A091098(n+1)+A091163(n+1)-A091115(n+1)`
-/

namespace A091162.P3702674053941496729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A091163 (n + 1) - A091115 (n + 1))

end

end A091162.P3702674053941496729

/-! ## A091162.P17740538920022825277

`A091116(n+1)-(A091164(n+1)+1)`
-/

namespace A091162.P17740538920022825277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091116 (n + 1) - (A091164 (n + 1) + 1)

end

end A091162.P17740538920022825277

/-!
# A091163: Number of primes of the form 12k + 7 less than 10^n.

The programs for A091163, there is no canonical definition to state claims against.
-/

/-! ## A091163.P15564379062701934954

`A091115(n+1)-A091161(n+1)`
-/

namespace A091163.P15564379062701934954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091115 (n + 1) - A091161 (n + 1)

end

end A091163.P15564379062701934954

/-! ## A091163.P5004580916261681818

`A091099(n+1)-(A091164(n+1)+1)`
-/

namespace A091163.P5004580916261681818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A091164 (n + 1) + 1)

end

end A091163.P5004580916261681818

/-! ## A091163.P16777912397181290634

`A091115(n+1)+A057428(n)*A091161(n+1)`
-/

namespace A091163.P16777912397181290634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091115 (n + 1) + A057428 n * A091161 (n + 1)

end

end A091163.P16777912397181290634

/-! ## A091163.P16924611075464799177

`A091115(n+1)+A091162(n+1)-A091098(n+1)`
-/

namespace A091163.P16924611075464799177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091115 (n + 1) + (A091162 (n + 1) - A091098 (n + 1))

end

end A091163.P16924611075464799177

/-! ## A091163.P5716881800224002481

`A091099(n+1)+A091162(n+1)-A091116(n+1)`
-/

namespace A091163.P5716881800224002481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) + (A091162 (n + 1) - A091116 (n + 1))

end

end A091163.P5716881800224002481

/-!
# A091164: Number of primes of the form 12k + 11 less than 10^n.

The programs for A091164, there is no canonical definition to state claims against.
-/

/-! ## A091164.P6398264043532502

`A091119(n+1)-A091162(n+1)`
-/

namespace A091164.P6398264043532502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091119 (n + 1) - A091162 (n + 1)

end

end A091164.P6398264043532502

/-! ## A091164.P3341454827308050916

`A091099(n+1)-(A091163(n+1)+1)`
-/

namespace A091164.P3341454827308050916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A091163 (n + 1) + 1)

end

end A091164.P3341454827308050916

/-! ## A091164.P14273967214523402112

`A091119(n+1)+A091161(n+1)-A091098(n+1)`
-/

namespace A091164.P14273967214523402112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091119 (n + 1) + (A091161 (n + 1) - A091098 (n + 1))

end

end A091164.P14273967214523402112

/-! ## A091164.P4864518774464888584

`A091098(n+1)+A093153(n+1)-A091163(n+1)`
-/

namespace A091164.P4864518774464888584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A093153 (n + 1) - A091163 (n + 1))

end

end A091164.P4864518774464888584

/-! ## A091164.P1566537636302051367

`A091116(n+1)-(A091162(n+1)+1)`
-/

namespace A091164.P1566537636302051367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091116 (n + 1) - (A091162 (n + 1) + 1)

end

end A091164.P1566537636302051367

/-!
# A091165: Number of primes of the form 30k + 1 less than 10^n.

The programs for A091165, there is no canonical definition to state claims against.
-/

/-! ## A091165.P6943229893223131959

`A073505(n+1)-A091167(n+1)`
-/

namespace A091165.P6943229893223131959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (n + 1) - A091167 (n + 1)

end

end A091165.P6943229893223131959

/-! ## A091165.P18379901530943207878

`∑[A087630(n+1)]-A091167(n+1)`
-/

namespace A091165.P18379901530943207878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091167 (n + 1)

end

end A091165.P18379901530943207878

/-!
# A091166: Number of primes of the form 30k + 7 less than 10^n.

The programs for A091166, there is no canonical definition to state claims against.
-/

/-! ## A091166.P14699845111582786418

`A073507(n+1)-A091169(n+1)`
-/

namespace A091166.P14699845111582786418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073507 (n + 1) - A091169 (n + 1)

end

end A091166.P14699845111582786418

/-! ## A091166.P9758578289306772724

`A091117(n+1)-(A091169(n+1)+1)`
-/

namespace A091166.P9758578289306772724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091117 (n + 1) - (A091169 (n + 1) + 1)

end

end A091166.P9758578289306772724

/-! ## A091166.P14207658948648575073

`∑[A087632(n+1)]-A091169(n+1)`
-/

namespace A091166.P14207658948648575073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091169 (n + 1)

end

end A091166.P14207658948648575073

/-!
# A091167: Number of primes of the form 30k + 11 less than 10^n.

The programs for A091167, there is no canonical definition to state claims against.
-/

/-! ## A091167.P9163521860435533062

`A073505(n+1)-A091165(n+1)`
-/

namespace A091167.P9163521860435533062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (n + 1) - A091165 (n + 1)

end

end A091167.P9163521860435533062

/-! ## A091167.P8398821071950106249

`∑[A087630(n+1)]-A091165(n+1)`
-/

namespace A091167.P8398821071950106249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091165 (n + 1)

end

end A091167.P8398821071950106249

/-! ## A091167.P4250771597028130812

`A091166(n+1)-A326702(A000079(n))`
-/

namespace A091167.P4250771597028130812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091166 (n + 1) - A326702 (A000079 n).toNat

end

end A091167.P4250771597028130812

/-!
# A091168: Number of primes of the form 30k + 13 less than 10^n.

The programs for A091168, there is no canonical definition to state claims against.
-/

/-! ## A091168.P16809519519034348262

`A073506(n+1)-(A091171(n+1)+1)`
-/

namespace A091168.P16809519519034348262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073506 (n + 1) - (A091171 (n + 1) + 1)

end

end A091168.P16809519519034348262

/-! ## A091168.P6424622361184430734

`∑[A087631(n+1)]-(A091171(n+1)+1)`
-/

namespace A091168.P6424622361184430734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A091171 (n + 1) + 1)

end

end A091168.P6424622361184430734

/-!
# A091169: Number of primes of the form 30k + 17 less than 10^n.

The programs for A091169, there is no canonical definition to state claims against.
-/

/-! ## A091169.P5114179348555041372

`A073507(n+1)-A091166(n+1)`
-/

namespace A091169.P5114179348555041372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073507 (n + 1) - A091166 (n + 1)

end

end A091169.P5114179348555041372

/-! ## A091169.P12587753871638168752

`A091117(n+1)-(A091166(n+1)+1)`
-/

namespace A091169.P12587753871638168752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091117 (n + 1) - (A091166 (n + 1) + 1)

end

end A091169.P12587753871638168752

/-! ## A091169.P1414887555159030777

`∑[A087632(n+1)]-A091166(n+1)`
-/

namespace A091169.P1414887555159030777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091166 (n + 1)

end

end A091169.P1414887555159030777

/-!
# A091170: Number of primes of the form 30k + 19 less than 10^n.

The programs for A091170, there is no canonical definition to state claims against.
-/

/-! ## A091170.P618943472900510669

`A073508(n+1)-A091172(n+1)`
-/

namespace A091170.P618943472900510669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (n + 1) - A091172 (n + 1)

end

end A091170.P618943472900510669

/-! ## A091170.P6458316592139037451

`A073508(n+1)+A057428(n)*A091172(n+1)`
-/

namespace A091170.P6458316592139037451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (n + 1) + A057428 n * A091172 (n + 1)

end

end A091170.P6458316592139037451

/-! ## A091170.P15887577419681069888

`∑[A087633(n+1)]-A091172(n+1)`
-/

namespace A091170.P15887577419681069888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091172 (n + 1)

end

end A091170.P15887577419681069888

/-!
# A091171: Number of primes of the form 30k + 23 less than 10^n.

The programs for A091171, there is no canonical definition to state claims against.
-/

/-! ## A091171.P2609846100869859514

`A073506(n+1)-(A091168(n+1)+1)`
-/

namespace A091171.P2609846100869859514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073506 (n + 1) - (A091168 (n + 1) + 1)

end

end A091171.P2609846100869859514

/-! ## A091171.P13928769977963370215

`∑[A087631(n+1)]-(A091168(n+1)+1)`
-/

namespace A091171.P13928769977963370215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A091168 (n + 1) + 1)

end

end A091171.P13928769977963370215

/-!
# A091172: Number of primes of the form 30k + 29 less than 10^n.

The programs for A091172, there is no canonical definition to state claims against.
-/

/-! ## A091172.P244636240433041185

`A073508(n+1)-A091170(n+1)`
-/

namespace A091172.P244636240433041185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (n + 1) - A091170 (n + 1)

end

end A091172.P244636240433041185

/-! ## A091172.P17997969743619443588

`A073508(n+1)+A057428(n)*A091170(n+1)`
-/

namespace A091172.P17997969743619443588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (n + 1) + A057428 n * A091170 (n + 1)

end

end A091172.P17997969743619443588

/-! ## A091172.P8822032568053099542

`∑[A087633(n+1)]-A091170(n+1)`
-/

namespace A091172.P8822032568053099542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091170 (n + 1)

end

end A091172.P8822032568053099542

/-!
# A091173: Triangle, read by rows, where the n-th row lists the coefficients of the polynomial of degree n, with root -1, that generates the n-th diagonal of this sequence.

The programs for A091173, there is no canonical definition to state claims against.
-/

/-! ## A091173.P11548815592052887904

`A319951(A126970(n)+A124445(n))`
-/

namespace A091173.P11548815592052887904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A126970 n + A124445 n).toNat

end

end A091173.P11548815592052887904

/-! ## A091173.P8587432819212677424

`A048766(A110877(n)*A186366(n+1))`
-/

namespace A091173.P8587432819212677424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A110877 n * A186366 (n + 1)).toNat

end

end A091173.P8587432819212677424

/-! ## A091173.P7601038419261616407

`ceil(A200139(n)/2)%A128155(3*n+5)`
-/

namespace A091173.P7601038419261616407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A200139 n : ℚ) / 2⌉ (A128155 (3 * n + 5))

end

end A091173.P7601038419261616407

/-! ## A091173.P418891174171554295

`A089762(A118024(n))*A125790(n)`
-/

namespace A091173.P418891174171554295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089762 (A118024 n).toNat * A125790 n

end

end A091173.P418891174171554295

/-!
# A091174: Leftmost column of triangle A091173, in which the n-th row lists the coefficients of the polynomial that generates the n-th diagonal.

The programs for A091174, there is no canonical definition to state claims against.
-/

/-! ## A091174.P1194843778957444800

`A091173(∑[n])`
-/

namespace A091174.P1194843778957444800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091174.P1194843778957444800

/-! ## A091174.P329402417599539260

`or(A000007(n), A091173(A000217(n)))`
-/

namespace A091174.P329402417599539260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091173 (A000217 n).toNat)

end

end A091174.P329402417599539260

/-! ## A091174.P10881356102356912696

`A102677(n)!*A091173(A000217(n))`
-/

namespace A091174.P10881356102356912696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102677 n).toNat : ℤ) * A091173 (A000217 n).toNat

end

end A091174.P10881356102356912696

/-! ## A091174.P10400146954269356132

`lcm(A091173(A000217(n)), A290105(n+1))`
-/

namespace A091174.P10400146954269356132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091173 (A000217 n).toNat) (A290105 (n + 1))

end

end A091174.P10400146954269356132

/-! ## A091174.P8321286684611053139

`A007318(A000217(n+5))*A091173(A000217(n))`
-/

namespace A091174.P8321286684611053139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 5)).toNat * A091173 (A000217 n).toNat

end

end A091174.P8321286684611053139

/-!
# A091175: Row sums of triangle A091173, in which the n-th row lists the coefficients of the polynomial that generates the n-th diagonal.

The programs for A091175, there is no canonical definition to state claims against.
-/

/-! ## A091175.P103633599189553058

`A091173(∑[n+1]+1)`
-/

namespace A091175.P103633599189553058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091173 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091175.P103633599189553058

/-! ## A091175.P11173353031286660534

`record[A091173(A056536(n+1))]`
-/

namespace A091175.P11173353031286660534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091173 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091175.P11173353031286660534

/-! ## A091175.P508410188224673812

`record[A091173(n)/A036073(n)]`
-/

namespace A091175.P508410188224673812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091173 n : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091175.P508410188224673812

/-! ## A091175.P11344029449237075940

`record[A091173(n+2)/A091173(n)]`
-/

namespace A091175.P11344029449237075940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091173 (n + 2) : ℚ) / (A091173 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091175.P11344029449237075940

/-! ## A091175.P14052976477923479969

`or(C(2, n+2), A091173(A000124(n+1)))`
-/

namespace A091175.P14052976477923479969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A091173 (A000124 (n + 1)).toNat)

end

end A091175.P14052976477923479969

/-!
# A091176: Numbers n such that prime(n) is of the form 2*k^2 - 1.

The programs for A091176, there is no canonical definition to state claims against.
-/

/-! ## A091176.P14351759321267290959

`A278114(A066049(n+1))`
-/

namespace A091176.P14351759321267290959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (A066049 (n + 1)).toNat

end

end A091176.P14351759321267290959

/-! ## A091176.P6609030970845895927

`A278114(A160697(n+2))`
-/

namespace A091176.P6609030970845895927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (A160697 (n + 2)).toNat

end

end A091176.P6609030970845895927

/-! ## A091176.P10627321410357407364

`A278114(A090697(n+1)/2)`
-/

namespace A091176.P10627321410357407364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (SequenceMachineLib.roundAway ((A090697 (n + 1) : ℚ) / 2)).toNat

end

end A091176.P10627321410357407364

/-! ## A091176.P14110136595210088219

`A278114(A110558(n+1)/4)`
-/

namespace A091176.P14110136595210088219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (SequenceMachineLib.roundAway ((A110558 (n + 1) : ℚ) / 4)).toNat

end

end A091176.P14110136595210088219

/-! ## A091176.P9146374056781039279

`A278114(A065033(A090697(n+1)))`
-/

namespace A091176.P9146374056781039279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (A065033 (A090697 (n + 1)).toNat).toNat

end

end A091176.P9146374056781039279

/-! ## A091176.P4461199239168125086

`A000720(p?[abs(1-2*n²)])`
-/

namespace A091176.P4461199239168125086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091176.P4461199239168125086

/-! ## A091176.P4760790680991497975

`A061395(p?[A056220(n)])`
-/

namespace A091176.P4760790680991497975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091176.P4760790680991497975

/-! ## A091176.P2738074672361525792

`A000720(A066436(n+1))`
-/

namespace A091176.P2738074672361525792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066436 (n + 1)).toNat

end

end A091176.P2738074672361525792

/-! ## A091176.P13475555023908787949

`A000720(2*A066049(n+1)²)`
-/

namespace A091176.P13475555023908787949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A066049 (n + 1) ^ 2).toNat

end

end A091176.P13475555023908787949

/-! ## A091176.P11523121382382902870

`A061395(p?[A036406(2*n)-1])`
-/

namespace A091176.P11523121382382902870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091176.P11523121382382902870

/-!
# A091177: Numbers m such that the m-th prime is of the form 3*k-1.

The programs for A091177, the canonical program `A091177.P17069457608177262001` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091177 has offset 1).

The definition of A091177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091177.P7315721246953323741

`A138969(n+1)+A057427(n)`
-/

namespace A091177.P7315721246953323741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138969 (n + 1) + A057427 n

end

end A091177.P7315721246953323741

namespace A091177

/-- `A138969(n+1)+A057427(n)` -/
def P7315721246953323741.Spec : Prop :=
  ∀ n, P7315721246953323741.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P371551891033239897

`A138969(n+1)-A057428(n)`
-/

namespace A091177.P371551891033239897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138969 (n + 1) - A057428 n

end

end A091177.P371551891033239897

namespace A091177

/-- `A138969(n+1)-A057428(n)` -/
def P371551891033239897.Spec : Prop :=
  ∀ n, P371551891033239897.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P4483705797286111782

`A133677((n+1)%(2*n+1)+1)`
-/

namespace A091177.P4483705797286111782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 ((n + 1) % (2 * n + 1) + 1)

end

end A091177.P4483705797286111782

namespace A091177

/-- `A133677((n+1)%(2*n+1)+1)` -/
def P4483705797286111782.Spec : Prop :=
  ∀ n, P4483705797286111782.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P6193937930153376240

`A133677(A065475(n+1))`
-/

namespace A091177.P6193937930153376240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (A065475 (n + 1)).toNat

end

end A091177.P6193937930153376240

namespace A091177

/-- `A133677(A065475(n+1))` -/
def P6193937930153376240.Spec : Prop :=
  ∀ n, P6193937930153376240.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P2457531252217845592

`A133677(A181440(n+2))`
-/

namespace A091177.P2457531252217845592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (A181440 (n + 2)).toNat

end

end A091177.P2457531252217845592

namespace A091177

/-- `A133677(A181440(n+2))` -/
def P2457531252217845592.Spec : Prop :=
  ∀ n, P2457531252217845592.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P620688750270262970

`A133677(A184985(n+2))`
-/

namespace A091177.P620688750270262970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (A184985 (n + 2)).toNat

end

end A091177.P620688750270262970

namespace A091177

/-- `A133677(A184985(n+2))` -/
def P620688750270262970.Spec : Prop :=
  ∀ n, P620688750270262970.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P17069457608177262001

`lt[1, A039701(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091177

/-- `lt[1, A039701(n+1)]+1` -/
def P17069457608177262001.Spec : Prop :=
  ∀ n, (P17069457608177262001.a n : ℤ) = A091177 (n + 1)

theorem P17069457608177262001.correct : P17069457608177262001.Spec := by
  intro n
  simp only [A091177, Nat.add_sub_cancel]

end A091177

/-! ## A091177.P15518809809026423619

`lt[1, A227991(n+1)]+1`
-/

namespace A091177.P15518809809026423619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091177.P15518809809026423619

namespace A091177

/-- `lt[1, A227991(n+1)]+1` -/
def P15518809809026423619.Spec : Prop :=
  ∀ n, (P15518809809026423619.a n : ℤ) = A091177 (n + 1)

end A091177

/-! ## A091177.P9705272505611384147

`lt[1, A000040(n+1)%3]+1`
-/

namespace A091177.P9705272505611384147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091177.P9705272505611384147

namespace A091177

/-- `lt[1, A000040(n+1)%3]+1` -/
def P9705272505611384147.Spec : Prop :=
  ∀ n, (P9705272505611384147.a n : ℤ) = A091177 (n + 1)

end A091177

/-! ## A091177.P16508513825602313187

`A065475(A138969(n+1))`
-/

namespace A091177.P16508513825602313187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A138969 (n + 1)).toNat

end

end A091177.P16508513825602313187

namespace A091177

/-- `A065475(A138969(n+1))` -/
def P16508513825602313187.Spec : Prop :=
  ∀ n, P16508513825602313187.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P15809948392008892846

`filter[A319702(2*n+1), A132194(#)]`
-/

namespace A091177.P15809948392008892846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A091177.P15809948392008892846

namespace A091177

/-- `filter[A319702(2*n+1), A132194(#)]` -/
def P15809948392008892846.Spec : Prop :=
  ∀ n, P15809948392008892846.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P6828968922232709213

`filter[A323161(2*n+1), A132194(#)]`
-/

namespace A091177.P6828968922232709213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A091177.P6828968922232709213

namespace A091177

/-- `filter[A323161(2*n+1), A132194(#)]` -/
def P6828968922232709213.Spec : Prop :=
  ∀ n, P6828968922232709213.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P6037679207888228083

`A057427(n)+eq[A057427(n), A068503(n+1)]`
-/

namespace A091177.P6037679207888228083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A091177.P6037679207888228083

namespace A091177

/-- `A057427(n)+eq[A057427(n), A068503(n+1)]` -/
def P6037679207888228083.Spec : Prop :=
  ∀ n, P6037679207888228083.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P8162807500813414191

`A057427(n)+eq[A057427(n), A132194(n+1)]`
-/

namespace A091177.P8162807500813414191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A091177.P8162807500813414191

namespace A091177

/-- `A057427(n)+eq[A057427(n), A132194(n+1)]` -/
def P8162807500813414191.Spec : Prop :=
  ∀ n, P8162807500813414191.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P16339906682238711619

`record[A061395(3*n+2)]`
-/

namespace A091177.P16339906682238711619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091177.P16339906682238711619

namespace A091177

/-- `record[A061395(3*n+2)]` -/
def P16339906682238711619.Spec : Prop :=
  ∀ n, P16339906682238711619.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P13005054192065084025

`A000720(p?[3*n-1])`
-/

namespace A091177.P13005054192065084025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091177.P13005054192065084025

namespace A091177

/-- `A000720(p?[3*n-1])` -/
def P13005054192065084025.Spec : Prop :=
  ∀ n, P13005054192065084025.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P3056579716888931133

`lt[1, record[A006530(n+1)]%3]`
-/

namespace A091177.P3056579716888931133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091177.P3056579716888931133

namespace A091177

/-- `lt[1, record[A006530(n+1)]%3]` -/
def P3056579716888931133.Spec : Prop :=
  ∀ n, (P3056579716888931133.a n : ℤ) = A091177 (n + 1)

end A091177

/-! ## A091177.P12171218029628061343

`lt[1, record[A000010(n+1)+1]%3]+1`
-/

namespace A091177.P12171218029628061343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091177.P12171218029628061343

namespace A091177

/-- `lt[1, record[A000010(n+1)+1]%3]+1` -/
def P12171218029628061343.Spec : Prop :=
  ∀ n, (P12171218029628061343.a n : ℤ) = A091177 (n + 1)

end A091177

/-! ## A091177.P16245587336244508606

`A000720(A003627(n+1))`
-/

namespace A091177.P16245587336244508606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A003627 (n + 1)).toNat

end

end A091177.P16245587336244508606

namespace A091177

/-- `A000720(A003627(n+1))` -/
def P16245587336244508606.Spec : Prop :=
  ∀ n, P16245587336244508606.a n = A091177 (n + 1)

end A091177

/-! ## A091177.P8221746266587223310

`A000720(A171747(n+1)-1)`
-/

namespace A091177.P8221746266587223310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A171747 (n + 1) - 1).toNat

end

end A091177.P8221746266587223310

namespace A091177

/-- `A000720(A171747(n+1)-1)` -/
def P8221746266587223310.Spec : Prop :=
  ∀ n, P8221746266587223310.a n = A091177 (n + 1)

end A091177

/-!
# A091178: Numbers k such that k-th prime is of the form 6*m+1.

The programs for A091178, the canonical program `A091178.P17670734462985012813` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091178 has offset 1).

The definition of A091178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091178.P2455260651259875066

`A138968(n+1)+1`
-/

namespace A091178.P2455260651259875066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138968 (n + 1) + 1

end

end A091178.P2455260651259875066

namespace A091178

/-- `A138968(n+1)+1` -/
def P2455260651259875066.Spec : Prop :=
  ∀ n, P2455260651259875066.a n = A091178 (n + 1)

end A091178

/-! ## A091178.P11140410540981995321

`A138972(n+1)+2`
-/

namespace A091178.P11140410540981995321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138972 (n + 1) + 2

end

end A091178.P11140410540981995321

namespace A091178

/-- `A138972(n+1)+2` -/
def P11140410540981995321.Spec : Prop :=
  ∀ n, P11140410540981995321.a n = A091178 (n + 1)

end A091178

/-! ## A091178.P17670734462985012813

`∪[A160592(n+1), A160594(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091178

/-- `∪[A160592(n+1), A160594(n+1)]` -/
def P17670734462985012813.Spec : Prop :=
  ∀ n, (P17670734462985012813.a n : ℤ) = A091178 (n + 1)

theorem P17670734462985012813.correct : P17670734462985012813.Spec := by
  intro n
  simp only [A091178, Nat.add_sub_cancel]

end A091178

/-! ## A091178.P4971640266585439539

`A171820(n+2)`
-/

namespace A091178.P4971640266585439539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 2)

end

end A091178.P4971640266585439539

namespace A091178

/-- `A171820(n+2)` -/
def P4971640266585439539.Spec : Prop :=
  ∀ n, P4971640266585439539.a n = A091178 (n + 1)

end A091178

/-! ## A091178.P8256037359013790935

`A009056(A138972(n+1))`
-/

namespace A091178.P8256037359013790935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A138972 (n + 1)).toNat

end

end A091178.P8256037359013790935

namespace A091178

/-- `A009056(A138972(n+1))` -/
def P8256037359013790935.Spec : Prop :=
  ∀ n, P8256037359013790935.a n = A091178 (n + 1)

end A091178

/-! ## A091178.P8755244968680043736

`A020725(A138968(n+1))`
-/

namespace A091178.P8755244968680043736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A138968 (n + 1)).toNat

end

end A091178.P8755244968680043736

namespace A091178

/-- `A020725(A138968(n+1))` -/
def P8755244968680043736.Spec : Prop :=
  ∀ n, P8755244968680043736.a n = A091178 (n + 1)

end A091178

/-! ## A091178.P1965523921962227928

`filter[n+1, A099618(#)]`
-/

namespace A091178.P1965523921962227928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099618 (f1 j) = 1) n)

end

end A091178.P1965523921962227928

namespace A091178

/-- `filter[n+1, A099618(#)]` -/
def P1965523921962227928.Spec : Prop :=
  ∀ n, (P1965523921962227928.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P6717948037219210453

`eq[0, A132194(n+1)]+1`
-/

namespace A091178.P6717948037219210453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P6717948037219210453

namespace A091178

/-- `eq[0, A132194(n+1)]+1` -/
def P6717948037219210453.Spec : Prop :=
  ∀ n, (P6717948037219210453.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P7124923937211676956

`eq[1, A039701(n+1)]+1`
-/

namespace A091178.P7124923937211676956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P7124923937211676956

namespace A091178

/-- `eq[1, A039701(n+1)]+1` -/
def P7124923937211676956.Spec : Prop :=
  ∀ n, (P7124923937211676956.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P11089445965390320591

`eq[1, A039704(n+1)]+1`
-/

namespace A091178.P11089445965390320591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P11089445965390320591

namespace A091178

/-- `eq[1, A039704(n+1)]+1` -/
def P11089445965390320591.Spec : Prop :=
  ∀ n, (P11089445965390320591.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P665468175961997697

`eq[1, A073637(n+1)]+1`
-/

namespace A091178.P665468175961997697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P665468175961997697

namespace A091178

/-- `eq[1, A073637(n+1)]+1` -/
def P665468175961997697.Spec : Prop :=
  ∀ n, (P665468175961997697.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P10605343110278016184

`eq[1, A099618(n+1)]+1`
-/

namespace A091178.P10605343110278016184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P10605343110278016184

namespace A091178

/-- `eq[1, A099618(n+1)]+1` -/
def P10605343110278016184.Spec : Prop :=
  ∀ n, (P10605343110278016184.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P4438107354054033017

`eq[1, A134323(n+1)]+1`
-/

namespace A091178.P4438107354054033017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P4438107354054033017

namespace A091178

/-- `eq[1, A134323(n+1)]+1` -/
def P4438107354054033017.Spec : Prop :=
  ∀ n, (P4438107354054033017.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P5961157725482942680

`lt[1, A068503(n+1)]+1`
-/

namespace A091178.P5961157725482942680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091178.P5961157725482942680

namespace A091178

/-- `lt[1, A068503(n+1)]+1` -/
def P5961157725482942680.Spec : Prop :=
  ∀ n, (P5961157725482942680.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P279610698910426746

`lt[1, A272198(n+1)²]+1`
-/

namespace A091178.P279610698910426746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091178.P279610698910426746

namespace A091178

/-- `lt[1, A272198(n+1)²]+1` -/
def P279610698910426746.Spec : Prop :=
  ∀ n, (P279610698910426746.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P2068045669427750082

`lt[1, A272203(n+1)²]+1`
-/

namespace A091178.P2068045669427750082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091178.P2068045669427750082

namespace A091178

/-- `lt[1, A272203(n+1)²]+1` -/
def P2068045669427750082.Spec : Prop :=
  ∀ n, (P2068045669427750082.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P5279570709148522271

`eq[1, A000040(n+1)%3]+1`
-/

namespace A091178.P5279570709148522271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091178.P5279570709148522271

namespace A091178

/-- `eq[1, A000040(n+1)%3]+1` -/
def P5279570709148522271.Spec : Prop :=
  ∀ n, (P5279570709148522271.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P13532591394402808023

`lt[1, A040976(n+1)%3]+1`
-/

namespace A091178.P13532591394402808023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091178.P13532591394402808023

namespace A091178

/-- `lt[1, A040976(n+1)%3]+1` -/
def P13532591394402808023.Spec : Prop :=
  ∀ n, (P13532591394402808023.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P12253096110494112307

`lt[1, (A000040(abs(1-n)+1)+1)%3]`
-/

namespace A091178.P12253096110494112307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (|1 - (n : ℤ)| + 1).toNat + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091178.P12253096110494112307

namespace A091178

/-- `lt[1, (A000040(abs(1-n)+1)+1)%3]` -/
def P12253096110494112307.Spec : Prop :=
  ∀ n, (P12253096110494112307.a n : ℤ) = A091178 (n + 1)

end A091178

/-! ## A091178.P17285155522216283329

`eq[A008864(n+1), A263483(n+1)]+1`
-/

namespace A091178.P17285155522216283329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091178.P17285155522216283329

namespace A091178

/-- `eq[A008864(n+1), A263483(n+1)]+1` -/
def P17285155522216283329.Spec : Prop :=
  ∀ n, (P17285155522216283329.a n : ℤ) = A091178 (n + 1)

end A091178

/-!
# A091179: A088878 indexed by A000040.

The programs for A091179, there is no canonical definition to state claims against.
-/

/-! ## A091179.P780981162441022105

`eq[3, A103959(n+1)]+1`
-/

namespace A091179.P780981162441022105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091179.P780981162441022105

/-! ## A091179.P1702964330893759896

`record[(n+2)/A007913(A103959(n+2)+1)]`
-/

namespace A091179.P1702964330893759896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A007913 (A103959 (n + 2) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091179.P1702964330893759896

/-! ## A091179.P2650751410678121713

`A000720(A088878(n+1))`
-/

namespace A091179.P2650751410678121713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088878 (n + 1)).toNat

end

end A091179.P2650751410678121713

/-! ## A091179.P8242497175924680691

`A099801(A174100(n+1))`
-/

namespace A091179.P8242497175924680691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A174100 (n + 1)).toNat

end

end A091179.P8242497175924680691

/-! ## A091179.P9707825011356272836

`A061395(2*A088878(n+1))`
-/

namespace A091179.P9707825011356272836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A088878 (n + 1)).toNat

end

end A091179.P9707825011356272836

/-! ## A091179.P5741218819826817876

`A061395(lcm(2, A088878(n+1)))`
-/

namespace A091179.P5741218819826817876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A088878 (n + 1)))

end

end A091179.P5741218819826817876

/-! ## A091179.P13720001453933193263

`A061395(A091180(n+1)+2)`
-/

namespace A091179.P13720001453933193263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A091180 (n + 1) + 2).toNat

end

end A091179.P13720001453933193263

/-! ## A091179.P5756948513994710423

`eq[2, A000005(A112773(n+1)-2)]`
-/

namespace A091179.P5756948513994710423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A112773 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091179.P5756948513994710423

/-! ## A091179.P10846229203874368268

`eq[1, A001222(3*(record[A006530(n+1)]-1)+1)]`
-/

namespace A091179.P10846229203874368268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091179.P10846229203874368268

/-! ## A091179.P15509803850233711093

`A056239(p?[A034936(n+1)+2])`
-/

namespace A091179.P15509803850233711093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091179.P15509803850233711093

/-! ## A091179.P12569330712051533033

`eq[1, A001222(3*lt[n, A014963(n+1)]+1)]`
-/

namespace A091179.P12569330712051533033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091179.P12569330712051533033

/-! ## A091179.P9801816859063534979

`eq[2, A089452(n+2)]+2`
-/

namespace A091179.P9801816859063534979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089452 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A091179.P9801816859063534979

/-! ## A091179.P7497354966452773129

`eq[1, A289207(A249420(n+1))]+1`
-/

namespace A091179.P7497354966452773129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A249420 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091179.P7497354966452773129

/-! ## A091179.P1323273844401497116

`A241917(A091180(n+1)+2)+2`
-/

namespace A091179.P1323273844401497116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A091180 (n + 1) + 2).toNat + 2

end

end A091179.P1323273844401497116

/-! ## A091179.P9883001601369756264

`A003963(A091180(n+1)+2)/2`
-/

namespace A091179.P9883001601369756264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A091180 (n + 1) + 2).toNat : ℚ) / 2

end

end A091179.P9883001601369756264

/-!
# A091180: Primes of the form 3*p - 2 such that p is a prime.

The programs for A091180, there is no canonical definition to state claims against.
-/

/-! ## A091180.P17882209738064928724

`3*A088878(n+1)-2`
-/

namespace A091180.P17882209738064928724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088878 (n + 1) - 2

end

end A091180.P17882209738064928724

/-! ## A091180.P7339619493162081352

`6*A174100(n+1)+1`
-/

namespace A091180.P7339619493162081352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A174100 (n + 1) + 1

end

end A091180.P7339619493162081352

/-! ## A091180.P5618267908113093751

`A259677(n+1)/A088878(n+1)`
-/

namespace A091180.P5618267908113093751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259677 (n + 1) : ℚ) / (A088878 (n + 1) : ℚ)

end

end A091180.P5618267908113093751

/-! ## A091180.P2567148891684146060

`p?[A163628(n+1)-1]`
-/

namespace A091180.P2567148891684146060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163628 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P2567148891684146060

/-! ## A091180.P2479953808720680722

`p?[A001748(n+1)-2]`
-/

namespace A091180.P2479953808720680722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P2479953808720680722

/-! ## A091180.P16387471932883038214

`p?[3*p?[2*n+1]-2]`
-/

namespace A091180.P16387471932883038214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P16387471932883038214

/-! ## A091180.P11605904251315556046

`p?[2*A179893(n+2)+1]`
-/

namespace A091180.P11605904251315556046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179893 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P11605904251315556046

/-! ## A091180.P14984665160382520896

`p?[2*A168565(n+2)-1]`
-/

namespace A091180.P14984665160382520896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168565 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P14984665160382520896

/-! ## A091180.P11510654861485134125

`p?[A176003(n+1)]`
-/

namespace A091180.P11510654861485134125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P11510654861485134125

/-! ## A091180.P14537563593559861416

`p?[A112773(n+1)-2]`
-/

namespace A091180.P14537563593559861416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P14537563593559861416

/-! ## A091180.P4022757986208602056

`p?[3*A000040(n+1)-2]`
-/

namespace A091180.P4022757986208602056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P4022757986208602056

/-! ## A091180.P16469559541954730899

`p?[3*A040976(n+1)+4]`
-/

namespace A091180.P16469559541954730899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040976 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P16469559541954730899

/-! ## A091180.P6923954095219598146

`∩[A063637(n+1), A176003(n+1)]`
-/

namespace A091180.P6923954095219598146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091180.P6923954095219598146

/-! ## A091180.P4724765160526329205

`p?[A000040(n+1)+A100484(n+1)-2]`
-/

namespace A091180.P4724765160526329205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100484 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P4724765160526329205

/-! ## A091180.P14245135093447803640

`p?[A000040(n+1)+2*A006093(n+1)]`
-/

namespace A091180.P14245135093447803640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P14245135093447803640

/-! ## A091180.P15522002789284767908

`p?[A000040(n+1)+2*A039915(n+1)]`
-/

namespace A091180.P15522002789284767908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P15522002789284767908

/-! ## A091180.P10425825690480477177

`∩[A063637(n+1), A081765(n+1)]`
-/

namespace A091180.P10425825690480477177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091180.P10425825690480477177

/-! ## A091180.P13814708988130915212

`∩[A063637(n+1), A213382(n+1)]`
-/

namespace A091180.P13814708988130915212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091180.P13814708988130915212

/-! ## A091180.P3813090989637446022

`p?[record[A020639(n+1)+2*n]]`
-/

namespace A091180.P3813090989637446022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091180.P3813090989637446022

/-!
# A091181: A091180 indexed by A000040.

The programs for A091181, there is no canonical definition to state claims against.
-/

/-! ## A091181.P194245194137297429

`A000720(A091180(n+1))`
-/

namespace A091181.P194245194137297429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A091180 (n + 1)).toNat

end

end A091181.P194245194137297429

/-! ## A091181.P9172562506386693043

`A020901(A091179(n+1))`
-/

namespace A091181.P9172562506386693043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020901 (A091179 (n + 1)).toNat

end

end A091181.P9172562506386693043

/-! ## A091181.P4330658386839600661

`A061395(p?[A091180(n+1)])`
-/

namespace A091181.P4330658386839600661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091181.P4330658386839600661

/-! ## A091181.P5919815008314204745

`A000720(3*A088878(n+1))`
-/

namespace A091181.P5919815008314204745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * A088878 (n + 1)).toNat

end

end A091181.P5919815008314204745

/-! ## A091181.P15683614492471652825

`A000720(p?[3*A000040(n+1)-2])`
-/

namespace A091181.P15683614492471652825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091181.P15683614492471652825

/-! ## A091181.P12320984879500723372

`A061395(2*A091180(n+1))`
-/

namespace A091181.P12320984879500723372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A091180 (n + 1)).toNat

end

end A091181.P12320984879500723372

/-! ## A091181.P16075651382448049801

`A003963(p?[A091180(n+1)])`
-/

namespace A091181.P16075651382448049801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A091181.P16075651382448049801

/-! ## A091181.P16169509455195617044

`A036234(A091180(n+1)-1)`
-/

namespace A091181.P16169509455195617044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A091180 (n + 1) - 1).toNat

end

end A091181.P16169509455195617044

/-! ## A091181.P2968036602861227044

`A204892(A091180(n+1)-2)`
-/

namespace A091181.P2968036602861227044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A091180 (n + 1) - 2).toNat

end

end A091181.P2968036602861227044

/-!
# A091182: Number of ways to write n = x + y (x >= y > 0) with xy - 1 and xy + 1 both prime.

The programs for A091182, there is no canonical definition to state claims against.
-/

/-! ## A091182.P17229009506401974272

`A110475(A003056(record[A111217(n+1)]))`
-/

namespace A091182.P17229009506401974272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A091182.P17229009506401974272

/-! ## A091182.P1103612477067235761

`A238646(A018293(n+1))%A014963(n+1)`
-/

namespace A091182.P1103612477067235761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238646 (A018293 (n + 1)).toNat) (A014963 (n + 1))

end

end A091182.P1103612477067235761

/-! ## A091182.P7687926061370253094

`A039649(n+1)%A347208(A014963(n+1))`
-/

namespace A091182.P7687926061370253094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (n + 1)) (A347208 (A014963 (n + 1)).toNat)

end

end A091182.P7687926061370253094

/-! ## A091182.P7118753730681016842

`A001222(A072211(n+1))%A000010(A293741(n))`
-/

namespace A091182.P7118753730681016842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A072211 (n + 1)).toNat) (A000010 (A293741 n).toNat)

end

end A091182.P7118753730681016842

/-! ## A091182.P14377140198694155229

`A072811(3*n+2)%A072811(A225471(n))`
-/

namespace A091182.P14377140198694155229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072811 (3 * n + 2)) (A072811 (A225471 n).toNat)

end

end A091182.P14377140198694155229

/-!
# A091184: a(n) = (least prime beginning with prime(n) and having as many digits) - (least integer beginning with prime(n) and having as many digits).

The programs for A091184, there is no canonical definition to state claims against.
-/

/-! ## A091184.P2517051675972513048

`A077505(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A091184.P2517051675972513048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091184.P2517051675972513048

/-! ## A091184.P8762463120937411091

`A077505(Δ[A007504(n)])`
-/

namespace A091184.P8762463120937411091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (f1 (n + 1) - f1 n).toNat

end

end A091184.P8762463120937411091

/-! ## A091184.P15939321183879277313

`A077505(A000040(n+1))`
-/

namespace A091184.P15939321183879277313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A000040 (n + 1)).toNat

end

end A091184.P15939321183879277313

/-! ## A091184.P3309320010065407185

`A077505(A095320(n+1))`
-/

namespace A091184.P3309320010065407185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A095320 (n + 1)).toNat

end

end A091184.P3309320010065407185

/-! ## A091184.P7646764838837534194

`A077505(A216883(n+1))`
-/

namespace A091184.P7646764838837534194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A216883 (n + 1)).toNat

end

end A091184.P7646764838837534194

/-! ## A091184.P2573252988673959112

`A077505(A216884(n+1))`
-/

namespace A091184.P2573252988673959112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A216884 (n + 1)).toNat

end

end A091184.P2573252988673959112

/-! ## A091184.P8354782508259870058

`A077505(A216885(n+1))`
-/

namespace A091184.P8354782508259870058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A216885 (n + 1)).toNat

end

end A091184.P8354782508259870058

/-! ## A091184.P1130220174548279989

`A077505(A216887(n+1))`
-/

namespace A091184.P1130220174548279989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A216887 (n + 1)).toNat

end

end A091184.P1130220174548279989

/-! ## A091184.P8320087765770192745

`A077505(A238853(n+1))`
-/

namespace A091184.P8320087765770192745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A238853 (n + 1)).toNat

end

end A091184.P8320087765770192745

/-!
# A091185: a(n) = A090938(n)/n.

The programs for A091185, there is no canonical definition to state claims against.
-/

/-! ## A091185.P10080006927531414789

`A090938(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091185.P10080006927531414789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090938 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A091185.P10080006927531414789

/-! ## A091185.P7083433574807167538

`p?[ceil(2/acot(n))]-A091276(n+1)`
-/

namespace A091185.P7083433574807167538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1)

end

end A091185.P7083433574807167538

/-! ## A091185.P3069042372970514767

`Δ[A007504(n)]-A091276(n+1)`
-/

namespace A091185.P3069042372970514767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091276 (n + 1)

end

end A091185.P3069042372970514767

/-! ## A091185.P17066722459794669431

`p?[A001057(n)]-A091276(n+1)`
-/

namespace A091185.P17066722459794669431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1)

end

end A091185.P17066722459794669431

/-! ## A091185.P13443702019956153149

`p?[A259153(n)]-A091276(n+1)`
-/

namespace A091185.P13443702019956153149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1)

end

end A091185.P13443702019956153149

/-! ## A091185.P553054719927167974

`A000040(n+1)-A091276(n+1)`
-/

namespace A091185.P553054719927167974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A091276 (n + 1)

end

end A091185.P553054719927167974

/-! ## A091185.P5117484464988210322

`A216884(n+1)-A091276(n+1)`
-/

namespace A091185.P5117484464988210322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1) - A091276 (n + 1)

end

end A091185.P5117484464988210322

/-! ## A091185.P6050559265433145478

`p?[A000037(n+1)]-A091276(n+1)`
-/

namespace A091185.P6050559265433145478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091276 (n + 1)

end

end A091185.P6050559265433145478

/-! ## A091185.P5272578454219470128

`record[A006530(n+2)]-A091276(n+1)`
-/

namespace A091185.P5272578454219470128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A091276 (n + 1)

end

end A091185.P5272578454219470128

/-!
# A091186: Triangle read by rows, in which n-th row gives expansion of x^n/((1-x)(1-x-x^2)^n).

The programs for A091186, there is no canonical definition to state claims against.
-/

/-! ## A091186.P5177525310300189019

`2*A037027(n)-A209577(n+1)`
-/

namespace A091186.P5177525310300189019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037027 n - A209577 (n + 1)

end

end A091186.P5177525310300189019

/-! ## A091186.P6806593094223309580

`A210229(A271439(n)+A010054(n))`
-/

namespace A091186.P6806593094223309580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (A271439 n + A010054 n).toNat

end

end A091186.P6806593094223309580

/-! ## A091186.P8364718822220530846

`A210229(gcd(A010816(n), A083920(n)))`
-/

namespace A091186.P8364718822220530846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (Int.gcd (A010816 n) (A083920 n))

end

end A091186.P8364718822220530846

/-! ## A091186.P307127027197499858

`A210229(or(A010054(n), A271439(n)))`
-/

namespace A091186.P307127027197499858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (Int.lor (A010054 n) (A271439 n)).toNat

end

end A091186.P307127027197499858

/-! ## A091186.P16626354719161778729

`A210229(xor(A010054(n), A271439(n)))`
-/

namespace A091186.P16626354719161778729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (Int.xor (A010054 n) (A271439 n)).toNat

end

end A091186.P16626354719161778729

/-! ## A091186.P18383187697460086633

`A210229(A348776(n+1)-A002024(n+1))`
-/

namespace A091186.P18383187697460086633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (A348776 (n + 1) - A002024 (n + 1)).toNat

end

end A091186.P18383187697460086633

/-! ## A091186.P9784630139371523096

`A037027(n)+A122075(n)-A210229(n+1)`
-/

namespace A091186.P9784630139371523096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A122075 n - A210229 (n + 1))

end

end A091186.P9784630139371523096

/-! ## A091186.P3534654178437162404

`A210229(n+1)+A122075(n)-A210230(n+1)`
-/

namespace A091186.P3534654178437162404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (n + 1) + (A122075 n - A210230 (n + 1))

end

end A091186.P3534654178437162404

/-!
# A091187: Triangle read by rows: T(n,k) is the number of ordered trees with n edges and k branches.

The programs for A091187, the canonical program `A091187.P5641360087202149170` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091187 has offset 1).

The definition of A091187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091187.P2043796418951601709

`A091869(∑[char[∑[n]]]²-n)`
-/

namespace A091187.P2043796418951601709
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A091187.P2043796418951601709

namespace A091187

/-- `A091869(∑[char[∑[n]]]²-n)` -/
def P2043796418951601709.Spec : Prop :=
  ∀ n, P2043796418951601709.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P5641360087202149170

`A001006(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091187

/-- `A001006(A002262(n))*A007318(n)` -/
def P5641360087202149170.Spec : Prop :=
  ∀ n, P5641360087202149170.a n = A091187 (n + 1)

theorem P5641360087202149170.correct : P5641360087202149170.Spec := by
  intro n
  simp only [A091187, Nat.add_sub_cancel]

end A091187

/-! ## A091187.P1567221024996131403

`A007318(n)*A064645(A112367(n))`
-/

namespace A091187.P1567221024996131403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A064645 (A112367 n).toNat

end

end A091187.P1567221024996131403

namespace A091187

/-- `A007318(n)*A064645(A112367(n))` -/
def P1567221024996131403.Spec : Prop :=
  ∀ n, P1567221024996131403.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P1951279284644627287

`abs(A001006(A002262(n))*A130595(n))`
-/

namespace A091187.P1951279284644627287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 (A002262 n).toNat * A130595 n|

end

end A091187.P1951279284644627287

namespace A091187

/-- `abs(A001006(A002262(n))*A130595(n))` -/
def P1951279284644627287.Spec : Prop :=
  ∀ n, P1951279284644627287.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P15120012770282500056

`abs(A064645(A112367(n))*A117440(n))`
-/

namespace A091187.P15120012770282500056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064645 (A112367 n).toNat * A117440 n|

end

end A091187.P15120012770282500056

namespace A091187

/-- `abs(A064645(A112367(n))*A117440(n))` -/
def P15120012770282500056.Spec : Prop :=
  ∀ n, P15120012770282500056.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P15163699516887298207

`Δ[A102363(n)]*A001006(A002262(n))`
-/

namespace A091187.P15163699516887298207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001006 (A002262 n).toNat

end

end A091187.P15163699516887298207

namespace A091187

/-- `Δ[A102363(n)]*A001006(A002262(n))` -/
def P15163699516887298207.Spec : Prop :=
  ∀ n, P15163699516887298207.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P15227796770801640230

`Δ[A102363(n)]*A064645(A112367(n))`
-/

namespace A091187.P15227796770801640230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A064645 (A112367 n).toNat

end

end A091187.P15227796770801640230

namespace A091187

/-- `Δ[A102363(n)]*A064645(A112367(n))` -/
def P15227796770801640230.Spec : Prop :=
  ∀ n, P15227796770801640230.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P7484689352192758669

`A001006(A144328(n+1))*A007318(n)`
-/

namespace A091187.P7484689352192758669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A144328 (n + 1)).toNat * A007318 n

end

end A091187.P7484689352192758669

namespace A091187

/-- `A001006(A144328(n+1))*A007318(n)` -/
def P7484689352192758669.Spec : Prop :=
  ∀ n, P7484689352192758669.a n = A091187 (n + 1)

end A091187

/-! ## A091187.P634089597036016417

`A001006(A002260(n+1)-1)*A007318(n)`
-/

namespace A091187.P634089597036016417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A002260 (n + 1) - 1).toNat * A007318 n

end

end A091187.P634089597036016417

namespace A091187

/-- `A001006(A002260(n+1)-1)*A007318(n)` -/
def P634089597036016417.Spec : Prop :=
  ∀ n, P634089597036016417.a n = A091187 (n + 1)

end A091187

/-!
# A091188: G.f. A(x) satisfies both A(-x)*A(x) = A(x^2) and xA(x)^2 = B(xA(x^2)) where B(x) = x*(1+x)/(1-x).

The programs for A091188, there is no canonical definition to state claims against.
-/

/-! ## A091188.P11675093183076076157

`A094275(A195865(n))`
-/

namespace A091188.P11675093183076076157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A195865 n).toNat

end

end A091188.P11675093183076076157

/-! ## A091188.P5562548772865762694

`A194966(A222006(n))`
-/

namespace A091188.P5562548772865762694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A222006 n).toNat

end

end A091188.P5562548772865762694

/-! ## A091188.P13742810323020600809

`A121902(22*A157253(n))`
-/

namespace A091188.P13742810323020600809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (22 * A157253 n).toNat

end

end A091188.P13742810323020600809

/-! ## A091188.P4562805576349489527

`A094275(A222006(n))-A297861(A187187(n+1))`
-/

namespace A091188.P4562805576349489527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A222006 n).toNat - A297861 (A187187 (n + 1)).toNat

end

end A091188.P4562805576349489527

/-! ## A091188.P15881439025709226592

`A098745(A258289(n))-A297861(A187187(n+1))`
-/

namespace A091188.P15881439025709226592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098745 (A258289 n).toNat - A297861 (A187187 (n + 1)).toNat

end

end A091188.P15881439025709226592

/-!
# A091190: G.f. A(x) satisfies x*A(x)^3 = B(x*A(x^3)) where B(x) = x/(1 - 3*x).

The programs for A091190, there is no canonical definition to state claims against.
-/

/-! ## A091190.P15452211936389923362

`A254730(A148572(n))+A115390(n)`
-/

namespace A091190.P15452211936389923362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A148572 n).toNat + A115390 n

end

end A091190.P15452211936389923362

/-! ## A091190.P5591505191037933990

`A264228(n+1)-A118199(A309861(n))`
-/

namespace A091190.P5591505191037933990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264228 (n + 1) - A118199 (A309861 n).toNat

end

end A091190.P5591505191037933990

/-! ## A091190.P8331500410356554434

`A115390(n)+A115364(A323352(2*n+1))`
-/

namespace A091190.P8331500410356554434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + A115364 (A323352 (2 * n + 1)).toNat

end

end A091190.P8331500410356554434

/-! ## A091190.P18345994255331545225

`A381781(A038075(n+2))`
-/

namespace A091190.P18345994255331545225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381781 (A038075 (n + 2)).toNat

end

end A091190.P18345994255331545225

/-!
# A091191: Primitive abundant numbers: abundant numbers (A005101) having no abundant proper divisor.

The programs for A091191, there is no canonical definition to state claims against.
-/

/-! ## A091191.P17270739251435136190

`∪[A071395(n+1), A275082(n+1)]`
-/

namespace A091191.P17270739251435136190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091191.P17270739251435136190

/-! ## A091191.P5481742488801090512

`filter[A181487(n+1), A294930(#)]`
-/

namespace A091191.P5481742488801090512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P5481742488801090512

/-! ## A091191.P8661878034472429543

`filter[A381546(n+1), A294930(#)]`
-/

namespace A091191.P8661878034472429543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P8661878034472429543

/-! ## A091191.P2948990994837229521

`eq[1, A294930(n+1)]+1`
-/

namespace A091191.P2948990994837229521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091191.P2948990994837229521

/-! ## A091191.P2621624533454826594

`filter[A204829(n+1), A294930(#)]`
-/

namespace A091191.P2621624533454826594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P2621624533454826594

/-! ## A091191.P1871832454296209823

`record[A091196(n+1)]`
-/

namespace A091191.P1871832454296209823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091191.P1871832454296209823

/-! ## A091191.P11999959274100854820

`filter[A005101(n+1), A294930(#)]`
-/

namespace A091191.P11999959274100854820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P11999959274100854820

/-! ## A091191.P5545796677346561704

`filter[A023196(n+1), A294930(#)]`
-/

namespace A091191.P5545796677346561704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P5545796677346561704

/-! ## A091191.P2767865455478151091

`filter[A177052(n+1), A294930(#)]`
-/

namespace A091191.P2767865455478151091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P2767865455478151091

/-! ## A091191.P17452652278627128973

`filter[A326133(n+1), A294930(#)]`
-/

namespace A091191.P17452652278627128973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P17452652278627128973

/-! ## A091191.P908620477487426793

`A005101(eq[A005101(n+1), A091196(n+1)]+1)`
-/

namespace A091191.P908620477487426793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A091191.P908620477487426793

/-! ## A091191.P8168669667935142632

`filter[A103288(n+1), A294930(#)]`
-/

namespace A091191.P8168669667935142632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P8168669667935142632

/-! ## A091191.P4082111029942935020

`filter[A177085(n+1), A294930(#)]`
-/

namespace A091191.P4082111029942935020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P4082111029942935020

/-! ## A091191.P13246788700866100718

`filter[A363171(n+1), A294930(#)]`
-/

namespace A091191.P13246788700866100718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P13246788700866100718

/-! ## A091191.P5452160438903733914

`filter[A334166(n+1), A294930(#)]`
-/

namespace A091191.P5452160438903733914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P5452160438903733914

/-! ## A091191.P16641193501321658631

`filter[A383488(n+1), A294930(#)]`
-/

namespace A091191.P16641193501321658631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P16641193501321658631

/-! ## A091191.P8513078448437940370

`filter[A119357(n+1), A294930(#)]`
-/

namespace A091191.P8513078448437940370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P8513078448437940370

/-! ## A091191.P2203849972762622111

`filter[A051774(n+1), A294930(#)]`
-/

namespace A091191.P2203849972762622111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P2203849972762622111

/-! ## A091191.P8841022091860064717

`filter[A005279(n+1), A294930(#)]`
-/

namespace A091191.P8841022091860064717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A091191.P8841022091860064717

/-!
# A091192: Abundant numbers having at least one abundant proper divisor.

The programs for A091192, the canonical program `A091192.P718814886778094083` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091192 has offset 1).

The definition of A091192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091192.P718814886778094083

`eq[A294930(n+1), A294935(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A091192

/-- `eq[A294930(n+1), A294935(n+1)]+1` -/
def P718814886778094083.Spec : Prop :=
  ∀ n, (P718814886778094083.a n : ℤ) = A091192 (n + 1)

theorem P718814886778094083.correct : P718814886778094083.Spec := by
  intro n
  simp only [A091192, Nat.add_sub_cancel]

end A091192

/-! ## A091192.P12125801027953513315

`lt[0, A294889(n+1)]+1`
-/

namespace A091192.P12125801027953513315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091192.P12125801027953513315

namespace A091192

/-- `lt[0, A294889(n+1)]+1` -/
def P12125801027953513315.Spec : Prop :=
  ∀ n, (P12125801027953513315.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P8042892690834061966

`lt[1, A080224(n+1)]+1`
-/

namespace A091192.P8042892690834061966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091192.P8042892690834061966

namespace A091192

/-- `lt[1, A080224(n+1)]+1` -/
def P8042892690834061966.Spec : Prop :=
  ∀ n, (P8042892690834061966.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P13808216534877708110

`lt[0, A294889(A028310(n))]`
-/

namespace A091192.P13808216534877708110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091192.P13808216534877708110

namespace A091192

/-- `lt[0, A294889(A028310(n))]` -/
def P13808216534877708110.Spec : Prop :=
  ∀ n, (P13808216534877708110.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P15608997825723825587

`lt[n, A187795(A004277(n)-n)]`
-/

namespace A091192.P15608997825723825587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091192.P15608997825723825587

namespace A091192

/-- `lt[n, A187795(A004277(n)-n)]` -/
def P15608997825723825587.Spec : Prop :=
  ∀ n, (P15608997825723825587.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P17702098088101979818

`eq[1, A036262(a(A080224(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A091192.P17702098088101979818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A036262 (f2 (A080224 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091192.P17702098088101979818

namespace A091192

/-- `eq[1, A036262(a(A080224(n)))]` -/
def P17702098088101979818.Spec : Prop :=
  ∀ n, (P17702098088101979818.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P16156661503139547438

`eq[1, A036987(a(A080224(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A091192.P16156661503139547438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A036987 (f2 (A080224 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091192.P16156661503139547438

namespace A091192

/-- `eq[1, A036987(a(A080224(n)))]` -/
def P16156661503139547438.Spec : Prop :=
  ∀ n, (P16156661503139547438.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P2287531519874382444

`eq[1, A003114(a(A080224(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A091192.P2287531519874382444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A003114 (f2 (A080224 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091192.P2287531519874382444

namespace A091192

/-- `eq[1, A003114(a(A080224(n)))]` -/
def P2287531519874382444.Spec : Prop :=
  ∀ n, (P2287531519874382444.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P1276631817002007626

`A020725(lt[n+1, A187795(n+1)])`
-/

namespace A091192.P1276631817002007626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091192.P1276631817002007626

namespace A091192

/-- `A020725(lt[n+1, A187795(n+1)])` -/
def P1276631817002007626.Spec : Prop :=
  ∀ n, P1276631817002007626.a n = A091192 (n + 1)

end A091192

/-! ## A091192.P3834019242568497603

`A065475(lt[n+1, A187795(n+1)])`
-/

namespace A091192.P3834019242568497603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091192.P3834019242568497603

namespace A091192

/-- `A065475(lt[n+1, A187795(n+1)])` -/
def P3834019242568497603.Spec : Prop :=
  ∀ n, P3834019242568497603.a n = A091192 (n + 1)

end A091192

/-! ## A091192.P1911407549544560166

`eq[1, A000010(a(A080224(n)))]` with `a(0)=3, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A091192.P1911407549544560166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 2, 2] fun n f2 =>
  A000010 (f2 (A080224 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091192.P1911407549544560166

namespace A091192

/-- `eq[1, A000010(a(A080224(n)))]` -/
def P1911407549544560166.Spec : Prop :=
  ∀ n, (P1911407549544560166.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P14375228081061545369

`lt[A294888(n+1), A001065(n+1)]+1`
-/

namespace A091192.P14375228081061545369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091192.P14375228081061545369

namespace A091192

/-- `lt[A294888(n+1), A001065(n+1)]+1` -/
def P14375228081061545369.Spec : Prop :=
  ∀ n, (P14375228081061545369.a n : ℤ) = A091192 (n + 1)

end A091192

/-! ## A091192.P16894510021431087056

`A153152(eq[A294930(n+1), A294935(n+1)])`
-/

namespace A091192.P16894510021431087056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091192.P16894510021431087056

namespace A091192

/-- `A153152(eq[A294930(n+1), A294935(n+1)])` -/
def P16894510021431087056.Spec : Prop :=
  ∀ n, P16894510021431087056.a n = A091192 (n + 1)

end A091192

/-! ## A091192.P11043886007647501196

`A020725(lt[A294888(n+1), A001065(n+1)])`
-/

namespace A091192.P11043886007647501196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091192.P11043886007647501196

namespace A091192

/-- `A020725(lt[A294888(n+1), A001065(n+1)])` -/
def P11043886007647501196.Spec : Prop :=
  ∀ n, P11043886007647501196.a n = A091192 (n + 1)

end A091192

/-! ## A091192.P15486798752991559140

`A020725(lt[A294888(n+1), A033880(n+1)+n])`
-/

namespace A091192.P15486798752991559140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091192.P15486798752991559140

namespace A091192

/-- `A020725(lt[A294888(n+1), A033880(n+1)+n])` -/
def P15486798752991559140.Spec : Prop :=
  ∀ n, P15486798752991559140.a n = A091192 (n + 1)

end A091192

/-! ## A091192.P11879711643085896686

`A020725(lt[A294888(n+1), A237588(n+1)+n])`
-/

namespace A091192.P11879711643085896686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091192.P11879711643085896686

namespace A091192

/-- `A020725(lt[A294888(n+1), A237588(n+1)+n])` -/
def P11879711643085896686.Spec : Prop :=
  ∀ n, P11879711643085896686.a n = A091192 (n + 1)

end A091192

/-! ## A091192.P17631790210519468831

`lt[A028310(n+1), A187795(A028310(n))]`
-/

namespace A091192.P17631790210519468831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091192.P17631790210519468831

namespace A091192

/-- `lt[A028310(n+1), A187795(A028310(n))]` -/
def P17631790210519468831.Spec : Prop :=
  ∀ n, (P17631790210519468831.a n : ℤ) = A091192 (n + 1)

end A091192

/-!
# A091193: Smallest number having n abundant divisors.

The programs for A091193, there is no canonical definition to state claims against.
-/

/-! ## A091193.P18044759266133730570

`∩[A140470(n+1), A169799(n+1)]`
-/

namespace A091193.P18044759266133730570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091193.P18044759266133730570

/-! ## A091193.P5213233057113456741

`∩[A140972(n+1), A169799(n+1)]`
-/

namespace A091193.P5213233057113456741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091193.P5213233057113456741

/-! ## A091193.P4066576025043766925

`∩[A141766(n+1), A169799(n+1)]`
-/

namespace A091193.P4066576025043766925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091193.P4066576025043766925

/-!
# A091194: Number of abundant numbers <= n.

The programs for A091194, the canonical program `A091194.P8566147046527148789` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091194 has offset 1).

The definition of A091194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091194.P1491694634452541079

`∑[char[lt[2*n+3, ∑{d}[n+1, #]]]]`
-/

namespace A091194.P1491694634452541079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P1491694634452541079

namespace A091194

/-- `∑[char[lt[2*n+3, ∑{d}[n+1, #]]]]` -/
def P1491694634452541079.Spec : Prop :=
  ∀ n, (P1491694634452541079.a n : ℤ) = A091194 (n + 1)

end A091194

/-! ## A091194.P8016370182165467649

`∑[A294937(n+1)]`
-/

namespace A091194.P8016370182165467649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P8016370182165467649

namespace A091194

/-- `∑[A294937(n+1)]` -/
def P8016370182165467649.Spec : Prop :=
  ∀ n, P8016370182165467649.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P9410083603094079613

`∑[1-A294935(n+1)]`
-/

namespace A091194.P9410083603094079613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P9410083603094079613

namespace A091194

/-- `∑[1-A294935(n+1)]` -/
def P9410083603094079613.Spec : Prop :=
  ∀ n, P9410083603094079613.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P12498898114513627563

`∑[A060862(n+1)%2]`
-/

namespace A091194.P12498898114513627563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060862 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P12498898114513627563

namespace A091194

/-- `∑[A060862(n+1)%2]` -/
def P12498898114513627563.Spec : Prop :=
  ∀ n, P12498898114513627563.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P572636340015894510

`∑[ceil(sin(A082551(n+1)))]`
-/

namespace A091194.P572636340015894510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A082551 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P572636340015894510

namespace A091194

/-- `∑[ceil(sin(A082551(n+1)))]` -/
def P572636340015894510.Spec : Prop :=
  ∀ n, P572636340015894510.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P3114317032624137577

`∑[1-round((n+1)/A000203(n+1))]`
-/

namespace A091194.P3114317032624137577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000203 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P3114317032624137577

namespace A091194

/-- `∑[1-round((n+1)/A000203(n+1))]` -/
def P3114317032624137577.Spec : Prop :=
  ∀ n, P3114317032624137577.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P8566147046527148789

`∑[round(A001065(n+1)/(2*n+3))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A091194

/-- `∑[round(A001065(n+1)/(2*n+3))]` -/
def P8566147046527148789.Spec : Prop :=
  ∀ n, P8566147046527148789.a n = A091194 (n + 1)

theorem P8566147046527148789.correct : P8566147046527148789.Spec := by
  intro n
  simp only [A091194, Nat.add_sub_cancel]

end A091194

/-! ## A091194.P18359999162752618373

`∑[floor(A245092(2*n+1)/(2*n+3))]`
-/

namespace A091194.P18359999162752618373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) : ℚ) / (2 * n + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P18359999162752618373

namespace A091194

/-- `∑[floor(A245092(2*n+1)/(2*n+3))]` -/
def P18359999162752618373.Spec : Prop :=
  ∀ n, P18359999162752618373.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P16296895731314314647

`A256562(n+1)-A392332(n+1)`
-/

namespace A091194.P16296895731314314647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (n + 1) - A392332 (n + 1)

end

end A091194.P16296895731314314647

namespace A091194

/-- `A256562(n+1)-A392332(n+1)` -/
def P16296895731314314647.Spec : Prop :=
  ∀ n, P16296895731314314647.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P14795192412479590028

`∑[A294936(A082551(n+1)²+n)]`
-/

namespace A091194.P14795192412479590028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A082551 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P14795192412479590028

namespace A091194

/-- `∑[A294936(A082551(n+1)²+n)]` -/
def P14795192412479590028.Spec : Prop :=
  ∀ n, P14795192412479590028.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P17561993836204586994

`∑[A294934(n+1)+A082551(n+1)]`
-/

namespace A091194.P17561993836204586994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1) + A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P17561993836204586994

namespace A091194

/-- `∑[A294934(n+1)+A082551(n+1)]` -/
def P17561993836204586994.Spec : Prop :=
  ∀ n, P17561993836204586994.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P10361369428262259022

`∑[A082551(n+1)*A294936(n+1)]`
-/

namespace A091194.P10361369428262259022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1) * A294936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P10361369428262259022

namespace A091194

/-- `∑[A082551(n+1)*A294936(n+1)]` -/
def P10361369428262259022.Spec : Prop :=
  ∀ n, P10361369428262259022.a n = A091194 (n + 1)

end A091194

/-! ## A091194.P9162319147583279807

`A001222(floor(A000203(n+1)/(n+2)))+a(n-1)` with `a(0)=0`
-/

namespace A091194.P9162319147583279807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 ⌊(A000203 (n + 1) : ℚ) / (n + 2 : ℚ)⌋.toNat + a (n - 1)

end

end A091194.P9162319147583279807

namespace A091194

/-- `A001222(floor(A000203(n+1)/(n+2)))+a(n-1)` -/
def P9162319147583279807.Spec : Prop :=
  ∀ n, P9162319147583279807.a n = A091194 (n + 1)

end A091194

/-!
# A091195: Number of numbers <= n having only one abundant divisor (A091191).

The programs for A091195, the canonical program `A091195.P16655646601784351201` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091195 has offset 1).

The definition of A091195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091195.P13920290354947946787

`∑[A294930(n+1)]`
-/

namespace A091195.P13920290354947946787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091195.P13920290354947946787

namespace A091195

/-- `∑[A294930(n+1)]` -/
def P13920290354947946787.Spec : Prop :=
  ∀ n, P13920290354947946787.a n = A091195 (n + 1)

end A091195

/-! ## A091195.P9299178337568898927

`∑[char[A091191(n+1)-1]]`
-/

namespace A091195.P9299178337568898927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091195.P9299178337568898927

namespace A091195

/-- `∑[char[A091191(n+1)-1]]` -/
def P9299178337568898927.Spec : Prop :=
  ∀ n, (P9299178337568898927.a n : ℤ) = A091195 (n + 1)

end A091195

/-! ## A091195.P16655646601784351201

`∑[A245552(A080224(n+1)²)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091195

/-- `∑[A245552(A080224(n+1)²)]` -/
def P16655646601784351201.Spec : Prop :=
  ∀ n, P16655646601784351201.a n = A091195 (n + 1)

theorem P16655646601784351201.correct : P16655646601784351201.Spec := by
  intro n
  simp only [A091195, Nat.add_sub_cancel]

end A091195

/-! ## A091195.P1735246148568694651

`∑[∑{d}[A080224(n+1), A008683(#)]]`
-/

namespace A091195.P1735246148568694651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091195.P1735246148568694651

namespace A091195

/-- `∑[∑{d}[A080224(n+1), A008683(#)]]` -/
def P1735246148568694651.Spec : Prop :=
  ∀ n, P1735246148568694651.a n = A091195 (n + 1)

end A091195

/-! ## A091195.P4159065240013122661

`∑[char[A023443(A091191(n+1))]]`
-/

namespace A091195.P4159065240013122661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A091191 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091195.P4159065240013122661

namespace A091195

/-- `∑[char[A023443(A091191(n+1))]]` -/
def P4159065240013122661.Spec : Prop :=
  ∀ n, (P4159065240013122661.a n : ℤ) = A091195 (n + 1)

end A091195

/-! ## A091195.P8185751460915130257

`∑[A128834(A001248(A080224(n+1)+1)-1)]`
-/

namespace A091195.P8185751460915130257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A001248 (A080224 (n + 1) + 1).toNat - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091195.P8185751460915130257

namespace A091195

/-- `∑[A128834(A001248(A080224(n+1)+1)-1)]` -/
def P8185751460915130257.Spec : Prop :=
  ∀ n, P8185751460915130257.a n = A091195 (n + 1)

end A091195

/-!
# A091196: Smallest abundant divisor of n-th abundant number.

The programs for A091196, there is no canonical definition to state claims against.
-/

/-! ## A091196.P6376703891073741391

`A005101(n+1)/A055642(A136230(2*n))`
-/

namespace A091196.P6376703891073741391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005101 (n + 1) : ℚ) / (A055642 (A136230 (2 * n)).toNat : ℚ)

end

end A091196.P6376703891073741391

/-!
# A091197: Denominators of Taylor series expansion of 3*sin(2*x)/(2*(2+cos(2*x))) (with 0's omitted).

The programs for A091197, there is no canonical definition to state claims against.
-/

/-! ## A091197.P14518365669851155506

`gcd(∏[A141759(n)], A115184(n+1))`
-/

namespace A091197.P14518365669851155506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A115184 (n + 1))

end

end A091197.P14518365669851155506

/-!
# A091199: Numbers k such that (6k-3)^2 + 2 is prime.

The programs for A091199, there is no canonical definition to state claims against.
-/

/-! ## A091199.P14662094507643666146

`A056900(n)+1`
-/

namespace A091199.P14662094507643666146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056900 n + 1

end

end A091199.P14662094507643666146

/-! ## A091199.P6686499503067966803

`ceil(A232011(n+1)/2)`
-/

namespace A091199.P6686499503067966803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232011 (n + 1) : ℚ) / 2⌉

end

end A091199.P6686499503067966803

/-! ## A091199.P11206101859939667819

`floor(A232011(2*n+1-n)/2)+1`
-/

namespace A091199.P11206101859939667819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232011 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℚ) / 2⌋ + 1

end

end A091199.P11206101859939667819

/-! ## A091199.P17711693089419288453

`A002522(n)-(n²-A056900(n))`
-/

namespace A091199.P17711693089419288453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A056900 n)

end

end A091199.P17711693089419288453

/-! ## A091199.P2342729422771880323

`A000027(floor(A232011(n+1)/2)+1)`
-/

namespace A091199.P2342729422771880323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A232011 (n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A091199.P2342729422771880323

/-! ## A091199.P17317006945670143758

`A000463(A232011(n+1))`
-/

namespace A091199.P17317006945670143758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A232011 (n + 1)).toNat

end

end A091199.P17317006945670143758

/-! ## A091199.P11831539034686376207

`A008619(2*A056900(n))`
-/

namespace A091199.P11831539034686376207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A056900 n).toNat

end

end A091199.P11831539034686376207

/-! ## A091199.P14973702745294359779

`A004525(A232011(n+1)+1)`
-/

namespace A091199.P14973702745294359779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A232011 (n + 1) + 1).toNat

end

end A091199.P14973702745294359779

/-! ## A091199.P6925826409841324646

`A026741(A232011(n+1)+1)`
-/

namespace A091199.P6925826409841324646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A232011 (n + 1) + 1).toNat

end

end A091199.P6925826409841324646

/-! ## A091199.P2953180743740320653

`A060681(A232011(n+1)+1)`
-/

namespace A091199.P2953180743740320653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A232011 (n + 1) + 1).toNat

end

end A091199.P2953180743740320653

/-! ## A091199.P10006113934918505037

`A160413(A232011(n+1)+1)`
-/

namespace A091199.P10006113934918505037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A232011 (n + 1) + 1).toNat

end

end A091199.P10006113934918505037

/-! ## A091199.P9507694766879042478

`A242112(A232011(n+1)-1)`
-/

namespace A091199.P9507694766879042478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A232011 (n + 1) - 1).toNat

end

end A091199.P9507694766879042478

/-! ## A091199.P13631117860273463077

`A001281(A232011(n+1)-1)+1`
-/

namespace A091199.P13631117860273463077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A232011 (n + 1) - 1).toNat + 1

end

end A091199.P13631117860273463077

/-! ## A091199.P2761554388317360063

`A001281(A232011(n+1)+1)`
-/

namespace A091199.P2761554388317360063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A232011 (n + 1) + 1).toNat

end

end A091199.P2761554388317360063

/-! ## A091199.P5990280485685112327

`ceil(A129389(n+1)/6)`
-/

namespace A091199.P5990280485685112327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129389 (n + 1) : ℚ) / 6⌉

end

end A091199.P5990280485685112327

/-! ## A091199.P13805245124613098017

`A008620((A129389(n+1)+1)/2)`
-/

namespace A091199.P13805245124613098017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((A129389 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A091199.P13805245124613098017

/-! ## A091199.P5778179426303421742

`A002265(2*(A232011(n+1)+1))`
-/

namespace A091199.P5778179426303421742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A232011 (n + 1) + 1)).toNat

end

end A091199.P5778179426303421742

/-! ## A091199.P14337282872330519091

`A002265(A232011(n+1)+A232011(n+1)+2)`
-/

namespace A091199.P14337282872330519091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A232011 (n + 1) + (A232011 (n + 1) + 2)).toNat

end

end A091199.P14337282872330519091

/-! ## A091199.P13980771730792835486

`round((A232011(n+1)+1/A020695(n+1))/2)`
-/

namespace A091199.P13980771730792835486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A232011 (n + 1) : ℚ) + 1 / (A020695 (n + 1) : ℚ)) / 2)

end

end A091199.P13980771730792835486

/-! ## A091199.P6617875900491385190

`A026806(A129389(n+1))`
-/

namespace A091199.P6617875900491385190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A129389 (n + 1)).toNat

end

end A091199.P6617875900491385190

