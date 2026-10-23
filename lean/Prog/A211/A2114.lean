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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A211400: Rectangular array, read by upward diagonals: T(n,m) is the number of Young tableaux that can be realized as the ranks of the outer sums a_i + b_j where a = (a_1, ... a_n) and b = (b_1, ... b_m) are real monotone vectors in general position (all sums different).

The programs for A211400, there is no canonical definition to state claims against.
-/

/-! ## A211400.P16144996292879655721

`A117923(A378173(n+1))`
-/

namespace A211400.P16144996292879655721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (A378173 (n + 1)).toNat

end

end A211400.P16144996292879655721

/-! ## A211400.P8670754354596013243

`A133137(round(sqrt(A156587(n))))`
-/

namespace A211400.P8670754354596013243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (SequenceMachineLib.roundAway (Real.sqrt (A156587 n : ℝ))).toNat

end

end A211400.P8670754354596013243

/-! ## A211400.P17539604118848008555

`A033677(ceil(A177939(n+1)/3))`
-/

namespace A211400.P17539604118848008555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ⌈(A177939 (n + 1) : ℚ) / 3⌉.toNat

end

end A211400.P17539604118848008555

/-! ## A211400.P15320922470414827436

`∑{d}[A286784(A131235(n)), A000010(#)]`
-/

namespace A211400.P15320922470414827436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286784 (A131235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A211400.P15320922470414827436

/-! ## A211400.P12199451381387753706

`A060854(n+1)-A210322(A210341(n))`
-/

namespace A211400.P12199451381387753706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (n + 1) - A210322 (A210341 n).toNat

end

end A211400.P12199451381387753706

/-!
# A211402: Triangle T(n,k), 0<=k<=n, given by (0,2,0,4,0,6,0,8,0,10,0,...) DELTA (1, 2, 3, 4, 5, 6, 7, 8, 9,...) where DELTA is the operator defined in A084938.

The programs for A211402, there is no canonical definition to state claims against.
-/

/-! ## A211402.P4685534687648954051

`A130321(n)*A211608(n)`
-/

namespace A211402.P4685534687648954051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A211608 n

end

end A211402.P4685534687648954051

/-! ## A211402.P12635311209668036744

`sqrt(A262616(n))*A211608(n)`
-/

namespace A211402.P12635311209668036744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A211608 n : ℝ)

end

end A211402.P12635311209668036744

/-! ## A211402.P17049208911661763439

`A057728(n+1)*A211608(n)`
-/

namespace A211402.P17049208911661763439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A211608 n

end

end A211402.P17049208911661763439

/-! ## A211402.P13689732429566011149

`Δ[A023758(n+1)]*A211608(n)`
-/

namespace A211402.P13689732429566011149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A211608 n

end

end A211402.P13689732429566011149

/-! ## A211402.P3523524379489302600

`A000079(A025581(n))*A211608(n)`
-/

namespace A211402.P3523524379489302600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A211608 n

end

end A211402.P3523524379489302600

/-!
# A211405: Prime numbers that in binary are palindromic and also have palindromic index.

The programs for A211405, there is no canonical definition to state claims against.
-/

/-! ## A211405.P12154880267860484246

`∩[A016041(n+1), A000040(A006995(n+2))]`
-/

namespace A211405.P12154880267860484246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006995 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211405.P12154880267860484246

/-! ## A211405.P5071495854800135931

`∩[A329419(n+1), A000040(A006995(n+2))]`
-/

namespace A211405.P5071495854800135931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006995 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211405.P5071495854800135931

/-! ## A211405.P12688036425512400048

`∩[A048700(n+1), A000040(A006995(n+3))]`
-/

namespace A211405.P12688036425512400048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006995 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211405.P12688036425512400048

/-!
# A211409: Numbers k such that (9^k + 4^k)/13 is prime.

The programs for A211409, there is no canonical definition to state claims against.
-/

/-! ## A211409.P11141318535441958599

`A181628(n+1)/2`
-/

namespace A211409.P11141318535441958599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181628 (n + 1) : ℚ) / 2

end

end A211409.P11141318535441958599

/-! ## A211409.P17054940202813035010

`A000265(A181628(n+1))`
-/

namespace A211409.P17054940202813035010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A181628 (n + 1)).toNat

end

end A211409.P17054940202813035010

/-! ## A211409.P18036553686334669779

`A006530(lcm(2, A181628(n+1)))`
-/

namespace A211409.P18036553686334669779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A181628 (n + 1)))

end

end A211409.P18036553686334669779

/-! ## A211409.P6050318935590643262

`∑{p}[A181628(n+1), A000010(#)]`
-/

namespace A211409.P6050318935590643262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A211409.P6050318935590643262

/-! ## A211409.P6665419109989774076

`A006530(A000034(n)*A181628(n+1))`
-/

namespace A211409.P6665419109989774076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000034 n * A181628 (n + 1)).toNat

end

end A211409.P6665419109989774076

/-!
# A211410: Chen triprimes, triprimes (A014612) m such that m+2 is either prime or semiprime.

The programs for A211410, the canonical program `A211410.P5242894833094007403` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211410 has offset 1).

The definition of A211410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211410.P5242894833094007403

`∩[A014612(n+1), A221865(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A211410

/-- `∩[A014612(n+1), A221865(n+1)]` -/
def P5242894833094007403.Spec : Prop :=
  ∀ n, (P5242894833094007403.a n : ℤ) = A211410 (n + 1)

theorem P5242894833094007403.correct : P5242894833094007403.Spec := by
  intro n
  simp only [A211410, Nat.add_sub_cancel]

end A211410

/-! ## A211410.P8639538850125326231

`∩[A014612(n+1), A037143(n+1)-2]`
-/

namespace A211410.P8639538850125326231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211410.P8639538850125326231

namespace A211410

/-- `∩[A014612(n+1), A037143(n+1)-2]` -/
def P8639538850125326231.Spec : Prop :=
  ∀ n, (P8639538850125326231.a n : ℤ) = A211410 (n + 1)

end A211410

/-! ## A211410.P13639821776076580662

`filter[A221865(n+2), A101605(#)]`
-/

namespace A211410.P13639821776076580662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A211410.P13639821776076580662

namespace A211410

/-- `filter[A221865(n+2), A101605(#)]` -/
def P13639821776076580662.Spec : Prop :=
  ∀ n, P13639821776076580662.a n = A211410 (n + 1)

end A211410

/-! ## A211410.P17693144875059738573

`eq[A054576(n+2), A101637(A008486(n))]`
-/

namespace A211410.P17693144875059738573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211410.P17693144875059738573

namespace A211410

/-- `eq[A054576(n+2), A101637(A008486(n))]` -/
def P17693144875059738573.Spec : Prop :=
  ∀ n, (P17693144875059738573.a n : ℤ) = A211410 (n + 1)

end A211410

/-! ## A211410.P12035171792019477961

`eq[A054576(n+2), A101637(A008706(n))]`
-/

namespace A211410.P12035171792019477961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211410.P12035171792019477961

namespace A211410

/-- `eq[A054576(n+2), A101637(A008706(n))]` -/
def P12035171792019477961.Spec : Prop :=
  ∀ n, (P12035171792019477961.a n : ℤ) = A211410 (n + 1)

end A211410

/-! ## A211410.P8025310555090544760

`eq[A054576(n+2), A101605(A257143(n))]`
-/

namespace A211410.P8025310555090544760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211410.P8025310555090544760

namespace A211410

/-- `eq[A054576(n+2), A101605(A257143(n))]` -/
def P8025310555090544760.Spec : Prop :=
  ∀ n, (P8025310555090544760.a n : ℤ) = A211410 (n + 1)

end A211410

/-! ## A211410.P2922253595916690872

`eq[A054576(n+2), A101637(A257143(2*n))]`
-/

namespace A211410.P2922253595916690872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A257143 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211410.P2922253595916690872

namespace A211410

/-- `eq[A054576(n+2), A101637(A257143(2*n))]` -/
def P2922253595916690872.Spec : Prop :=
  ∀ n, (P2922253595916690872.a n : ℤ) = A211410 (n + 1)

end A211410

/-!
# A211412: a(n) = 4*n^4 + 1.

The programs for A211412, the canonical program `A211412.P16318477645808081843` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211412 has offset 1).

The definition of A211412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^4+1` (program `A211412.P16318477645808081843`, by `A211412.P16318477645808081843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211412.P16318477645808081843

`4*(n+1)^4+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211412

/-- `4*(n+1)^4+1` -/
def P16318477645808081843.Spec : Prop :=
  ∀ n, (P16318477645808081843.a n : ℤ) = A211412 (n + 1)

theorem P16318477645808081843.correct : P16318477645808081843.Spec := by
  intro n
  simp only [A211412, Nat.add_sub_cancel]

end A211412

/-! ## A211412.P11031983197916144722

`A222655(n+1)/4`
-/

namespace A211412.P11031983197916144722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222655 (n + 1) : ℚ) / 4

end

end A211412.P11031983197916144722

namespace A211412

/-- `A222655(n+1)/4` -/
def P11031983197916144722.Spec : Prop :=
  ∀ n, P11031983197916144722.a n = (A211412 (n + 1) : ℚ)

end A211412

/-! ## A211412.P4980430095211675000

`A001844(n)*A001844(n+1)`
-/

namespace A211412.P4980430095211675000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * A001844 (n + 1)

end

end A211412.P4980430095211675000

namespace A211412

/-- `A001844(n)*A001844(n+1)` -/
def P4980430095211675000.Spec : Prop :=
  ∀ n, P4980430095211675000.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P12592537923982682666

`A053755((n+1)²)`
-/

namespace A211412.P12592537923982682666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 ((n + 1) ^ 2)

end

end A211412.P12592537923982682666

namespace A211412

/-- `A053755((n+1)²)` -/
def P12592537923982682666.Spec : Prop :=
  ∀ n, P12592537923982682666.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P11707479426367858217

`or(1, (2*(n+1)²)²)`
-/

namespace A211412.P11707479426367858217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * (n + 1) ^ 2) ^ 2)

end

end A211412.P11707479426367858217

namespace A211412

/-- `or(1, (2*(n+1)²)²)` -/
def P11707479426367858217.Spec : Prop :=
  ∀ n, (P11707479426367858217.a n : ℤ) = A211412 (n + 1)

end A211412

/-! ## A211412.P1757002878611623814

`xor(1, (2*(n+1)²)²)`
-/

namespace A211412.P1757002878611623814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * (n + 1) ^ 2) ^ 2)

end

end A211412.P1757002878611623814

namespace A211412

/-- `xor(1, (2*(n+1)²)²)` -/
def P1757002878611623814.Spec : Prop :=
  ∀ n, (P1757002878611623814.a n : ℤ) = A211412 (n + 1)

end A211412

/-! ## A211412.P8523223130153458277

`record[or(1, 4*(1-n)^4)]`
-/

namespace A211412.P8523223130153458277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * (1 - (n : ℤ)) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211412.P8523223130153458277

namespace A211412

/-- `record[or(1, 4*(1-n)^4)]` -/
def P8523223130153458277.Spec : Prop :=
  ∀ n, P8523223130153458277.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P154608684006969554

`record[xor(1, 4*(1-n)^4)]`
-/

namespace A211412.P154608684006969554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * (1 - (n : ℤ)) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211412.P154608684006969554

namespace A211412

/-- `record[xor(1, 4*(1-n)^4)]` -/
def P154608684006969554.Spec : Prop :=
  ∀ n, P154608684006969554.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P3024730108608144618

`record[(2*(1-n)²)²+1]`
-/

namespace A211412.P3024730108608144618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (1 - (n : ℤ)) ^ 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211412.P3024730108608144618

namespace A211412

/-- `record[(2*(1-n)²)²+1]` -/
def P3024730108608144618.Spec : Prop :=
  ∀ n, P3024730108608144618.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P3813380118646394890

`ceil(cot(Δ[atan(2*n+1)]²))`
-/

namespace A211412.P3813380118646394890
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((f1 (n + 1) - f1 n) ^ 2)⌉

end

end A211412.P3813380118646394890

namespace A211412

/-- `ceil(cot(Δ[atan(2*n+1)]²))` -/
def P3813380118646394890.Spec : Prop :=
  ∀ n, P3813380118646394890.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P4061265270142386467

`round(cot(Δ[atan(2*n+1)]²))`
-/

namespace A211412.P4061265270142386467
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((f1 (n + 1) - f1 n) ^ 2))

end

end A211412.P4061265270142386467

namespace A211412

/-- `round(cot(Δ[atan(2*n+1)]²))` -/
def P4061265270142386467.Spec : Prop :=
  ∀ n, P4061265270142386467.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P602978770275910100

`ceil(cot(Δ[acot(2*n+1)]²))`
-/

namespace A211412.P602978770275910100
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((f1 (n + 1) - f1 n) ^ 2)⌉

end

end A211412.P602978770275910100

namespace A211412

/-- `ceil(cot(Δ[acot(2*n+1)]²))` -/
def P602978770275910100.Spec : Prop :=
  ∀ n, P602978770275910100.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P8812293854210385937

`round(cot(Δ[acot(2*n+1)]²))`
-/

namespace A211412.P8812293854210385937
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((f1 (n + 1) - f1 n) ^ 2))

end

end A211412.P8812293854210385937

namespace A211412

/-- `round(cot(Δ[acot(2*n+1)]²))` -/
def P8812293854210385937.Spec : Prop :=
  ∀ n, P8812293854210385937.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P9919547150756005345

`(∑[4*(n+1)]+1)*(A046092(n)+1)`
-/

namespace A211412.P9919547150756005345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (A046092 n + 1)

end

end A211412.P9919547150756005345

namespace A211412

/-- `(∑[4*(n+1)]+1)*(A046092(n)+1)` -/
def P9919547150756005345.Spec : Prop :=
  ∀ n, P9919547150756005345.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P1353970528452920145

`lcm(A001844(n), A099776(n+1))`
-/

namespace A211412.P1353970528452920145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001844 n) (A099776 (n + 1))

end

end A211412.P1353970528452920145

namespace A211412

/-- `lcm(A001844(n), A099776(n+1))` -/
def P1353970528452920145.Spec : Prop :=
  ∀ n, (P1353970528452920145.a n : ℤ) = A211412 (n + 1)

end A211412

/-! ## A211412.P15936624352822358866

`A069078(n+1)/(n+1)`
-/

namespace A211412.P15936624352822358866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069078 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A211412.P15936624352822358866

namespace A211412

/-- `A069078(n+1)/(n+1)` -/
def P15936624352822358866.Spec : Prop :=
  ∀ n, P15936624352822358866.a n = (A211412 (n + 1) : ℚ)

end A211412

/-! ## A211412.P4911999151910165967

`ceil((8*(A000538(n+1)-A000538(n))+1)/2)`
-/

namespace A211412.P4911999151910165967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 * (A000538 (n + 1) - A000538 n) + 1 : ℚ) / 2⌉

end

end A211412.P4911999151910165967

namespace A211412

/-- `ceil((8*(A000538(n+1)-A000538(n))+1)/2)` -/
def P4911999151910165967.Spec : Prop :=
  ∀ n, P4911999151910165967.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P16850647202242762103

`ceil(A274323(2*(n+1))/2)`
-/

namespace A211412.P16850647202242762103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A274323 (2 * (n + 1)) : ℚ) / 2⌉

end

end A211412.P16850647202242762103

namespace A211412

/-- `ceil(A274323(2*(n+1))/2)` -/
def P16850647202242762103.Spec : Prop :=
  ∀ n, P16850647202242762103.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P5919124794786615944

`(A046092(n)+1)*A000982(2*n+3)`
-/

namespace A211412.P5919124794786615944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 n + 1) * A000982 (2 * n + 3)

end

end A211412.P5919124794786615944

namespace A211412

/-- `(A046092(n)+1)*A000982(2*n+3)` -/
def P5919124794786615944.Spec : Prop :=
  ∀ n, P5919124794786615944.a n = A211412 (n + 1)

end A211412

/-! ## A211412.P14596703241105087093

`A129995(2*(n+1))/A131509(2*(n+1))`
-/

namespace A211412.P14596703241105087093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129995 (2 * (n + 1)) : ℚ) / (A131509 (2 * (n + 1)) : ℚ)

end

end A211412.P14596703241105087093

namespace A211412

/-- `A129995(2*(n+1))/A131509(2*(n+1))` -/
def P14596703241105087093.Spec : Prop :=
  ∀ n, P14596703241105087093.a n = (A211412 (n + 1) : ℚ)

end A211412

/-!
# A211413: Numbers m such that phi(m) is a power of the product of the distinct prime factors of m.

The programs for A211413, there is no canonical definition to state claims against.
-/

/-! ## A211413.P12029210214377234866

`∩[A055744(n+1), A102826(n)]`
-/

namespace A211413.P12029210214377234866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102826 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211413.P12029210214377234866

/-! ## A211413.P8897013497701981303

`∩[A359680(n+1), A102826(n)]`
-/

namespace A211413.P8897013497701981303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102826 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211413.P8897013497701981303

/-! ## A211413.P11420850643232839582

`record[A305191(2*(n+2))/A318795(n+1)]`
-/

namespace A211413.P11420850643232839582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305191 (2 * (n + 2)) : ℚ) / (A318795 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211413.P11420850643232839582

/-! ## A211413.P12023122933920976473

`A065391(n+1)*A332297(A065391(n+1))`
-/

namespace A211413.P12023122933920976473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065391 (n + 1) * A332297 (A065391 (n + 1)).toNat

end

end A211413.P12023122933920976473

/-!
# A211415: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + x*y = 1.

The programs for A211415, there is no canonical definition to state claims against.
-/

/-! ## A211415.P244730975469676344

`and(-3, A211416(n))`
-/

namespace A211415.P244730975469676344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A211416 n)

end

end A211415.P244730975469676344

/-! ## A211415.P17718125994721116966

`A019425(A211416(n)/2)`
-/

namespace A211415.P17718125994721116966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (SequenceMachineLib.roundAway ((A211416 n : ℚ) / 2)).toNat

end

end A211415.P17718125994721116966

/-! ## A211415.P5683343968766571774

`A211416(n)-2*A019425(A019425(n))`
-/

namespace A211415.P5683343968766571774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211416 n - 2 * A019425 (A019425 n).toNat

end

end A211415.P5683343968766571774

/-! ## A211415.P18190778373048660151

`A004275(A211416(n)/2)`
-/

namespace A211415.P18190778373048660151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A211416 n : ℚ) / 2)).toNat

end

end A211415.P18190778373048660151

/-! ## A211415.P2074028866282952167

`A004443(or(2, A211416(n)))`
-/

namespace A211415.P2074028866282952167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.lor 2 (A211416 n)).toNat

end

end A211415.P2074028866282952167

/-! ## A211415.P9453918234583391987

`2*A093049(A211416(n)/2)`
-/

namespace A211415.P9453918234583391987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093049 (SequenceMachineLib.roundAway ((A211416 n : ℚ) / 2)).toNat

end

end A211415.P9453918234583391987

/-! ## A211415.P3681103445509079874

`A093049(A211416(n))`
-/

namespace A211415.P3681103445509079874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 (A211416 n).toNat

end

end A211415.P3681103445509079874

/-! ## A211415.P18327544488703587479

`A061721(or(2, A211416(n)))`
-/

namespace A211415.P18327544488703587479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061721 (Int.lor 2 (A211416 n)).toNat

end

end A211415.P18327544488703587479

/-! ## A211415.P1322158210586046246

`A211416(n)-2%A000244(n)`
-/

namespace A211415.P1322158210586046246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211416 n - Int.tmod 2 (A000244 n)

end

end A211415.P1322158210586046246

/-!
# A211416: Number of self-inverse 2 X 2 matrices with all terms in {-n,...,0,...,n}.

The programs for A211416, there is no canonical definition to state claims against.
-/

/-! ## A211416.P9231910444296274672

`A074591(A211415(n)+2)`
-/

namespace A211416.P9231910444296274672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A211415 n + 2).toNat

end

end A211416.P9231910444296274672

/-! ## A211416.P5379445714145152476

`(A211415(n)+2)%A008013(n)²`
-/

namespace A211416.P5379445714145152476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211415 n + 2) (A008013 n ^ 2)

end

end A211416.P5379445714145152476

/-! ## A211416.P10641067276964100800

`xor(2, A211415(n))%A005408(n)²²`
-/

namespace A211416.P10641067276964100800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 2 (A211415 n)) ((A005408 n ^ 2) ^ 2)

end

end A211416.P10641067276964100800

/-! ## A211416.P15532013106706398030

`A211415(n)+A007814(A147582(n+1))`
-/

namespace A211416.P15532013106706398030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211415 n + A007814 (A147582 (n + 1)).toNat

end

end A211416.P15532013106706398030

/-! ## A211416.P9681916736598191720

`A093050(A211415(n))`
-/

namespace A211416.P9681916736598191720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 (A211415 n).toNat

end

end A211416.P9681916736598191720

/-!
# A211418: a(n) = n!*(floor(n/30))!/((floor(n/2))!*(floor(n/3))!*(floor(n/5))!).

The programs for A211418, the canonical program `A211418.P1325931799259212996` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211418 has offset 0).

The definition of A211418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211418.P1325931799259212996

`n!*floor(n/30)!/(floor(n/2)!*floor(n/3)!*floor(n/5)!)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211418

/-- `n!*floor(n/30)!/(floor(n/2)!*floor(n/3)!*floor(n/5)!)` -/
def P1325931799259212996.Spec : Prop :=
  ∀ n, P1325931799259212996.a n = (A211418 n : ℚ)

end A211418

/-! ## A211418.P14860514827386585449

`A003418(n)/A340102(A193862(n))`
-/

namespace A211418.P14860514827386585449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A340102 (A193862 n).toNat : ℚ)

end

end A211418.P14860514827386585449

namespace A211418

/-- `A003418(n)/A340102(A193862(n))` -/
def P14860514827386585449.Spec : Prop :=
  ∀ n, P14860514827386585449.a n = (A211418 n : ℚ)

end A211418

/-! ## A211418.P375990581371557725

`A139550(2*n)/A006928(A108411(n))`
-/

namespace A211418.P375990581371557725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139550 (2 * n) : ℚ) / (A006928 (A108411 n).toNat : ℚ)

end

end A211418.P375990581371557725

namespace A211418

/-- `A139550(2*n)/A006928(A108411(n))` -/
def P375990581371557725.Spec : Prop :=
  ∀ n, P375990581371557725.a n = (A211418 n : ℚ)

end A211418

/-! ## A211418.P4191995881077245414

`A003418(n)/A132283(A372326(n))`
-/

namespace A211418.P4191995881077245414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A132283 (A372326 n).toNat : ℚ)

end

end A211418.P4191995881077245414

namespace A211418

/-- `A003418(n)/A132283(A372326(n))` -/
def P4191995881077245414.Spec : Prop :=
  ∀ n, P4191995881077245414.a n = (A211418 n : ℚ)

end A211418

/-! ## A211418.P15305844543516226516

`A003418(n)/A353426(A288972(n))`
-/

namespace A211418.P15305844543516226516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A353426 (A288972 n).toNat : ℚ)

end

end A211418.P15305844543516226516

namespace A211418

/-- `A003418(n)/A353426(A288972(n))` -/
def P15305844543516226516.Spec : Prop :=
  ∀ n, P15305844543516226516.a n = (A211418 n : ℚ)

end A211418

/-!
# A211419: a(n) = (6*n)!*(2*n)!/((4*n)!*(3*n)!*n!).

The programs for A211419, the canonical program `A211419.P12308866205805712796` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211419 has offset 0).

The definition of A211419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211419.P12308866205805712796

`C(6*n, 2*n)*C(2*n, n)/C(3*n, n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211419

/-- `C(6*n, 2*n)*C(2*n, n)/C(3*n, n)` -/
def P12308866205805712796.Spec : Prop :=
  ∀ n, P12308866205805712796.a n = (A211419 n : ℚ)

end A211419

/-! ## A211419.P17665210673913781362

`A173781(3*n)`
-/

namespace A211419.P17665210673913781362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173781 (3 * n)

end

end A211419.P17665210673913781362

namespace A211419

/-- `A173781(3*n)` -/
def P17665210673913781362.Spec : Prop :=
  ∀ n, P17665210673913781362.a n = A211419 n

end A211419

/-! ## A211419.P4284030081888534812

`(4*n+1)*A245113(n)`
-/

namespace A211419.P4284030081888534812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A245113 n

end

end A211419.P4284030081888534812

namespace A211419

/-- `(4*n+1)*A245113(n)` -/
def P4284030081888534812.Spec : Prop :=
  ∀ n, P4284030081888534812.a n = A211419 n

end A211419

/-! ## A211419.P17655898614690092557

`A001449(n)/A005809(n)*A004355(n)`
-/

namespace A211419.P17655898614690092557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (A005809 n : ℚ) * (A004355 n : ℚ)

end

end A211419.P17655898614690092557

namespace A211419

/-- `A001449(n)/A005809(n)*A004355(n)` -/
def P17655898614690092557.Spec : Prop :=
  ∀ n, P17655898614690092557.a n = (A211419 n : ℚ)

end A211419

/-! ## A211419.P8441550026384023681

`A016813(n)*A245113(n)*A062344(∑[n])`
-/

namespace A211419.P8441550026384023681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A245113 n * A062344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211419.P8441550026384023681

namespace A211419

/-- `A016813(n)*A245113(n)*A062344(∑[n])` -/
def P8441550026384023681.Spec : Prop :=
  ∀ n, P8441550026384023681.a n = A211419 n

end A211419

/-! ## A211419.P12961329409081975781

`A016813(n)*A245113(n)*A051036(ceil(n/63))`
-/

namespace A211419.P12961329409081975781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A245113 n * A051036 ⌈(n : ℚ) / 63⌉.toNat

end

end A211419.P12961329409081975781

namespace A211419

/-- `A016813(n)*A245113(n)*A051036(ceil(n/63))` -/
def P12961329409081975781.Spec : Prop :=
  ∀ n, P12961329409081975781.a n = A211419 n

end A211419

/-! ## A211419.P7815100177779553081

`A000984(n)/A005810(n)*A066802(n)`
-/

namespace A211419.P7815100177779553081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A005810 n : ℚ) * (A066802 n : ℚ)

end

end A211419.P7815100177779553081

namespace A211419

/-- `A000984(n)/A005810(n)*A066802(n)` -/
def P7815100177779553081.Spec : Prop :=
  ∀ n, P7815100177779553081.a n = (A211419 n : ℚ)

end A211419

/-! ## A211419.P7531195763957626808

`A005809(n)/A001448(n)*A066802(n)`
-/

namespace A211419.P7531195763957626808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A001448 n : ℚ) * (A066802 n : ℚ)

end

end A211419.P7531195763957626808

namespace A211419

/-- `A005809(n)/A001448(n)*A066802(n)` -/
def P7531195763957626808.Spec : Prop :=
  ∀ n, P7531195763957626808.a n = (A211419 n : ℚ)

end A211419

/-! ## A211419.P6038803013526431115

`A000984(n)/A001448(n)*A061162(n)`
-/

namespace A211419.P6038803013526431115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A001448 n : ℚ) * (A061162 n : ℚ)

end

end A211419.P6038803013526431115

namespace A211419

/-- `A000984(n)/A001448(n)*A061162(n)` -/
def P6038803013526431115.Spec : Prop :=
  ∀ n, P6038803013526431115.a n = (A211419 n : ℚ)

end A211419

/-!
# A211420: a(n) = (8*n)!*n!/((4*n)!*(3*n)!*(2*n)!).

The programs for A211420, the canonical program `A211420.P16644165873302272115` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211420 has offset 0).

The definition of A211420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211420.P16644165873302272115

`C(8*n, 4*n)*C(4*n, n)/C(2*n, n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211420

/-- `C(8*n, 4*n)*C(4*n, n)/C(2*n, n)` -/
def P16644165873302272115.Spec : Prop :=
  ∀ n, P16644165873302272115.a n = (A211420 n : ℚ)

end A211420

/-! ## A211420.P13138820531957079087

`A046521(A139276(n))`
-/

namespace A211420.P13138820531957079087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A139276 n).toNat

