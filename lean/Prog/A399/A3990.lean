import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C001
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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

/-! ## A399025.P1831861613835937180

`A025850(A005918(n+1))`
-/

namespace A399025.P1831861613835937180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 (A005918 (n + 1)).toNat

end

end A399025.P1831861613835937180

namespace A399025

/-- `A025850(A005918(n+1))` -/
def P1831861613835937180.Spec : Prop :=
  ∀ n, P1831861613835937180.a n = A399025 (n + 1)

end A399025

/-!
# A399027: Expansion of e.g.f. exp(sinh(x) + sinh(x)^2).

The programs for A399027, there is no canonical definition to state claims against.
-/

/-! ## A399027.P15285832894673357170

`A356955(A092566(n))`
-/

namespace A399027.P15285832894673357170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (A092566 n).toNat

end

end A399027.P15285832894673357170

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

/-! ## A399031.P6291918774602819933

`A353724(A161345(n+1))`
-/

namespace A399031.P6291918774602819933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353724 (A161345 (n + 1)).toNat

end

end A399031.P6291918774602819933

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

/-! ## A399049.P3624123148034478123

`A130245(A365044(n))`
-/

namespace A399049.P3624123148034478123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A365044 n).toNat

end

end A399049.P3624123148034478123

/-! ## A399049.P15641558654744828676

`A061420(A047131(n))`
-/

namespace A399049.P15641558654744828676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A047131 n).toNat

end

end A399049.P15641558654744828676

/-! ## A399049.P14071567170628854158

`A061420(A079116(n))`
-/

namespace A399049.P14071567170628854158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A079116 n).toNat

end

end A399049.P14071567170628854158

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

/-! ## A399057.P8301117463988086780

`filter[A334075(n+1), A073784(#)]`
-/

namespace A399057.P8301117463988086780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073784 (f1 j).toNat = 1) n)

end

end A399057.P8301117463988086780

/-!
# A399061: Expansion of e.g.f. exp(x * cosh(x)^2).

The programs for A399061, there is no canonical definition to state claims against.
-/

/-! ## A399061.P2105382967789212569

`or(A103221(A094258(n+1)), A254036(n))`
-/

namespace A399061.P2105382967789212569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103221 (A094258 (n + 1)).toNat) (A254036 n)

end

end A399061.P2105382967789212569

/-! ## A399061.P3735941280048635642

`A060789(A087906(n+1)+A066246(n+1))`
-/

namespace A399061.P3735941280048635642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A087906 (n + 1) + A066246 (n + 1)).toNat

end

end A399061.P3735941280048635642

/-!
# A399062: Expansion of e.g.f. exp(x * cosh(x)^3).

The programs for A399062, there is no canonical definition to state claims against.
-/

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

/-! ## A399070.P7039885559357993918

`A006530((2*n+1)*A002587(n))`
-/

namespace A399070.P7039885559357993918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n + 1 : ℤ) * A002587 n).toNat

end

end A399070.P7039885559357993918

/-! ## A399070.P8615628819490961791

`A139171(2^n+1)`
-/

namespace A399070.P8615628819490961791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (2 ^ n + 1)

end

end A399070.P8615628819490961791

/-! ## A399070.P11112272490764496891

`A263027(2^n+1)`
-/

namespace A399070.P11112272490764496891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (2 ^ n + 1)

end

end A399070.P11112272490764496891

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

/-! ## A399088.P9424272592030475781

`A126863(A333264(n))`
-/

namespace A399088.P9424272592030475781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126863 (A333264 n).toNat

end

end A399088.P9424272592030475781

namespace A399088

/-- `A126863(A333264(n))` -/
def P9424272592030475781.Spec : Prop :=
  ∀ n, P9424272592030475781.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P479939569050731162

`A360240(A048505(n+1))`
-/

namespace A399088.P479939569050731162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360240 (A048505 (n + 1)).toNat

end

end A399088.P479939569050731162

namespace A399088

/-- `A360240(A048505(n+1))` -/
def P479939569050731162.Spec : Prop :=
  ∀ n, P479939569050731162.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P18026081949338755768

