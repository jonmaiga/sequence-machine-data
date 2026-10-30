import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A399000: The binomial matrix of the Catalan numbers, square array read by ascending antidiagonals.

The programs for A399000, there is no canonical definition to state claims against.
-/

/-! ## A399000.P15962989824052497317

`A265531(A398993(n))`
-/

namespace A399000.P15962989824052497317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265531 (A398993 n).toNat

end

end A399000.P15962989824052497317

/-! ## A399000.P642039199011744743

`A398993(n)-A165878(A304206(n+1))`
-/

namespace A399000.P642039199011744743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398993 n - A165878 (A304206 (n + 1)).toNat

end

end A399000.P642039199011744743

/-!
# A399004: Number of transitive relations R on an n-set such that each element is involved in at most 2 ordered pairs of R, where a loop (x,x) counts once.

The programs for A399004, there is no canonical definition to state claims against.
-/

/-! ## A399004.P15735979837988663543

`A248609((n+1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A399004.P15735979837988663543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A248609 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A399004.P15735979837988663543

/-!
# A399007: Number of inequivalent ways to place zero or more non-attacking rooks on an n X n board up to rotations and reflections of the board.

The programs for A399007, there is no canonical definition to state claims against.
-/

/-! ## A399007.P13308426181538062367

`A088044(A022568(n))`
-/

namespace A399007.P13308426181538062367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 (A022568 n).toNat

end

end A399007.P13308426181538062367

/-! ## A399007.P7099521507268834027

`eq[A061288(n+1), A072793(n)]`
-/

namespace A399007.P7099521507268834027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399007.P7099521507268834027

/-!
# A399009: Number of inequivalent ways to place zero or more non-attacking rooks on an n X n board up to rectangular symmetries of the board.

The programs for A399009, there is no canonical definition to state claims against.
-/

/-! ## A399009.P2494028919486172890

`∑[A267458(A000849(n)^A025155(3*(n+1)))]`
-/

namespace A399009.P2494028919486172890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (SequenceMachineLib.roundAway ((A000849 n : ℚ) ^ (A025155 (3 * (n + 1)) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399009.P2494028919486172890

/-! ## A399009.P5111876962918264230

`∑[A267458(A000849(n)^A245794(3*n+1))]`
-/

namespace A399009.P5111876962918264230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (SequenceMachineLib.roundAway ((A000849 n : ℚ) ^ (A245794 (3 * n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399009.P5111876962918264230

/-!
# A399011: Number of inequivalent ways to place zero or more non-attacking rooks on an n X n board up to rotations of the board.

The programs for A399011, there is no canonical definition to state claims against.
-/

/-! ## A399011.P1019575387919834600

`A346523(A125028(n+2))`
-/

namespace A399011.P1019575387919834600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346523 (A125028 (n + 2)).toNat

end

end A399011.P1019575387919834600

/-!
# A399013: Number of simple connected graphs on n unlabeled vertices with feedback vertex set number 1 and without endpoints.

The programs for A399013, there is no canonical definition to state claims against.
-/

/-! ## A399013.P10371614144973982067

`A399012(∑[n]+2)`
-/

namespace A399013.P10371614144973982067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399012 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A399013.P10371614144973982067

/-! ## A399013.P654104826433793232

`A205805(A217312(n))`
-/

namespace A399013.P654104826433793232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (A217312 n).toNat

end

end A399013.P654104826433793232

/-! ## A399013.P6078729744111093195

`A334274(A036590(n+1))`
-/

namespace A399013.P6078729744111093195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (A036590 (n + 1)).toNat

end

end A399013.P6078729744111093195

/-! ## A399013.P8807119849877550120

`A334274(A247139(n+1))`
-/

namespace A399013.P8807119849877550120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (A247139 (n + 1)).toNat

end

end A399013.P8807119849877550120

/-!
# A399016: Numbers that can be obtained by concatenating the decimal representations of x, y, and x/y for x >= 1 and y a divisor of x.

The programs for A399016, there is no canonical definition to state claims against.
-/

/-! ## A399016.P3578908351924943236

`∩[A343760(n+1), A354081(n+1)]`
-/

namespace A399016.P3578908351924943236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399016.P3578908351924943236

/-!
# A399018: Number of solid unit triangles in the hexagonal cross-section of the first iteration of the generalized Menger sponge with subdivision 2n+1, cut through the center perpendicular to a space diagonal.

The programs for A399018, the canonical program `A399018.P4841991023451713736` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399018 has offset 0).

The definition of A399018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399018.P4841991023451713736

`ogf((6+42x+54x^2+78x^3+12x^4)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399018

/-- `ogf((6+42x+54x^2+78x^3+12x^4)/(1-3x^2+3x^4-x^6))` -/
def P4841991023451713736.Spec : Prop :=
  ∀ n, P4841991023451713736.a n = A399018 n

theorem P4841991023451713736.correct : P4841991023451713736.Spec := by
  intro n
  simp only [A399018]

end A399018

/-! ## A399018.P1895736030965902084

`3*(n+1)*(2-n*((-1)^n-4))`
-/

namespace A399018.P1895736030965902084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * (2 - (n : ℤ) * ((-1) ^ n - 4))

end

end A399018.P1895736030965902084

namespace A399018

/-- `3*(n+1)*(2-n*((-1)^n-4))` -/
def P1895736030965902084.Spec : Prop :=
  ∀ n, P1895736030965902084.a n = A399018 n

end A399018

/-! ## A399018.P1524797607164308234

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=6, a(1)=42, a(2)=72, a(3)=204, a(4)=210, a(5)=486`
-/

namespace A399018.P1524797607164308234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 42, 72, 204, 210, 486] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A399018.P1524797607164308234

namespace A399018

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P1524797607164308234.Spec : Prop :=
  ∀ n, P1524797607164308234.a n = A399018 n

end A399018

/-! ## A399018.P3984988899793759490

`6*(2*n+1)²-A399019(n)`
-/

namespace A399018.P3984988899793759490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (2 * n + 1) ^ 2 : ℤ) - A399019 n

end

end A399018.P3984988899793759490

namespace A399018

/-- `6*(2*n+1)²-A399019(n)` -/
def P3984988899793759490.Spec : Prop :=
  ∀ n, P3984988899793759490.a n = A399018 n

end A399018

/-!
# A399019: Number of empty unit triangles in the hexagonal cross-section of the first iteration of the generalized Menger sponge with subdivision 2n+1, cut through the center perpendicular to a space diagonal.

The programs for A399019, the canonical program `A399019.P10843594979958510368` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399019 has offset 0).

The definition of A399019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399019.P10843594979958510368

`ogf((12x+78x^2+54x^3+42x^4+6x^5)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399019

/-- `ogf((12x+78x^2+54x^3+42x^4+6x^5)/(1-3x^2+3x^4-x^6))` -/
def P10843594979958510368.Spec : Prop :=
  ∀ n, P10843594979958510368.a n = A399019 n

theorem P10843594979958510368.correct : P10843594979958510368.Spec := by
  intro n
  simp only [A399019]

end A399019

/-! ## A399019.P6439985251976474839

`3*n*(4*n+(-1)^n*(n+1)+2)`
-/

namespace A399019.P6439985251976474839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * ((4 * n : ℤ) + (-1) ^ n * (n + 1 : ℤ) + 2)

end

end A399019.P6439985251976474839

namespace A399019

/-- `3*n*(4*n+(-1)^n*(n+1)+2)` -/
def P6439985251976474839.Spec : Prop :=
  ∀ n, P6439985251976474839.a n = A399019 n

end A399019

/-! ## A399019.P13198651488001073290

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=12, a(2)=78, a(3)=90, a(4)=276, a(5)=240`
-/

namespace A399019.P13198651488001073290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 78, 90, 276, 240] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A399019.P13198651488001073290

namespace A399019

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P13198651488001073290.Spec : Prop :=
  ∀ n, P13198651488001073290.a n = A399019 n

end A399019

/-! ## A399019.P9083012042344096810

`6*(2*n+1)²-A399018(n)`
-/

namespace A399019.P9083012042344096810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (2 * n + 1) ^ 2 : ℤ) - A399018 n

end

end A399019.P9083012042344096810

namespace A399019

/-- `6*(2*n+1)²-A399018(n)` -/
def P9083012042344096810.Spec : Prop :=
  ∀ n, P9083012042344096810.a n = A399019 n

end A399019

/-!
# A399020: Primes p such that (p#/2)^2 - 2 is prime, where p# is the primorial of p.

The programs for A399020, there is no canonical definition to state claims against.
-/

/-! ## A399020.P1058527842090755981

`A257572(A358083(n+1))`
-/

namespace A399020.P1058527842090755981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257572 (A358083 (n + 1)).toNat

end

end A399020.P1058527842090755981

/-! ## A399020.P12614048394211457809

`filter[A072742(n+1), A335617(#)]`
-/

namespace A399020.P12614048394211457809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335617 (f1 j).toNat = 1) n)

end

end A399020.P12614048394211457809

/-!
# A399022: Triangle T(n, k), n >= 0, k = 0..n, read by rows; the n-th row lists the earliest starting offsets of the n+1 distinct subwords of length n in the infinite Fibonacci word (A003849).

The programs for A399022, there is no canonical definition to state claims against.
-/

/-! ## A399022.P13120003451588053163

`A138033(A307393(n))`
-/

namespace A399022.P13120003451588053163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A307393 n).toNat

end

end A399022.P13120003451588053163

/-! ## A399022.P17466347782840155819

`A059939(A236433(n+1))`
-/

namespace A399022.P17466347782840155819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A236433 (n + 1)).toNat

end

end A399022.P17466347782840155819

/-! ## A399022.P154961709627911732

`A079979(A364349(3*n))+col(n)`
-/

