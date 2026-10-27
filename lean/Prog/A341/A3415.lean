import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A341500: Number of cycles in the 2 X n rook graph.

The programs for A341500, there is no canonical definition to state claims against.
-/

/-! ## A341500.P1114103483825031173

`A286418(∑[n+2])`
-/

namespace A341500.P1114103483825031173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341500.P1114103483825031173

/-! ## A341500.P14533069117686127693

`record[A286418(Δ[A003453(n+5)])]`
-/

namespace A341500.P14533069117686127693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341500.P14533069117686127693

/-! ## A341500.P1470562175955530479

`record[gcd(A286418(n+1), A298895(n+2))]`
-/

namespace A341500.P1470562175955530479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286418 (n + 1)) (A298895 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341500.P1470562175955530479

/-! ## A341500.P9952404414809141428

`record[A286418(A198453(n+1))]`
-/

namespace A341500.P9952404414809141428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341500.P9952404414809141428

/-! ## A341500.P4643665233362508631

`record[A286418(A286462(3*n+5)+1)]`
-/

namespace A341500.P4643665233362508631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 (A286462 (3 * n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341500.P4643665233362508631

/-!
# A341501: Number of cycles in the 3 X n rook graph.

The programs for A341501, there is no canonical definition to state claims against.
-/

/-! ## A341501.P2422511119383582864

`A286418(∑[n+3]+1)`
-/

namespace A341501.P2422511119383582864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A341501.P2422511119383582864

/-! ## A341501.P13914978091363125923

`A065648(n)*A286418(A167614(n+1))`
-/

namespace A341501.P13914978091363125923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A286418 (A167614 (n + 1)).toNat

end

end A341501.P13914978091363125923

/-! ## A341501.P16165640064134714924

`A228710(n)*A286418(A167614(n+1))`
-/

namespace A341501.P16165640064134714924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n * A286418 (A167614 (n + 1)).toNat

end

end A341501.P16165640064134714924

/-! ## A341501.P5689506933669094406

`or(A000007(n), A286418(A167614(n+1)))`
-/

namespace A341501.P5689506933669094406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286418 (A167614 (n + 1)).toNat)

end

end A341501.P5689506933669094406

/-! ## A341501.P12208547728573149936

`A286418(A167614(n+1))+A044941(n+1)`
-/

namespace A341501.P12208547728573149936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 (A167614 (n + 1)).toNat + A044941 (n + 1)

end

end A341501.P12208547728573149936

/-!
# A341502: Number of matchings in the 3 X n rook graph.

The programs for A341502, there is no canonical definition to state claims against.
-/

/-! ## A341502.P10649116003769973637

`A270227(∑[n+2]-1)`
-/

namespace A341502.P10649116003769973637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A341502.P10649116003769973637

/-! ## A341502.P13564351396336223573

`A270227(A034856(n+1))%A097818(n)`
-/

namespace A341502.P13564351396336223573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270227 (A034856 (n + 1)).toNat) (A097818 n)

end

end A341502.P13564351396336223573

/-! ## A341502.P1388290689956595564

`lcm(A000034(n), A270227(A034856(n+1)))`
-/

namespace A341502.P1388290689956595564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A270227 (A034856 (n + 1)).toNat)

end

end A341502.P1388290689956595564

/-! ## A341502.P14710429196658538431

`A057427(n+1)*A270227(A034856(n+1))`
-/

namespace A341502.P14710429196658538431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A270227 (A034856 (n + 1)).toNat

end

end A341502.P14710429196658538431

/-! ## A341502.P6226520744459759406

`A270227(A034856(n+1))^and(1, A000040(n+1))`
-/

namespace A341502.P6226520744459759406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270227 (A034856 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A341502.P6226520744459759406

/-!
# A341503: Number of matchings in the 4 X n rook graph.

The programs for A341503, there is no canonical definition to state claims against.
-/

/-! ## A341503.P12985775395611719108

`A270227(A141214(n))-A000007(n)`
-/

namespace A341503.P12985775395611719108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A141214 n).toNat - A000007 n

end

end A341503.P12985775395611719108

/-! ## A341503.P9086920571282574284

`A270227(A141214(n))-A058348(n)`
-/

namespace A341503.P9086920571282574284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (A141214 n).toNat - A058348 n

end

end A341503.P9086920571282574284

/-! ## A341503.P7305921018527876487

`A270227(A141214(n)^A178334(n))`
-/

namespace A341503.P7305921018527876487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (SequenceMachineLib.roundAway ((A141214 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A341503.P7305921018527876487

/-! ## A341503.P12149330537290894085

`A270227(gcd(A058348(n), A141214(n)))`
-/

namespace A341503.P12149330537290894085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270227 (Int.gcd (A058348 n) (A141214 n))

end

end A341503.P12149330537290894085

/-! ## A341503.P11816881257609758300

`gcd(A270227(A141214(n)), A285476(n))`
-/

namespace A341503.P11816881257609758300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270227 (A141214 n).toNat) (A285476 n)

end

end A341503.P11816881257609758300

/-!
# A341505: E.g.f.: Product_{i>=1, j>=1} 1 / (1 - x^(i*j) / (i*j)!).

The programs for A341505, there is no canonical definition to state claims against.
-/

/-! ## A341505.P5750596596862533301

`A132425(A317580(n+2))`
-/

namespace A341505.P5750596596862533301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (A317580 (n + 2)).toNat

end

end A341505.P5750596596862533301

/-! ## A341505.P2026034732774596403

`A059169(5*A069725(n+1))`
-/

namespace A341505.P2026034732774596403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (5 * A069725 (n + 1)).toNat

end

end A341505.P2026034732774596403

/-!
# A341506: E.g.f.: Product_{i>=1, j>=1} (1 + x^(i*j) / (i*j)!).

The programs for A341506, there is no canonical definition to state claims against.
-/

/-! ## A341506.P16674862329943363007

`A333626(∏[p?[A047140(n)]])`
-/

namespace A341506.P16674862329943363007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341506.P16674862329943363007

/-! ## A341506.P13300949164866209611

`A333626(∏[dr(A125767(n+1))])`
-/

namespace A341506.P13300949164866209611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A125767 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A341506.P13300949164866209611

/-! ## A341506.P17303037395258304208

`A356874(C(A035360(2*n+1), A356874(n)))`
-/

namespace A341506.P17303037395258304208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (Nat.choose (A035360 (2 * n + 1)).toNat (A356874 n).toNat)

end

end A341506.P17303037395258304208

/-!
# A341507: Number of nonempty subsets S of {1,2,...,n} in which all elements are strictly less than the sum of the other elements of S.

The programs for A341507, there is no canonical definition to state claims against.
-/

/-! ## A341507.P11744020701383358367

`2^n+n-∑[A036469(n)]`
-/

namespace A341507.P11744020701383358367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341507.P11744020701383358367

/-! ## A341507.P5486928641829583212

`2^n-A095944(n+1)+n`
-/

namespace A341507.P5486928641829583212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A095944 (n + 1) + (n : ℤ)

end

end A341507.P5486928641829583212

/-! ## A341507.P12812740780298674600

`2^n-(∑[∑[A000009(n)]]-n)`
-/

namespace A341507.P12812740780298674600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A341507.P12812740780298674600

/-! ## A341507.P10587051540838206504

`A006127(n)-A095944(n+1)`
-/

namespace A341507.P10587051540838206504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A095944 (n + 1)

end

end A341507.P10587051540838206504

/-! ## A341507.P1822813503919164428

`A095941(n+1)+1-2^n+n`
-/

namespace A341507.P1822813503919164428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095941 (n + 1) + 1 - (2 ^ n : ℤ) + (n : ℤ)

end

end A341507.P1822813503919164428

/-! ## A341507.P6120182933990285705

`A095941(n+1)-A000295(n)`
-/

namespace A341507.P6120182933990285705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095941 (n + 1) - A000295 n

end

end A341507.P6120182933990285705

/-!
# A341508: a(n) = 0 if n is nonabundant, otherwise a(n) is the number of abundant divisors of the last abundant number in the iteration x -> A003961(x) (starting from x=n) before a nonabundant number is reached.

The programs for A341508, the canonical program `A341508.P16631859333944592742` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341508 has offset 1).

The definition of A341508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341508.P8961269156606043312

`A080224(n+1)%A000120(A249734(n+1))`
-/

namespace A341508.P8961269156606043312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080224 (n + 1)) (A000120 (A249734 (n + 1)).toNat)

end

end A341508.P8961269156606043312

namespace A341508

/-- `A080224(n+1)%A000120(A249734(n+1))` -/
def P8961269156606043312.Spec : Prop :=
  ∀ n, P8961269156606043312.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P8876421217218447620

`∑{d}[n+1, A294937(#)]%A000120(A249734(n+1))`
-/

namespace A341508.P8876421217218447620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A294937 d) (A000120 (A249734 (n + 1)).toNat)

end

end A341508.P8876421217218447620

namespace A341508

/-- `∑{d}[n+1, A294937(#)]%A000120(A249734(n+1))` -/
def P8876421217218447620.Spec : Prop :=
  ∀ n, P8876421217218447620.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P16453427214547562605

`A080224(n+1)%A091212(A028326(n))`
-/

namespace A341508.P16453427214547562605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080224 (n + 1)) (A091212 (A028326 n).toNat)

end

end A341508.P16453427214547562605

namespace A341508

/-- `A080224(n+1)%A091212(A028326(n))` -/
def P16453427214547562605.Spec : Prop :=
  ∀ n, P16453427214547562605.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P4120185483891085136

`gcd(A080224(A044609(n+1)), A080224(n+1))`
-/

namespace A341508.P4120185483891085136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080224 (A044609 (n + 1)).toNat) (A080224 (n + 1))

end

end A341508.P4120185483891085136

namespace A341508

/-- `gcd(A080224(A044609(n+1)), A080224(n+1))` -/
def P4120185483891085136.Spec : Prop :=
  ∀ n, (P4120185483891085136.a n : ℤ) = A341508 (n + 1)

end A341508

/-! ## A341508.P6055537352240123617

`A269165(A080224(n+1))+A000007(A007318(n))`
-/

namespace A341508.P6055537352240123617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (A080224 (n + 1)).toNat + A000007 (A007318 n).toNat

end

end A341508.P6055537352240123617

namespace A341508

/-- `A269165(A080224(n+1))+A000007(A007318(n))` -/
def P6055537352240123617.Spec : Prop :=
  ∀ n, P6055537352240123617.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P5677208482073845978

`A117599(A080224(n+1))%A168420(A135227(n))`
-/

namespace A341508.P5677208482073845978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117599 (A080224 (n + 1)).toNat) (A168420 (A135227 n).toNat)

end

end A341508.P5677208482073845978

namespace A341508

/-- `A117599(A080224(n+1))%A168420(A135227(n))` -/
def P5677208482073845978.Spec : Prop :=
  ∀ n, P5677208482073845978.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P11697907024718206141

`A269165(A080224(n+1))%A216687(A134521(n))`
-/

namespace A341508.P11697907024718206141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269165 (A080224 (n + 1)).toNat) (A216687 (A134521 n).toNat)

end

end A341508.P11697907024718206141

namespace A341508

/-- `A269165(A080224(n+1))%A216687(A134521(n))` -/
def P11697907024718206141.Spec : Prop :=
  ∀ n, P11697907024718206141.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P4437785835463857295

`A229706(A000124(n))*A269165(A080224(n+1))`
-/

namespace A341508.P4437785835463857295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229706 (A000124 n).toNat * A269165 (A080224 (n + 1)).toNat

end

end A341508.P4437785835463857295

namespace A341508

/-- `A229706(A000124(n))*A269165(A080224(n+1))` -/
def P4437785835463857295.Spec : Prop :=
  ∀ n, P4437785835463857295.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P17712592169518849703

`A006519(A266723(n))*A269165(A080224(n+1))`
-/

namespace A341508.P17712592169518849703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A266723 n).toNat * A269165 (A080224 (n + 1)).toNat

end

end A341508.P17712592169518849703

namespace A341508

/-- `A006519(A266723(n))*A269165(A080224(n+1))` -/
def P17712592169518849703.Spec : Prop :=
  ∀ n, P17712592169518849703.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P8946275987965121934

`A010169((n+2)²)*A269165(A080224(n+1))`
-/

namespace A341508.P8946275987965121934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 ((n + 2) ^ 2) * A269165 (A080224 (n + 1)).toNat

end

end A341508.P8946275987965121934

namespace A341508

/-- `A010169((n+2)²)*A269165(A080224(n+1))` -/
def P8946275987965121934.Spec : Prop :=
  ∀ n, P8946275987965121934.a n = A341508 (n + 1)

end A341508

/-! ## A341508.P16631859333944592742

`and(A032741(A055999(n)), A080224(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341508

/-- `and(A032741(A055999(n)), A080224(n+1))` -/
def P16631859333944592742.Spec : Prop :=
  ∀ n, P16631859333944592742.a n = A341508 (n + 1)

theorem P16631859333944592742.correct : P16631859333944592742.Spec := by
  intro n
  simp only [A341508, Nat.add_sub_cancel]

end A341508

/-! ## A341508.P15054391241519824992

`and(A080188(A080258(n+1)), A080224(n+1))`
-/

namespace A341508.P15054391241519824992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080188 (A080258 (n + 1)).toNat) (A080224 (n + 1))

end

end A341508.P15054391241519824992

namespace A341508

/-- `and(A080188(A080258(n+1)), A080224(n+1))` -/
def P15054391241519824992.Spec : Prop :=
  ∀ n, P15054391241519824992.a n = A341508 (n + 1)

end A341508

/-!
# A341509: a(n) = 2^j if n is of the form 2^i - 2^j with i > j, and 0 otherwise.

The programs for A341509, the canonical program `A341509.P2876379019950567741` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341509 has offset 0).

The definition of A341509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A014963, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341509.P2876379019950567741

`A156552(A014963(A005940(1+n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341509

/-- `A156552(A014963(A005940(1+n)))` -/
def P2876379019950567741.Spec : Prop :=
  ∀ n, P2876379019950567741.a n = A341509 n

theorem P2876379019950567741.correct : P2876379019950567741.Spec := by
  intro n
  simp only [A341509]

end A341509

/-! ## A341509.P15128884292557675676

`A048298(and(n, Δ[-n²]))`
-/

namespace A341509.P15128884292557675676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A341509.P15128884292557675676

namespace A341509

/-- `A048298(and(n, Δ[-n²]))` -/
def P15128884292557675676.Spec : Prop :=
  ∀ n, P15128884292557675676.a n = A341509 n

end A341509

/-! ## A341509.P1693884474573179200

`A048298(A090077(n))`
-/

namespace A341509.P1693884474573179200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A090077 n).toNat

end

end A341509.P1693884474573179200

namespace A341509

/-- `A048298(A090077(n))` -/
def P1693884474573179200.Spec : Prop :=
  ∀ n, P1693884474573179200.a n = A341509 n

end A341509

/-! ## A341509.P16102146047391674801

`A048298(A229763(n))`
-/

namespace A341509.P16102146047391674801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A229763 n).toNat

end

end A341509.P16102146047391674801

namespace A341509

/-- `A048298(A229763(n))` -/
def P16102146047391674801.Spec : Prop :=
  ∀ n, P16102146047391674801.a n = A341509 n

end A341509

/-! ## A341509.P14015605872284462346

`A048675(A368900(n+1))`
-/

namespace A341509.P14015605872284462346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A368900 (n + 1)).toNat

end

end A341509.P14015605872284462346

namespace A341509

/-- `A048675(A368900(n+1))` -/
def P14015605872284462346.Spec : Prop :=
  ∀ n, P14015605872284462346.a n = A341509 n

end A341509

/-! ## A341509.P10248087969258293461

`A090077(n*A340375(n))`
-/

namespace A341509.P10248087969258293461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 ((n : ℤ) * A340375 n).toNat

end

end A341509.P10248087969258293461

namespace A341509

/-- `A090077(n*A340375(n))` -/
def P10248087969258293461.Spec : Prop :=
  ∀ n, P10248087969258293461.a n = A341509 n

end A341509

/-! ## A341509.P8957504490629256277

`A229763(n*A340375(n))`
-/

namespace A341509.P8957504490629256277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 ((n : ℤ) * A340375 n).toNat

end

end A341509.P8957504490629256277

namespace A341509

/-- `A229763(n*A340375(n))` -/
def P8957504490629256277.Spec : Prop :=
  ∀ n, P8957504490629256277.a n = A341509 n

end A341509

/-! ## A341509.P2306828263708127735

`A355808(n*A340375(n))`
-/

namespace A341509.P2306828263708127735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355808 ((n : ℤ) * A340375 n).toNat

end

end A341509.P2306828263708127735

namespace A341509

/-- `A355808(n*A340375(n))` -/
def P2306828263708127735.Spec : Prop :=
  ∀ n, P2306828263708127735.a n = A341509 n

end A341509

/-! ## A341509.P8712618717304130890

`A342126(n)%A267584(n)`
-/

namespace A341509.P8712618717304130890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342126 n) (A267584 n)

end

end A341509.P8712618717304130890

namespace A341509

/-- `A342126(n)%A267584(n)` -/
def P8712618717304130890.Spec : Prop :=
  ∀ n, P8712618717304130890.a n = A341509 n

end A341509

/-! ## A341509.P15214754142715532229

`and(A001489(n), A342126(n))`
-/

namespace A341509.P15214754142715532229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001489 n) (A342126 n)

end

end A341509.P15214754142715532229

namespace A341509

/-- `and(A001489(n), A342126(n))` -/
def P15214754142715532229.Spec : Prop :=
  ∀ n, P15214754142715532229.a n = A341509 n

end A341509

/-! ## A341509.P3936494169127116534

`and(A080100(n), A342126(n))`
-/

namespace A341509.P3936494169127116534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080100 n) (A342126 n)

end

end A341509.P3936494169127116534

namespace A341509

/-- `and(A080100(n), A342126(n))` -/
def P3936494169127116534.Spec : Prop :=
  ∀ n, P3936494169127116534.a n = A341509 n

end A341509

/-! ## A341509.P5184587816494385972

`and(A302436(n), A342126(n))`
-/

namespace A341509.P5184587816494385972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302436 n) (A342126 n)

end

end A341509.P5184587816494385972

namespace A341509

/-- `and(A302436(n), A342126(n))` -/
def P5184587816494385972.Spec : Prop :=
  ∀ n, P5184587816494385972.a n = A341509 n

end A341509

/-! ## A341509.P9447805830718904506

`and(A342126(n), A354182(n))`
-/

namespace A341509.P9447805830718904506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342126 n) (A354182 n)

end

end A341509.P9447805830718904506

namespace A341509

/-- `and(A342126(n), A354182(n))` -/
def P9447805830718904506.Spec : Prop :=
  ∀ n, P9447805830718904506.a n = A341509 n

end A341509

/-! ## A341509.P13550845730926266095

`A003188(A252756(A268674(A368900(2*n+1))))`
-/

namespace A341509.P13550845730926266095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A252756 (A268674 (A368900 (2 * n + 1)).toNat).toNat).toNat

end

end A341509.P13550845730926266095

namespace A341509

/-- `A003188(A252756(A268674(A368900(2*n+1))))` -/
def P13550845730926266095.Spec : Prop :=
  ∀ n, P13550845730926266095.a n = A341509 n

end A341509

/-! ## A341509.P9811976269727830586

`A356397(n)%A267584(n)`
-/

namespace A341509.P9811976269727830586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356397 n) (A267584 n)

end

end A341509.P9811976269727830586

namespace A341509

/-- `A356397(n)%A267584(n)` -/
def P9811976269727830586.Spec : Prop :=
  ∀ n, P9811976269727830586.a n = A341509 n

end A341509

/-! ## A341509.P11652318855051150254

`A355807(n*A340375(n))`
-/

namespace A341509.P11652318855051150254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355807 ((n : ℤ) * A340375 n).toNat

end

end A341509.P11652318855051150254

namespace A341509

/-- `A355807(n*A340375(n))` -/
def P11652318855051150254.Spec : Prop :=
  ∀ n, P11652318855051150254.a n = A341509 n

end A341509

/-! ## A341509.P7823927914370703809

`and(A342126(n), A355807(n))`
-/

namespace A341509.P7823927914370703809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342126 n) (A355807 n)

end

end A341509.P7823927914370703809

namespace A341509

/-- `and(A342126(n), A355807(n))` -/
def P7823927914370703809.Spec : Prop :=
  ∀ n, P7823927914370703809.a n = A341509 n

end A341509

/-! ## A341509.P15484451449864478241

`and(A355807(n), A356397(n))`
-/

namespace A341509.P15484451449864478241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A355807 n) (A356397 n)

end

end A341509.P15484451449864478241

namespace A341509

/-- `and(A355807(n), A356397(n))` -/
def P15484451449864478241.Spec : Prop :=
  ∀ n, P15484451449864478241.a n = A341509 n

end A341509

/-! ## A341509.P12636250729985961942

`A048298(A053644(2*n)-n)`
-/

namespace A341509.P12636250729985961942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A053644 (2 * n) - (n : ℤ)).toNat

end

end A341509.P12636250729985961942

namespace A341509

/-- `A048298(A053644(2*n)-n)` -/
def P12636250729985961942.Spec : Prop :=
  ∀ n, P12636250729985961942.a n = A341509 n

end A341509

/-! ## A341509.P685964672922429325

`A142150(A135416(A035327(2*n+2*n)))`
-/

namespace A341509.P685964672922429325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A135416 (A035327 (2 * n + 2 * n)).toNat).toNat

end

end A341509.P685964672922429325

namespace A341509

/-- `A142150(A135416(A035327(2*n+2*n)))` -/
def P685964672922429325.Spec : Prop :=
  ∀ n, P685964672922429325.a n = A341509 n

end A341509

/-!
# A341510: Symmetric square array A(n,k) = A005940(1+A156552(n)+A156552(k)), read by antidiagonals starting with A(1,1).

The programs for A341510, the canonical program `A341510.P15947143278224259408` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341510 has offset 1).

The definition of A341510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341510.P15947143278224259408

`A005940(1+A156552(col(n)+1)+A156552(row(n)-col(n)+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341510

/-- `A005940(1+A156552(col(n)+1)+A156552(row(n)-col(n)+1))` -/
def P15947143278224259408.Spec : Prop :=
  ∀ n, P15947143278224259408.a n = A341510 (n + 1)

theorem P15947143278224259408.correct : P15947143278224259408.Spec := by
  intro n
  simp only [A341510, Nat.add_sub_cancel]

end A341510

/-! ## A341510.P7736173904723863308

`A005940(1+A156552(row(n)-col(n)+1)+A156552(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341510.P7736173904723863308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A156552 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + A156552 (SequenceMachineLib.triCol n + 1)).toNat

end

end A341510.P7736173904723863308

namespace A341510

/-- `A005940(1+A156552(row(n)-col(n)+1)+A156552(col(n)+1))` -/
def P7736173904723863308.Spec : Prop :=
  ∀ n, P7736173904723863308.a n = A341510 (n + 1)

theorem P7736173904723863308.correct : P7736173904723863308.Spec := by
  intro n
  simp only [A341510, Nat.add_sub_cancel, A341510.P7736173904723863308.a, A341510.P15947143278224259408.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341510

/-! ## A341510.P7826898386627460796

`A351960(C(A351960(n), 2))`
-/

namespace A341510.P7826898386627460796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351960 (Nat.choose (A351960 n).toNat 2)

end

end A341510.P7826898386627460796

namespace A341510

/-- `A351960(C(A351960(n), 2))` -/
def P7826898386627460796.Spec : Prop :=
  ∀ n, P7826898386627460796.a n = A341510 (n + 1)

end A341510

/-! ## A341510.P6538952671864455841

`A262681(A124975(n+1))+A003056(n)`
-/

namespace A341510.P6538952671864455841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A124975 (n + 1)).toNat + A003056 n

end

end A341510.P6538952671864455841

namespace A341510

/-- `A262681(A124975(n+1))+A003056(n)` -/
def P6538952671864455841.Spec : Prop :=
  ∀ n, P6538952671864455841.a n = A341510 (n + 1)

end A341510

/-! ## A341510.P14077881526800758546

`A262681(A124975(n+1))+∑[A073424(n)]`
-/

namespace A341510.P14077881526800758546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A124975 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341510.P14077881526800758546

namespace A341510

/-- `A262681(A124975(n+1))+∑[A073424(n)]` -/
def P14077881526800758546.Spec : Prop :=
  ∀ n, P14077881526800758546.a n = A341510 (n + 1)

end A341510

/-!
# A341511: Triangular array T(n,k) = A005940(1+A156552(n)+A156552(k)), read by rows, with n >= 1, 1 <= k <= n.

The programs for A341511, the canonical program `A341511.P13606444023911889742` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341511 has offset 1).

