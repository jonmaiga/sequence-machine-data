import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C006
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A400202: Number of integers k, 1 <= k < n, such that (n+k)/gcd(n,k) is prime.

The programs for A400202, the canonical program `A400202.P11404524350164515713` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400202 has offset 1).

The definition of A400202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400202.P11404524350164515713

`∑{d}[n+1, A060715(#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400202

/-- `∑{d}[n+1, A060715(#)]` -/
def P11404524350164515713.Spec : Prop :=
  ∀ n, P11404524350164515713.a n = A400202 (n + 1)

theorem P11404524350164515713.correct : P11404524350164515713.Spec := by
  intro n
  simp only [A400202, Nat.add_sub_cancel]

end A400202

/-! ## A400202.P11271956108183541088

`∑{d}[n+1, A000720(2*#-1)-A000720(#)]`
-/

namespace A400202.P11271956108183541088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000720 (2 * d - 1) - A000720 d)

end

end A400202.P11271956108183541088

namespace A400202

/-- `∑{d}[n+1, A000720(2*#-1)-A000720(#)]` -/
def P11271956108183541088.Spec : Prop :=
  ∀ n, P11271956108183541088.a n = A400202 (n + 1)

end A400202

/-!
# A400204: Minimum perimeter of a right-angled triangle with integer sides whose area is divisible by the n-th prime.

The programs for A400204, there is no canonical definition to state claims against.
-/

/-! ## A400204.P15946790117071971218

`A334799(A330017(n+1))`
-/

namespace A400204.P15946790117071971218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334799 (A330017 (n + 1)).toNat

end

end A400204.P15946790117071971218

/-!
# A400213: a(n) is the number of distinct areas of triangles formed by three vertices of a regular n-gon.

The programs for A400213, there is no canonical definition to state claims against.
-/

/-! ## A400213.P3000313983390152098

`A204330(A008628(n))`
-/

namespace A400213.P3000313983390152098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A008628 n).toNat

end

end A400213.P3000313983390152098

/-! ## A400213.P14707686710127839063

`A204330(A088314(n))`
-/

namespace A400213.P14707686710127839063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A088314 n).toNat

end

end A400213.P14707686710127839063

/-! ## A400213.P150024287899678222

`A204330(A199016(n))`
-/

namespace A400213.P150024287899678222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A199016 n).toNat

end

end A400213.P150024287899678222

/-! ## A400213.P15969025280514255206

`A204330(A304405(n))`
-/

namespace A400213.P15969025280514255206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A304405 n).toNat

end

end A400213.P15969025280514255206

/-! ## A400213.P11161992935708070391

`A204330(A347446(n))`
-/

namespace A400213.P11161992935708070391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A347446 n).toNat

end

end A400213.P11161992935708070391

/-!
# A400216: Scaled x-coordinates of the vertices of a Boerdijk-Coxeter helix starting at a tetrahedron with vertices (-1,-1,-1), (1, -1, 1), (-1, 1, 1), and (1, 1, -1).

The programs for A400216, there is no canonical definition to state claims against.
-/

/-! ## A400216.P3191787960502721985

`ogf((-1+x+9x^2+23x^3-66x^4-84x^5+54x^6)/(1-2x-6x^2-18x^3+81x^4))`
-/

namespace A400216.P3191787960502721985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, 9, 23, -66, -84, 54] [1, -2, -6, -18, 81] n

end

end A400216.P3191787960502721985

/-!
# A400217: Scaled y-coordinates of the vertices of a Boerdijk-Coxeter helix starting at a tetrahedron with vertices (-1,-1,-1), (1, -1, 1), (-1, 1, 1), and (1, 1, -1).

The programs for A400217, there is no canonical definition to state claims against.
-/

/-! ## A400217.P12194537038756177142

`ogf((-1+3x+3x^2+15x^3-90x^4+84x^5-54x^6)/(1-2x-6x^2-18x^3+81x^4))`
-/

namespace A400217.P12194537038756177142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 3, 15, -90, 84, -54] [1, -2, -6, -18, 81] n

end

end A400217.P12194537038756177142

/-!
# A400218: Scaled z-coordinates of the vertices of a Boerdijk-Coxeter helix starting at a tetrahedron with vertices (-1,-1,-1), (1, -1, 1), (-1, 1, 1), and (1, 1, -1).

The programs for A400218, there is no canonical definition to state claims against.
-/

/-! ## A400218.P2634014959209689813

`ogf((-1+5x^2+24x^3-26x^4-18x^5)/(1+x-3x^2-27x^3))`
-/

namespace A400218.P2634014959209689813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 5, 24, -26, -18] [1, 1, -3, -27] n

end

end A400218.P2634014959209689813

/-!
# A400219: Number of subsets of the first n nonzero fourth powers whose sum is a nonzero fourth power.

The programs for A400219, there is no canonical definition to state claims against.
-/

/-! ## A400219.P1621951074383173307

`∩[A056651(n+1), A243903(n+1)]`
-/

namespace A400219.P1621951074383173307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400219.P1621951074383173307

/-! ## A400219.P13572906797911888462

`eq[A058348(n), A376556(n)]`
-/

namespace A400219.P13572906797911888462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400219.P13572906797911888462

/-! ## A400219.P4899529011857509316

`eq[A151660(n), A376556(n)]`
-/

namespace A400219.P4899529011857509316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400219.P4899529011857509316

/-!
# A400221: Number of divisors of 3360^n.

The programs for A400221, the canonical program `A400221.P8547259443277624216` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400221 has offset 0).

The definition of A400221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400221.P8547259443277624216