end

end A211420.P13138820531957079087

namespace A211420

/-- `A046521(A139276(n))` -/
def P13138820531957079087.Spec : Prop :=
  ∀ n, P13138820531957079087.a n = A211420 n

end A211420

/-! ## A211420.P9614316494524372663

`A046521(n*A017101(n))`
-/

namespace A211420.P9614316494524372663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 ((n : ℤ) * A017101 n).toNat

end

end A211420.P9614316494524372663

namespace A211420

/-- `A046521(n*A017101(n))` -/
def P9614316494524372663.Spec : Prop :=
  ∀ n, P9614316494524372663.a n = A211420 n

end A211420

/-! ## A211420.P17509022937973925422

`A046521(A139277(n)-2*n)`
-/

namespace A211420.P17509022937973925422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A139277 n - (2 * n : ℤ)).toNat

end

end A211420.P17509022937973925422

namespace A211420

/-- `A046521(A139277(n)-2*n)` -/
def P17509022937973925422.Spec : Prop :=
  ∀ n, P17509022937973925422.a n = A211420 n

end A211420

/-! ## A211420.P12310521023604053740

`A046521(n*A004767(2*n))`
-/

namespace A211420.P12310521023604053740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 ((n : ℤ) * A004767 (2 * n)).toNat

end

end A211420.P12310521023604053740

namespace A211420

/-- `A046521(n*A004767(2*n))` -/
def P12310521023604053740.Spec : Prop :=
  ∀ n, P12310521023604053740.a n = A211420 n

end A211420

/-!
# A211421: Integral factorial ratio sequence: a(n) = (8*n)!*(3*n)!/((6*n)!*(4*n)!*n!).

The programs for A211421, the canonical program `A211421.P10354923049809668621` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211421 has offset 0).

The definition of A211421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211421.P10354923049809668621

`C(8*n, 2*n)*C(2*n, n)/C(4*n, n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211421

/-- `C(8*n, 2*n)*C(2*n, n)/C(4*n, n)` -/
def P10354923049809668621.Spec : Prop :=
  ∀ n, P10354923049809668621.a n = (A211421 n : ℚ)

end A211421

/-! ## A211421.P2997155579942890440

`A004368(n)/A005810(n)*A004381(n)`
-/

namespace A211421.P2997155579942890440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (A005810 n : ℚ) * (A004381 n : ℚ)

end

end A211421.P2997155579942890440

namespace A211421

/-- `A004368(n)/A005810(n)*A004381(n)` -/
def P2997155579942890440.Spec : Prop :=
  ∀ n, P2997155579942890440.a n = (A211421 n : ℚ)

end A211421

/-! ## A211421.P13614570806975142394

`A005809(n)/A004355(n)*A182400(n)`
-/

namespace A211421.P13614570806975142394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A004355 n : ℚ) * (A182400 n : ℚ)

end

end A211421.P13614570806975142394

namespace A211421

/-- `A005809(n)/A004355(n)*A182400(n)` -/
def P13614570806975142394.Spec : Prop :=
  ∀ n, P13614570806975142394.a n = (A211421 n : ℚ)

end A211421

/-! ## A211421.P10209115636861319201

`A046521(A139277(n))`
-/

namespace A211421.P10209115636861319201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A139277 n).toNat

end

end A211421.P10209115636861319201

namespace A211421

/-- `A046521(A139277(n))` -/
def P10209115636861319201.Spec : Prop :=
  ∀ n, P10209115636861319201.a n = A211421 n

end A211421

/-! ## A211421.P524577131007536513

`A046521(n*(A017101(n)+2))`
-/

namespace A211421.P524577131007536513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 ((n : ℤ) * (A017101 n + 2)).toNat

end

end A211421.P524577131007536513

namespace A211421

/-- `A046521(n*(A017101(n)+2))` -/
def P524577131007536513.Spec : Prop :=
  ∀ n, P524577131007536513.a n = A211421 n

end A211421

/-!
# A211422: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + x*y = 0.

The programs for A211422, the canonical program `A211422.P3375844337516987615` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211422 has offset 0).

The definition of A211422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211422.P3375844337516987615

`A017077(∑[A064727(A008574(n))])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211422

/-- `A017077(∑[A064727(A008574(n))])` -/
def P3375844337516987615.Spec : Prop :=
  ∀ n, P3375844337516987615.a n = A211422 n

theorem P3375844337516987615.correct : P3375844337516987615.Spec := by
  intro n
  simp only [A211422]

end A211422

/-! ## A211422.P3852538516645860969

`A017077(∑[A000188(n+1)]-A000188(n+1))`
-/

namespace A211422.P3852538516645860969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (∑ j ∈ Finset.range (n + 1), f1 j - A000188 (n + 1)).toNat

end

end A211422.P3852538516645860969

namespace A211422

/-- `A017077(∑[A000188(n+1)]-A000188(n+1))` -/
def P3852538516645860969.Spec : Prop :=
  ∀ n, P3852538516645860969.a n = A211422 n

end A211422

/-! ## A211422.P16030882011608387903

`A047471(A064368(n)-n)`
-/

namespace A211422.P16030882011608387903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (A064368 n - (n : ℤ)).toNat

end

end A211422.P16030882011608387903

namespace A211422

/-- `A047471(A064368(n)-n)` -/
def P16030882011608387903.Spec : Prop :=
  ∀ n, P16030882011608387903.a n = A211422 n

end A211422

/-! ## A211422.P4647633449795057326

`A047452(∑[A000188(A008574(n))])`
-/

namespace A211422.P4647633449795057326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P4647633449795057326

namespace A211422

/-- `A047452(∑[A000188(A008574(n))])` -/
def P4647633449795057326.Spec : Prop :=
  ∀ n, P4647633449795057326.a n = A211422 n

end A211422

/-! ## A211422.P17315453865388355577

`A047461(∑[A000188(A008574(n))])`
-/

namespace A211422.P17315453865388355577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P17315453865388355577

namespace A211422

/-- `A047461(∑[A000188(A008574(n))])` -/
def P17315453865388355577.Spec : Prop :=
  ∀ n, P17315453865388355577.a n = A211422 n

end A211422

/-! ## A211422.P4414479688553038076

`A047471(∑[A000188(A008574(n))])`
-/

namespace A211422.P4414479688553038076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P4414479688553038076

namespace A211422

/-- `A047471(∑[A000188(A008574(n))])` -/
def P4414479688553038076.Spec : Prop :=
  ∀ n, P4414479688553038076.a n = A211422 n

end A211422

/-! ## A211422.P13869096360025516492

`A047522(∑[A000188(A008574(n))])`
-/

namespace A211422.P13869096360025516492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P13869096360025516492

namespace A211422

/-- `A047522(∑[A000188(A008574(n))])` -/
def P13869096360025516492.Spec : Prop :=
  ∀ n, P13869096360025516492.a n = A211422 n

end A211422

/-! ## A211422.P2981751372175264708

`A168390(∑[A000188(A008574(n))])`
-/

namespace A211422.P2981751372175264708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P2981751372175264708

namespace A211422

/-- `A168390(∑[A000188(A008574(n))])` -/
def P2981751372175264708.Spec : Prop :=
  ∀ n, P2981751372175264708.a n = A211422 n

end A211422

/-! ## A211422.P4507066675412850301

`∑[A000188(A008574(A008598(n)))]`
-/

namespace A211422.P4507066675412850301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008574 (A008598 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211422.P4507066675412850301

namespace A211422

/-- `∑[A000188(A008574(A008598(n)))]` -/
def P4507066675412850301.Spec : Prop :=
  ∀ n, P4507066675412850301.a n = A211422 n

end A211422

/-! ## A211422.P9226947635878050327

`∑[A000188(A022144(A008590(n)))]`
-/

namespace A211422.P9226947635878050327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A022144 (A008590 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211422.P9226947635878050327

namespace A211422

/-- `∑[A000188(A022144(A008590(n)))]` -/
def P9226947635878050327.Spec : Prop :=
  ∀ n, P9226947635878050327.a n = A211422 n

end A211422

/-!
# A211423: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + 2*x*y = 0.

The programs for A211423, there is no canonical definition to state claims against.
-/

/-! ## A211423.P3472706835350567802

`4*(A211511(n)+n)+1`
-/

namespace A211423.P3472706835350567802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A211511 n + (n : ℤ)) + 1

end

end A211423.P3472706835350567802

/-! ## A211423.P9244635144152413670

`A016813(A211511(n)+n)`
-/

namespace A211423.P9244635144152413670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A211511 n + (n : ℤ)).toNat

end

end A211423.P9244635144152413670

/-! ## A211423.P4581379206378359779

`A008586(A211511(n)+n)+1`
-/

namespace A211423.P4581379206378359779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A211511 n + (n : ℤ)).toNat + 1

end

end A211423.P4581379206378359779

/-! ## A211423.P18181281775316340107

`A004767(A211511(n)+n)-2`
-/

namespace A211423.P18181281775316340107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A211511 n + (n : ℤ)).toNat - 2

end

end A211423.P18181281775316340107

/-! ## A211423.P17761581995285339607

`A005408(2*(A211511(n)+n))`
-/

namespace A211423.P17761581995285339607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * (A211511 n + (n : ℤ))).toNat

end

end A211423.P17761581995285339607

/-! ## A211423.P16828343357818000503

`or(1, A008574(A211511(n)+n))`
-/

namespace A211423.P16828343357818000503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008574 (A211511 n + (n : ℤ)).toNat)

end

end A211423.P16828343357818000503

/-! ## A211423.P8778832633255017340

`A004442(4*(A211511(n)+n))`
-/

namespace A211423.P8778832633255017340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * (A211511 n + (n : ℤ))).toNat

end

end A211423.P8778832633255017340

/-! ## A211423.P16280244415011037892

`A008619(8*(A211511(n)+n))`
-/

namespace A211423.P16280244415011037892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * (A211511 n + (n : ℤ))).toNat

end

end A211423.P16280244415011037892

/-! ## A211423.P14145719679125217047

`A008620(12*(A211511(n)+n))`
-/

namespace A211423.P14145719679125217047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (12 * (A211511 n + (n : ℤ))).toNat

end

end A211423.P14145719679125217047

/-!
# A211424: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2+3*x*y=0.

The programs for A211424, there is no canonical definition to state claims against.
-/

/-! ## A211424.P17464969492616579216

`4*(A211512(n)+n)+1`
-/

namespace A211424.P17464969492616579216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A211512 n + (n : ℤ)) + 1

end

end A211424.P17464969492616579216

/-! ## A211424.P7443397967945575293

`A016813(A211512(n)+n)`
-/

namespace A211424.P7443397967945575293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A211512 n + (n : ℤ)).toNat

end

end A211424.P7443397967945575293

/-! ## A211424.P7744219118768137125

`A008586(A211512(n)+n)+1`
-/

namespace A211424.P7744219118768137125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A211512 n + (n : ℤ)).toNat + 1

end

end A211424.P7744219118768137125

/-! ## A211424.P1723136426047184875

`A005408(2*(A211512(n)+n))`
-/

namespace A211424.P1723136426047184875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * (A211512 n + (n : ℤ))).toNat

end

end A211424.P1723136426047184875

/-! ## A211424.P1322255352942491014

`A004442(4*(A211512(n)+n))`
-/

namespace A211424.P1322255352942491014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * (A211512 n + (n : ℤ))).toNat

end

end A211424.P1322255352942491014

/-! ## A211424.P9799609261585237624

`A109613(4*(A211512(n)+n))`
-/

namespace A211424.P9799609261585237624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (4 * (A211512 n + (n : ℤ))).toNat

end

end A211424.P9799609261585237624

/-! ## A211424.P7587511744441916462

`A116966(4*(A211512(n)+n))`
-/

namespace A211424.P7587511744441916462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (4 * (A211512 n + (n : ℤ))).toNat

end

end A211424.P7587511744441916462

/-! ## A211424.P12854910807358268908

`A008619(8*(A211512(n)+n))`
-/

namespace A211424.P12854910807358268908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * (A211512 n + (n : ℤ))).toNat

end

end A211424.P12854910807358268908

/-! ## A211424.P11954255989106738982

`A008611(12*(A211512(n)+n))`
-/

namespace A211424.P11954255989106738982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (12 * (A211512 n + (n : ℤ))).toNat

end

end A211424.P11954255989106738982

/-!
# A211425: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2+4*x*y=0.

The programs for A211425, there is no canonical definition to state claims against.
-/

/-! ## A211425.P16497000251037397195

`A057918((2*A132188(2*n+1))²)`
-/

namespace A211425.P16497000251037397195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((2 * A132188 (2 * n + 1)) ^ 2).toNat

end

end A211425.P16497000251037397195

/-! ## A211425.P3871033356330540278

`∑[gcd(16, A102078(2*(n+1)))]`
-/

namespace A211425.P3871033356330540278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (A102078 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211425.P3871033356330540278

/-! ## A211425.P1144067427844661270

`record[A336898(and(n, A076809(n)))]`
-/

namespace A211425.P1144067427844661270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (Int.land (n : ℤ) (A076809 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211425.P1144067427844661270

/-! ## A211425.P15379433369972970420

`∩[A086743(n+1), A255645(n)]`
-/

namespace A211425.P15379433369972970420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211425.P15379433369972970420

/-! ## A211425.P13371128677724610680

`∩[A233745(n+1), A255645(n)]`
-/

namespace A211425.P13371128677724610680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211425.P13371128677724610680

/-!
# A211426: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and 2*w^2+x*y=0.

The programs for A211426, there is no canonical definition to state claims against.
-/

/-! ## A211426.P15379677619209183690

`1+4*(A211513(n)+n)`
-/

namespace A211426.P15379677619209183690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * (A211513 n + (n : ℤ))

end

end A211426.P15379677619209183690

/-! ## A211426.P16940438712776211523

`A016813(A211513(n)+n)`
-/

namespace A211426.P16940438712776211523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A211513 n + (n : ℤ)).toNat

end

end A211426.P16940438712776211523

/-! ## A211426.P15490492443005255643

`A008586(A211513(n)+n)+1`
-/

namespace A211426.P15490492443005255643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A211513 n + (n : ℤ)).toNat + 1

end

end A211426.P15490492443005255643

/-! ## A211426.P8261192680944913784

`A005408(2*(A211513(n)+n))`
-/

namespace A211426.P8261192680944913784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * (A211513 n + (n : ℤ))).toNat

end

end A211426.P8261192680944913784

/-! ## A211426.P8291464553597288827

`A157142(2*(A211513(n)+n))`
-/

namespace A211426.P8291464553597288827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (2 * (A211513 n + (n : ℤ))).toNat

end

end A211426.P8291464553597288827

/-! ## A211426.P9951745016970424403

`A016813(A211513(n))-A024000(A016813(n))`
-/

namespace A211426.P9951745016970424403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A211513 n).toNat - A024000 (A016813 n).toNat

end

end A211426.P9951745016970424403

/-! ## A211426.P6166959056000462359

`A004442(4*(A211513(n)+n))`
-/

namespace A211426.P6166959056000462359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * (A211513 n + (n : ℤ))).toNat

end

end A211426.P6166959056000462359

/-! ## A211426.P3996048049970750486

`A008611(12*(A211513(n)+n))`
-/

namespace A211426.P3996048049970750486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (12 * (A211513 n + (n : ℤ))).toNat

end

end A211426.P3996048049970750486

/-!
# A211427: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and 3*w^2+x*y=0.

The programs for A211427, there is no canonical definition to state claims against.
-/

/-! ## A211427.P11308144620619931581

`4*(A211514(n)+n)+1`
-/

namespace A211427.P11308144620619931581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A211514 n + (n : ℤ)) + 1

end

end A211427.P11308144620619931581

/-! ## A211427.P9010008600365859362

`A016813(A211514(n)+n)`
-/

namespace A211427.P9010008600365859362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A211514 n + (n : ℤ)).toNat

end

end A211427.P9010008600365859362

/-! ## A211427.P3706728813576732730

`A008586(A211514(n)+n)+1`
-/

namespace A211427.P3706728813576732730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A211514 n + (n : ℤ)).toNat + 1

end

end A211427.P3706728813576732730

/-! ## A211427.P7437992455808474262

`A004767(A211514(n)+n)-2`
-/

namespace A211427.P7437992455808474262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A211514 n + (n : ℤ)).toNat - 2

end

end A211427.P7437992455808474262

/-! ## A211427.P8059656891711289483

`A005408(2*(A211514(n)+n))`
-/

namespace A211427.P8059656891711289483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * (A211514 n + (n : ℤ))).toNat

end

end A211427.P8059656891711289483

/-! ## A211427.P11833508624347204943

`A005408(A211514(n)+A211514(n)+A005843(n))`
-/

namespace A211427.P11833508624347204943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A211514 n + (A211514 n + A005843 n)).toNat

end

end A211427.P11833508624347204943

/-! ## A211427.P15408168294650685687

`A004442(4*(A211514(n)+n))`
-/

namespace A211427.P15408168294650685687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * (A211514 n + (n : ℤ))).toNat

end

end A211427.P15408168294650685687

/-! ## A211427.P9362370152049797348

`A008619(8*(A211514(n)+n))`
-/

namespace A211427.P9362370152049797348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * (A211514 n + (n : ℤ))).toNat

end

end A211427.P9362370152049797348

/-!
# A211428: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and 2*w^2+3*x*y=0.

The programs for A211428, there is no canonical definition to state claims against.
-/

/-! ## A211428.P16091167754717255143

`∑[A004018(∑[A019426(n)]²)]`
-/

namespace A211428.P16091167754717255143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211428.P16091167754717255143

/-! ## A211428.P6719296778588204068

`lt[A045506(n+2), A020639(A218155(3*n+1))]`
-/

namespace A211428.P6719296778588204068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A218155 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A211428.P6719296778588204068

/-! ## A211428.P16237557394211866180

`eq[A057077(A002144(9*n+13)), A079261(9*n+2)]`
-/

namespace A211428.P16237557394211866180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002144 (9 * n + 13)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (9 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211428.P16237557394211866180

/-!
# A211429: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^3 + x*y = 0.

The programs for A211429, there is no canonical definition to state claims against.
-/

/-! ## A211429.P11620950325167487672

`1+4*(A211515(n)+n)`
-/

namespace A211429.P11620950325167487672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * (A211515 n + (n : ℤ))

end

end A211429.P11620950325167487672

/-! ## A211429.P3492256271600842148

`A016813(A211515(n)+n)`
-/

namespace A211429.P3492256271600842148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A211515 n + (n : ℤ)).toNat

end

end A211429.P3492256271600842148

/-! ## A211429.P17473636657521454030

`A005408(2*(A211515(n)+n))`
-/

namespace A211429.P17473636657521454030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * (A211515 n + (n : ℤ))).toNat

end

end A211429.P17473636657521454030

/-! ## A211429.P97250131713918629

`A116966(4*(A211515(n)+n))`
-/

namespace A211429.P97250131713918629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (4 * (A211515 n + (n : ℤ))).toNat

end

end A211429.P97250131713918629

/-! ## A211429.P2707228810759042521

`A008619(8*(A211515(n)+n))`
-/

namespace A211429.P2707228810759042521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * (A211515 n + (n : ℤ))).toNat

end

end A211429.P2707228810759042521

/-! ## A211429.P740553551016465137

`A029579(A008590(A211515(n)+n))`
-/

namespace A211429.P740553551016465137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A008590 (A211515 n + (n : ℤ)).toNat).toNat

end

end A211429.P740553551016465137

/-!
# A211430: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2+x+y=0.

The programs for A211430, the canonical program `A211430.P8380286044930942036` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211430 has offset 0).

The definition of A211430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211430.P14323155003654401403

`∑[A070864(A022144(n))]+n`
-/

namespace A211430.P14323155003654401403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A022144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211430.P14323155003654401403

namespace A211430

/-- `∑[A070864(A022144(n))]+n` -/
def P14323155003654401403.Spec : Prop :=
  ∀ n, P14323155003654401403.a n = A211430 n

end A211430

/-! ## A211430.P8380286044930942036

`2*A211483(n)-A005408(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A211430

/-- `2*A211483(n)-A005408(n)` -/
def P8380286044930942036.Spec : Prop :=
  ∀ n, P8380286044930942036.a n = A211430 n

theorem P8380286044930942036.correct : P8380286044930942036.Spec := by
  intro n
  simp only [A211430]

end A211430

/-! ## A211430.P6862245512023851507

`A327672(2*n+1)+A022554(2*n)`
-/

namespace A211430.P6862245512023851507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (2 * n + 1) + A022554 (2 * n)

end

end A211430.P6862245512023851507

namespace A211430

/-- `A327672(2*n+1)+A022554(2*n)` -/
def P6862245512023851507.Spec : Prop :=
  ∀ n, P6862245512023851507.a n = A211430 n

end A211430

/-! ## A211430.P9550970530654773508

`2*A327672(2*n+1)-A004273(n+1)`
-/

namespace A211430.P9550970530654773508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327672 (2 * n + 1) - A004273 (n + 1)

end

end A211430.P9550970530654773508

namespace A211430

/-- `2*A327672(2*n+1)-A004273(n+1)` -/
def P9550970530654773508.Spec : Prop :=
  ∀ n, P9550970530654773508.a n = A211430 n

end A211430

/-! ## A211430.P4232929108276360225

`A327672(2*n+1)+A327672(2*n)-A028391(2*n)`
-/

namespace A211430.P4232929108276360225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (2 * n + 1) + (A327672 (2 * n) - A028391 (2 * n))

end

end A211430.P4232929108276360225

namespace A211430

/-- `A327672(2*n+1)+A327672(2*n)-A028391(2*n)` -/
def P4232929108276360225.Spec : Prop :=
  ∀ n, P4232929108276360225.a n = A211430 n

end A211430

/-! ## A211430.P9741573690084966863

`A004273(A211483(n)-n)`
-/

namespace A211430.P9741573690084966863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A211483 n - (n : ℤ)).toNat

end

end A211430.P9741573690084966863

namespace A211430

/-- `A004273(A211483(n)-n)` -/
def P9741573690084966863.Spec : Prop :=
  ∀ n, P9741573690084966863.a n = A211430 n

end A211430

/-! ## A211430.P16131529051333033384

`A163985(A211483(n)-n)`
-/

namespace A211430.P16131529051333033384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A211483 n - (n : ℤ)).toNat

end

end A211430.P16131529051333033384

namespace A211430

/-- `A163985(A211483(n)-n)` -/
def P16131529051333033384.Spec : Prop :=
  ∀ n, P16131529051333033384.a n = A211430 n

end A211430

/-! ## A211430.P16279285545699371279

`A005408(A211483(n)-(n+1))`
-/

namespace A211430.P16279285545699371279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A211483 n - (n + 1 : ℤ)).toNat

end

end A211430.P16279285545699371279

namespace A211430

/-- `A005408(A211483(n)-(n+1))` -/
def P16279285545699371279.Spec : Prop :=
  ∀ n, P16279285545699371279.a n = A211430 n

end A211430

/-! ## A211430.P12278701692161978194

`A005408(A211483(n)-1-n)`
-/

namespace A211430.P12278701692161978194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A211483 n - 1 - (n : ℤ)).toNat

end

end A211430.P12278701692161978194

namespace A211430

/-- `A005408(A211483(n)-1-n)` -/
def P12278701692161978194.Spec : Prop :=
  ∀ n, P12278701692161978194.a n = A211430 n

end A211430

/-! ## A211430.P726309068074680864

`A005408(A022554(2*n)+n)`
-/

namespace A211430.P726309068074680864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A022554 (2 * n) + (n : ℤ)).toNat

end

end A211430.P726309068074680864

namespace A211430

/-- `A005408(A022554(2*n)+n)` -/
def P726309068074680864.Spec : Prop :=
  ∀ n, P726309068074680864.a n = A211430 n

end A211430

/-! ## A211430.P8453809974683012165

`A223134(A022554(2*n)+n)`
-/

namespace A211430.P8453809974683012165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A022554 (2 * n) + (n : ℤ)).toNat

end

end A211430.P8453809974683012165

namespace A211430

/-- `A223134(A022554(2*n)+n)` -/
def P8453809974683012165.Spec : Prop :=
  ∀ n, P8453809974683012165.a n = A211430 n

end A211430

/-! ## A211430.P6253906985306926104

`A004273(A327672(2*n+1)-n)`
-/

namespace A211430.P6253906985306926104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A327672 (2 * n + 1) - (n : ℤ)).toNat

end

end A211430.P6253906985306926104

namespace A211430

/-- `A004273(A327672(2*n+1)-n)` -/
def P6253906985306926104.Spec : Prop :=
  ∀ n, P6253906985306926104.a n = A211430 n

end A211430

/-! ## A211430.P5450916807035437976

`A008619(4*(A022554(2*n)+n))`
-/

namespace A211430.P5450916807035437976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * (A022554 (2 * n) + (n : ℤ))).toNat

end

end A211430.P5450916807035437976

namespace A211430

/-- `A008619(4*(A022554(2*n)+n))` -/
def P5450916807035437976.Spec : Prop :=
  ∀ n, P5450916807035437976.a n = A211430 n

end A211430

/-!
# A211431: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^3+(x+y)^2=0.

The programs for A211431, the canonical program `A211431.P6606073131395030940` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211431 has offset 0).

The definition of A211431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211431.P6606073131395030940

`Δ[n²]+2*A031876(2*n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A211431

/-- `Δ[n²]+2*A031876(2*n)` -/
def P6606073131395030940.Spec : Prop :=
  ∀ n, P6606073131395030940.a n = A211431 n

theorem P6606073131395030940.correct : P6606073131395030940.Spec := by
  intro n
  simp only [A211431]

end A211431

/-! ## A211431.P797641113429927370

`A005408(A031876(2*n)+n)`
-/

namespace A211431.P797641113429927370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A031876 (2 * n) + (n : ℤ)).toNat