The definition of A341511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341511.P13606444023911889742

`A005940(1+A156552(row(n)+1)+A156552(col(n)+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341511

/-- `A005940(1+A156552(row(n)+1)+A156552(col(n)+1))` -/
def P13606444023911889742.Spec : Prop :=
  ∀ n, P13606444023911889742.a n = A341511 (n + 1)

theorem P13606444023911889742.correct : P13606444023911889742.Spec := by
  intro n
  simp only [A341511, Nat.add_sub_cancel]

end A341511

/-! ## A341511.P12507157319338430315

`A341510(A245300(n)+1)`
-/

namespace A341511.P12507157319338430315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341510 (A245300 n + 1).toNat

end

end A341511.P12507157319338430315

namespace A341511

/-- `A341510(A245300(n)+1)` -/
def P12507157319338430315.Spec : Prop :=
  ∀ n, P12507157319338430315.a n = A341511 (n + 1)

end A341511

/-! ## A341511.P10470416712164774044

`A005940(A094727(n+1)%A225893(n+1))`
-/

namespace A341511.P10470416712164774044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A094727 (n + 1)) (A225893 (n + 1))).toNat

end

end A341511.P10470416712164774044

namespace A341511

/-- `A005940(A094727(n+1)%A225893(n+1))` -/
def P10470416712164774044.Spec : Prop :=
  ∀ n, P10470416712164774044.a n = A341511 (n + 1)

end A341511

/-! ## A341511.P4364419644110822654

`A252753(A134478(n)%A175298(A001588(n)))`
-/

namespace A341511.P4364419644110822654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (Int.tmod (A134478 n) (A175298 (A001588 n).toNat)).toNat

end

end A341511.P4364419644110822654

namespace A341511

/-- `A252753(A134478(n)%A175298(A001588(n)))` -/
def P4364419644110822654.Spec : Prop :=
  ∀ n, P4364419644110822654.a n = A341511 (n + 1)

end A341511

/-! ## A341511.P13873552735488966003

`A005940(A094727(n+1)%A075944(n))`
-/

namespace A341511.P13873552735488966003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A094727 (n + 1)) (A075944 n)).toNat

end

end A341511.P13873552735488966003

namespace A341511

/-- `A005940(A094727(n+1)%A075944(n))` -/
def P13873552735488966003.Spec : Prop :=
  ∀ n, P13873552735488966003.a n = A341511 (n + 1)

end A341511

/-!
# A341512: a(n) = A341529(n) - A341528(n) = (sigma(n)*A003961(n)) - (n*sigma(A003961(n))).

The programs for A341512, the canonical program `A341512.P10028097722280494924` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341512 has offset 1).

The definition of A341512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341512.P10028097722280494924

`A341529(n+1)-A341528(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341512

/-- `A341529(n+1)-A341528(n+1)` -/
def P10028097722280494924.Spec : Prop :=
  ∀ n, P10028097722280494924.a n = A341512 (n + 1)

theorem P10028097722280494924.correct : P10028097722280494924.Spec := by
  intro n
  simp only [A341512, Nat.add_sub_cancel]

end A341512

/-! ## A341512.P11157121404359440908

`A000203(n+1)*A003961(n+1)-(n+1)*A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341512.P11157121404359440908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A003961 (n + 1) - (n + 1 : ℤ) * A000203 (A003961 (n + 1)).toNat

end

end A341512.P11157121404359440908

namespace A341512

/-- `A000203(n+1)*A003961(n+1)-(n+1)*A000203(A003961(n+1))` -/
def P11157121404359440908.Spec : Prop :=
  ∀ n, P11157121404359440908.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P10306756951723391315

`∑{d}[n+1, A346239(#)]`
-/

namespace A341512.P10306756951723391315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346239 d

end

end A341512.P10306756951723391315

namespace A341512

/-- `∑{d}[n+1, A346239(#)]` -/
def P10306756951723391315.Spec : Prop :=
  ∀ n, P10306756951723391315.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P15924404693573369722

`A346240(n+1)+A346239(n+1)`
-/

namespace A341512.P15924404693573369722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346240 (n + 1) + A346239 (n + 1)

end

end A341512.P15924404693573369722

namespace A341512

/-- `A346240(n+1)+A346239(n+1)` -/
def P15924404693573369722.Spec : Prop :=
  ∀ n, P15924404693573369722.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P16055490406795812410

`A388977(n+1)-A388976(n+1)`
-/

namespace A341512.P16055490406795812410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388977 (n + 1) - A388976 (n + 1)

end

end A341512.P16055490406795812410

namespace A341512

/-- `A388977(n+1)-A388976(n+1)` -/
def P16055490406795812410.Spec : Prop :=
  ∀ n, P16055490406795812410.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P5470287036514553791

`A341529(n+1)-(n+1)*A003973(n+1)`
-/

namespace A341512.P5470287036514553791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - (n + 1 : ℤ) * A003973 (n + 1)

end

end A341512.P5470287036514553791

namespace A341512

/-- `A341529(n+1)-(n+1)*A003973(n+1)` -/
def P5470287036514553791.Spec : Prop :=
  ∀ n, P5470287036514553791.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P1653636528529809735

`∑{d}[n+1, A191002(#)*A336853((n+1)/#)]`
-/

namespace A341512.P1653636528529809735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191002 d * A336853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341512.P1653636528529809735

namespace A341512

/-- `∑{d}[n+1, A191002(#)*A336853((n+1)/#)]` -/
def P1653636528529809735.Spec : Prop :=
  ∀ n, P1653636528529809735.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P14488525621322755458

`A347097(n+1)-(A347096(n+1)+A063524(n+1))`
-/

namespace A341512.P14488525621322755458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347097 (n + 1) - (A347096 (n + 1) + A063524 (n + 1))

end

end A341512.P14488525621322755458

namespace A341512

/-- `A347097(n+1)-(A347096(n+1)+A063524(n+1))` -/
def P14488525621322755458.Spec : Prop :=
  ∀ n, P14488525621322755458.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P5396927281354385630

`A346240(n+1)+A347125(n+1)-A347124(n+1)`
-/

namespace A341512.P5396927281354385630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346240 (n + 1) + (A347125 (n + 1) - A347124 (n + 1))

end

end A341512.P5396927281354385630

namespace A341512

/-- `A346240(n+1)+A347125(n+1)-A347124(n+1)` -/
def P5396927281354385630.Spec : Prop :=
  ∀ n, P5396927281354385630.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P205942757588340212

`A000203(n+1)*A003961(n+1)-A341528(n+1)`
-/

namespace A341512.P205942757588340212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A003961 (n + 1) - A341528 (n + 1)

end

end A341512.P205942757588340212

namespace A341512

/-- `A000203(n+1)*A003961(n+1)-A341528(n+1)` -/
def P205942757588340212.Spec : Prop :=
  ∀ n, P205942757588340212.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P621026624751665267

`(A341527(n+1)-A341526(n+1))*A341530(n+1)`
-/

namespace A341512.P621026624751665267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341527 (n + 1) - A341526 (n + 1)) * A341530 (n + 1)

end

end A341512.P621026624751665267

namespace A341512

/-- `(A341527(n+1)-A341526(n+1))*A341530(n+1)` -/
def P621026624751665267.Spec : Prop :=
  ∀ n, P621026624751665267.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P126021178604357783

`A341527(n+1)*A341530(n+1)-A341528(n+1)`
-/

namespace A341512.P126021178604357783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1) * A341530 (n + 1) - A341528 (n + 1)

end

end A341512.P126021178604357783

namespace A341512

/-- `A341527(n+1)*A341530(n+1)-A341528(n+1)` -/
def P126021178604357783.Spec : Prop :=
  ∀ n, P126021178604357783.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P15119481248536053370

`A341529(n+1)-A341526(n+1)*A341530(n+1)`
-/

namespace A341512.P15119481248536053370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - A341526 (n + 1) * A341530 (n + 1)

end

end A341512.P15119481248536053370

namespace A341512

/-- `A341529(n+1)-A341526(n+1)*A341530(n+1)` -/
def P15119481248536053370.Spec : Prop :=
  ∀ n, P15119481248536053370.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P16391460608858076032

`A342661(A003961(n+1))-A341528(n+1)`
-/

namespace A341512.P16391460608858076032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342661 (A003961 (n + 1)).toNat - A341528 (n + 1)

end

end A341512.P16391460608858076032

namespace A341512

/-- `A342661(A003961(n+1))-A341528(n+1)` -/
def P16391460608858076032.Spec : Prop :=
  ∀ n, P16391460608858076032.a n = A341512 (n + 1)

end A341512

/-! ## A341512.P13856812961656594246

`A341529(n+1)-A342662(A003961(n+1))`
-/

namespace A341512.P13856812961656594246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - A342662 (A003961 (n + 1)).toNat

end

end A341512.P13856812961656594246

namespace A341512

/-- `A341529(n+1)-A342662(A003961(n+1))` -/
def P13856812961656594246.Spec : Prop :=
  ∀ n, P13856812961656594246.a n = A341512 (n + 1)

end A341512

/-!
# A341515: The Collatz or 3x+1 map (A006370) conjugated by unary-binary-encoding (A156552).

The programs for A341515, the canonical program `A341515.P13419498278363186301` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341515 has offset 1).

The definition of A341515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341515.P13419498278363186301

`A005940(1+A006370(A156552(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341515

/-- `A005940(1+A006370(A156552(n+1)))` -/
def P13419498278363186301.Spec : Prop :=
  ∀ n, P13419498278363186301.a n = A341515 (n + 1)

theorem P13419498278363186301.correct : P13419498278363186301.Spec := by
  intro n
  simp only [A341515, Nat.add_sub_cancel]

end A341515

/-! ## A341515.P8842111130431520014

`∑{d}[n+1, A347115(#)]`
-/

namespace A341515.P8842111130431520014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347115 d

end

end A341515.P8842111130431520014

namespace A341515

/-- `∑{d}[n+1, A347115(#)]` -/
def P8842111130431520014.Spec : Prop :=
  ∀ n, P8842111130431520014.a n = A341515 (n + 1)

end A341515

/-!
# A341516: The Collatz or 3x+1 function T (A014682) conjugated by unary-binary-encoding (A156552).

The programs for A341516, the canonical program `A341516.P412323159333711939` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341516 has offset 1).

The definition of A341516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341516.P412323159333711939

`A005940(1+A014682(A156552(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341516

/-- `A005940(1+A014682(A156552(n+1)))` -/
def P412323159333711939.Spec : Prop :=
  ∀ n, P412323159333711939.a n = A341516 (n + 1)

theorem P412323159333711939.correct : P412323159333711939.Spec := by
  intro n
  simp only [A341516, Nat.add_sub_cancel]

end A341516

/-! ## A341516.P155236589606157744

`A352892(∑[Δ[lcm(2, n)]+1])/2`
-/

namespace A341516.P155236589606157744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A341516.P155236589606157744

namespace A341516

/-- `A352892(∑[Δ[lcm(2, n)]+1])/2` -/
def P155236589606157744.Spec : Prop :=
  ∀ n, P155236589606157744.a n = (A341516 (n + 1) : ℚ)

end A341516

/-! ## A341516.P11381834387681159261

`A352892(A106833(n+1))/2`
-/

namespace A341516.P11381834387681159261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352892 (A106833 (n + 1)).toNat : ℚ) / 2

end

end A341516.P11381834387681159261

namespace A341516

/-- `A352892(A106833(n+1))/2` -/
def P11381834387681159261.Spec : Prop :=
  ∀ n, P11381834387681159261.a n = (A341516 (n + 1) : ℚ)

end A341516

/-! ## A341516.P10642833539494108949

`A252463(gcd(2, n)*A341515(n+1))`
-/

namespace A341516.P10642833539494108949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 ((Nat.gcd 2 n : ℤ) * A341515 (n + 1)).toNat

end

end A341516.P10642833539494108949

namespace A341516

/-- `A252463(gcd(2, n)*A341515(n+1))` -/
def P10642833539494108949.Spec : Prop :=
  ∀ n, P10642833539494108949.a n = A341516 (n + 1)

end A341516

/-! ## A341516.P14547555823725747841

`A252463(A040001(n)*A341515(n+1))`
-/

namespace A341516.P14547555823725747841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A040001 n * A341515 (n + 1)).toNat

end

end A341516.P14547555823725747841

namespace A341516

/-- `A252463(A040001(n)*A341515(n+1))` -/
def P14547555823725747841.Spec : Prop :=
  ∀ n, P14547555823725747841.a n = A341516 (n + 1)

end A341516

/-!
# A341517: a(n) = mu(A327859(n)), where mu is the Möbius function, A008683.

The programs for A341517, there is no canonical definition to state claims against.
-/

/-! ## A341517.P1283706682297844267

`A008683(A327859(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341517.P1283706682297844267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A327859 n).toNat

end

end A341517.P1283706682297844267

/-! ## A341517.P39760547942776630

`A008683(A276086(A003415(n)))`
-/

namespace A341517.P39760547942776630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A276086 (A003415 n).toNat).toNat

end

end A341517.P39760547942776630

/-! ## A341517.P14384926518452333332

`∏{e}[A327859(n), A011639(#)]`
-/

namespace A341517.P14384926518452333332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011639 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P14384926518452333332

/-! ## A341517.P4750982532505713440

`∏{e}[A327859(n), A011642(#)]`
-/

namespace A341517.P4750982532505713440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011642 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P4750982532505713440

/-! ## A341517.P10310396559706573262

`∏{e}[A327859(n), A014020(#)]`
-/

namespace A341517.P10310396559706573262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014020 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P10310396559706573262

/-! ## A341517.P8115836894502720438

`∏{e}[A327859(n), A014026(#)]`
-/

namespace A341517.P8115836894502720438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014026 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P8115836894502720438

/-! ## A341517.P9716331789905865831

`∏{e}[A327859(n), A014944(#)]`
-/

namespace A341517.P9716331789905865831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014944 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P9716331789905865831

/-! ## A341517.P1165541282419898158

`∏{e}[A327859(n), A015054(#)]`
-/

namespace A341517.P1165541282419898158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A015054 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P1165541282419898158

/-! ## A341517.P10885305389329372144

`∏{e}[A327859(n), A015274(#)]`
-/

namespace A341517.P10885305389329372144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A015274 (Nat.factorization (f1 n).natAbs p)

end

end A341517.P10885305389329372144

/-!
# A341518: Numbers k such that the primorial base representation of their arithmetic derivative does not contain digits larger than 1.

The programs for A341518, there is no canonical definition to state claims against.
-/

/-! ## A341518.P2851966207061783124

`∪[A158611(n+1), A369641(n+1)]`
-/

namespace A341518.P2851966207061783124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341518.P2851966207061783124

/-! ## A341518.P9469510426050370992

`lt[0, abs(A341517(n))]`
-/

namespace A341518.P9469510426050370992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341517 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341518.P9469510426050370992

/-! ## A341518.P5184642581878399476

`lt[0, A341517(n%(n+1))²]`
-/

namespace A341518.P5184642581878399476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341517 (n % (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341518.P5184642581878399476

/-! ## A341518.P15348520549332296758

`eq[1, A341517(n)^A001316(n)]`
-/

namespace A341518.P15348520549332296758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341517 n : ℚ) ^ (A001316 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A341518.P15348520549332296758

/-! ## A341518.P2760968482454767225

`lt[2, A006530(A341517(n)²^n+2)]`
-/

namespace A341518.P2760968482454767225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A341517 n ^ 2) ^ n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341518.P2760968482454767225

/-! ## A341518.P14540384644935009802

`lt[A006530(n+1), A006530(n+1)+A341517(n)²]`
-/

namespace A341518.P14540384644935009802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A341517 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341518.P14540384644935009802

/-! ## A341518.P8558427803246130899

`eq[1, A328390(round(acot(n)+n))]`
-/

namespace A341518.P8558427803246130899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341518.P8558427803246130899

/-! ## A341518.P2233729989188930187

`lt[A328390(round(sqrt(n²+1))), 2]`
-/

namespace A341518.P2233729989188930187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A341518.P2233729989188930187

/-! ## A341518.P7983642957149091457

`eq[1, gcd(A000038(n), A341517(n))]`
-/

namespace A341518.P7983642957149091457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341518.P7983642957149091457

/-! ## A341518.P423624498686503176

`eq[0, A328615(A003415(n))]`
-/

namespace A341518.P423624498686503176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341518.P423624498686503176

/-! ## A341518.P16366790101877625902

`eq[1, A328390(A233583(n+1))]`
-/

namespace A341518.P16366790101877625902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341518.P16366790101877625902

/-!
# A341519: Number of prime factors (with multiplicity) shared by A003961(n) and A003973(n): a(n) = bigomega(gcd(A003961(n), sigma(A003961(n)))).

The programs for A341519, the canonical program `A341519.P3179261945552119542` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341519 has offset 1).

The definition of A341519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341519.P12219662570397665125

`A001222(A336850(n+1))`
-/

namespace A341519.P12219662570397665125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336850 (n + 1)).toNat

end

end A341519.P12219662570397665125

namespace A341519

/-- `A001222(A336850(n+1))` -/
def P12219662570397665125.Spec : Prop :=
  ∀ n, P12219662570397665125.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P12435590027625464337

`A001222(gcd(A003961(n+1), A003973(n+1)))`
-/

namespace A341519.P12435590027625464337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A003961 (n + 1)) (A003973 (n + 1)))

end

end A341519.P12435590027625464337

namespace A341519

/-- `A001222(gcd(A003961(n+1), A003973(n+1)))` -/
def P12435590027625464337.Spec : Prop :=
  ∀ n, P12435590027625464337.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P3179261945552119542

`A001222(gcd(A003961(n+1), A000203(A003961(n+1))))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341519

/-- `A001222(gcd(A003961(n+1), A000203(A003961(n+1))))` -/
def P3179261945552119542.Spec : Prop :=
  ∀ n, P3179261945552119542.a n = A341519 (n + 1)

theorem P3179261945552119542.correct : P3179261945552119542.Spec := by
  intro n
  simp only [A341519, Nat.add_sub_cancel]

end A341519

/-! ## A341519.P6958856000614148951

`A341523(A003961(n+1))`
-/

namespace A341519.P6958856000614148951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (A003961 (n + 1)).toNat

end

end A341519.P6958856000614148951

namespace A341519

/-- `A341523(A003961(n+1))` -/
def P6958856000614148951.Spec : Prop :=
  ∀ n, P6958856000614148951.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P7776385512026853832

`∑{e}[A348940(n+1), #]`
-/

namespace A341519.P7776385512026853832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A341519.P7776385512026853832

namespace A341519

/-- `∑{e}[A348940(n+1), #]` -/
def P7776385512026853832.Spec : Prop :=
  ∀ n, (P7776385512026853832.a n : ℤ) = A341519 (n + 1)

end A341519

/-! ## A341519.P14513419992583939163

`A001222(A348940(n+1))`
-/

namespace A341519.P14513419992583939163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A348940 (n + 1)).toNat

end

end A341519.P14513419992583939163

namespace A341519

/-- `A001222(A348940(n+1))` -/
def P14513419992583939163.Spec : Prop :=
  ∀ n, P14513419992583939163.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P3834329394920392777

`A001222(n+1)-A001222(A348941(n+1))`
-/

namespace A341519.P3834329394920392777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A348941 (n + 1)).toNat

end

end A341519.P3834329394920392777

namespace A341519

/-- `A001222(n+1)-A001222(A348941(n+1))` -/
def P3834329394920392777.Spec : Prop :=
  ∀ n, P3834329394920392777.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P10051641148166377810

`A001222(A003961(n+1)/A336849(n+1))`
-/

namespace A341519.P10051641148166377810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / (A336849 (n + 1) : ℚ))).toNat

end

end A341519.P10051641148166377810

namespace A341519

/-- `A001222(A003961(n+1)/A336849(n+1))` -/
def P10051641148166377810.Spec : Prop :=
  ∀ n, P10051641148166377810.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P5825485272444895995

`A001222(n+1)-A001222(A336849(n+1))`
-/

namespace A341519.P5825485272444895995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A336849 (n + 1)).toNat

end

end A341519.P5825485272444895995

namespace A341519

/-- `A001222(n+1)-A001222(A336849(n+1))` -/
def P5825485272444895995.Spec : Prop :=
  ∀ n, P5825485272444895995.a n = A341519 (n + 1)

end A341519

/-! ## A341519.P17567191682488733423

`A001222(n+1)-A341524(A003961(n+1))`
-/

namespace A341519.P17567191682488733423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A341524 (A003961 (n + 1)).toNat

end

end A341519.P17567191682488733423

namespace A341519

/-- `A001222(n+1)-A341524(A003961(n+1))` -/
def P17567191682488733423.Spec : Prop :=
  ∀ n, P17567191682488733423.a n = A341519 (n + 1)

end A341519

/-!
# A341520: Square array A(n,k) = A156552(A005940(1+n)*A005940(1+k)), read by antidiagonals.

The programs for A341520, the canonical program `A341520.P12235930239429386012` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341520 has offset 0).

The definition of A341520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341520.P12235930239429386012

`A156552(A005940(1+col(n))*A005940(1+row(n)-col(n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341520

/-- `A156552(A005940(1+col(n))*A005940(1+row(n)-col(n)))` -/
def P12235930239429386012.Spec : Prop :=
  ∀ n, P12235930239429386012.a n = A341520 n

theorem P12235930239429386012.correct : P12235930239429386012.Spec := by
  intro n
  simp only [A341520]

end A341520

/-! ## A341520.P1217932782737924993

`A156552(A005940(1+row(n)-col(n))*A005940(1+col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341520.P1217932782737924993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A005940 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat * A005940 (1 + SequenceMachineLib.triCol n)).toNat

end

end A341520.P1217932782737924993

namespace A341520

/-- `A156552(A005940(1+row(n)-col(n))*A005940(1+col(n)))` -/
def P1217932782737924993.Spec : Prop :=
  ∀ n, P1217932782737924993.a n = A341520 n

theorem P1217932782737924993.correct : P1217932782737924993.Spec := by
  intro n
  simp only [A341520, Nat.add_sub_cancel, A341520.P1217932782737924993.a, A341520.P12235930239429386012.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341520

/-! ## A341520.P471645611665177559

`A216622(n+1)-A324394(A317525(n+1))`
-/

namespace A341520.P471645611665177559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216622 (n + 1) - A324394 (A317525 (n + 1)).toNat

end

end A341520.P471645611665177559

namespace A341520

/-- `A216622(n+1)-A324394(A317525(n+1))` -/
def P471645611665177559.Spec : Prop :=
  ∀ n, P471645611665177559.a n = A341520 n

end A341520

/-! ## A341520.P6461580252732422261

`A216622(n+1)-A324394(A320371(n+1))`
-/

namespace A341520.P6461580252732422261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216622 (n + 1) - A324394 (A320371 (n + 1)).toNat

end

end A341520.P6461580252732422261

namespace A341520

/-- `A216622(n+1)-A324394(A320371(n+1))` -/
def P6461580252732422261.Spec : Prop :=
  ∀ n, P6461580252732422261.a n = A341520 n

end A341520

/-! ## A341520.P2779373143973056592

`A119387(A220545(n+1)%A059173(n+3))`
-/

namespace A341520.P2779373143973056592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (Int.tmod (A220545 (n + 1)) (A059173 (n + 3))).toNat

end

end A341520.P2779373143973056592

namespace A341520

/-- `A119387(A220545(n+1)%A059173(n+3))` -/
def P2779373143973056592.Spec : Prop :=
  ∀ n, P2779373143973056592.a n = A341520 n

end A341520

/-!
# A341521: Triangular array T(n,k) = A156552(A005940(1+n)*A005940(1+k)), read by rows, with n >= 0, 0 <= k <= n.

The programs for A341521, the canonical program `A341521.P1344076710689609174` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341521 has offset 0).

The definition of A341521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341521.P1344076710689609174

`A156552(A005940(1+col(n))*A005940(1+row(n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A341521

/-- `A156552(A005940(1+col(n))*A005940(1+row(n)))` -/
def P1344076710689609174.Spec : Prop :=
  ∀ n, P1344076710689609174.a n = A341521 n

theorem P1344076710689609174.correct : P1344076710689609174.Spec := by
  intro n
  simp only [A341521]

end A341521

/-! ## A341521.P9373349294952955346

`A156552(A005940(1+row(n))*A005940(1+col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341521.P9373349294952955346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A005940 (1 + SequenceMachineLib.triRow n) * A005940 (1 + SequenceMachineLib.triCol n)).toNat

end

end A341521.P9373349294952955346

namespace A341521

/-- `A156552(A005940(1+row(n))*A005940(1+col(n)))` -/
def P9373349294952955346.Spec : Prop :=
  ∀ n, P9373349294952955346.a n = A341521 n

theorem P9373349294952955346.correct : P9373349294952955346.Spec := by
  intro n
  simp only [A341521, Nat.add_sub_cancel, A341521.P9373349294952955346.a, A341521.P1344076710689609174.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A341521

/-! ## A341521.P1719209682801265530

`A341520(A245300(n))`
-/

namespace A341521.P1719209682801265530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341520 (A245300 n).toNat

end

end A341521.P1719209682801265530

namespace A341521

/-- `A341520(A245300(n))` -/
def P1719209682801265530.Spec : Prop :=
  ∀ n, P1719209682801265530.a n = A341521 n

end A341521

/-! ## A341521.P16107196391256998181

`A156552(A075362(n+1))%A225557(n+3)`
-/

namespace A341521.P16107196391256998181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (A075362 (n + 1)).toNat) (A225557 (n + 3))

end

end A341521.P16107196391256998181

namespace A341521

/-- `A156552(A075362(n+1))%A225557(n+3)` -/
def P16107196391256998181.Spec : Prop :=
  ∀ n, P16107196391256998181.a n = A341521 n

end A341521

/-! ## A341521.P7363032688736375131

`A156552(A075362(n+1)%A235984(n+1))`
-/

namespace A341521.P7363032688736375131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A075362 (n + 1)) (A235984 (n + 1))).toNat

