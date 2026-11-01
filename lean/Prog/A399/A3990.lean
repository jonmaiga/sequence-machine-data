import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-! ## A399007.P13041477933299019927

`A289498(A243659(n))+n`
-/

namespace A399007.P13041477933299019927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A243659 n).toNat + (n : ℤ)

end

end A399007.P13041477933299019927

/-!
# A399009: Number of inequivalent ways to place zero or more non-attacking rooks on an n X n board up to rectangular symmetries of the board.

The programs for A399009, there is no canonical definition to state claims against.
-/

/-! ## A399009.P1795894500424825842

`A159786(A007579(n))+n+1`
-/

namespace A399009.P1795894500424825842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 (A007579 n).toNat + (n + 1 : ℤ)

end

end A399009.P1795894500424825842

/-! ## A399009.P11705050527003570649

`A159786(A394273(n+1))+n+1`
-/

namespace A399009.P11705050527003570649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 (A394273 (n + 1)).toNat + (n + 1 : ℤ)

end

end A399009.P11705050527003570649

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

/-! ## A399011.P4994521834380216542

`A276798(A111537(n)+A018038(n))`
-/

namespace A399011.P4994521834380216542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A111537 n + A018038 n).toNat

end

end A399011.P4994521834380216542

/-!
# A399012: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled vertices with feedback vertex set number k and without endpoints, 0 <= k < n.

The programs for A399012, there is no canonical definition to state claims against.
-/

/-! ## A399012.P15615705698295079088

`A068063(A324564(n)*A393938(n+1))`
-/

namespace A399012.P15615705698295079088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A324564 n * A393938 (n + 1)).toNat

end

end A399012.P15615705698295079088

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

The programs for A399018, the canonical program `A399018.P4841991023451713736` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399018 has offset 0).

The definition of A399018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399018.P4841991023451713736

`ogf((6+42x+54x^2+78x^3+12x^4)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C051`.
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

The programs for A399019, the canonical program `A399019.P10843594979958510368` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399019 has offset 0).

The definition of A399019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399019.P10843594979958510368

`ogf((12x+78x^2+54x^3+42x^4+6x^5)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A399022.P13412688767731401416

`A086016(A065345(n+1))+col(n)`
-/

namespace A399022.P13412688767731401416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A065345 (n + 1)).toNat + (SequenceMachineLib.triCol n : ℤ)

end

end A399022.P13412688767731401416

/-! ## A399022.P8881516352912978361

`A086078(A306245(2*n)+1)+col(n)`
-/

namespace A399022.P8881516352912978361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A306245 (2 * n) + 1).toNat + (SequenceMachineLib.triCol n : ℤ)

end

end A399022.P8881516352912978361

/-! ## A399022.P12659200537175743741

`C(val(A114971(n+5)², 7), 2)+col(n)`
-/

namespace A399022.P12659200537175743741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (A114971 (n + 5) ^ 2).toNat 7) 2 + SequenceMachineLib.triCol n

end

end A399022.P12659200537175743741

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

The programs for A399025, the canonical program `A399025.P5372413828234583892` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399025 has offset 1).

The definition of A399025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399025.P5372413828234583892

`∑[∑[ceil((n/2)²)]]`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A399025.P7307349720694053209

`C(n+1, 3)+n+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A399025.P7307349720694053209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (n + 1) 3 + n + a (n - 2)

end

end A399025.P7307349720694053209

namespace A399025

/-- `C(n+1, 3)+n+a(n-2)` -/
def P7307349720694053209.Spec : Prop :=
  ∀ n, (P7307349720694053209.a n : ℤ) = A399025 (n + 1)

end A399025

/-! ## A399025.P5704833043873969752

`a(n-2)+n*(n²+5)/6` with `a(0)=0, a(1)=1`
-/

namespace A399025.P5704833043873969752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n * (n ^ 2 + 5) : ℚ) / 6

end

end A399025.P5704833043873969752

namespace A399025

/-- `a(n-2)+n*(n²+5)/6` -/
def P5704833043873969752.Spec : Prop :=
  ∀ n, P5704833043873969752.a n = (A399025 (n + 1) : ℚ)

end A399025

/-! ## A399025.P280283100362920707