end

end A211431.P797641113429927370

namespace A211431

/-- `A005408(A031876(2*n)+n)` -/
def P797641113429927370.Spec : Prop :=
  ∀ n, P797641113429927370.a n = A211431 n

end A211431

/-! ## A211431.P849582750028840434

`A004273(A031876(2*n)+n+1)`
-/

namespace A211431.P849582750028840434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A031876 (2 * n) + (n + 1 : ℤ)).toNat

end

end A211431.P849582750028840434

namespace A211431

/-- `A004273(A031876(2*n)+n+1)` -/
def P849582750028840434.Spec : Prop :=
  ∀ n, P849582750028840434.a n = A211431 n

end A211431

/-! ## A211431.P4487129086925795375

`A005843(A031876(2*n)+n)+1`
-/

namespace A211431.P4487129086925795375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A031876 (2 * n) + (n : ℤ)).toNat + 1

end

end A211431.P4487129086925795375

namespace A211431

/-- `A005843(A031876(2*n)+n)+1` -/
def P4487129086925795375.Spec : Prop :=
  ∀ n, P4487129086925795375.a n = A211431 n

end A211431

/-! ## A211431.P4259712243998406772

`A017329(A031876(2*n)+n)/5`
-/

namespace A211431.P4259712243998406772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017329 (A031876 (2 * n) + (n : ℤ)).toNat : ℚ) / 5

end

end A211431.P4259712243998406772

namespace A211431

/-- `A017329(A031876(2*n)+n)/5` -/
def P4259712243998406772.Spec : Prop :=
  ∀ n, P4259712243998406772.a n = (A211431 n : ℚ)

end A211431

/-! ## A211431.P9066713776066013718

`A004442(2*(A031876(2*n)+n))`
-/

namespace A211431.P9066713776066013718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * (A031876 (2 * n) + (n : ℤ))).toNat

end

end A211431.P9066713776066013718

namespace A211431

/-- `A004442(2*(A031876(2*n)+n))` -/
def P9066713776066013718.Spec : Prop :=
  ∀ n, P9066713776066013718.a n = A211431 n

end A211431

/-! ## A211431.P10711058175297954436

`A008619(4*(A031876(2*n)+n))`
-/

namespace A211431.P10711058175297954436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * (A031876 (2 * n) + (n : ℤ))).toNat

end

end A211431.P10711058175297954436

namespace A211431

/-- `A008619(4*(A031876(2*n)+n))` -/
def P10711058175297954436.Spec : Prop :=
  ∀ n, P10711058175297954436.a n = A211431 n

end A211431

/-!
# A211432: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2=x^2+y^2.

The programs for A211432, the canonical program `A211432.P3080294099686376554` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211432 has offset 0).

The definition of A211432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211432.P3080294099686376554

`2*A349538(n)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A211432

/-- `2*A349538(n)-1` -/
def P3080294099686376554.Spec : Prop :=
  ∀ n, P3080294099686376554.a n = A211432 n

theorem P3080294099686376554.correct : P3080294099686376554.Spec := by
  intro n
  simp only [A211432]

end A211432

/-! ## A211432.P8647127581450600674

`∑[2*A046109(n)]-1`
-/

namespace A211432.P8647127581450600674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211432.P8647127581450600674

namespace A211432

/-- `∑[2*A046109(n)]-1` -/
def P8647127581450600674.Spec : Prop :=
  ∀ n, P8647127581450600674.a n = A211432 n

end A211432

/-! ## A211432.P10487830926921573928

`A004273(A349538(n))`
-/

namespace A211432.P10487830926921573928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A349538 n).toNat

end

end A211432.P10487830926921573928

namespace A211432

/-- `A004273(A349538(n))` -/
def P10487830926921573928.Spec : Prop :=
  ∀ n, P10487830926921573928.a n = A211432 n

end A211432

/-! ## A211432.P15347429892221400288

`A004273(∑[A046109(n)])`
-/

namespace A211432.P15347429892221400288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211432.P15347429892221400288

namespace A211432

/-- `A004273(∑[A046109(n)])` -/
def P15347429892221400288.Spec : Prop :=
  ∀ n, P15347429892221400288.a n = A211432 n

end A211432

/-! ## A211432.P4199454496878280168

`A005408(A349538(n)-1)`
-/

namespace A211432.P4199454496878280168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A349538 n - 1).toNat

end

end A211432.P4199454496878280168

namespace A211432

/-- `A005408(A349538(n)-1)` -/
def P4199454496878280168.Spec : Prop :=
  ∀ n, P4199454496878280168.a n = A211432 n

end A211432

/-! ## A211432.P14466120648697947493

`A005408(xor(1, A349538(n)))`
-/

namespace A211432.P14466120648697947493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.xor 1 (A349538 n)).toNat

end

end A211432.P14466120648697947493

namespace A211432

/-- `A005408(xor(1, A349538(n)))` -/
def P14466120648697947493.Spec : Prop :=
  ∀ n, P14466120648697947493.a n = A211432 n

end A211432

/-! ## A211432.P12888242931351065332

`A005408(∑[A046109(n)]-1)`
-/

namespace A211432.P12888242931351065332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A211432.P12888242931351065332

namespace A211432

/-- `A005408(∑[A046109(n)]-1)` -/
def P12888242931351065332.Spec : Prop :=
  ∀ n, P12888242931351065332.a n = A211432 n

end A211432

/-! ## A211432.P13310363431130709898

`A014601(∑[A046109(n)])-2`
-/

namespace A211432.P13310363431130709898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A211432.P13310363431130709898

namespace A211432

/-- `A014601(∑[A046109(n)])-2` -/
def P13310363431130709898.Spec : Prop :=
  ∀ n, P13310363431130709898.a n = A211432 n

end A211432

/-! ## A211432.P2956239209181426858

`∑[A014963(A001316(n))*A046109(n)]`
-/

namespace A211432.P2956239209181426858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211432.P2956239209181426858

namespace A211432

/-- `∑[A014963(A001316(n))*A046109(n)]` -/
def P2956239209181426858.Spec : Prop :=
  ∀ n, P2956239209181426858.a n = A211432 n

end A211432

/-! ## A211432.P6677780711932190500

`∑[A020639(A000010(n+2))*A046109(n)]`
-/

namespace A211432.P6677780711932190500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211432.P6677780711932190500

namespace A211432

/-- `∑[A020639(A000010(n+2))*A046109(n)]` -/
def P6677780711932190500.Spec : Prop :=
  ∀ n, P6677780711932190500.a n = A211432 n

end A211432

/-! ## A211432.P128580813533148776

`∑[2*A004018(n²)]-1`
-/

namespace A211432.P128580813533148776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004018 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211432.P128580813533148776

namespace A211432

/-- `∑[2*A004018(n²)]-1` -/
def P128580813533148776.Spec : Prop :=
  ∀ n, P128580813533148776.a n = A211432 n

end A211432

/-! ## A211432.P4671040170011078051

`A004273(∑[A004018(n²)])`
-/

namespace A211432.P4671040170011078051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211432.P4671040170011078051

namespace A211432

/-- `A004273(∑[A004018(n²)])` -/
def P4671040170011078051.Spec : Prop :=
  ∀ n, P4671040170011078051.a n = A211432 n

end A211432

/-! ## A211432.P3219193441761063310

`A047411(∑[A004018(n²)])`
-/

namespace A211432.P3219193441761063310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211432.P3219193441761063310

namespace A211432

/-- `A047411(∑[A004018(n²)])` -/
def P3219193441761063310.Spec : Prop :=
  ∀ n, P3219193441761063310.a n = A211432 n

end A211432

/-! ## A211432.P11806351568235475730

`or(1, A004275(∑[A004018(n²)]))`
-/

namespace A211432.P11806351568235475730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A211432.P11806351568235475730

namespace A211432

/-- `or(1, A004275(∑[A004018(n²)]))` -/
def P11806351568235475730.Spec : Prop :=
  ∀ n, P11806351568235475730.a n = A211432 n

end A211432

/-!
# A211433: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+2x+4y=0.

The programs for A211433, the canonical program `A211433.P14900690286020442655` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211433 has offset 0).

The definition of A211433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211433.P14900690286020442655

`or(1, ∑[n*gcd(3, n%2)])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211433

/-- `or(1, ∑[n*gcd(3, n%2)])` -/
def P14900690286020442655.Spec : Prop :=
  ∀ n, (P14900690286020442655.a n : ℤ) = A211433 n

theorem P14900690286020442655.correct : P14900690286020442655.Spec := by
  intro n
  simp only [A211433]

end A211433

/-! ## A211433.P2250939341517245919

`or(1, ∑[n*((-1)^n+2)])`
-/

namespace A211433.P2250939341517245919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211433.P2250939341517245919

namespace A211433

/-- `or(1, ∑[n*((-1)^n+2)])` -/
def P2250939341517245919.Spec : Prop :=
  ∀ n, P2250939341517245919.a n = A211433 n

end A211433

/-! ## A211433.P6393404088159464944

`A106249(n)+n*or(1, n)`
-/

namespace A211433.P6393404088159464944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + (n * Nat.lor 1 n : ℤ)

end

end A211433.P6393404088159464944

namespace A211433

/-- `A106249(n)+n*or(1, n)` -/
def P6393404088159464944.Spec : Prop :=
  ∀ n, P6393404088159464944.a n = A211433 n

end A211433

/-! ## A211433.P4596234032237846726

`A174114(n+1)-and(2, -n)/2`
-/

namespace A211433.P4596234032237846726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174114 (n + 1) : ℚ) - (Int.land 2 (-(n : ℤ)) : ℚ) / 2

end

end A211433.P4596234032237846726

namespace A211433

/-- `A174114(n+1)-and(2, -n)/2` -/
def P4596234032237846726.Spec : Prop :=
  ∀ n, P4596234032237846726.a n = (A211433 n : ℚ)

end A211433

/-! ## A211433.P5371829132538054362

`A133872(n+1)+A074377(n)`
-/

namespace A211433.P5371829132538054362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) + A074377 n

end

end A211433.P5371829132538054362

namespace A211433

/-- `A133872(n+1)+A074377(n)` -/
def P5371829132538054362.Spec : Prop :=
  ∀ n, P5371829132538054362.a n = A211433 n

end A211433

/-! ## A211433.P3281579545497036126

`A186424(n)-A192447(n+1)`
-/

namespace A211433.P3281579545497036126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n - A192447 (n + 1)

end

end A211433.P3281579545497036126

namespace A211433

/-- `A186424(n)-A192447(n+1)` -/
def P3281579545497036126.Spec : Prop :=
  ∀ n, P3281579545497036126.a n = A211433 n

end A211433

/-! ## A211433.P14473958654440322133

`A183207(n+1)-A285869(n)`
-/

namespace A211433.P14473958654440322133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1) - A285869 n

end

end A211433.P14473958654440322133

namespace A211433

/-- `A183207(n+1)-A285869(n)` -/
def P14473958654440322133.Spec : Prop :=
  ∀ n, P14473958654440322133.a n = A211433 n

end A211433

/-! ## A211433.P15659670855321491282

`A074377(n)+A080513(n)%2`
-/

namespace A211433.P15659670855321491282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + Int.tmod (A080513 n) 2

end

end A211433.P15659670855321491282

namespace A211433

/-- `A074377(n)+A080513(n)%2` -/
def P15659670855321491282.Spec : Prop :=
  ∀ n, P15659670855321491282.a n = A211433 n

end A211433

/-! ## A211433.P9119419035845059900

`A106249(n)+n*A109613(n)`
-/

namespace A211433.P9119419035845059900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + (n : ℤ) * A109613 n

end

end A211433.P9119419035845059900

namespace A211433

/-- `A106249(n)+n*A109613(n)` -/
def P9119419035845059900.Spec : Prop :=
  ∀ n, P9119419035845059900.a n = A211433 n

end A211433

/-! ## A211433.P17099027003880984350

`A000982(A001651(n+1))-A000982(A110654(n))`
-/

namespace A211433.P17099027003880984350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A001651 (n + 1)).toNat - A000982 (A110654 n).toNat

end

end A211433.P17099027003880984350

namespace A211433

/-- `A000982(A001651(n+1))-A000982(A110654(n))` -/
def P17099027003880984350.Spec : Prop :=
  ∀ n, P17099027003880984350.a n = A211433 n

end A211433

/-! ## A211433.P7574649692327979067

`A106249(n)+n*A106249(A004277(n))`
-/

namespace A211433.P7574649692327979067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + (n : ℤ) * A106249 (A004277 n).toNat

end

end A211433.P7574649692327979067

namespace A211433

/-- `A106249(n)+n*A106249(A004277(n))` -/
def P7574649692327979067.Spec : Prop :=
  ∀ n, P7574649692327979067.a n = A211433 n

end A211433

/-! ## A211433.P10830111227833339589

`A106249(n)+n*A106249(A005843(n))`
-/

namespace A211433.P10830111227833339589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + (n : ℤ) * A106249 (A005843 n).toNat

end

end A211433.P10830111227833339589

namespace A211433

/-- `A106249(n)+n*A106249(A005843(n))` -/
def P10830111227833339589.Spec : Prop :=
  ∀ n, P10830111227833339589.a n = A211433 n

end A211433

/-! ## A211433.P16402358942287730355

`A133872(n+1)+A011848(A042964(n+1))`
-/

namespace A211433.P16402358942287730355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) + A011848 (A042964 (n + 1)).toNat

end

end A211433.P16402358942287730355

namespace A211433

/-- `A133872(n+1)+A011848(A042964(n+1))` -/
def P16402358942287730355.Spec : Prop :=
  ∀ n, P16402358942287730355.a n = A211433 n

end A211433

/-! ## A211433.P8541218911042184694

`A054925(A042964(n+1))-A021913(n+1)`
-/

namespace A211433.P8541218911042184694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (A042964 (n + 1)).toNat - A021913 (n + 1)

end

end A211433.P8541218911042184694

namespace A211433

/-- `A054925(A042964(n+1))-A021913(n+1)` -/
def P8541218911042184694.Spec : Prop :=
  ∀ n, P8541218911042184694.a n = A211433 n

end A211433

/-! ## A211433.P2778189869149145535

`A129756(3*n)+2*n*A008615(3*n)`
-/

namespace A211433.P2778189869149145535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (3 * n) + (2 * n : ℤ) * A008615 (3 * n)

end

end A211433.P2778189869149145535

namespace A211433

/-- `A129756(3*n)+2*n*A008615(3*n)` -/
def P2778189869149145535.Spec : Prop :=
  ∀ n, P2778189869149145535.a n = A211433 n

end A211433

/-! ## A211433.P4959739772042070291

`A000982(A008619(3*n))-A000982(A004526(n+1))`
-/

namespace A211433.P4959739772042070291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A008619 (3 * n)).toNat - A000982 (A004526 (n + 1)).toNat

end

end A211433.P4959739772042070291

namespace A211433

/-- `A000982(A008619(3*n))-A000982(A004526(n+1))` -/
def P4959739772042070291.Spec : Prop :=
  ∀ n, P4959739772042070291.a n = A211433 n

end A211433

/-! ## A211433.P14152955825411669342

`A074377(n)+A000035(A000124(n))`
-/

namespace A211433.P14152955825411669342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + A000035 (A000124 n).toNat

end

end A211433.P14152955825411669342

namespace A211433

/-- `A074377(n)+A000035(A000124(n))` -/
def P14152955825411669342.Spec : Prop :=
  ∀ n, P14152955825411669342.a n = A211433 n

end A211433

/-! ## A211433.P9191219268048321127

`A109613(A000217(n))+2*A110660(n)`
-/

namespace A211433.P9191219268048321127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A000217 n).toNat + 2 * A110660 n

end

end A211433.P9191219268048321127

namespace A211433

/-- `A109613(A000217(n))+2*A110660(n)` -/
def P9191219268048321127.Spec : Prop :=
  ∀ n, P9191219268048321127.a n = A211433 n

end A211433

/-! ## A211433.P9168104024984647668

`A014601(A257083(n))-(A000217(n)+2)`
-/

namespace A211433.P9168104024984647668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A257083 n).toNat - (A000217 n + 2)

end

end A211433.P9168104024984647668

namespace A211433

/-- `A014601(A257083(n))-(A000217(n)+2)` -/
def P9168104024984647668.Spec : Prop :=
  ∀ n, P9168104024984647668.a n = A211433 n

end A211433

/-! ## A211433.P1500794876476954419

`A110660(n)+A109613(A110660(n)+A000217(n))`
-/

namespace A211433.P1500794876476954419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + A109613 (A110660 n + A000217 n).toNat

end

end A211433.P1500794876476954419

namespace A211433

/-- `A110660(n)+A109613(A110660(n)+A000217(n))` -/
def P1500794876476954419.Spec : Prop :=
  ∀ n, P1500794876476954419.a n = A211433 n

end A211433

/-!
# A211434: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+2x+5y=0.

The programs for A211434, the canonical program `A211434.P18352804458425351472` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211434 has offset 0).

The definition of A211434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211434.P18352804458425351472

`or(1, floor(8/5*∑[n]))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211434

/-- `or(1, floor(8/5*∑[n]))` -/
def P18352804458425351472.Spec : Prop :=
  ∀ n, P18352804458425351472.a n = A211434 n

theorem P18352804458425351472.correct : P18352804458425351472.Spec := by
  intro n
  simp only [A211434]

end A211434

/-! ## A211434.P6316589880072238811

`xor(1, 4*round(∑[2*n]/5))`
-/

namespace A211434.P6316589880072238811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5))

end

end A211434.P6316589880072238811

namespace A211434

/-- `xor(1, 4*round(∑[2*n]/5))` -/
def P6316589880072238811.Spec : Prop :=
  ∀ n, P6316589880072238811.a n = A211434 n

end A211434

/-! ## A211434.P1729472344494148195

`4*floor((n+1)*n/5)+1`
-/

namespace A211434.P1729472344494148195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n + 1 : ℚ) * ((n : ℚ) / 5)⌋ + 1

end

end A211434.P1729472344494148195

namespace A211434

/-- `4*floor((n+1)*n/5)+1` -/
def P1729472344494148195.Spec : Prop :=
  ∀ n, P1729472344494148195.a n = A211434 n

end A211434

/-! ## A211434.P14130423575383311723

`and(-3, or(1, ceil(8/5*∑[n])))`
-/

namespace A211434.P14130423575383311723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Int.lor 1 ⌈(8 : ℚ) / 5 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉)

end

end A211434.P14130423575383311723

namespace A211434

/-- `and(-3, or(1, ceil(8/5*∑[n])))` -/
def P14130423575383311723.Spec : Prop :=
  ∀ n, P14130423575383311723.a n = A211434 n

end A211434

/-! ## A211434.P6217993004737389422

`and(A211435(n)+2, A211435(n))`
-/

namespace A211434.P6217993004737389422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211435 n + 2) (A211435 n)

end

end A211434.P6217993004737389422

namespace A211434

/-- `and(A211435(n)+2, A211435(n))` -/
def P6217993004737389422.Spec : Prop :=
  ∀ n, P6217993004737389422.a n = A211434 n

end A211434

/-! ## A211434.P2213719474595030303

`and(-3, A008812(2*n))`
-/

namespace A211434.P2213719474595030303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A008812 (2 * n))

end

end A211434.P2213719474595030303

namespace A211434

/-- `and(-3, A008812(2*n))` -/
def P2213719474595030303.Spec : Prop :=
  ∀ n, P2213719474595030303.a n = A211434 n

end A211434

/-! ## A211434.P13100397872913788408

`A016813(A011858(n+1))`
-/

namespace A211434.P13100397872913788408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A011858 (n + 1)).toNat

end

end A211434.P13100397872913788408

namespace A211434

/-- `A016813(A011858(n+1))` -/
def P13100397872913788408.Spec : Prop :=
  ∀ n, P13100397872913788408.a n = A211434 n

end A211434

/-! ## A211434.P4416712969932005235

`A016813(A056865(2*n+1)/2)`
-/

namespace A211434.P4416712969932005235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway ((A056865 (2 * n + 1) : ℚ) / 2)).toNat

end

end A211434.P4416712969932005235

namespace A211434

/-- `A016813(A056865(2*n+1)/2)` -/
def P4416712969932005235.Spec : Prop :=
  ∀ n, P4416712969932005235.a n = A211434 n

end A211434

/-! ## A211434.P15297409108467281671

`A016813(∑[A059995(A016813(n+1))])`
-/

namespace A211434.P15297409108467281671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A016813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211434.P15297409108467281671

namespace A211434

/-- `A016813(∑[A059995(A016813(n+1))])` -/
def P15297409108467281671.Spec : Prop :=
  ∀ n, P15297409108467281671.a n = A211434 n

end A211434

/-! ## A211434.P1348610901493402710

`and(A141725(n), A211435(n))`
-/

namespace A211434.P1348610901493402710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141725 n) (A211435 n)

end

end A211434.P1348610901493402710

namespace A211434

/-- `and(A141725(n), A211435(n))` -/
def P1348610901493402710.Spec : Prop :=
  ∀ n, P1348610901493402710.a n = A211434 n

end A211434

/-! ## A211434.P9725951079528841558

`and(A211435(n), A267921(n))`
-/

namespace A211434.P9725951079528841558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211435 n) (A267921 n)

end

end A211434.P9725951079528841558

namespace A211434

/-- `and(A211435(n), A267921(n))` -/
def P9725951079528841558.Spec : Prop :=
  ∀ n, P9725951079528841558.a n = A211434 n

end A211434

/-! ## A211434.P7354047755845382825

`and(A211435(n), A269911(n))`
-/

namespace A211434.P7354047755845382825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211435 n) (A269911 n)

end

end A211434.P7354047755845382825

namespace A211434

/-- `and(A211435(n), A269911(n))` -/
def P7354047755845382825.Spec : Prop :=
  ∀ n, P7354047755845382825.a n = A211434 n

end A211434

/-! ## A211434.P12069042097165244448

`A005408(floor(∑[4*n]/5))`
-/

namespace A211434.P12069042097165244448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋.toNat

end

end A211434.P12069042097165244448

namespace A211434

/-- `A005408(floor(∑[4*n]/5))` -/
def P12069042097165244448.Spec : Prop :=
  ∀ n, P12069042097165244448.a n = A211434 n

end A211434

/-! ## A211434.P9386566256707718478

`A042963(A056865(2*n+1)+1)`
-/

namespace A211434.P9386566256707718478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A056865 (2 * n + 1) + 1).toNat

end

end A211434.P9386566256707718478

namespace A211434

/-- `A042963(A056865(2*n+1)+1)` -/
def P9386566256707718478.Spec : Prop :=
  ∀ n, P9386566256707718478.a n = A211434 n

end A211434

/-! ## A211434.P2699924797457685201

`A047445(A056865(2*n+1)+1)`
-/

namespace A211434.P2699924797457685201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047445 (A056865 (2 * n + 1) + 1).toNat

end

end A211434.P2699924797457685201

namespace A211434

/-- `A047445(A056865(2*n+1)+1)` -/
def P2699924797457685201.Spec : Prop :=
  ∀ n, P2699924797457685201.a n = A211434 n

end A211434

/-! ## A211434.P5340934701962386169

`A109613(A281151(n))`
-/

namespace A211434.P5340934701962386169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A281151 n).toNat

end

end A211434.P5340934701962386169

namespace A211434

/-- `A109613(A281151(n))` -/
def P5340934701962386169.Spec : Prop :=
  ∀ n, P5340934701962386169.a n = A211434 n

end A211434

/-! ## A211434.P5827027407992152539

`A004442(2*A056865(2*n+1))`
-/

namespace A211434.P5827027407992152539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A056865 (2 * n + 1)).toNat

end

end A211434.P5827027407992152539

namespace A211434

/-- `A004442(2*A056865(2*n+1))` -/
def P5827027407992152539.Spec : Prop :=
  ∀ n, P5827027407992152539.a n = A211434 n

end A211434

/-!
# A211435: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+4x+5y=0.

The programs for A211435, the canonical program `A211435.P8099780167546791050` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211435 has offset 0).

The definition of A211435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211435.P8415005245640019264

`or(1, ceil(8/5*∑[n]))`
-/

namespace A211435.P8415005245640019264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈(8 : ℚ) / 5 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A211435.P8415005245640019264

namespace A211435

/-- `or(1, ceil(8/5*∑[n]))` -/
def P8415005245640019264.Spec : Prop :=
  ∀ n, P8415005245640019264.a n = A211435 n

end A211435

/-! ## A211435.P5156575875500885667

`2*∑[a(n-5)+4]-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=4`
-/

namespace A211435.P5156575875500885667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 3, 4] fun n f1 =>
  f1 (n - 5) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A211435.P5156575875500885667

namespace A211435

/-- `2*∑[a(n-5)+4]-1` -/
def P5156575875500885667.Spec : Prop :=
  ∀ n, P5156575875500885667.a n = A211435 n

end A211435

/-! ## A211435.P8099780167546791050

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11, a(4)=17, a(5)=25, a(6)=35`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211435

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P8099780167546791050.Spec : Prop :=
  ∀ n, P8099780167546791050.a n = A211435 n

theorem P8099780167546791050.correct : P8099780167546791050.Spec := by
  intro n
  simp only [A211435]

end A211435

/-! ## A211435.P11101116210732734137

`2*floor(abs(A054552(n+1)-n)/10)+1`
-/

namespace A211435.P11101116210732734137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(|A054552 (n + 1) - (n : ℤ)| : ℚ) / 10⌋ + 1

end

end A211435.P11101116210732734137

namespace A211435

/-- `2*floor(abs(A054552(n+1)-n)/10)+1` -/
def P11101116210732734137.Spec : Prop :=
  ∀ n, P11101116210732734137.a n = A211435 n

end A211435

/-! ## A211435.P14016959468908463502

`2*(A130520(2*n)+n)+1`
-/

namespace A211435.P14016959468908463502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130520 (2 * n) + (n : ℤ)) + 1

end

end A211435.P14016959468908463502

namespace A211435

/-- `2*(A130520(2*n)+n)+1` -/
def P14016959468908463502.Spec : Prop :=
  ∀ n, P14016959468908463502.a n = A211435 n

end A211435

/-! ## A211435.P5303883600869159022

`A130520(2*n)+A008732(2*n)`
-/

namespace A211435.P5303883600869159022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (2 * n) + A008732 (2 * n)

end

end A211435.P5303883600869159022

namespace A211435

/-- `A130520(2*n)+A008732(2*n)` -/
def P5303883600869159022.Spec : Prop :=
  ∀ n, P5303883600869159022.a n = A211435 n

end A211435

/-! ## A211435.P6837611193520370472

`A008812(2*n)`
-/

namespace A211435.P6837611193520370472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 (2 * n)

end

end A211435.P6837611193520370472