end

end A341521.P7363032688736375131

namespace A341521

/-- `A156552(A075362(n+1)%A235984(n+1))` -/
def P7363032688736375131.Spec : Prop :=
  ∀ n, P7363032688736375131.a n = A341521 n

end A341521

/-!
# A341522: a(n) = A156552(3*A005940(1+n)).

The programs for A341522, the canonical program `A341522.P18027437732987763717` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341522 has offset 0).

The definition of A341522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341522.P18027437732987763717

`1+n+A086799(1+n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341522

/-- `1+n+A086799(1+n)` -/
def P18027437732987763717.Spec : Prop :=
  ∀ n, P18027437732987763717.a n = A341522 n

theorem P18027437732987763717.correct : P18027437732987763717.Spec := by
  intro n
  simp only [A341522]

end A341522

/-! ## A341522.P4807999175004498441

`1+2*n+2^A007814(1+n)`
-/

namespace A341522.P4807999175004498441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + 2 * n : ℚ) + (2 : ℚ) ^ (A007814 (1 + n) : ℤ)

end

end A341522.P4807999175004498441

namespace A341522

/-- `1+2*n+2^A007814(1+n)` -/
def P4807999175004498441.Spec : Prop :=
  ∀ n, P4807999175004498441.a n = (A341522 n : ℚ)

end A341522

/-! ## A341522.P4248994812459510057

`A156552(3*A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341522.P4248994812459510057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (3 * A005940 (1 + n)).toNat

end

end A341522.P4248994812459510057

namespace A341522

/-- `A156552(3*A005940(1+n))` -/
def P4248994812459510057.Spec : Prop :=
  ∀ n, P4248994812459510057.a n = A341522 n

end A341522

/-! ## A341522.P11253084247241540460

`or(n, n+1)+1+n`
-/

namespace A341522.P11253084247241540460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 1 + n

end

end A341522.P11253084247241540460

namespace A341522

/-- `or(n, n+1)+1+n` -/
def P11253084247241540460.Spec : Prop :=
  ∀ n, (P11253084247241540460.a n : ℤ) = A341522 n

end A341522

/-! ## A341522.P11496857299567642169

`∑[Δ[and(n, -n)]+2]-1`
-/

namespace A341522.P11496857299567642169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A341522.P11496857299567642169

namespace A341522

/-- `∑[Δ[and(n, -n)]+2]-1` -/
def P11496857299567642169.Spec : Prop :=
  ∀ n, P11496857299567642169.a n = A341522 n

end A341522

/-! ## A341522.P2976124640683157547

`3*n+2-and(n, n+1)`
-/

namespace A341522.P2976124640683157547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (Nat.land n (n + 1) : ℤ)

end

end A341522.P2976124640683157547

namespace A341522

/-- `3*n+2-and(n, n+1)` -/
def P2976124640683157547.Spec : Prop :=
  ∀ n, P2976124640683157547.a n = A341522 n

end A341522

/-! ## A341522.P18153359739829640491

`Δ[n²]+2^val(n+1, 2)`
-/

namespace A341522.P18153359739829640491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A341522.P18153359739829640491

namespace A341522

/-- `Δ[n²]+2^val(n+1, 2)` -/
def P18153359739829640491.Spec : Prop :=
  ∀ n, P18153359739829640491.a n = A341522 n

end A341522

/-! ## A341522.P18299095327093869996

`∑[2-Δ[and(n, n-1)]]+n`
-/

namespace A341522.P18299095327093869996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A341522.P18299095327093869996

namespace A341522

/-- `∑[2-Δ[and(n, n-1)]]+n` -/
def P18299095327093869996.Spec : Prop :=
  ∀ n, P18299095327093869996.a n = A341522 n

end A341522

/-! ## A341522.P10893844586308318683

`n-∑[Δ[and(n, n-1)]-2]`
-/

namespace A341522.P10893844586308318683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341522.P10893844586308318683

namespace A341522

/-- `n-∑[Δ[and(n, n-1)]-2]` -/
def P10893844586308318683.Spec : Prop :=
  ∀ n, P10893844586308318683.a n = A341522 n

end A341522

/-! ## A341522.P11921450083856331833

`and(n, -(n+2))+2*(n+1)`
-/

namespace A341522.P11921450083856331833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) + (2 * (n + 1) : ℤ)

end

end A341522.P11921450083856331833

namespace A341522

/-- `and(n, -(n+2))+2*(n+1)` -/
def P11921450083856331833.Spec : Prop :=
  ∀ n, P11921450083856331833.a n = A341522 n

end A341522

/-! ## A341522.P12923652783050329138

`n+2+and(n, -(n+2))+n`
-/

namespace A341522.P12923652783050329138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (Int.land (n : ℤ) (-(n + 2 : ℤ)) + (n : ℤ))

end

end A341522.P12923652783050329138

namespace A341522

/-- `n+2+and(n, -(n+2))+n` -/
def P12923652783050329138.Spec : Prop :=
  ∀ n, P12923652783050329138.a n = A341522 n

end A341522

/-! ## A341522.P17398217809506433154

`2^val(n+1, 2)+2*n+1`
-/

namespace A341522.P17398217809506433154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 + (2 * n + 1)

end

end A341522.P17398217809506433154

namespace A341522

/-- `2^val(n+1, 2)+2*n+1` -/
def P17398217809506433154.Spec : Prop :=
  ∀ n, (P17398217809506433154.a n : ℤ) = A341522 n

end A341522

/-! ## A341522.P8258000039253480791

`2*n-or(n, n-2-2*n)`
-/

namespace A341522.P8258000039253480791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))

end

end A341522.P8258000039253480791

namespace A341522

/-- `2*n-or(n, n-2-2*n)` -/
def P8258000039253480791.Spec : Prop :=
  ∀ n, P8258000039253480791.a n = A341522 n

end A341522

/-! ## A341522.P3662152854851651683

`n+2-and(n, n+1)+n+n`
-/

namespace A341522.P3662152854851651683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land n (n + 1) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A341522.P3662152854851651683

namespace A341522

/-- `n+2-and(n, n+1)+n+n` -/
def P3662152854851651683.Spec : Prop :=
  ∀ n, P3662152854851651683.a n = A341522 n

end A341522

/-! ## A341522.P8764176828029303011

`2*n+1-xor(n, -(n+2))/2`
-/

namespace A341522.P8764176828029303011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2

end

end A341522.P8764176828029303011

namespace A341522

/-- `2*n+1-xor(n, -(n+2))/2` -/
def P8764176828029303011.Spec : Prop :=
  ∀ n, P8764176828029303011.a n = (A341522 n : ℚ)

end A341522

/-! ## A341522.P6815894963962883455

`ceil(xor(n, n+1)/2+2*n+1)`
-/

namespace A341522.P6815894963962883455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 2 + (2 * n + 1 : ℚ)⌉

end

end A341522.P6815894963962883455

namespace A341522

/-- `ceil(xor(n, n+1)/2+2*n+1)` -/
def P6815894963962883455.Spec : Prop :=
  ∀ n, P6815894963962883455.a n = A341522 n

end A341522

/-! ## A341522.P8688492799243230095

`round(xor(n, n+1)/2+2*n+1)`
-/

namespace A341522.P8688492799243230095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2 + (2 * n + 1 : ℚ))

end

end A341522.P8688492799243230095

namespace A341522

/-- `round(xor(n, n+1)/2+2*n+1)` -/
def P8688492799243230095.Spec : Prop :=
  ∀ n, P8688492799243230095.a n = A341522 n

end A341522

/-! ## A341522.P3889910807441372408

`gcd(n+1, (3-n)^10)+2*n+1`
-/

namespace A341522.P3889910807441372408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) + (2 * n + 1)

end

end A341522.P3889910807441372408

namespace A341522

/-- `gcd(n+1, (3-n)^10)+2*n+1` -/
def P3889910807441372408.Spec : Prop :=
  ∀ n, (P3889910807441372408.a n : ℤ) = A341522 n

end A341522

/-! ## A341522.P15548001130930832572

`xor(n+1, and(n, n+1))+2*n+1`
-/

namespace A341522.P15548001130930832572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land n (n + 1)) + (2 * n + 1)

end

end A341522.P15548001130930832572

namespace A341522

/-- `xor(n+1, and(n, n+1))+2*n+1` -/
def P15548001130930832572.Spec : Prop :=
  ∀ n, (P15548001130930832572.a n : ℤ) = A341522 n

end A341522

/-! ## A341522.P3494396693705305573

`∑[2-A322018(n)+n]`
-/

namespace A341522.P3494396693705305573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A322018 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341522.P3494396693705305573

namespace A341522

/-- `∑[2-A322018(n)+n]` -/
def P3494396693705305573.Spec : Prop :=
  ∀ n, P3494396693705305573.a n = A341522 n

end A341522

/-!
# A341523: Number of prime factors (with multiplicity) shared by n and sigma(n): a(n) = bigomega(gcd(n, sigma(n))).

The programs for A341523, the canonical program `A341523.P2963797910965167427` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341523 has offset 1).

The definition of A341523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341523.P7401427181537931468

`A001222(A009194(n+1))`
-/

namespace A341523.P7401427181537931468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009194 (n + 1)).toNat

end

end A341523.P7401427181537931468

namespace A341523

/-- `A001222(A009194(n+1))` -/
def P7401427181537931468.Spec : Prop :=
  ∀ n, P7401427181537931468.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P13056133301029504164

`A001222(n+1)-A341524(n+1)`
-/

namespace A341523.P13056133301029504164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A341524 (n + 1)

end

end A341523.P13056133301029504164

namespace A341523

/-- `A001222(n+1)-A341524(n+1)` -/
def P13056133301029504164.Spec : Prop :=
  ∀ n, P13056133301029504164.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P2963797910965167427

`A001222(gcd(n+1, A000203(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341523

/-- `A001222(gcd(n+1, A000203(n+1)))` -/
def P2963797910965167427.Spec : Prop :=
  ∀ n, P2963797910965167427.a n = A341523 (n + 1)

theorem P2963797910965167427.correct : P2963797910965167427.Spec := by
  intro n
  simp only [A341523, Nat.add_sub_cancel]

end A341523

/-! ## A341523.P17413395798482943423

`∑{e}[(n+1)/A017666(n+1), #]`
-/

namespace A341523.P17413395798482943423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A017666 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A341523.P17413395798482943423

namespace A341523

/-- `∑{e}[(n+1)/A017666(n+1), #]` -/
def P17413395798482943423.Spec : Prop :=
  ∀ n, (P17413395798482943423.a n : ℤ) = A341523 (n + 1)

end A341523

/-! ## A341523.P8821914282907561560

`A001222(gcd(∑{d}[n+1, #]+1+n, ∑{d}[n+1, #]))`
-/

namespace A341523.P8821914282907561560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d + 1 + n) (∑ d ∈ Nat.divisors (f2 n), d))

end

end A341523.P8821914282907561560

namespace A341523

/-- `A001222(gcd(∑{d}[n+1, #]+1+n, ∑{d}[n+1, #]))` -/
def P8821914282907561560.Spec : Prop :=
  ∀ n, P8821914282907561560.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P4947122377433534473

`A001222(gcd(n+1, Δ[A160664(n)]))`
-/

namespace A341523.P4947122377433534473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A341523.P4947122377433534473

namespace A341523

/-- `A001222(gcd(n+1, Δ[A160664(n)]))` -/
def P4947122377433534473.Spec : Prop :=
  ∀ n, P4947122377433534473.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P12575595607736773676

`A001222((n+1)/A017666(n+1))`
-/

namespace A341523.P12575595607736773676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A341523.P12575595607736773676

namespace A341523

/-- `A001222((n+1)/A017666(n+1))` -/
def P12575595607736773676.Spec : Prop :=
  ∀ n, P12575595607736773676.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P17453743492775060843

`A001222(∑{d}[n+1, #]/A017665(n+1))`
-/

namespace A341523.P17453743492775060843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A341523.P17453743492775060843

namespace A341523

/-- `A001222(∑{d}[n+1, #]/A017665(n+1))` -/
def P17453743492775060843.Spec : Prop :=
  ∀ n, P17453743492775060843.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P12606686950646396155

`A001222(gcd(∑{d}[n+1, #], A001065(n+1)))`
-/

namespace A341523.P12606686950646396155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A001065 (n + 1)))

end

end A341523.P12606686950646396155

namespace A341523

/-- `A001222(gcd(∑{d}[n+1, #], A001065(n+1)))` -/
def P12606686950646396155.Spec : Prop :=
  ∀ n, P12606686950646396155.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P11520536354364871018

`A001222(n+1)-A001222(A017666(n+1))`
-/

namespace A341523.P11520536354364871018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A017666 (n + 1)).toNat

end

end A341523.P11520536354364871018

namespace A341523

/-- `A001222(n+1)-A001222(A017666(n+1))` -/
def P11520536354364871018.Spec : Prop :=
  ∀ n, P11520536354364871018.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P4031358967199750428

`A001222(A000203(n+1)/A017665(n+1))`
-/

namespace A341523.P4031358967199750428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A341523.P4031358967199750428

namespace A341523

/-- `A001222(A000203(n+1)/A017665(n+1))` -/
def P4031358967199750428.Spec : Prop :=
  ∀ n, P4031358967199750428.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P3817646338854081308

`A001222(gcd(A001065(n+1), A033879(n+1)))`
-/

namespace A341523.P3817646338854081308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A001065 (n + 1)) (A033879 (n + 1)))

end

end A341523.P3817646338854081308

namespace A341523

/-- `A001222(gcd(A001065(n+1), A033879(n+1)))` -/
def P3817646338854081308.Spec : Prop :=
  ∀ n, P3817646338854081308.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P6611934556321217066

`A001222(gcd(A000027(n+1), A235799(n+1)))`
-/

namespace A341523.P6611934556321217066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000027 (n + 1)) (A235799 (n + 1)))

end

end A341523.P6611934556321217066

namespace A341523

/-- `A001222(gcd(A000027(n+1), A235799(n+1)))` -/
def P6611934556321217066.Spec : Prop :=
  ∀ n, P6611934556321217066.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P11922707204309356504

`A001222(gcd(A155085(n+1), A245092(2*n+1)))`
-/

namespace A341523.P11922707204309356504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A155085 (n + 1)) (A245092 (2 * n + 1)))

end

end A341523.P11922707204309356504

namespace A341523

/-- `A001222(gcd(A155085(n+1), A245092(2*n+1)))` -/
def P11922707204309356504.Spec : Prop :=
  ∀ n, P11922707204309356504.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P2281914767741155481

`A001222((A001065(n+1)+1+n)/A017665(n+1))`
-/

namespace A341523.P2281914767741155481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001065 (n + 1) + 1 + (n : ℤ) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A341523.P2281914767741155481

namespace A341523

/-- `A001222((A001065(n+1)+1+n)/A017665(n+1))` -/
def P2281914767741155481.Spec : Prop :=
  ∀ n, P2281914767741155481.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P11489336053228840873

`A001222((A155085(n+1)-(n+1))/A017665(n+1))`
-/

namespace A341523.P11489336053228840873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A155085 (n + 1) - (n + 1 : ℤ) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A341523.P11489336053228840873

namespace A341523

/-- `A001222((A155085(n+1)-(n+1))/A017665(n+1))` -/
def P11489336053228840873.Spec : Prop :=
  ∀ n, P11489336053228840873.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P16192092418367071064

`A001222(n+1)-A001222(A009242(n+1)/A000203(n+1))`
-/

namespace A341523.P16192092418367071064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (SequenceMachineLib.roundAway ((A009242 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A341523.P16192092418367071064

namespace A341523

/-- `A001222(n+1)-A001222(A009242(n+1)/A000203(n+1))` -/
def P16192092418367071064.Spec : Prop :=
  ∀ n, P16192092418367071064.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P18368087156696735301

`A001222(A324544(A250245(n+1)))`
-/

namespace A341523.P18368087156696735301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324544 (A250245 (n + 1)).toNat).toNat

end

end A341523.P18368087156696735301

namespace A341523

/-- `A001222(A324544(A250245(n+1)))` -/
def P18368087156696735301.Spec : Prop :=
  ∀ n, P18368087156696735301.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P17897909486469284862

`A001222(A004736(A286591(n+1)))`
-/

namespace A341523.P17897909486469284862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004736 (A286591 (n + 1)).toNat).toNat

end

end A341523.P17897909486469284862

namespace A341523

/-- `A001222(A004736(A286591(n+1)))` -/
def P17897909486469284862.Spec : Prop :=
  ∀ n, P17897909486469284862.a n = A341523 (n + 1)

end A341523

/-! ## A341523.P547134300384910820

`A001222(A324396(A005940(n+2)))`
-/

namespace A341523.P547134300384910820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324396 (A005940 (n + 2)).toNat).toNat

end

end A341523.P547134300384910820

namespace A341523

/-- `A001222(A324396(A005940(n+2)))` -/
def P547134300384910820.Spec : Prop :=
  ∀ n, P547134300384910820.a n = A341523 (n + 1)

end A341523

/-!
# A341524: Number of prime factors in A017666(n), counted with multiplicity: a(n) = bigomega(n) - bigomega(gcd(n, sigma(n))).

The programs for A341524, the canonical program `A341524.P17272334203022410647` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341524 has offset 1).

The definition of A341524 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341524.P13406568200444451922

`A001222(A017666(n+1))`
-/

namespace A341524.P13406568200444451922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017666 (n + 1)).toNat

end

end A341524.P13406568200444451922

namespace A341524

/-- `A001222(A017666(n+1))` -/
def P13406568200444451922.Spec : Prop :=
  ∀ n, P13406568200444451922.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P10523788063421536546

`A001222(n+1)-A341523(n+1)`
-/

namespace A341524.P10523788063421536546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A341523 (n + 1)

end

end A341524.P10523788063421536546

namespace A341524

/-- `A001222(n+1)-A341523(n+1)` -/
def P10523788063421536546.Spec : Prop :=
  ∀ n, P10523788063421536546.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P17272334203022410647

`A001222(n+1)-A001222(gcd(n+1, A000203(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341524

/-- `A001222(n+1)-A001222(gcd(n+1, A000203(n+1)))` -/
def P17272334203022410647.Spec : Prop :=
  ∀ n, P17272334203022410647.a n = A341524 (n + 1)

theorem P17272334203022410647.correct : P17272334203022410647.Spec := by
  intro n
  simp only [A341524, Nat.add_sub_cancel]

end A341524

/-! ## A341524.P15482258289693983811

`A001222((n+1)/gcd(n-1-2*n, ∑{d}[n+1, #]))`
-/

namespace A341524.P15482258289693983811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ))).toNat

end

end A341524.P15482258289693983811

namespace A341524

/-- `A001222((n+1)/gcd(n-1-2*n, ∑{d}[n+1, #]))` -/
def P15482258289693983811.Spec : Prop :=
  ∀ n, P15482258289693983811.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P5898908669657302580

`A001222((n+1)/A009194(n+1))`
-/

namespace A341524.P5898908669657302580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A009194 (n + 1) : ℚ))).toNat

end

end A341524.P5898908669657302580

namespace A341524

/-- `A001222((n+1)/A009194(n+1))` -/
def P5898908669657302580.Spec : Prop :=
  ∀ n, P5898908669657302580.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P199590919506329377

`A001222((n+1)/gcd(n+1, A000203(n+1)))`
-/

namespace A341524.P199590919506329377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ))).toNat

end

end A341524.P199590919506329377

namespace A341524

/-- `A001222((n+1)/gcd(n+1, A000203(n+1)))` -/
def P199590919506329377.Spec : Prop :=
  ∀ n, P199590919506329377.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P17254754789505383345

`A001222(n+1)-A001222(A009194(n+1))`
-/

namespace A341524.P17254754789505383345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A009194 (n + 1)).toNat

end

end A341524.P17254754789505383345

namespace A341524

/-- `A001222(n+1)-A001222(A009194(n+1))` -/
def P17254754789505383345.Spec : Prop :=
  ∀ n, P17254754789505383345.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P15518438286002900729

`A001222(A009242(n+1)/A000203(n+1))`
-/

namespace A341524.P15518438286002900729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A009242 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A341524.P15518438286002900729

namespace A341524

/-- `A001222(A009242(n+1)/A000203(n+1))` -/
def P15518438286002900729.Spec : Prop :=
  ∀ n, P15518438286002900729.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P17998122784539327505

`A001222(lcm(n+1, A000203(n+1))/A000203(n+1))`
-/

namespace A341524.P17998122784539327505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (A000203 (n + 1)) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A341524.P17998122784539327505

namespace A341524

/-- `A001222(lcm(n+1, A000203(n+1))/A000203(n+1))` -/
def P17998122784539327505.Spec : Prop :=
  ∀ n, P17998122784539327505.a n = A341524 (n + 1)

end A341524

/-! ## A341524.P14205920020000069942

`A001222(n+1)-A001222(A000203(n+1)/A017665(n+1))`
-/

namespace A341524.P14205920020000069942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A341524.P14205920020000069942

namespace A341524

/-- `A001222(n+1)-A001222(A000203(n+1)/A017665(n+1))` -/
def P14205920020000069942.Spec : Prop :=
  ∀ n, P14205920020000069942.a n = A341524 (n + 1)

end A341524

/-!
# A341525: Numerator of A003973(n) / A003961(n).

The programs for A341525, the canonical program `A341525.P7694979222133116988` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341525 has offset 1).

The definition of A341525 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341525.P15392502099217950436

`A003973(n+1)/A336850(n+1)`
-/

namespace A341525.P15392502099217950436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P15392502099217950436

namespace A341525

/-- `A003973(n+1)/A336850(n+1)` -/
def P15392502099217950436.Spec : Prop :=
  ∀ n, P15392502099217950436.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P17007240477894311581

`A003973(n+1)/gcd(A003961(n+1), A003973(n+1))`
-/

namespace A341525.P17007240477894311581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (Int.gcd (A003961 (n + 1)) (A003973 (n + 1)) : ℚ)

end

end A341525.P17007240477894311581

namespace A341525

/-- `A003973(n+1)/gcd(A003961(n+1), A003973(n+1))` -/
def P17007240477894311581.Spec : Prop :=
  ∀ n, P17007240477894311581.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P7694979222133116988