`∑[∑[n-1]+2]-1+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A399025.P280283100362920707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + a (n - 2)

end

end A399025.P280283100362920707

namespace A399025

/-- `∑[∑[n-1]+2]-1+a(n-2)` -/
def P280283100362920707.Spec : Prop :=
  ∀ n, P280283100362920707.a n = A399025 (n + 1)

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

/-! ## A399029.P12043168723717882928

`A076885(∑[A000272(n)]+1)`
-/

namespace A399029.P12043168723717882928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A399029.P12043168723717882928

/-!
# A399031: Least positive k such that some nontrivial proper divisor d of n satisfies d+k | n+k; 0 if no such k exists.

The programs for A399031, there is no canonical definition to state claims against.
-/

/-! ## A399031.P7227602016221781231

`A100040(n)%A321893(n+1)`
-/

namespace A399031.P7227602016221781231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100040 n) (A321893 (n + 1))

end

end A399031.P7227602016221781231

/-! ## A399031.P15146574259139002980

`A129283(A114874(n+1))%A333752(n+1)`
-/

namespace A399031.P15146574259139002980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 (A114874 (n + 1)).toNat) (A333752 (n + 1))

end

end A399031.P15146574259139002980

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

/-! ## A399033.P3468460947291805648

`A255573(A000166(n+3))`
-/

namespace A399033.P3468460947291805648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 (A000166 (n + 3)).toNat

end

end A399033.P3468460947291805648

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

/-! ## A399035.P11558427935383641348

`A000296(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A399035.P11558427935383641348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000296 (n - 1) - a (n - 1)

end

end A399035.P11558427935383641348

namespace A399035

/-- `A000296(n-1)-a(n-1)` -/
def P11558427935383641348.Spec : Prop :=
  ∀ n, P11558427935383641348.a n = A399035 n

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
# A399037: Number of strongly connected digraphs on n unlabeled nodes with a distinguished node at which they are reducible as a flow graph, counted up to isomorphism fixing that node.

The programs for A399037, there is no canonical definition to state claims against.
-/

/-! ## A399037.P18409886393303182045

`A399875(n+2)/A000005(A006530(n+1))`
-/

namespace A399037.P18409886393303182045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399875 (n + 2) : ℚ) / (A000005 (A006530 (n + 1)).toNat : ℚ)

end

end A399037.P18409886393303182045

/-!
# A399040: Total number of connected components in all induced subgraphs of the n-ladder graph.

The programs for A399040, the canonical program `A399040.P4362929268690130338` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399040 has offset 1).

The definition of A399040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399040.P4362929268690130338

`ogf((3-7x)/(1-8x+16x^2))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A399040.P5095736373955498607

`(n/4+n+3)*4^n`
-/

namespace A399040.P5095736373955498607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 4 + (n + 3 : ℚ)) * (4 ^ n : ℚ)

end

end A399040.P5095736373955498607

namespace A399040

/-- `(n/4+n+3)*4^n` -/
def P5095736373955498607.Spec : Prop :=
  ∀ n, P5095736373955498607.a n = (A399040 (n + 1) : ℚ)

end A399040

/-! ## A399040.P7371813465732493397

`A003947(n)+4*a(n-1)` with `a(0)=3`
-/

namespace A399040.P7371813465732493397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003947 n + 4 * a (n - 1)

end

end A399040.P7371813465732493397

namespace A399040

/-- `A003947(n)+4*a(n-1)` -/
def P7371813465732493397.Spec : Prop :=
  ∀ n, P7371813465732493397.a n = A399040 (n + 1)

end A399040

/-! ## A399040.P530484212251162288

`A079028(n)+(n+2)*4^n`
-/

namespace A399040.P530484212251162288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079028 n + ((n + 2) * 4 ^ n : ℤ)

end

end A399040.P530484212251162288

namespace A399040

/-- `A079028(n)+(n+2)*4^n` -/
def P530484212251162288.Spec : Prop :=
  ∀ n, P530484212251162288.a n = A399040 (n + 1)

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

The programs for A399041, the canonical program `A399041.P15010380011353425428` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399041 has offset 1).

The definition of A399041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399041.P15010380011353425428

`ogf((8-48x+41x^2)/(1-17x+80x^2-64x^3))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A399042.P9880888416043054780

`A399039(∑[n+3]+7)`
-/

namespace A399042.P9880888416043054780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A399042.P9880888416043054780

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

/-! ## A399043.P11844444700136386046

`2*A194974(A264128(n+1))-A001586(A084938(n))`
-/

namespace A399043.P11844444700136386046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194974 (A264128 (n + 1)).toNat - A001586 (A084938 n).toNat

end

end A399043.P11844444700136386046

/-! ## A399043.P430175480030628081

`2*A194974(A264128(n+1))-A362613(A240347(n+1))`
-/

namespace A399043.P430175480030628081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194974 (A264128 (n + 1)).toNat - A362613 (A240347 (n + 1)).toNat

end

end A399043.P430175480030628081

/-!
# A399045: Total number of connected components in all induced subgraphs of the n X 2 rook graph.

The programs for A399045, the canonical program `A399045.P5360054208156754306` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399045 has offset 0).

The definition of A399045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399045.P5360054208156754306

`4^n+3^n-2*2^n`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A399045.P7516459108232258204

`abs(A003063(n+1)+4^n)`
-/