`(n+1)^3*(5*n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400221

/-- `(n+1)^3*(5*n+1)` -/
def P8547259443277624216.Spec : Prop :=
  ∀ n, (P8547259443277624216.a n : ℤ) = A400221 n

theorem P8547259443277624216.correct : P8547259443277624216.Spec := by
  intro n
  simp only [A400221]

end A400221

/-! ## A400221.P13009129032468288865

`ogf((1+43x+67x^2+9x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A400221.P13009129032468288865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 43, 67, 9] [1, -5, 10, -10, 5, -1] n

end

end A400221.P13009129032468288865

namespace A400221

/-- `ogf((1+43x+67x^2+9x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13009129032468288865.Spec : Prop :=
  ∀ n, P13009129032468288865.a n = A400221 n

end A400221

/-! ## A400221.P1304693639706574175

`A109117(n)/Δ[n²]`
-/

namespace A400221.P1304693639706574175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109117 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A400221.P1304693639706574175

namespace A400221

/-- `A109117(n)/Δ[n²]` -/
def P1304693639706574175.Spec : Prop :=
  ∀ n, P1304693639706574175.a n = (A400221 n : ℚ)

end A400221

/-! ## A400221.P1916448487772382732

`A160538(n+1)+(n+1)²²`
-/

namespace A400221.P1916448487772382732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160538 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A400221.P1916448487772382732

namespace A400221

/-- `A160538(n+1)+(n+1)²²` -/
def P1916448487772382732.Spec : Prop :=
  ∀ n, P1916448487772382732.a n = A400221 n

theorem P1916448487772382732.correct : P1916448487772382732.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P1916448487772382732.a, A400221.P8547259443277624216.a, A160538, A160538.P2096202092056556085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P8563722883501362530

`A212837(n+1)+A057769(n)`
-/

namespace A400221.P8563722883501362530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212837 (n + 1) + A057769 n

end

end A400221.P8563722883501362530

namespace A400221

/-- `A212837(n+1)+A057769(n)` -/
def P8563722883501362530.Spec : Prop :=
  ∀ n, P8563722883501362530.a n = A400221 n

theorem P8563722883501362530.correct : P8563722883501362530.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P8563722883501362530.a, A400221.P8547259443277624216.a, A057769, A057769.P4527469839372896610.a, A212837, A212837.P10689536641733684465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P13509787186762558181

`A378064(n)+A181773(n+1)`
-/

namespace A400221.P13509787186762558181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378064 n + A181773 (n + 1)

end

end A400221.P13509787186762558181

namespace A400221

/-- `A378064(n)+A181773(n+1)` -/
def P13509787186762558181.Spec : Prop :=
  ∀ n, P13509787186762558181.a n = A400221 n

theorem P13509787186762558181.correct : P13509787186762558181.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P13509787186762558181.a, A400221.P8547259443277624216.a, A181773, A181773.P17003731437091766161.a, A378064, A378064.P7835891324193449087.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P1101940851974996951

`A000578(n+1)*A016863(n)/A016862(n)`
-/

namespace A400221.P1101940851974996951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) * A016863 n : ℚ) / (A016862 n : ℚ)

end

end A400221.P1101940851974996951

namespace A400221

/-- `A000578(n+1)*A016863(n)/A016862(n)` -/
def P1101940851974996951.Spec : Prop :=
  ∀ n, P1101940851974996951.a n = (A400221 n : ℚ)

end A400221

/-! ## A400221.P8544640514649151532

`A000578(n+1)*A016864(n)/A016863(n)`
-/

namespace A400221.P8544640514649151532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) * A016864 n : ℚ) / (A016863 n : ℚ)

end

end A400221.P8544640514649151532

namespace A400221

/-- `A000578(n+1)*A016864(n)/A016863(n)` -/
def P8544640514649151532.Spec : Prop :=
  ∀ n, P8544640514649151532.a n = (A400221 n : ℚ)

end A400221

/-! ## A400221.P13150087726754166396

`A131466(n+1)-A056105(n+1)`
-/

namespace A400221.P13150087726754166396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131466 (n + 1) - A056105 (n + 1)

end

end A400221.P13150087726754166396

namespace A400221

/-- `A131466(n+1)-A056105(n+1)` -/
def P13150087726754166396.Spec : Prop :=
  ∀ n, P13150087726754166396.a n = A400221 n

theorem P13150087726754166396.correct : P13150087726754166396.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P13150087726754166396.a, A400221.P8547259443277624216.a, A056105, A056105.P6848475420530033714.a, A131466, A131466.P10936025003940888238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P85724415151572694

`A269792(n+1)-A033430(n+1)`
-/

namespace A400221.P85724415151572694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269792 (n + 1) - A033430 (n + 1)

end

end A400221.P85724415151572694

namespace A400221

/-- `A269792(n+1)-A033430(n+1)` -/
def P85724415151572694.Spec : Prop :=
  ∀ n, P85724415151572694.a n = A400221 n

theorem P85724415151572694.correct : P85724415151572694.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P85724415151572694.a, A400221.P8547259443277624216.a, A033430, A033430.P5214425656551841819.a, A269792, A269792.P3870612193346425875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-! ## A400221.P6015065380060770877

`A269792(n+1)-(A033431(n+1)+A033431(n+1))`
-/

namespace A400221.P6015065380060770877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269792 (n + 1) - (A033431 (n + 1) + A033431 (n + 1))

end

end A400221.P6015065380060770877

namespace A400221

/-- `A269792(n+1)-(A033431(n+1)+A033431(n+1))` -/
def P6015065380060770877.Spec : Prop :=
  ∀ n, P6015065380060770877.a n = A400221 n

theorem P6015065380060770877.correct : P6015065380060770877.Spec := by
  intro n
  simp only [A400221, Nat.add_sub_cancel, A400221.P6015065380060770877.a, A400221.P8547259443277624216.a, A033431, A033431.P14261726496554658204.a, A269792, A269792.P3870612193346425875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400221

/-!
# A400225: G.f.: 1 = Sum_{n>=0} a(n) * x^n / (1 + 2^n*x)^(2^n).

The programs for A400225, there is no canonical definition to state claims against.
-/

/-! ## A400225.P12750331894977841392

`A048817(A027101(n))`
-/

namespace A400225.P12750331894977841392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048817 (A027101 n).toNat

end

end A400225.P12750331894977841392

/-!
# A400228: Array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the largest common ancestor of n and k alongside the infinite tree depicted in A397809.

The programs for A400228, there is no canonical definition to state claims against.
-/

/-! ## A400228.P18056801071444749297

`A078377(A174378(n))`
-/

namespace A400228.P18056801071444749297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078377 (A174378 n).toNat

end

end A400228.P18056801071444749297

/-! ## A400228.P10680252780195226874

`A067131(A347972(n))`
-/

namespace A400228.P10680252780195226874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A347972 n).toNat

end

end A400228.P10680252780195226874

/-! ## A400228.P1371266371328683554

`A363853(A059922(n))`
-/

namespace A400228.P1371266371328683554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363853 (A059922 n).toNat

end

end A400228.P1371266371328683554

/-! ## A400228.P9646955603209303720

`A316715(A395185(n))`
-/

namespace A400228.P9646955603209303720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316715 (A395185 n).toNat

end

end A400228.P9646955603209303720

/-! ## A400228.P17895210329572445709

`A217984(A230805(n+1))`
-/

namespace A400228.P17895210329572445709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217984 (A230805 (n + 1)).toNat

end

end A400228.P17895210329572445709

/-!
# A400229: The sequence of side-lengths that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, y_k), subject to the conditions that (1) the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) the sequence (a(0), y_0, a(1), y_1, a(2), y_2, ...) is the lexicographically earliest such infinite sequence.

The programs for A400229, there is no canonical definition to state claims against.
-/

/-! ## A400229.P13296870845840640369

`A051265(A084037(n+1))`
-/

namespace A400229.P13296870845840640369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A084037 (n + 1)).toNat

end

end A400229.P13296870845840640369

/-!
# A400230: The sequence of y-values that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, a(k)) and the square has side length s_k, subject to the conditions that (1) the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) the sequence (s_0, a(0), s_1, a(1), s_2, a(2), ...) is the lexicographically earliest such infinite sequence.

The programs for A400230, there is no canonical definition to state claims against.
-/

/-! ## A400230.P9462489638000044754

`A127324(A265997(n+1))`
-/

namespace A400230.P9462489638000044754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A265997 (n + 1)).toNat

end

end A400230.P9462489638000044754

/-! ## A400230.P5313581181819773816

`A346392(A356626(n+1))`
-/

namespace A400230.P5313581181819773816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A356626 (n + 1)).toNat

end

end A400230.P5313581181819773816

/-!
# A400232: a(n) is the number of boundary lattice points minus the number of interior lattice points of the cube [0,n] X [0,n] X [0,n].

The programs for A400232, the canonical program `A400232.P17183186116095233365` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400232 has offset 1).

The definition of A400232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400232.P17183186116095233365

`6*(n+1)²+2-n^3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400232

/-- `6*(n+1)²+2-n^3` -/
def P17183186116095233365.Spec : Prop :=
  ∀ n, P17183186116095233365.a n = A400232 (n + 1)

theorem P17183186116095233365.correct : P17183186116095233365.Spec := by
  intro n
  simp only [A400232, Nat.add_sub_cancel]

end A400232

/-! ## A400232.P13803633079667393665

`∑[∑[a(n-1)-6]]` with `a(0)=8, a(1)=9, a(2)=6`
-/

namespace A400232.P13803633079667393665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 6] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400232.P13803633079667393665