`A017665(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341525

/-- `A017665(A003961(n+1))` -/
def P7694979222133116988.Spec : Prop :=
  ∀ n, P7694979222133116988.a n = A341525 (n + 1)

theorem P7694979222133116988.correct : P7694979222133116988.Spec := by
  intro n
  simp only [A341525, Nat.add_sub_cancel]

end A341525

/-! ## A341525.P16877373363653149102

`A361468(n+1)/A336849(n+1)`
-/

namespace A341525.P16877373363653149102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361468 (n + 1) : ℚ) / (A336849 (n + 1) : ℚ)

end

end A341525.P16877373363653149102

namespace A341525

/-- `A361468(n+1)/A336849(n+1)` -/
def P16877373363653149102.Spec : Prop :=
  ∀ n, P16877373363653149102.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P12736250045691531208

`A003973(n+1)/A003961(A348940(n+1))`
-/

namespace A341525.P12736250045691531208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A003961 (A348940 (n + 1)).toNat : ℚ)

end

end A341525.P12736250045691531208

namespace A341525

/-- `A003973(n+1)/A003961(A348940(n+1))` -/
def P12736250045691531208.Spec : Prop :=
  ∀ n, P12736250045691531208.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P17739292249724387660

`(A336852(n+1)+A000203(n+1))/A336850(n+1)`
-/

namespace A341525.P17739292249724387660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336852 (n + 1) + A000203 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P17739292249724387660

namespace A341525

/-- `(A336852(n+1)+A000203(n+1))/A336850(n+1)` -/
def P17739292249724387660.Spec : Prop :=
  ∀ n, P17739292249724387660.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P14949160194011851571

`(A336851(n+1)+A003961(n+1))/A336850(n+1)`
-/

namespace A341525.P14949160194011851571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336851 (n + 1) + A003961 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P14949160194011851571

namespace A341525

/-- `(A336851(n+1)+A003961(n+1))/A336850(n+1)` -/
def P14949160194011851571.Spec : Prop :=
  ∀ n, P14949160194011851571.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P9579664172514056022

`A336849(n+1)+A336851(n+1)/A336850(n+1)`
-/

namespace A341525.P9579664172514056022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336849 (n + 1) : ℚ) + (A336851 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P9579664172514056022

namespace A341525

/-- `A336849(n+1)+A336851(n+1)/A336850(n+1)` -/
def P9579664172514056022.Spec : Prop :=
  ∀ n, P9579664172514056022.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P17090366419042019045

`A003973(n+1)/A003961(n+1)*A336849(n+1)`
-/

namespace A341525.P17090366419042019045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A336849 (n + 1) : ℚ)

end

end A341525.P17090366419042019045

namespace A341525

/-- `A003973(n+1)/A003961(n+1)*A336849(n+1)` -/
def P17090366419042019045.Spec : Prop :=
  ∀ n, P17090366419042019045.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P17412724291388727585

`A336850(n+1)/A003961(n+1)*A361468(n+1)`
-/

namespace A341525.P17412724291388727585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A361468 (n + 1) : ℚ)

end

end A341525.P17412724291388727585

namespace A341525

/-- `A336850(n+1)/A003961(n+1)*A361468(n+1)` -/
def P17412724291388727585.Spec : Prop :=
  ∀ n, P17412724291388727585.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P8844841210151744522

`A361467(n+1)/(A003961(n+1)*A336850(n+1))`
-/

namespace A341525.P8844841210151744522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361467 (n + 1) : ℚ) / (A003961 (n + 1) * A336850 (n + 1) : ℚ)

end

end A341525.P8844841210151744522

namespace A341525

/-- `A361467(n+1)/(A003961(n+1)*A336850(n+1))` -/
def P8844841210151744522.Spec : Prop :=
  ∀ n, P8844841210151744522.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P15096495372662220227

`A355932(n+1)/A336850(n+1)*A355933(n+1)`
-/

namespace A341525.P15096495372662220227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355932 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ) * (A355933 (n + 1) : ℚ)

end

end A341525.P15096495372662220227

namespace A341525

/-- `A355932(n+1)/A336850(n+1)*A355933(n+1)` -/
def P15096495372662220227.Spec : Prop :=
  ∀ n, P15096495372662220227.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P14090267570427882421

`A000203(A003961(n+1))/A336850(n+1)`
-/

namespace A341525.P14090267570427882421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003961 (n + 1)).toNat : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P14090267570427882421

namespace A341525

/-- `A000203(A003961(n+1))/A336850(n+1)` -/
def P14090267570427882421.Spec : Prop :=
  ∀ n, P14090267570427882421.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P3302282261581326697

`A000203(A286385(n+1)+A000203(n+1))/A336850(n+1)`
-/

namespace A341525.P3302282261581326697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A286385 (n + 1) + A000203 (n + 1)).toNat : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P3302282261581326697

namespace A341525

/-- `A000203(A286385(n+1)+A000203(n+1))/A336850(n+1)` -/
def P3302282261581326697.Spec : Prop :=
  ∀ n, P3302282261581326697.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P1712183866145645010

`A000203(A341529(n+1)/A000203(n+1))/A336850(n+1)`
-/

namespace A341525.P1712183866145645010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P1712183866145645010

namespace A341525

/-- `A000203(A341529(n+1)/A000203(n+1))/A336850(n+1)` -/
def P1712183866145645010.Spec : Prop :=
  ∀ n, P1712183866145645010.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P13105251782167631879

`A098987(A045965(n+1))`
-/

namespace A341525.P13105251782167631879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 (A045965 (n + 1)).toNat

end

end A341525.P13105251782167631879

namespace A341525

/-- `A098987(A045965(n+1))` -/
def P13105251782167631879.Spec : Prop :=
  ∀ n, P13105251782167631879.a n = A341525 (n + 1)

end A341525

/-! ## A341525.P14646770158069350434

`A305006(A003961(2*n+1-n))`
-/

namespace A341525.P14646770158069350434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305006 (A003961 (2 * n + 1 - n)).toNat

end

end A341525.P14646770158069350434

namespace A341525

/-- `A305006(A003961(2*n+1-n))` -/
def P14646770158069350434.Spec : Prop :=
  ∀ n, P14646770158069350434.a n = A341525 (n + 1)

end A341525

/-! ## A341525.P17549414832730731306

`A017665(A336849(n+1)*A336850(n+1))`
-/

namespace A341525.P17549414832730731306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A336849 (n + 1) * A336850 (n + 1)).toNat

end

end A341525.P17549414832730731306

namespace A341525

/-- `A017665(A336849(n+1)*A336850(n+1))` -/
def P17549414832730731306.Spec : Prop :=
  ∀ n, P17549414832730731306.a n = A341525 (n + 1)

end A341525

/-! ## A341525.P9329748861919535942

`A003973(n+1)/A009194(A003961(n+1))`
-/

namespace A341525.P9329748861919535942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A009194 (A003961 (n + 1)).toNat : ℚ)

end

end A341525.P9329748861919535942

namespace A341525

/-- `A003973(n+1)/A009194(A003961(n+1))` -/
def P9329748861919535942.Spec : Prop :=
  ∀ n, P9329748861919535942.a n = (A341525 (n + 1) : ℚ)

end A341525

/-! ## A341525.P10202247309854850395

`A249670(A003961(n+1))/A336849(n+1)`
-/

namespace A341525.P10202247309854850395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249670 (A003961 (n + 1)).toNat : ℚ) / (A336849 (n + 1) : ℚ)

end

end A341525.P10202247309854850395

namespace A341525

/-- `A249670(A003961(n+1))/A336849(n+1)` -/
def P10202247309854850395.Spec : Prop :=
  ∀ n, P10202247309854850395.a n = (A341525 (n + 1) : ℚ)

end A341525

/-!
# A341526: Numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A341526, the canonical program `A341526.P14686975132241755555` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341526 has offset 1).

The definition of A341526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341526.P14686975132241755555

`A341528(n+1)/A341530(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341526

/-- `A341528(n+1)/A341530(n+1)` -/
def P14686975132241755555.Spec : Prop :=
  ∀ n, P14686975132241755555.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P2717467106024915501

`A341528(n+1)/gcd(A341528(n+1), A341529(n+1))`
-/

namespace A341526.P2717467106024915501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (Int.gcd (A341528 (n + 1)) (A341529 (n + 1)) : ℚ)

end

end A341526.P2717467106024915501

namespace A341526

/-- `A341528(n+1)/gcd(A341528(n+1), A341529(n+1))` -/
def P2717467106024915501.Spec : Prop :=
  ∀ n, P2717467106024915501.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P4045753179949640564

`(n+1)*A003973(n+1)/A341530(n+1)`
-/

namespace A341526.P4045753179949640564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A003973 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ))

end

end A341526.P4045753179949640564

namespace A341526

/-- `(n+1)*A003973(n+1)/A341530(n+1)` -/
def P4045753179949640564.Spec : Prop :=
  ∀ n, P4045753179949640564.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P961376489699770291

`A341527(n+1)-A341512(n+1)/A341530(n+1)`
-/

namespace A341526.P961376489699770291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341527 (n + 1) : ℚ) - (A341512 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341526.P961376489699770291

namespace A341526

/-- `A341527(n+1)-A341512(n+1)/A341530(n+1)` -/
def P961376489699770291.Spec : Prop :=
  ∀ n, P961376489699770291.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P4878794316694969167

`(A341529(n+1)-A341512(n+1))/A341530(n+1)`
-/

namespace A341526.P4878794316694969167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) - A341512 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341526.P4878794316694969167

namespace A341526

/-- `(A341529(n+1)-A341512(n+1))/A341530(n+1)` -/
def P4878794316694969167.Spec : Prop :=
  ∀ n, P4878794316694969167.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P10577739106096226974

`A341527(n+1)*A341528(n+1)/A341529(n+1)`
-/

namespace A341526.P10577739106096226974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341527 (n + 1) * A341528 (n + 1) : ℚ) / (A341529 (n + 1) : ℚ)

end

end A341526.P10577739106096226974

namespace A341526

/-- `A341527(n+1)*A341528(n+1)/A341529(n+1)` -/
def P10577739106096226974.Spec : Prop :=
  ∀ n, P10577739106096226974.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P16493278822473724692

`(n+1)*A000203(A003961(n+1))/A341530(n+1)`
-/

namespace A341526.P16493278822473724692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000203 (A003961 (n + 1)).toNat : ℚ) / (A341530 (n + 1) : ℚ))

end

end A341526.P16493278822473724692

namespace A341526

/-- `(n+1)*A000203(A003961(n+1))/A341530(n+1)` -/
def P16493278822473724692.Spec : Prop :=
  ∀ n, P16493278822473724692.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P14158887136580652421

`A341528(n+1)/A342670(A003961(n+1))`
-/

namespace A341526.P14158887136580652421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A342670 (A003961 (n + 1)).toNat : ℚ)

end

end A341526.P14158887136580652421

namespace A341526

/-- `A341528(n+1)/A342670(A003961(n+1))` -/
def P14158887136580652421.Spec : Prop :=
  ∀ n, P14158887136580652421.a n = (A341526 (n + 1) : ℚ)

end A341526

/-! ## A341526.P10232981713998210499

`A342664(A003961(n+1))`
-/

namespace A341526.P10232981713998210499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342664 (A003961 (n + 1)).toNat

end

end A341526.P10232981713998210499

namespace A341526

/-- `A342664(A003961(n+1))` -/
def P10232981713998210499.Spec : Prop :=
  ∀ n, P10232981713998210499.a n = A341526 (n + 1)

end A341526

/-!
# A341527: Denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A341527, the canonical program `A341527.P11918389594908135215` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341527 has offset 1).

The definition of A341527 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341527.P11918389594908135215

`A341529(n+1)/A341530(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341527

/-- `A341529(n+1)/A341530(n+1)` -/
def P11918389594908135215.Spec : Prop :=
  ∀ n, P11918389594908135215.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P9671845148647386054

`A341529(n+1)/gcd(A341528(n+1), A341529(n+1))`
-/

namespace A341527.P9671845148647386054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (Int.gcd (A341528 (n + 1)) (A341529 (n + 1)) : ℚ)

end

end A341527.P9671845148647386054

namespace A341527

/-- `A341529(n+1)/gcd(A341528(n+1), A341529(n+1))` -/
def P9671845148647386054.Spec : Prop :=
  ∀ n, P9671845148647386054.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P12460740172010208256

`A341526(n+1)+A341512(n+1)/A341530(n+1)`
-/

namespace A341527.P12460740172010208256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341526 (n + 1) : ℚ) + (A341512 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341527.P12460740172010208256

namespace A341527

/-- `A341526(n+1)+A341512(n+1)/A341530(n+1)` -/
def P12460740172010208256.Spec : Prop :=
  ∀ n, P12460740172010208256.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P17041696763234574806

`(A341528(n+1)+A341512(n+1))/A341530(n+1)`
-/

namespace A341527.P17041696763234574806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) + A341512 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341527.P17041696763234574806

namespace A341527

/-- `(A341528(n+1)+A341512(n+1))/A341530(n+1)` -/
def P17041696763234574806.Spec : Prop :=
  ∀ n, P17041696763234574806.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P5070035144469501710

`A000203(n+1)*A003961(n+1)/A341530(n+1)`
-/

namespace A341527.P5070035144469501710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A003961 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341527.P5070035144469501710

namespace A341527

/-- `A000203(n+1)*A003961(n+1)/A341530(n+1)` -/
def P5070035144469501710.Spec : Prop :=
  ∀ n, P5070035144469501710.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P17336688831537790907

`A341526(n+1)/A341528(n+1)*A341529(n+1)`
-/

namespace A341527.P17336688831537790907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341526 (n + 1) : ℚ) / (A341528 (n + 1) : ℚ) * (A341529 (n + 1) : ℚ)

end

end A341527.P17336688831537790907

namespace A341527

/-- `A341526(n+1)/A341528(n+1)*A341529(n+1)` -/
def P17336688831537790907.Spec : Prop :=
  ∀ n, P17336688831537790907.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P7657341029471695948

`A341529(n+1)/A342670(A003961(n+1))`
-/

namespace A341527.P7657341029471695948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A342670 (A003961 (n + 1)).toNat : ℚ)

end

end A341527.P7657341029471695948

namespace A341527

/-- `A341529(n+1)/A342670(A003961(n+1))` -/
def P7657341029471695948.Spec : Prop :=
  ∀ n, P7657341029471695948.a n = (A341527 (n + 1) : ℚ)

end A341527

/-! ## A341527.P10307212797041759007

`A342663(A003961(n+1))`
-/

namespace A341527.P10307212797041759007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342663 (A003961 (n + 1)).toNat

end

end A341527.P10307212797041759007

namespace A341527

/-- `A342663(A003961(n+1))` -/
def P10307212797041759007.Spec : Prop :=
  ∀ n, P10307212797041759007.a n = A341527 (n + 1)

end A341527

/-!
# A341528: a(n) = n * sigma(A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of the divisors of n.

The programs for A341528, the canonical program `A341528.P14956045597010222967` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341528 has offset 1).

The definition of A341528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341528.P10370626280725425432

`(n+1)*A003973(n+1)`
-/

namespace A341528.P10370626280725425432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003973 (n + 1)

end

end A341528.P10370626280725425432

namespace A341528

/-- `(n+1)*A003973(n+1)` -/
def P10370626280725425432.Spec : Prop :=
  ∀ n, P10370626280725425432.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P7997458491936215755

`A341529(n+1)-A341512(n+1)`
-/

namespace A341528.P7997458491936215755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - A341512 (n + 1)

end

end A341528.P7997458491936215755

namespace A341528

/-- `A341529(n+1)-A341512(n+1)` -/
def P7997458491936215755.Spec : Prop :=
  ∀ n, P7997458491936215755.a n = A341528 (n + 1)

theorem P7997458491936215755.correct : P7997458491936215755.Spec := by
  intro n
  simp only [A341528, Nat.add_sub_cancel, A341528.P7997458491936215755.a, A341528.P14956045597010222967.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A341512, A341512.P10028097722280494924.a, A341529, A341529.P16215354079337836042.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341528

/-! ## A341528.P14956045597010222967

`(n+1)*A000203(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341528

/-- `(n+1)*A000203(A003961(n+1))` -/
def P14956045597010222967.Spec : Prop :=
  ∀ n, P14956045597010222967.a n = A341528 (n + 1)

theorem P14956045597010222967.correct : P14956045597010222967.Spec := by
  intro n
  simp only [A341528, Nat.add_sub_cancel]

end A341528

/-! ## A341528.P17056537671913926736

`A342662(A003961(n+1))`
-/

namespace A341528.P17056537671913926736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342662 (A003961 (n + 1)).toNat

end

end A341528.P17056537671913926736

namespace A341528

/-- `A342662(A003961(n+1))` -/
def P17056537671913926736.Spec : Prop :=
  ∀ n, P17056537671913926736.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P7471619079847705105

`∑{d}[n+1, A347124(#)]`
-/

namespace A341528.P7471619079847705105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347124 d

end

end A341528.P7471619079847705105

namespace A341528

/-- `∑{d}[n+1, A347124(#)]` -/
def P7471619079847705105.Spec : Prop :=
  ∀ n, P7471619079847705105.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P2216672516260464671

`∑{d}[n+1, (n+1)*A003961(#)]`
-/

namespace A341528.P2216672516260464671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A003961 d

end

end A341528.P2216672516260464671

namespace A341528

/-- `∑{d}[n+1, (n+1)*A003961(#)]` -/
def P2216672516260464671.Spec : Prop :=
  ∀ n, P2216672516260464671.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P12028285257366684305

`∑{d}[n+1, #*A191002((n+1)/#)]`
-/

namespace A341528.P12028285257366684305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A191002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341528.P12028285257366684305

namespace A341528

/-- `∑{d}[n+1, #*A191002((n+1)/#)]` -/
def P12028285257366684305.Spec : Prop :=
  ∀ n, P12028285257366684305.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P9267447958625785385

`A341526(n+1)*A341530(n+1)`
-/

namespace A341528.P9267447958625785385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1) * A341530 (n + 1)

end

end A341528.P9267447958625785385

namespace A341528

/-- `A341526(n+1)*A341530(n+1)` -/
def P9267447958625785385.Spec : Prop :=
  ∀ n, P9267447958625785385.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P13147028939201137379

`(n+1)*A336846(n+1)*A336848(n+1)`
-/

namespace A341528.P13147028939201137379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336846 (n + 1) * A336848 (n + 1)

end

end A341528.P13147028939201137379

namespace A341528

/-- `(n+1)*A336846(n+1)*A336848(n+1)` -/
def P13147028939201137379.Spec : Prop :=
  ∀ n, P13147028939201137379.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P11041822015938108504

`∑{d}[n+1, A038040(#)*A353789((n+1)/#)]`
-/

namespace A341528.P11041822015938108504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A353789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341528.P11041822015938108504

namespace A341528

/-- `∑{d}[n+1, A038040(#)*A353789((n+1)/#)]` -/
def P11041822015938108504.Spec : Prop :=
  ∀ n, P11041822015938108504.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P14632877493416980406

`∑{d}[n+1, A341529(#)*A349388((n+1)/#)]`
-/

namespace A341528.P14632877493416980406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341529 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341528.P14632877493416980406

namespace A341528

/-- `∑{d}[n+1, A341529(#)*A349388((n+1)/#)]` -/
def P14632877493416980406.Spec : Prop :=
  ∀ n, P14632877493416980406.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P13874919083321679269

`∑{d}[n+1, A347125(#)*A378607((n+1)/#)]`
-/

namespace A341528.P13874919083321679269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347125 d * A378607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341528.P13874919083321679269

namespace A341528

/-- `∑{d}[n+1, A347125(#)*A378607((n+1)/#)]` -/
def P13874919083321679269.Spec : Prop :=
  ∀ n, P13874919083321679269.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P7244084854167744902

`A341529(n+1)-(A346240(n+1)+A346239(n+1))`
-/

namespace A341528.P7244084854167744902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - (A346240 (n + 1) + A346239 (n + 1))

end

end A341528.P7244084854167744902

namespace A341528

/-- `A341529(n+1)-(A346240(n+1)+A346239(n+1))` -/
def P7244084854167744902.Spec : Prop :=
  ∀ n, P7244084854167744902.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P5977107889733224399

`A341529(n+1)+A388976(n+1)-A388977(n+1)`
-/

namespace A341528.P5977107889733224399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) + (A388976 (n + 1) - A388977 (n + 1))

end

end A341528.P5977107889733224399

namespace A341528

/-- `A341529(n+1)+A388976(n+1)-A388977(n+1)` -/
def P5977107889733224399.Spec : Prop :=
  ∀ n, P5977107889733224399.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P18314432088189733525

`A341527(n+1)*A341530(n+1)-A341512(n+1)`
-/

namespace A341528.P18314432088189733525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1) * A341530 (n + 1) - A341512 (n + 1)

end

end A341528.P18314432088189733525

namespace A341528

/-- `A341527(n+1)*A341530(n+1)-A341512(n+1)` -/
def P18314432088189733525.Spec : Prop :=
  ∀ n, P18314432088189733525.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P1427868540421530030

`A342671(n+1)*A342672(n+1)-A341512(n+1)`
-/

namespace A341528.P1427868540421530030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) * A342672 (n + 1) - A341512 (n + 1)

end

end A341528.P1427868540421530030

namespace A341528

/-- `A342671(n+1)*A342672(n+1)-A341512(n+1)` -/
def P1427868540421530030.Spec : Prop :=
  ∀ n, P1427868540421530030.a n = A341528 (n + 1)

end A341528

/-! ## A341528.P11727729302595908379

`A341526(n+1)/A341527(n+1)*A341529(n+1)`
-/

namespace A341528.P11727729302595908379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341526 (n + 1) : ℚ) / (A341527 (n + 1) : ℚ) * (A341529 (n + 1) : ℚ)

end

end A341528.P11727729302595908379

namespace A341528

/-- `A341526(n+1)/A341527(n+1)*A341529(n+1)` -/
def P11727729302595908379.Spec : Prop :=
  ∀ n, P11727729302595908379.a n = (A341528 (n + 1) : ℚ)

end A341528

/-! ## A341528.P8984231212288201060

`∑{d}[A003961(n+1), A191002(n+1)/#]`
-/

namespace A341528.P8984231212288201060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A191002 (n + 1) : ℚ) / (d : ℚ)

end

end A341528.P8984231212288201060

namespace A341528

/-- `∑{d}[A003961(n+1), A191002(n+1)/#]` -/
def P8984231212288201060.Spec : Prop :=
  ∀ n, P8984231212288201060.a n = (A341528 (n + 1) : ℚ)

end A341528

/-! ## A341528.P335245210475195715

`A000203(A253885(n)+1)*(n+1)`
-/

namespace A341528.P335245210475195715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A253885 n + 1).toNat * (n + 1 : ℤ)

end

end A341528.P335245210475195715

namespace A341528

/-- `A000203(A253885(n)+1)*(n+1)` -/
def P335245210475195715.Spec : Prop :=
  ∀ n, P335245210475195715.a n = A341528 (n + 1)

theorem P335245210475195715.correct : P335245210475195715.Spec := by
  intro n
  simp only [A341528, Nat.add_sub_cancel, A341528.P335245210475195715.a, A341528.P14956045597010222967.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, A156552, A156552.P4268073137713085227.a, A252750, A252750.P12930142929614438506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341528

/-! ## A341528.P13095447967442481477

`A000203(2*A048673(n+1)-1)*(n+1)`
-/

namespace A341528.P13095447967442481477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A048673 (n + 1) - 1).toNat * (n + 1 : ℤ)

end

end A341528.P13095447967442481477

namespace A341528

/-- `A000203(2*A048673(n+1)-1)*(n+1)` -/
def P13095447967442481477.Spec : Prop :=
  ∀ n, P13095447967442481477.a n = A341528 (n + 1)

end A341528

/-!
# A341529: a(n) = sigma(n) * A003961(n), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of the divisors of n.

The programs for A341529, the canonical program `A341529.P16215354079337836042` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341529 has offset 1).

The definition of A341529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341529.P10764559861640089953

`A341528(n+1)+A341512(n+1)`
-/

namespace A341529.P10764559861640089953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (n + 1) + A341512 (n + 1)

end

end A341529.P10764559861640089953

namespace A341529

/-- `A341528(n+1)+A341512(n+1)` -/
def P10764559861640089953.Spec : Prop :=
  ∀ n, P10764559861640089953.a n = A341529 (n + 1)

theorem P10764559861640089953.correct : P10764559861640089953.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel, A341529.P10764559861640089953.a, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A341512, A341512.P10028097722280494924.a, A341528, A341528.P14956045597010222967.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341529

/-! ## A341529.P16215354079337836042