namespace A211435

/-- `A008812(2*n)` -/
def P6837611193520370472.Spec : Prop :=
  ∀ n, P6837611193520370472.a n = A211435 n

end A211435

/-! ## A211435.P16044189319396583777

`record[A008812(n)/(-1)^n]`
-/

namespace A211435.P16044189319396583777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008812 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211435.P16044189319396583777

namespace A211435

/-- `record[A008812(n)/(-1)^n]` -/
def P16044189319396583777.Spec : Prop :=
  ∀ n, P16044189319396583777.a n = (A211435 n : ℚ)

end A211435

/-! ## A211435.P10595350288173140709

`record[A008812(lcm(64, n+1)/64-1)]`
-/

namespace A211435.P10595350288173140709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 (SequenceMachineLib.roundAway ((Nat.lcm 64 (n + 1) : ℚ) / 64 - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211435.P10595350288173140709

namespace A211435

/-- `record[A008812(lcm(64, n+1)/64-1)]` -/
def P10595350288173140709.Spec : Prop :=
  ∀ n, P10595350288173140709.a n = A211435 n

end A211435

/-! ## A211435.P18045966696576177465

`∑[A250120(n)]-A033437(2*n+1)`
-/

namespace A211435.P18045966696576177465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033437 (2 * n + 1)

end

end A211435.P18045966696576177465

namespace A211435

/-- `∑[A250120(n)]-A033437(2*n+1)` -/
def P18045966696576177465.Spec : Prop :=
  ∀ n, P18045966696576177465.a n = A211435 n

end A211435

/-! ## A211435.P1679484178090256248

`A144679(2*n)-A343608(2*n+1)`
-/

namespace A211435.P1679484178090256248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144679 (2 * n) - A343608 (2 * n + 1)

end

end A211435.P1679484178090256248

namespace A211435

/-- `A144679(2*n)-A343608(2*n+1)` -/
def P1679484178090256248.Spec : Prop :=
  ∀ n, P1679484178090256248.a n = A211435 n

end A211435

/-! ## A211435.P8668256439099140873

`A398053(2*n+1)-A398050(2*n+1)`
-/

namespace A211435.P8668256439099140873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398053 (2 * n + 1) - A398050 (2 * n + 1)

end

end A211435.P8668256439099140873

namespace A211435

/-- `A398053(2*n+1)-A398050(2*n+1)` -/
def P8668256439099140873.Spec : Prop :=
  ∀ n, P8668256439099140873.a n = A211435 n

end A211435

/-! ## A211435.P12712988358764144902

`A398055(2*n+1)-A398052(2*n+1)`
-/

namespace A211435.P12712988358764144902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 (2 * n + 1) - A398052 (2 * n + 1)

end

end A211435.P12712988358764144902

namespace A211435

/-- `A398055(2*n+1)-A398052(2*n+1)` -/
def P12712988358764144902.Spec : Prop :=
  ∀ n, P12712988358764144902.a n = A211435 n

end A211435

/-! ## A211435.P8581903739172403443

`A001478(2*n+1)+2*A008732(2*n)`
-/

namespace A211435.P8581903739172403443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * n + 1) + 2 * A008732 (2 * n)

end

end A211435.P8581903739172403443

namespace A211435

/-- `A001478(2*n+1)+2*A008732(2*n)` -/
def P8581903739172403443.Spec : Prop :=
  ∀ n, P8581903739172403443.a n = A211435 n

end A211435

/-! ## A211435.P11277451663198389570

`A118015(2*n+3)-A090223(2*n+1)`
-/

namespace A211435.P11277451663198389570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (2 * n + 3) - A090223 (2 * n + 1)

end

end A211435.P11277451663198389570

namespace A211435

/-- `A118015(2*n+3)-A090223(2*n+1)` -/
def P11277451663198389570.Spec : Prop :=
  ∀ n, P11277451663198389570.a n = A211435 n

end A211435

/-! ## A211435.P6405946606620796276

`A343608(A263772(2*(n+1)))-A343608(2*n+1)`
-/

namespace A211435.P6405946606620796276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343608 (A263772 (2 * (n + 1))).toNat - A343608 (2 * n + 1)

end

end A211435.P6405946606620796276

namespace A211435

/-- `A343608(A263772(2*(n+1)))-A343608(2*n+1)` -/
def P6405946606620796276.Spec : Prop :=
  ∀ n, P6405946606620796276.a n = A211435 n

end A211435

/-! ## A211435.P121384940327408706

`A008807(4*n)`
-/

namespace A211435.P121384940327408706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 (4 * n)

end

end A211435.P121384940327408706

namespace A211435

/-- `A008807(4*n)` -/
def P121384940327408706.Spec : Prop :=
  ∀ n, P121384940327408706.a n = A211435 n

end A211435

/-! ## A211435.P11224441527512709614

`A008817(4*n+1)/2`
-/

namespace A211435.P11224441527512709614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008817 (4 * n + 1) : ℚ) / 2

end

end A211435.P11224441527512709614

namespace A211435

/-- `A008817(4*n+1)/2` -/
def P11224441527512709614.Spec : Prop :=
  ∀ n, P11224441527512709614.a n = (A211435 n : ℚ)

end A211435

/-! ## A211435.P6871938924198560581

`A008728(4*n+1)-(2*n+1)`
-/

namespace A211435.P6871938924198560581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (4 * n + 1) - (2 * n + 1 : ℤ)

end

end A211435.P6871938924198560581

namespace A211435

/-- `A008728(4*n+1)-(2*n+1)` -/
def P6871938924198560581.Spec : Prop :=
  ∀ n, P6871938924198560581.a n = A211435 n

end A211435

/-! ## A211435.P14476984776473937671

`∑[A072154(2*n)-A047486(2*n+1)]`
-/

namespace A211435.P14476984776473937671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A047486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211435.P14476984776473937671

namespace A211435

/-- `∑[A072154(2*n)-A047486(2*n+1)]` -/
def P14476984776473937671.Spec : Prop :=
  ∀ n, P14476984776473937671.a n = A211435 n

end A211435

/-!
# A211436: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and 2w+3x+4y=0.

The programs for A211436, the canonical program `A211436.P6099652789672682729` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211436 has offset 0).

The definition of A211436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211436.P6099652789672682729

`A194275(n)+A000982(A028242(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211436

/-- `A194275(n)+A000982(A028242(n))` -/
def P6099652789672682729.Spec : Prop :=
  ∀ n, P6099652789672682729.a n = A211436 n

theorem P6099652789672682729.correct : P6099652789672682729.Spec := by
  intro n
  simp only [A211436]

end A211436

/-! ## A211436.P5058583467110202501

`A118277(n)+A008612(∑[n])`
-/

namespace A211436.P5058583467110202501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + A008612 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211436.P5058583467110202501

namespace A211436

/-- `A118277(n)+A008612(∑[n])` -/
def P5058583467110202501.Spec : Prop :=
  ∀ n, P5058583467110202501.a n = A211436 n

end A211436

/-! ## A211436.P3796359256836214252

`A118277(n)+A103221(∑[n])`
-/

namespace A211436.P3796359256836214252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + A103221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211436.P3796359256836214252

namespace A211436

/-- `A118277(n)+A103221(∑[n])` -/
def P3796359256836214252.Spec : Prop :=
  ∀ n, P3796359256836214252.a n = A211436 n

end A211436

/-! ## A211436.P13658574443210248799

`A118277(n)+A081753(A002378(n))`
-/

namespace A211436.P13658574443210248799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + A081753 (A002378 n).toNat

end

end A211436.P13658574443210248799

namespace A211436

/-- `A118277(n)+A081753(A002378(n))` -/
def P13658574443210248799.Spec : Prop :=
  ∀ n, P13658574443210248799.a n = A211436 n

end A211436

/-! ## A211436.P16924861558691142091

`A008612(A195162(n))+A001082(n+1)`
-/

namespace A211436.P16924861558691142091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A195162 n).toNat + A001082 (n + 1)

end

end A211436.P16924861558691142091

namespace A211436

/-- `A008612(A195162(n))+A001082(n+1)` -/
def P16924861558691142091.Spec : Prop :=
  ∀ n, P16924861558691142091.a n = A211436 n

end A211436

/-! ## A211436.P4506817754639313426

`A004525(∑[A316317(n)]-A317300(n))`
-/

namespace A211436.P4506817754639313426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j - A317300 n).toNat

end

end A211436.P4506817754639313426

namespace A211436

/-- `A004525(∑[A316317(n)]-A317300(n))` -/
def P4506817754639313426.Spec : Prop :=
  ∀ n, P4506817754639313426.a n = A211436 n

end A211436

/-! ## A211436.P6423890341807104477

`A008612(A303814(n))+∑[n]`
-/

namespace A211436.P6423890341807104477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A303814 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211436.P6423890341807104477

namespace A211436

/-- `A008612(A303814(n))+∑[n]` -/
def P6423890341807104477.Spec : Prop :=
  ∀ n, P6423890341807104477.a n = A211436 n

end A211436

/-!
# A211437: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w*x*y=n.

The programs for A211437, the canonical program `A211437.P3946924361183422050` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211437 has offset 0).

The definition of A211437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211437.P89541746295760017

`A008574(∑{d}[n, A000005(#)])`
-/

namespace A211437.P89541746295760017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ d ∈ Nat.divisors (f1 n), A000005 d).toNat

end

end A211437.P89541746295760017

namespace A211437

/-- `A008574(∑{d}[n, A000005(#)])` -/
def P89541746295760017.Spec : Prop :=
  ∀ n, P89541746295760017.a n = A211437 n

end A211437

/-! ## A211437.P3946924361183422050

`A103517(∑{d}[n, A131089(#)])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211437

/-- `A103517(∑{d}[n, A131089(#)])` -/
def P3946924361183422050.Spec : Prop :=
  ∀ n, P3946924361183422050.a n = A211437 n

theorem P3946924361183422050.correct : P3946924361183422050.Spec := by
  intro n
  simp only [A211437]

end A211437

/-! ## A211437.P17865757520376322114

`A008574(∑{d}[n, A032741(#)+1])`
-/

namespace A211437.P17865757520376322114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ d ∈ Nat.divisors (f1 n), (A032741 d + 1)).toNat

end

end A211437.P17865757520376322114

namespace A211437

/-- `A008574(∑{d}[n, A032741(#)+1])` -/
def P17865757520376322114.Spec : Prop :=
  ∀ n, P17865757520376322114.a n = A211437 n

end A211437

/-! ## A211437.P4026561536327783208

`A065033(8*∑{d}[n, A000005(#)])`
-/

namespace A211437.P4026561536327783208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (8 * (∑ d ∈ Nat.divisors (f1 n), A000005 d)).toNat

end

end A211437.P4026561536327783208

namespace A211437

/-- `A065033(8*∑{d}[n, A000005(#)])` -/
def P4026561536327783208.Spec : Prop :=
  ∀ n, P4026561536327783208.a n = A211437 n

end A211437

/-! ## A211437.P13701272200631977241

`A008574(∑{d}[n, #-A049820(#)])`
-/

namespace A211437.P13701272200631977241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A049820 d)).toNat

end

end A211437.P13701272200631977241

namespace A211437

/-- `A008574(∑{d}[n, #-A049820(#)])` -/
def P13701272200631977241.Spec : Prop :=
  ∀ n, P13701272200631977241.a n = A211437 n

end A211437

/-! ## A211437.P10721946972670378273

`A000007(n)+4*∑{d}[n, A000005(#)]`
-/

namespace A211437.P10721946972670378273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * (∑ d ∈ Nat.divisors (f1 n), A000005 d)

end

end A211437.P10721946972670378273

namespace A211437

/-- `A000007(n)+4*∑{d}[n, A000005(#)]` -/
def P10721946972670378273.Spec : Prop :=
  ∀ n, P10721946972670378273.a n = A211437 n

end A211437

/-! ## A211437.P16847388840646481499

`∏{d}[4*∑{d}[n, A000005(#)], A014963(#)]`
-/

namespace A211437.P16847388840646481499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f2 n), A000005 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A211437.P16847388840646481499

namespace A211437

/-- `∏{d}[4*∑{d}[n, A000005(#)], A014963(#)]` -/
def P16847388840646481499.Spec : Prop :=
  ∀ n, P16847388840646481499.a n = A211437 n

end A211437

/-! ## A211437.P5792976392300340891

`log2(A054977(n))+4*∑{d}[n, A000005(#)]`
-/

namespace A211437.P5792976392300340891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A054977 n : ℝ) + ((4 * (∑ d ∈ Nat.divisors (f1 n), A000005 d) : ℤ) : ℝ)

end

end A211437.P5792976392300340891

namespace A211437

/-- `log2(A054977(n))+4*∑{d}[n, A000005(#)]` -/
def P5792976392300340891.Spec : Prop :=
  ∀ n, P5792976392300340891.a n = (A211437 n : ℝ)

end A211437

/-! ## A211437.P59367349891204532

`or(4*∑{d}[n, A000005(#)], A000007(2*n))`
-/

namespace A211437.P59367349891204532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * (∑ d ∈ Nat.divisors (f1 n), A000005 d)) (A000007 (2 * n))

end

end A211437.P59367349891204532

namespace A211437

/-- `or(4*∑{d}[n, A000005(#)], A000007(2*n))` -/
def P59367349891204532.Spec : Prop :=
  ∀ n, P59367349891204532.a n = A211437 n

end A211437

/-! ## A211437.P8107739157207157924

`4*∑{d}[n, A000005(#)]-A008683(A140513(n))`
-/

namespace A211437.P8107739157207157924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), A000005 d) - A008683 (A140513 n).toNat

end

end A211437.P8107739157207157924

namespace A211437

/-- `4*∑{d}[n, A000005(#)]-A008683(A140513(n))` -/
def P8107739157207157924.Spec : Prop :=
  ∀ n, P8107739157207157924.a n = A211437 n

end A211437

/-!
# A211438: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+2x+2y=0.

The programs for A211438, the canonical program `A211438.P11166465702707779407` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211438 has offset 0).

The definition of A211438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211438.P4655324490271405609

`comp[3*n]²-∑[n]`
-/

namespace A211438.P4655324490271405609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A211438.P4655324490271405609

namespace A211438

/-- `comp[3*n]²-∑[n]` -/
def P4655324490271405609.Spec : Prop :=
  ∀ n, P4655324490271405609.a n = A211438 n

end A211438

/-! ## A211438.P3817935353307205941

`∑[A298028(n)-n]`
-/

namespace A211438.P3817935353307205941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P3817935353307205941

namespace A211438

/-- `∑[A298028(n)-n]` -/
def P3817935353307205941.Spec : Prop :=
  ∀ n, P3817935353307205941.a n = A211438 n

end A211438

/-! ## A211438.P11166465702707779407

`or(1, 2*A118277(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211438

/-- `or(1, 2*A118277(n))` -/
def P11166465702707779407.Spec : Prop :=
  ∀ n, P11166465702707779407.a n = A211438 n

theorem P11166465702707779407.correct : P11166465702707779407.Spec := by
  intro n
  simp only [A211438]

end A211438

/-! ## A211438.P9503926775502795533

`abs(A135556(n+1)-∑[n])`
-/

namespace A211438.P9503926775502795533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135556 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A211438.P9503926775502795533

namespace A211438

/-- `abs(A135556(n+1)-∑[n])` -/
def P9503926775502795533.Spec : Prop :=
  ∀ n, P9503926775502795533.a n = A211438 n

end A211438

/-! ## A211438.P5320816017755966689

`∑[A008574(2*n)-lcm(2, 3*n)]`
-/

namespace A211438.P5320816017755966689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - (Nat.lcm 2 (3 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P5320816017755966689

namespace A211438

/-- `∑[A008574(2*n)-lcm(2, 3*n)]` -/
def P5320816017755966689.Spec : Prop :=
  ∀ n, P5320816017755966689.a n = A211438 n

end A211438

/-! ## A211438.P18382719953736369373

`xor(1, ∑[n*A010685(n+1)+n])`
-/

namespace A211438.P18382719953736369373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010685 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211438.P18382719953736369373

namespace A211438

/-- `xor(1, ∑[n*A010685(n+1)+n])` -/
def P18382719953736369373.Spec : Prop :=
  ∀ n, P18382719953736369373.a n = A211438 n

end A211438

/-! ## A211438.P16240136436774057940

`∑[A028310(n)+gcd(4*n, n^3)]`
-/

namespace A211438.P16240136436774057940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (Nat.gcd (4 * n) (n ^ 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P16240136436774057940

namespace A211438

/-- `∑[A028310(n)+gcd(4*n, n^3)]` -/
def P16240136436774057940.Spec : Prop :=
  ∀ n, P16240136436774057940.a n = A211438 n

end A211438

/-! ## A211438.P4411777750066474132

`∑[A004277(A195140(n))]`
-/

namespace A211438.P4411777750066474132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A195140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P4411777750066474132

namespace A211438

/-- `∑[A004277(A195140(n))]` -/
def P4411777750066474132.Spec : Prop :=
  ∀ n, P4411777750066474132.a n = A211438 n

end A211438

/-! ## A211438.P10173752860459399317

`A008739(A047352(n+1))`
-/

namespace A211438.P10173752860459399317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 (A047352 (n + 1)).toNat

end

end A211438.P10173752860459399317

namespace A211438

/-- `A008739(A047352(n+1))` -/
def P10173752860459399317.Spec : Prop :=
  ∀ n, P10173752860459399317.a n = A211438 n

end A211438

/-! ## A211438.P3351548557562506593

`A333251(A113805(n+1))`
-/

namespace A211438.P3351548557562506593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333251 (A113805 (n + 1)).toNat

end

end A211438.P3351548557562506593

namespace A211438

/-- `A333251(A113805(n+1))` -/
def P3351548557562506593.Spec : Prop :=
  ∀ n, P3351548557562506593.a n = A211438 n

end A211438

/-! ## A211438.P2105588739301562300

`∑[A195161(A028310(n))+n]`
-/

namespace A211438.P2105588739301562300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P2105588739301562300

namespace A211438

/-- `∑[A195161(A028310(n))+n]` -/
def P2105588739301562300.Spec : Prop :=
  ∀ n, P2105588739301562300.a n = A211438 n

end A211438

/-! ## A211438.P15285674429575075319

`∑[A257088(A022998(n))+n]`
-/

namespace A211438.P15285674429575075319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A022998 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P15285674429575075319

namespace A211438

/-- `∑[A257088(A022998(n))+n]` -/
def P15285674429575075319.Spec : Prop :=
  ∀ n, P15285674429575075319.a n = A211438 n

end A211438

/-! ## A211438.P4492552929097173880

`∑[A257088(A257088(n))+n]`
-/

namespace A211438.P4492552929097173880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A257088 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P4492552929097173880

namespace A211438

/-- `∑[A257088(A257088(n))+n]` -/
def P4492552929097173880.Spec : Prop :=
  ∀ n, P4492552929097173880.a n = A211438 n

end A211438

/-! ## A211438.P13357053509567424707

`∪[A168235(n+1), A239449(n)]`
-/

namespace A211438.P13357053509567424707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211438.P13357053509567424707

namespace A211438

/-- `∪[A168235(n+1), A239449(n)]` -/
def P13357053509567424707.Spec : Prop :=
  ∀ n, (P13357053509567424707.a n : ℤ) = A211438 n

end A211438

/-! ## A211438.P457918366001544481

`(A186424(n)+A014493(n+1))/2`
-/

namespace A211438.P457918366001544481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186424 n + A014493 (n + 1) : ℚ) / 2

end

end A211438.P457918366001544481

namespace A211438

/-- `(A186424(n)+A014493(n+1))/2` -/
def P457918366001544481.Spec : Prop :=
  ∀ n, P457918366001544481.a n = (A211438 n : ℚ)

end A211438

/-! ## A211438.P2346246610625689694

`(A274682(n+1)-A000217(n))/2`
-/

namespace A211438.P2346246610625689694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274682 (n + 1) - A000217 n : ℚ) / 2

end

end A211438.P2346246610625689694

namespace A211438

/-- `(A274682(n+1)-A000217(n))/2` -/
def P2346246610625689694.Spec : Prop :=
  ∀ n, P2346246610625689694.a n = (A211438 n : ℚ)

end A211438

/-! ## A211438.P14751348945402874418

`∑[A028310(A022998(A022998(n))+n)]`
-/

namespace A211438.P14751348945402874418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022998 (A022998 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211438.P14751348945402874418

namespace A211438

/-- `∑[A028310(A022998(A022998(n))+n)]` -/
def P14751348945402874418.Spec : Prop :=
  ∀ n, P14751348945402874418.a n = A211438 n

end A211438

/-! ## A211438.P2743412789165007747

`∩[2*n+1, A008739(n)]`
-/

namespace A211438.P2743412789165007747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211438.P2743412789165007747

namespace A211438

/-- `∩[2*n+1, A008739(n)]` -/
def P2743412789165007747.Spec : Prop :=
  ∀ n, (P2743412789165007747.a n : ℤ) = A211438 n

end A211438

/-! ## A211438.P1191504473007906241

`∩[2*n+1, A008800(2*n)]`
-/

namespace A211438.P1191504473007906241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008800 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211438.P1191504473007906241

namespace A211438

/-- `∩[2*n+1, A008800(2*n)]` -/
def P1191504473007906241.Spec : Prop :=
  ∀ n, (P1191504473007906241.a n : ℤ) = A211438 n

end A211438

/-! ## A211438.P13196067131803990926

`∩[2*n+1, A025764(2*n)]`
-/

namespace A211438.P13196067131803990926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025764 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211438.P13196067131803990926

namespace A211438

/-- `∩[2*n+1, A025764(2*n)]` -/
def P13196067131803990926.Spec : Prop :=
  ∀ n, (P13196067131803990926.a n : ℤ) = A211438 n

end A211438

/-!
# A211439: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+3x+3y=0.

The programs for A211439, the canonical program `A211439.P6510682915476847404` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211439 has offset 0).

The definition of A211439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211439.P6510682915476847404

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=19, a(4)=25, a(5)=31, a(6)=59`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211439

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P6510682915476847404.Spec : Prop :=
  ∀ n, P6510682915476847404.a n = A211439 n

theorem P6510682915476847404.correct : P6510682915476847404.Spec := by
  intro n
  simp only [A211439]

end A211439

/-! ## A211439.P11320323928205608589

`A211440(n)+A002378(A002264(n))`
-/

namespace A211439.P11320323928205608589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n + A002378 (A002264 n).toNat

end

end A211439.P11320323928205608589

namespace A211439

/-- `A211440(n)+A002378(A002264(n))` -/
def P11320323928205608589.Spec : Prop :=
  ∀ n, P11320323928205608589.a n = A211439 n

end A211439

/-! ## A211439.P2311790525279564666

`A211440(n)+A110660(A004396(n))`
-/

namespace A211439.P2311790525279564666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n + A110660 (A004396 n).toNat

end

end A211439.P2311790525279564666

namespace A211439

/-- `A211440(n)+A110660(A004396(n))` -/
def P2311790525279564666.Spec : Prop :=
  ∀ n, P2311790525279564666.a n = A211439 n

end A211439

/-! ## A211439.P1402820775571281908

`A211440(n)+∑[A142150(A042965(n+1))]`
-/

namespace A211439.P1402820775571281908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A042965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211439.P1402820775571281908

namespace A211439

/-- `A211440(n)+∑[A142150(A042965(n+1))]` -/
def P1402820775571281908.Spec : Prop :=
  ∀ n, P1402820775571281908.a n = A211439 n

end A211439

/-! ## A211439.P14985004401003573505

`∑[A022998(A008576(n))-A006369(n)]`
-/

namespace A211439.P14985004401003573505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A008576 n).toNat - A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211439.P14985004401003573505

namespace A211439

/-- `∑[A022998(A008576(n))-A006369(n)]` -/
def P14985004401003573505.Spec : Prop :=
  ∀ n, P14985004401003573505.a n = A211439 n

end A211439

/-! ## A211439.P5669894359485903395

`A016754(n)-A110660(A297464(n))`
-/

namespace A211439.P5669894359485903395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A110660 (A297464 n).toNat

end

end A211439.P5669894359485903395

namespace A211439

/-- `A016754(n)-A110660(A297464(n))` -/
def P5669894359485903395.Spec : Prop :=
  ∀ n, P5669894359485903395.a n = A211439 n

end A211439

/-! ## A211439.P1911604249238000102

`∩[2*n+1, A025766(2*n)]`
-/

namespace A211439.P1911604249238000102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025766 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211439.P1911604249238000102

namespace A211439

/-- `∩[2*n+1, A025766(2*n)]` -/
def P1911604249238000102.Spec : Prop :=
  ∀ n, (P1911604249238000102.a n : ℤ) = A211439 n

end A211439

/-! ## A211439.P2982946912483742019

`A005408(∑[A195159(A004396(n))])`
-/

namespace A211439.P2982946912483742019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211439.P2982946912483742019

namespace A211439

/-- `A005408(∑[A195159(A004396(n))])` -/
def P2982946912483742019.Spec : Prop :=
  ∀ n, P2982946912483742019.a n = A211439 n

end A211439

/-! ## A211439.P16653280700061670019

`filter[A025766(2*n), A000035(#)]`
-/

namespace A211439.P16653280700061670019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025766 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A211439.P16653280700061670019

namespace A211439

/-- `filter[A025766(2*n), A000035(#)]` -/
def P16653280700061670019.Spec : Prop :=
  ∀ n, P16653280700061670019.a n = A211439 n

end A211439

/-! ## A211439.P4891559583531259040

`A008619(∑[A195159(A008576(n))])`
-/

namespace A211439.P4891559583531259040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211439.P4891559583531259040

namespace A211439

/-- `A008619(∑[A195159(A008576(n))])` -/
def P4891559583531259040.Spec : Prop :=
  ∀ n, P4891559583531259040.a n = A211439 n

end A211439

/-!
# A211440: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and 2w+3x+3y=0.

The programs for A211440, the canonical program `A211440.P17264346590958773965` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211440 has offset 0).