namespace A400232

/-- `∑[∑[a(n-1)-6]]` -/
def P13803633079667393665.Spec : Prop :=
  ∀ n, P13803633079667393665.a n = A400232 (n + 1)

end A400232

/-!
# A400233: a(n) is the number of boundary lattice points minus the number of interior lattice points of the 4-dimensional cube [0,n]^4.

The programs for A400233, the canonical program `A400233.P10225734584980570909` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400233 has offset 1).

The definition of A400233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400233.P10225734584980570909

`(n+2)^4-2*n^4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400233

/-- `(n+2)^4-2*n^4` -/
def P10225734584980570909.Spec : Prop :=
  ∀ n, P10225734584980570909.a n = A400233 (n + 1)

theorem P10225734584980570909.correct : P10225734584980570909.Spec := by
  intro n
  simp only [A400233, Nat.add_sub_cancel]

end A400233

/-!
# A400235: a(n) is the number of boundary lattice points minus the number of interior lattice points of the prism with vertices (0,0,0), (n,0,0), (0,n,0), (0,0,n), (n,0,n) and (0,n,n).

The programs for A400235, the canonical program `A400235.P11496997856780978715` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400235 has offset 1).

The definition of A400235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400235.P11496997856780978715

`4*(n+1)²+2-n²*(n-1)/2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400235

/-- `4*(n+1)²+2-n²*(n-1)/2` -/
def P11496997856780978715.Spec : Prop :=
  ∀ n, P11496997856780978715.a n = (A400235 (n + 1) : ℚ)

end A400235

/-! ## A400235.P207820100484000470

`∑[∑[a(n-1)-3]]` with `a(0)=6, a(1)=6, a(2)=6`
-/

namespace A400235.P207820100484000470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 6, 6] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400235.P207820100484000470

namespace A400235

/-- `∑[∑[a(n-1)-3]]` -/
def P207820100484000470.Spec : Prop :=
  ∀ n, P207820100484000470.a n = A400235 (n + 1)

end A400235

/-!
# A400241: G.f. A(x) satisfies A(x) = A(x^2/(1 - x)^3) / (1 - x), with A(0) = 1.

The programs for A400241, there is no canonical definition to state claims against.
-/

/-! ## A400241.P7778326280567406977

`A179927(A133263(n))`
-/

namespace A400241.P7778326280567406977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179927 (A133263 n).toNat

end

end A400241.P7778326280567406977

/-! ## A400241.P12400965092951905930

`A179927(A238531(n+1))`
-/

namespace A400241.P12400965092951905930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179927 (A238531 (n + 1)).toNat

end

end A400241.P12400965092951905930

/-!
# A400243: G.f. A(x) satisfies A(x) = A(x^2/(1 - x)^3) / (1 - x)^2, with A(0) = 1.

The programs for A400243, there is no canonical definition to state claims against.
-/

/-! ## A400243.P16330547732093189392

`A075054(A273900(n+2))`
-/

namespace A400243.P16330547732093189392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A273900 (n + 2)).toNat

end

end A400243.P16330547732093189392

/-!
# A400244: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^4) / (1 - x)^2, with A(0) = 1.