`A000203(n+1)*A003961(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341529

/-- `A000203(n+1)*A003961(n+1)` -/
def P16215354079337836042.Spec : Prop :=
  ∀ n, P16215354079337836042.a n = A341529 (n + 1)

theorem P16215354079337836042.correct : P16215354079337836042.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel]

end A341529

/-! ## A341529.P8569142051035873086

`A342671(n+1)*A342672(n+1)`
-/

namespace A341529.P8569142051035873086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) * A342672 (n + 1)

end

end A341529.P8569142051035873086

namespace A341529

/-- `A342671(n+1)*A342672(n+1)` -/
def P8569142051035873086.Spec : Prop :=
  ∀ n, P8569142051035873086.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P10535236521077858428

`A342661(A003961(n+1))`
-/

namespace A341529.P10535236521077858428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342661 (A003961 (n + 1)).toNat

end

end A341529.P10535236521077858428

namespace A341529

/-- `A342661(A003961(n+1))` -/
def P10535236521077858428.Spec : Prop :=
  ∀ n, P10535236521077858428.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P2304641055985969749

`∑{d}[n+1, A347125(#)]`
-/

namespace A341529.P2304641055985969749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347125 d

end

end A341529.P2304641055985969749

namespace A341529

/-- `∑{d}[n+1, A347125(#)]` -/
def P2304641055985969749.Spec : Prop :=
  ∀ n, P2304641055985969749.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P15972366829652725050

`Δ[A160664(n)]*A003961(n+1)`
-/

namespace A341529.P15972366829652725050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003961 (n + 1)

end

end A341529.P15972366829652725050

namespace A341529

/-- `Δ[A160664(n)]*A003961(n+1)` -/
def P15972366829652725050.Spec : Prop :=
  ∀ n, P15972366829652725050.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P12723466930380563789

`(A253885(n)+1)*A000203(n+1)`
-/

namespace A341529.P12723466930380563789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) * A000203 (n + 1)

end

end A341529.P12723466930380563789

namespace A341529

/-- `(A253885(n)+1)*A000203(n+1)` -/
def P12723466930380563789.Spec : Prop :=
  ∀ n, P12723466930380563789.a n = A341529 (n + 1)

theorem P12723466930380563789.correct : P12723466930380563789.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel, A341529.P12723466930380563789.a, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, A156552, A156552.P4268073137713085227.a, A252750, A252750.P12930142929614438506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341529

/-! ## A341529.P1831410013960815421

`A341527(n+1)*A341530(n+1)`
-/

namespace A341529.P1831410013960815421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1) * A341530 (n + 1)

end

end A341529.P1831410013960815421

namespace A341529

/-- `A341527(n+1)*A341530(n+1)` -/
def P1831410013960815421.Spec : Prop :=
  ∀ n, P1831410013960815421.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P2741742562338027859

`(A088580(n+1)-1)*A003961(n+1)`
-/

namespace A341529.P2741742562338027859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A003961 (n + 1)

end

end A341529.P2741742562338027859

namespace A341529

/-- `(A088580(n+1)-1)*A003961(n+1)` -/
def P2741742562338027859.Spec : Prop :=
  ∀ n, P2741742562338027859.a n = A341529 (n + 1)

theorem P2741742562338027859.correct : P2741742562338027859.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel, A341529.P2741742562338027859.a, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A088580, A088580.P3089093194242277422.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341529

/-! ## A341529.P4854014758787724673

`(A243501(n+1)-1)*A000203(n+1)`
-/

namespace A341529.P4854014758787724673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - 1) * A000203 (n + 1)

end

end A341529.P4854014758787724673

namespace A341529

/-- `(A243501(n+1)-1)*A000203(n+1)` -/
def P4854014758787724673.Spec : Prop :=
  ∀ n, P4854014758787724673.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P5751831208369947851

`A003961(n+1)*A245092(2*n+1)`
-/

namespace A341529.P5751831208369947851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A245092 (2 * n + 1)

end

end A341529.P5751831208369947851

namespace A341529

/-- `A003961(n+1)*A245092(2*n+1)` -/
def P5751831208369947851.Spec : Prop :=
  ∀ n, P5751831208369947851.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P7305802905879998538

`A003961(n+1)/2*A074400(n+1)`
-/

namespace A341529.P7305802905879998538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A341529.P7305802905879998538

namespace A341529

/-- `A003961(n+1)/2*A074400(n+1)` -/
def P7305802905879998538.Spec : Prop :=
  ∀ n, P7305802905879998538.a n = (A341529 (n + 1) : ℚ)

theorem P7305802905879998538.correct : P7305802905879998538.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel, A341529.P7305802905879998538.a, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A074400, A074400.P16312391460013478761.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341529

/-! ## A341529.P11473218810625125340

`(2*A048673(n+1)-1)*A000203(n+1)`
-/

namespace A341529.P11473218810625125340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A048673 (n + 1) - 1) * A000203 (n + 1)

end

end A341529.P11473218810625125340

namespace A341529

/-- `(2*A048673(n+1)-1)*A000203(n+1)` -/
def P11473218810625125340.Spec : Prop :=
  ∀ n, P11473218810625125340.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P9289335762139232756

`∑{d}[n+1, A003961(#)*A191002((n+1)/#)]`
-/

namespace A341529.P9289335762139232756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A191002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341529.P9289335762139232756

namespace A341529

/-- `∑{d}[n+1, A003961(#)*A191002((n+1)/#)]` -/
def P9289335762139232756.Spec : Prop :=
  ∀ n, P9289335762139232756.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P3088358127472482655

`∑{d}[n+1, A341528(#)*A349387((n+1)/#)]`
-/

namespace A341529.P3088358127472482655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341528 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341529.P3088358127472482655

namespace A341529

/-- `∑{d}[n+1, A341528(#)*A349387((n+1)/#)]` -/
def P3088358127472482655.Spec : Prop :=
  ∀ n, P3088358127472482655.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P8505024958325218625

`∑{d}[n+1, A347136(#)*A353789((n+1)/#)]`
-/

namespace A341529.P8505024958325218625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A353789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341529.P8505024958325218625

namespace A341529

/-- `∑{d}[n+1, A347136(#)*A353789((n+1)/#)]` -/
def P8505024958325218625.Spec : Prop :=
  ∀ n, P8505024958325218625.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P8553055313912139807

`A341528(n+1)+A346240(n+1)+A346239(n+1)`
-/

namespace A341529.P8553055313912139807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (n + 1) + (A346240 (n + 1) + A346239 (n + 1))

end

end A341529.P8553055313912139807

namespace A341529

/-- `A341528(n+1)+A346240(n+1)+A346239(n+1)` -/
def P8553055313912139807.Spec : Prop :=
  ∀ n, P8553055313912139807.a n = A341529 (n + 1)

end A341529

/-! ## A341529.P10827206644490622373

`(A286385(n+1)+A000203(n+1))*A000203(n+1)`
-/

namespace A341529.P10827206644490622373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1)) * A000203 (n + 1)

end

end A341529.P10827206644490622373

namespace A341529

/-- `(A286385(n+1)+A000203(n+1))*A000203(n+1)` -/
def P10827206644490622373.Spec : Prop :=
  ∀ n, P10827206644490622373.a n = A341529 (n + 1)

theorem P10827206644490622373.correct : P10827206644490622373.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel, A341529.P10827206644490622373.a, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341529

/-! ## A341529.P12845933823916873409

`(A326126(n+1)+A007913(n+1))*A003961(n+1)`
-/

namespace A341529.P12845933823916873409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326126 (n + 1) + A007913 (n + 1)) * A003961 (n + 1)

end

end A341529.P12845933823916873409

namespace A341529

/-- `(A326126(n+1)+A007913(n+1))*A003961(n+1)` -/
def P12845933823916873409.Spec : Prop :=
  ∀ n, P12845933823916873409.a n = A341529 (n + 1)

theorem P12845933823916873409.correct : P12845933823916873409.Spec := by
  intro n
  simp only [A341529, Nat.add_sub_cancel, A341529.P12845933823916873409.a, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341529

/-! ## A341529.P14208874133404664838

`(A343224(n+1)+A003415(n+1))*A003961(n+1)`
-/

namespace A341529.P14208874133404664838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343224 (n + 1) + A003415 (n + 1)) * A003961 (n + 1)

end

end A341529.P14208874133404664838

namespace A341529

/-- `(A343224(n+1)+A003415(n+1))*A003961(n+1)` -/
def P14208874133404664838.Spec : Prop :=
  ∀ n, P14208874133404664838.a n = A341529 (n + 1)

end A341529

/-!
# A341530: a(n) = gcd(n*sigma(A003961(n)), sigma(n)*A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors of n.

The programs for A341530, the canonical program `A341530.P14171967541520883711` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341530 has offset 1).

The definition of A341530 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341530.P12133258528081254392

`gcd(A341512(n+1), A341528(n+1))`
-/

namespace A341530.P12133258528081254392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341512 (n + 1)) (A341528 (n + 1))

end

end A341530.P12133258528081254392

namespace A341530

/-- `gcd(A341512(n+1), A341528(n+1))` -/
def P12133258528081254392.Spec : Prop :=
  ∀ n, (P12133258528081254392.a n : ℤ) = A341530 (n + 1)

end A341530

/-! ## A341530.P8810319167329994298

`gcd((n+1)*A003973(n+1), A000203(n+1)*A003961(n+1))`
-/

namespace A341530.P8810319167329994298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A003973 (n + 1)) (A000203 (n + 1) * A003961 (n + 1))

end

end A341530.P8810319167329994298

namespace A341530

/-- `gcd((n+1)*A003973(n+1), A000203(n+1)*A003961(n+1))` -/
def P8810319167329994298.Spec : Prop :=
  ∀ n, (P8810319167329994298.a n : ℤ) = A341530 (n + 1)

end A341530

/-! ## A341530.P14171967541520883711

`gcd((n+1)*A000203(A003961(n+1)), A000203(n+1)*A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341530

/-- `gcd((n+1)*A000203(A003961(n+1)), A000203(n+1)*A003961(n+1))` -/
def P14171967541520883711.Spec : Prop :=
  ∀ n, (P14171967541520883711.a n : ℤ) = A341530 (n + 1)

theorem P14171967541520883711.correct : P14171967541520883711.Spec := by
  intro n
  simp only [A341530, Nat.add_sub_cancel]

end A341530

/-! ## A341530.P10383368317242021792

`A342670(A003961(n+1))`
-/

namespace A341530.P10383368317242021792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A003961 (n + 1)).toNat

end

end A341530.P10383368317242021792

namespace A341530

/-- `A342670(A003961(n+1))` -/
def P10383368317242021792.Spec : Prop :=
  ∀ n, P10383368317242021792.a n = A341530 (n + 1)

end A341530

/-! ## A341530.P3848483570777102372

`A346236(n+1)-A346235(n+1)`
-/

namespace A341530.P3848483570777102372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (n + 1) - A346235 (n + 1)

end

end A341530.P3848483570777102372

namespace A341530

/-- `A346236(n+1)-A346235(n+1)` -/
def P3848483570777102372.Spec : Prop :=
  ∀ n, P3848483570777102372.a n = A341530 (n + 1)

end A341530

/-! ## A341530.P14799507540894589282

`A341528(n+1)/A341526(n+1)`
-/

namespace A341530.P14799507540894589282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A341526 (n + 1) : ℚ)

end

end A341530.P14799507540894589282

namespace A341530

/-- `A341528(n+1)/A341526(n+1)` -/
def P14799507540894589282.Spec : Prop :=
  ∀ n, P14799507540894589282.a n = (A341530 (n + 1) : ℚ)

end A341530

/-! ## A341530.P12010681249957124940

`A341529(n+1)/A341527(n+1)`
-/

namespace A341530.P12010681249957124940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A341527 (n + 1) : ℚ)

end

end A341530.P12010681249957124940

namespace A341530

/-- `A341529(n+1)/A341527(n+1)` -/
def P12010681249957124940.Spec : Prop :=
  ∀ n, P12010681249957124940.a n = (A341530 (n + 1) : ℚ)

end A341530

/-! ## A341530.P14272174837026245968

`(A341528(n+1)+A341512(n+1))/A341527(n+1)`
-/

namespace A341530.P14272174837026245968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) + A341512 (n + 1) : ℚ) / (A341527 (n + 1) : ℚ)

end

end A341530.P14272174837026245968

namespace A341530

/-- `(A341528(n+1)+A341512(n+1))/A341527(n+1)` -/
def P14272174837026245968.Spec : Prop :=
  ∀ n, P14272174837026245968.a n = (A341530 (n + 1) : ℚ)

end A341530

/-! ## A341530.P9388113970489718665

`(A341529(n+1)-A341512(n+1))/A341526(n+1)`
-/

namespace A341530.P9388113970489718665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) - A341512 (n + 1) : ℚ) / (A341526 (n + 1) : ℚ)

end

end A341530.P9388113970489718665

namespace A341530

/-- `(A341529(n+1)-A341512(n+1))/A341526(n+1)` -/
def P9388113970489718665.Spec : Prop :=
  ∀ n, P9388113970489718665.a n = (A341530 (n + 1) : ℚ)

end A341530

/-! ## A341530.P13823338240795373187

`A000203(n+1)*A003961(n+1)/A341527(n+1)`
-/

namespace A341530.P13823338240795373187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A003961 (n + 1) : ℚ) / (A341527 (n + 1) : ℚ)

end

end A341530.P13823338240795373187

namespace A341530

/-- `A000203(n+1)*A003961(n+1)/A341527(n+1)` -/
def P13823338240795373187.Spec : Prop :=
  ∀ n, P13823338240795373187.a n = (A341530 (n + 1) : ℚ)

end A341530

/-! ## A341530.P707049472740734420

`A342670(A045965(n+1))`
-/

namespace A341530.P707049472740734420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A045965 (n + 1)).toNat

end

end A341530.P707049472740734420

namespace A341530

/-- `A342670(A045965(n+1))` -/
def P707049472740734420.Spec : Prop :=
  ∀ n, P707049472740734420.a n = A341530 (n + 1)

end A341530

/-! ## A341530.P3354772672147634632

`A341528(n+1)/A342664(A003961(n+1))`
-/

namespace A341530.P3354772672147634632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A342664 (A003961 (n + 1)).toNat : ℚ)

end

end A341530.P3354772672147634632

namespace A341530

/-- `A341528(n+1)/A342664(A003961(n+1))` -/
def P3354772672147634632.Spec : Prop :=
  ∀ n, P3354772672147634632.a n = (A341530 (n + 1) : ℚ)

end A341530

/-! ## A341530.P8522163340434854650

`A341529(n+1)/A342663(A003961(n+1))`
-/

namespace A341530.P8522163340434854650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A342663 (A003961 (n + 1)).toNat : ℚ)

end

end A341530.P8522163340434854650

namespace A341530

/-- `A341529(n+1)/A342663(A003961(n+1))` -/
def P8522163340434854650.Spec : Prop :=
  ∀ n, P8522163340434854650.a n = (A341530 (n + 1) : ℚ)

end A341530

/-!
# A341531: The number of even prime gaps g satisfying g == 2 (mod 6) out of the first 2^n even prime gaps.

The programs for A341531, there is no canonical definition to state claims against.
-/

/-! ## A341531.P10971139694971110421

`2^n-A340948(n)-A341532(n)`
-/

namespace A341531.P10971139694971110421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A340948 n - A341532 n

end

end A341531.P10971139694971110421

/-! ## A341531.P7431658130020260862

`ceil((A083318(n)-A340948(n))/2)`
-/

namespace A341531.P7431658130020260862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083318 n - A340948 n : ℚ) / 2⌉

end

end A341531.P7431658130020260862

/-! ## A341531.P9077742199634236242

`round((A083318(n)-A340948(n))/2)%A049650(n)`
-/

namespace A341531.P9077742199634236242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A083318 n - A340948 n : ℚ) / 2)) (A049650 n)

end

end A341531.P9077742199634236242

/-! ## A341531.P3288298186022459734

`A346776(n)+A346777(n)+1`
-/

namespace A341531.P3288298186022459734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346776 n + (A346777 n + 1)

end

end A341531.P3288298186022459734

/-! ## A341531.P4085721101217942524

`A000027(round((A083318(n)-A340948(n))/2))`
-/

namespace A341531.P4085721101217942524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A083318 n - A340948 n : ℚ) / 2)).toNat

end

end A341531.P4085721101217942524

/-!
# A341532: The number of even prime gaps g, satisfying g == 4 (mod 6), out of the first 2^n even prime gaps.

The programs for A341532, there is no canonical definition to state claims against.
-/

/-! ## A341532.P3221176800826712416

`2^n-A340948(n)-A341531(n)`
-/

namespace A341532.P3221176800826712416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A340948 n - A341531 n

end

end A341532.P3221176800826712416

/-! ## A341532.P12644396013518209823

`floor((A000225(n)-A340948(n))/2)`
-/

namespace A341532.P12644396013518209823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n - A340948 n : ℚ) / 2⌋

end

end A341532.P12644396013518209823

/-! ## A341532.P5698643619362998693

`A000079(n)%(A341531(n)+A340948(n))`
-/

namespace A341532.P5698643619362998693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A341531 n + A340948 n)

end

end A341532.P5698643619362998693

/-! ## A341532.P4072579584067322838

`floor((A083318(n)-A340948(n))/2-A057427(n))`
-/

namespace A341532.P4072579584067322838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083318 n - A340948 n : ℚ) / 2 - (A057427 n : ℚ)⌋

end

end A341532.P4072579584067322838

/-! ## A341532.P10548053912262965649

`A004526(A000225(n)-A340948(n))`
-/

namespace A341532.P10548053912262965649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000225 n - A340948 n).toNat

end

end A341532.P10548053912262965649

/-!
# A341533: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = sqrt( Product_{a=1..n} Product_{b=1..k} (4*sin((2*a-1)*Pi/(2*n))^2 + 4*sin((2*b-1)*Pi/k)^2) ).

The programs for A341533, there is no canonical definition to state claims against.
-/

/-! ## A341533.P4537513038586159972

`A341741(n+1)-A069905(A185284(3*(n+1)))`
-/

namespace A341533.P4537513038586159972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (n + 1) - A069905 (A185284 (3 * (n + 1))).toNat

end

end A341533.P4537513038586159972

/-! ## A341533.P11468251678082180502

`A341741(∑[A053501(n)])`
-/

namespace A341533.P11468251678082180502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341533.P11468251678082180502

/-! ## A341533.P12394835788617384371

`A341741(A255238(∑[n]))`
-/

namespace A341533.P12394835788617384371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A255238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A341533.P12394835788617384371

/-! ## A341533.P2541949120303799138

`A341741(A062399(n)+1)`
-/

namespace A341533.P2541949120303799138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A062399 n + 1).toNat

end

end A341533.P2541949120303799138

/-! ## A341533.P1778804327427759226

`A341741(A077741(n+1))`
-/

namespace A341533.P1778804327427759226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A077741 (n + 1)).toNat

end

end A341533.P1778804327427759226

/-!
# A341536: Number of distinct resistances that can be produced using at most n unit resistors in series, parallel, bridge or fork configurations.

The programs for A341536, there is no canonical definition to state claims against.
-/

/-! ## A341536.P8102844021569320968

`A034341(n+1)+A107846((n+2)²²)`
-/

namespace A341536.P8102844021569320968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) + A107846 (((n + 2) ^ 2) ^ 2)

end

end A341536.P8102844021569320968

/-! ## A341536.P10087540803965578267

`A174284(n)+A165661(A005246(n))`
-/

namespace A341536.P10087540803965578267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174284 n + A165661 (A005246 n).toNat

end

end A341536.P10087540803965578267

/-! ## A341536.P2701048917955699377

`A174284(n)+A146735(A174300(n))`
-/

namespace A341536.P2701048917955699377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174284 n + A146735 (A174300 n).toNat

end

end A341536.P2701048917955699377

/-! ## A341536.P16346437820954838317

`A174284(n)+A070939(A339847(n))`
-/

namespace A341536.P16346437820954838317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174284 n + A070939 (A339847 n).toNat

end

end A341536.P16346437820954838317

/-! ## A341536.P18141088309714100442

`A180414(n)-A261084(A000110(n))`
-/

namespace A341536.P18141088309714100442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 n - A261084 (A000110 n).toNat

end

end A341536.P18141088309714100442

/-!
# A341538: One of the two successive approximations up to 2^n for the 2-adic integer sqrt(17). This is the 1 (mod 4) case.

The programs for A341538, there is no canonical definition to state claims against.
-/

/-! ## A341538.P16476334510304346405

`2^(n+2)-A341539(n+2)`
-/

namespace A341538.P16476334510304346405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A341539 (n + 2)

end

end A341538.P16476334510304346405

/-! ## A341538.P11656915829568291712

`A341600(n+2)+A341601(n+2)-A341539(n+2)`
-/

namespace A341538.P11656915829568291712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341600 (n + 2) + (A341601 (n + 2) - A341539 (n + 2))

end

end A341538.P11656915829568291712

/-! ## A341538.P1516442950080177674

`A020737(n)-(A341539(n+2)+1)`
-/

namespace A341538.P1516442950080177674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - (A341539 (n + 2) + 1)

end

end A341538.P1516442950080177674

/-! ## A341538.P11661323410676124722

`A318960(n+2)+A318961(n+2)-A341539(n+2)`
-/

namespace A341538.P11661323410676124722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318960 (n + 2) + (A318961 (n + 2) - A341539 (n + 2))

end

end A341538.P11661323410676124722

/-! ## A341538.P15217717826537049451

`A341751(n+2)+A341752(n+2)-A341539(n+2)`
-/

namespace A341538.P15217717826537049451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341751 (n + 2) + (A341752 (n + 2) - A341539 (n + 2))

end

end A341538.P15217717826537049451

/-!
# A341539: One of the two successive approximations up to 2^n for the 2-adic integer sqrt(17). This is the 3 (mod 4) case.

The programs for A341539, there is no canonical definition to state claims against.
-/

/-! ## A341539.P6747933604690250675

`2^(n+2)-A341538(n+2)`
-/

namespace A341539.P6747933604690250675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A341538 (n + 2)

end

end A341539.P6747933604690250675

/-! ## A341539.P9762306182055675914

`∑[A000079(n+1)*A341540(n+1)]+1`
-/

namespace A341539.P9762306182055675914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A341540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341539.P9762306182055675914

/-! ## A341539.P13097754793037914930

`A341600(n+2)+A341601(n+2)-A341538(n+2)`
-/

namespace A341539.P13097754793037914930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341600 (n + 2) + (A341601 (n + 2) - A341538 (n + 2))

end

end A341539.P13097754793037914930

/-! ## A341539.P15800137320711947962

`A318960(n+2)+A318961(n+2)-A341538(n+2)`
-/

namespace A341539.P15800137320711947962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318960 (n + 2) + (A318961 (n + 2) - A341538 (n + 2))

end

end A341539.P15800137320711947962

/-! ## A341539.P17056028719231763581

`A341751(n+2)+A341752(n+2)-A341538(n+2)`
-/

namespace A341539.P17056028719231763581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341751 (n + 2) + (A341752 (n + 2) - A341538 (n + 2))

end

end A341539.P17056028719231763581

/-!
# A341540: Expansion of the 2-adic integer sqrt(17) that ends in 11.

The programs for A341540, there is no canonical definition to state claims against.
-/

/-! ## A341540.P15688789434378767370

`(1-A322217(n))^n`
-/

namespace A341540.P15688789434378767370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A322217 n) ^ n

end

end A341540.P15688789434378767370

/-! ## A341540.P6893961398587745320

`A054977(n)-A322217(n)`
-/

namespace A341540.P6893961398587745320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A322217 n

end

end A341540.P6893961398587745320

/-! ## A341540.P6435061711180725609

`A000007(n*A322217(n))`
-/

namespace A341540.P6435061711180725609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A322217 n).toNat

end

end A341540.P6435061711180725609

/-! ## A341540.P11319074479273412836

`xor(A057427(n), A322217(n))`
-/

namespace A341540.P11319074479273412836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A322217 n)

end

end A341540.P11319074479273412836

/-! ## A341540.P18278276416271025754

`A000007(n)+1-A322217(n)`
-/

namespace A341540.P18278276416271025754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A322217 n)

end

end A341540.P18278276416271025754

/-! ## A341540.P6009465139048124097

`1-A057427(n*A322217(n))`
-/

namespace A341540.P6009465139048124097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A322217 n).toNat

end

end A341540.P6009465139048124097

/-! ## A341540.P7560656073294643084

`A001044(a(n-1))-A322217(n)` with `a(0)=1`
-/

namespace A341540.P7560656073294643084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001044 (a (n - 1)).toNat - A322217 n

end

end A341540.P7560656073294643084

/-! ## A341540.P17126057760051939619

`A318962(n)+A318963(n)-A322217(n)`
-/

namespace A341540.P17126057760051939619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 n + (A318963 n - A322217 n)

end

end A341540.P17126057760051939619

/-! ## A341540.P12757680245846143801

`A341602(n)+A341603(n)-A322217(n)`
-/

namespace A341540.P12757680245846143801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 n + (A341603 n - A322217 n)

end

end A341540.P12757680245846143801

/-! ## A341540.P15064691717943927172

`A341753(n)+A341754(n)-A322217(n)`
-/

namespace A341540.P15064691717943927172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 n + (A341754 n - A322217 n)

end

end A341540.P15064691717943927172

/-! ## A341540.P6839069660347101310

`xor(char[A162306(n+1)], A322217(n))`
-/

namespace A341540.P6839069660347101310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A322217 n)

end

end A341540.P6839069660347101310

/-! ## A341540.P7073462415420713079

`xor(char[A089177(n)], A322217(n))`
-/

namespace A341540.P7073462415420713079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089177 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A322217 n)

end

end A341540.P7073462415420713079

/-!
# A341543: a(n) = sqrt( Product_{j=1..n} Product_{k=1..2} (4*sin((2*j-1)*Pi/(2*n))^2 + 4*sin((2*k-1)*Pi/2)^2) ).

The programs for A341543, the canonical program `A341543.P16062495896892374698` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341543 has offset 1).

The definition of A341543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341543.P16062495896892374698

`6*a(n-1)-a(n-2)-8` with `a(0)=8, a(1)=36`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341543

/-- `6*a(n-1)-a(n-2)-8` -/
def P16062495896892374698.Spec : Prop :=
  ∀ n, P16062495896892374698.a n = A341543 (n + 1)

theorem P16062495896892374698.correct : P16062495896892374698.Spec := by
  intro n
  simp only [A341543, Nat.add_sub_cancel]

end A341543

/-! ## A341543.P16431162186597391462

`2*(A001541(n+1)+1)`
-/

namespace A341543.P16431162186597391462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001541 (n + 1) + 1)

end

end A341543.P16431162186597391462

namespace A341543

/-- `2*(A001541(n+1)+1)` -/
def P16431162186597391462.Spec : Prop :=
  ∀ n, P16431162186597391462.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P12910564298479063296

`Δ[ogf((1+x)/(1-6x+x^2))]+2`
-/

namespace A341543.P12910564298479063296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A341543.P12910564298479063296

namespace A341543

/-- `Δ[ogf((1+x)/(1-6x+x^2))]+2` -/
def P12910564298479063296.Spec : Prop :=
  ∀ n, P12910564298479063296.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P9974370561363950817

`Δ[A002315(n)]+2`
-/

namespace A341543.P9974370561363950817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A341543.P9974370561363950817

namespace A341543

/-- `Δ[A002315(n)]+2` -/
def P9974370561363950817.Spec : Prop :=
  ∀ n, P9974370561363950817.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P9086780333488777184

`A081555(n+1)+1`
-/

namespace A341543.P9086780333488777184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081555 (n + 1) + 1

end

end A341543.P9086780333488777184

namespace A341543

/-- `A081555(n+1)+1` -/
def P9086780333488777184.Spec : Prop :=
  ∀ n, P9086780333488777184.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P5006402394887690954

`A003499(n+1)+2`
-/

namespace A341543.P5006402394887690954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (n + 1) + 2

end

end A341543.P5006402394887690954

namespace A341543

/-- `A003499(n+1)+2` -/
def P5006402394887690954.Spec : Prop :=
  ∀ n, P5006402394887690954.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P1682721810571740078

`A162484(2*(n+1))`
-/

namespace A341543.P1682721810571740078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162484 (2 * (n + 1))

end

end A341543.P1682721810571740078

namespace A341543

/-- `A162484(2*(n+1))` -/
def P1682721810571740078.Spec : Prop :=
  ∀ n, P1682721810571740078.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P16789519284105662300

`2*A099938(n+2)`
-/

namespace A341543.P16789519284105662300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099938 (n + 2)

end

end A341543.P16789519284105662300

namespace A341543

/-- `2*A099938(n+2)` -/
def P16789519284105662300.Spec : Prop :=
  ∀ n, P16789519284105662300.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P10132200858552079012

`4*A115599(n+1)`
-/

namespace A341543.P10132200858552079012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A115599 (n + 1)

end

end A341543.P10132200858552079012

namespace A341543

/-- `4*A115599(n+1)` -/
def P10132200858552079012.Spec : Prop :=
  ∀ n, P10132200858552079012.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P3954352991150803930

`4*A055997(n+2)`
-/

namespace A341543.P3954352991150803930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055997 (n + 2)

end

end A341543.P3954352991150803930

namespace A341543

/-- `4*A055997(n+2)` -/
def P3954352991150803930.Spec : Prop :=
  ∀ n, P3954352991150803930.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P12857861588971590802

`A159582(Δ[n²])+2`
-/

namespace A341543.P12857861588971590802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159582 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A341543.P12857861588971590802

namespace A341543

/-- `A159582(Δ[n²])+2` -/
def P12857861588971590802.Spec : Prop :=
  ∀ n, P12857861588971590802.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P15565465010174770093

`2*A100828(Δ[n²])`
-/

namespace A341543.P15565465010174770093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100828 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341543.P15565465010174770093

namespace A341543

/-- `2*A100828(Δ[n²])` -/
def P15565465010174770093.Spec : Prop :=
  ∀ n, P15565465010174770093.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P9806940513535715131

`2*A182780(Δ[n²])`
-/

namespace A341543.P9806940513535715131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341543.P9806940513535715131

namespace A341543

/-- `2*A182780(Δ[n²])` -/
def P9806940513535715131.Spec : Prop :=
  ∀ n, P9806940513535715131.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P13135682570983987537

`Δ[Δ[A001108(n)]]+2`
-/

namespace A341543.P13135682570983987537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A341543.P13135682570983987537

namespace A341543

/-- `Δ[Δ[A001108(n)]]+2` -/
def P13135682570983987537.Spec : Prop :=
  ∀ n, P13135682570983987537.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P2714876872159387727

`2*(Δ[A001652(n)]+1)`
-/

namespace A341543.P2714876872159387727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A341543.P2714876872159387727

namespace A341543

/-- `2*(Δ[A001652(n)]+1)` -/
def P2714876872159387727.Spec : Prop :=
  ∀ n, P2714876872159387727.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P6348048509858444285

`2*(Δ[A046090(n)]+1)`
-/

namespace A341543.P6348048509858444285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A341543.P6348048509858444285

namespace A341543

/-- `2*(Δ[A046090(n)]+1)` -/
def P6348048509858444285.Spec : Prop :=
  ∀ n, P6348048509858444285.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P8174136131612228599

`Δ[A078057(2*n)]+2`
-/

namespace A341543.P8174136131612228599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A341543.P8174136131612228599

namespace A341543

/-- `Δ[A078057(2*n)]+2` -/
def P8174136131612228599.Spec : Prop :=
  ∀ n, P8174136131612228599.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P3875429277749563032

`Δ[A100828(2*n)]+2`
-/

namespace A341543.P3875429277749563032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A341543.P3875429277749563032

namespace A341543

/-- `Δ[A100828(2*n)]+2` -/
def P3875429277749563032.Spec : Prop :=
  ∀ n, P3875429277749563032.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P2794653219466695889

`Δ[A113224(2*n)]+2`
-/

namespace A341543.P2794653219466695889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A341543.P2794653219466695889

namespace A341543

/-- `Δ[A113224(2*n)]+2` -/
def P2794653219466695889.Spec : Prop :=
  ∀ n, P2794653219466695889.a n = A341543 (n + 1)

end A341543

/-! ## A341543.P9948391789034611952

`A051927(2*(n+1))+1`
-/

namespace A341543.P9948391789034611952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 (2 * (n + 1)) + 1

end

end A341543.P9948391789034611952

namespace A341543

/-- `A051927(2*(n+1))+1` -/
def P9948391789034611952.Spec : Prop :=
  ∀ n, P9948391789034611952.a n = A341543 (n + 1)

end A341543

/-!
# A341544: a(n) = sqrt( Product_{j=1..n} Product_{k=1..4} (4*sin((2*j-1)*Pi/(2*n))^2 + 4*sin((2*k-1)*Pi/4)^2) ).

The programs for A341544, there is no canonical definition to state claims against.
-/

/-! ## A341544.P8365113304422566267

`∑[ceil((sqrt(3)+2)*a(n-1))]²` with `a(0)=6, a(1)=10`
-/

namespace A341544.P8365113304422566267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A341544.P8365113304422566267

/-! ## A341544.P12429727202213181392

`(2*(∑[∑[ceil((sqrt(3)+2)^n)]]+2))²`
-/

namespace A341544.P12429727202213181392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)) ^ 2

end

end A341544.P12429727202213181392

/-! ## A341544.P13292894029223552916

`4*A102206(n)²`
-/

namespace A341544.P13292894029223552916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102206 n ^ 2

end

end A341544.P13292894029223552916

/-! ## A341544.P3645317155231949250

`A102091(n+1)*A102206(n)`
-/

namespace A341544.P3645317155231949250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102091 (n + 1) * A102206 n

end

end A341544.P3645317155231949250

/-! ## A341544.P10998326948716383696

`A102091(n+1)*A121401(n+1)`
-/

namespace A341544.P10998326948716383696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102091 (n + 1) * A121401 (n + 1)

end

end A341544.P10998326948716383696

/-! ## A341544.P17496277199371812105

`lcm((A335025(n+1)+1)², A057077(n))`
-/

namespace A341544.P17496277199371812105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((A335025 (n + 1) + 1) ^ 2) (A057077 n)

end

end A341544.P17496277199371812105

/-! ## A341544.P8128605444548818742

`A351635(2*(n+1))*A351635(2*(n+1))`
-/

namespace A341544.P8128605444548818742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351635 (2 * (n + 1)) * A351635 (2 * (n + 1))

end

end A341544.P8128605444548818742

/-! ## A341544.P15333605210766406968

`A102091(n+1)+A001075(n+1)*A102091(n+1)`
-/

namespace A341544.P15333605210766406968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102091 (n + 1) + A001075 (n + 1) * A102091 (n + 1)

end

end A341544.P15333605210766406968

/-! ## A341544.P17962181095685765007

`(A006235(2*(n+1))/A006235(n+1))²/4`
-/

namespace A341544.P17962181095685765007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006235 (2 * (n + 1)) : ℚ) / (A006235 (n + 1) : ℚ)) ^ 2 / 4

end

end A341544.P17962181095685765007

/-!
# A341546: a(n) = Sum_{k=0..n} (-1)^(n+k)*A111516(n,k).

The programs for A341546, there is no canonical definition to state claims against.
-/

/-! ## A341546.P4489848372713445394

`A234521(A299996(a(n-1)+val(n, 2)))` with `a(0)=1, a(1)=0`
-/

namespace A341546.P4489848372713445394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A234521 (A299996 (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)).toNat).toNat

end

end A341546.P4489848372713445394

/-! ## A341546.P11260487893171503745

`A000257(n)-A346700(A100236(n))`
-/

namespace A341546.P11260487893171503745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000257 n - A346700 (A100236 n).toNat

end

end A341546.P11260487893171503745

/-!
# A341549: a(n) = Sum_{k=1..n} (-1)^(n+k)*A087322(n,k).

The programs for A341549, the canonical program `A341549.P8677847433203269696` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341549 has offset 1).

The definition of A341549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341549.P8677847433203269696

`((n+2)*2^(n+3)-3+(4*(n+1)+1)*(-1)^(n+2))/6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341549