namespace A399022.P154961709627911732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A364349 (3 * n)).toNat + (SequenceMachineLib.triCol n : ℤ)

end

end A399022.P154961709627911732

/-! ## A399022.P7664151436117644878

`val(A077775(n+3), A062289(n+1)+2)+col(n)`
-/

namespace A399022.P7664151436117644878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077775 (n + 3)).toNat (A062289 (n + 1) + 2).toNat + SequenceMachineLib.triCol n

end

end A399022.P7664151436117644878

/-! ## A399022.P14752352783024678384

`A343630(A273730(n))+A002262(n)`
-/

namespace A399022.P14752352783024678384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (A273730 n).toNat + A002262 n

end

end A399022.P14752352783024678384

/-!
# A399025: a(n) is the number of inequivalent ways of choosing 4 points on an n X n grid that form a square up to rotations.

The programs for A399025, the canonical program `A399025.P5372413828234583892` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399025 has offset 1).

The definition of A399025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399025.P5372413828234583892

`∑[∑[ceil((n/2)²)]]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399025

/-- `∑[∑[ceil((n/2)²)]]` -/
def P5372413828234583892.Spec : Prop :=
  ∀ n, P5372413828234583892.a n = A399025 (n + 1)

theorem P5372413828234583892.correct : P5372413828234583892.Spec := by
  intro n
  simp only [A399025, Nat.add_sub_cancel]

end A399025

/-! ## A399025.P9470248276578609894

`floor(∑[∑[∑[a(n-2)+1]]])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A399025.P9470248276578609894
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f3 =>
  f3 (n - 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399025.P9470248276578609894

namespace A399025

/-- `floor(∑[∑[∑[a(n-2)+1]]])` -/
def P9470248276578609894.Spec : Prop :=
  ∀ n, (P9470248276578609894.a n : ℤ) = A399025 (n + 1)

end A399025

/-! ## A399025.P9907623160686150360

`∑[a(n-1)+n-1]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A399025.P9907623160686150360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A399025.P9907623160686150360

namespace A399025

/-- `∑[a(n-1)+n-1]+a(n-2)` -/
def P9907623160686150360.Spec : Prop :=
  ∀ n, P9907623160686150360.a n = A399025 (n + 1)

end A399025

/-! ## A399025.P6642883446486150690

`a(n-1)+floor((n+1)*(2*n²+n+9)/24)` with `a(0)=0`
-/

namespace A399025.P6642883446486150690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊((n + 1) * (2 * n ^ 2 + n + 9) : ℚ) / 24⌋

end

end A399025.P6642883446486150690

namespace A399025

/-- `a(n-1)+floor((n+1)*(2*n²+n+9)/24)` -/
def P6642883446486150690.Spec : Prop :=
  ∀ n, P6642883446486150690.a n = A399025 (n + 1)

end A399025

/-! ## A399025.P2355789410709976219

`A004006(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A399025.P2355789410709976219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004006 n + a (n - 2)

end

end A399025.P2355789410709976219

namespace A399025

/-- `A004006(n)+a(n-2)` -/
def P2355789410709976219.Spec : Prop :=
  ∀ n, P2355789410709976219.a n = A399025 (n + 1)

end A399025

/-! ## A399025.P8834201828068124475

`A213850(n+1)-A079824(n+1)`
-/

namespace A399025.P8834201828068124475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) - A079824 (n + 1)

end

end A399025.P8834201828068124475

namespace A399025

/-- `A213850(n+1)-A079824(n+1)` -/
def P8834201828068124475.Spec : Prop :=
  ∀ n, P8834201828068124475.a n = A399025 (n + 1)

end A399025

/-! ## A399025.P14713096991998298661

`A002620(n+1)+A001752(n)-A000292(n+1)`
-/

namespace A399025.P14713096991998298661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + A001752 n - A000292 (n + 1)

end

end A399025.P14713096991998298661

namespace A399025

/-- `A002620(n+1)+A001752(n)-A000292(n+1)` -/
def P14713096991998298661.Spec : Prop :=
  ∀ n, P14713096991998298661.a n = A399025 (n + 1)

end A399025

/-! ## A399025.P4882677873903577691

`A001752(n)-A005232(2*n)`
-/

namespace A399025.P4882677873903577691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A005232 (2 * n)

end

end A399025.P4882677873903577691

namespace A399025

/-- `A001752(n)-A005232(2*n)` -/
def P4882677873903577691.Spec : Prop :=
  ∀ n, P4882677873903577691.a n = A399025 (n + 1)

end A399025

/-! ## A399025.P17137888391338119892

`A115269(2*n)-A115271(2*n)`
-/

namespace A399025.P17137888391338119892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115269 (2 * n) - A115271 (2 * n)

end

end A399025.P17137888391338119892

namespace A399025

/-- `A115269(2*n)-A115271(2*n)` -/
def P17137888391338119892.Spec : Prop :=
  ∀ n, P17137888391338119892.a n = A399025 (n + 1)

end A399025

/-!
# A399026: a(n) is the number of inequivalent ways of choosing 4 points on an n X n grid that form a square up to rotations and reflections.

The programs for A399026, there is no canonical definition to state claims against.
-/

/-! ## A399026.P156631098860428726

`∑[A341451(3*n+8)%A124533(2*(n+2))]`
-/

namespace A399026.P156631098860428726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341451 (3 * n + 8)) (A124533 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399026.P156631098860428726

/-!
# A399027: Expansion of e.g.f. exp(sinh(x) + sinh(x)^2).

The programs for A399027, there is no canonical definition to state claims against.
-/

/-! ## A399027.P17989656133834199732

`∑{#}[floor(n/2), A047974(n-2*#)*A136630(C(n+1, 2)+n-2*#)]`
-/

namespace A399027.P17989656133834199732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A047974 (n - 2 * k) * A136630 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (2 * k : ℤ))).toNat

end

end A399027.P17989656133834199732

/-! ## A399027.P15980307705083713982

`A087838(A007559(n))`
-/

namespace A399027.P15980307705083713982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (A007559 n).toNat

end

end A399027.P15980307705083713982

/-!
# A399029: Number of nonisomorphic asymmetric tournaments on n vertices.

The programs for A399029, there is no canonical definition to state claims against.
-/

/-! ## A399029.P20606543022304787

`A271506(A300913(n))`
-/

namespace A399029.P20606543022304787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271506 (A300913 n).toNat

end

end A399029.P20606543022304787

/-! ## A399029.P15318621284455445095

`A271506(A276027(n+1))`
-/

namespace A399029.P15318621284455445095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271506 (A276027 (n + 1)).toNat

end

end A399029.P15318621284455445095

/-!
# A399031: Least positive k such that some nontrivial proper divisor d of n satisfies d+k | n+k; 0 if no such k exists.

The programs for A399031, there is no canonical definition to state claims against.
-/

/-! ## A399031.P4960061660254158841

`A173348(n+3)%A000203(A217581(n+1))`
-/

namespace A399031.P4960061660254158841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173348 (n + 3)) (A000203 (A217581 (n + 1)).toNat)

end

end A399031.P4960061660254158841

/-! ## A399031.P6291918774602819933

`A353724(A161345(n+1))`
-/

namespace A399031.P6291918774602819933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353724 (A161345 (n + 1)).toNat

end

end A399031.P6291918774602819933

/-! ## A399031.P12534482876575036386

`A236456(A324886(n+1)-1)`
-/

namespace A399031.P12534482876575036386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (A324886 (n + 1) - 1).toNat

end

end A399031.P12534482876575036386

/-!
# A399033: a(n) is the number of marked noncrossing trees.

The programs for A399033, there is no canonical definition to state claims against.
-/

/-! ## A399033.P11813220609203239223

`or(A003987(n), A077610(A074118(n)))`
-/

namespace A399033.P11813220609203239223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003987 n) (A077610 (A074118 n).toNat)

end

end A399033.P11813220609203239223

/-!
# A399035: The unique sequence a(n) such that A000296(n) = a(n) + a(n+1).

The programs for A399035, the canonical program `A399035.P1234000300610669650` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399035 has offset 0).

The definition of A399035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399035.P1234000300610669650