The programs for A400244, there is no canonical definition to state claims against.
-/

/-! ## A400244.P11143834191811935887

`A347831(A162985(n+1))`
-/

namespace A400244.P11143834191811935887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A162985 (n + 1)).toNat

end

end A400244.P11143834191811935887

/-!
# A400246: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^4) / (1 - x)^3, with A(0) = 1.

The programs for A400246, there is no canonical definition to state claims against.
-/

/-! ## A400246.P2001239159386455160

`filter[A132352(n+1), A174856(#)]`
-/

namespace A400246.P2001239159386455160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174856 (f1 j).toNat = 1) n)

end

end A400246.P2001239159386455160

/-!
# A400247: Number of labeled connected bipartite planar graphs with n vertices.

The programs for A400247, there is no canonical definition to state claims against.
-/

/-! ## A400247.P9226579496458963739

`A053873(A193036(n))`
-/

namespace A400247.P9226579496458963739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A193036 n).toNat

end

end A400247.P9226579496458963739

/-! ## A400247.P2131012807763918557

`filter[A147234(n+2), A121967(#)]`
-/

namespace A400247.P2131012807763918557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121967 (f1 j).toNat = 1) n)

end

end A400247.P2131012807763918557

/-!
# A400248: Dirichlet convolution of A085731 with A055615 (Dirichlet inverse of n), where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

The programs for A400248, the canonical program `A400248.P4403918635695598036` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400248 has offset 1).

The definition of A400248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400248.P4403918635695598036