namespace A399045.P7516459108232258204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003063 (n + 1) + (4 ^ n : ℤ)|

end

end A399045.P7516459108232258204

namespace A399045

/-- `abs(A003063(n+1)+4^n)` -/
def P7516459108232258204.Spec : Prop :=
  ∀ n, P7516459108232258204.a n = A399045 n

end A399045

/-! ## A399045.P11284204881405189403

`abs(A245804(n)+A083324(n))`
-/

namespace A399045.P11284204881405189403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245804 n + A083324 n|

end

end A399045.P11284204881405189403

namespace A399045

/-- `abs(A245804(n)+A083324(n))` -/
def P11284204881405189403.Spec : Prop :=
  ∀ n, P11284204881405189403.a n = A399045 n

end A399045

/-! ## A399045.P11972045378136042350

`abs(A007283(n)-(A000079(n)+A074605(n)))`
-/

namespace A399045.P11972045378136042350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007283 n - (A000079 n + A074605 n)|

end

end A399045.P11972045378136042350

namespace A399045

/-- `abs(A007283(n)-(A000079(n)+A074605(n)))` -/
def P11972045378136042350.Spec : Prop :=
  ∀ n, P11972045378136042350.a n = A399045 n

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

/-! ## A399045.P16916381935502410757

`or(A165665(n)-A085350(n), A131743(n))`
-/

namespace A399045.P16916381935502410757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165665 n - A085350 n) (A131743 n)

end

end A399045.P16916381935502410757

namespace A399045

/-- `or(A165665(n)-A085350(n), A131743(n))` -/
def P16916381935502410757.Spec : Prop :=
  ∀ n, P16916381935502410757.a n = A399045 n

end A399045

/-!
# A399046: Total number of connected components in all induced subgraphs of the n X 3 rook graph.

The programs for A399046, the canonical program `A399046.P10866800930197794789` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399046 has offset 0).

The definition of A399046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399046.P10866800930197794789

`8^n+3*5^n-4*4^n`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A399049.P133487795920806212

`∪[A248180(3*n+1), A307074(A352313(n))]`
-/

namespace A399049.P133487795920806212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307074 (A352313 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399049.P133487795920806212

/-! ## A399049.P15561241690431160444

`∪[A248180(3*n+1), A307074(A039716(n+1))]`
-/

namespace A399049.P15561241690431160444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307074 (A039716 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399049.P15561241690431160444

/-! ## A399049.P16489462027279894353

`∪[A248180(3*n+1), A348872(A355194(2*n))]`
-/

namespace A399049.P16489462027279894353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348872 (A355194 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399049.P16489462027279894353

/-! ## A399049.P15458176088452388257

`∑[(A070939(A346734(n))+1)%2+1]`
-/

namespace A399049.P15458176088452388257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A346734 n).toNat + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399049.P15458176088452388257

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

/-! ## A399053.P12744250453897975010

`∑[(n+1)*∏{e}[1+n, round(1/#)]]`
-/

namespace A399053.P12744250453897975010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P12744250453897975010

namespace A399053

/-- `∑[(n+1)*∏{e}[1+n, round(1/#)]]` -/
def P12744250453897975010.Spec : Prop :=
  ∀ n, P12744250453897975010.a n = A399053 (n + 1)

end A399053

/-! ## A399053.P14507407617912258630

`∑[lcm(n+1, ∏{e}[1+n, round(1/#)])]`
-/

namespace A399053.P14507407617912258630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P14507407617912258630

namespace A399053

/-- `∑[lcm(n+1, ∏{e}[1+n, round(1/#)])]` -/
def P14507407617912258630.Spec : Prop :=
  ∀ n, (P14507407617912258630.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P3380532622885919108

`∑[C(∏{p}[1+n, gcd(n+1, #²)], n)]`
-/

namespace A399053.P3380532622885919108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P3380532622885919108

namespace A399053

/-- `∑[C(∏{p}[1+n, gcd(n+1, #²)], n)]` -/
def P3380532622885919108.Spec : Prop :=
  ∀ n, (P3380532622885919108.a n : ℤ) = A399053 (n + 1)

end A399053

/-! ## A399053.P944166710492394163

`∑[C(A007948(1+n), n)]`
-/

namespace A399053.P944166710492394163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007948 (1 + n)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399053.P944166710492394163

namespace A399053

/-- `∑[C(A007948(1+n), n)]` -/
def P944166710492394163.Spec : Prop :=
  ∀ n, (P944166710492394163.a n : ℤ) = A399053 (n + 1)

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

/-! ## A399054.P13469777366718777167

`A130233(A397115(n+1))*A212916(n)`
-/

namespace A399054.P13469777366718777167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A397115 (n + 1)).toNat * A212916 n

end

end A399054.P13469777366718777167

/-!
# A399055: Number of distinct terminal state loops of Rule 30 cellular automaton in a cyclic universe of width n.

The programs for A399055, there is no canonical definition to state claims against.
-/

/-! ## A399055.P16762200340086366731

`A001221(A006787(n+1))+A000700(n)`
-/

namespace A399055.P16762200340086366731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006787 (n + 1)).toNat + A000700 n

end

end A399055.P16762200340086366731

/-! ## A399055.P3943087585652188174

`A010051(n+4)+A000700(A389265(n))`
-/

namespace A399055.P3943087585652188174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 4) + A000700 (A389265 n).toNat