`A000110(n-2)-2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399035

/-- `A000110(n-2)-2*a(n-1)-a(n-2)` -/
def P1234000300610669650.Spec : Prop :=
  ∀ n, P1234000300610669650.a n = A399035 n

theorem P1234000300610669650.correct : P1234000300610669650.Spec := by
  intro n
  simp only [A399035]

end A399035

/-! ## A399035.P15906448140775763636

`A000110(n-1)-a(n-1)-A000296(n)` with `a(0)=1`
-/

namespace A399035.P15906448140775763636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n - 1) - a (n - 1) - A000296 n

end

end A399035.P15906448140775763636

namespace A399035

/-- `A000110(n-1)-a(n-1)-A000296(n)` -/
def P15906448140775763636.Spec : Prop :=
  ∀ n, P15906448140775763636.a n = A399035 n

end A399035

/-! ## A399035.P4697640928491454493

`abs(A292935(n-1))-a(n-1)-A000296(n)` with `a(0)=1`
-/

namespace A399035.P4697640928491454493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A292935 (n - 1)| - a (n - 1) - A000296 n

end

end A399035.P4697640928491454493

namespace A399035

/-- `abs(A292935(n-1))-a(n-1)-A000296(n)` -/
def P4697640928491454493.Spec : Prop :=
  ∀ n, P4697640928491454493.a n = A399035 n

end A399035

/-! ## A399035.P8746548732295394785

`A000110(n-1)-a(n-1)-A106436(∑[n])` with `a(0)=1`
-/

namespace A399035.P8746548732295394785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n - 1) - a (n - 1) - A106436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399035.P8746548732295394785

namespace A399035

/-- `A000110(n-1)-a(n-1)-A106436(∑[n])` -/
def P8746548732295394785.Spec : Prop :=
  ∀ n, P8746548732295394785.a n = A399035 n

end A399035

/-! ## A399035.P3354590201236504283

`A000110(n-1)-a(n-1)-A124323(∑[n])` with `a(0)=1`
-/

namespace A399035.P3354590201236504283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n - 1) - a (n - 1) - A124323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399035.P3354590201236504283

namespace A399035

/-- `A000110(n-1)-a(n-1)-A124323(∑[n])` -/
def P3354590201236504283.Spec : Prop :=
  ∀ n, P3354590201236504283.a n = A399035 n

end A399035

/-! ## A399035.P11819842172030332028

`A000110(n-1)-a(n-1)-A261137(∑[n]+n)` with `a(0)=1`
-/

namespace A399035.P11819842172030332028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n - 1) - a (n - 1) - A261137 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A399035.P11819842172030332028

namespace A399035

/-- `A000110(n-1)-a(n-1)-A261137(∑[n]+n)` -/
def P11819842172030332028.Spec : Prop :=
  ∀ n, P11819842172030332028.a n = A399035 n

end A399035

/-! ## A399035.P10496323957134065103

`A000110(n-1)-a(n-1)-((-1)^n+A000110(n)-A087650(n))` with `a(0)=1`
-/

namespace A399035.P10496323957134065103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n - 1) - a (n - 1) - ((-1) ^ n + A000110 n - A087650 n)

end

end A399035.P10496323957134065103

namespace A399035

/-- `A000110(n-1)-a(n-1)-((-1)^n+A000110(n)-A087650(n))` -/
def P10496323957134065103.Spec : Prop :=
  ∀ n, P10496323957134065103.a n = A399035 n

end A399035

/-!
# A399036: Number of unlabeled reducible flow graphs with n nodes whose entry is a global source (in-degree 0, reaches every node), self-loops disallowed.

The programs for A399036, there is no canonical definition to state claims against.
-/

/-! ## A399036.P2760390677095535897

`A057027(n!²)`
-/

namespace A399036.P2760390677095535897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (Nat.factorial n ^ 2)

end

end A399036.P2760390677095535897

/-!
# A399040: Total number of connected components in all induced subgraphs of the n-ladder graph.

The programs for A399040, the canonical program `A399040.P4362929268690130338` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399040 has offset 1).

The definition of A399040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399040.P4362929268690130338

`ogf((3-7x)/(1-8x+16x^2))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399040

/-- `ogf((3-7x)/(1-8x+16x^2))` -/
def P4362929268690130338.Spec : Prop :=
  ∀ n, P4362929268690130338.a n = A399040 (n + 1)

theorem P4362929268690130338.correct : P4362929268690130338.Spec := by
  intro n
  simp only [A399040, Nat.add_sub_cancel]

end A399040

/-! ## A399040.P657060762930297200

`8*a(n-1)-16*a(n-2)` with `a(0)=3, a(1)=17`
-/

namespace A399040.P657060762930297200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2)

end

end A399040.P657060762930297200

namespace A399040

/-- `8*a(n-1)-16*a(n-2)` -/
def P657060762930297200.Spec : Prop :=
  ∀ n, P657060762930297200.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P9055500234916415747

`(n/4+n+3)*4^n`
-/

namespace A399040.P9055500234916415747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 4 + (n : ℚ) + 3) * (4 ^ n : ℚ)

end

end A399040.P9055500234916415747

namespace A399040

/-- `(n/4+n+3)*4^n` -/
def P9055500234916415747.Spec : Prop :=
  ∀ n, P9055500234916415747.a n = (A399040 (n + 1) : ℚ)

end A399040

/-! ## A399040.P2864152541127053719

`A269822(n+1)+A164346(n)`
-/

namespace A399040.P2864152541127053719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269822 (n + 1) + A164346 n

end

end A399040.P2864152541127053719

namespace A399040

/-- `A269822(n+1)+A164346(n)` -/
def P2864152541127053719.Spec : Prop :=
  ∀ n, P2864152541127053719.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P3100987341329997061

`A079028(n)+A045623(2*n+1)`
-/

namespace A399040.P3100987341329997061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079028 n + A045623 (2 * n + 1)

end

end A399040.P3100987341329997061

namespace A399040

/-- `A079028(n)+A045623(2*n+1)` -/
def P3100987341329997061.Spec : Prop :=
  ∀ n, P3100987341329997061.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P10232136816925268604

`A111297(2*n)+A045623(2*n+1)`
-/

namespace A399040.P10232136816925268604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (2 * n) + A045623 (2 * n + 1)

end

end A399040.P10232136816925268604

namespace A399040

/-- `A111297(2*n)+A045623(2*n+1)` -/
def P10232136816925268604.Spec : Prop :=
  ∀ n, P10232136816925268604.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P11893401556779163965

`A004171(n)+A002697(n+1)+A002697(n)`
-/

namespace A399040.P11893401556779163965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + A002697 (n + 1) + A002697 n

end

end A399040.P11893401556779163965

namespace A399040

/-- `A004171(n)+A002697(n+1)+A002697(n)` -/
def P11893401556779163965.Spec : Prop :=
  ∀ n, P11893401556779163965.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P10578616330241461703

`A087449(n+1)+A002697(n)-A007583(n)`
-/

namespace A399040.P10578616330241461703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087449 (n + 1) + A002697 n - A007583 n

end

end A399040.P10578616330241461703

namespace A399040

/-- `A087449(n+1)+A002697(n)-A007583(n)` -/
def P10578616330241461703.Spec : Prop :=
  ∀ n, P10578616330241461703.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P11150030758699793801

`A087449(n)+A079028(n+1)-A007583(n+1)`
-/

namespace A399040.P11150030758699793801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087449 n + A079028 (n + 1) - A007583 (n + 1)

end

end A399040.P11150030758699793801

namespace A399040

/-- `A087449(n)+A079028(n+1)-A007583(n+1)` -/
def P11150030758699793801.Spec : Prop :=
  ∀ n, P11150030758699793801.a n = A399040 (n + 1)

end A399040

/-!
# A399041: Total number of connected components in all induced subgraphs of the 3 X n grid graph.

The programs for A399041, the canonical program `A399041.P15010380011353425428` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399041 has offset 1).

The definition of A399041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399041.P15010380011353425428