`∑{d}[n+1, A055615((n+1)/#)*A085731(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400248

/-- `∑{d}[n+1, A055615((n+1)/#)*A085731(#)]` -/
def P4403918635695598036.Spec : Prop :=
  ∀ n, P4403918635695598036.a n = A400248 (n + 1)

theorem P4403918635695598036.correct : P4403918635695598036.Spec := by
  intro n
  simp only [A400248, Nat.add_sub_cancel]

end A400248

/-! ## A400248.P3468741725436706799

`A000010(n+1)*A359551(n+1)`
-/

namespace A400248.P3468741725436706799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A359551 (n + 1)

end

end A400248.P3468741725436706799

namespace A400248

/-- `A000010(n+1)*A359551(n+1)` -/
def P3468741725436706799.Spec : Prop :=
  ∀ n, P3468741725436706799.a n = A400248 (n + 1)

end A400248

/-! ## A400248.P4369620873815878945

`∑{d}[n+1, A023900(#)*A400249((n+1)/#)]`
-/

namespace A400248.P4369620873815878945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A400249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400248.P4369620873815878945

namespace A400248

/-- `∑{d}[n+1, A023900(#)*A400249((n+1)/#)]` -/
def P4369620873815878945.Spec : Prop :=
  ∀ n, P4369620873815878945.a n = A400248 (n + 1)

end A400248

/-!
# A400249: Möbius transform of A085731, where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

The programs for A400249, the canonical program `A400249.P16858583021599629` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400249 has offset 1).

The definition of A400249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400249.P16858583021599629

`∑{d}[n+1, A008683((n+1)/#)*A085731(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400249

/-- `∑{d}[n+1, A008683((n+1)/#)*A085731(#)]` -/
def P16858583021599629.Spec : Prop :=
  ∀ n, P16858583021599629.a n = A400249 (n + 1)

theorem P16858583021599629.correct : P16858583021599629.Spec := by
  intro n
  simp only [A400249, Nat.add_sub_cancel]

end A400249

/-! ## A400249.P16882487959043147310

`∑{d}[n+1, A000010((n+1)/#)*A400248(#)]`
-/

namespace A400249.P16882487959043147310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A400248 d

end

end A400249.P16882487959043147310

namespace A400249

/-- `∑{d}[n+1, A000010((n+1)/#)*A400248(#)]` -/
def P16882487959043147310.Spec : Prop :=
  ∀ n, P16882487959043147310.a n = A400249 (n + 1)

end A400249

/-!
# A400250: Square array read by falling antidiagonals: A(n,k) = valuation(A380459(n), prime(k)).

The programs for A400250, there is no canonical definition to state claims against.
-/

/-! ## A400250.P17470423835936198803

`val(A380459(col(n)+1), A000040(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400250.P17470423835936198803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380459 (SequenceMachineLib.triCol n + 1)).toNat (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat).toNat

end

end A400250.P17470423835936198803

/-! ## A400250.P16828235057078035328

`and(A089316(n), A123262(n))`
-/

namespace A400250.P16828235057078035328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089316 n) (A123262 n)

end

end A400250.P16828235057078035328

/-! ## A400250.P5487156857698744314

`and(A123262(n), A213301(n))`
-/

namespace A400250.P5487156857698744314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123262 n) (A213301 n)

end

end A400250.P5487156857698744314

/-! ## A400250.P15674125936238654961

`and(A046450(n+1), A123262(n))`
-/

namespace A400250.P15674125936238654961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046450 (n + 1)) (A123262 n)

end

end A400250.P15674125936238654961

/-! ## A400250.P6123037523589245457

`and(A086977(n+1), A123262(n))`
-/

namespace A400250.P6123037523589245457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086977 (n + 1)) (A123262 n)

end

end A400250.P6123037523589245457

/-!
# A400251: Numbers k for which A400249(k) is not zero, where A400249 is Möbius transform of A085731, with A085731(n) = gcd(n,n'), and n' the arithmetic derivative of n.

The programs for A400251, there is no canonical definition to state claims against.
-/

/-! ## A400251.P9660003150641303553

`∩[A002760(n+1), A094604(n)]`
-/

namespace A400251.P9660003150641303553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400251.P9660003150641303553

/-! ## A400251.P16975991103633891893

`∩[A094604(n), A266918(n+1)]`
-/

namespace A400251.P16975991103633891893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400251.P16975991103633891893

/-! ## A400251.P905483381086760067

`∩[A094604(n), A272266(n+1)]`
-/

namespace A400251.P905483381086760067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400251.P905483381086760067

/-! ## A400251.P6315855653977634880

`∩[A232012(n+1), A266918(n+1)]`
-/

namespace A400251.P6315855653977634880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400251.P6315855653977634880

/-! ## A400251.P150868780440578894

`A266918(A032555(n+1))`
-/

namespace A400251.P150868780440578894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (A032555 (n + 1)).toNat

end

end A400251.P150868780440578894

/-!
# A400252: The exponent of the highest power of 2 dividing A380459(n).

The programs for A400252, the canonical program `A400252.P11412868992192274508` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400252 has offset 1).

The definition of A400252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400252.P11412868992192274508

`∑{d}[n+1, A319684(#)*A359484((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400252

/-- `∑{d}[n+1, A319684(#)*A359484((n+1)/#)]` -/
def P11412868992192274508.Spec : Prop :=
  ∀ n, P11412868992192274508.a n = A400252 (n + 1)

theorem P11412868992192274508.correct : P11412868992192274508.Spec := by
  intro n
  simp only [A400252, Nat.add_sub_cancel]

end A400252

/-! ## A400252.P7857341662144586752

`∑{d}[n+1, A059841(#-1)*A349394((n+1)/#)]`
-/

namespace A400252.P7857341662144586752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400252.P7857341662144586752

namespace A400252

/-- `∑{d}[n+1, A059841(#-1)*A349394((n+1)/#)]` -/
def P7857341662144586752.Spec : Prop :=
  ∀ n, P7857341662144586752.a n = A400252 (n + 1)

end A400252

/-! ## A400252.P13701162925767523028

`val(A380459(n+1), 2)`
-/

namespace A400252.P13701162925767523028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380459 (n + 1)).toNat 2

end

end A400252.P13701162925767523028

namespace A400252

/-- `val(A380459(n+1), 2)` -/
def P13701162925767523028.Spec : Prop :=
  ∀ n, (P13701162925767523028.a n : ℤ) = A400252 (n + 1)

end A400252

/-! ## A400252.P7248786011567124928

`A400250(∑[n+1])`
-/

namespace A400252.P7248786011567124928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400252.P7248786011567124928

namespace A400252

/-- `A400250(∑[n+1])` -/
def P7248786011567124928.Spec : Prop :=
  ∀ n, P7248786011567124928.a n = A400252 (n + 1)

end A400252

/-!
# A400253: The exponent of the highest power of 3 dividing A380459(n).

The programs for A400253, there is no canonical definition to state claims against.
-/

/-! ## A400253.P6022000178692165552

`A007949(A380459(n+1))`
-/

namespace A400253.P6022000178692165552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A380459 (n + 1)).toNat

end

end A400253.P6022000178692165552

/-! ## A400253.P2149576972114902604

`val(A380459(n+1), 3)`
-/

namespace A400253.P2149576972114902604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380459 (n + 1)).toNat 3

end

end A400253.P2149576972114902604

/-! ## A400253.P2636092534258315480

`A400250(∑[n+2])`
-/

namespace A400253.P2636092534258315480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400253.P2636092534258315480

/-! ## A400253.P4236922807310586396

`A377433(A165552(n+1))`
-/

namespace A400253.P4236922807310586396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377433 (A165552 (n + 1)).toNat

end

end A400253.P4236922807310586396

/-! ## A400253.P8556272738123461741

`A274618(A115120(n+1))`
-/

namespace A400253.P8556272738123461741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274618 (A115120 (n + 1)).toNat

end

end A400253.P8556272738123461741

/-!
# A400254: Numbers whose k-th arithmetic derivative is zero for some k, but which themselves are not derivative of any number.

The programs for A400254, there is no canonical definition to state claims against.
-/

/-! ## A400254.P3342198713699279796

`filter[A098700(n+1), A328308(#)]`
-/

namespace A400254.P3342198713699279796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A400254.P3342198713699279796

/-! ## A400254.P5943027524040905247

`∩[A098700(n+1), A099308(n+1)]`
-/

namespace A400254.P5943027524040905247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400254.P5943027524040905247

/-! ## A400254.P1641041638503565420

`eq[A098699(n), A341999(n)]`
-/

namespace A400254.P1641041638503565420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400254.P1641041638503565420

/-! ## A400254.P4220769775527466483

`∩[A098700(n+1), A359544(n+1)]`
-/

namespace A400254.P4220769775527466483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400254.P4220769775527466483

/-! ## A400254.P2163217468635188312

`∩[A098700(n+1), A325362(n+1)]`
-/

namespace A400254.P2163217468635188312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400254.P2163217468635188312

/-!
# A400255: a(n) = k for those numbers [sequence A400254] whose k-th arithmetic derivative is zero for some k, but which themselves are not derivative of any number.

The programs for A400255, there is no canonical definition to state claims against.
-/

/-! ## A400255.P17369717437487127994

`A099307(A400254(n+1))`
-/

namespace A400255.P17369717437487127994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A400254 (n + 1)).toNat

end

end A400255.P17369717437487127994

/-!
# A400257: If n is in A400256, then a(n) is the number of steps to reach 1 when iterating A003415 (arithmetic derivative), otherwise a(n) = 0.

The programs for A400257, there is no canonical definition to state claims against.
-/

/-! ## A400257.P1103537795200526078

`A121549(A293231(n+1))`
-/

namespace A400257.P1103537795200526078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121549 (A293231 (n + 1)).toNat

end

end A400257.P1103537795200526078

/-!
# A400258: Number of nonzero digits in primorial base representation of n' [where n' stands for the arithmetic derivative of n, A003415].

The programs for A400258, the canonical program `A400258.P3398933769381967192` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400258 has offset 0).

The definition of A400258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400258.P3398933769381967192