The definition of A211440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211440.P17264346590958773965

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=17, a(4)=23, a(5)=29, a(6)=53`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211440

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P17264346590958773965.Spec : Prop :=
  ∀ n, P17264346590958773965.a n = A211440 n

theorem P17264346590958773965.correct : P17264346590958773965.Spec := by
  intro n
  simp only [A211440]

end A211440

/-! ## A211440.P13338439029064755829

`A001844(n)-2*A322042(n+1)²`
-/

namespace A211440.P13338439029064755829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 2 * A322042 (n + 1) ^ 2

end

end A211440.P13338439029064755829

namespace A211440

/-- `A001844(n)-2*A322042(n+1)²` -/
def P13338439029064755829.Spec : Prop :=
  ∀ n, P13338439029064755829.a n = A211440 n

end A211440

/-! ## A211440.P4451750199345455341

`A042968(n+1)²-∑[A042965(n+1)]`
-/

namespace A211440.P4451750199345455341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211440.P4451750199345455341

namespace A211440

/-- `A042968(n+1)²-∑[A042965(n+1)]` -/
def P4451750199345455341.Spec : Prop :=
  ∀ n, P4451750199345455341.a n = A211440 n

end A211440

/-! ## A211440.P12278559478457446015

`A001844(n)-2*A004523(n+1)²`
-/

namespace A211440.P12278559478457446015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 2 * A004523 (n + 1) ^ 2

end

end A211440.P12278559478457446015

namespace A211440

/-- `A001844(n)-2*A004523(n+1)²` -/
def P12278559478457446015.Spec : Prop :=
  ∀ n, P12278559478457446015.a n = A211440 n

end A211440

/-! ## A211440.P6945520193466741489

`A185170(∑[gcd(3, n)])`
-/

namespace A211440.P6945520193466741489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211440.P6945520193466741489

namespace A211440

/-- `A185170(∑[gcd(3, n)])` -/
def P6945520193466741489.Spec : Prop :=
  ∀ n, P6945520193466741489.a n = A211440 n

end A211440

/-! ## A211440.P16861062485215969190

`A185170(A047205(n+2))`
-/

namespace A211440.P16861062485215969190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (A047205 (n + 2)).toNat

end

end A211440.P16861062485215969190

namespace A211440

/-- `A185170(A047205(n+2))` -/
def P16861062485215969190.Spec : Prop :=
  ∀ n, P16861062485215969190.a n = A211440 n

end A211440

/-! ## A211440.P15012353980090818892

`record[A185170(n)/gcd(5, A158632(n+1))]`
-/

namespace A211440.P15012353980090818892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185170 n : ℚ) / (Int.gcd 5 (A158632 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211440.P15012353980090818892

namespace A211440

/-- `record[A185170(n)/gcd(5, A158632(n+1))]` -/
def P15012353980090818892.Spec : Prop :=
  ∀ n, P15012353980090818892.a n = (A211440 n : ℚ)

end A211440

/-! ## A211440.P10984096186073340443

`A004396(2*n+1)²-∑[A004396(2*n)]`
-/

namespace A211440.P10984096186073340443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211440.P10984096186073340443

namespace A211440

/-- `A004396(2*n+1)²-∑[A004396(2*n)]` -/
def P10984096186073340443.Spec : Prop :=
  ∀ n, P10984096186073340443.a n = A211440 n

end A211440

/-! ## A211440.P1765396260576070796

`A036408(A063241(n+1))`
-/

namespace A211440.P1765396260576070796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (A063241 (n + 1)).toNat

end

end A211440.P1765396260576070796

namespace A211440

/-- `A036408(A063241(n+1))` -/
def P1765396260576070796.Spec : Prop :=
  ∀ n, P1765396260576070796.a n = A211440 n

end A211440

/-! ## A211440.P17697345044200341675

`A085717(2*A047202(n+1))-A047202(n+1)`
-/

namespace A211440.P17697345044200341675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085717 (2 * A047202 (n + 1)).toNat - A047202 (n + 1)

end

end A211440.P17697345044200341675

namespace A211440

/-- `A085717(2*A047202(n+1))-A047202(n+1)` -/
def P17697345044200341675.Spec : Prop :=
  ∀ n, P17697345044200341675.a n = A211440 n

end A211440

/-! ## A211440.P9024378113307702336

`∩[2*n+1, round((n+2)²/10)]`
-/

namespace A211440.P9024378113307702336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2) ^ 2 : ℚ) / 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211440.P9024378113307702336

namespace A211440

/-- `∩[2*n+1, round((n+2)²/10)]` -/
def P9024378113307702336.Spec : Prop :=
  ∀ n, (P9024378113307702336.a n : ℤ) = A211440 n

end A211440

/-! ## A211440.P11563003282169624949

`filter[A056864(2*n+1), A098725(#)]`
-/

namespace A211440.P11563003282169624949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A211440.P11563003282169624949

namespace A211440

/-- `filter[A056864(2*n+1), A098725(#)]` -/
def P11563003282169624949.Spec : Prop :=
  ∀ n, P11563003282169624949.a n = A211440 n

end A211440

/-! ## A211440.P7664321229850013226

`filter[A056864(2*n+1), A166486(#)]`
-/

namespace A211440.P7664321229850013226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A211440.P7664321229850013226

namespace A211440

/-- `filter[A056864(2*n+1), A166486(#)]` -/
def P7664321229850013226.Spec : Prop :=
  ∀ n, P7664321229850013226.a n = A211440 n

end A211440

/-! ## A211440.P6855999827033141997

`(A004773(n)+1)²-A004773(∑[n])`
-/

namespace A211440.P6855999827033141997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004773 n + 1) ^ 2 - A004773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211440.P6855999827033141997

namespace A211440

/-- `(A004773(n)+1)²-A004773(∑[n])` -/
def P6855999827033141997.Spec : Prop :=
  ∀ n, P6855999827033141997.a n = A211440 n

end A211440

/-! ## A211440.P15379465404956373749

`A000265(A042968(n+1)²-A042968(∑[n]+1)+1)`
-/

namespace A211440.P15379465404956373749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A042968 (n + 1) ^ 2 - A042968 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A211440.P15379465404956373749

namespace A211440

/-- `A000265(A042968(n+1)²-A042968(∑[n]+1)+1)` -/
def P15379465404956373749.Spec : Prop :=
  ∀ n, P15379465404956373749.a n = A211440 n

end A211440

/-! ## A211440.P2669322832353233807

`A004396(2*n+1)²-A004396(n²+n)`
-/

namespace A211440.P2669322832353233807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1) ^ 2 - A004396 (n ^ 2 + n)

end

end A211440.P2669322832353233807

namespace A211440

/-- `A004396(2*n+1)²-A004396(n²+n)` -/
def P2669322832353233807.Spec : Prop :=
  ∀ n, P2669322832353233807.a n = A211440 n

end A211440

/-! ## A211440.P6778718554964374071

`A274616(2*n+1)²-A274616(n²+n)`
-/

namespace A211440.P6778718554964374071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (2 * n + 1) ^ 2 - A274616 (n ^ 2 + n)

end

end A211440.P6778718554964374071

namespace A211440

/-- `A274616(2*n+1)²-A274616(n²+n)` -/
def P6778718554964374071.Spec : Prop :=
  ∀ n, P6778718554964374071.a n = A211440 n

end A211440

/-!
# A211441: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w + x + y = 2.

The programs for A211441, the canonical program `A211441.P17088616189600588942` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211441 has offset 0).

The definition of A211441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211441.P17088616189600588942

`a(n-1)+6*n` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211441

/-- `a(n-1)+6*n` -/
def P17088616189600588942.Spec : Prop :=
  ∀ n, (P17088616189600588942.a n : ℤ) = A211441 n

theorem P17088616189600588942.correct : P17088616189600588942.Spec := by
  intro n
  simp only [A211441]

end A211441

/-! ## A211441.P2613454973636441254

`∑[3*n*ceil(atan(n))]`
-/

namespace A211441.P2613454973636441254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ⌈Real.arctan (n : ℝ)⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211441.P2613454973636441254

namespace A211441

/-- `∑[3*n*ceil(atan(n))]` -/
def P2613454973636441254.Spec : Prop :=
  ∀ n, P2613454973636441254.a n = A211441 n

end A211441

/-! ## A211441.P12940066159802541252

`∑[3*(2*n-char[1])]`
-/

namespace A211441.P12940066159802541252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211441.P12940066159802541252

namespace A211441

/-- `∑[3*(2*n-char[1])]` -/
def P12940066159802541252.Spec : Prop :=
  ∀ n, P12940066159802541252.a n = A211441 n

end A211441

/-! ## A211441.P4912529427616671676

`ogf((3x+6x^2-3x^3)/(1-3x+3x^2-x^3))`
-/

namespace A211441.P4912529427616671676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6, -3] [1, -3, 3, -1] n

end

end A211441.P4912529427616671676

namespace A211441

/-- `ogf((3x+6x^2-3x^3)/(1-3x+3x^2-x^3))` -/
def P4912529427616671676.Spec : Prop :=
  ∀ n, P4912529427616671676.a n = A211441 n

end A211441

/-! ## A211441.P3468603322489878269

`7*n-(n-a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A211441.P3468603322489878269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (7 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A211441.P3468603322489878269

namespace A211441

/-- `7*n-(n-a(n-1))` -/
def P3468603322489878269.Spec : Prop :=
  ∀ n, P3468603322489878269.a n = A211441 n

end A211441

/-! ## A211441.P2297378912433461818

`3*((n-1)%(n+1)+n²)`
-/

namespace A211441.P2297378912433461818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + (n ^ 2 : ℤ))

end

end A211441.P2297378912433461818

namespace A211441

/-- `3*((n-1)%(n+1)+n²)` -/
def P2297378912433461818.Spec : Prop :=
  ∀ n, P2297378912433461818.a n = A211441 n

end A211441

/-! ## A211441.P15688717710329658352

`3*(A103505(n+1)-1)`
-/

namespace A211441.P15688717710329658352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A103505 (n + 1) - 1)

end

end A211441.P15688717710329658352

namespace A211441

/-- `3*(A103505(n+1)-1)` -/
def P15688717710329658352.Spec : Prop :=
  ∀ n, P15688717710329658352.a n = A211441 n

end A211441

/-! ## A211441.P12157822074655547065

`3*floor(n*sqrt(A005563(n)))`
-/

namespace A211441.P12157822074655547065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℝ) * Real.sqrt (A005563 n : ℝ)⌋

end

end A211441.P12157822074655547065

namespace A211441

/-- `3*floor(n*sqrt(A005563(n)))` -/
def P12157822074655547065.Spec : Prop :=
  ∀ n, P12157822074655547065.a n = A211441 n

end A211441

/-! ## A211441.P3627623318852165458

`3*(n+1)*A028310(n)-3`
-/

namespace A211441.P3627623318852165458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A028310 n) - 3

end

end A211441.P3627623318852165458

namespace A211441

/-- `3*(n+1)*A028310(n)-3` -/
def P3627623318852165458.Spec : Prop :=
  ∀ n, P3627623318852165458.a n = A211441 n

end A211441

/-! ## A211441.P6502247334669250235

`3*((n+1)*(A004277(n)-n)-1)`
-/

namespace A211441.P6502247334669250235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * (A004277 n - (n : ℤ)) - 1)

end

end A211441.P6502247334669250235

namespace A211441

/-- `3*((n+1)*(A004277(n)-n)-1)` -/
def P6502247334669250235.Spec : Prop :=
  ∀ n, P6502247334669250235.a n = A211441 n

end A211441

/-! ## A211441.P16124218206664611255

`A003215(n)-A123932(n)`
-/

namespace A211441.P16124218206664611255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A123932 n

end

end A211441.P16124218206664611255

namespace A211441

/-- `A003215(n)-A123932(n)` -/
def P16124218206664611255.Spec : Prop :=
  ∀ n, P16124218206664611255.a n = A211441 n

end A211441

/-! ## A211441.P11951123282290699309

`A354343(n)-A113311(n)`
-/

namespace A211441.P11951123282290699309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n - A113311 n

end

end A211441.P11951123282290699309

namespace A211441

/-- `A354343(n)-A113311(n)` -/
def P11951123282290699309.Spec : Prop :=
  ∀ n, P11951123282290699309.a n = A211441 n

end A211441

/-! ## A211441.P1321295349234765945

`A045945(n)%A097803(n)`
-/

namespace A211441.P1321295349234765945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045945 n) (A097803 n)

end

end A211441.P1321295349234765945

namespace A211441

/-- `A045945(n)%A097803(n)` -/
def P1321295349234765945.Spec : Prop :=
  ∀ n, P1321295349234765945.a n = A211441 n

end A211441

/-! ## A211441.P2245391265607043856

`A144410(n)%A003215(n)`
-/

namespace A211441.P2245391265607043856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144410 n) (A003215 n)

end

end A211441.P2245391265607043856

namespace A211441

/-- `A144410(n)%A003215(n)` -/
def P2245391265607043856.Spec : Prop :=
  ∀ n, P2245391265607043856.a n = A211441 n

end A211441

/-! ## A211441.P3864887726769124923

`A006222(n)%A164897(n)`
-/

namespace A211441.P3864887726769124923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006222 n) (A164897 n)

end

end A211441.P3864887726769124923

namespace A211441

/-- `A006222(n)%A164897(n)` -/
def P3864887726769124923.Spec : Prop :=
  ∀ n, P3864887726769124923.a n = A211441 n

end A211441

/-! ## A211441.P884789306588783491

`A173309(n)%A001539(n)`
-/

namespace A211441.P884789306588783491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173309 n) (A001539 n)

end

end A211441.P884789306588783491

namespace A211441

/-- `A173309(n)%A001539(n)` -/
def P884789306588783491.Spec : Prop :=
  ∀ n, P884789306588783491.a n = A211441 n

end A211441

/-! ## A211441.P14202728427006904614

`A179741(n)%A006137(n)`
-/

namespace A211441.P14202728427006904614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179741 n) (A006137 n)

end

end A211441.P14202728427006904614

namespace A211441

/-- `A179741(n)%A006137(n)` -/
def P14202728427006904614.Spec : Prop :=
  ∀ n, P14202728427006904614.a n = A211441 n

end A211441

/-! ## A211441.P13303805719101905649

`A158463(n)%A080855(n)`
-/

namespace A211441.P13303805719101905649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 n) (A080855 n)

end

end A211441.P13303805719101905649

namespace A211441

/-- `A158463(n)%A080855(n)` -/
def P13303805719101905649.Spec : Prop :=
  ∀ n, P13303805719101905649.a n = A211441 n

end A211441

/-! ## A211441.P13331464806603353258

`A163756(n)%A164897(n)`
-/

namespace A211441.P13331464806603353258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163756 n) (A164897 n)

end

end A211441.P13331464806603353258

namespace A211441

/-- `A163756(n)%A164897(n)` -/
def P13331464806603353258.Spec : Prop :=
  ∀ n, P13331464806603353258.a n = A211441 n

end A211441

/-! ## A211441.P5017224754678561789

`A144314(n)%A212656(n)`
-/

namespace A211441.P5017224754678561789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144314 n) (A212656 n)

end

end A211441.P5017224754678561789

namespace A211441

/-- `A144314(n)%A212656(n)` -/
def P5017224754678561789.Spec : Prop :=
  ∀ n, P5017224754678561789.a n = A211441 n

end A211441

/-!
# A211442: Number of (n+1) X (n+1) -7..7 symmetric matrices with every 2 X 2 subblock having sum zero and three distinct values.

The programs for A211442, there is no canonical definition to state claims against.
-/

/-! ## A211442.P11731817640862080292

`A211443(n+1)+A211498(n+1)-A211499(n+1)`
-/

namespace A211442.P11731817640862080292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211443 (n + 1) + (A211498 (n + 1) - A211499 (n + 1))

end

end A211442.P11731817640862080292

/-! ## A211442.P18226293770716242579

`A211468(n+1)+A211498(n+1)-A211688(n+1)`
-/

namespace A211442.P18226293770716242579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211468 (n + 1) + (A211498 (n + 1) - A211688 (n + 1))

end

end A211442.P18226293770716242579

/-!
# A211443: Number of (n+1)X(n+1) -7..7 symmetric matrices with every 2X2 subblock having sum zero and one or three distinct values.

The programs for A211443, there is no canonical definition to state claims against.
-/

/-! ## A211443.P11553828748867645607

`A211442(n+1)+A211499(n+1)-A211498(n+1)`
-/

namespace A211443.P11553828748867645607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211442 (n + 1) + (A211499 (n + 1) - A211498 (n + 1))

end

end A211443.P11553828748867645607

/-! ## A211443.P5087675400028289381

`A211468(n+1)+A211499(n+1)-A211688(n+1)`
-/

namespace A211443.P5087675400028289381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211468 (n + 1) + (A211499 (n + 1) - A211688 (n + 1))

end

end A211443.P5087675400028289381

/-!
# A211449: (p-1)/x, where p = prime(n) and x = ord(4,p), the smallest positive integer such that 4^x == 1 mod p.

The programs for A211449, there is no canonical definition to state claims against.
-/

/-! ## A211449.P8404372293585228952

`A023136(Δ[A007504(n)])-1`
-/

namespace A211449.P8404372293585228952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (f1 (n + 1) - f1 n).toNat - 1

end

end A211449.P8404372293585228952

/-! ## A211449.P4792541841359214648

`A023136(A000040(n+1))-1`
-/

namespace A211449.P4792541841359214648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (A000040 (n + 1)).toNat - 1

end

end A211449.P4792541841359214648

/-! ## A211449.P4325779443508997960

`A023136(sqrt(A001248(n+1)))-1`
-/

namespace A211449.P4325779443508997960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 1

end

end A211449.P4325779443508997960

/-! ## A211449.P18204812417198218950

`A023136(∑[A054541(n+1)])-1`
-/

namespace A211449.P18204812417198218950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A211449.P18204812417198218950

/-! ## A211449.P7862730197271670674

`A023136(p?[A114112(n+1)])-1`
-/

namespace A211449.P7862730197271670674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211449.P7862730197271670674

/-! ## A211449.P9514116237171123870

`A023136(A040976(n+1)+2)-1`
-/

namespace A211449.P9514116237171123870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (A040976 (n + 1) + 2).toNat - 1

end

end A211449.P9514116237171123870

/-! ## A211449.P14192717287750083073

`A023136(A113935(n+1)-3)-1`
-/

namespace A211449.P14192717287750083073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (A113935 (n + 1) - 3).toNat - 1

end

end A211449.P14192717287750083073

/-! ## A211449.P11415298576329380089

`A023136(record[A000010(n+1)+1])-1`
-/

namespace A211449.P11415298576329380089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A211449.P11415298576329380089

/-! ## A211449.P13081310360008156996

`A023136(2*A102781(n+1)+1)-1`
-/

namespace A211449.P13081310360008156996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (2 * A102781 (n + 1) + 1).toNat - 1

end

end A211449.P13081310360008156996

/-! ## A211449.P11919785046895581138

`A023136(eq[1, A067558(n+1)]+1)-1`
-/

namespace A211449.P11919785046895581138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A211449.P11919785046895581138

/-! ## A211449.P5925571647833054417

`A029578(A023136(p?[A114112(n+1)]))`
-/

namespace A211449.P5925571647833054417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A023136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A211449.P5925571647833054417

/-! ## A211449.P18306100215738207315

`A023136(A001749(n+1)/2)-1`
-/

namespace A211449.P18306100215738207315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat - 1

end

end A211449.P18306100215738207315

/-! ## A211449.P14897370038536491309

`A023136(A001749(n+1))-1`
-/

namespace A211449.P14897370038536491309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (A001749 (n + 1)).toNat - 1

end

end A211449.P14897370038536491309

/-! ## A211449.P9707406291323506933

`A052928(A023136(A001749(n+1)))`
-/

namespace A211449.P9707406291323506933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A023136 (A001749 (n + 1)).toNat).toNat

end

end A211449.P9707406291323506933

/-!
# A211450: (p-1)/x, where p = prime(n) and x = ord(5,p), the smallest positive integer such that 5^x == 1 mod p.

The programs for A211450, there is no canonical definition to state claims against.
-/

/-! ## A211450.P14118558063442926268

`A023137(Δ[A007504(n)])-1`
-/

namespace A211450.P14118558063442926268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (f1 (n + 1) - f1 n).toNat - 1

end

end A211450.P14118558063442926268

/-! ## A211450.P3525041633477571788

`A023137(A000040(n+1))-1`
-/

namespace A211450.P3525041633477571788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (A000040 (n + 1)).toNat - 1

end

end A211450.P3525041633477571788

/-! ## A211450.P16673220246027819753

`A023137(A008578(n+2))-1`
-/

namespace A211450.P16673220246027819753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (A008578 (n + 2)).toNat - 1

end

end A211450.P16673220246027819753

/-! ## A211450.P9945311893427170164

`A023137(sqrt(A001248(n+1)))-1`
-/

namespace A211450.P9945311893427170164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 1

end

end A211450.P9945311893427170164

/-! ## A211450.P1136160974969542203

`A023137(p?[A218252(n+1)])-1`
-/

namespace A211450.P1136160974969542203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211450.P1136160974969542203

/-! ## A211450.P7290076029245621818

`A023137(A006093(n+1)+1)-1`
-/

namespace A211450.P7290076029245621818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (A006093 (n + 1) + 1).toNat - 1

end

end A211450.P7290076029245621818

/-! ## A211450.P9168565648813710498

`A023443(A023137(A006093(n+1)+1))`
-/

namespace A211450.P9168565648813710498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A023137 (A006093 (n + 1) + 1).toNat).toNat

end

end A211450.P9168565648813710498

/-! ## A211450.P15327895659623569127

`A023137(p?[A057979(n)])-1`
-/

namespace A211450.P15327895659623569127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211450.P15327895659623569127

/-! ## A211450.P11643372195118965370

`A023443(A023137(p?[A057979(n)]))`
-/

namespace A211450.P11643372195118965370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A023137 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A211450.P11643372195118965370

/-! ## A211450.P4478062526747106808

`A023137(p?[A249816(n+1)])-1`
-/

namespace A211450.P4478062526747106808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023137 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211450.P4478062526747106808

/-!
# A211451: (p-1)/x, where p = prime(n) and x = ord(6,p), the smallest positive integer such that 6^x == 1 mod p.

The programs for A211451, there is no canonical definition to state claims against.
-/

/-! ## A211451.P1101530244139237636

`A023138(A000040(n+1))-1`
-/

namespace A211451.P1101530244139237636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (A000040 (n + 1)).toNat - 1

end

end A211451.P1101530244139237636

/-! ## A211451.P15975364088443135584

`A023138(eq[1, A003415(n)])-1`
-/

namespace A211451.P15975364088443135584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A211451.P15975364088443135584

/-! ## A211451.P4022866666073920545

`A023138(sqrt(A001248(n+1)))-1`
-/

namespace A211451.P4022866666073920545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 1

end

end A211451.P4022866666073920545

/-! ## A211451.P12915805131123125052

`A023138(A100484(n+1)/2)-1`
-/

namespace A211451.P12915805131123125052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat - 1

end

end A211451.P12915805131123125052

/-! ## A211451.P4908621778950934681

`A023138(A100484(n+1))-1`
-/

namespace A211451.P4908621778950934681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (A100484 (n + 1)).toNat - 1

end

end A211451.P4908621778950934681

/-! ## A211451.P2089283139118803732

`A023138(A001748(n+1))-1`
-/

namespace A211451.P2089283139118803732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (A001748 (n + 1)).toNat - 1

end

end A211451.P2089283139118803732

/-!
# A211452: (p-1)/x, where p = prime(n) and x = ord(7,p), the smallest positive integer such that 7^x == 1 mod p.

The programs for A211452, there is no canonical definition to state claims against.
-/

/-! ## A211452.P7517008763736212852

`A023139(Δ[A007504(n)])-1`
-/

namespace A211452.P7517008763736212852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023139 (f1 (n + 1) - f1 n).toNat - 1

end

end A211452.P7517008763736212852

/-! ## A211452.P7389804582294481266

`A023139(A000040(n+1))-1`
-/

namespace A211452.P7389804582294481266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023139 (A000040 (n + 1)).toNat - 1

end

end A211452.P7389804582294481266

/-! ## A211452.P465061529386133670

`A023139(A008578(n+2))-1`
-/

namespace A211452.P465061529386133670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023139 (A008578 (n + 2)).toNat - 1

end

end A211452.P465061529386133670

/-! ## A211452.P10885478894934347487

`A023139(p?[A057637(n+1)])-1`
-/

namespace A211452.P10885478894934347487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211452.P10885478894934347487

/-! ## A211452.P3994683479916909848

`A023139(p?[A319151(n+1)])-1`
-/

namespace A211452.P3994683479916909848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211452.P3994683479916909848

/-!
# A211453: (p-1)/x, where p = prime(n) and x = ord(8,p), the smallest positive integer such that 8^x == 1 mod p.

The programs for A211453, there is no canonical definition to state claims against.
-/

/-! ## A211453.P6292802518274243578

`A023140(A000040(n+1))-1`
-/

namespace A211453.P6292802518274243578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (A000040 (n + 1)).toNat - 1

end

end A211453.P6292802518274243578

/-! ## A211453.P1000289806888314784

`A023140(p?[A000961(n+1)])-1`
-/

namespace A211453.P1000289806888314784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211453.P1000289806888314784

/-! ## A211453.P10116574239026680200

`A023140(A100484(n+1)/2)-1`
-/

namespace A211453.P10116574239026680200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat - 1

end

end A211453.P10116574239026680200

/-! ## A211453.P10410638878064890034

`2*A102781(n+1)/A053451(A102781(n+1))`
-/

namespace A211453.P10410638878064890034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A102781 (n + 1) : ℚ) / (A053451 (A102781 (n + 1)).toNat : ℚ))

end

end A211453.P10410638878064890034

/-! ## A211453.P17383874048061872090

`A023140(p?[A006370(n)])-1`
-/

namespace A211453.P17383874048061872090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211453.P17383874048061872090

/-! ## A211453.P12703012135439984862

`A023140(A100484(n+1))-1`
-/

namespace A211453.P12703012135439984862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (A100484 (n + 1)).toNat - 1

end

end A211453.P12703012135439984862

/-! ## A211453.P10379851633948419612

`A023140(A001749(n+1)/2)-1`
-/

namespace A211453.P10379851633948419612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat - 1

end

end A211453.P10379851633948419612

/-! ## A211453.P1096189981543181415

`A023140(A001749(n+1))-1`
-/

namespace A211453.P1096189981543181415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023140 (A001749 (n + 1)).toNat - 1

end

end A211453.P1096189981543181415

/-!
# A211454: (p-1)/x, where p = prime(n) and x = ord(9,p), the smallest positive integer such that 9^x == 1 mod p.

The programs for A211454, there is no canonical definition to state claims against.
-/

/-! ## A211454.P3444777880210116464

`A023141(A000040(n+1))-1`
-/

namespace A211454.P3444777880210116464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023141 (A000040 (n + 1)).toNat - 1

end

end A211454.P3444777880210116464

/-! ## A211454.P7162488624249451012

`A023141(A008578(n+2))-1`
-/

namespace A211454.P7162488624249451012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023141 (A008578 (n + 2)).toNat - 1

end

end A211454.P7162488624249451012

/-! ## A211454.P3050105313256943749

`A023141(p?[A247665(n+1)])-1`
-/

namespace A211454.P3050105313256943749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023141 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211454.P3050105313256943749

/-! ## A211454.P3472550115094428251

`A023141(A006093(n+1)+1)-1`
-/

namespace A211454.P3472550115094428251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023141 (A006093 (n + 1) + 1).toNat - 1

end

end A211454.P3472550115094428251

/-! ## A211454.P12168127373017822789

`A023141(p?[A144711(n+1)])-1`
-/

namespace A211454.P12168127373017822789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023141 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A211454.P12168127373017822789

/-! ## A211454.P11973531328782031800

`A023141(A001748(n+1))-1`
-/

namespace A211454.P11973531328782031800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023141 (A001748 (n + 1)).toNat - 1

end

end A211454.P11973531328782031800

/-!
# A211456: Smallest base b for which A181780(n) is a Fermat pseudoprime.

The programs for A211456, there is no canonical definition to state claims against.
-/

/-! ## A211456.P9472544114341219957

`A105222(A181780(n+1))`
-/

namespace A211456.P9472544114341219957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A181780 (n + 1)).toNat

end

end A211456.P9472544114341219957

/-! ## A211456.P4152953151629453164

`A105222(∩[A039769(n+1), A059485(n+1)])`
-/

namespace A211456.P4152953151629453164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A211456.P4152953151629453164

/-! ## A211456.P6399802630833694359

`A105222(∩[A005381(n+1), A280199(n+1)])`
-/

namespace A211456.P6399802630833694359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A211456.P6399802630833694359

/-! ## A211456.P16036859794882641653

`A105222(∩[A018252(n+1), A280199(n+1)])`
-/

namespace A211456.P16036859794882641653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A211456.P16036859794882641653

/-! ## A211456.P3890732562984010230

`A105222(∩[A039769(n+1), A280199(n+1)])`
-/

namespace A211456.P3890732562984010230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A211456.P3890732562984010230

/-! ## A211456.P17329927268545680421

`A105222(lt[A105222(n+1), A318827(n+1)]+1)`
-/

namespace A211456.P17329927268545680421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A211456.P17329927268545680421

/-! ## A211456.P12833617770312546065

`A105222(lt[A105222(n+1), A318828(n+1)]+1)`
-/

namespace A211456.P12833617770312546065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A211456.P12833617770312546065

/-! ## A211456.P16566251429630917210

`A211458(∑[A211455(n+1)]-A211455(n+1)+1)`
-/

namespace A211456.P16566251429630917210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211458 (∑ j ∈ Finset.range (n + 1), f1 j - A211455 (n + 1) + 1).toNat

end

end A211456.P16566251429630917210

/-!
# A211457: Largest number b for which A181780(n) is a Fermat pseudoprime.

The programs for A211457, there is no canonical definition to state claims against.
-/

/-! ## A211457.P8668150825710670400

`A211458(∑[A211455(n+1)])`
-/

namespace A211457.P8668150825710670400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211457.P8668150825710670400

/-!
# A211459: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having three distinct values for every i<=n and j<=n.

The programs for A211459, there is no canonical definition to state claims against.
-/

/-! ## A211459.P3340664416228076543

`A211491(n+1)-2*A020706(n)`
-/

namespace A211459.P3340664416228076543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211491 (n + 1) - 2 * A020706 n

end

end A211459.P3340664416228076543

/-! ## A211459.P14989560504962988768

`A211491(n+1)-(A090991(n+1)+2)`
-/

namespace A211459.P14989560504962988768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211491 (n + 1) - (A090991 (n + 1) + 2)

end

end A211459.P14989560504962988768

/-! ## A211459.P11451338190171617039

`A211491(n+1)+3-A211322(n+1)`
-/

namespace A211459.P11451338190171617039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211491 (n + 1) + (3 - A211322 (n + 1))

end

end A211459.P11451338190171617039

/-! ## A211459.P5122524617044818151

`A211491(n+1)+5-A211490(n+1)`
-/

namespace A211459.P5122524617044818151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211491 (n + 1) + (5 - A211490 (n + 1))

end

end A211459.P5122524617044818151

/-! ## A211459.P1886595824864055448

`A211491(n+1)-(A048584(n)+A020701(n))`
-/

namespace A211459.P1886595824864055448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211491 (n + 1) - (A048584 n + A020701 n)

end

end A211459.P1886595824864055448

/-! ## A211459.P15536916510249279306

`A211460(n+1)+A211491(n+1)-A211492(n+1)`
-/

namespace A211459.P15536916510249279306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211460 (n + 1) + (A211491 (n + 1) - A211492 (n + 1))

end

end A211459.P15536916510249279306

/-!
# A211460: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one or three distinct values for every i<=n and j<=n.

The programs for A211460, there is no canonical definition to state claims against.
-/

/-! ## A211460.P3847324251740243394

`A211492(n+1)-2*A020706(n)`
-/

namespace A211460.P3847324251740243394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211492 (n + 1) - 2 * A020706 n

end

end A211460.P3847324251740243394

/-! ## A211460.P6554181816725603814

`A211492(n+1)-(A090991(n+1)+2)`
-/

namespace A211460.P6554181816725603814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211492 (n + 1) - (A090991 (n + 1) + 2)

end

end A211460.P6554181816725603814

/-! ## A211460.P9464627522060345836

`A211492(n+1)+3-A211322(n+1)`
-/

namespace A211460.P9464627522060345836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211492 (n + 1) + (3 - A211322 (n + 1))

end

end A211460.P9464627522060345836

/-! ## A211460.P10492394966970159181

`A211492(n+1)+5-A211490(n+1)`
-/

namespace A211460.P10492394966970159181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211492 (n + 1) + (5 - A211490 (n + 1))

end

end A211460.P10492394966970159181

/-! ## A211460.P2075998292549178903

`A211492(n+1)-(A048584(n)+A020701(n))`
-/

namespace A211460.P2075998292549178903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211492 (n + 1) - (A048584 n + A020701 n)

end

end A211460.P2075998292549178903

/-! ## A211460.P17203938378147196340

`A211459(n+1)+A211492(n+1)-A211491(n+1)`
-/

namespace A211460.P17203938378147196340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211459 (n + 1) + (A211492 (n + 1) - A211491 (n + 1))

end

end A211460.P17203938378147196340

/-!
# A211461: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having two or three distinct values for every i<=n and j<=n.

The programs for A211461, there is no canonical definition to state claims against.
-/

/-! ## A211461.P12821102648395102720

`A211477(n+1)+A211493(n+1)-A211325(n+1)`
-/

namespace A211461.P12821102648395102720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211477 (n + 1) + (A211493 (n + 1) - A211325 (n + 1))

end

end A211461.P12821102648395102720

/-!
# A211462: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one, two or three distinct values for every i<=n and j<=n.

The programs for A211462, there is no canonical definition to state claims against.
-/

/-! ## A211462.P431142972459112726

`A211478(n+1)+A211494(n+1)-A211326(n+1)`
-/

namespace A211462.P431142972459112726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211478 (n + 1) + (A211494 (n + 1) - A211326 (n + 1))

end

end A211462.P431142972459112726

/-!
# A211463: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having three or four distinct values for every i<=n and j<=n.

The programs for A211463, there is no canonical definition to state claims against.
-/

/-! ## A211463.P1606127581287802597

`A211495(n+1)-2^(n+3)`
-/

namespace A211463.P1606127581287802597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211495 (n + 1) - (2 ^ (n + 3) : ℤ)

end

end A211463.P1606127581287802597

/-! ## A211463.P18181363140314980122

`A211476(n+1)+A211495(n+1)-A211327(n+1)`
-/

namespace A211463.P18181363140314980122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + (A211495 (n + 1) - A211327 (n + 1))

end

end A211463.P18181363140314980122

/-! ## A211463.P260162482522948348

`A211464(n+1)+A211495(n+1)-A211496(n+1)`
-/

namespace A211463.P260162482522948348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211464 (n + 1) + (A211495 (n + 1) - A211496 (n + 1))

end

end A211463.P260162482522948348

/-!
# A211464: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one, three or four distinct values for every i<=n and j<=n.

The programs for A211464, there is no canonical definition to state claims against.
-/

/-! ## A211464.P15938984098841533502

`A211496(n+1)-2^(n+3)`
-/

namespace A211464.P15938984098841533502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211496 (n + 1) - (2 ^ (n + 3) : ℤ)

end

end A211464.P15938984098841533502

/-! ## A211464.P8070392362227824787

`abs(A020707(n+1)-A211496(n+1))`
-/

namespace A211464.P8070392362227824787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020707 (n + 1) - A211496 (n + 1)|

end

end A211464.P8070392362227824787

/-! ## A211464.P10806794322632727371

`A211476(n+1)+A211496(n+1)-A211327(n+1)`
-/

namespace A211464.P10806794322632727371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + (A211496 (n + 1) - A211327 (n + 1))

end

end A211464.P10806794322632727371

/-! ## A211464.P8054038232884212005

`A211463(n+1)+A211496(n+1)-A211495(n+1)`
-/

namespace A211464.P8054038232884212005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211463 (n + 1) + (A211496 (n + 1) - A211495 (n + 1))

end

end A211464.P8054038232884212005

/-! ## A211464.P1541263750766654424

`val(A123050(n), 63)-(A020707(n+1)-A211496(n+1))`
-/

namespace A211464.P1541263750766654424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A123050 n).toNat 63 : ℤ) - (A020707 (n + 1) - A211496 (n + 1))

end

end A211464.P1541263750766654424

/-!
# A211466: Number of (n+1) X (n+1) -8..8 symmetric matrices with every 2 X 2 subblock having sum zero and one or two distinct values.

The programs for A211466, the canonical program `A211466.P16375337698534124056` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211466 has offset 1).

The definition of A211466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211466.P16375337698534124056

`a(n-1)+a(n-2)-13` with `a(0)=25, a(1)=33`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211466

/-- `a(n-1)+a(n-2)-13` -/
def P16375337698534124056.Spec : Prop :=
  ∀ n, P16375337698534124056.a n = A211466 (n + 1)

theorem P16375337698534124056.correct : P16375337698534124056.Spec := by
  intro n
  simp only [A211466, Nat.add_sub_cancel]

end A211466

/-! ## A211466.P14840240802550428242

`a(n-1)-(13-a(n-2))` with `a(0)=25, a(1)=33`
-/

namespace A211466.P14840240802550428242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 33] fun n a =>
  a (n - 1) - (13 - a (n - 2))

end

end A211466.P14840240802550428242

namespace A211466

/-- `a(n-1)-(13-a(n-2))` -/
def P14840240802550428242.Spec : Prop :=
  ∀ n, P14840240802550428242.a n = A211466 (n + 1)

theorem P14840240802550428242.correct : P14840240802550428242.Spec := by
  intro n
  simp only [A211466, Nat.add_sub_cancel, A211466.P14840240802550428242.a, A211466.P16375337698534124056.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211466

/-! ## A211466.P14651411418628516844

`A211253(n+1)+4`
-/

namespace A211466.P14651411418628516844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211253 (n + 1) + 4

end

end A211466.P14651411418628516844

namespace A211466

/-- `A211253(n+1)+4` -/
def P14651411418628516844.Spec : Prop :=
  ∀ n, P14651411418628516844.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P9409145169368105266

`4*A048584(n)+5`
-/

namespace A211466.P9409145169368105266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048584 n + 5

end

end A211466.P9409145169368105266

namespace A211466

/-- `4*A048584(n)+5` -/
def P9409145169368105266.Spec : Prop :=
  ∀ n, P9409145169368105266.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P15945156695462267882

`4*A020706(n)+9`
-/

namespace A211466.P15945156695462267882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020706 n + 9

end

end A211466.P15945156695462267882

namespace A211466

/-- `4*A020706(n)+9` -/
def P15945156695462267882.Spec : Prop :=
  ∀ n, P15945156695462267882.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P16455922494177769827

`A164485(n+4)+12`
-/

namespace A211466.P16455922494177769827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164485 (n + 4) + 12

end

end A211466.P16455922494177769827

namespace A211466

/-- `A164485(n+4)+12` -/
def P16455922494177769827.Spec : Prop :=
  ∀ n, P16455922494177769827.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P8459357637209086567

`4*A020701(n)+13`
-/

namespace A211466.P8459357637209086567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020701 n + 13

end

end A211466.P8459357637209086567

namespace A211466

/-- `4*A020701(n)+13` -/
def P8459357637209086567.Spec : Prop :=
  ∀ n, P8459357637209086567.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P8314029910284577223

`2*A211490(n+1)-1`
-/

namespace A211466.P8314029910284577223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211490 (n + 1) - 1

end

end A211466.P8314029910284577223

namespace A211466

/-- `2*A211490(n+1)-1` -/
def P8314029910284577223.Spec : Prop :=
  ∀ n, P8314029910284577223.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P483529276761133789

`2*A211322(n+1)+3`
-/

namespace A211466.P483529276761133789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211322 (n + 1) + 3

end

end A211466.P483529276761133789

namespace A211466

/-- `2*A211322(n+1)+3` -/
def P483529276761133789.Spec : Prop :=
  ∀ n, P483529276761133789.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P13187332549960684432

`2*A211329(n+1)-5`
-/

namespace A211466.P13187332549960684432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211329 (n + 1) - 5

end

end A211466.P13187332549960684432

namespace A211466

/-- `2*A211329(n+1)-5` -/
def P13187332549960684432.Spec : Prop :=
  ∀ n, P13187332549960684432.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P4093876614236752023

`4*A000045(n+4)+13`
-/

namespace A211466.P4093876614236752023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 4) + 13

end

end A211466.P4093876614236752023

namespace A211466

/-- `4*A000045(n+4)+13` -/
def P4093876614236752023.Spec : Prop :=
  ∀ n, P4093876614236752023.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P2346160674815363424

`4*(A020695(n+1)+3)+1`
-/

namespace A211466.P2346160674815363424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A020695 (n + 1) + 3) + 1

end

end A211466.P2346160674815363424

namespace A211466

/-- `4*(A020695(n+1)+3)+1` -/
def P2346160674815363424.Spec : Prop :=
  ∀ n, P2346160674815363424.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P3438896639549345102

`A211549(n+1)-A090991(n+1)`
-/

namespace A211466.P3438896639549345102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211549 (n + 1) - A090991 (n + 1)

end

end A211466.P3438896639549345102

namespace A211466

/-- `A211549(n+1)-A090991(n+1)` -/
def P3438896639549345102.Spec : Prop :=
  ∀ n, P3438896639549345102.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P14380953753431054468

`2*(A245869(∑[n+1])+6)+1`
-/

namespace A211466.P14380953753431054468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A245869 (∑ j ∈ Finset.range (n + 1), f1 j) + 6) + 1

end

end A211466.P14380953753431054468

namespace A211466

/-- `2*(A245869(∑[n+1])+6)+1` -/
def P14380953753431054468.Spec : Prop :=
  ∀ n, P14380953753431054468.a n = A211466 (n + 1)

end A211466

/-! ## A211466.P10681955711623152352

`4*A084176(A167499(n))+5`
-/

namespace A211466.P10681955711623152352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084176 (A167499 n).toNat + 5

end

end A211466.P10681955711623152352

namespace A211466

/-- `4*A084176(A167499(n))+5` -/
def P10681955711623152352.Spec : Prop :=
  ∀ n, P10681955711623152352.a n = A211466 (n + 1)

end A211466

/-!
# A211468: Number of (n+1)X(n+1) -8..8 symmetric matrices with every 2X2 subblock having sum zero and one or three distinct values.

The programs for A211468, there is no canonical definition to state claims against.
-/

/-! ## A211468.P218659407298980644

`A211442(n+1)+A211688(n+1)-A211498(n+1)`
-/

namespace A211468.P218659407298980644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211442 (n + 1) + (A211688 (n + 1) - A211498 (n + 1))

end

end A211468.P218659407298980644

/-! ## A211468.P1752409561081800496

`A211443(n+1)+A211688(n+1)-A211499(n+1)`
-/

namespace A211468.P1752409561081800496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211443 (n + 1) + (A211688 (n + 1) - A211499 (n + 1))

end

end A211468.P1752409561081800496

/-!
# A211474: Signed partitions of n into n parts in {-n..n}\{0}.

The programs for A211474, there is no canonical definition to state claims against.
-/

/-! ## A211474.P10617730349916809256

`A211475(n+1)-A188326(n+1)/2`
-/

namespace A211474.P10617730349916809256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211475 (n + 1) : ℚ) - (A188326 (n + 1) : ℚ) / 2

end

end A211474.P10617730349916809256

/-! ## A211474.P11787217966391862177

`A211475(n+1)-A004525(A188326(n+1))`
-/

namespace A211474.P11787217966391862177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211475 (n + 1) - A004525 (A188326 (n + 1)).toNat

end

end A211474.P11787217966391862177

/-! ## A211474.P1053170842951307057

`A138774(A005900(n+1))-A004525(A188326(n+1))`
-/

namespace A211474.P1053170842951307057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138774 (A005900 (n + 1)).toNat - A004525 (A188326 (n + 1)).toNat

end

end A211474.P1053170842951307057

/-!
# A211475: Signed partitions of n into n parts in {-n..n} (allowing zero as a part).

The programs for A211475, there is no canonical definition to state claims against.
-/

/-! ## A211475.P3593948153743197893

`A138774(A005900(n+1))`
-/

namespace A211475.P3593948153743197893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138774 (A005900 (n + 1)).toNat

end

end A211475.P3593948153743197893

/-! ## A211475.P16139049655259498253

`A138774(A047667(n+1))`
-/

namespace A211475.P16139049655259498253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138774 (A047667 (n + 1)).toNat

end

end A211475.P16139049655259498253

/-! ## A211475.P12361065391812367305

`A138774(∑[∑[A008574(n)]])`
-/

namespace A211475.P12361065391812367305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138774 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211475.P12361065391812367305

/-! ## A211475.P15637517238363585532

`record[A138774(∑[A008794(n)])]`
-/

namespace A211475.P15637517238363585532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138774 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211475.P15637517238363585532

/-! ## A211475.P1874490294693643900

`A138774(∑[A004525(A016754(n))])`
-/

namespace A211475.P1874490294693643900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A016754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138774 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211475.P1874490294693643900

/-!
# A211476: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one or three distinct values for every i<=n and j<=n.

The programs for A211476, the canonical program `A211476.P824139048349514318` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211476 has offset 1).

The definition of A211476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211476.P824139048349514318

`a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=7, a(1)=17, a(2)=37, a(3)=79`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211476

/-- `a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P824139048349514318.Spec : Prop :=
  ∀ n, P824139048349514318.a n = A211476 (n + 1)