`A323303(A130640(n+1))`
-/

namespace A399088.P18026081949338755768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323303 (A130640 (n + 1)).toNat

end

end A399088.P18026081949338755768

namespace A399088

/-- `A323303(A130640(n+1))` -/
def P18026081949338755768.Spec : Prop :=
  ∀ n, P18026081949338755768.a n = A399088 (n + 1)

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

/-! ## A399089.P1830818661584241957

`A109004(A046787(n+1))`
-/

namespace A399089.P1830818661584241957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A046787 (n + 1)).toNat

end

end A399089.P1830818661584241957

namespace A399089

/-- `A109004(A046787(n+1))` -/
def P1830818661584241957.Spec : Prop :=
  ∀ n, P1830818661584241957.a n = A399089 (n + 2)

end A399089

/-! ## A399089.P10165514840234866115

`A376365(A379370(n+1))`
-/

namespace A399089.P10165514840234866115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376365 (A379370 (n + 1)).toNat

end

end A399089.P10165514840234866115

namespace A399089

/-- `A376365(A379370(n+1))` -/
def P10165514840234866115.Spec : Prop :=
  ∀ n, P10165514840234866115.a n = A399089 (n + 2)

end A399089

/-!
# A399091: The maximum exponent in the prime factorization of the cubefree numbers k such that k+1 is also cubefree.

The programs for A399091, the canonical program `A399091.P3397790440992818153` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399091 has offset 1).

The definition of A399091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A340152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399091.P3397790440992818153

`A051903(A340152(n+1))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A399091

/-- `A051903(A340152(n+1))` -/
def P3397790440992818153.Spec : Prop :=
  ∀ n, P3397790440992818153.a n = A399091 (n + 1)

theorem P3397790440992818153.correct : P3397790440992818153.Spec := by
  intro n
  simp only [A399091, Nat.add_sub_cancel]

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

/-! ## A399091.P12376303030876856005

`A374034(A278821(n))`
-/

namespace A399091.P12376303030876856005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374034 (A278821 n).toNat

end

end A399091.P12376303030876856005

namespace A399091

/-- `A374034(A278821(n))` -/
def P12376303030876856005.Spec : Prop :=
  ∀ n, P12376303030876856005.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P6550846426749835599

`A105553(A277688(n+1))`
-/

namespace A399091.P6550846426749835599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105553 (A277688 (n + 1)).toNat

end

end A399091.P6550846426749835599

namespace A399091

/-- `A105553(A277688(n+1))` -/
def P6550846426749835599.Spec : Prop :=
  ∀ n, P6550846426749835599.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P18418649651386479232

`A304886(A255071(n+1))`
-/

namespace A399091.P18418649651386479232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304886 (A255071 (n + 1)).toNat

end

end A399091.P18418649651386479232

namespace A399091

/-- `A304886(A255071(n+1))` -/
def P18418649651386479232.Spec : Prop :=
  ∀ n, P18418649651386479232.a n = A399091 (n + 1)

end A399091

/-!
# A399092: The maximum exponent in the prime factorization of the nonsquarefree numbers k such that k+1 is also nonsquarefree.

The programs for A399092, the canonical program `A399092.P10321508231479955331` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399092 has offset 1).

The definition of A399092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399092.P10321508231479955331

`A051903(A068781(n+1))`

The canonical program, it is in `Seq.B005.C002`.
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

/-!
# A399093: The maximum exponent in the prime factorization of the exponentially odd numbers k such that k+1 is also exponentially odd.

The programs for A399093, the canonical program `A399093.P13952728189661185523` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399093 has offset 1).

The definition of A399093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A367695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399093.P13952728189661185523

`A051903(A367695(n+1))`

The canonical program, it is in `Seq.B006.C001`.
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

/-! ## A399096.P9213261291243116584

`A176724(A143611(n+2))`
-/

namespace A399096.P9213261291243116584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176724 (A143611 (n + 2)).toNat

end

end A399096.P9213261291243116584

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