end

end A399055.P3943087585652188174

/-! ## A399055.P15126391231214096908

`A003056(n+4)-A261769(A328768(n+4)+1)`
-/

namespace A399055.P15126391231214096908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 4) - A261769 (A328768 (n + 4) + 1).toNat

end

end A399055.P15126391231214096908

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

/-! ## A399056.P9894630377338448530

`A078435(n+1)-∑[A014085(n)]`
-/

namespace A399056.P9894630377338448530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078435 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399056.P9894630377338448530

namespace A399056

/-- `A078435(n+1)-∑[A014085(n)]` -/
def P9894630377338448530.Spec : Prop :=
  ∀ n, P9894630377338448530.a n = A399056 (n + 1)

end A399056

/-! ## A399056.P3344510283056840615

`∑[A161182(n+1)-A014085(n)]`
-/

namespace A399056.P3344510283056840615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1) - A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399056.P3344510283056840615

namespace A399056

/-- `∑[A161182(n+1)-A014085(n)]` -/
def P3344510283056840615.Spec : Prop :=
  ∀ n, P3344510283056840615.a n = A399056 (n + 1)

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

/-! ## A399057.P9984650819465896574

`A319564(4^(n-row(n)))`
-/

namespace A399057.P9984650819465896574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319564 (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.triRow n : ℤ) : ℤ))).toNat

end

end A399057.P9984650819465896574

/-!
# A399058: Sum of the sizes of the odd indexed blocks minus sum of the sizes of the even indexed blocks in all set partitions of [n].

The programs for A399058, there is no canonical definition to state claims against.
-/

/-! ## A399058.P5436230262392162125

`round(A030530(A391307(n))/3)`
-/

namespace A399058.P5436230262392162125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030530 (A391307 n).toNat : ℚ) / 3)

end

end A399058.P5436230262392162125

/-! ## A399058.P14356586962142186251

`A186999(n)%(A038379(n+2)-4)`
-/

namespace A399058.P14356586962142186251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186999 n) (A038379 (n + 2) - 4)

end

end A399058.P14356586962142186251

/-! ## A399058.P2859250577439827158

`A023193(A200215(n))-A000007(n)`
-/

namespace A399058.P2859250577439827158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A200215 n).toNat - A000007 n

end

end A399058.P2859250577439827158

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

/-! ## A399061.P17944964570067820395

`A141627(n)*A327104(2^n)`
-/

namespace A399061.P17944964570067820395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141627 n * A327104 (2 ^ n)

end

end A399061.P17944964570067820395

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

/-! ## A399063.P5497899539049171748

`A110091(A000142(n)*A080013(n+4))`
-/

namespace A399063.P5497899539049171748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (A000142 n * A080013 (n + 4)).toNat

end

end A399063.P5497899539049171748

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
# A399065: Expansion of e.g.f. 1/(1 - x*cosh(x)^3).

The programs for A399065, there is no canonical definition to state claims against.
-/

/-! ## A399065.P10113209929912550668

`A218510(lt[A074476(n+2), A395566(n+2)])`
-/

namespace A399065.P10113209929912550668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074476 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399065.P10113209929912550668

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

/-! ## A399069.P7003260926264279782

`(2*n)!/(n!*(n+1)!)*A068063(∑{#}[n, C(n, #)²]/(n+1))`
-/

namespace A399069.P7003260926264279782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ) * (A068063 (SequenceMachineLib.roundAway (((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ))).toNat : ℚ)

end

end A399069.P7003260926264279782

/-! ## A399069.P7142885916592951638

`(2*n)!/(n!*(n+1)!)*A068063((2*n)!/(n!*(n+1)!))`
-/

namespace A399069.P7142885916592951638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ) * (A068063 (SequenceMachineLib.roundAway ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ))).toNat : ℚ)

end

end A399069.P7142885916592951638

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

/-! ## A399070.P18131943629109770107

`A006530((2+char[3])^n+1)`
-/

namespace A399070.P18131943629109770107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 + (if ∃ j, f1 j = n then 1 else 0)) ^ n + 1)

end

end A399070.P18131943629109770107

/-! ## A399070.P8574360967695901928