`ogf((8-48x+41x^2)/(1-17x+80x^2-64x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399041

/-- `ogf((8-48x+41x^2)/(1-17x+80x^2-64x^3))` -/
def P15010380011353425428.Spec : Prop :=
  ∀ n, P15010380011353425428.a n = A399041 (n + 1)

theorem P15010380011353425428.correct : P15010380011353425428.Spec := by
  intro n
  simp only [A399041, Nat.add_sub_cancel]

end A399041

/-! ## A399041.P12791703407592501787

`17*a(n-1)-80*a(n-2)+64*a(n-3)` with `a(0)=8, a(1)=88, a(2)=897`
-/

namespace A399041.P12791703407592501787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 88, 897] fun n a =>
  17 * a (n - 1) - 80 * a (n - 2) + 64 * a (n - 3)

end

end A399041.P12791703407592501787

namespace A399041

/-- `17*a(n-1)-80*a(n-2)+64*a(n-3)` -/
def P12791703407592501787.Spec : Prop :=
  ∀ n, P12791703407592501787.a n = A399041 (n + 1)

end A399041

/-! ## A399041.P6392522845569102840

`A399039(A167614(n+1))`
-/

namespace A399041.P6392522845569102840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (A167614 (n + 1)).toNat

end

end A399041.P6392522845569102840

namespace A399041

/-- `A399039(A167614(n+1))` -/
def P6392522845569102840.Spec : Prop :=
  ∀ n, P6392522845569102840.a n = A399041 (n + 1)

end A399041

/-! ## A399041.P5143856512721882972

`A399039(A373663(n+1))`
-/

namespace A399041.P5143856512721882972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (A373663 (n + 1)).toNat

end

end A399041.P5143856512721882972

namespace A399041

/-- `A399039(A373663(n+1))` -/
def P5143856512721882972.Spec : Prop :=
  ∀ n, P5143856512721882972.a n = A399041 (n + 1)

end A399041

/-! ## A399041.P10565392796377617560

`A399039(A034856(n+2))`
-/

namespace A399041.P10565392796377617560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (A034856 (n + 2)).toNat

end

end A399041.P10565392796377617560

namespace A399041

/-- `A399039(A034856(n+2))` -/
def P10565392796377617560.Spec : Prop :=
  ∀ n, P10565392796377617560.a n = A399041 (n + 1)

end A399041

/-!
# A399042: Total number of connected components in all induced subgraphs of the 4 X n grid graph.

The programs for A399042, there is no canonical definition to state claims against.
-/

/-! ## A399042.P10406299066634676775

`A399039(A141214(n+1))`
-/

namespace A399042.P10406299066634676775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (A141214 (n + 1)).toNat

end

end A399042.P10406299066634676775

/-! ## A399042.P9796701800252122820

`A399039(A374004(n+1))`
-/

namespace A399042.P9796701800252122820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (A374004 (n + 1)).toNat

end

end A399042.P9796701800252122820

/-! ## A399042.P934703482747662741

`A399039(A052905(n)+9)`
-/

namespace A399042.P934703482747662741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (A052905 n + 9).toNat

end

end A399042.P934703482747662741

/-!
# A399043: Array read by antidiagonals: T(n,m) is the total number of connected components in all induced subgraphs of the rook graph K_n X K_m.

The programs for A399043, there is no canonical definition to state claims against.
-/

/-! ## A399043.P12172485766732341941

`A240347(n+1)-A003505(A196641(n+1))`
-/

namespace A399043.P12172485766732341941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (n + 1) - A003505 (A196641 (n + 1)).toNat

end

end A399043.P12172485766732341941

/-! ## A399043.P18119655676530262014

`A344543(A218319(n+1)+1)-A079496(A331485(n))`
-/

namespace A399043.P18119655676530262014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (A218319 (n + 1) + 1).toNat - A079496 (A331485 n).toNat

end

end A399043.P18119655676530262014

/-!
# A399045: Total number of connected components in all induced subgraphs of the n X 2 rook graph.

The programs for A399045, the canonical program `A399045.P5360054208156754306` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399045 has offset 0).

The definition of A399045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399045.P5360054208156754306

`4^n+3^n-2*2^n`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399045

/-- `4^n+3^n-2*2^n` -/
def P5360054208156754306.Spec : Prop :=
  ∀ n, P5360054208156754306.a n = A399045 n

theorem P5360054208156754306.correct : P5360054208156754306.Spec := by
  intro n
  simp only [A399045]

end A399045

/-! ## A399045.P5088723539261592945

`ogf((3x-10x^2)/(1-9x+26x^2-24x^3))`
-/

namespace A399045.P5088723539261592945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -10] [1, -9, 26, -24] n

end

end A399045.P5088723539261592945

namespace A399045

/-- `ogf((3x-10x^2)/(1-9x+26x^2-24x^3))` -/
def P5088723539261592945.Spec : Prop :=
  ∀ n, P5088723539261592945.a n = A399045 n

end A399045

/-! ## A399045.P2655848854799166926

`abs(A003063(n+1)+A000302(n))`
-/

namespace A399045.P2655848854799166926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003063 (n + 1) + A000302 n|

end

end A399045.P2655848854799166926

namespace A399045

/-- `abs(A003063(n+1)+A000302(n))` -/
def P2655848854799166926.Spec : Prop :=
  ∀ n, P2655848854799166926.a n = A399045 n

end A399045

/-! ## A399045.P7325471727574885138

`A165665(n)%A085350(n)`
-/

namespace A399045.P7325471727574885138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165665 n) (A085350 n)

end

end A399045.P7325471727574885138

namespace A399045

/-- `A165665(n)%A085350(n)` -/
def P7325471727574885138.Spec : Prop :=
  ∀ n, P7325471727574885138.a n = A399045 n

end A399045

/-! ## A399045.P17069613645089296878

`A000567(A135530(2*n+1))%A085350(n)`
-/

namespace A399045.P17069613645089296878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000567 (A135530 (2 * n + 1)).toNat) (A085350 n)

end

end A399045.P17069613645089296878

namespace A399045

/-- `A000567(A135530(2*n+1))%A085350(n)` -/
def P17069613645089296878.Spec : Prop :=
  ∀ n, P17069613645089296878.a n = A399045 n

end A399045

/-!
# A399046: Total number of connected components in all induced subgraphs of the n X 3 rook graph.

The programs for A399046, the canonical program `A399046.P10866800930197794789` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399046 has offset 0).

The definition of A399046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399046.P10866800930197794789

`8^n+3*5^n-4*4^n`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399046

/-- `8^n+3*5^n-4*4^n` -/
def P10866800930197794789.Spec : Prop :=
  ∀ n, P10866800930197794789.a n = A399046 n

theorem P10866800930197794789.correct : P10866800930197794789.Spec := by
  intro n
  simp only [A399046]

end A399046

/-!
# A399049: a(1) = 1; a(n+1) is the smallest integer greater than a(n) such that: a(k) + a(k+4) is not a term for any k.

The programs for A399049, there is no canonical definition to state claims against.
-/

/-! ## A399049.P2780974026352614465

`A076642(A153140(n))`
-/

namespace A399049.P2780974026352614465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076642 (A153140 n).toNat

end

end A399049.P2780974026352614465

/-! ## A399049.P17654298515286577853

`A140100(n+1)-A211662(A000712(n))`
-/

namespace A399049.P17654298515286577853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - A211662 (A000712 n).toNat

end

end A399049.P17654298515286577853

/-! ## A399049.P11478261711872392610

`comp[A285210(row(n)+1+A091042(n))+1]+1`
-/

namespace A399049.P11478261711872392610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285210 ((SequenceMachineLib.triRow n + 1 : ℤ) + A091042 n).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399049.P11478261711872392610

/-! ## A399049.P3624123148034478123

`A130245(A365044(n))`
-/

namespace A399049.P3624123148034478123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A365044 n).toNat

end

end A399049.P3624123148034478123

/-! ## A399049.P8887239582693225347

`∑[A124766(A292982(n+1))]`
-/

namespace A399049.P8887239582693225347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A292982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399049.P8887239582693225347

/-!
# A399053: Sum of cubefree numbers <= n.

The programs for A399053, the canonical program `A399053.P357460627173344980` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399053 has offset 1).

The definition of A399053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399053.P357460627173344980

`∑{#}[floor((n+1)^(1/3))-1, A008683(#+1)*(#+1)^3*C(floor((n+1)/(#+1)^3)+1, 2)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399053

/-- `∑{#}[floor((n+1)^(1/3))-1, A008683(#+1)*(#+1)^3*C(floor((n+1)/(#+1)^3)+1, 2)]` -/
def P357460627173344980.Spec : Prop :=
  ∀ n, P357460627173344980.a n = A399053 (n + 1)

theorem P357460627173344980.correct : P357460627173344980.Spec := by
  intro n
  simp only [A399053, Nat.add_sub_cancel]

end A399053

/-! ## A399053.P1025920141966659452

`∑[lcm(n+1, ∏{e}[n+1, round(1/#)])]`
-/

namespace A399053.P1025920141966659452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P1025920141966659452

namespace A399053

/-- `∑[lcm(n+1, ∏{e}[n+1, round(1/#)])]` -/
def P1025920141966659452.Spec : Prop :=
  ∀ n, (P1025920141966659452.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P15310238854806745390

`∑[C(∏{p}[n+1, gcd(n+1, #²)], n)]`
-/

namespace A399053.P15310238854806745390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P15310238854806745390

namespace A399053

/-- `∑[C(∏{p}[n+1, gcd(n+1, #²)], n)]` -/
def P15310238854806745390.Spec : Prop :=
  ∀ n, (P15310238854806745390.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P14663594029505898572

`∑[C(A007948(n+1), n)]`
-/

namespace A399053.P14663594029505898572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007948 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P14663594029505898572

namespace A399053

/-- `∑[C(A007948(n+1), n)]` -/
def P14663594029505898572.Spec : Prop :=
  ∀ n, (P14663594029505898572.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P12779131448226823506

`∑[C(A050985(n+1), n)]`
-/

namespace A399053.P12779131448226823506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050985 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P12779131448226823506

namespace A399053

/-- `∑[C(A050985(n+1), n)]` -/
def P12779131448226823506.Spec : Prop :=
  ∀ n, (P12779131448226823506.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P12585436209537590804

`∑[C(A066990(n+1), n)]`
-/

namespace A399053.P12585436209537590804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066990 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P12585436209537590804

namespace A399053

/-- `∑[C(A066990(n+1), n)]` -/
def P12585436209537590804.Spec : Prop :=
  ∀ n, (P12585436209537590804.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P16544199145407973072

`∑[C(A360539(n+1), n)]`
-/

namespace A399053.P16544199145407973072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A360539 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P16544199145407973072

namespace A399053

/-- `∑[C(A360539(n+1), n)]` -/
def P16544199145407973072.Spec : Prop :=
  ∀ n, (P16544199145407973072.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P9567835279096911684

`∑[(n+1)*A212793(n+1)]`
-/

namespace A399053.P9567835279096911684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P9567835279096911684

namespace A399053

/-- `∑[(n+1)*A212793(n+1)]` -/
def P9567835279096911684.Spec : Prop :=
  ∀ n, P9567835279096911684.a n = A399053 (n + 1)

end A399053

/-! ## A399053.P3012158715512268974

`∑[(n+1)*A053864(n+1)²]`
-/

namespace A399053.P3012158715512268974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053864 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P3012158715512268974

namespace A399053

/-- `∑[(n+1)*A053864(n+1)²]` -/
def P3012158715512268974.Spec : Prop :=
  ∀ n, P3012158715512268974.a n = A399053 (n + 1)

end A399053

/-! ## A399053.P14746166438929959123

`∑[(n+1)*A189021(n+1)²]`
-/

namespace A399053.P14746166438929959123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189021 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P14746166438929959123

namespace A399053

/-- `∑[(n+1)*A189021(n+1)²]` -/
def P14746166438929959123.Spec : Prop :=
  ∀ n, P14746166438929959123.a n = A399053 (n + 1)

end A399053

/-! ## A399053.P6185632133236980486

`∑[(n+1)*A363551(n+1)²]`
-/

namespace A399053.P6185632133236980486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A363551 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P6185632133236980486

namespace A399053

/-- `∑[(n+1)*A363551(n+1)²]` -/
def P6185632133236980486.Spec : Prop :=
  ∀ n, P6185632133236980486.a n = A399053 (n + 1)

end A399053

/-! ## A399053.P12246294116989652096

`A358038(A060431(n+1))`
-/

namespace A399053.P12246294116989652096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358038 (A060431 (n + 1)).toNat

end

end A399053.P12246294116989652096

namespace A399053

/-- `A358038(A060431(n+1))` -/
def P12246294116989652096.Spec : Prop :=
  ∀ n, P12246294116989652096.a n = A399053 (n + 1)

end A399053

/-! ## A399053.P14535459032297494036

`∑[(n+1)*A363553((n+1)²)]`
-/

namespace A399053.P14535459032297494036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A363553 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P14535459032297494036

namespace A399053

/-- `∑[(n+1)*A363553((n+1)²)]` -/
def P14535459032297494036.Spec : Prop :=
  ∀ n, P14535459032297494036.a n = A399053 (n + 1)

end A399053

/-!
# A399054: Number of distinct resistances that can be produced from a circuit of exactly n resistors, each of which is 1 ohm or 2 ohms, using only series and parallel combinations.

The programs for A399054, there is no canonical definition to state claims against.
-/

/-! ## A399054.P13616700065459814771

`A196259(A082134(n+1))`
-/

namespace A399054.P13616700065459814771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196259 (A082134 (n + 1)).toNat

end

end A399054.P13616700065459814771

/-!
# A399055: Number of distinct terminal state loops of Rule 30 cellular automaton in a cyclic universe of width n.

The programs for A399055, there is no canonical definition to state claims against.
-/

/-! ## A399055.P3943087585652188174

`A010051(n+4)+A000700(A389265(n))`
-/

namespace A399055.P3943087585652188174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 4) + A000700 (A389265 n).toNat

end

end A399055.P3943087585652188174

/-! ## A399055.P13967882386385718257

`A371275(A058593(n+1))`
-/

namespace A399055.P13967882386385718257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371275 (A058593 (n + 1)).toNat

end

end A399055.P13967882386385718257

/-! ## A399055.P925998904664244044

`A297032(A244439(n+1))`
-/

namespace A399055.P925998904664244044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A244439 (n + 1)).toNat

end

end A399055.P925998904664244044

/-! ## A399055.P8854488090849308275

`A372196(A200447(n+1))`
-/

namespace A399055.P8854488090849308275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372196 (A200447 (n + 1)).toNat

end

end A399055.P8854488090849308275

/-! ## A399055.P12795079910432320539

`A065373(A213244(n+2))`
-/

namespace A399055.P12795079910432320539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065373 (A213244 (n + 2)).toNat

end

end A399055.P12795079910432320539

/-!
# A399056: a(n) = (number of nonprimes <= n^2) - (number of primes <= n^2).

The programs for A399056, the canonical program `A399056.P5606043138281039820` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399056 has offset 1).

The definition of A399056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399056.P674054888027572667

`A078435(n+1)-A038107(n+1)`
-/

namespace A399056.P674054888027572667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078435 (n + 1) - A038107 (n + 1)

end

end A399056.P674054888027572667

namespace A399056

/-- `A078435(n+1)-A038107(n+1)` -/
def P674054888027572667.Spec : Prop :=
  ∀ n, P674054888027572667.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P5606043138281039820

`(n+1)²-2*A000720((n+1)²)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399056

/-- `(n+1)²-2*A000720((n+1)²)` -/
def P5606043138281039820.Spec : Prop :=
  ∀ n, P5606043138281039820.a n = A399056 (n + 1)

theorem P5606043138281039820.correct : P5606043138281039820.Spec := by
  intro n
  simp only [A399056, Nat.add_sub_cancel]

end A399056

/-! ## A399056.P14673809847375776395

`A097454((n+1)²)`
-/

namespace A399056.P14673809847375776395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 ((n + 1) ^ 2)

end

end A399056.P14673809847375776395

namespace A399056

/-- `A097454((n+1)²)` -/
def P14673809847375776395.Spec : Prop :=
  ∀ n, P14673809847375776395.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P9867915333888900369

`A000290(n+1)-(A038107(n+1)+A038107(n+1))`
-/

namespace A399056.P9867915333888900369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A038107 (n + 1) + A038107 (n + 1))

end

end A399056.P9867915333888900369

namespace A399056

/-- `A000290(n+1)-(A038107(n+1)+A038107(n+1))` -/
def P9867915333888900369.Spec : Prop :=
  ∀ n, P9867915333888900369.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P17411054328959587479

`A078435(n+1)-A000720((n+1)²)`
-/

namespace A399056.P17411054328959587479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078435 (n + 1) - A000720 ((n + 1) ^ 2)

end

end A399056.P17411054328959587479

namespace A399056

/-- `A078435(n+1)-A000720((n+1)²)` -/
def P17411054328959587479.Spec : Prop :=
  ∀ n, P17411054328959587479.a n = A399056 (n + 1)

theorem P17411054328959587479.correct : P17411054328959587479.Spec := by
  intro n
  simp only [A399056, Nat.add_sub_cancel, A399056.P17411054328959587479.a, A399056.P5606043138281039820.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A078435, A078435.P14345205808415751107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A399056

/-! ## A399056.P14113338007175684683

`A118777(n*(n+2))`
-/

namespace A399056.P14113338007175684683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (n * (n + 2))

end

end A399056.P14113338007175684683

namespace A399056

/-- `A118777(n*(n+2))` -/
def P14113338007175684683.Spec : Prop :=
  ∀ n, P14113338007175684683.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P285073976656617684

`A072731((n+1)²)+1`
-/

namespace A399056.P285073976656617684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072731 ((n + 1) ^ 2) + 1

end

end A399056.P285073976656617684

namespace A399056

/-- `A072731((n+1)²)+1` -/
def P285073976656617684.Spec : Prop :=
  ∀ n, P285073976656617684.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P12369042386953776155

`A118777((n+1)²)-1`
-/

namespace A399056.P12369042386953776155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 ((n + 1) ^ 2) - 1

end

end A399056.P12369042386953776155

namespace A399056

/-- `A118777((n+1)²)-1` -/
def P12369042386953776155.Spec : Prop :=
  ∀ n, P12369042386953776155.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P5630775398628427496

`abs(A097454(∑[2*n+1]))`
-/

namespace A399056.P5630775398628427496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097454 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A399056.P5630775398628427496

namespace A399056

/-- `abs(A097454(∑[2*n+1]))` -/
def P5630775398628427496.Spec : Prop :=
  ∀ n, P5630775398628427496.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P16779344932948650155

`(n+1)²-A116568((n+1)²)`
-/

namespace A399056.P16779344932948650155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A116568 ((n + 1) ^ 2)

end

end A399056.P16779344932948650155

namespace A399056

/-- `(n+1)²-A116568((n+1)²)` -/
def P16779344932948650155.Spec : Prop :=
  ∀ n, P16779344932948650155.a n = A399056 (n + 1)

end A399056

/-!
# A399057: Denominators of Sum_{k=1..n} n^2/(k^2 + (n-k)^2).

The programs for A399057, there is no canonical definition to state claims against.
-/

/-! ## A399057.P2597182208813962553

`A033453(A190164(n!))`
-/

namespace A399057.P2597182208813962553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033453 (A190164 (Nat.factorial n)).toNat

end

end A399057.P2597182208813962553

/-!
# A399058: Sum of the sizes of the odd indexed blocks minus sum of the sizes of the even indexed blocks in all set partitions of [n].

The programs for A399058, there is no canonical definition to state claims against.
-/

/-! ## A399058.P259305304979397919

`A186999(n)%A000203(A003576(n))`
-/

namespace A399058.P259305304979397919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186999 n) (A000203 (A003576 n).toNat)

end

end A399058.P259305304979397919

/-! ## A399058.P10998854160666683380

`A383710(A089071(n+1))+A157928(n)`
-/

namespace A399058.P10998854160666683380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383710 (A089071 (n + 1)).toNat + A157928 n

end

end A399058.P10998854160666683380

/-! ## A399058.P16986234089976424846

`A186999(n)+A121373(A113947(n+2))`
-/

namespace A399058.P16986234089976424846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186999 n + A121373 (A113947 (n + 2)).toNat

end

end A399058.P16986234089976424846

/-!
# A399061: Expansion of e.g.f. exp(x * cosh(x)^2).

The programs for A399061, there is no canonical definition to state claims against.
-/

/-! ## A399061.P2571952064326108747

`A026741(2*A141627(n))`
-/

namespace A399061.P2571952064326108747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A141627 n).toNat

end

end A399061.P2571952064326108747

/-! ## A399061.P4172342606223206063

`A075861(2*A141627(n))`
-/

namespace A399061.P4172342606223206063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (2 * A141627 n).toNat

end

end A399061.P4172342606223206063

/-!
# A399062: Expansion of e.g.f. exp(x * cosh(x)^3).

The programs for A399062, there is no canonical definition to state claims against.
-/

/-! ## A399062.P14123382277859505580

`A336420(record[A287859(n)])`
-/

namespace A399062.P14123382277859505580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399062.P14123382277859505580

/-! ## A399062.P15316112386570416487

`A336420(A287859(n+1))`
-/

namespace A399062.P15316112386570416487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (A287859 (n + 1)).toNat

end

end A399062.P15316112386570416487

/-!
# A399063: Expansion of e.g.f. exp(x * cosh(x)^4).

The programs for A399063, there is no canonical definition to state claims against.
-/

/-! ## A399063.P9134372853621655186

`A174239(A052747(n)*A166444(n))`
-/

namespace A399063.P9134372853621655186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (A052747 n * A166444 n).toNat

end

end A399063.P9134372853621655186

/-! ## A399063.P1888805759322436290

`A248416(A267367(n))`
-/

namespace A399063.P1888805759322436290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248416 (A267367 n).toNat

end

end A399063.P1888805759322436290

/-!
# A399064: Expansion of e.g.f. 1/(1 - x*cosh(x)^2).

The programs for A399064, there is no canonical definition to state claims against.
-/

/-! ## A399064.P12492922306948395226

`A000010(A255906(n)+A104602(n))`
-/

namespace A399064.P12492922306948395226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A255906 n + A104602 n).toNat

end

end A399064.P12492922306948395226

/-! ## A399064.P14513717116032640105

`A274262(A186240(n))`
-/

namespace A399064.P14513717116032640105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274262 (A186240 n).toNat

end

end A399064.P14513717116032640105

/-!
# A399066: Expansion of e.g.f. 1/(1 - x*cosh(x)^4).

The programs for A399066, there is no canonical definition to state claims against.
-/

/-! ## A399066.P2744953637475272814

`row(A375298(A293840(n)))`
-/

namespace A399066.P2744953637475272814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A375298 (A293840 n).toNat).toNat

end

end A399066.P2744953637475272814

/-! ## A399066.P3237140842513371994

`A028310(A293840(n)-1)`
-/

namespace A399066.P3237140842513371994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A293840 n - 1).toNat

end

end A399066.P3237140842513371994

/-!
# A399069: a(n) is the least positive integer divisible by at least n distinct entries of a single row of Pascal's triangle.

The programs for A399069, there is no canonical definition to state claims against.
-/

/-! ## A399069.P1553359579656915803

`A168112(A057873(n+1))`
-/

namespace A399069.P1553359579656915803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168112 (A057873 (n + 1)).toNat

end

end A399069.P1553359579656915803

/-! ## A399069.P8585661027676504926

`filter[A068550(n), A117904(#)]`
-/

namespace A399069.P8585661027676504926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117904 (f1 j).toNat = 1) n)

end

end A399069.P8585661027676504926

/-!
# A399070: a(n) = lambda(2^n + 1) + 1, where lambda is the Carmichael function A002322.

The programs for A399070, there is no canonical definition to state claims against.
-/

/-! ## A399070.P3697335622652244778

`A002322(2^n+1)+1`
-/

namespace A399070.P3697335622652244778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (2 ^ n + 1) + 1

end

end A399070.P3697335622652244778

/-! ## A399070.P14223848971014021647

`A006530(A134744(3*(n+1))+A000079(n))`
-/

namespace A399070.P14223848971014021647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134744 (3 * (n + 1)) + A000079 n).toNat

end

end A399070.P14223848971014021647

/-! ## A399070.P7039885559357993918

`A006530((2*n+1)*A002587(n))`
-/

namespace A399070.P7039885559357993918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n + 1 : ℤ) * A002587 n).toNat

end

end A399070.P7039885559357993918

/-! ## A399070.P17415685273337864476

`A006530(lcm(∑{d}[n+1, #], A002587(n)))`
-/

namespace A399070.P17415685273337864476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A002587 n))