theorem P824139048349514318.correct : P824139048349514318.Spec := by
  intro n
  simp only [A211476, Nat.add_sub_cancel]

end A211476

/-! ## A211476.P12645236361635798369

`A211114(n+1)-2`
-/

namespace A211476.P12645236361635798369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211114 (n + 1) - 2

end

end A211476.P12645236361635798369

namespace A211476

/-- `A211114(n+1)-2` -/
def P12645236361635798369.Spec : Prop :=
  ∀ n, P12645236361635798369.a n = A211476 (n + 1)

end A211476

/-! ## A211476.P17427658197641879514

`a(n-1)+A086341(n)+a(n-1)` with `a(0)=7`
-/

namespace A211476.P17427658197641879514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (A086341 n + a (n - 1))

end

end A211476.P17427658197641879514

namespace A211476

/-- `a(n-1)+A086341(n)+a(n-1)` -/
def P17427658197641879514.Spec : Prop :=
  ∀ n, P17427658197641879514.a n = A211476 (n + 1)

end A211476

/-! ## A211476.P17780605653397904614

`A211324(n+1)-(A090991(n+1)+2)`
-/

namespace A211476.P17780605653397904614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) - (A090991 (n + 1) + 2)

end

end A211476.P17780605653397904614

namespace A211476

/-- `A211324(n+1)-(A090991(n+1)+2)` -/
def P17780605653397904614.Spec : Prop :=
  ∀ n, P17780605653397904614.a n = A211476 (n + 1)

end A211476

/-! ## A211476.P2641422380833762743

`A211327(n+1)-2^(n+3)`
-/

namespace A211476.P2641422380833762743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211327 (n + 1) - (2 ^ (n + 3) : ℤ)

end

end A211476.P2641422380833762743

namespace A211476

/-- `A211327(n+1)-2^(n+3)` -/
def P2641422380833762743.Spec : Prop :=
  ∀ n, P2641422380833762743.a n = A211476 (n + 1)

end A211476

/-! ## A211476.P1926232277464555683

`xor(1, Δ[2*a(n-1)-n%2])-A052955(n+2)` with `a(0)=12`
-/

namespace A211476.P1926232277464555683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  2 * f1 (n - 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n) - A052955 (n + 2)

end

end A211476.P1926232277464555683

namespace A211476

/-- `xor(1, Δ[2*a(n-1)-n%2])-A052955(n+2)` -/
def P1926232277464555683.Spec : Prop :=
  ∀ n, P1926232277464555683.a n = A211476 (n + 1)

end A211476

/-! ## A211476.P16337401318361850116

`A211324(n+1)-(A035513(A167614(n+1))+2)`
-/

namespace A211476.P16337401318361850116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211324 (n + 1) - (A035513 (A167614 (n + 1)).toNat + 2)

end

end A211476.P16337401318361850116

namespace A211476

/-- `A211324(n+1)-(A035513(A167614(n+1))+2)` -/
def P16337401318361850116.Spec : Prop :=
  ∀ n, P16337401318361850116.a n = A211476 (n + 1)

end A211476

/-!
# A211477: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having two or three distinct values for every i<=n and j<=n.

The programs for A211477, there is no canonical definition to state claims against.
-/

/-! ## A211477.P15347764782643714080

`A211115(n+1)-A019274(n+4)`
-/

namespace A211477.P15347764782643714080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211115 (n + 1) - A019274 (n + 4)

end

end A211477.P15347764782643714080

/-! ## A211477.P13776818085318833354

`A211115(n+1)+9-A211490(n+1)`
-/

namespace A211477.P13776818085318833354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211115 (n + 1) + (9 - A211490 (n + 1))

end

end A211477.P13776818085318833354

/-! ## A211477.P13128355964791835625

`A211325(n+1)+A211461(n+1)-A211493(n+1)`
-/

namespace A211477.P13128355964791835625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211325 (n + 1) + (A211461 (n + 1) - A211493 (n + 1))

end

end A211477.P13128355964791835625

/-!
# A211478: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one, two or three distinct values for every i<=n and j<=n.

The programs for A211478, there is no canonical definition to state claims against.
-/

/-! ## A211478.P13808611198238053119

`A211116(n+1)-2^(n+2)`
-/

namespace A211478.P13808611198238053119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211116 (n + 1) - (2 ^ (n + 2) : ℤ)

end

end A211478.P13808611198238053119

/-!
# A211479: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having two, three or four distinct values for every i<=n and j<=n.

The programs for A211479, the canonical program `A211479.P11464434019036712485` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211479 has offset 1).

The definition of A211479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211479.P18274908845619822692

`ogf((8-10x-6x^2)/(1-4x+3x^2+2x^3))`
-/

namespace A211479.P18274908845619822692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -10, -6] [1, -4, 3, 2] n

end

end A211479.P18274908845619822692

namespace A211479

/-- `ogf((8-10x-6x^2)/(1-4x+3x^2+2x^3))` -/
def P18274908845619822692.Spec : Prop :=
  ∀ n, P18274908845619822692.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P11464434019036712485

`A175658(n+2)-2^(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211479

/-- `A175658(n+2)-2^(n+1)` -/
def P11464434019036712485.Spec : Prop :=
  ∀ n, P11464434019036712485.a n = A211479 (n + 1)

theorem P11464434019036712485.correct : P11464434019036712485.Spec := by
  intro n
  simp only [A211479, Nat.add_sub_cancel]

end A211479

/-! ## A211479.P7026672966137788742

`A106514(n+2)-A106514(n)`
-/

namespace A211479.P7026672966137788742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 (n + 2) - A106514 n

end

end A211479.P7026672966137788742

namespace A211479

/-- `A106514(n+2)-A106514(n)` -/
def P7026672966137788742.Spec : Prop :=
  ∀ n, P7026672966137788742.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P666502482479202971

`A156664(n+1)+A156664(n+2)`
-/

namespace A211479.P666502482479202971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 (n + 1) + A156664 (n + 2)

end

end A211479.P666502482479202971

namespace A211479

/-- `A156664(n+1)+A156664(n+2)` -/
def P666502482479202971.Spec : Prop :=
  ∀ n, P666502482479202971.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P4806833214494690668

`2*(A106514(n+1)+A000079(n))`
-/

namespace A211479.P4806833214494690668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106514 (n + 1) + A000079 n)

end

end A211479.P4806833214494690668

namespace A211479

/-- `2*(A106514(n+1)+A000079(n))` -/
def P4806833214494690668.Spec : Prop :=
  ∀ n, P4806833214494690668.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P18270697787189968094

`A002203(n+3)-A162255(2*n+3)`
-/

namespace A211479.P18270697787189968094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 3) - A162255 (2 * n + 3)

end

end A211479.P18270697787189968094

namespace A211479

/-- `A002203(n+3)-A162255(2*n+3)` -/
def P18270697787189968094.Spec : Prop :=
  ∀ n, P18270697787189968094.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P16044226087252736606

`A000079(n+1)+A106514(n+1)+A106514(n+1)`
-/

namespace A211479.P16044226087252736606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A106514 (n + 1) + A106514 (n + 1))

end

end A211479.P16044226087252736606

namespace A211479

/-- `A000079(n+1)+A106514(n+1)+A106514(n+1)` -/
def P16044226087252736606.Spec : Prop :=
  ∀ n, P16044226087252736606.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P3316371635454844365

`4*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=8, a(1)=22, a(2)=58`
-/

namespace A211479.P3316371635454844365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 22, 58] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3)

end

end A211479.P3316371635454844365

namespace A211479

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P3316371635454844365.Spec : Prop :=
  ∀ n, P3316371635454844365.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P17294327088387480498

`Δ[A106514(n+1)+A106514(n)]`
-/

namespace A211479.P17294327088387480498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 (n + 1) + A106514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211479.P17294327088387480498

namespace A211479

/-- `Δ[A106514(n+1)+A106514(n)]` -/
def P17294327088387480498.Spec : Prop :=
  ∀ n, P17294327088387480498.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P4599054622954541606

`Δ[A094706(n+2)-A094706(n)]`
-/

namespace A211479.P4599054622954541606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094706 (n + 2) - A094706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211479.P4599054622954541606

namespace A211479

/-- `Δ[A094706(n+2)-A094706(n)]` -/
def P4599054622954541606.Spec : Prop :=
  ∀ n, P4599054622954541606.a n = A211479 (n + 1)

end A211479

/-! ## A211479.P2101438831563257166

`Δ[Δ[A094706(n+1)+A094706(n)]]`
-/

namespace A211479.P2101438831563257166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094706 (n + 1) + A094706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211479.P2101438831563257166

namespace A211479

/-- `Δ[Δ[A094706(n+1)+A094706(n)]]` -/
def P2101438831563257166.Spec : Prop :=
  ∀ n, P2101438831563257166.a n = A211479 (n + 1)

end A211479

/-!
# A211480: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w + 2x + 3y = 1.

The programs for A211480, the canonical program `A211480.P14845063999171199742` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211480 has offset 0).

The definition of A211480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211480.P14845063999171199742

`ceil(8/3*∑[n])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211480