`A088387(A002587(n)*A007652(n+1))`
-/

namespace A399070.P8574360967695901928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A002587 n * A007652 (n + 1)).toNat

end

end A399070.P8574360967695901928

/-! ## A399070.P11447506385893741931

`A088387(A002587(n)*A269402(n+1))`
-/

namespace A399070.P11447506385893741931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A002587 n * A269402 (n + 1)).toNat

end

end A399070.P11447506385893741931

/-! ## A399070.P8615628819490961791

`A139171(2^n+1)`
-/

namespace A399070.P8615628819490961791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (2 ^ n + 1)

end

end A399070.P8615628819490961791

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

/-! ## A399076.P15444608851778768203

`A000194(A343937(n+1))-A122888(n)`
-/

namespace A399076.P15444608851778768203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A343937 (n + 1)).toNat - A122888 n

end

end A399076.P15444608851778768203

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

/-! ## A399077.P16354884053092561098

`A351846(A088305(n))-A000009(n)`
-/

namespace A399077.P16354884053092561098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A088305 n).toNat - A000009 n

end

end A399077.P16354884053092561098

/-! ## A399077.P16784920763651241811

`A000045(n)-A001222(A072346(n+2))`
-/

namespace A399077.P16784920763651241811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A001222 (A072346 (n + 2)).toNat

end

end A399077.P16784920763651241811

/-!
# A399078: G.f.: (Sum_{k>=1} k*x^(2*k)/(1 - x^(2*k))) / Product_{k>=1} (1 - x^k).

The programs for A399078, there is no canonical definition to state claims against.
-/

/-! ## A399078.P13573495060751718470

`A066966(A028310(n))/2`
-/

namespace A399078.P13573495060751718470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066966 (A028310 n).toNat : ℚ) / 2

end

end A399078.P13573495060751718470

/-! ## A399078.P6558086943132842706

`A066966(A000007(n)+n)/2`
-/

namespace A399078.P6558086943132842706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066966 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A399078.P6558086943132842706

/-! ## A399078.P9536882216990605868

`(A066966(n+1)-A206436(n+1))/2`
-/

namespace A399078.P9536882216990605868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066966 (n + 1) - A206436 (n + 1) : ℚ) / 2

end

end A399078.P9536882216990605868

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
# A399087: Numbers k such that k and k+1 are both biquadratefree numbers that are not cubefree (A375072).

The programs for A399087, there is no canonical definition to state claims against.
-/

/-! ## A399087.P14188232786304256846

`A176313(record[A152271(n)%A081101(2*n+3)])`
-/

namespace A399087.P14188232786304256846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152271 n) (A081101 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399087.P14188232786304256846

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

/-! ## A399088.P18181228728722708325

`A051903(1+comp[A105570(n)])`
-/

namespace A399088.P18181228728722708325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A399088.P18181228728722708325

namespace A399088

/-- `A051903(1+comp[A105570(n)])` -/
def P18181228728722708325.Spec : Prop :=
  ∀ n, P18181228728722708325.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P5516395196404713537

`A051903(1+A005117(1+n))`
-/

namespace A399088.P5516395196404713537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (1 + A005117 (1 + n)).toNat

end

end A399088.P5516395196404713537

namespace A399088

/-- `A051903(1+A005117(1+n))` -/
def P5516395196404713537.Spec : Prop :=
  ∀ n, P5516395196404713537.a n = A399088 (n + 1)

theorem P5516395196404713537.correct : P5516395196404713537.Spec := by
  intro n
  simp only [A399088, Nat.add_sub_cancel, A399088.P5516395196404713537.a, A399088.P9966872433898824773.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A399088

/-! ## A399088.P6874298304332879655

`A051903(sqrt(A062503(1+n))+1)`
-/

namespace A399088.P6874298304332879655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (1 + n) : ℝ) + 1)).toNat

end

end A399088.P6874298304332879655

namespace A399088

/-- `A051903(sqrt(A062503(1+n))+1)` -/
def P6874298304332879655.Spec : Prop :=
  ∀ n, P6874298304332879655.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P9116705717186870417

`A051903(record[A007913(1+n)+1])`
-/