end

end A399070.P17415685273337864476

/-! ## A399070.P257726249276868698

`A006530(A000051(n)*A279313(2*n+1))`
-/

namespace A399070.P257726249276868698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000051 n * A279313 (2 * n + 1)).toNat

end

end A399070.P257726249276868698

/-!
# A399075: G.f.: (Sum_{k>=1} x^(3*k)/(1 - x^(3*k))) * Product_{k>=1} (1 + x^k).

The programs for A399075, there is no canonical definition to state claims against.
-/

/-! ## A399075.P1096639929645809465

`A035645(A233583(2*n+1))*A054977(A035618(3*n+5))`
-/

namespace A399075.P1096639929645809465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035645 (A233583 (2 * n + 1)).toNat * A054977 (A035618 (3 * n + 5)).toNat

end

end A399075.P1096639929645809465

/-!
# A399076: G.f.: (Sum_{k>=1} x^(3*k)/(1 - x^(3*k))) * Product_{k>=1} (1 + x^k)/(1 - x^k).

The programs for A399076, there is no canonical definition to state claims against.
-/

/-! ## A399076.P9652667815819419509

`A157477(A059403(n))`
-/

namespace A399076.P9652667815819419509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A059403 n).toNat

end

end A399076.P9652667815819419509

/-! ## A399076.P5986911364712040860