`A267263(A003415(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400258

/-- `A267263(A003415(n))` -/
def P3398933769381967192.Spec : Prop :=
  ∀ n, P3398933769381967192.a n = A400258 n

theorem P3398933769381967192.correct : P3398933769381967192.Spec := by
  intro n
  simp only [A400258]

end A400258

/-! ## A400258.P2189206012240402207

`A001221(A327859(n))`
-/

namespace A400258.P2189206012240402207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327859 n).toNat

end

end A400258.P2189206012240402207

namespace A400258

/-- `A001221(A327859(n))` -/
def P2189206012240402207.Spec : Prop :=
  ∀ n, P2189206012240402207.a n = A400258 n

end A400258

/-! ## A400258.P16218595702328900250

`∑{e}[A400151(n), #]`
-/

namespace A400258.P16218595702328900250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400258.P16218595702328900250

namespace A400258

/-- `∑{e}[A400151(n), #]` -/
def P16218595702328900250.Spec : Prop :=
  ∀ n, (P16218595702328900250.a n : ℤ) = A400258 n

end A400258

/-! ## A400258.P1173998332085581937

`A001221(A400151(n))`
-/

namespace A400258.P1173998332085581937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A400151 n).toNat

end

end A400258.P1173998332085581937

namespace A400258

/-- `A001221(A400151(n))` -/
def P1173998332085581937.Spec : Prop :=
  ∀ n, P1173998332085581937.a n = A400258 n

end A400258

/-! ## A400258.P16272560138391024327

`A001221(A276086(A003415(n))²)`
-/

namespace A400258.P16272560138391024327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 (A003415 n).toNat ^ 2).toNat

end

end A400258.P16272560138391024327

namespace A400258

/-- `A001221(A276086(A003415(n))²)` -/
def P16272560138391024327.Spec : Prop :=
  ∀ n, P16272560138391024327.a n = A400258 n

end A400258

/-!
# A400259: Sum of digits when n' [the arithmetic derivative of n] is written in primorial base (A049345).

The programs for A400259, the canonical program `A400259.P12374509986453713779` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400259 has offset 0).

The definition of A400259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400259.P12374509986453713779

`A276150(A003415(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400259

/-- `A276150(A003415(n))` -/
def P12374509986453713779.Spec : Prop :=
  ∀ n, P12374509986453713779.a n = A400259 n

theorem P12374509986453713779.correct : P12374509986453713779.Spec := by
  intro n
  simp only [A400259]

end A400259

/-! ## A400259.P17793413255831433912

`A001222(A327859(n))`
-/

namespace A400259.P17793413255831433912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327859 n).toNat

end

end A400259.P17793413255831433912

namespace A400259

/-- `A001222(A327859(n))` -/
def P17793413255831433912.Spec : Prop :=
  ∀ n, P17793413255831433912.a n = A400259 n

end A400259

/-! ## A400259.P10272075257335596598

`∑{e}[A327859(n), #]`
-/

namespace A400259.P10272075257335596598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400259.P10272075257335596598

namespace A400259

/-- `∑{e}[A327859(n), #]` -/
def P10272075257335596598.Spec : Prop :=
  ∀ n, (P10272075257335596598.a n : ℤ) = A400259 n

end A400259

/-! ## A400259.P10277655168269274619

`A285813(A019449(n+1))`
-/

namespace A400259.P10277655168269274619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285813 (A019449 (n + 1)).toNat

end

end A400259.P10277655168269274619

namespace A400259

/-- `A285813(A019449(n+1))` -/
def P10277655168269274619.Spec : Prop :=
  ∀ n, P10277655168269274619.a n = A400259 n

end A400259

/-! ## A400259.P2520026126347519895

`A321271(A247461(n+1))`
-/

namespace A400259.P2520026126347519895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (A247461 (n + 1)).toNat

end

end A400259.P2520026126347519895

namespace A400259

/-- `A321271(A247461(n+1))` -/
def P2520026126347519895.Spec : Prop :=
  ∀ n, P2520026126347519895.a n = A400259 n

end A400259

/-!
# A400260: Square array read by falling antidiagonals: A(n,k) = the (k+1)-th least significant digit of arithmetic derivative of n when it is read in primorial base, A049345.

The programs for A400260, there is no canonical definition to state claims against.
-/

/-! ## A400260.P9972269683842690862

`val(A327859(col(n)), A000040(1+row(n)-col(n)))`
-/

namespace A400260.P9972269683842690862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 (SequenceMachineLib.triCol n)).toNat (A000040 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat).toNat

end

end A400260.P9972269683842690862

/-! ## A400260.P17141153802713569172

`and(A066772(n), A193631(n))`
-/

namespace A400260.P17141153802713569172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066772 n) (A193631 n)

end

end A400260.P17141153802713569172

/-! ## A400260.P3608472178681391258

`A351125(n+1)%A297770(n+1)`
-/

namespace A400260.P3608472178681391258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351125 (n + 1)) (A297770 (n + 1))

end

end A400260.P3608472178681391258

/-! ## A400260.P8629567174553854023

`and(A016483(n), A193604(n))`
-/

namespace A400260.P8629567174553854023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016483 n) (A193604 n)

end

end A400260.P8629567174553854023

/-! ## A400260.P879953776755570585

`and(A193604(n), A240871(n))`
-/

namespace A400260.P879953776755570585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193604 n) (A240871 n)

end

end A400260.P879953776755570585

/-!
# A400261: The most significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400261, there is no canonical definition to state claims against.
-/

/-! ## A400261.P7804011834020518126

`A067029(A400153(n))`
-/

namespace A400261.P7804011834020518126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A400153 n).toNat

end

end A400261.P7804011834020518126

/-! ## A400261.P9190088066035420817

`A071178(A327859(n))`
-/

namespace A400261.P9190088066035420817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A327859 n).toNat

end

end A400261.P9190088066035420817

/-! ## A400261.P9072982382707358278

`∑{e}[A400153(n), #]`
-/

namespace A400261.P9072982382707358278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400261.P9072982382707358278

/-! ## A400261.P11486411712124574687

`A001222(A400153(n))`
-/

namespace A400261.P11486411712124574687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A400153 n).toNat

end

end A400261.P11486411712124574687

/-! ## A400261.P13244224281663666464

`A071178(A400153(2*n-n))`
-/

namespace A400261.P13244224281663666464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A400153 (2 * n - n)).toNat

end

end A400261.P13244224281663666464

/-!
# A400262: The length of primorial base (A049345) representation of the arithmetic derivative of n; a(0) = a(1) = 0 by convention.

The programs for A400262, the canonical program `A400262.P7712911240097354369` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400262 has offset 0).

The definition of A400262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A235224, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400262.P7712911240097354369