namespace A399088.P9116705717186870417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (1 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399088.P9116705717186870417

namespace A399088

/-- `A051903(record[A007913(1+n)+1])` -/
def P9116705717186870417.Spec : Prop :=
  ∀ n, P9116705717186870417.a n = A399088 (n + 1)

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
  simp only [A399088, Nat.add_sub_cancel, A399088.P15502580616426777872.f1, A399088.P15502580616426777872.a, A399088.P9966872433898824773.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051903, A051903.P11291969349735355414.f1, A051903.P11291969349735355414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A399088

/-! ## A399088.P6248226094916325011

`A051903(record[A039696(n+1)])`
-/

namespace A399088.P6248226094916325011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399088.P6248226094916325011

namespace A399088

/-- `A051903(record[A039696(n+1)])` -/
def P6248226094916325011.Spec : Prop :=
  ∀ n, P6248226094916325011.a n = A399088 (n + 1)

end A399088

/-! ## A399088.P10278360527287809144

`A334572(A005117(n+1)+1)`
-/

namespace A399088.P10278360527287809144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (A005117 (n + 1) + 1).toNat

end

end A399088.P10278360527287809144

namespace A399088

/-- `A334572(A005117(n+1)+1)` -/
def P10278360527287809144.Spec : Prop :=
  ∀ n, P10278360527287809144.a n = A399088 (n + 1)

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

/-! ## A399088.P10632204753138710083

`A334572(sqrt(A062503(1+n))+1)`
-/

namespace A399088.P10632204753138710083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (1 + n) : ℝ) + 1)).toNat

end

end A399088.P10632204753138710083

namespace A399088

/-- `A334572(sqrt(A062503(1+n))+1)` -/
def P10632204753138710083.Spec : Prop :=
  ∀ n, P10632204753138710083.a n = A399088 (n + 1)

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

/-! ## A399089.P12930890849675423355

`A051903(∑[A076259(1+n)])`
-/

namespace A399089.P12930890849675423355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399089.P12930890849675423355

namespace A399089

/-- `A051903(∑[A076259(1+n)])` -/
def P12930890849675423355.Spec : Prop :=
  ∀ n, P12930890849675423355.a n = A399089 (n + 2)

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

/-! ## A399089.P333046142578649931

`A051903(lt[1, A100112(n+1)])`
-/

namespace A399089.P333046142578649931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A399089.P333046142578649931

namespace A399089

/-- `A051903(lt[1, A100112(n+1)])` -/
def P333046142578649931.Spec : Prop :=
  ∀ n, P333046142578649931.a n = A399089 (n + 2)

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

The programs for A399090, the canonical program `A399090.P13526670085507445655` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399090 has offset 1).

The definition of A399090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399090.P13526670085507445655