`A251631(A014595(n))`
-/

namespace A399076.P5986911364712040860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A014595 n).toNat

end

end A399076.P5986911364712040860

/-! ## A399076.P329124110388978779

`A251631(A026021(n))`
-/

namespace A399076.P329124110388978779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A026021 n).toNat

end

end A399076.P329124110388978779

/-! ## A399076.P6246791460556649830

`A251631(A079959(n))`
-/

namespace A399076.P6246791460556649830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A079959 n).toNat

end

end A399076.P6246791460556649830

/-! ## A399076.P3091063442903697072

`A340205(A080014(n))`
-/

namespace A399076.P3091063442903697072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A080014 n).toNat

end

end A399076.P3091063442903697072

/-!
# A399077: G.f.: (Sum_{k>=1} x^(4*k)/(1 - x^(4*k))) * Product_{k>=1} (1 + x^k)/(1 - x^k).

The programs for A399077, there is no canonical definition to state claims against.
-/

/-! ## A399077.P8197789571639316113

`A325106(A023436(n))`
-/

namespace A399077.P8197789571639316113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A023436 n).toNat

end

end A399077.P8197789571639316113

/-! ## A399077.P15922668206270968267

`A325106(A093335(n))`
-/

namespace A399077.P15922668206270968267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A093335 n).toNat

end

end A399077.P15922668206270968267

/-! ## A399077.P17169893360967441852

`A180447(A318944(n))`
-/

namespace A399077.P17169893360967441852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A318944 n).toNat

end

end A399077.P17169893360967441852

/-!
# A399078: G.f.: (Sum_{k>=1} k*x^(2*k)/(1 - x^(2*k))) / Product_{k>=1} (1 - x^k).

The programs for A399078, there is no canonical definition to state claims against.
-/

/-! ## A399078.P14831807400988507859

`∑{#}[floor(n/2)-1, A000203(#+1)*A000041(n-2*(#+1))]`
-/

namespace A399078.P14831807400988507859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000203 (k + 1) * A000041 (n - 2 * (k + 1))

end

end A399078.P14831807400988507859

/-!
# A399079: G.f.: (Sum_{k>=1} k*x^(2*k)/(1 - x^(2*k))) * Product_{k>=1} (1 + x^k).

The programs for A399079, there is no canonical definition to state claims against.
-/

/-! ## A399079.P4180105206124473532

`A000041(n)-A124754(A120588(n))`
-/

namespace A399079.P4180105206124473532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A124754 (A120588 n).toNat

end

end A399079.P4180105206124473532

/-!
# A399081: Triangle read by rows: T(n,k) = Product_{p odd prime, 3 <= p <= n} p^(floor(log(n) /log(p)) - v_p(k)), where v_p(k) - p-adic valuation and T(1,1) = T(2,1) = T(2,2) = 1.

The programs for A399081, the canonical program `A399081.P16471427921113068956` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399081 has offset 1).

The definition of A399081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399081.P13079640119602919935

`A217858(row(n)+1)/A000265(col(n)+1)`
-/