/-- `ceil(8/3*∑[n])` -/
def P14845063999171199742.Spec : Prop :=
  ∀ n, P14845063999171199742.a n = A211480 n

theorem P14845063999171199742.correct : P14845063999171199742.Spec := by
  intro n
  simp only [A211480]

end A211480

/-! ## A211480.P10222845650530652562

`floor(record[xor(1, n)²]/3)`
-/

namespace A211480.P10222845650530652562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋

end

end A211480.P10222845650530652562

namespace A211480

/-- `floor(record[xor(1, n)²]/3)` -/
def P10222845650530652562.Spec : Prop :=
  ∀ n, P10222845650530652562.a n = A211480 n

end A211480

/-! ## A211480.P1665695997507708471

`floor(or(1, 2*n)²/3)`
-/

namespace A211480.P1665695997507708471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) ^ 2 : ℚ) / 3⌋

end

end A211480.P1665695997507708471

namespace A211480

/-- `floor(or(1, 2*n)²/3)` -/
def P1665695997507708471.Spec : Prop :=
  ∀ n, P1665695997507708471.a n = A211480 n

end A211480

/-! ## A211480.P13043614611456853032

`floor(xor(1, 2*n)²/3)`
-/

namespace A211480.P13043614611456853032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) ^ 2 : ℚ) / 3⌋

end

end A211480.P13043614611456853032

namespace A211480

/-- `floor(xor(1, 2*n)²/3)` -/
def P13043614611456853032.Spec : Prop :=
  ∀ n, P13043614611456853032.a n = A211480 n

end A211480

/-! ## A211480.P1524944405112152816

`round(or(1, 2*n)²/3)`
-/

namespace A211480.P1524944405112152816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) ^ 2 : ℚ) / 3)

end

end A211480.P1524944405112152816

namespace A211480

/-- `round(or(1, 2*n)²/3)` -/
def P1524944405112152816.Spec : Prop :=
  ∀ n, P1524944405112152816.a n = A211480 n

end A211480

/-! ## A211480.P10048365670439056249

`round(xor(1, 2*n)²/3)`
-/

namespace A211480.P10048365670439056249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) ^ 2 : ℚ) / 3)

end

end A211480.P10048365670439056249

namespace A211480

/-- `round(xor(1, 2*n)²/3)` -/
def P10048365670439056249.Spec : Prop :=
  ∀ n, P10048365670439056249.a n = A211480 n

end A211480

/-! ## A211480.P15063798366806979600

`floor(xor(1, ∑[8*n])/3)`
-/

namespace A211480.P15063798366806979600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌋

end

end A211480.P15063798366806979600

namespace A211480

/-- `floor(xor(1, ∑[8*n])/3)` -/
def P15063798366806979600.Spec : Prop :=
  ∀ n, P15063798366806979600.a n = A211480 n

end A211480

/-! ## A211480.P14558784297523832311

`∑[a(n-3)+8]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A211480.P14558784297523832311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211480.P14558784297523832311

namespace A211480

/-- `∑[a(n-3)+8]` -/
def P14558784297523832311.Spec : Prop :=
  ∀ n, (P14558784297523832311.a n : ℤ) = A211480 n

end A211480

/-! ## A211480.P7166642416972123359

`round(4/3*lcm(n, n+1))`
-/

namespace A211480.P7166642416972123359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (Nat.lcm n (n + 1) : ℚ))

end

end A211480.P7166642416972123359

namespace A211480

/-- `round(4/3*lcm(n, n+1))` -/
def P7166642416972123359.Spec : Prop :=
  ∀ n, P7166642416972123359.a n = A211480 n

end A211480

/-! ## A211480.P17659466833953658639

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A211480.P17659466833953658639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211480.P17659466833953658639

namespace A211480

/-- `∑[∑[abs(a(n-3))]]` -/
def P17659466833953658639.Spec : Prop :=
  ∀ n, (P17659466833953658639.a n : ℤ) = A211480 n

end A211480

/-! ## A211480.P15694540337089155129

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A211480.P15694540337089155129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211480.P15694540337089155129

namespace A211480

/-- `∑[∑[dr(a(n-3))]]` -/
def P15694540337089155129.Spec : Prop :=
  ∀ n, (P15694540337089155129.a n : ℤ) = A211480 n

end A211480

/-! ## A211480.P1466413289964362773

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A211480.P1466413289964362773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211480.P1466413289964362773

namespace A211480

/-- `∑[∑[floor(a(n-3))]]` -/
def P1466413289964362773.Spec : Prop :=
  ∀ n, (P1466413289964362773.a n : ℤ) = A211480 n

end A211480

/-! ## A211480.P13937713005969846138

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A211480.P13937713005969846138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211480.P13937713005969846138

namespace A211480

/-- `∑[∑[ceil(a(n-3))]]` -/
def P13937713005969846138.Spec : Prop :=
  ∀ n, (P13937713005969846138.a n : ℤ) = A211480 n

end A211480

/-! ## A211480.P5844758602288069135

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A211480.P5844758602288069135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211480.P5844758602288069135

namespace A211480

/-- `∑[∑[round(a(n-3))]]` -/
def P5844758602288069135.Spec : Prop :=
  ∀ n, (P5844758602288069135.a n : ℤ) = A211480 n

end A211480

/-! ## A211480.P16935325541730341547

`floor(C(2*n+3, 3)/(n+2))`
-/

namespace A211480.P16935325541730341547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 3) 3 : ℚ) / (n + 2 : ℚ)⌋

end

end A211480.P16935325541730341547

namespace A211480

/-- `floor(C(2*n+3, 3)/(n+2))` -/
def P16935325541730341547.Spec : Prop :=
  ∀ n, P16935325541730341547.a n = A211480 n

end A211480

/-! ## A211480.P1064195537225272305

`floor(and(-3, (2*n+1)²)/3)`
-/

namespace A211480.P1064195537225272305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (-3) ((2 * n + 1) ^ 2 : ℤ) : ℚ) / 3⌋

end

end A211480.P1064195537225272305

namespace A211480

/-- `floor(and(-3, (2*n+1)²)/3)` -/
def P1064195537225272305.Spec : Prop :=
  ∀ n, P1064195537225272305.a n = A211480 n

end A211480

/-! ## A211480.P5276001032374339092

`round(and(-2, (2*n+1)²)/3)`
-/

namespace A211480.P5276001032374339092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (-2) ((2 * n + 1) ^ 2 : ℤ) : ℚ) / 3)

end

end A211480.P5276001032374339092

namespace A211480

/-- `round(and(-2, (2*n+1)²)/3)` -/
def P5276001032374339092.Spec : Prop :=
  ∀ n, P5276001032374339092.a n = A211480 n

end A211480

/-! ## A211480.P18314310023169641070

`floor(∩[(2*n+1)², n²]/3)`
-/

namespace A211480.P18314310023169641070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℚ) / 3⌋

end

end A211480.P18314310023169641070

namespace A211480

/-- `floor(∩[(2*n+1)², n²]/3)` -/
def P18314310023169641070.Spec : Prop :=
  ∀ n, P18314310023169641070.a n = A211480 n

end A211480

/-! ## A211480.P14194297405317510541

`round(∩[(2*n+1)², n²]/3)`
-/

namespace A211480.P14194297405317510541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℚ) / 3)

end

end A211480.P14194297405317510541

namespace A211480

/-- `round(∩[(2*n+1)², n²]/3)` -/
def P14194297405317510541.Spec : Prop :=
  ∀ n, P14194297405317510541.a n = A211480 n

end A211480

/-! ## A211480.P167177684230478958

`round(C(2*n+1, 2*n)²/3)`
-/

namespace A211480.P167177684230478958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) (2 * n) ^ 2 : ℚ) / 3)

end

end A211480.P167177684230478958

namespace A211480

/-- `round(C(2*n+1, 2*n)²/3)` -/
def P167177684230478958.Spec : Prop :=
  ∀ n, P167177684230478958.a n = A211480 n

end A211480

/-!
# A211481: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+2x+3y=n.

The programs for A211481, the canonical program `A211481.P14110243946616588670` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211481 has offset 0).

The definition of A211481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211481.P14110243946616588670

`ceil(∑[a(n-1)+30]/12)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211481

/-- `ceil(∑[a(n-1)+30]/12)` -/
def P14110243946616588670.Spec : Prop :=
  ∀ n, P14110243946616588670.a n = A211481 n

theorem P14110243946616588670.correct : P14110243946616588670.Spec := by
  intro n
  simp only [A211481]

end A211481

/-! ## A211481.P4622892875706515361

`∑[∑[gcd(2, n)+(n-1)%3]]`
-/

namespace A211481.P4622892875706515361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + Int.tmod ((n : ℤ) - 1) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211481.P4622892875706515361

namespace A211481

/-- `∑[∑[gcd(2, n)+(n-1)%3]]` -/
def P4622892875706515361.Spec : Prop :=
  ∀ n, P4622892875706515361.a n = A211481 n

end A211481

/-! ## A211481.P13684269364343745434

`floor(n/3)+1-∑[ceil(n/cos(42))]`
-/

namespace A211481.P13684269364343745434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.cos (42 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211481.P13684269364343745434

namespace A211481

/-- `floor(n/3)+1-∑[ceil(n/cos(42))]` -/
def P13684269364343745434.Spec : Prop :=
  ∀ n, P13684269364343745434.a n = A211481 n

end A211481

/-! ## A211481.P15599009715998359229

`∑[2*n]+ceil(∑[or(1, 3*n)]/6)`
-/

namespace A211481.P15599009715998359229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 6⌉

end

end A211481.P15599009715998359229

namespace A211481

/-- `∑[2*n]+ceil(∑[or(1, 3*n)]/6)` -/
def P15599009715998359229.Spec : Prop :=
  ∀ n, P15599009715998359229.a n = A211481 n

end A211481

/-! ## A211481.P6396382836291513508

`∑[∑[∑[ogf((1+2x+4x^2+5x^3+3x^4)/(1+2x+2x^2+x^3))]]]`
-/

namespace A211481.P6396382836291513508
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 5, 3] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211481.P6396382836291513508

namespace A211481

/-- `∑[∑[∑[ogf((1+2x+4x^2+5x^3+3x^4)/(1+2x+2x^2+x^3))]]]` -/
def P6396382836291513508.Spec : Prop :=
  ∀ n, P6396382836291513508.a n = A211481 n

end A211481

/-! ## A211481.P8672243963939104452

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=16, a(4)=26, a(5)=38`
-/

namespace A211481.P8672243963939104452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 16, 26, 38] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A211481.P8672243963939104452

namespace A211481

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P8672243963939104452.Spec : Prop :=
  ∀ n, P8672243963939104452.a n = A211481 n

end A211481

/-! ## A211481.P2855299658006824668

`A249547(n)+∑[char[3*n]]`
-/

namespace A211481.P2855299658006824668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211481.P2855299658006824668

namespace A211481

/-- `A249547(n)+∑[char[3*n]]` -/
def P2855299658006824668.Spec : Prop :=
  ∀ n, P2855299658006824668.a n = A211481 n

end A211481

/-! ## A211481.P4499609677890853146

`∑[A001068(char[3*n]+n+n)]`
-/

namespace A211481.P4499609677890853146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 ((if ∃ j, f2 j = n then 1 else 0) + n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211481.P4499609677890853146

namespace A211481

/-- `∑[A001068(char[3*n]+n+n)]` -/
def P4499609677890853146.Spec : Prop :=
  ∀ n, P4499609677890853146.a n = A211481 n

end A211481

/-! ## A211481.P16786628890858379048

`∑[A001068(2*n+1)-n²%3]`
-/

namespace A211481.P16786628890858379048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n + 1) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211481.P16786628890858379048

namespace A211481

/-- `∑[A001068(2*n+1)-n²%3]` -/
def P16786628890858379048.Spec : Prop :=
  ∀ n, P16786628890858379048.a n = A211481 n

end A211481

/-! ## A211481.P1159537156555788600

`∑[A001068(2*n)]+ceil((n+1)/3)`
-/

namespace A211481.P1159537156555788600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(n + 1 : ℚ) / 3⌉

end

end A211481.P1159537156555788600

namespace A211481

/-- `∑[A001068(2*n)]+ceil((n+1)/3)` -/
def P1159537156555788600.Spec : Prop :=
  ∀ n, P1159537156555788600.a n = A211481 n

end A211481

/-! ## A211481.P15399688109636938699

`A025809(A008597(n))`
-/

namespace A211481.P15399688109636938699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025809 (A008597 n).toNat

end

end A211481.P15399688109636938699

namespace A211481

/-- `A025809(A008597(n))` -/
def P15399688109636938699.Spec : Prop :=
  ∀ n, P15399688109636938699.a n = A211481 n

end A211481

/-! ## A211481.P3439562467187189494

`A042968(n+1)+A032527(n)`
-/

namespace A211481.P3439562467187189494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + A032527 n

end

end A211481.P3439562467187189494

namespace A211481

/-- `A042968(n+1)+A032527(n)` -/
def P3439562467187189494.Spec : Prop :=
  ∀ n, P3439562467187189494.a n = A211481 n

end A211481

/-! ## A211481.P15609268986579349602

`A389316(n)+A087811(n+1)`
-/

namespace A211481.P15609268986579349602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389316 n + A087811 (n + 1)

end

end A211481.P15609268986579349602

namespace A211481

/-- `A389316(n)+A087811(n+1)` -/
def P15609268986579349602.Spec : Prop :=
  ∀ n, P15609268986579349602.a n = A211481 n

end A211481

/-! ## A211481.P16112475311930308080

`A104249(n)-A108579(n+1)`
-/

namespace A211481.P16112475311930308080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - A108579 (n + 1)

end

end A211481.P16112475311930308080

namespace A211481

/-- `A104249(n)-A108579(n+1)` -/
def P16112475311930308080.Spec : Prop :=
  ∀ n, P16112475311930308080.a n = A211481 n

end A211481

/-! ## A211481.P5018928593072143715

`A212986(2*n)+A002620(n)`
-/

namespace A211481.P5018928593072143715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 (2 * n) + A002620 n

end

end A211481.P5018928593072143715

namespace A211481

/-- `A212986(2*n)+A002620(n)` -/
def P5018928593072143715.Spec : Prop :=
  ∀ n, P5018928593072143715.a n = A211481 n

end A211481

/-! ## A211481.P114280564315836165

`A212984(2*n)-A069905(n)`
-/

namespace A211481.P114280564315836165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212984 (2 * n) - A069905 n

end

end A211481.P114280564315836165

namespace A211481

/-- `A212984(2*n)-A069905(n)` -/
def P114280564315836165.Spec : Prop :=
  ∀ n, P114280564315836165.a n = A211481 n

end A211481

/-! ## A211481.P17246628107912352176

`∑[A168056(2*n)-A008615(n+1)]`
-/

namespace A211481.P17246628107912352176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (2 * n) - A008615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211481.P17246628107912352176

namespace A211481

/-- `∑[A168056(2*n)-A008615(n+1)]` -/
def P17246628107912352176.Spec : Prop :=
  ∀ n, P17246628107912352176.a n = A211481 n

end A211481

/-! ## A211481.P15203029586153027034

`A184676(n+1)+n²-A008615(n)`
-/

namespace A211481.P15203029586153027034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1) + ((n ^ 2 : ℤ) - A008615 n)

end

end A211481.P15203029586153027034

namespace A211481

/-- `A184676(n+1)+n²-A008615(n)` -/
def P15203029586153027034.Spec : Prop :=
  ∀ n, P15203029586153027034.a n = A211481 n

end A211481

/-!
# A211482: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w*x+w*y+x*y=w*x*y.

The programs for A211482, the canonical program `A211482.P6160059486154528672` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211482 has offset 0).

The definition of A211482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211482.P6160059486154528672

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10, a(2)=22, a(3)=35, a(4)=50, a(5)=62, a(6)=80, a(7)=92`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211482

/-- `2*a(n-1)-a(n-2)` -/
def P6160059486154528672.Spec : Prop :=
  ∀ n, P6160059486154528672.a n = A211482 n

theorem P6160059486154528672.correct : P6160059486154528672.Spec := by
  intro n
  simp only [A211482]

end A211482

/-!
# A211483: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and (w+n)^2=x+y.

The programs for A211483, the canonical program `A211483.P4718632316147835224` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211483 has offset 0).

The definition of A211483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211483.P1397984186528343067

`A327672(Δ[n²])`
-/

namespace A211483.P1397984186528343067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A211483.P1397984186528343067

namespace A211483

/-- `A327672(Δ[n²])` -/
def P1397984186528343067.Spec : Prop :=
  ∀ n, P1397984186528343067.a n = A211483 n

end A211483

/-! ## A211483.P4718632316147835224

`A022554(2*n)+Δ[n²]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211483

/-- `A022554(2*n)+Δ[n²]` -/
def P4718632316147835224.Spec : Prop :=
  ∀ n, P4718632316147835224.a n = A211483 n

theorem P4718632316147835224.correct : P4718632316147835224.Spec := by
  intro n
  simp only [A211483]

end A211483

/-! ## A211483.P7624752921432009625

`∑[A182834(A182834(n+1))-n]`
-/

namespace A211483.P7624752921432009625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182834 (A182834 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211483.P7624752921432009625

namespace A211483

/-- `∑[A182834(A182834(n+1))-n]` -/
def P7624752921432009625.Spec : Prop :=
  ∀ n, P7624752921432009625.a n = A211483 n

end A211483

/-! ## A211483.P14334292114074209050

`∩[A327672(2*n+1), A327672(n)]`
-/

namespace A211483.P14334292114074209050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211483.P14334292114074209050

namespace A211483

/-- `∩[A327672(2*n+1), A327672(n)]` -/
def P14334292114074209050.Spec : Prop :=
  ∀ n, (P14334292114074209050.a n : ℤ) = A211483 n

end A211483

/-! ## A211483.P11993227464642817036

`A327672(2*n)+A003059(2*n+1)`
-/

namespace A211483.P11993227464642817036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (2 * n) + A003059 (2 * n + 1)

end

end A211483.P11993227464642817036

namespace A211483

/-- `A327672(2*n)+A003059(2*n+1)` -/
def P11993227464642817036.Spec : Prop :=
  ∀ n, P11993227464642817036.a n = A211483 n

end A211483

/-! ## A211483.P3790394895055114329

`A008619(2*n)+A022554(2*n)+n`
-/

namespace A211483.P3790394895055114329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) + (A022554 (2 * n) + (n : ℤ))

end

end A211483.P3790394895055114329

namespace A211483

/-- `A008619(2*n)+A022554(2*n)+n` -/
def P3790394895055114329.Spec : Prop :=
  ∀ n, P3790394895055114329.a n = A211483 n

end A211483

/-! ## A211483.P9745716133948247503

`∑[A135034(2*n+1)+A135034(2*n)]`
-/

namespace A211483.P9745716133948247503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (2 * n + 1) + A135034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211483.P9745716133948247503

namespace A211483

/-- `∑[A135034(2*n+1)+A135034(2*n)]` -/
def P9745716133948247503.Spec : Prop :=
  ∀ n, P9745716133948247503.a n = A211483 n

end A211483

/-! ## A211483.P13243813185338699095

`A028391(2*n+1)+A022554(2*n+1)`
-/

namespace A211483.P13243813185338699095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (2 * n + 1) + A022554 (2 * n + 1)

end

end A211483.P13243813185338699095

namespace A211483

/-- `A028391(2*n+1)+A022554(2*n+1)` -/
def P13243813185338699095.Spec : Prop :=
  ∀ n, P13243813185338699095.a n = A211483 n

end A211483

/-! ## A211483.P17429816938175660747

`A005843(n)+A022554(A005843(n))+1`
-/

namespace A211483.P17429816938175660747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A022554 (A005843 n).toNat + 1)

end

end A211483.P17429816938175660747

namespace A211483

/-- `A005843(n)+A022554(A005843(n))+1` -/
def P17429816938175660747.Spec : Prop :=
  ∀ n, P17429816938175660747.a n = A211483 n

end A211483

/-! ## A211483.P13512067874533273981

`A327672(2*n+1)+A115720(A327672(n+1))`
-/

namespace A211483.P13512067874533273981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (2 * n + 1) + A115720 (A327672 (n + 1)).toNat

end

end A211483.P13512067874533273981

namespace A211483

/-- `A327672(2*n+1)+A115720(A327672(n+1))` -/
def P13512067874533273981.Spec : Prop :=
  ∀ n, P13512067874533273981.a n = A211483 n

end A211483

/-! ## A211483.P16661958308268053730

`round(A211430(n)/2+n)`
-/

namespace A211483.P16661958308268053730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211430 n : ℚ) / 2 + (n : ℚ))

end

end A211483.P16661958308268053730

namespace A211483

/-- `round(A211430(n)/2+n)` -/
def P16661958308268053730.Spec : Prop :=
  ∀ n, P16661958308268053730.a n = A211483 n

end A211483

/-! ## A211483.P11609288421510963050

`eq[0, A276426(n)]`
-/

namespace A211483.P11609288421510963050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211483.P11609288421510963050

namespace A211483

/-- `eq[0, A276426(n)]` -/
def P11609288421510963050.Spec : Prop :=
  ∀ n, (P11609288421510963050.a n : ℤ) = A211483 n

end A211483

/-! ## A211483.P3667961513881680765

`A327672(2*n+1)+A046779(2*n+1)`
-/

namespace A211483.P3667961513881680765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (2 * n + 1) + A046779 (2 * n + 1)

end

end A211483.P3667961513881680765

namespace A211483

/-- `A327672(2*n+1)+A046779(2*n+1)` -/
def P3667961513881680765.Spec : Prop :=
  ∀ n, P3667961513881680765.a n = A211483 n

end A211483

/-! ## A211483.P15731903216253317980

`lt[A276426(n), acot(A264052(n))]`
-/

namespace A211483.P15731903216253317980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276426 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A264052 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A211483.P15731903216253317980

namespace A211483

/-- `lt[A276426(n), acot(A264052(n))]` -/
def P15731903216253317980.Spec : Prop :=
  ∀ n, (P15731903216253317980.a n : ℤ) = A211483 n

end A211483

/-! ## A211483.P5982394363984037504

`lt[A276426(n), acot(A257213(n))]`
-/

namespace A211483.P5982394363984037504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276426 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A257213 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A211483.P5982394363984037504

namespace A211483

/-- `lt[A276426(n), acot(A257213(n))]` -/
def P5982394363984037504.Spec : Prop :=
  ∀ n, (P5982394363984037504.a n : ℤ) = A211483 n

end A211483

/-! ## A211483.P2544180046846454257

`lt[A276426(n), A276391(2*n+1)]`
-/

namespace A211483.P2544180046846454257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A211483.P2544180046846454257

namespace A211483

/-- `lt[A276426(n), A276391(2*n+1)]` -/
def P2544180046846454257.Spec : Prop :=
  ∀ n, (P2544180046846454257.a n : ℤ) = A211483 n

end A211483

/-! ## A211483.P12035038943737362425

`A008619(A211430(n))+n`
-/

namespace A211483.P12035038943737362425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A211430 n).toNat + (n : ℤ)

end

end A211483.P12035038943737362425

namespace A211483

/-- `A008619(A211430(n))+n` -/
def P12035038943737362425.Spec : Prop :=
  ∀ n, P12035038943737362425.a n = A211483 n

end A211483

/-! ## A211483.P6800625830831957255

`and(A285562(2*n+1), A327672(2*n+1))`
-/

namespace A211483.P6800625830831957255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285562 (2 * n + 1)) (A327672 (2 * n + 1))

end

end A211483.P6800625830831957255

namespace A211483

/-- `and(A285562(2*n+1), A327672(2*n+1))` -/
def P6800625830831957255.Spec : Prop :=
  ∀ n, P6800625830831957255.a n = A211483 n

end A211483

/-!
# A211484: Numbers for which the canonical prime factorization contains only an even number of exponents, all of which are congruent to 1 modulo 3.

The programs for A211484, the canonical program `A211484.P16708190854633799120` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211484 has offset 1).

The definition of A211484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211484.P16708190854633799120

`∩[A030231(n+1), A366762(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A211484

/-- `∩[A030231(n+1), A366762(n+1)]` -/
def P16708190854633799120.Spec : Prop :=
  ∀ n, (P16708190854633799120.a n : ℤ) = A211484 (n + 1)

theorem P16708190854633799120.correct : P16708190854633799120.Spec := by
  intro n
  simp only [A211484, Nat.add_sub_cancel]

end A211484

/-! ## A211484.P2026428308851281680

`record[A159253(n+1)/A062953(n+1)]`
-/

namespace A211484.P2026428308851281680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159253 (n + 1) : ℚ) / (A062953 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211484.P2026428308851281680

namespace A211484

/-- `record[A159253(n+1)/A062953(n+1)]` -/
def P2026428308851281680.Spec : Prop :=
  ∀ n, P2026428308851281680.a n = (A211484 (n + 1) : ℚ)

end A211484

/-! ## A211484.P10183194590667132704

`eq[A050985(n+1), A062953(n+1)]+1`
-/

namespace A211484.P10183194590667132704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211484.P10183194590667132704

namespace A211484

/-- `eq[A050985(n+1), A062953(n+1)]+1` -/
def P10183194590667132704.Spec : Prop :=
  ∀ n, (P10183194590667132704.a n : ℤ) = A211484 (n + 1)

end A211484

/-! ## A211484.P7646653829576893294

`eq[A307421(n+1), A307427(n+1)]+1`
-/

namespace A211484.P7646653829576893294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211484.P7646653829576893294

namespace A211484

/-- `eq[A307421(n+1), A307427(n+1)]+1` -/
def P7646653829576893294.Spec : Prop :=
  ∀ n, (P7646653829576893294.a n : ℤ) = A211484 (n + 1)

end A211484

/-! ## A211484.P12011778517883703842

`∩[A211337(n+1), A327476(n+1)]`
-/

namespace A211484.P12011778517883703842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211484.P12011778517883703842

namespace A211484

/-- `∩[A211337(n+1), A327476(n+1)]` -/
def P12011778517883703842.Spec : Prop :=
  ∀ n, (P12011778517883703842.a n : ℤ) = A211484 (n + 1)

end A211484

/-!
# A211485: Numbers for which the canonical prime factorization contains only an odd number of exponents, all of which are congruent to 1 modulo 3.

The programs for A211485, the canonical program `A211485.P8134217445044999600` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211485 has offset 1).

The definition of A211485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211485.P11907537921663105249

`∩[A026416(n+1), A366762(n+1)]`
-/

namespace A211485.P11907537921663105249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211485.P11907537921663105249

namespace A211485

/-- `∩[A026416(n+1), A366762(n+1)]` -/
def P11907537921663105249.Spec : Prop :=
  ∀ n, (P11907537921663105249.a n : ℤ) = A211485 (n + 1)

end A211485

/-! ## A211485.P8134217445044999600

`∩[A366762(n+1), A375960(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A211485

/-- `∩[A366762(n+1), A375960(n+1)]` -/
def P8134217445044999600.Spec : Prop :=
  ∀ n, (P8134217445044999600.a n : ℤ) = A211485 (n + 1)

theorem P8134217445044999600.correct : P8134217445044999600.Spec := by
  intro n
  simp only [A211485, Nat.add_sub_cancel]

end A211485

/-! ## A211485.P12689060333935013750

`∩[A375960(n+1), A390437(n+1)]`
-/

namespace A211485.P12689060333935013750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211485.P12689060333935013750

namespace A211485

/-- `∩[A375960(n+1), A390437(n+1)]` -/
def P12689060333935013750.Spec : Prop :=
  ∀ n, (P12689060333935013750.a n : ℤ) = A211485 (n + 1)

end A211485

/-! ## A211485.P17689173018448643675

`eq[1, A104725(A017029(A104725(n)))]`
-/

namespace A211485.P17689173018448643675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A017029 (A104725 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211485.P17689173018448643675

namespace A211485

/-- `eq[1, A104725(A017029(A104725(n)))]` -/
def P17689173018448643675.Spec : Prop :=
  ∀ n, (P17689173018448643675.a n : ℤ) = A211485 (n + 1)

end A211485

/-! ## A211485.P10070280078515494913

`∩[A319239(n+1), A366762(n+1)]`
-/

namespace A211485.P10070280078515494913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211485.P10070280078515494913

namespace A211485

/-- `∩[A319239(n+1), A366762(n+1)]` -/
def P10070280078515494913.Spec : Prop :=
  ∀ n, (P10070280078515494913.a n : ℤ) = A211485 (n + 1)

end A211485

/-!
# A211486: Primes of the form 5+3*2^k.

The programs for A211486, there is no canonical definition to state claims against.
-/

/-! ## A211486.P9859810950357345965

`A007283(A057913(n+1))+5`
-/

namespace A211486.P9859810950357345965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A057913 (n + 1)).toNat + 5

end

end A211486.P9859810950357345965

/-! ## A211486.P16391749627725521310

`p?[3*2^n+5]`
-/

namespace A211486.P16391749627725521310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A211486.P16391749627725521310

/-! ## A211486.P6357650304550010646

`record[∑{p}[6*2^n+5, #]]`
-/

namespace A211486.P6357650304550010646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 2 ^ n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211486.P6357650304550010646

/-! ## A211486.P12232483117826767406

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=8, a(1)=3`
-/

namespace A211486.P12232483117826767406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [8, 3] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A211486.P12232483117826767406

/-! ## A211486.P10885943341361810084

`A000027(p?[A164094(n)+3])`
-/

namespace A211486.P10885943341361810084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A211486.P10885943341361810084

/-!
# A211487: Characteristic sequence of numbers n having a primitive root modulo n.

The programs for A211487, the canonical program `A211487.P12285411552525472944` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211487 has offset 1).

The definition of A211487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211487.P15726330332366598294

`A300251(n+1)%2`
-/

namespace A211487.P15726330332366598294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300251 (n + 1)) 2

end

end A211487.P15726330332366598294

namespace A211487

/-- `A300251(n+1)%2` -/
def P15726330332366598294.Spec : Prop :=
  ∀ n, P15726330332366598294.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P8595080888572696204

`char[A033948(n+2)-1]`
-/

namespace A211487.P8595080888572696204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A211487.P8595080888572696204

namespace A211487

/-- `char[A033948(n+2)-1]` -/
def P8595080888572696204.Spec : Prop :=
  ∀ n, (P8595080888572696204.a n : ℤ) = A211487 (n + 1)

end A211487

/-! ## A211487.P12285411552525472944

`C(n, C(n, A072273(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A211487

/-- `C(n, C(n, A072273(n+1)))` -/
def P12285411552525472944.Spec : Prop :=
  ∀ n, (P12285411552525472944.a n : ℤ) = A211487 (n + 1)

theorem P12285411552525472944.correct : P12285411552525472944.Spec := by
  intro n
  simp only [A211487, Nat.add_sub_cancel]

end A211487

/-! ## A211487.P2650069819551822335

`round(A160377(n+1)/(n+1))`
-/

namespace A211487.P2650069819551822335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160377 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A211487.P2650069819551822335

namespace A211487

/-- `round(A160377(n+1)/(n+1))` -/
def P2650069819551822335.Spec : Prop :=
  ∀ n, P2650069819551822335.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P16568426080048358368

`A056926(A046146(n+1))`
-/

namespace A211487.P16568426080048358368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A046146 (n + 1)).toNat

end

end A211487.P16568426080048358368

namespace A211487

/-- `A056926(A046146(n+1))` -/
def P16568426080048358368.Spec : Prop :=
  ∀ n, P16568426080048358368.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P14736382989312113173

`A057427(A046145(n+1))`
-/

namespace A211487.P14736382989312113173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A046145 (n + 1)).toNat

end

end A211487.P14736382989312113173

namespace A211487

/-- `A057427(A046145(n+1))` -/
def P14736382989312113173.Spec : Prop :=
  ∀ n, P14736382989312113173.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P16115138199687237824

`A157928(A046145(n+1)+1)`
-/

namespace A211487.P16115138199687237824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A046145 (n + 1) + 1).toNat

end

end A211487.P16115138199687237824

namespace A211487

/-- `A157928(A046145(n+1)+1)` -/
def P16115138199687237824.Spec : Prop :=
  ∀ n, P16115138199687237824.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P2983467440900070124

`A179184(A046145(n+1)+2)`
-/

namespace A211487.P2983467440900070124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A046145 (n + 1) + 2).toNat

end

end A211487.P2983467440900070124

namespace A211487

/-- `A179184(A046145(n+1)+2)` -/
def P2983467440900070124.Spec : Prop :=
  ∀ n, P2983467440900070124.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P13781417741521440528

`A019430(2*A046145(n+1))`
-/

namespace A211487.P13781417741521440528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * A046145 (n + 1)).toNat

end

end A211487.P13781417741521440528

namespace A211487

/-- `A019430(2*A046145(n+1))` -/
def P13781417741521440528.Spec : Prop :=
  ∀ n, P13781417741521440528.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P9589668303550566772

`A019432(2*A046145(n+1))`
-/

namespace A211487.P9589668303550566772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (2 * A046145 (n + 1)).toNat

end

end A211487.P9589668303550566772

namespace A211487

/-- `A019432(2*A046145(n+1))` -/
def P9589668303550566772.Spec : Prop :=
  ∀ n, P9589668303550566772.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P16056294174904464288

`A043545(2*A046145(n+1))`
-/

namespace A211487.P16056294174904464288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * A046145 (n + 1)).toNat