`A051903(A335275(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399090

/-- `A051903(A335275(n+1))` -/
def P13526670085507445655.Spec : Prop :=
  ∀ n, P13526670085507445655.a n = A399090 (n + 1)

theorem P13526670085507445655.correct : P13526670085507445655.Spec := by
  intro n
  simp only [A399090, Nat.add_sub_cancel]

end A399090

/-! ## A399090.P14221153623357702902

`A051903(lt[A295662(n+1), 1]+1)`
-/

namespace A399090.P14221153623357702902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A399090.P14221153623357702902

namespace A399090

/-- `A051903(lt[A295662(n+1), 1]+1)` -/
def P14221153623357702902.Spec : Prop :=
  ∀ n, P14221153623357702902.a n = A399090 (n + 1)

end A399090

/-! ## A399090.P15615953741794737805

`A051903(record[A056192(n+1)])`
-/

namespace A399090.P15615953741794737805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399090.P15615953741794737805

namespace A399090

/-- `A051903(record[A056192(n+1)])` -/
def P15615953741794737805.Spec : Prop :=
  ∀ n, P15615953741794737805.a n = A399090 (n + 1)

end A399090

/-! ## A399090.P17594876861248486299

`A051903(A220218(n+1))%A214531(A306231(n+1)+1)`
-/

namespace A399090.P17594876861248486299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A220218 (n + 1)).toNat) (A214531 (A306231 (n + 1) + 1).toNat)

end

end A399090.P17594876861248486299

namespace A399090

/-- `A051903(A220218(n+1))%A214531(A306231(n+1)+1)` -/
def P17594876861248486299.Spec : Prop :=
  ∀ n, P17594876861248486299.a n = A399090 (n + 1)

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

/-! ## A399091.P5765314165899351678

`A051903(∩[A398164(n+1), A398165(n+1)])`
-/

namespace A399091.P5765314165899351678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398165 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A399091.P5765314165899351678

namespace A399091

/-- `A051903(∩[A398164(n+1), A398165(n+1)])` -/
def P5765314165899351678.Spec : Prop :=
  ∀ n, P5765314165899351678.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P8650999927997369123

`A290107(A340152(n+1))%A321557(n+1)`
-/

namespace A399091.P8650999927997369123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290107 (A340152 (n + 1)).toNat) (A321557 (n + 1))

end

end A399091.P8650999927997369123

namespace A399091

/-- `A290107(A340152(n+1))%A321557(n+1)` -/
def P8650999927997369123.Spec : Prop :=
  ∀ n, P8650999927997369123.a n = A399091 (n + 1)

end A399091

/-! ## A399091.P9414454311254769150

`A051903(record[(n+1)/(A061704(n+2)*A061704(n+1))])`
-/

namespace A399091.P9414454311254769150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061704 (n + 2) * A061704 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A399091.P9414454311254769150

namespace A399091

/-- `A051903(record[(n+1)/(A061704(n+2)*A061704(n+1))])` -/
def P9414454311254769150.Spec : Prop :=
  ∀ n, P9414454311254769150.a n = A399091 (n + 1)

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

/-! ## A399092.P11597010806821975363

`A051903(lt[A007913(n+1), A105570(n)])`
-/

namespace A399092.P11597010806821975363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399092.P11597010806821975363

namespace A399092

/-- `A051903(lt[A007913(n+1), A105570(n)])` -/
def P11597010806821975363.Spec : Prop :=
  ∀ n, P11597010806821975363.a n = A399092 (n + 1)

end A399092

/-! ## A399092.P6870861150548924994

`A051903(lt[A007947(n+1), A105570(n)])`
-/

namespace A399092.P6870861150548924994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399092.P6870861150548924994

namespace A399092

/-- `A051903(lt[A007947(n+1), A105570(n)])` -/
def P6870861150548924994.Spec : Prop :=
  ∀ n, P6870861150548924994.a n = A399092 (n + 1)

end A399092

/-! ## A399092.P14179081087038932958

`A051903(lt[A083346(n+1), A105570(n)])`
-/

namespace A399092.P14179081087038932958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399092.P14179081087038932958

namespace A399092

/-- `A051903(lt[A083346(n+1), A105570(n)])` -/
def P14179081087038932958.Spec : Prop :=
  ∀ n, P14179081087038932958.a n = A399092 (n + 1)

end A399092

/-! ## A399092.P6540897418272561279

`A051903(eq[A008683(n+2)/2, A008683(n+3)]+2)`
-/

namespace A399092.P6540897418272561279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2)

end

end A399092.P6540897418272561279

namespace A399092

/-- `A051903(eq[A008683(n+2)/2, A008683(n+3)]+2)` -/
def P6540897418272561279.Spec : Prop :=
  ∀ n, P6540897418272561279.a n = A399092 (n + 1)

end A399092

/-! ## A399092.P16221971114065924460

`C(A372603(A068781(n+1)), A054977(n))`
-/

namespace A399092.P16221971114065924460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A372603 (A068781 (n + 1)).toNat).toNat (A054977 n).toNat

end

end A399092.P16221971114065924460

namespace A399092

/-- `C(A372603(A068781(n+1)), A054977(n))` -/
def P16221971114065924460.Spec : Prop :=
  ∀ n, (P16221971114065924460.a n : ℤ) = A399092 (n + 1)

end A399092

/-! ## A399092.P16793447333179405741

`A368713(A375709(1+n))`
-/

namespace A399092.P16793447333179405741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368713 (A375709 (1 + n)).toNat

end

end A399092.P16793447333179405741

namespace A399092

/-- `A368713(A375709(1+n))` -/
def P16793447333179405741.Spec : Prop :=
  ∀ n, P16793447333179405741.a n = A399092 (n + 1)

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

/-! ## A399093.P6879781997153624813

`A051903(record[A350390(n+1)/A351568(n+2)])`
-/

namespace A399093.P6879781997153624813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) : ℚ) / (A351568 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A399093.P6879781997153624813

namespace A399093

/-- `A051903(record[A350390(n+1)/A351568(n+2)])` -/
def P6879781997153624813.Spec : Prop :=
  ∀ n, P6879781997153624813.a n = A399093 (n + 1)

end A399093

/-! ## A399093.P833088899577175273

`A375360(record[A350390(n+1)/A351568(n+2)])`
-/

namespace A399093.P833088899577175273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) : ℚ) / (A351568 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375360 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A399093.P833088899577175273

namespace A399093

/-- `A375360(record[A350390(n+1)/A351568(n+2)])` -/
def P833088899577175273.Spec : Prop :=
  ∀ n, P833088899577175273.a n = A399093 (n + 1)

end A399093

/-! ## A399093.P3426397780963483813

`A372601(record[A350390(n+1)%A350390(n+2)])`
-/

namespace A399093.P3426397780963483813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350390 (n + 1)) (A350390 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399093.P3426397780963483813

namespace A399093

/-- `A372601(record[A350390(n+1)%A350390(n+2)])` -/
def P3426397780963483813.Spec : Prop :=
  ∀ n, P3426397780963483813.a n = A399093 (n + 1)

end A399093

/-! ## A399093.P3856044863169979793

`A372601(A367695(n+1)*A368712(n+2))`
-/

namespace A399093.P3856044863169979793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A367695 (n + 1) * A368712 (n + 2)).toNat

end

end A399093.P3856044863169979793

namespace A399093

/-- `A372601(A367695(n+1)*A368712(n+2))` -/
def P3856044863169979793.Spec : Prop :=
  ∀ n, P3856044863169979793.a n = A399093 (n + 1)

end A399093

/-! ## A399093.P3659278109991562091

`A372601(A367695(n+1)*A368711(n+3))`
-/

namespace A399093.P3659278109991562091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A367695 (n + 1) * A368711 (n + 3)).toNat

end

end A399093.P3659278109991562091

namespace A399093

/-- `A372601(A367695(n+1)*A368711(n+3))` -/
def P3659278109991562091.Spec : Prop :=
  ∀ n, P3659278109991562091.a n = A399093 (n + 1)

end A399093

/-! ## A399093.P1388925124879823745

`A372601(A367695(n+1)*A368472(n+3))`
-/

namespace A399093.P1388925124879823745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A367695 (n + 1) * A368472 (n + 3)).toNat

end

end A399093.P1388925124879823745

namespace A399093

/-- `A372601(A367695(n+1)*A368472(n+3))` -/
def P1388925124879823745.Spec : Prop :=
  ∀ n, P1388925124879823745.a n = A399093 (n + 1)

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

/-! ## A399094.P16501314181183660051

`A055642(and(A038303(n), A125524(3*n+2)))`
-/

namespace A399094.P16501314181183660051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.land (A038303 n) (A125524 (3 * n + 2))).toNat

end

end A399094.P16501314181183660051

/-!
# A399096: Triangle read by rows: T(n,k) is the number of trees on n unlabeled nodes with exactly k peripheral nodes.

The programs for A399096, there is no canonical definition to state claims against.
-/

/-! ## A399096.P9049229601302060094

`A333381(A333755(n)*A340071(n+1))`
-/

namespace A399096.P9049229601302060094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A333755 n * A340071 (n + 1)).toNat

end

end A399096.P9049229601302060094

/-! ## A399096.P16184270351349208191

`A326753(A000009(n+2)*A244120(n))`
-/

namespace A399096.P16184270351349208191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (A000009 (n + 2) * A244120 n).toNat

end

end A399096.P16184270351349208191

/-! ## A399096.P5942393750408343659

`A278700(A038612(n+4)-A127093(n+1))`
-/

namespace A399096.P5942393750408343659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (A038612 (n + 4) - A127093 (n + 1)).toNat

end

end A399096.P5942393750408343659

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

/-!
# A399097: Triangle read by rows: T(n,k) is the number of unlabeled rooted trees with n nodes of which k are furthest from the root.

The programs for A399097, there is no canonical definition to state claims against.
-/

/-! ## A399097.P3332506846249285547

`A106234(n+2)+A063524(A000079(n))`
-/

namespace A399097.P3332506846249285547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 2) + A063524 (A000079 n).toNat

end

end A399097.P3332506846249285547

/-! ## A399097.P7323235516322527776

`A106234(n+2)+A063524(A053576(n))`
-/

namespace A399097.P7323235516322527776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 2) + A063524 (A053576 n).toNat

end

end A399097.P7323235516322527776

/-! ## A399097.P7090216626428542260

`A106234(n+2)+A063524(A036833(2*(n+3)))`
-/

namespace A399097.P7090216626428542260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 2) + A063524 (A036833 (2 * (n + 3))).toNat

end

end A399097.P7090216626428542260

/-! ## A399097.P5275007224560122172

`A238125(n)^A375940(A084938(n))`
-/

namespace A399097.P5275007224560122172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238125 n : ℚ) ^ (A375940 (A084938 n).toNat : ℤ)

end

end A399097.P5275007224560122172

/-! ## A399097.P11045747205856616616

`A106234(n+2)+A063524(A290230(n))`
-/

namespace A399097.P11045747205856616616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 2) + A063524 (A290230 n).toNat

end

end A399097.P11045747205856616616

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

/-! ## A399099.P13619025959784757922

`A076278(n+1)-ceil(n/2)`
-/

namespace A399099.P13619025959784757922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (n + 1) - ⌈(n : ℚ) / 2⌉

end

end A399099.P13619025959784757922

/-! ## A399099.P14684432469135738906

`A023443(A079571(n+1))`
-/

namespace A399099.P14684432469135738906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079571 (n + 1)).toNat

end

end A399099.P14684432469135738906

/-! ## A399099.P3893584804871053774

`A033995(n+1)-A095773(n+1)`
-/

namespace A399099.P3893584804871053774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (n + 1) - A095773 (n + 1)

end

end A399099.P3893584804871053774

/-! ## A399099.P12370645287480626416

`A033995(n+1)-A008908(2^ceil(n/2))`
-/

namespace A399099.P12370645287480626416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (n + 1) - A008908 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A399099.P12370645287480626416