/-- `((n+2)*2^(n+3)-3+(4*(n+1)+1)*(-1)^(n+2))/6` -/
def P8677847433203269696.Spec : Prop :=
  ∀ n, P8677847433203269696.a n = (A341549 (n + 1) : ℚ)

end A341549

/-! ## A341549.P3519388886816363203

`A099431(n+3)-A135351(n+3)`
-/

namespace A341549.P3519388886816363203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099431 (n + 3) - A135351 (n + 3)

end

end A341549.P3519388886816363203

namespace A341549

/-- `A099431(n+3)-A135351(n+3)` -/
def P3519388886816363203.Spec : Prop :=
  ∀ n, P3519388886816363203.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P10828076151451772510

`A000975(n+1)+2*A093835(n+1)`
-/

namespace A341549.P10828076151451772510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + 2 * A093835 (n + 1)

end

end A341549.P10828076151451772510

namespace A341549

/-- `A000975(n+1)+2*A093835(n+1)` -/
def P10828076151451772510.Spec : Prop :=
  ∀ n, P10828076151451772510.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P291430960525035218

`Δ[n*A001045(n+2)-∑[(n+1)%2]]`
-/

namespace A341549.P291430960525035218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341549.P291430960525035218

namespace A341549

/-- `Δ[n*A001045(n+2)-∑[(n+1)%2]]` -/
def P291430960525035218.Spec : Prop :=
  ∀ n, P291430960525035218.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P8972333848757752316

`Δ[n*A001045(n+2)]-A000035(n)`
-/

namespace A341549.P8972333848757752316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 n

end

end A341549.P8972333848757752316

namespace A341549

/-- `Δ[n*A001045(n+2)]-A000035(n)` -/
def P8972333848757752316.Spec : Prop :=
  ∀ n, P8972333848757752316.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P7391951128752430914

`Δ[n*A001045(n+2)-A004526(n)]`
-/

namespace A341549.P7391951128752430914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 (n + 2) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341549.P7391951128752430914

namespace A341549

/-- `Δ[n*A001045(n+2)-A004526(n)]` -/
def P7391951128752430914.Spec : Prop :=
  ∀ n, P7391951128752430914.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P4496364618911755648

`Δ[n*A001045(n+2)-A008619(n)]`
-/

namespace A341549.P4496364618911755648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 (n + 2) - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341549.P4496364618911755648

namespace A341549

/-- `Δ[n*A001045(n+2)-A008619(n)]` -/
def P4496364618911755648.Spec : Prop :=
  ∀ n, P4496364618911755648.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P17860201024477296867

`Δ[n*A001045(n+2)-A002265(2*n)]`
-/

namespace A341549.P17860201024477296867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 (n + 2) - A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341549.P17860201024477296867

namespace A341549

/-- `Δ[n*A001045(n+2)-A002265(2*n)]` -/
def P17860201024477296867.Spec : Prop :=
  ∀ n, P17860201024477296867.a n = A341549 (n + 1)

end A341549

/-! ## A341549.P9205084368551686980

`Δ[n*A001045(n+2)]-A010873(n²)`
-/

namespace A341549.P9205084368551686980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010873 (n ^ 2)

end

end A341549.P9205084368551686980

namespace A341549

/-- `Δ[n*A001045(n+2)]-A010873(n²)` -/
def P9205084368551686980.Spec : Prop :=
  ∀ n, P9205084368551686980.a n = A341549 (n + 1)

end A341549

/-!
# A341550: Primes of the form prime(i)*prime(i+1)+2*prime(i+2).

The programs for A341550, there is no canonical definition to state claims against.
-/

/-! ## A341550.P5877784701938311317

`p?[A197638(n+1)+A006094(n+1)]`
-/

namespace A341550.P5877784701938311317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197638 (n + 1) + A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341550.P5877784701938311317

/-! ## A341550.P14336617055134476940

`p?[A292926(n+1)+A215848(n+1)]`
-/

namespace A341550.P14336617055134476940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) + A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341550.P14336617055134476940

/-! ## A341550.P7175654564174145150

`p?[A072055(n+2)+A023515(n+1)]`
-/

namespace A341550.P7175654564174145150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 2) + A023515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341550.P7175654564174145150

/-! ## A341550.P12235110517842834409

`p?[A073582(n+3)+A006094(n+1)]`
-/

namespace A341550.P12235110517842834409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 3) + A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341550.P12235110517842834409

/-! ## A341550.P16190185383528592588

`p?[A100484(n+3)+A006094(n+1)]`
-/

namespace A341550.P16190185383528592588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 3) + A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341550.P16190185383528592588

/-!
# A341552: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 3 point set but exactly two removed edges are incident to the same vertex in the other set.

The programs for A341552, the canonical program `A341552.P15226628084569355988` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341552 has offset 4).

The definition of A341552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341552.P15226628084569355988

`3*7^(n+2)-2*3^(n+2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341552

/-- `3*7^(n+2)-2*3^(n+2)` -/
def P15226628084569355988.Spec : Prop :=
  ∀ n, P15226628084569355988.a n = A341552 (n + 4)

theorem P15226628084569355988.correct : P15226628084569355988.Spec := by
  intro n
  simp only [A341552, Nat.add_sub_cancel]

end A341552

/-! ## A341552.P6474768272111826741

`Δ[A337418(n+3)/2]`
-/

namespace A341552.P6474768272111826741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337418 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341552.P6474768272111826741

namespace A341552

/-- `Δ[A337418(n+3)/2]` -/
def P6474768272111826741.Spec : Prop :=
  ∀ n, P6474768272111826741.a n = (A341552 (n + 4) : ℚ)

theorem P6474768272111826741.correct : P6474768272111826741.Spec := by
  intro n
  simp only [A341552, Nat.add_sub_cancel, A341552.P6474768272111826741.f1, A341552.P6474768272111826741.a, A341552.P15226628084569355988.a, A337418, A337418.P7587478471880944433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341552

/-! ## A341552.P13598816190423022241

`Δ[Δ[A095152(n+2)/2]]`
-/

namespace A341552.P13598816190423022241
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095152 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341552.P13598816190423022241

namespace A341552

/-- `Δ[Δ[A095152(n+2)/2]]` -/
def P13598816190423022241.Spec : Prop :=
  ∀ n, P13598816190423022241.a n = (A341552 (n + 4) : ℚ)

end A341552

/-! ## A341552.P2754961797276229656

`Δ[(A058482(n+2)+A058481(n+2))/2]`
-/

namespace A341552.P2754961797276229656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058482 (n + 2) + A058481 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341552.P2754961797276229656

namespace A341552

/-- `Δ[(A058482(n+2)+A058481(n+2))/2]` -/
def P2754961797276229656.Spec : Prop :=
  ∀ n, P2754961797276229656.a n = (A341552 (n + 4) : ℚ)

theorem P2754961797276229656.correct : P2754961797276229656.Spec := by
  intro n
  simp only [A341552, Nat.add_sub_cancel, A341552.P2754961797276229656.f1, A341552.P2754961797276229656.a, A341552.P15226628084569355988.a, A058481, A058481.P14870397075544163787.a, A058482, A058482.P12276682187950633990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341552

/-! ## A341552.P18057717136879838773

`Δ[A000420(n+2)-A048473(n+2)]/2`
-/

namespace A341552.P18057717136879838773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 2) - A048473 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A341552.P18057717136879838773

namespace A341552

/-- `Δ[A000420(n+2)-A048473(n+2)]/2` -/
def P18057717136879838773.Spec : Prop :=
  ∀ n, P18057717136879838773.a n = (A341552 (n + 4) : ℚ)

theorem P18057717136879838773.correct : P18057717136879838773.Spec := by
  intro n
  simp only [A341552, Nat.add_sub_cancel, A341552.P18057717136879838773.f1, A341552.P18057717136879838773.a, A341552.P15226628084569355988.a, A000420, A000420.P3695589171832359676.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341552

/-!
# A341553: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 4-point set but exactly two removed edges are incident to the same vertex in the other set.

The programs for A341553, the canonical program `A341553.P5540926041573151347` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341553 has offset 4).

The definition of A341553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341553.P5540926041573151347

`21*15^(n+2)-4*7^(n+3)+11*3^(n+2)-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341553

/-- `21*15^(n+2)-4*7^(n+3)+11*3^(n+2)-1` -/
def P5540926041573151347.Spec : Prop :=
  ∀ n, P5540926041573151347.a n = A341553 (n + 4)

theorem P5540926041573151347.correct : P5540926041573151347.Spec := by
  intro n
  simp only [A341553, Nat.add_sub_cancel]

end A341553

/-!
# A341566: Fourier coefficients of the modular form (1/t_{6a}^3) * (1-12*sqrt(-3) / t_{6a})^(1/6) * F_{6a}^10.

The programs for A341566, there is no canonical definition to state claims against.
-/

/-! ## A341566.P1258064614000653046

`A057944(n)*A140756(A060150(n))`
-/

namespace A341566.P1258064614000653046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n * A140756 (A060150 n).toNat

end

end A341566.P1258064614000653046

/-!
# A341575: E.g.f.: log(1 - log(1 - x))^2 / 2.

The programs for A341575, there is no canonical definition to state claims against.
-/

/-! ## A341575.P16923027347364419728

`A079642(∑[n+1]+2)`
-/

namespace A341575.P16923027347364419728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A341575.P16923027347364419728

/-! ## A341575.P6830675220773364454

`A079642(A133263(n+1))^A178489(n)`
-/

namespace A341575.P6830675220773364454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079642 (A133263 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A341575.P6830675220773364454

/-! ## A341575.P8519567249033043151

`gcd(A000038(n), A079642(A133263(n+1)))`
-/

namespace A341575.P8519567249033043151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A079642 (A133263 (n + 1)).toNat)

end

end A341575.P8519567249033043151

/-! ## A341575.P5291632538445762633

`A079642(A133263(n+1))+A000122(A084645(n+1))`
-/

namespace A341575.P5291632538445762633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079642 (A133263 (n + 1)).toNat + A000122 (A084645 (n + 1)).toNat

end

end A341575.P5291632538445762633

/-! ## A341575.P11283928176593716068

`A278500(A000960(2*(n+1)))+A079642(A133263(n+1))`
-/

namespace A341575.P11283928176593716068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278500 (A000960 (2 * (n + 1))).toNat + A079642 (A133263 (n + 1)).toNat

end

end A341575.P11283928176593716068

/-!
# A341576: a(n) = Sum_{k=0..n} U_k((n-k)/2) where U_n(x) is a Chebyshev polynomial of the 2nd kind.

The programs for A341576, there is no canonical definition to state claims against.
-/

/-! ## A341576.P14770329839479410406

`A220658(A181768(n))+A060144(n)`
-/

namespace A341576.P14770329839479410406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A181768 n).toNat + A060144 n

end

end A341576.P14770329839479410406

/-! ## A341576.P939244729004007435

`A304708(∑[∑[A208152(n+1)]])`
-/

namespace A341576.P939244729004007435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208152 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341576.P939244729004007435

/-! ## A341576.P15284526284547295688

`A051889(A071969(n))+A004198(n)`
-/

namespace A341576.P15284526284547295688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A071969 n).toNat + A004198 n

end

end A341576.P15284526284547295688

/-!
# A341578: a(n) is the minimum number of total votes needed for one party to win if there are n^2 voters divided into equal districts.

The programs for A341578, there is no canonical definition to state claims against.
-/

/-! ## A341578.P16035785613455515794

`A341319(n+1)-A000007(Δ[A341319(n+1)])`
-/

namespace A341578.P16035785613455515794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341319 (n + 1) - A000007 (f1 (n + 1) - f1 n).toNat

end

end A341578.P16035785613455515794

/-! ## A341578.P902693697996319288

`A341721((n+1)²)`
-/

namespace A341578.P902693697996319288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 ((n + 1) ^ 2)

end

end A341578.P902693697996319288

/-! ## A341578.P9629691409529478467

`or(char[1], A341721(∑[2*n+1]))`
-/

namespace A341578.P9629691409529478467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341721 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A341578.P9629691409529478467

/-! ## A341578.P12973896557637023865

`record[A341721(A117910(n)²)]`
-/

namespace A341578.P12973896557637023865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341578.P12973896557637023865

/-! ## A341578.P2178965673433725920

`record[A341721(A126759(n)²)]`
-/

namespace A341578.P2178965673433725920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341578.P2178965673433725920

/-! ## A341578.P16810744876798904057

`record[A341721(A134478(n)²)]`
-/

namespace A341578.P16810744876798904057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341578.P16810744876798904057

/-! ## A341578.P3280523121148379712

`record[A341721(A154958(n)²)]`
-/