end

end A211487.P16056294174904464288

namespace A211487

/-- `A043545(2*A046145(n+1))` -/
def P16056294174904464288.Spec : Prop :=
  ∀ n, P16056294174904464288.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P12518396557567722453

`and(A007664(n), A034380(n+1))`
-/

namespace A211487.P12518396557567722453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A034380 (n + 1))

end

end A211487.P12518396557567722453

namespace A211487

/-- `and(A007664(n), A034380(n+1))` -/
def P12518396557567722453.Spec : Prop :=
  ∀ n, P12518396557567722453.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P17041111064218366543

`and(A034380(n+1), A054977(n))`
-/

namespace A211487.P17041111064218366543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034380 (n + 1)) (A054977 n)

end

end A211487.P17041111064218366543

namespace A211487

/-- `and(A034380(n+1), A054977(n))` -/
def P17041111064218366543.Spec : Prop :=
  ∀ n, P17041111064218366543.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P15121332498737649202

`and(A034380(n+1), A057427(n))`
-/

namespace A211487.P15121332498737649202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034380 (n + 1)) (A057427 n)

end

end A211487.P15121332498737649202

namespace A211487

/-- `and(A034380(n+1), A057427(n))` -/
def P15121332498737649202.Spec : Prop :=
  ∀ n, P15121332498737649202.a n = A211487 (n + 1)

end A211487

/-! ## A211487.P15596050526813597514

`A046145(n+1)/A111076(n+1)`
-/

namespace A211487.P15596050526813597514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046145 (n + 1) : ℚ) / (A111076 (n + 1) : ℚ)

end

end A211487.P15596050526813597514

namespace A211487

/-- `A046145(n+1)/A111076(n+1)` -/
def P15596050526813597514.Spec : Prop :=
  ∀ n, P15596050526813597514.a n = (A211487 (n + 1) : ℚ)

end A211487

/-! ## A211487.P15903994644624428766

`char[record[A070667(n+1)]]`
-/

namespace A211487.P15903994644624428766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A211487.P15903994644624428766

namespace A211487

/-- `char[record[A070667(n+1)]]` -/
def P15903994644624428766.Spec : Prop :=
  ∀ n, (P15903994644624428766.a n : ℤ) = A211487 (n + 1)

end A211487

/-! ## A211487.P15788858644215431832

`char[lt[n*A104194(n+1), n]]`
-/

namespace A211487.P15788858644215431832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104194 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A211487.P15788858644215431832

namespace A211487

/-- `char[lt[n*A104194(n+1), n]]` -/
def P15788858644215431832.Spec : Prop :=
  ∀ n, (P15788858644215431832.a n : ℤ) = A211487 (n + 1)

end A211487

/-! ## A211487.P2081530684418854617

`char[A160377(n+2)]`
-/

namespace A211487.P2081530684418854617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A211487.P2081530684418854617

namespace A211487

/-- `char[A160377(n+2)]` -/
def P2081530684418854617.Spec : Prop :=
  ∀ n, (P2081530684418854617.a n : ℤ) = A211487 (n + 1)

end A211487

/-!
# A211488: a(n) = Fibonacci(n^2) - Fibonacci(n).

The programs for A211488, there is no canonical definition to state claims against.
-/

/-! ## A211488.P15842062375821393752

`A054783(n+1)-A000045(n+1)`
-/

namespace A211488.P15842062375821393752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054783 (n + 1) - A000045 (n + 1)

end

end A211488.P15842062375821393752

/-! ## A211488.P15266907950855116113

`record[Δ[A000045(A000463(n+1))]]`
-/

namespace A211488.P15266907950855116113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000463 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211488.P15266907950855116113

/-! ## A211488.P17897193695876860919

`A000045((n+1)²)-A000045(n+1)`
-/

namespace A211488.P17897193695876860919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1) ^ 2) - A000045 (n + 1)

end

end A211488.P17897193695876860919

/-! ## A211488.P1653724370412970507

`A000071((n+1)²)-A000071(n+1)`
-/

namespace A211488.P1653724370412970507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 ((n + 1) ^ 2) - A000071 (n + 1)

end

end A211488.P1653724370412970507

/-! ## A211488.P13104334272874289227

`A001611((n+1)²)-A001611(n+1)`
-/

namespace A211488.P13104334272874289227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ((n + 1) ^ 2) - A001611 (n + 1)

end

end A211488.P13104334272874289227

/-!
# A211489: 

The programs for A211489, there is no canonical definition to state claims against.
-/

/-! ## A211489.P1341349458028417345

`record[Δ[A000045(A109594(n+1))]]`
-/

namespace A211489.P1341349458028417345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A109594 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211489.P1341349458028417345

/-! ## A211489.P9175799863085177078

`A000045((n+1)^3)-A000045(n+1)`
-/

namespace A211489.P9175799863085177078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1) ^ 3) - A000045 (n + 1)

end

end A211489.P9175799863085177078

/-! ## A211489.P17465748067857639362

`A002062(A000578(n+1))-A212272(n+1)`
-/

namespace A211489.P17465748067857639362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (A000578 (n + 1)).toNat - A212272 (n + 1)

end

end A211489.P17465748067857639362

/-!
# A211490: Number of (n+1) X (n+1) -4..4 symmetric matrices with every 2 X 2 subblock having sum zero and one or two distinct values.

The programs for A211490, the canonical program `A211490.P15309696246739635917` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211490 has offset 1).

The definition of A211490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211490.P6285652898029248569

`floor(ϕ*a(n-1))-4` with `a(0)=13`
-/

namespace A211490.P6285652898029248569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ - 4

end

end A211490.P6285652898029248569

namespace A211490

/-- `floor(ϕ*a(n-1))-4` -/
def P6285652898029248569.Spec : Prop :=
  ∀ n, P6285652898029248569.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P15309696246739635917

`a(n-1)+a(n-2)-7` with `a(0)=13, a(1)=17`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211490

/-- `a(n-1)+a(n-2)-7` -/
def P15309696246739635917.Spec : Prop :=
  ∀ n, P15309696246739635917.a n = A211490 (n + 1)

theorem P15309696246739635917.correct : P15309696246739635917.Spec := by
  intro n
  simp only [A211490, Nat.add_sub_cancel]

end A211490

/-! ## A211490.P15071982600468165708

`a(n-1)-(7-a(n-2))` with `a(0)=13, a(1)=17`
-/

namespace A211490.P15071982600468165708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 17] fun n a =>
  a (n - 1) - (7 - a (n - 2))

end

end A211490.P15071982600468165708

namespace A211490

/-- `a(n-1)-(7-a(n-2))` -/
def P15071982600468165708.Spec : Prop :=
  ∀ n, P15071982600468165708.a n = A211490 (n + 1)

theorem P15071982600468165708.correct : P15071982600468165708.Spec := by
  intro n
  simp only [A211490, Nat.add_sub_cancel, A211490.P15071982600468165708.a, A211490.P15309696246739635917.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211490

/-! ## A211490.P8665403810865992759

`A211322(n+1)+2`
-/

namespace A211490.P8665403810865992759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211322 (n + 1) + 2

end

end A211490.P8665403810865992759

namespace A211490

/-- `A211322(n+1)+2` -/
def P8665403810865992759.Spec : Prop :=
  ∀ n, P8665403810865992759.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P1575797530028992891

`A211329(n+1)-2`
-/

namespace A211490.P1575797530028992891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211329 (n + 1) - 2

end

end A211490.P1575797530028992891

namespace A211490

/-- `A211329(n+1)-2` -/
def P1575797530028992891.Spec : Prop :=
  ∀ n, P1575797530028992891.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P9881886285246388257

`A097280(n+2)+4`
-/

namespace A211490.P9881886285246388257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 (n + 2) + 4

end

end A211490.P9881886285246388257

namespace A211490

/-- `A097280(n+2)+4` -/
def P9881886285246388257.Spec : Prop :=
  ∀ n, P9881886285246388257.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P17816866014743620398

`2*A048584(n)+3`
-/

namespace A211490.P17816866014743620398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048584 n + 3

end

end A211490.P17816866014743620398

namespace A211490

/-- `2*A048584(n)+3` -/
def P17816866014743620398.Spec : Prop :=
  ∀ n, P17816866014743620398.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P10150100462222090281

`A090991(n+1)+7`
-/

namespace A211490.P10150100462222090281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + 7

end

end A211490.P10150100462222090281

namespace A211490

/-- `A090991(n+1)+7` -/
def P10150100462222090281.Spec : Prop :=
  ∀ n, P10150100462222090281.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P4585697611771921880

`A288603(n+3)+5`
-/

namespace A211490.P4585697611771921880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 3) + 5

end

end A211490.P4585697611771921880

namespace A211490

/-- `A288603(n+3)+5` -/
def P4585697611771921880.Spec : Prop :=
  ∀ n, P4585697611771921880.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P10876425679980802255

`2*A020706(n)+5`
-/

namespace A211490.P10876425679980802255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020706 n + 5

end

end A211490.P10876425679980802255

namespace A211490

/-- `2*A020706(n)+5` -/
def P10876425679980802255.Spec : Prop :=
  ∀ n, P10876425679980802255.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P5816129917915932917

`A054886(n+2)+7`
-/

namespace A211490.P5816129917915932917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 2) + 7

end

end A211490.P5816129917915932917

namespace A211490

/-- `A054886(n+2)+7` -/
def P5816129917915932917.Spec : Prop :=
  ∀ n, P5816129917915932917.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P63751101251273892

`A078642(n+2)+7`
-/

namespace A211490.P63751101251273892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) + 7

end

end A211490.P63751101251273892

namespace A211490

/-- `A078642(n+2)+7` -/
def P63751101251273892.Spec : Prop :=
  ∀ n, P63751101251273892.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P1345016208773316750

`A068922(n+3)+7`
-/

namespace A211490.P1345016208773316750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 3) + 7

end

end A211490.P1345016208773316750

namespace A211490

/-- `A068922(n+3)+7` -/
def P1345016208773316750.Spec : Prop :=
  ∀ n, P1345016208773316750.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P9621290064245284260

`A001595(n+3)+8`
-/

namespace A211490.P9621290064245284260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 3) + 8

end

end A211490.P9621290064245284260

namespace A211490

/-- `A001595(n+3)+8` -/
def P9621290064245284260.Spec : Prop :=
  ∀ n, P9621290064245284260.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P13195172585499303476

`2*A020701(n)+7`
-/

namespace A211490.P13195172585499303476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n + 7

end

end A211490.P13195172585499303476

namespace A211490

/-- `2*A020701(n)+7` -/
def P13195172585499303476.Spec : Prop :=
  ∀ n, P13195172585499303476.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P10535505026174381918

`A006355(n+5)+7`
-/

namespace A211490.P10535505026174381918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 5) + 7

end

end A211490.P10535505026174381918

namespace A211490

/-- `A006355(n+5)+7` -/
def P10535505026174381918.Spec : Prop :=
  ∀ n, P10535505026174381918.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P15563011622642904357

`2*A169622(n+2)+1`
-/

namespace A211490.P15563011622642904357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169622 (n + 2) + 1

end

end A211490.P15563011622642904357

namespace A211490

/-- `2*A169622(n+2)+1` -/
def P15563011622642904357.Spec : Prop :=
  ∀ n, P15563011622642904357.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P540105837395443351

`2*A018910(n+1)+3`
-/

namespace A211490.P540105837395443351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018910 (n + 1) + 3

end

end A211490.P540105837395443351

namespace A211490

/-- `2*A018910(n+1)+3` -/
def P540105837395443351.Spec : Prop :=
  ∀ n, P540105837395443351.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P9431192701420273551

`A122194(2*(n+1))+8`
-/

namespace A211490.P9431192701420273551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122194 (2 * (n + 1)) + 8

end

end A211490.P9431192701420273551

namespace A211490

/-- `A122194(2*(n+1))+8` -/
def P9431192701420273551.Spec : Prop :=
  ∀ n, P9431192701420273551.a n = A211490 (n + 1)

end A211490

/-! ## A211490.P16940521015217911233

`2*A000045(n+4)+7`
-/

namespace A211490.P16940521015217911233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 4) + 7

end

end A211490.P16940521015217911233

namespace A211490

/-- `2*A000045(n+4)+7` -/
def P16940521015217911233.Spec : Prop :=
  ∀ n, P16940521015217911233.a n = A211490 (n + 1)

end A211490

/-!
# A211491: Number of (n+1) X (n+1) -4..4 symmetric matrices with every 2 X 2 subblock having sum zero and three distinct values.

The programs for A211491, there is no canonical definition to state claims against.
-/

/-! ## A211491.P12914489094443289630

`A211459(n+1)+2*A020706(n)`
-/

namespace A211491.P12914489094443289630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211459 (n + 1) + 2 * A020706 n

end

end A211491.P12914489094443289630

/-! ## A211491.P15391183966657547766

`A090991(n+1)+A211459(n+1)+2`
-/

namespace A211491.P15391183966657547766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + (A211459 (n + 1) + 2)

end

end A211491.P15391183966657547766

/-! ## A211491.P17980677593472382223

`A211459(n+1)+A211490(n+1)-5`
-/

namespace A211491.P17980677593472382223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211459 (n + 1) + (A211490 (n + 1) - 5)

end

end A211491.P17980677593472382223

/-! ## A211491.P12952519739713088841

`A211459(n+1)+A048584(n)+A020701(n)`
-/

namespace A211491.P12952519739713088841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211459 (n + 1) + (A048584 n + A020701 n)

end

end A211491.P12952519739713088841

/-! ## A211491.P6810538423974990668

`A211459(n+1)+A211492(n+1)-A211460(n+1)`
-/

namespace A211491.P6810538423974990668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211459 (n + 1) + (A211492 (n + 1) - A211460 (n + 1))

end

end A211491.P6810538423974990668

/-!
# A211492: Number of (n+1) X (n+1) -4..4 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

The programs for A211492, there is no canonical definition to state claims against.
-/

/-! ## A211492.P5368327971423811693

`A211460(n+1)+2*A020706(n)`
-/

namespace A211492.P5368327971423811693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211460 (n + 1) + 2 * A020706 n

end

end A211492.P5368327971423811693

/-! ## A211492.P7036910237121068244

`A090991(n+1)+A211460(n+1)+2`
-/

namespace A211492.P7036910237121068244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + (A211460 (n + 1) + 2)

end

end A211492.P7036910237121068244

/-! ## A211492.P15657659675138846843

`A211460(n+1)+A211490(n+1)-5`
-/

namespace A211492.P15657659675138846843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211460 (n + 1) + (A211490 (n + 1) - 5)

end

end A211492.P15657659675138846843

/-! ## A211492.P4222564696418140574

`A211460(n+1)+A048584(n)+A020701(n)`
-/

namespace A211492.P4222564696418140574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211460 (n + 1) + (A048584 n + A020701 n)

end

end A211492.P4222564696418140574

/-! ## A211492.P4829385270584385787

`A211460(n+1)+A211491(n+1)-A211459(n+1)`
-/

namespace A211492.P4829385270584385787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211460 (n + 1) + (A211491 (n + 1) - A211459 (n + 1))

end

end A211492.P4829385270584385787

/-!
# A211493: Number of (n+1)X(n+1) -4..4 symmetric matrices with every 2X2 subblock having sum zero and two or three distinct values.

The programs for A211493, there is no canonical definition to state claims against.
-/

/-! ## A211493.P1546266066674028335

`A211325(n+1)+A211461(n+1)-A211477(n+1)`
-/

namespace A211493.P1546266066674028335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211325 (n + 1) + (A211461 (n + 1) - A211477 (n + 1))

end

end A211493.P1546266066674028335

/-!
# A211494: Number of (n+1)X(n+1) -4..4 symmetric matrices with every 2X2 subblock having sum zero and one, two or three distinct values.

The programs for A211494, there is no canonical definition to state claims against.
-/

/-! ## A211494.P9160664436964616728

`A211326(n+1)+A211462(n+1)-A211478(n+1)`
-/

namespace A211494.P9160664436964616728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211326 (n + 1) + (A211462 (n + 1) - A211478 (n + 1))

end

end A211494.P9160664436964616728

/-!
# A211495: Number of (n+1) X (n+1) -4..4 symmetric matrices with every 2 X 2 subblock having sum zero and three or four distinct values.

The programs for A211495, there is no canonical definition to state claims against.
-/

/-! ## A211495.P9536199023468845038

`A211463(n+1)+2^(n+3)`
-/

namespace A211495.P9536199023468845038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211463 (n + 1) + (2 ^ (n + 3) : ℤ)

end

end A211495.P9536199023468845038

/-! ## A211495.P12265765496398587058

`A020707(n)+A211463(n+1)+A020707(n)`
-/

namespace A211495.P12265765496398587058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (A211463 (n + 1) + A020707 n)

end

end A211495.P12265765496398587058

/-! ## A211495.P10415851826244655676

`A211327(n+1)+A211463(n+1)-A211476(n+1)`
-/

namespace A211495.P10415851826244655676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211327 (n + 1) + (A211463 (n + 1) - A211476 (n + 1))

end

end A211495.P10415851826244655676

/-! ## A211495.P10350667180585050948

`A211496(n+1)+A211463(n+1)-A211464(n+1)`
-/

namespace A211495.P10350667180585050948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211496 (n + 1) + (A211463 (n + 1) - A211464 (n + 1))

end

end A211495.P10350667180585050948

/-! ## A211495.P3910274604314920937

`8*A281955(A000124(n))+A211463(n+1)`
-/

namespace A211495.P3910274604314920937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A281955 (A000124 n).toNat + A211463 (n + 1)

end

end A211495.P3910274604314920937

/-!
# A211496: Number of (n+1)X(n+1) -4..4 symmetric matrices with every 2X2 subblock having sum zero and one, three or four distinct values.

The programs for A211496, there is no canonical definition to state claims against.
-/

/-! ## A211496.P4722657044635803898

`A211464(n+1)+2^(n+3)`
-/

namespace A211496.P4722657044635803898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211464 (n + 1) + (2 ^ (n + 3) : ℤ)

end

end A211496.P4722657044635803898

/-! ## A211496.P14214345383648310192

`A211327(n+1)+A211464(n+1)-A211476(n+1)`
-/

namespace A211496.P14214345383648310192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211327 (n + 1) + (A211464 (n + 1) - A211476 (n + 1))

end

end A211496.P14214345383648310192

/-! ## A211496.P1275833095004251108

`A211495(n+1)+A211464(n+1)-A211463(n+1)`
-/

namespace A211496.P1275833095004251108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211495 (n + 1) + (A211464 (n + 1) - A211463 (n + 1))

end

end A211496.P1275833095004251108

/-! ## A211496.P12604170771991375145

`A257088(A020707(n))+A211464(n+1)`
-/

namespace A211496.P12604170771991375145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A020707 n).toNat + A211464 (n + 1)

end

end A211496.P12604170771991375145

/-!
# A211498: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having three distinct values for every i<=n and j<=n.

The programs for A211498, there is no canonical definition to state claims against.
-/

/-! ## A211498.P5937460844650037140

`A211442(n+1)+A211499(n+1)-A211443(n+1)`
-/

namespace A211498.P5937460844650037140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211442 (n + 1) + (A211499 (n + 1) - A211443 (n + 1))

end

end A211498.P5937460844650037140

/-! ## A211498.P7721640288952423643

`A211442(n+1)+A211688(n+1)-A211468(n+1)`
-/

namespace A211498.P7721640288952423643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211442 (n + 1) + (A211688 (n + 1) - A211468 (n + 1))

end

end A211498.P7721640288952423643

/-!
# A211499: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one or three distinct values for every i<=n and j<=n.

The programs for A211499, there is no canonical definition to state claims against.
-/

/-! ## A211499.P11941913957555665881

`A211443(n+1)+A211498(n+1)-A211442(n+1)`
-/

namespace A211499.P11941913957555665881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211443 (n + 1) + (A211498 (n + 1) - A211442 (n + 1))

end

end A211499.P11941913957555665881

/-! ## A211499.P4436644852425791717

`A211443(n+1)+A211688(n+1)-A211468(n+1)`
-/

namespace A211499.P4436644852425791717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211443 (n + 1) + (A211688 (n + 1) - A211468 (n + 1))

end

end A211499.P4436644852425791717