`A235224(A003415(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A400262

/-- `A235224(A003415(n))` -/
def P7712911240097354369.Spec : Prop :=
  ∀ n, P7712911240097354369.a n = A400262 n

theorem P7712911240097354369.correct : P7712911240097354369.Spec := by
  intro n
  simp only [A400262]

end A400262

/-! ## A400262.P3622649456985811520

`A055396(A400153(n))`
-/

namespace A400262.P3622649456985811520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A400153 n).toNat

end

end A400262.P3622649456985811520

namespace A400262

/-- `A055396(A400153(n))` -/
def P3622649456985811520.Spec : Prop :=
  ∀ n, P3622649456985811520.a n = A400262 n

end A400262

/-! ## A400262.P18291847199638956454

`A061395(A327859(n))`
-/

namespace A400262.P18291847199638956454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A327859 n).toNat

end

end A400262.P18291847199638956454

namespace A400262

/-- `A061395(A327859(n))` -/
def P18291847199638956454.Spec : Prop :=
  ∀ n, P18291847199638956454.a n = A400262 n

end A400262

/-! ## A400262.P7188741534453293744

`A061395(A400151(n))`
-/

namespace A400262.P7188741534453293744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A400151 n).toNat

end

end A400262.P7188741534453293744

namespace A400262

/-- `A061395(A400151(n))` -/
def P7188741534453293744.Spec : Prop :=
  ∀ n, P7188741534453293744.a n = A400262 n

end A400262

/-! ## A400262.P15118171812117052714

`A332999(A358904(n))`
-/

namespace A400262.P15118171812117052714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332999 (A358904 n).toNat

end

end A400262.P15118171812117052714

namespace A400262

/-- `A332999(A358904(n))` -/
def P15118171812117052714.Spec : Prop :=
  ∀ n, P15118171812117052714.a n = A400262 n

end A400262

/-!
# A400263: The second least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400263, there is no canonical definition to state claims against.
-/

/-! ## A400263.P12527445212695226061

`A007949(A327859(n))`
-/

namespace A400263.P12527445212695226061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A327859 n).toNat

end

end A400263.P12527445212695226061

/-! ## A400263.P3996016890791324385

`val(A327859(n), 3)`
-/

namespace A400263.P3996016890791324385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 3

end

end A400263.P3996016890791324385

/-! ## A400263.P15904474085804053784

`A131555(A003415(n))`
-/

namespace A400263.P15904474085804053784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A003415 n).toNat

end

end A400263.P15904474085804053784

/-! ## A400263.P5100016934214622127

`A400260(∑[n+1]+n)`
-/

namespace A400263.P5100016934214622127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400260 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A400263.P5100016934214622127

/-!
# A400264: Nonprime numbers k such that A400833(k) has no divisors of the form p^p, for any prime p.

The programs for A400264, there is no canonical definition to state claims against.
-/

/-! ## A400264.P14518004842814570053

`filter[A353502(n+1), A270742(#)]`
-/

namespace A400264.P14518004842814570053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A270742 (f1 j).toNat = 1) n)

end

end A400264.P14518004842814570053

/-!
# A400265: The third least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400265, there is no canonical definition to state claims against.
-/

/-! ## A400265.P327864196285606398

`A112765(A327859(n))`
-/

namespace A400265.P327864196285606398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A327859 n).toNat

end

end A400265.P327864196285606398

/-! ## A400265.P5599091320611815999

`val(A327859(n), 5)`
-/

namespace A400265.P5599091320611815999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 5

end

end A400265.P5599091320611815999

/-! ## A400265.P2130597418184895159

`A400260(∑[n+3])`
-/

namespace A400265.P2130597418184895159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400265.P2130597418184895159

/-! ## A400265.P10022435393563690067

`A046080(A327859(n))`
-/

namespace A400265.P10022435393563690067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A327859 n).toNat

end

end A400265.P10022435393563690067

/-!
# A400266: a(n) is the least k>=0 such that 1+(prime(n)#/prime(k)#) is a multiple of prime(1+n), or -1 if no such k exists, where prime(n)# = A002110(n) is the n-th primorial number.

The programs for A400266, there is no canonical definition to state claims against.
-/

/-! ## A400266.P2896914500513452646

`A400837(n%A167206(n))`
-/

namespace A400266.P2896914500513452646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400837 (Int.tmod (n : ℤ) (A167206 n)).toNat

end

end A400266.P2896914500513452646

/-! ## A400266.P4592669518091096505

`A400837(n)%A077765(n)`
-/

namespace A400266.P4592669518091096505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400837 n) (A077765 n)

end

end A400266.P4592669518091096505

/-!
# A400267: The fourth least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

The programs for A400267, there is no canonical definition to state claims against.
-/

/-! ## A400267.P15255632653224418353

`A214411(A327859(n))`
-/

namespace A400267.P15255632653224418353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A327859 n).toNat

end

end A400267.P15255632653224418353

/-! ## A400267.P8276355977623304957

`val(A327859(n), 7)`
-/

namespace A400267.P8276355977623304957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 7

end

end A400267.P8276355977623304957

/-! ## A400267.P15822788143900678534

`A214411(A400153(n))`
-/

namespace A400267.P15822788143900678534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A400153 n).toNat

end

end A400267.P15822788143900678534

/-! ## A400267.P2886724815267935141

`A386537(A185620(n+1))`
-/

namespace A400267.P2886724815267935141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386537 (A185620 (n + 1)).toNat

end

end A400267.P2886724815267935141

/-! ## A400267.P17364103430583673368

`A005088(A327859(n))`
-/

namespace A400267.P17364103430583673368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A327859 n).toNat

end

end A400267.P17364103430583673368

/-!
# A400276: Numbers k such that A046660(k) >= A056169(k).

The programs for A400276, there is no canonical definition to state claims against.
-/

/-! ## A400276.P842117832067371404

`filter[A212165(n+1), A174889(#)]`
-/

namespace A400276.P842117832067371404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A400276.P842117832067371404

/-! ## A400276.P2511963887651639660

`filter[A347457(n+1), A087049(#)]`
-/