namespace A341578.P3280523121148379712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A154958 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341578.P3280523121148379712

/-! ## A341578.P3450565765200463621

`record[A341721(A157128(n)²)]`
-/

namespace A341578.P3450565765200463621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A157128 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341578.P3450565765200463621

/-! ## A341578.P7353472338584455789

`A000027(A341721(∑[2*n+1]))`
-/

namespace A341578.P7353472338584455789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A341721 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A341578.P7353472338584455789

/-! ## A341578.P16495871601000813120

`A341721(∑[2*n+1])%∑[A000041(n+2)]`
-/

namespace A341578.P16495871601000813120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341721 (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A341578.P16495871601000813120

/-! ## A341578.P2251965367338455790

`A003989(∑[n+1])*A341721((n+1)*(n+1))`
-/

namespace A341578.P2251965367338455790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (∑ j ∈ Finset.range (n + 1), f1 j) * A341721 ((n + 1) * (n + 1))

end

end A341578.P2251965367338455790

/-! ## A341578.P11499906795539459227

`A000041(gcd(n, n+1))*A341721(∑[2*n+1])`
-/

namespace A341578.P11499906795539459227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A341721 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341578.P11499906795539459227

/-!
# A341579: Number of steps needed to solve the Towers of Hanoi exchanging disks puzzle with 3 pegs and n disks.

The programs for A341579, the canonical program `A341579.P2396193696758749241` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341579 has offset 0).

The definition of A341579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341579.P2396193696758749241

`a(n-1)+a(n-2)+2*a(n-4)+3` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341579

/-- `a(n-1)+a(n-2)+2*a(n-4)+3` -/
def P2396193696758749241.Spec : Prop :=
  ∀ n, (P2396193696758749241.a n : ℤ) = A341579 n

theorem P2396193696758749241.correct : P2396193696758749241.Spec := by
  intro n
  simp only [A341579]

end A341579

/-! ## A341579.P14104172573795421288

`∑[A341582(n)]`
-/

namespace A341579.P14104172573795421288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341579.P14104172573795421288

namespace A341579

/-- `∑[A341582(n)]` -/
def P14104172573795421288.Spec : Prop :=
  ∀ n, P14104172573795421288.a n = A341579 n

end A341579

/-! ## A341579.P11487597345891288449

`A341582(n%A008574(n))+a(n-1)` with `a(0)=0`
-/

namespace A341579.P11487597345891288449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A341582 (Int.tmod (n : ℤ) (A008574 n)).toNat + a (n - 1)

end

end A341579.P11487597345891288449

namespace A341579

/-- `A341582(n%A008574(n))+a(n-1)` -/
def P11487597345891288449.Spec : Prop :=
  ∀ n, P11487597345891288449.a n = A341579 n

end A341579

/-! ## A341579.P1850778870290419151

`a(n-1)+A341582(n)%A341582(n+1)` with `a(0)=0`
-/

namespace A341579.P1850778870290419151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A341582 n) (A341582 (n + 1))

end

end A341579.P1850778870290419151

namespace A341579

/-- `a(n-1)+A341582(n)%A341582(n+1)` -/
def P1850778870290419151.Spec : Prop :=
  ∀ n, P1850778870290419151.a n = A341579 n

end A341579

/-! ## A341579.P13062712167105907352

`A341581(n+2)-(A341580(n+1)+1)`
-/

namespace A341579.P13062712167105907352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341581 (n + 2) - (A341580 (n + 1) + 1)

end

end A341579.P13062712167105907352

namespace A341579

/-- `A341581(n+2)-(A341580(n+1)+1)` -/
def P13062712167105907352.Spec : Prop :=
  ∀ n, P13062712167105907352.a n = A341579 n

end A341579

/-!
# A341580: Number of steps needed to reach position "YZ^(n-1)" in the Towers of Hanoi exchanging disks puzzle with 3 pegs and n disks.

The programs for A341580, the canonical program `A341580.P11261616085701738570` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341580 has offset 0).

The definition of A341580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341580.P11261616085701738570

`2*a(n-1)-a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341580

/-- `2*a(n-1)-a(n-3)+2*a(n-4)-2*a(n-5)` -/
def P11261616085701738570.Spec : Prop :=
  ∀ n, P11261616085701738570.a n = A341580 n

theorem P11261616085701738570.correct : P11261616085701738570.Spec := by
  intro n
  simp only [A341580]

end A341580

/-! ## A341580.P10763512172099532573

`a(n-1)+A341581(n-1)+1` with `a(0)=0`
-/

namespace A341580.P10763512172099532573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A341581 (n - 1) + 1

end

end A341580.P10763512172099532573

namespace A341580

/-- `a(n-1)+A341581(n-1)+1` -/
def P10763512172099532573.Spec : Prop :=
  ∀ n, P10763512172099532573.a n = A341580 n

end A341580

/-! ## A341580.P6587846740229894407

`floor(A341579(n+1)/2)`
-/

namespace A341580.P6587846740229894407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341579 (n + 1) : ℚ) / 2⌋

end

end A341580.P6587846740229894407

namespace A341580

/-- `floor(A341579(n+1)/2)` -/
def P6587846740229894407.Spec : Prop :=
  ∀ n, P6587846740229894407.a n = A341580 n

end A341580

/-! ## A341580.P1258546896587485413

`(∑[A341582(n+1)]-1)/2`
-/

namespace A341580.P1258546896587485413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A341580.P1258546896587485413

namespace A341580

/-- `(∑[A341582(n+1)]-1)/2` -/
def P1258546896587485413.Spec : Prop :=
  ∀ n, P1258546896587485413.a n = (A341580 n : ℚ)

end A341580

/-! ## A341580.P14358701521069792648

`∑[A341581(n)]+n-A341581(n)`
-/

namespace A341580.P14358701521069792648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A341581 n)

end

end A341580.P14358701521069792648

namespace A341580

/-- `∑[A341581(n)]+n-A341581(n)` -/
def P14358701521069792648.Spec : Prop :=
  ∀ n, P14358701521069792648.a n = A341580 n

end A341580

/-! ## A341580.P3620263743622524512

`∑[A341582(n+1)%A341579(n+1)/2]`
-/

namespace A341580.P3620263743622524512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A341582 (n + 1)) (A341579 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341580.P3620263743622524512

namespace A341580

/-- `∑[A341582(n+1)%A341579(n+1)/2]` -/
def P3620263743622524512.Spec : Prop :=
  ∀ n, P3620263743622524512.a n = (A341580 n : ℚ)

end A341580

/-!
# A341581: Number of steps needed to move the largest disk out from a stack of n disks in the Towers of Hanoi exchanging disks puzzle with 3 pegs.

The programs for A341581, the canonical program `A341581.P5612178848987229215` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341581 has offset 0).

The definition of A341581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341581.P5612178848987229215

`2*a(n-1)-a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341581

/-- `2*a(n-1)-a(n-3)+2*a(n-4)-2*a(n-5)` -/
def P5612178848987229215.Spec : Prop :=
  ∀ n, P5612178848987229215.a n = A341581 n

theorem P5612178848987229215.correct : P5612178848987229215.Spec := by
  intro n
  simp only [A341581]

end A341581

/-! ## A341581.P5487226471201445164

`A341582(n+2)/2-1`
-/

namespace A341581.P5487226471201445164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341582 (n + 2) : ℚ) / 2 - 1

end

end A341581.P5487226471201445164

namespace A341581

/-- `A341582(n+2)/2-1` -/
def P5487226471201445164.Spec : Prop :=
  ∀ n, P5487226471201445164.a n = (A341581 n : ℚ)

end A341581

/-! ## A341581.P5434538613146193639

`Δ[A341580(n)]-1`
-/

namespace A341581.P5434538613146193639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A341581.P5434538613146193639

namespace A341581

/-- `Δ[A341580(n)]-1` -/
def P5434538613146193639.Spec : Prop :=
  ∀ n, P5434538613146193639.a n = A341581 n

end A341581

/-! ## A341581.P11309374634143050779

`A341580(n+1)-(A341580(n)+1)`
-/

namespace A341581.P11309374634143050779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341580 (n + 1) - (A341580 n + 1)

end

end A341581.P11309374634143050779

namespace A341581

/-- `A341580(n+1)-(A341580(n)+1)` -/
def P11309374634143050779.Spec : Prop :=
  ∀ n, P11309374634143050779.a n = A341581 n

end A341581

/-! ## A341581.P2020024050147522168

`A008683(A031368(n+1))+Δ[A341580(n)]`
-/

namespace A341581.P2020024050147522168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031368 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A341581.P2020024050147522168

namespace A341581

/-- `A008683(A031368(n+1))+Δ[A341580(n)]` -/
def P2020024050147522168.Spec : Prop :=
  ∀ n, P2020024050147522168.a n = A341581 n

end A341581

/-! ## A341581.P16555138129104612596

`A008683(A112037(n+2))+Δ[A341580(n)]`
-/

namespace A341581.P16555138129104612596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A112037 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A341581.P16555138129104612596

namespace A341581

/-- `A008683(A112037(n+2))+Δ[A341580(n)]` -/
def P16555138129104612596.Spec : Prop :=
  ∀ n, P16555138129104612596.a n = A341581 n

end A341581

/-! ## A341581.P5277427663882418934

`Δ[A341579(n+1)/2]-1`
-/

namespace A341581.P5277427663882418934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341579 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A341581.P5277427663882418934

namespace A341581

/-- `Δ[A341579(n+1)/2]-1` -/
def P5277427663882418934.Spec : Prop :=
  ∀ n, P5277427663882418934.a n = (A341581 n : ℚ)

end A341581

/-!
# A341582: Number of simple moves of the smallest disk in the solution to the Towers of Hanoi exchanging disks puzzle with 3 pegs and n disks.

The programs for A341582, the canonical program `A341582.P11082522310756475524` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341582 has offset 0).

The definition of A341582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341582.P11082522310756475524

`a(n-1)+a(n-2)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341582

/-- `a(n-1)+a(n-2)+2*a(n-4)` -/
def P11082522310756475524.Spec : Prop :=
  ∀ n, (P11082522310756475524.a n : ℤ) = A341582 n

theorem P11082522310756475524.correct : P11082522310756475524.Spec := by
  intro n
  simp only [A341582]

end A341582

/-! ## A341582.P1963075235715499538

`ogf((x+x^2+x^3)/(1-x-x^2-2x^4))`
-/

namespace A341582.P1963075235715499538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -1, -1, 0, -2] n

end

end A341582.P1963075235715499538

namespace A341582

/-- `ogf((x+x^2+x^3)/(1-x-x^2-2x^4))` -/
def P1963075235715499538.Spec : Prop :=
  ∀ n, P1963075235715499538.a n = A341582 n

end A341582

/-! ## A341582.P13931726520491119425

`Δ[A341579(n+1-A040001(2*n))]`
-/

namespace A341582.P13931726520491119425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341579 ((n + 1 : ℤ) - A040001 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341582.P13931726520491119425

namespace A341582

/-- `Δ[A341579(n+1-A040001(2*n))]` -/
def P13931726520491119425.Spec : Prop :=
  ∀ n, P13931726520491119425.a n = A341582 n

end A341582

/-! ## A341582.P12327961480568123078

`Δ[A341579(n-A341579(n)%2)]`
-/

namespace A341582.P12327961480568123078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341579 ((n : ℤ) - Int.tmod (A341579 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341582.P12327961480568123078

namespace A341582

/-- `Δ[A341579(n-A341579(n)%2)]` -/
def P12327961480568123078.Spec : Prop :=
  ∀ n, P12327961480568123078.a n = A341582 n

end A341582

/-! ## A341582.P12894892647971089906

`Δ[A341581(n+1)]-(A341581(n)+1)`
-/

namespace A341582.P12894892647971089906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A341581 n + 1)

end

end A341582.P12894892647971089906

namespace A341582

/-- `Δ[A341581(n+1)]-(A341581(n)+1)` -/
def P12894892647971089906.Spec : Prop :=
  ∀ n, P12894892647971089906.a n = A341582 n

end A341582

/-! ## A341582.P3269136125461597253

`Δ[Δ[A341580(n+1)]-A341580(n)]`
-/

namespace A341582.P3269136125461597253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A341580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341582.P3269136125461597253

namespace A341582

/-- `Δ[Δ[A341580(n+1)]-A341580(n)]` -/
def P3269136125461597253.Spec : Prop :=
  ∀ n, P3269136125461597253.a n = A341582 n

end A341582

/-! ## A341582.P2267956828586670254

`2*A341583(n)-∑[A341583(n)]`
-/

namespace A341582.P2267956828586670254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341583 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341582.P2267956828586670254

namespace A341582

/-- `2*A341583(n)-∑[A341583(n)]` -/
def P2267956828586670254.Spec : Prop :=
  ∀ n, P2267956828586670254.a n = A341582 n

end A341582

/-!
# A341583: Geometric length of the solution to the Towers of Hanoi exchanging disks puzzle with 3 pegs and n disks.

The programs for A341583, the canonical program `A341583.P10727887115466755912` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341583 has offset 0).

The definition of A341583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341583.P10727887115466755912

`3*a(n-1)-a(n-2)-2*a(n-3)+2*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8, a(4)=18`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341583

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+2*a(n-4)-4*a(n-5)` -/
def P10727887115466755912.Spec : Prop :=
  ∀ n, P10727887115466755912.a n = A341583 n

theorem P10727887115466755912.correct : P10727887115466755912.Spec := by
  intro n
  simp only [A341583]

end A341583

/-! ## A341583.P12368804291540222443

`(7*2^n-A341579(n+3)+A341579(n))/2`
-/

namespace A341583.P12368804291540222443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 2 ^ n : ℤ) - A341579 (n + 3) + A341579 n : ℚ) / 2

end

end A341583.P12368804291540222443

namespace A341583

/-- `(7*2^n-A341579(n+3)+A341579(n))/2` -/
def P12368804291540222443.Spec : Prop :=
  ∀ n, P12368804291540222443.a n = (A341583 n : ℚ)

end A341583

/-! ## A341583.P11773044365742253432

`A046155(A221537(n+1))`
-/

namespace A341583.P11773044365742253432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A221537 (n + 1)).toNat

end

end A341583.P11773044365742253432

namespace A341583

/-- `A046155(A221537(n+1))` -/
def P11773044365742253432.Spec : Prop :=
  ∀ n, P11773044365742253432.a n = A341583 n

end A341583

/-! ## A341583.P1532365239433459153

`A331535(A148492(n+1))`
-/

namespace A341583.P1532365239433459153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331535 (A148492 (n + 1)).toNat

end

end A341583.P1532365239433459153

namespace A341583

/-- `A331535(A148492(n+1))` -/
def P1532365239433459153.Spec : Prop :=
  ∀ n, P1532365239433459153.a n = A341583 n

end A341583

/-!
# A341584: Size of the largest subset of the numbers [1..n] which does not contain a 3-term arithmetic progression modulo n.

The programs for A341584, there is no canonical definition to state claims against.
-/

/-! ## A341584.P8211737594023283814

`A000121(n)-A010060(A058696(n))`
-/

namespace A341584.P8211737594023283814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n - A010060 (A058696 n).toNat

end

end A341584.P8211737594023283814

/-!
# A341585: Number of main classes of cyclic diagonal Latin squares of order 2n+1.

The programs for A341585, there is no canonical definition to state claims against.
-/

/-! ## A341585.P6512135309488974933

`ceil(∏{p}[2*n+1, A110654(#)-2]/2)`
-/

namespace A341585.P6512135309488974933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (A110654 p - 2) : ℤ) : ℚ) / 2⌉

end

end A341585.P6512135309488974933

/-! ## A341585.P11485387450559234383

`ceil(∏{p}[A005408(n), A110654(#-3)]/2)`
-/

namespace A341585.P11485387450559234383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A110654 (p - 3) : ℤ) : ℚ) / 2⌉

end

end A341585.P11485387450559234383

/-! ## A341585.P17282784579867526871

`A110654(∏{p}[2*n+1, A110654(#)-2])`
-/

namespace A341585.P17282784579867526871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∏ p ∈ Nat.primeFactors (f1 n), (A110654 p - 2)).toNat

end

end A341585.P17282784579867526871

/-! ## A341585.P12361971372987088082

`A110654(∏{p}[A005408(n), A110654(#-3)])`
-/

namespace A341585.P12361971372987088082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A110654 (p - 3)).toNat

end

end A341585.P12361971372987088082

/-! ## A341585.P5946657780940237896

`∏{p}[Δ[n²], A193677(#)]`
-/

namespace A341585.P5946657780940237896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A193677 p

end

end A341585.P5946657780940237896

/-!
# A341586: E.g.f.: (exp(1 - exp(x)) - 1)^2 / 2.

The programs for A341586, there is no canonical definition to state claims against.
-/

/-! ## A341586.P79631877826969341

`A293037(n+1)-A309775(n+1)`
-/

namespace A341586.P79631877826969341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293037 (n + 1) - A309775 (n + 1)

end

end A341586.P79631877826969341

/-! ## A341586.P174073403506299527

`A341287(A000217(n+1))-A309775(n+1)`
-/

namespace A341586.P174073403506299527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341287 (A000217 (n + 1)).toNat - A309775 (n + 1)

end

end A341586.P174073403506299527

/-!
# A341587: E.g.f.: log(1 + log(1 - x))^2 / 2.

The programs for A341587, there is no canonical definition to state claims against.
-/

/-! ## A341587.P14566318300664747964

`A052822(n+2)/2`
-/

namespace A341587.P14566318300664747964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052822 (n + 2) : ℚ) / 2

end

end A341587.P14566318300664747964

/-! ## A341587.P7897859499037238343

`abs(A039814(∑[n+1]+2))`
-/

namespace A341587.P7897859499037238343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039814 (∑ j ∈ Finset.range (n + 1), f1 j + 2)|

end

end A341587.P7897859499037238343

/-! ## A341587.P269648575291718260

`abs(A325872(A133263(n+2)))`
-/

namespace A341587.P269648575291718260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A133263 (n + 2)).toNat|

end

end A341587.P269648575291718260

/-! ## A341587.P8666556074860575764

`abs(A325872(A167614(n+1)-1))`
-/

namespace A341587.P8666556074860575764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A167614 (n + 1) - 1).toNat|

end

end A341587.P8666556074860575764

/-! ## A341587.P10474932217014406598

`record[gcd(A002262(n), A325872(n+2))]`
-/

namespace A341587.P10474932217014406598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A325872 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341587.P10474932217014406598

/-! ## A341587.P14950343080690001124

`abs(A325872(A060000(A167614(n+1))))`
-/

namespace A341587.P14950343080690001124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A060000 (A167614 (n + 1)).toNat).toNat|

end

end A341587.P14950343080690001124

/-! ## A341587.P8443322103445930767

`A033999(n)*A039814(A133263(n+1))`
-/

namespace A341587.P8443322103445930767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A039814 (A133263 (n + 1)).toNat

end

end A341587.P8443322103445930767

/-! ## A341587.P13849453597213497539

`gcd(A000038(n), A039814(A133263(n+1)))`
-/

namespace A341587.P13849453597213497539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039814 (A133263 (n + 1)).toNat)

end

end A341587.P13849453597213497539

/-! ## A341587.P9821245414054253570

`A033999(n)*A325872(A167614(n+1)-1)`
-/

namespace A341587.P9821245414054253570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A325872 (A167614 (n + 1) - 1).toNat

end

end A341587.P9821245414054253570

/-!
# A341588: E.g.f.: -log(1 + log(1 - x))^3 / 6.

The programs for A341588, there is no canonical definition to state claims against.
-/

/-! ## A341588.P5925649875130833646

`abs(A039814(A167614(n+1)))`
-/

namespace A341588.P5925649875130833646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039814 (A167614 (n + 1)).toNat|

end

end A341588.P5925649875130833646

/-! ## A341588.P1204106954547290950

`abs(A325872(A167614(n+2)))`
-/

namespace A341588.P1204106954547290950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A167614 (n + 2)).toNat|

end

end A341588.P1204106954547290950

/-! ## A341588.P1584458626483718366

`A033999(n)*A039814(A167614(n+1))`
-/

namespace A341588.P1584458626483718366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A039814 (A167614 (n + 1)).toNat

end

end A341588.P1584458626483718366

/-! ## A341588.P5017727024281017895

`A033999(n)*A325872(A167614(n+2))`
-/

namespace A341588.P5017727024281017895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A325872 (A167614 (n + 2)).toNat

end

end A341588.P5017727024281017895

/-! ## A341588.P5819846601906347294

`gcd(A000038(n), A039814(A167614(n+1)))`
-/

namespace A341588.P5819846601906347294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039814 (A167614 (n + 1)).toNat)

end

end A341588.P5819846601906347294

/-! ## A341588.P293001024836693356

`lcm(A039814(A167614(n+1)), A309873(n+1))`
-/

namespace A341588.P293001024836693356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039814 (A167614 (n + 1)).toNat) (A309873 (n + 1))

end

end A341588.P293001024836693356

/-! ## A341588.P6147061448681043942

`A325872(A167614(n+2))/A008683(A225821(n²+1))`
-/

namespace A341588.P6147061448681043942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325872 (A167614 (n + 2)).toNat : ℚ) / (A008683 (A225821 (n ^ 2 + 1)).toNat : ℚ)

end

end A341588.P6147061448681043942

/-!
# A341589: a(n) = Sum_{k=n..2*n} |Stirling1(2*n, k) * Stirling1(k, n)|.

The programs for A341589, there is no canonical definition to state claims against.
-/

/-! ## A341589.P8579521015732847533

`abs(A325872(A046092(n)))`
-/

namespace A341589.P8579521015732847533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A046092 n).toNat|

end

end A341589.P8579521015732847533

/-! ## A341589.P4771376533553405822

`abs(A325872(A008586(∑[n])))`
-/

namespace A341589.P4771376533553405822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A341589.P4771376533553405822

/-! ## A341589.P15742764046449613474

`abs(A325872(2*A002378(n)))`
-/

namespace A341589.P15742764046449613474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (2 * A002378 n).toNat|

end

end A341589.P15742764046449613474

/-! ## A341589.P5546643351318561622

`A033999(n)*A325872(A046092(n))`
-/

namespace A341589.P5546643351318561622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A325872 (A046092 n).toNat

end

end A341589.P5546643351318561622

/-! ## A341589.P1577692801826602009

`abs(A325872(A002378(n)+A002378(n)))`
-/

namespace A341589.P1577692801826602009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A002378 n + A002378 n).toNat|

end

end A341589.P1577692801826602009

/-!
# A341590: a(n) = (Sum_{j=1..3} StirlingS1(3,j)*(2^j-1)^n)/3!.

The programs for A341590, the canonical program `A341590.P1866395333456685937` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341590 has offset 0).

The definition of A341590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341590.P1866395333456685937