namespace A399081.P13079640119602919935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217858 (SequenceMachineLib.triRow n + 1) : ℚ) / (A000265 (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A399081.P13079640119602919935

namespace A399081

/-- `A217858(row(n)+1)/A000265(col(n)+1)` -/
def P13079640119602919935.Spec : Prop :=
  ∀ n, P13079640119602919935.a n = (A399081 (n + 1) : ℚ)

end A399081

/-! ## A399081.P16471427921113068956

`A000265(A003418(row(n)+1)/(col(n)+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399081

/-- `A000265(A003418(row(n)+1)/(col(n)+1))` -/
def P16471427921113068956.Spec : Prop :=
  ∀ n, P16471427921113068956.a n = A399081 (n + 1)

theorem P16471427921113068956.correct : P16471427921113068956.Spec := by
  intro n
  simp only [A399081, Nat.add_sub_cancel]

end A399081

/-! ## A399081.P8180156779344202618

`gcd(A120435(n+1), A217858(n+1))`
-/

namespace A399081.P8180156779344202618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120435 (n + 1)) (A217858 (n + 1))

end

end A399081.P8180156779344202618

namespace A399081

/-- `gcd(A120435(n+1), A217858(n+1))` -/
def P8180156779344202618.Spec : Prop :=
  ∀ n, (P8180156779344202618.a n : ℤ) = A399081 (n + 1)

end A399081

/-! ## A399081.P7016074916154503317

`gcd(A055634(n), A120435(n+1))`
-/

namespace A399081.P7016074916154503317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A120435 (n + 1))

end

end A399081.P7016074916154503317

namespace A399081

/-- `gcd(A055634(n), A120435(n+1))` -/
def P7016074916154503317.Spec : Prop :=
  ∀ n, (P7016074916154503317.a n : ℤ) = A399081 (n + 1)

end A399081

/-! ## A399081.P14352156970852478750

`gcd(A046983(n), A120435(n+1))`
-/

namespace A399081.P14352156970852478750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046983 n) (A120435 (n + 1))

end

end A399081.P14352156970852478750

namespace A399081

/-- `gcd(A046983(n), A120435(n+1))` -/
def P14352156970852478750.Spec : Prop :=
  ∀ n, (P14352156970852478750.a n : ℤ) = A399081 (n + 1)

end A399081

/-! ## A399081.P14516440122763909348

`A000265(A120435(n+1))`
-/

namespace A399081.P14516440122763909348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A120435 (n + 1)).toNat

end

end A399081.P14516440122763909348

namespace A399081

/-- `A000265(A120435(n+1))` -/
def P14516440122763909348.Spec : Prop :=
  ∀ n, P14516440122763909348.a n = A399081 (n + 1)

end A399081

/-!
# A399088: The maximum exponent in the prime factorization of the number following the n-th squarefree number.

The programs for A399088, the canonical program `A399088.P9966872433898824773` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399088 has offset 1).

The definition of A399088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399088.P9966872433898824773

`A051903(A005117(n+1)+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399088

/-- `A051903(A005117(n+1)+1)` -/
def P9966872433898824773.Spec : Prop :=
  ∀ n, P9966872433898824773.a n = A399088 (n + 1)

theorem P9966872433898824773.correct : P9966872433898824773.Spec := by
  intro n
  simp only [A399088, Nat.add_sub_cancel]

end A399088

/-! ## A399088.P8161833459828563680

`A051903(1+A005117(n+1))`
-/

namespace A399088.P8161833459828563680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (1 + A005117 (n + 1)).toNat

end

end A399088.P8161833459828563680

namespace A399088

/-- `A051903(1+A005117(n+1))` -/
def P8161833459828563680.Spec : Prop :=
  ∀ n, P8161833459828563680.a n = A399088 (n + 1)

theorem P8161833459828563680.correct : P8161833459828563680.Spec := by
  intro n
  simp only [A399088, Nat.add_sub_cancel, A399088.P8161833459828563680.a, A399088.P9966872433898824773.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A399088

/-! ## A399088.P1227018010710155204

`A051903(record[A007913(n+1)+1])`
-/

namespace A399088.P1227018010710155204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399088.P1227018010710155204

namespace A399088

/-- `A051903(record[A007913(n+1)+1])` -/
def P1227018010710155204.Spec : Prop :=
  ∀ n, P1227018010710155204.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P15502580616426777872

`A051903(1+record[A007947(n+1)])`
-/

namespace A399088.P15502580616426777872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (1 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399088.P15502580616426777872

namespace A399088

/-- `A051903(1+record[A007947(n+1)])` -/
def P15502580616426777872.Spec : Prop :=
  ∀ n, P15502580616426777872.a n = A399088 (n + 1)

theorem P15502580616426777872.correct : P15502580616426777872.Spec := by
  intro n
  simp only [A399088, Nat.add_sub_cancel, A399088.P15502580616426777872.f1, A399088.P15502580616426777872.a, A399088.P9966872433898824773.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399088

/-! ## A399088.P5693042461419256750

`A051903(eq[1, A255326(n)]+1)`
-/

namespace A399088.P5693042461419256750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A399088.P5693042461419256750

namespace A399088

/-- `A051903(eq[1, A255326(n)]+1)` -/
def P5693042461419256750.Spec : Prop :=
  ∀ n, P5693042461419256750.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P13773124313951911692

`A051903(record[A261969(n+1)+1])`
-/

namespace A399088.P13773124313951911692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399088.P13773124313951911692

namespace A399088

/-- `A051903(record[A261969(n+1)+1])` -/
def P13773124313951911692.Spec : Prop :=
  ∀ n, P13773124313951911692.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P153622591190625238

`val(A046523(A005117(n+1)+1), 2)`
-/

namespace A399088.P153622591190625238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (A005117 (n + 1) + 1).toNat).toNat 2

end

end A399088.P153622591190625238

namespace A399088

/-- `val(A046523(A005117(n+1)+1), 2)` -/
def P153622591190625238.Spec : Prop :=
  ∀ n, (P153622591190625238.a n : ℤ) = A399088 (n + 1)

end A399088

/-! ## A399088.P4340539101435312972

`A051903(A088610(Δ[n²])+1)`
-/

namespace A399088.P4340539101435312972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A088610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A399088.P4340539101435312972

namespace A399088

/-- `A051903(A088610(Δ[n²])+1)` -/
def P4340539101435312972.Spec : Prop :=
  ∀ n, P4340539101435312972.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P14283046178463090007

`A334572(A192416(n+2))`
-/

namespace A399088.P14283046178463090007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (A192416 (n + 2)).toNat

end

end A399088.P14283046178463090007

namespace A399088

/-- `A334572(A192416(n+2))` -/
def P14283046178463090007.Spec : Prop :=
  ∀ n, P14283046178463090007.a n = A399088 (n + 1)

end A399088

/-!
# A399089: The maximum exponent in the prime factorization of the number preceding the n-th squarefree number.

The programs for A399089, the canonical program `A399089.P17383829431704807904` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399089 has offset 2).

The definition of A399089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399089.P17383829431704807904

`A051903(A005117(n+2)-1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399089

/-- `A051903(A005117(n+2)-1)` -/
def P17383829431704807904.Spec : Prop :=
  ∀ n, P17383829431704807904.a n = A399089 (n + 2)

theorem P17383829431704807904.correct : P17383829431704807904.Spec := by
  intro n
  simp only [A399089, Nat.add_sub_cancel]

end A399089

/-! ## A399089.P629135067932389202

`A051903(∑[A076259(n+1)])`
-/

namespace A399089.P629135067932389202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399089.P629135067932389202

namespace A399089

/-- `A051903(∑[A076259(n+1)])` -/
def P629135067932389202.Spec : Prop :=
  ∀ n, P629135067932389202.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P7100563420153592089

`A051903(A144338(n+1)-1)`
-/

namespace A399089.P7100563420153592089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A144338 (n + 1) - 1).toNat

end

end A399089.P7100563420153592089

namespace A399089

/-- `A051903(A144338(n+1)-1)` -/
def P7100563420153592089.Spec : Prop :=
  ∀ n, P7100563420153592089.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P4999207986027729550

`A051903(eq[1, A051903(n+1)])`
-/

namespace A399089.P4999207986027729550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A399089.P4999207986027729550

namespace A399089

/-- `A051903(eq[1, A051903(n+1)])` -/
def P4999207986027729550.Spec : Prop :=
  ∀ n, P4999207986027729550.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P7767249266955006920

`A051903(lt[A347439(n+1), 1])`
-/

namespace A399089.P7767249266955006920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A399089.P7767249266955006920

namespace A399089

/-- `A051903(lt[A347439(n+1), 1])` -/
def P7767249266955006920.Spec : Prop :=
  ∀ n, P7767249266955006920.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P13577218635236312678

`A051903(record[A007913(n+2)-1])`
-/

namespace A399089.P13577218635236312678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399089.P13577218635236312678

namespace A399089

/-- `A051903(record[A007913(n+2)-1])` -/
def P13577218635236312678.Spec : Prop :=
  ∀ n, P13577218635236312678.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P11557364875635923164

`A051903(lt[A048146(n+1), A001222(n+1)])`
-/

namespace A399089.P11557364875635923164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399089.P11557364875635923164

namespace A399089

/-- `A051903(lt[A048146(n+1), A001222(n+1)])` -/
def P11557364875635923164.Spec : Prop :=
  ∀ n, P11557364875635923164.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P5603687054394240752

`A051903(lt[A162296(n+1), n])`
-/

namespace A399089.P5603687054394240752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A399089.P5603687054394240752

namespace A399089

/-- `A051903(lt[A162296(n+1), n])` -/
def P5603687054394240752.Spec : Prop :=
  ∀ n, P5603687054394240752.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P15665800744448862919

`A051903(lt[A048146(n+1), A057427(n)])`
-/

namespace A399089.P15665800744448862919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399089.P15665800744448862919

namespace A399089

/-- `A051903(lt[A048146(n+1), A057427(n)])` -/
def P15665800744448862919.Spec : Prop :=
  ∀ n, P15665800744448862919.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P13207193899072096044

`A051903(lt[A210436(n), A007947(n+1)])`
-/

namespace A399089.P13207193899072096044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399089.P13207193899072096044

namespace A399089

/-- `A051903(lt[A210436(n), A007947(n+1)])` -/
def P13207193899072096044.Spec : Prop :=
  ∀ n, P13207193899072096044.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P5687201800800107879

`A329885(A368249(n+2))`
-/

namespace A399089.P5687201800800107879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (A368249 (n + 2)).toNat

end

end A399089.P5687201800800107879

namespace A399089

/-- `A329885(A368249(n+2))` -/
def P5687201800800107879.Spec : Prop :=
  ∀ n, P5687201800800107879.a n = A399089 (n + 2)

end A399089

/-!
# A399090: The maximum exponent in the prime factorization of the numbers whose powerful part is a square (A335275).

The programs for A399090, the canonical program `A399090.P13526670085507445655` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399090 has offset 1).

The definition of A399090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399090.P13526670085507445655

`A051903(A335275(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A399090

/-- `A051903(A335275(n+1))` -/
def P13526670085507445655.Spec : Prop :=
  ∀ n, P13526670085507445655.a n = A399090 (n + 1)

theorem P13526670085507445655.correct : P13526670085507445655.Spec := by
  intro n
  simp only [A399090, Nat.add_sub_cancel]

end A399090

/-! ## A399090.P15995027366952188753

`A051903(A220218(n+1)%A244071(n+1))`
-/

namespace A399090.P15995027366952188753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (A220218 (n + 1)) (A244071 (n + 1))).toNat

end

end A399090.P15995027366952188753

namespace A399090

/-- `A051903(A220218(n+1)%A244071(n+1))` -/
def P15995027366952188753.Spec : Prop :=
  ∀ n, P15995027366952188753.a n = A399090 (n + 1)

end A399090

/-! ## A399090.P1075354738961088637

`A051903(A220218(n+1))%A245096(n+1)`
-/

namespace A399090.P1075354738961088637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A220218 (n + 1)).toNat) (A245096 (n + 1))

end

end A399090.P1075354738961088637

namespace A399090

/-- `A051903(A220218(n+1))%A245096(n+1)` -/
def P1075354738961088637.Spec : Prop :=
  ∀ n, P1075354738961088637.a n = A399090 (n + 1)

end A399090

/-!
# A399091: The maximum exponent in the prime factorization of the cubefree numbers k such that k+1 is also cubefree.

The programs for A399091, the canonical program `A399091.P3397790440992818153` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399091 has offset 1).

The definition of A399091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A340152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399091.P3397790440992818153

`A051903(A340152(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A399091

/-- `A051903(A340152(n+1))` -/
def P3397790440992818153.Spec : Prop :=
  ∀ n, P3397790440992818153.a n = A399091 (n + 1)

theorem P3397790440992818153.correct : P3397790440992818153.Spec := by
  intro n
  simp only [A399091, Nat.add_sub_cancel]

end A399091

/-! ## A399091.P3027668909608460403

`A001055(A335036(2*(n+1)))%A073513(n+1)`
-/

namespace A399091.P3027668909608460403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A335036 (2 * (n + 1))).toNat) (A073513 (n + 1))

end

end A399091.P3027668909608460403

namespace A399091

/-- `A001055(A335036(2*(n+1)))%A073513(n+1)` -/
def P3027668909608460403.Spec : Prop :=
  ∀ n, P3027668909608460403.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P6065059368882681236

`A101666(gcd(A101716(n+1), A269303(n+1)))`
-/

namespace A399091.P6065059368882681236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (Int.gcd (A101716 (n + 1)) (A269303 (n + 1)))

end

end A399091.P6065059368882681236

namespace A399091

/-- `A101666(gcd(A101716(n+1), A269303(n+1)))` -/
def P6065059368882681236.Spec : Prop :=
  ∀ n, P6065059368882681236.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P15362481926438938786

`A182907(A031215(n+1)-A325162(n+2))`
-/

namespace A399091.P15362481926438938786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182907 (A031215 (n + 1) - A325162 (n + 2)).toNat

end

end A399091.P15362481926438938786

namespace A399091

/-- `A182907(A031215(n+1)-A325162(n+2))` -/
def P15362481926438938786.Spec : Prop :=
  ∀ n, P15362481926438938786.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P9334573637097571512

`A214566(A315726(n))`
-/

namespace A399091.P9334573637097571512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A315726 n).toNat

end

end A399091.P9334573637097571512

namespace A399091

/-- `A214566(A315726(n))` -/
def P9334573637097571512.Spec : Prop :=
  ∀ n, P9334573637097571512.a n = A399091 (n + 1)

end A399091

/-!
# A399092: The maximum exponent in the prime factorization of the nonsquarefree numbers k such that k+1 is also nonsquarefree.

The programs for A399092, the canonical program `A399092.P10321508231479955331` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399092 has offset 1).

The definition of A399092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399092.P10321508231479955331

`A051903(A068781(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399092

/-- `A051903(A068781(n+1))` -/
def P10321508231479955331.Spec : Prop :=
  ∀ n, P10321508231479955331.a n = A399092 (n + 1)

theorem P10321508231479955331.correct : P10321508231479955331.Spec := by
  intro n
  simp only [A399092, Nat.add_sub_cancel]

end A399092

/-! ## A399092.P7784308527376351196

`A368713(A375709(n+1))`
-/

namespace A399092.P7784308527376351196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368713 (A375709 (n + 1)).toNat

end

end A399092.P7784308527376351196

namespace A399092

/-- `A368713(A375709(n+1))` -/
def P7784308527376351196.Spec : Prop :=
  ∀ n, P7784308527376351196.a n = A399092 (n + 1)

end A399092

/-! ## A399092.P5360274259045154287

`A292582(A068781(n+1)*A392219(n+1))`
-/

namespace A399092.P5360274259045154287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (A068781 (n + 1) * A392219 (n + 1)).toNat

end

end A399092.P5360274259045154287

namespace A399092

/-- `A292582(A068781(n+1)*A392219(n+1))` -/
def P5360274259045154287.Spec : Prop :=
  ∀ n, P5360274259045154287.a n = A399092 (n + 1)

end A399092

/-! ## A399092.P10708423076884850055

`A005361(A031369(n+1)*A068781(n+1))`
-/

namespace A399092.P10708423076884850055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A031369 (n + 1) * A068781 (n + 1)).toNat

end

end A399092.P10708423076884850055

namespace A399092

/-- `A005361(A031369(n+1)*A068781(n+1))` -/
def P10708423076884850055.Spec : Prop :=
  ∀ n, P10708423076884850055.a n = A399092 (n + 1)

end A399092

/-!
# A399093: The maximum exponent in the prime factorization of the exponentially odd numbers k such that k+1 is also exponentially odd.

The programs for A399093, the canonical program `A399093.P13952728189661185523` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399093 has offset 1).

The definition of A399093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A367695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399093.P13952728189661185523

`A051903(A367695(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399093

/-- `A051903(A367695(n+1))` -/
def P13952728189661185523.Spec : Prop :=
  ∀ n, P13952728189661185523.a n = A399093 (n + 1)

theorem P13952728189661185523.correct : P13952728189661185523.Spec := by
  intro n
  simp only [A399093, Nat.add_sub_cancel]

end A399093

/-!
# A399094: Triangle read by rows formed by the nested recurrences H_m(n) = 1 + max_{1 <= j <= m} H_m(n - H_m(n-j)), with H_m(1) = ... = H_m(m) = 1.

The programs for A399094, there is no canonical definition to state claims against.
-/

/-! ## A399094.P13871447396966462460

`A398602(A365962(n))`
-/

namespace A399094.P13871447396966462460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398602 (A365962 n).toNat

end

end A399094.P13871447396966462460

/-! ## A399094.P10127521702357422840

`A043532(A286231(n+1))`
-/

namespace A399094.P10127521702357422840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A286231 (n + 1)).toNat

end

end A399094.P10127521702357422840

/-! ## A399094.P11439476804595791073

`A179752(A336862(n+1))`
-/

namespace A399094.P11439476804595791073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A336862 (n + 1)).toNat

end

end A399094.P11439476804595791073

/-! ## A399094.P16065813649042083953

`A332025(A207615(n+1))`
-/

namespace A399094.P16065813649042083953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332025 (A207615 (n + 1)).toNat

end

end A399094.P16065813649042083953

/-! ## A399094.P15037015143182968687

`A105528(A094344(n+1))`
-/

namespace A399094.P15037015143182968687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105528 (A094344 (n + 1)).toNat

end

end A399094.P15037015143182968687

/-!
# A399096: Triangle read by rows: T(n,k) is the number of trees on n unlabeled nodes with exactly k peripheral nodes.

The programs for A399096, there is no canonical definition to state claims against.
-/

/-! ## A399096.P18355839641132583512

`A124766(A244120(n))`
-/

namespace A399096.P18355839641132583512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A244120 n).toNat

end

end A399096.P18355839641132583512

/-! ## A399096.P10555852940260259454

`A345236(A257813(n))`
-/

namespace A399096.P10555852940260259454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345236 (A257813 n).toNat

end

end A399096.P10555852940260259454

/-! ## A399096.P9492906753671010442

`A244145(A244120(n)+1)`
-/

namespace A399096.P9492906753671010442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244145 (A244120 n + 1).toNat

end

end A399096.P9492906753671010442

/-! ## A399096.P9213261291243116584

`A176724(A143611(n+2))`
-/

namespace A399096.P9213261291243116584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176724 (A143611 (n + 2)).toNat

end

end A399096.P9213261291243116584

/-! ## A399096.P14512761073505687878

`A329313(2*A244120(n))`
-/

namespace A399096.P14512761073505687878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (2 * A244120 n).toNat

end

end A399096.P14512761073505687878

/-!
# A399097: Triangle read by rows: T(n,k) is the number of unlabeled rooted trees with n nodes of which k are furthest from the root.

The programs for A399097, there is no canonical definition to state claims against.
-/

/-! ## A399097.P5275007224560122172

`A238125(n)^A375940(A084938(n))`
-/

namespace A399097.P5275007224560122172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238125 n : ℚ) ^ (A375940 (A084938 n).toNat : ℤ)

end

end A399097.P5275007224560122172

/-! ## A399097.P8116536703315868086

`A238125(n)^A238125(A146607(n+3))`
-/

namespace A399097.P8116536703315868086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238125 n : ℚ) ^ (A238125 (A146607 (n + 3)).toNat : ℤ)

end

end A399097.P8116536703315868086

/-! ## A399097.P1511985004456766570

`A352513(A327351(n)+1)`
-/

namespace A399097.P1511985004456766570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A327351 n + 1).toNat

end

end A399097.P1511985004456766570

/-! ## A399097.P2369943508082859910

`A228747(A107152(n+1))+A228717(n+1)`
-/

namespace A399097.P2369943508082859910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228747 (A107152 (n + 1)).toNat + A228717 (n + 1)

end

end A399097.P2369943508082859910

/-! ## A399097.P16739078763612570999

`A248908(A299479(2*n+1))+A106234(n+2)`
-/

namespace A399097.P16739078763612570999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (A299479 (2 * n + 1)).toNat + A106234 (n + 2)

end

end A399097.P16739078763612570999

/-!
# A399099: Number of simple connected graphs on n nodes with clique cover number 2.

The programs for A399099, there is no canonical definition to state claims against.
-/

/-! ## A399099.P17282914573145501474

`A079571(n+1)-1`
-/

namespace A399099.P17282914573145501474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079571 (n + 1) - 1

end

end A399099.P17282914573145501474

/-! ## A399099.P8215613327997610693

`A076278(n+1)-Δ[A002620(n)]`
-/

namespace A399099.P8215613327997610693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (n + 1) - (f1 (n + 1) - f1 n)

end

end A399099.P8215613327997610693

/-! ## A399099.P10762602932180529435

`A076278(n+1)-A004526(n+1)`
-/

namespace A399099.P10762602932180529435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (n + 1) - A004526 (n + 1)

end

end A399099.P10762602932180529435

/-! ## A399099.P3893584804871053774

`A033995(n+1)-A095773(n+1)`
-/

namespace A399099.P3893584804871053774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (n + 1) - A095773 (n + 1)

end

end A399099.P3893584804871053774

/-! ## A399099.P10171960064400939068

`A076278(n+1)-∑[A059841(3*(n+1))]`
-/

namespace A399099.P10171960064400939068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399099.P10171960064400939068