namespace A400276.P2511963887651639660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A400276.P2511963887651639660

/-! ## A400276.P16517746995724283079

`filter[A344586(n+1), A174889(#)]`
-/

namespace A400276.P16517746995724283079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A400276.P16517746995724283079

/-! ## A400276.P12875987618633883558

`∩[A162966(n+1), A347457(n+1)]`
-/

namespace A400276.P12875987618633883558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400276.P12875987618633883558

/-!
# A400277: a(n) = phi(n)^2 mod (n+1), where phi is Euler's totient function (A000010).

The programs for A400277, the canonical program `A400277.P8291942098813751229` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400277 has offset 1).

The definition of A400277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²%(n+2)` (program `A400277.P8291942098813751229`, by `A400277.P8291942098813751229.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400277.P5444544342813260749

`A127473(n+1)%(n+2)`
-/

namespace A400277.P5444544342813260749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127473 (n + 1)) (n + 2 : ℤ)

end

end A400277.P5444544342813260749

namespace A400277

/-- `A127473(n+1)%(n+2)` -/
def P5444544342813260749.Spec : Prop :=
  ∀ n, P5444544342813260749.a n = A400277 (n + 1)

end A400277

/-! ## A400277.P8291942098813751229

`A000010(n+1)²%(n+2)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A400277

/-- `A000010(n+1)²%(n+2)` -/
def P8291942098813751229.Spec : Prop :=
  ∀ n, P8291942098813751229.a n = A400277 (n + 1)

theorem P8291942098813751229.correct : P8291942098813751229.Spec := by
  intro n
  simp only [A400277, Nat.add_sub_cancel]

end A400277

/-!
# A400280: a(n) is the maximum value of row n of A399982.

The programs for A400280, there is no canonical definition to state claims against.
-/

/-! ## A400280.P15629148158887041175

`A399982(∑[n]+1)`
-/

namespace A400280.P15629148158887041175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400280.P15629148158887041175

/-! ## A400280.P8570533538831945897

`record[A399982(n+1)]`
-/

namespace A400280.P8570533538831945897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400280.P8570533538831945897

/-!
# A400281: Number of self-conjugate skew partitions of n whose diagrams have no empty rows and columns.

The programs for A400281, there is no canonical definition to state claims against.
-/

/-! ## A400281.P16092472858685564778

`A367410(A081283(n))`
-/

namespace A400281.P16092472858685564778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367410 (A081283 n).toNat

end

end A400281.P16092472858685564778

/-! ## A400281.P16557524742294177935

`A122282(A056514(n+1))`
-/

namespace A400281.P16557524742294177935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A056514 (n + 1)).toNat

end

end A400281.P16557524742294177935

/-! ## A400281.P3722075391164737054

`A111651(A394723(n+1))`
-/

namespace A400281.P3722075391164737054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A394723 (n + 1)).toNat

end

end A400281.P3722075391164737054

/-! ## A400281.P1515786021435689639

`filter[A290821(n+1), A039966(#)]`
-/

namespace A400281.P1515786021435689639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A400281.P1515786021435689639

/-!
# A400284: a(n) = [q^n] J_1(q), where J_1(q) is the q-series of Flajolet and Sedgewick.

The programs for A400284, there is no canonical definition to state claims against.
-/

/-! ## A400284.P9382617654913869662

`A301735(n)-A400285(n)`
-/

namespace A400284.P9382617654913869662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301735 n - A400285 n

end

end A400284.P9382617654913869662

/-!
# A400285: a(n) = [q^n] (J0(q) - J1(q)), where J0 and J1 are q-series defined by Flajolet and Sedgewick.

The programs for A400285, there is no canonical definition to state claims against.
-/

/-! ## A400285.P4504183424320373655

`A301735(n)-A400284(n)`
-/

namespace A400285.P4504183424320373655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301735 n - A400284 n

end

end A400285.P4504183424320373655

/-!
# A400286: a(n) is the maximum cardinality of an antichain in {sigma(d) : d divides n}, ordered by divisibility.

The programs for A400286, there is no canonical definition to state claims against.
-/

/-! ## A400286.P5120685411748847788

`A118458(A340080(n+1))`
-/

namespace A400286.P5120685411748847788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A340080 (n + 1)).toNat

end

end A400286.P5120685411748847788

/-! ## A400286.P17154453196046652049

`A230643(A105606(n+1))`
-/

namespace A400286.P17154453196046652049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A105606 (n + 1)).toNat

end

end A400286.P17154453196046652049

/-! ## A400286.P8074163959345939045

`A124765(A284839(n+1))`
-/

namespace A400286.P8074163959345939045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A284839 (n + 1)).toNat

end

end A400286.P8074163959345939045

/-! ## A400286.P3224656890108025613

`A308972(A160793(n+1))`
-/

namespace A400286.P3224656890108025613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308972 (A160793 (n + 1)).toNat

end

end A400286.P3224656890108025613

/-! ## A400286.P8157053225911025205

`A337198(A360752(n+1))`
-/

namespace A400286.P8157053225911025205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337198 (A360752 (n + 1)).toNat

end

end A400286.P8157053225911025205

/-!
# A400298: Numbers that are products of exactly two positive decimal repunits, allowing equal factors and the factor 1.

The programs for A400298, there is no canonical definition to state claims against.
-/

/-! ## A400298.P4911351916768340100

`∩[A071158(n+1), A308365(n+1)]`
-/

namespace A400298.P4911351916768340100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P4911351916768340100

/-! ## A400298.P3243628205793534871

`∩[A071159(n+1), A308365(n+1)]`
-/

namespace A400298.P3243628205793534871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P3243628205793534871

/-! ## A400298.P14087992643372412063

`∩[A071158(n+1), A395936(n+1)]`
-/

namespace A400298.P14087992643372412063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P14087992643372412063

/-! ## A400298.P5433743639202572162

`∩[A071159(n+1), A395936(n+1)]`
-/

namespace A400298.P5433743639202572162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P5433743639202572162

/-! ## A400298.P3735906765196662829

`∩[A308365(n+1), A395936(n+1)]`
-/

namespace A400298.P3735906765196662829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400298.P3735906765196662829