`(2-3^(1+n)+7^n)/6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341590

/-- `(2-3^(1+n)+7^n)/6` -/
def P1866395333456685937.Spec : Prop :=
  ∀ n, P1866395333456685937.a n = (A341590 n : ℚ)

end A341590

/-! ## A341590.P7882674630580341884

`2*A346796(round(sqrt(n²+1)))`
-/

namespace A341590.P7882674630580341884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346796 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A341590.P7882674630580341884

namespace A341590

/-- `2*A346796(round(sqrt(n²+1)))` -/
def P7882674630580341884.Spec : Prop :=
  ∀ n, P7882674630580341884.a n = A341590 n

end A341590

/-! ## A341590.P4132786223218661692

`∑[A190541(log2(ceil(2^(n-1))))]`
-/

namespace A341590.P4132786223218661692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190541 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341590.P4132786223218661692

namespace A341590

/-- `∑[A190541(log2(ceil(2^(n-1))))]` -/
def P4132786223218661692.Spec : Prop :=
  ∀ n, P4132786223218661692.a n = A341590 n

end A341590

/-! ## A341590.P2391269694433756022

`abs(∑[floor(7^(n-1))]-A003462(n))`
-/

namespace A341590.P2391269694433756022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A003462 n|

end

end A341590.P2391269694433756022

namespace A341590

/-- `abs(∑[floor(7^(n-1))]-A003462(n))` -/
def P2391269694433756022.Spec : Prop :=
  ∀ n, P2391269694433756022.a n = A341590 n

end A341590

/-! ## A341590.P6514764945418191651

`A023000(n)-A003462(n)`
-/

namespace A341590.P6514764945418191651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A003462 n

end

end A341590.P6514764945418191651

namespace A341590

/-- `A023000(n)-A003462(n)` -/
def P6514764945418191651.Spec : Prop :=
  ∀ n, P6514764945418191651.a n = A341590 n

end A341590

/-! ## A341590.P14857450280859637729

`A083076(n)-A081336(n)`
-/

namespace A341590.P14857450280859637729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n - A081336 n

end

end A341590.P14857450280859637729

namespace A341590

/-- `A083076(n)-A081336(n)` -/
def P14857450280859637729.Spec : Prop :=
  ∀ n, P14857450280859637729.a n = A341590 n

end A341590

/-!
# A341591: Number of superior prime divisors of n.

The programs for A341591, the canonical program `A341591.P13420993346828835362` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341591 has offset 1).

The definition of A341591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341591.P5447744157923137956

`∑{p}[n+1, ceil(acot(#²-n))]`
-/

namespace A341591.P5447744157923137956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot ((p ^ 2 : ℤ) - (n : ℤ) : ℝ)⌉

end

end A341591.P5447744157923137956

namespace A341591

/-- `∑{p}[n+1, ceil(acot(#²-n))]` -/
def P5447744157923137956.Spec : Prop :=
  ∀ n, P5447744157923137956.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P6291538987845616769

`∑{p}[n+1, ceil((#-sqrt(n))/n)]`
-/

namespace A341591.P6291538987845616769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈((p : ℝ) - Real.sqrt (n : ℝ)) / (n : ℝ)⌉

end

end A341591.P6291538987845616769

namespace A341591

/-- `∑{p}[n+1, ceil((#-sqrt(n))/n)]` -/
def P6291538987845616769.Spec : Prop :=
  ∀ n, P6291538987845616769.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P13420993346828835362

`floor(∑{p}[n+1, n%#²/n])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341591

/-- `floor(∑{p}[n+1, n%#²/n])` -/
def P13420993346828835362.Spec : Prop :=
  ∀ n, P13420993346828835362.a n = A341591 (n + 1)

theorem P13420993346828835362.correct : P13420993346828835362.Spec := by
  intro n
  simp only [A341591, Nat.add_sub_cancel]

end A341591

/-! ## A341591.P13465823035213464356

`floor(acot(∏{p}[n+1, n-#²]))²`
-/

namespace A341591.P13465823035213464356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - (p ^ 2 : ℤ)) : ℤ) : ℝ)⌋ ^ 2

end

end A341591.P13465823035213464356

namespace A341591

/-- `floor(acot(∏{p}[n+1, n-#²]))²` -/
def P13465823035213464356.Spec : Prop :=
  ∀ n, P13465823035213464356.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P18298298500464620352

`∑{e}[A097975(n+1), #]`
-/

namespace A341591.P18298298500464620352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A341591.P18298298500464620352

namespace A341591

/-- `∑{e}[A097975(n+1), #]` -/
def P18298298500464620352.Spec : Prop :=
  ∀ n, (P18298298500464620352.a n : ℤ) = A341591 (n + 1)

end A341591

/-! ## A341591.P7904201545580560617

`char[(n+1)%A006530(n+2)²]`
-/

namespace A341591.P7904201545580560617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (n + 2) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341591.P7904201545580560617

namespace A341591

/-- `char[(n+1)%A006530(n+2)²]` -/
def P7904201545580560617.Spec : Prop :=
  ∀ n, (P7904201545580560617.a n : ℤ) = A341591 (n + 1)

end A341591

/-! ## A341591.P5960338096389535779

`A010051(A033677(n+1))`
-/

namespace A341591.P5960338096389535779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033677 (n + 1)).toNat

end

end A341591.P5960338096389535779

namespace A341591

/-- `A010051(A033677(n+1))` -/
def P5960338096389535779.Spec : Prop :=
  ∀ n, P5960338096389535779.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P6705688799210742444

`A010051(A116548(n+1))`
-/

namespace A341591.P6705688799210742444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A116548 (n + 1)).toNat

end

end A341591.P6705688799210742444

namespace A341591

/-- `A010051(A116548(n+1))` -/
def P6705688799210742444.Spec : Prop :=
  ∀ n, P6705688799210742444.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P8571220768999497146

`A064911(2*A033677(n+1))`
-/

namespace A341591.P8571220768999497146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A033677 (n + 1)).toNat

end

end A341591.P8571220768999497146

namespace A341591

/-- `A064911(2*A033677(n+1))` -/
def P8571220768999497146.Spec : Prop :=
  ∀ n, P8571220768999497146.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P9790833375956459353

`A097975(n+1)/A327667(n)`
-/

namespace A341591.P9790833375956459353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A327667 n : ℚ)

end

end A341591.P9790833375956459353

namespace A341591

/-- `A097975(n+1)/A327667(n)` -/
def P9790833375956459353.Spec : Prop :=
  ∀ n, P9790833375956459353.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P17622788130138126532

`A001221(n+1)-A333806(n+1)`
-/

namespace A341591.P17622788130138126532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A333806 (n + 1)

end

end A341591.P17622788130138126532

namespace A341591

/-- `A001221(n+1)-A333806(n+1)` -/
def P17622788130138126532.Spec : Prop :=
  ∀ n, P17622788130138126532.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P1397672483795677774

`A010051((n+1)/A033676(n+1))`
-/

namespace A341591.P1397672483795677774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A033676 (n + 1) : ℚ))).toNat

end

end A341591.P1397672483795677774

namespace A341591

/-- `A010051((n+1)/A033676(n+1))` -/
def P1397672483795677774.Spec : Prop :=
  ∀ n, P1397672483795677774.a n = A341591 (n + 1)

end A341591

/-! ## A341591.P16152068027829887508

`A097975(n+1)/A006530(n+1)`
-/

namespace A341591.P16152068027829887508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A341591.P16152068027829887508

namespace A341591

/-- `A097975(n+1)/A006530(n+1)` -/
def P16152068027829887508.Spec : Prop :=
  ∀ n, P16152068027829887508.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P14187092825104285799

`A097975(n+1)/A033677(n+1)`
-/

namespace A341591.P14187092825104285799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

end

end A341591.P14187092825104285799

namespace A341591

/-- `A097975(n+1)/A033677(n+1)` -/
def P14187092825104285799.Spec : Prop :=
  ∀ n, P14187092825104285799.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P6148580538986089850

`A097975(n+1)/A072505(n+1)`
-/

namespace A341591.P6148580538986089850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A072505 (n + 1) : ℚ)

end

end A341591.P6148580538986089850

namespace A341591

/-- `A097975(n+1)/A072505(n+1)` -/
def P6148580538986089850.Spec : Prop :=
  ∀ n, P6148580538986089850.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P12272337276288863804

`A097975(n+1)/A088387(n+1)`
-/

namespace A341591.P12272337276288863804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A088387 (n + 1) : ℚ)

end

end A341591.P12272337276288863804

namespace A341591

/-- `A097975(n+1)/A088387(n+1)` -/
def P12272337276288863804.Spec : Prop :=
  ∀ n, P12272337276288863804.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P3633114661944622691

`A097975(n+1)/A111089(n+1)`
-/

namespace A341591.P3633114661944622691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A111089 (n + 1) : ℚ)

end

end A341591.P3633114661944622691

namespace A341591

/-- `A097975(n+1)/A111089(n+1)` -/
def P3633114661944622691.Spec : Prop :=
  ∀ n, P3633114661944622691.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P4597904260305549619

`A097975(n+1)/A116548(n+1)`
-/

namespace A341591.P4597904260305549619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A116548 (n + 1) : ℚ)

end

end A341591.P4597904260305549619

namespace A341591

/-- `A097975(n+1)/A116548(n+1)` -/
def P4597904260305549619.Spec : Prop :=
  ∀ n, P4597904260305549619.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P13813311322021524554

`A097975(n+1)/A256267(n+1)`
-/

namespace A341591.P13813311322021524554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A256267 (n + 1) : ℚ)

end

end A341591.P13813311322021524554

namespace A341591

/-- `A097975(n+1)/A256267(n+1)` -/
def P13813311322021524554.Spec : Prop :=
  ∀ n, P13813311322021524554.a n = (A341591 (n + 1) : ℚ)

end A341591

/-! ## A341591.P5389372777021121582

`A097975(n+1)/A284695(n+1)`
-/

namespace A341591.P5389372777021121582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097975 (n + 1) : ℚ) / (A284695 (n + 1) : ℚ)

end

end A341591.P5389372777021121582

namespace A341591

/-- `A097975(n+1)/A284695(n+1)` -/
def P5389372777021121582.Spec : Prop :=
  ∀ n, P5389372777021121582.a n = (A341591 (n + 1) : ℚ)

end A341591

/-!
# A341592: Number of squarefree superior divisors of n.

The programs for A341592, there is no canonical definition to state claims against.
-/

/-! ## A341592.P2598134298280857956

`A341595(n+1)+char[∏{p}[n, #²]-1]`
-/

namespace A341592.P2598134298280857956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341592.P2598134298280857956

/-! ## A341592.P16647590527770817617

`A341595(n+1)+A227291(n+1)`
-/

namespace A341592.P16647590527770817617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (n + 1) + A227291 (n + 1)

end

end A341592.P16647590527770817617

/-! ## A341592.P15390893242849869709

`A034444(n+1)-A341596(n+1)`
-/

namespace A341592.P15390893242849869709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A341596 (n + 1)

end

end A341592.P15390893242849869709

/-! ## A341592.P15601705273481739297

`gcd(A271102(n+1), A341595(n+1))`
-/

namespace A341592.P15601705273481739297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271102 (n + 1)) (A341595 (n + 1))

end

end A341592.P15601705273481739297

/-! ## A341592.P7471285050478042907

`A000005(∏{p}[n+1, #])-A341596(n+1)`
-/

namespace A341592.P7471285050478042907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A341596 (n + 1)

end

end A341592.P7471285050478042907

/-! ## A341592.P5893950777203403180

`A000079(∑{p}[n+1, gcd(n, #)])-A341596(n+1)`
-/

namespace A341592.P5893950777203403180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) - A341596 (n + 1)

end

end A341592.P5893950777203403180

/-! ## A341592.P14777932123746807068

`A000005(A007947(n+1))-A341596(n+1)`
-/

namespace A341592.P14777932123746807068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - A341596 (n + 1)

end

end A341592.P14777932123746807068

/-! ## A341592.P238159331177939731

`A000005(A338224(n+1))-A341596(n+1)`
-/

namespace A341592.P238159331177939731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A338224 (n + 1)).toNat - A341596 (n + 1)

end

end A341592.P238159331177939731

/-! ## A341592.P5026301995640029850

`A333749(n+1)+A341595(n+1)-A341596(n+1)`
-/

namespace A341592.P5026301995640029850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (n + 1) + (A341595 (n + 1) - A341596 (n + 1))

end

end A341592.P5026301995640029850

/-!
# A341593: Number of superior prime-power divisors of n.

The programs for A341593, the canonical program `A341593.P8227184771900020403` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341593 has offset 1).

The definition of A341593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341593.P2868877710206576143

`∑{e}[n+1, #]-A341677(n+1)`
-/

namespace A341593.P2868877710206576143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A341677 (n + 1)

end

end A341593.P2868877710206576143

namespace A341593

/-- `∑{e}[n+1, #]-A341677(n+1)` -/
def P2868877710206576143.Spec : Prop :=
  ∀ n, P2868877710206576143.a n = A341593 (n + 1)

theorem P2868877710206576143.correct : P2868877710206576143.Spec := by
  intro n
  simp only [A341593, Nat.add_sub_cancel, A341593.P2868877710206576143.f1, A341593.P2868877710206576143.a, A341593.P8227184771900020403.f1, A341593.P8227184771900020403.f2, A341593.P8227184771900020403.a, A333750, A333750.P13112265574583452252.f1, A333750.P13112265574583452252.a, A341677, A341677.P7034296537446804868.f1, A341677.P7034296537446804868.a, A072504, A072504.P15978785907571623922.a, A000194, A000194.P3625933274776871084.a, A003418, A003418.P6976248655893080794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341593

/-! ## A341593.P8227184771900020403

`∑{e}[n+1, #]-A333750(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341593

/-- `∑{e}[n+1, #]-A333750(gcd(n+1, ∏{p}[n+1, (n+1)/#]))` -/
def P8227184771900020403.Spec : Prop :=
  ∀ n, P8227184771900020403.a n = A341593 (n + 1)

theorem P8227184771900020403.correct : P8227184771900020403.Spec := by
  intro n
  simp only [A341593, Nat.add_sub_cancel]

end A341593

/-! ## A341593.P6605200777872317094

`Δ[A022559(n)]-A341677(n+1)`
-/

namespace A341593.P6605200777872317094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341677 (n + 1)

end

end A341593.P6605200777872317094

namespace A341593

/-- `Δ[A022559(n)]-A341677(n+1)` -/
def P6605200777872317094.Spec : Prop :=
  ∀ n, P6605200777872317094.a n = A341593 (n + 1)

end A341593

/-! ## A341593.P1986923801781877773

`A001222(n+1)-A341677(n+1)`
-/

namespace A341593.P1986923801781877773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A341677 (n + 1)

end

end A341593.P1986923801781877773

namespace A341593

/-- `A001222(n+1)-A341677(n+1)` -/
def P1986923801781877773.Spec : Prop :=
  ∀ n, P1986923801781877773.a n = A341593 (n + 1)

end A341593

/-! ## A341593.P8839225833347053762

`log2(A061142(n+1))-A341677(n+1)`
-/

namespace A341593.P8839225833347053762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A341677 (n + 1) : ℝ)

end

end A341593.P8839225833347053762

namespace A341593

/-- `log2(A061142(n+1))-A341677(n+1)` -/
def P8839225833347053762.Spec : Prop :=
  ∀ n, P8839225833347053762.a n = (A341593 (n + 1) : ℝ)

end A341593

/-! ## A341593.P10129141190657554679

`∑{d}[n+1, A069513(#)]-A341677(n+1)`
-/

namespace A341593.P10129141190657554679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069513 d - A341677 (n + 1)

end

end A341593.P10129141190657554679

namespace A341593

/-- `∑{d}[n+1, A069513(#)]-A341677(n+1)` -/
def P10129141190657554679.Spec : Prop :=
  ∀ n, P10129141190657554679.a n = A341593 (n + 1)

end A341593

/-! ## A341593.P1106774237386889933

`A000005(∏{e}[n+1, 2^#])-1-A341677(n+1)`
-/

namespace A341593.P1106774237386889933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1 - A341677 (n + 1)

end

end A341593.P1106774237386889933

namespace A341593

/-- `A000005(∏{e}[n+1, 2^#])-1-A341677(n+1)` -/
def P1106774237386889933.Spec : Prop :=
  ∀ n, P1106774237386889933.a n = A341593 (n + 1)

end A341593

/-! ## A341593.P9462537997255741461

`∑{d}[n+1, (n+2)%A014963(#)]-A341677(n+1)`
-/

namespace A341593.P9462537997255741461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (n + 2 : ℤ) (A014963 d) - A341677 (n + 1)

end

end A341593.P9462537997255741461

namespace A341593

/-- `∑{d}[n+1, (n+2)%A014963(#)]-A341677(n+1)` -/
def P9462537997255741461.Spec : Prop :=
  ∀ n, P9462537997255741461.a n = A341593 (n + 1)

end A341593

/-! ## A341593.P1600588445372442701

`A341644(A140580(n+1))`
-/

namespace A341593.P1600588445372442701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A140580 (n + 1)).toNat

end

end A341593.P1600588445372442701

namespace A341593

/-- `A341644(A140580(n+1))` -/
def P1600588445372442701.Spec : Prop :=
  ∀ n, P1600588445372442701.a n = A341593 (n + 1)

end A341593

/-!
# A341594: Number of strictly superior odd divisors of n.

The programs for A341594, there is no canonical definition to state claims against.
-/

/-! ## A341594.P16768881458827342474

`A001227(n+1)-A069288(n+1)`
-/

namespace A341594.P16768881458827342474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A069288 (n + 1)

end

end A341594.P16768881458827342474

/-! ## A341594.P13969762658771477774

`(A056924(n+1)-A348951(n+1))/2`
-/

namespace A341594.P13969762658771477774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056924 (n + 1) - A348951 (n + 1) : ℚ) / 2

end

end A341594.P13969762658771477774

/-! ## A341594.P12980752367495246321

`A000005(A000265(n+1))-A069288(n+1)`
-/

namespace A341594.P12980752367495246321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A069288 (n + 1)

end

end A341594.P12980752367495246321

/-!
# A341595: Number of strictly superior squarefree divisors of n.

The programs for A341595, there is no canonical definition to state claims against.
-/

/-! ## A341595.P11792360450948136852

`(1-Δ[floor(sqrt(n))])*A341592(n+1)`
-/

namespace A341595.P11792360450948136852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A341592 (n + 1)

end

end A341595.P11792360450948136852

/-! ## A341595.P5836905990593429998

`∏{p}[n+1, ceil(atan(#))]-A333749(n+1)`
-/

namespace A341595.P5836905990593429998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉ - A333749 (n + 1)

end

end A341595.P5836905990593429998

/-! ## A341595.P8279054906905492602

`A341592(n+1)%A034867(n)`
-/

namespace A341595.P8279054906905492602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341592 (n + 1)) (A034867 n)

end

end A341595.P8279054906905492602

/-! ## A341595.P18020887797538050178

`log2(A275437(n)^A341592(n+1))`
-/

namespace A341595.P18020887797538050178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A275437 n : ℚ) ^ (A341592 (n + 1) : ℤ) : ℝ)

end

end A341595.P18020887797538050178

/-! ## A341595.P5205400034239714317

`A034444(n+1)-A333749(n+1)`
-/

namespace A341595.P5205400034239714317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A333749 (n + 1)

end

end A341595.P5205400034239714317

/-! ## A341595.P2043881970333627882

`A341592(n+1)-A227291(n+1)`
-/

namespace A341595.P2043881970333627882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341592 (n + 1) - A227291 (n + 1)

end

end A341595.P2043881970333627882

/-! ## A341595.P18027035179065354580

`lcm(A068717(n+1), A341592(n+1))`
-/

namespace A341595.P18027035179065354580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068717 (n + 1)) (A341592 (n + 1))

end

end A341595.P18027035179065354580

/-! ## A341595.P8013654026109340913

`2^A001221(n+1)-A333749(n+1)`
-/

namespace A341595.P8013654026109340913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A333749 (n + 1) : ℚ)

end

end A341595.P8013654026109340913

/-! ## A341595.P14245123348049986812

`A000005(∏{p}[n+1, #])-A333749(n+1)`
-/

namespace A341595.P14245123348049986812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A333749 (n + 1)

end

end A341595.P14245123348049986812

/-! ## A341595.P15471540099091914703

`∑{d}[n+1, abs(A008683(#))]-A333749(n+1)`
-/

namespace A341595.P15471540099091914703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A008683 d| - A333749 (n + 1)

end

end A341595.P15471540099091914703

/-! ## A341595.P11800347835395825315

`A333749((n+1)²)-A333749(n+1)`
-/

namespace A341595.P11800347835395825315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 ((n + 1) ^ 2) - A333749 (n + 1)

end

end A341595.P11800347835395825315

/-!
# A341596: Number of strictly inferior squarefree divisors of n.

The programs for A341596, there is no canonical definition to state claims against.
-/

/-! ## A341596.P12430029852016361572

`A333749(n+1)-char[∏{p}[n, #²]-1]`
-/

namespace A341596.P12430029852016361572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341596.P12430029852016361572

/-! ## A341596.P8859836618700663290

`A034444(n+1)-A341592(n+1)`
-/

namespace A341596.P8859836618700663290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A341592 (n + 1)

end

end A341596.P8859836618700663290

/-! ## A341596.P8421413230289377454

`A333749(n+1)-A227291(n+1)`
-/

namespace A341596.P8421413230289377454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (n + 1) - A227291 (n + 1)

end

end A341596.P8421413230289377454

/-! ## A341596.P9576889793008519877

`abs(A158522(n+1))-A341592(n+1)`
-/

namespace A341596.P9576889793008519877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)| - A341592 (n + 1)

end

end A341596.P9576889793008519877

/-! ## A341596.P14632032578246159880

`A333749(n+1)-abs(A271102(n+1))`
-/

namespace A341596.P14632032578246159880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (n + 1) - |A271102 (n + 1)|

end

end A341596.P14632032578246159880

/-! ## A341596.P1775792413457886784

`2^A001221(n+1)-A341592(n+1)`
-/

namespace A341596.P1775792413457886784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A341592 (n + 1) : ℚ)

end

end A341596.P1775792413457886784

/-! ## A341596.P3718028327006448489

`A000005(∏{p}[n+1, #])-A341592(n+1)`
-/

namespace A341596.P3718028327006448489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A341592 (n + 1)

end

end A341596.P3718028327006448489

/-! ## A341596.P7333648637624401543

`A000005(A007947(n+1))-A341592(n+1)`
-/

namespace A341596.P7333648637624401543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - A341592 (n + 1)

end

end A341596.P7333648637624401543

/-!
# A341597: a(n) = A144066(n+3,3).

The programs for A341597, the canonical program `A341597.P2854536876713895795` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341597 has offset 0).

The definition of A341597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341597.P2854536876713895795

`(A341209(2*n)+A000217(2*n))*A000292(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341597

/-- `(A341209(2*n)+A000217(2*n))*A000292(n+1)` -/
def P2854536876713895795.Spec : Prop :=
  ∀ n, P2854536876713895795.a n = A341597 n

theorem P2854536876713895795.correct : P2854536876713895795.Spec := by
  intro n
  simp only [A341597]

end A341597

/-! ## A341597.P5048553335854948963

`∑[∑[n+1]]*A005286(2*n)`
-/

namespace A341597.P5048553335854948963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005286 (2 * n)

end

end A341597.P5048553335854948963

namespace A341597

/-- `∑[∑[n+1]]*A005286(2*n)` -/
def P5048553335854948963.Spec : Prop :=
  ∀ n, P5048553335854948963.a n = A341597 n

end A341597

/-! ## A341597.P17070004923594130565

`(A005586(2*n)+1)*A000292(n+1)`
-/

namespace A341597.P17070004923594130565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005586 (2 * n) + 1) * A000292 (n + 1)

end

end A341597.P17070004923594130565

namespace A341597

/-- `(A005586(2*n)+1)*A000292(n+1)` -/
def P17070004923594130565.Spec : Prop :=
  ∀ n, P17070004923594130565.a n = A341597 n

end A341597

/-! ## A341597.P6448689038120481580

`(A028387(2*n)+A000292(2*n))*A000292(n+1)`
-/

namespace A341597.P6448689038120481580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028387 (2 * n) + A000292 (2 * n)) * A000292 (n + 1)

end

end A341597.P6448689038120481580

namespace A341597

/-- `(A028387(2*n)+A000292(2*n))*A000292(n+1)` -/
def P6448689038120481580.Spec : Prop :=
  ∀ n, P6448689038120481580.a n = A341597 n

end A341597

/-! ## A341597.P10122562304387850569

`(A000292(2*n+1)+A000096(2*n))*A000292(n+1)`
-/

namespace A341597.P10122562304387850569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (2 * n + 1) + A000096 (2 * n)) * A000292 (n + 1)

end

end A341597.P10122562304387850569

namespace A341597

/-- `(A000292(2*n+1)+A000096(2*n))*A000292(n+1)` -/
def P10122562304387850569.Spec : Prop :=
  ∀ n, P10122562304387850569.a n = A341597 n

end A341597

/-! ## A341597.P15959653334553434473

`A144066(∑[n+3]+n+3)`
-/

namespace A341597.P15959653334553434473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144066 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A341597.P15959653334553434473

namespace A341597

/-- `A144066(∑[n+3]+n+3)` -/
def P15959653334553434473.Spec : Prop :=
  ∀ n, P15959653334553434473.a n = A341597 n

end A341597

/-!
# A341598: a(n) = Sum_{k=n..2*n} |Stirling1(2*n, k)| * Stirling1(k, n).

The programs for A341598, there is no canonical definition to state claims against.
-/

/-! ## A341598.P2184473625781639416

`A079642(A004277(n²))`
-/

namespace A341598.P2184473625781639416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079642 (A004277 (n ^ 2)).toNat

end

end A341598.P2184473625781639416

/-! ## A341598.P9955827027049981971

`A325873(∑[4*n])`
-/

namespace A341598.P9955827027049981971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341598.P9955827027049981971

