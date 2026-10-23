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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
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
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099700: Consider the family of multigraphs enriched by the species of simple graphs. Sequence gives number of those multigraphs with n labeled edges.

The programs for A099700, there is no canonical definition to state claims against.
-/

/-! ## A099700.P15091865333916662391

`floor(sqrt(A061978(2^n)))`
-/

namespace A099700.P15091865333916662391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A061978 (2 ^ n))

end

end A099700.P15091865333916662391

/-!
# A099701: Consider the family of multigraphs enriched by the species of simple graphs. Sequence gives number of those multigraphs with n loops and edges.

The programs for A099701, there is no canonical definition to state claims against.
-/

/-! ## A099701.P2573265163141010433

`A138302(A377541(n))`
-/

namespace A099701.P2573265163141010433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (A377541 n).toNat

end

end A099701.P2573265163141010433

/-!
# A099703: Consider the family of multigraphs enriched by the species of simple graphs. Sequence gives number of those multigraphs with n arcs.

The programs for A099703, there is no canonical definition to state claims against.
-/

/-! ## A099703.P11175477645142429183

`A049988((2*n)^n-2^n+1)`
-/

namespace A099703.P11175477645142429183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (((2 * n) ^ n : ℤ) - (2 ^ n : ℤ) + 1).toNat

end

end A099703.P11175477645142429183

/-!
# A099708: Consider the family of multigraphs enriched by the species of endofunctions. Sequence gives number of those multigraphs with n labeled edges.

The programs for A099708, there is no canonical definition to state claims against.
-/

/-! ## A099708.P2884610671287413104

`A062298(n^(n+1)+2)`
-/

namespace A099708.P2884610671287413104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n ^ (n + 1) + 2)

end

end A099708.P2884610671287413104

/-!
# A099709: Consider the family of multigraphs enriched by the species of endofunctions. Sequence gives number of those multigraphs with n loops and edges.

The programs for A099709, there is no canonical definition to state claims against.
-/

/-! ## A099709.P13869486392071194773

`A003277(A208127(∑[n]))`
-/

namespace A099709.P13869486392071194773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (A208127 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A099709.P13869486392071194773

/-!
# A099710: Consider the family of directed multigraphs enriched by the species of endofunctions. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A099710, there is no canonical definition to state claims against.
-/

/-! ## A099710.P3922336315019271882

`A325244(A088003(n+1))+A218031(n)`
-/

namespace A099710.P3922336315019271882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325244 (A088003 (n + 1)).toNat + A218031 n

end

end A099710.P3922336315019271882

/-!
# A099711: Consider the family of multigraphs enriched by the species of endofunctions. Sequence gives number of those multigraphs with n arcs.

The programs for A099711, there is no canonical definition to state claims against.
-/

/-! ## A099711.P13593967077438390103

`A054785(A336674(n))-(2-char[2^n-1])`
-/

namespace A099711.P13593967077438390103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (A336674 n).toNat - (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A099711.P13593967077438390103

/-!
# A099712: Consider the family of multigraphs enriched by the species of arborescences. Sequence gives number of those multigraphs with n labeled edges.

The programs for A099712, there is no canonical definition to state claims against.
-/

/-! ## A099712.P5927434656619707025

`A299634((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A099712.P5927434656619707025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299634 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A099712.P5927434656619707025

/-!
# A099713: Consider the family of multigraphs enriched by the species of arborescences. Sequence gives number of those multigraphs with n loops and edges.

The programs for A099713, there is no canonical definition to state claims against.
-/

/-! ## A099713.P3639599025963604790

`A053224(∑[A006902(n)])`
-/

namespace A099713.P3639599025963604790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099713.P3639599025963604790

/-!
# A099714: Consider the family of directed multigraphs enriched by the species of arborescences. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A099714, there is no canonical definition to state claims against.
-/

/-! ## A099714.P8004979691801203919

`A379847(n)-A230425(A379847(n))`
-/

namespace A099714.P8004979691801203919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379847 n - A230425 (A379847 n).toNat

end

end A099714.P8004979691801203919

/-!
# A099715: Consider the family of multigraphs enriched by the species of arborescences. Sequence gives number of those multigraphs with n arcs.

The programs for A099715, there is no canonical definition to state claims against.
-/

/-! ## A099715.P15514334235310666719

`A008619(14*(n-1)*a(n-1))` with `a(0)=1`
-/

namespace A099715.P15514334235310666719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 (14 * (((n : ℤ) - 1) * a (n - 1))).toNat

end

end A099715.P15514334235310666719

/-!
# A099716: Consider the family of multigraphs enriched by the species of trees. Sequence gives number of those multigraphs with n labeled edges.

The programs for A099716, there is no canonical definition to state claims against.
-/

/-! ## A099716.P17889574210284660578

`A321525(A101483(n))`
-/

namespace A099716.P17889574210284660578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321525 (A101483 n).toNat

end

end A099716.P17889574210284660578

/-! ## A099716.P5066170049253541590

`A321525(A121412(∑[n]))`
-/

namespace A099716.P5066170049253541590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321525 (A121412 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A099716.P5066170049253541590

/-!
# A099717: Consider the family of multigraphs enriched by the species of trees. Sequence gives number of those multigraphs with n loops and edges.

The programs for A099717, there is no canonical definition to state claims against.
-/

/-! ## A099717.P16334906658185178414

`A068322(3*A025167(n))`
-/

namespace A099717.P16334906658185178414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (3 * A025167 n).toNat

end

end A099717.P16334906658185178414

/-!
# A099718: Consider the family of directed multigraphs enriched by the species of trees. Sequence gives number of those multigraphs with n labeled loops and edges.

The programs for A099718, there is no canonical definition to state claims against.
-/

/-! ## A099718.P8325475683199044655

`A380663(n)-A194600(A075834(n))`
-/

namespace A099718.P8325475683199044655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380663 n - A194600 (A075834 n).toNat

end

end A099718.P8325475683199044655

/-!
# A099719: Consider the family of multigraphs enriched by the species of trees. Sequence gives number of those multigraphs with n arcs.

The programs for A099719, there is no canonical definition to state claims against.
-/

/-! ## A099719.P162146460815740743

`A130091(A348875(n))-n`
-/

namespace A099719.P162146460815740743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A348875 n).toNat - (n : ℤ)

end

end A099719.P162146460815740743

/-!
# A099721: a(n) = n^2*(2*n+1).

The programs for A099721, the canonical program `A099721.P13421266014638133477` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099721 has offset 0).

The definition of A099721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(2*n+1)` (program `A099721.P13421266014638133477`, by `A099721.P13421266014638133477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099721.P13421266014638133477

`n²*(2*n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099721

/-- `n²*(2*n+1)` -/
def P13421266014638133477.Spec : Prop :=
  ∀ n, (P13421266014638133477.a n : ℤ) = A099721 n

theorem P13421266014638133477.correct : P13421266014638133477.Spec := by
  intro n
  simp only [A099721]

end A099721

/-! ## A099721.P14337348981053122467

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=20, a(3)=63`
-/

namespace A099721.P14337348981053122467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 20, 63] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A099721.P14337348981053122467

namespace A099721

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14337348981053122467.Spec : Prop :=
  ∀ n, P14337348981053122467.a n = A099721 n

theorem P14337348981053122467.correct : P14337348981053122467.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A099721, Nat.add_sub_cancel, A099721.P14337348981053122467.a, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A099721, Nat.add_sub_cancel, A099721.P14337348981053122467.a, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099721

/-! ## A099721.P13789761296704685631

`A005902(n)-A000447(n+1)`
-/

namespace A099721.P13789761296704685631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n - A000447 (n + 1)

end

end A099721.P13789761296704685631

namespace A099721

/-- `A005902(n)-A000447(n+1)` -/
def P13789761296704685631.Spec : Prop :=
  ∀ n, P13789761296704685631.a n = A099721 n

end A099721

/-! ## A099721.P13442182064228734008

`lcm(n², Δ[n²])`
-/

namespace A099721.P13442182064228734008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099721.P13442182064228734008

namespace A099721

/-- `lcm(n², Δ[n²])` -/
def P13442182064228734008.Spec : Prop :=
  ∀ n, (P13442182064228734008.a n : ℤ) = A099721 n

end A099721

/-! ## A099721.P16181566692398962950

`(n*record[sqrt(xor(1, n))])²`
-/

namespace A099721.P16181566692398962950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A099721.P16181566692398962950

namespace A099721

/-- `(n*record[sqrt(xor(1, n))])²` -/
def P16181566692398962950.Spec : Prop :=
  ∀ n, P16181566692398962950.a n = (A099721 n : ℝ)

end A099721

/-! ## A099721.P1579077244955513808

`∑[n]*record[lcm(2, n)]+n`
-/

namespace A099721.P1579077244955513808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

end

end A099721.P1579077244955513808

namespace A099721

/-- `∑[n]*record[lcm(2, n)]+n` -/
def P1579077244955513808.Spec : Prop :=
  ∀ n, (P1579077244955513808.a n : ℤ) = A099721 n

end A099721

/-! ## A099721.P8532228936179941995

`abs(n²*xor(2*n, -1))`
-/

namespace A099721.P8532228936179941995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * Int.xor (2 * n : ℤ) (-1)|

end

end A099721.P8532228936179941995

namespace A099721

/-- `abs(n²*xor(2*n, -1))` -/
def P8532228936179941995.Spec : Prop :=
  ∀ n, P8532228936179941995.a n = A099721 n

end A099721

/-! ## A099721.P2122468319336149311

`-(n²*xor(2*n, -1))`
-/

namespace A099721.P2122468319336149311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * Int.xor (2 * n : ℤ) (-1))

end

end A099721.P2122468319336149311

namespace A099721

/-- `-(n²*xor(2*n, -1))` -/
def P2122468319336149311.Spec : Prop :=
  ∀ n, P2122468319336149311.a n = A099721 n

end A099721

/-! ## A099721.P17722666229835708873

`floor((n+1+n)/acot(n²))`
-/

namespace A099721.P17722666229835708873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 + n : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ)⌋

end

end A099721.P17722666229835708873

namespace A099721

/-- `floor((n+1+n)/acot(n²))` -/
def P17722666229835708873.Spec : Prop :=
  ∀ n, P17722666229835708873.a n = A099721 n

end A099721

/-! ## A099721.P1434336751611176516

`n²/tan(acot(n+1+n))`
-/

namespace A099721.P1434336751611176516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 + n : ℝ))

end

end A099721.P1434336751611176516

namespace A099721

/-- `n²/tan(acot(n+1+n))` -/
def P1434336751611176516.Spec : Prop :=
  ∀ n, P1434336751611176516.a n = (A099721 n : ℝ)

end A099721

/-! ## A099721.P14078859115493864275

`n²/cot(atan(n+1+n))`
-/

namespace A099721.P14078859115493864275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.cot (Real.arctan (n + 1 + n : ℝ))

end

end A099721.P14078859115493864275

namespace A099721

/-- `n²/cot(atan(n+1+n))` -/
def P14078859115493864275.Spec : Prop :=
  ∀ n, P14078859115493864275.a n = (A099721 n : ℝ)

end A099721

/-! ## A099721.P14432604942224604184

`(n+1)*C(2*n, 2)+n`
-/

namespace A099721.P14432604942224604184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (2 * n) 2 + n

end

end A099721.P14432604942224604184

namespace A099721

/-- `(n+1)*C(2*n, 2)+n` -/
def P14432604942224604184.Spec : Prop :=
  ∀ n, (P14432604942224604184.a n : ℤ) = A099721 n

end A099721

/-! ## A099721.P8897412516803058071

`round(n/acot(n*(2*n+1)))`
-/

namespace A099721.P8897412516803058071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n * (2 * n + 1) : ℝ))

end

end A099721.P8897412516803058071

namespace A099721

/-- `round(n/acot(n*(2*n+1)))` -/
def P8897412516803058071.Spec : Prop :=
  ∀ n, P8897412516803058071.a n = A099721 n

end A099721

/-! ## A099721.P9137554459260114919

`(2*n)²*or(1, 2*n)/4`
-/

namespace A099721.P9137554459260114919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 * Nat.lor 1 (2 * n) : ℚ) / 4

end

end A099721.P9137554459260114919

namespace A099721

/-- `(2*n)²*or(1, 2*n)/4` -/
def P9137554459260114919.Spec : Prop :=
  ∀ n, P9137554459260114919.a n = (A099721 n : ℚ)

end A099721

/-! ## A099721.P1291270333340565724

`(2*n)²*xor(1, 2*n)/4`
-/

namespace A099721.P1291270333340565724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 * Nat.xor 1 (2 * n) : ℚ) / 4

end

end A099721.P1291270333340565724

namespace A099721

/-- `(2*n)²*xor(1, 2*n)/4` -/
def P1291270333340565724.Spec : Prop :=
  ∀ n, P1291270333340565724.a n = (A099721 n : ℚ)

end A099721

/-! ## A099721.P14131683980206770956

`floor(n*∑[a(n-1)+4])` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A099721.P14131683980206770956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099721.P14131683980206770956

namespace A099721

/-- `floor(n*∑[a(n-1)+4])` -/
def P14131683980206770956.Spec : Prop :=
  ∀ n, (P14131683980206770956.a n : ℤ) = A099721 n

end A099721

/-! ## A099721.P9999947366184407473

`n-n*∑[a(n-1)-4]` with `a(0)=1`
-/

namespace A099721.P9999947366184407473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099721.P9999947366184407473

namespace A099721

/-- `n-n*∑[a(n-1)-4]` -/
def P9999947366184407473.Spec : Prop :=
  ∀ n, P9999947366184407473.a n = A099721 n

end A099721

/-! ## A099721.P8954524944293655585

`lcm(2*n+1, n*2*n)/2`
-/

namespace A099721.P8954524944293655585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (n * (2 * n)) : ℚ) / 2

end

end A099721.P8954524944293655585

namespace A099721

/-- `lcm(2*n+1, n*2*n)/2` -/
def P8954524944293655585.Spec : Prop :=
  ∀ n, P8954524944293655585.a n = (A099721 n : ℚ)

end A099721

/-! ## A099721.P1293145189060106670

`∑[a(n-1)+2]²-n^4` with `a(0)=0`
-/

namespace A099721.P1293145189060106670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n ^ 4 : ℤ)

end

end A099721.P1293145189060106670

namespace A099721

/-- `∑[a(n-1)+2]²-n^4` -/
def P1293145189060106670.Spec : Prop :=
  ∀ n, P1293145189060106670.a n = A099721 n

end A099721

/-! ## A099721.P4904594468342752539

`A190705(n)/6`
-/

namespace A099721.P4904594468342752539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190705 n : ℚ) / 6

end

end A099721.P4904594468342752539

namespace A099721

/-- `A190705(n)/6` -/
def P4904594468342752539.Spec : Prop :=
  ∀ n, P4904594468342752539.a n = (A099721 n : ℚ)

end A099721

/-!
# A099722: From a 2-dimensional walk involving primes.

The programs for A099722, there is no canonical definition to state claims against.
-/

/-! ## A099722.P11955754921520790189

`A096454(∑[A256117(n)!])`
-/

namespace A099722.P11955754921520790189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A256117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099722.P11955754921520790189

/-! ## A099722.P14697996895386074898

`A000040(A113722((n+1)²)+2)`
-/

namespace A099722.P14697996895386074898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113722 ((n + 1) ^ 2) + 2).toNat

end

end A099722.P14697996895386074898

/-! ## A099722.P989783993789676845

`∩[A096454(n+1), A319824(n+1)]`
-/

namespace A099722.P989783993789676845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099722.P989783993789676845

/-!
# A099725: a(n) is the number of 1's in the period of the continued fraction of the square root of the n-th nonsquare integer.

The programs for A099725, there is no canonical definition to state claims against.
-/

/-! ## A099725.P1236321333800131973

`and(A025422(A065053(n+1)), A082375(n))`
-/

namespace A099725.P1236321333800131973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025422 (A065053 (n + 1)).toNat) (A082375 n)

end

end A099725.P1236321333800131973

/-! ## A099725.P2615127177450823266

`and(A022332(n+1), A025422(A065053(n+1)))`
-/

namespace A099725.P2615127177450823266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022332 (n + 1)) (A025422 (A065053 (n + 1)).toNat)

end

end A099725.P2615127177450823266

/-! ## A099725.P2749519667637826590

`and(A007814(A078740(n+1)), A127586(n+1))`
-/

namespace A099725.P2749519667637826590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007814 (A078740 (n + 1)).toNat) (A127586 (n + 1))

end

end A099725.P2749519667637826590

/-! ## A099725.P5446874048335060220

`A070108(A345072(3*n+5)-A240828(n+1))`
-/

namespace A099725.P5446874048335060220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070108 (A345072 (3 * n + 5) - A240828 (n + 1)).toNat

end

end A099725.P5446874048335060220

/-! ## A099725.P13763506052668752338

`A065890(A286868(2*n+3))%A013943(n+1)`
-/

namespace A099725.P13763506052668752338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065890 (A286868 (2 * n + 3)).toNat) (A013943 (n + 1))

end

end A099725.P13763506052668752338

/-!
# A099726: Sum of remainders of the n-th prime mod k, for k = 1,2,3,...,n.

The programs for A099726, there is no canonical definition to state claims against.
-/

/-! ## A099726.P9871887997271103351

`∑{d}[A000079(n), (A001748(n+1)/3)%A000005(#)]`
-/

namespace A099726.P9871887997271103351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (A000005 d)

end

end A099726.P9871887997271103351

/-!
# A099729: a(n) = a(n-1)^2 + a(floor(n/2))^2; a(0) = 1.

The programs for A099729, the canonical program `A099729.P14057201000010935747` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099729 has offset 0).

The definition of A099729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(floor(n/2))²` (program `A099729.P14057201000010935747`, by `A099729.P14057201000010935747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099729.P14057201000010935747

`a(n-1)²+a(floor(n/2))²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099729

/-- `a(n-1)²+a(floor(n/2))²` -/
def P14057201000010935747.Spec : Prop :=
  ∀ n, (P14057201000010935747.a n : ℤ) = A099729 n

theorem P14057201000010935747.correct : P14057201000010935747.Spec := by
  intro n
  simp only [A099729]

end A099729

/-! ## A099729.P9157396672467883205

`abs(a(n-1))²+a(A004526(n))²` with `a(0)=1`
-/

namespace A099729.P9157396672467883205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + a (A004526 n).toNat ^ 2

end

end A099729.P9157396672467883205

namespace A099729

/-- `abs(a(n-1))²+a(A004526(n))²` -/
def P9157396672467883205.Spec : Prop :=
  ∀ n, (P9157396672467883205.a n : ℤ) = A099729 n

end A099729

/-! ## A099729.P6329076661326151147

`floor(a(n-1)²+a(A123108(n))²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A099729.P6329076661326151147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + a (A123108 n).toNat ^ 2

end

end A099729.P6329076661326151147

namespace A099729

/-- `floor(a(n-1)²+a(A123108(n))²)` -/
def P6329076661326151147.Spec : Prop :=
  ∀ n, (P6329076661326151147.a n : ℤ) = A099729 n

end A099729

/-!
# A099730: Array read by antidiagonals. Rows contain odd numbers reaching same odd successor in Collatz function iteration.

The programs for A099730, there is no canonical definition to state claims against.
-/

/-! ## A099730.P11642372094280508852

`2*A191669(n+1)-1`
-/

namespace A099730.P11642372094280508852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191669 (n + 1) - 1

end

end A099730.P11642372094280508852

/-! ## A099730.P2231729768515456143

`(A191669(comp[∑[n]])-1)/2`
-/

namespace A099730.P2231729768515456143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191669 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1 : ℚ) / 2

end

end A099730.P2231729768515456143

/-! ## A099730.P16686832820209873337

`A347834(∑[char[∑[n]]]²-n)`
-/

namespace A099730.P16686832820209873337
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347834 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A099730.P16686832820209873337

/-! ## A099730.P4224848855049479277

`or(1, A347834(A038722(n+1)))`
-/

namespace A099730.P4224848855049479277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A347834 (A038722 (n + 1)).toNat)

end

end A099730.P4224848855049479277

/-! ## A099730.P9657251354657503495

`or(1, A347834(A061579(n)+1))`
-/

namespace A099730.P9657251354657503495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A347834 (A061579 n + 1).toNat)

end

end A099730.P9657251354657503495

/-!
# A099732: Largest order of a solvable subgroup of the symmetric group S_n.

The programs for A099732, there is no canonical definition to state claims against.
-/

/-! ## A099732.P5668341971628472699

`gcd(A032555(n+1)!, A349064(n+1))`
-/

namespace A099732.P5668341971628472699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A032555 (n + 1)).toNat : ℤ) (A349064 (n + 1))

end

end A099732.P5668341971628472699

/-! ## A099732.P13987104159088609190

`A118381(n+1)/A316767(C(A029970(n+3), n+1)+1)`
-/

namespace A099732.P13987104159088609190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118381 (n + 1) : ℚ) / (A316767 (Nat.choose (A029970 (n + 3)).toNat (n + 1) + 1) : ℚ)

end

end A099732.P13987104159088609190

/-! ## A099732.P10978251488991745727

`gcd(∏[n+1], ∏[A001144(n+1)])`
-/

namespace A099732.P10978251488991745727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001144 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A099732.P10978251488991745727

/-! ## A099732.P9705112021583414250

`∏[A305822(∑[A128347(n+1)])]`
-/

namespace A099732.P9705112021583414250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128347 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305822 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099732.P9705112021583414250

/-!
# A099735: a(2n) = a(2n-1) / a(2n-2); a(2n+1) = a(2n) + a(2n-1); a(0) = 1; a(1) = 1.

The programs for A099735, there is no canonical definition to state claims against.
-/

/-! ## A099735.P5214697258211830281

`A034877(eq[1, A172400(n)])`
-/

namespace A099735.P5214697258211830281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099735.P5214697258211830281

/-! ## A099735.P13816899113611018416

`A035317(eq[1, A172400(n)])`
-/

namespace A099735.P13816899113611018416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099735.P13816899113611018416

/-! ## A099735.P12602332225322418215

`A088855(lt[A160905(n), n])`
-/

namespace A099735.P12602332225322418215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160905 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A099735.P12602332225322418215

/-! ## A099735.P11930701213615558714

`A088855(lt[A291978(n), n])`
-/

namespace A099735.P11930701213615558714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291978 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A099735.P11930701213615558714

/-! ## A099735.P195491892134559555

`A035317(eq[1, A156141(n+1)])`
-/

namespace A099735.P195491892134559555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099735.P195491892134559555

/-!
# A099738: a(n) = 2*Sum_{k=1..n} (n+1-k) (Sum_{j|k} 1/floor(n/j)).

The programs for A099738, the canonical program `A099738.P8709163653134662502` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099738 has offset 1).

The definition of A099738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099738.P8709163653134662502

`∑[3*(n+1)-∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099738

/-- `∑[3*(n+1)-∑{d}[n+1, #]]` -/
def P8709163653134662502.Spec : Prop :=
  ∀ n, P8709163653134662502.a n = A099738 (n + 1)

theorem P8709163653134662502.correct : P8709163653134662502.Spec := by
  intro n
  simp only [A099738, Nat.add_sub_cancel]

end A099738

/-! ## A099738.P11663401266863685953

`∑[A033885(n+1)]`
-/

namespace A099738.P11663401266863685953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P11663401266863685953

namespace A099738

/-- `∑[A033885(n+1)]` -/
def P11663401266863685953.Spec : Prop :=
  ∀ n, P11663401266863685953.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P12252374183104352228

`∑[A353190(n+1)+1]`
-/

namespace A099738.P12252374183104352228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P12252374183104352228

namespace A099738

/-- `∑[A353190(n+1)+1]` -/
def P12252374183104352228.Spec : Prop :=
  ∀ n, P12252374183104352228.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P1023326816303202772

`A354801(n+1)+1+n`
-/

namespace A099738.P1023326816303202772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354801 (n + 1) + 1 + (n : ℤ)

end

end A099738.P1023326816303202772

namespace A099738

/-- `A354801(n+1)+1+n` -/
def P1023326816303202772.Spec : Prop :=
  ∀ n, P1023326816303202772.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P2244238140964511377

`∑[A033879(n+1)+1+n]`
-/

namespace A099738.P2244238140964511377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P2244238140964511377

namespace A099738

/-- `∑[A033879(n+1)+1+n]` -/
def P2244238140964511377.Spec : Prop :=
  ∀ n, P2244238140964511377.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P213155550206926040

`A111490(n+1)+∑[n+1]`
-/

namespace A099738.P213155550206926040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A099738.P213155550206926040

namespace A099738

/-- `A111490(n+1)+∑[n+1]` -/
def P213155550206926040.Spec : Prop :=
  ∀ n, P213155550206926040.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P549042798708338284

`A004125(n+1)+∑[n+2]`
-/

namespace A099738.P549042798708338284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A099738.P549042798708338284

namespace A099738

/-- `A004125(n+1)+∑[n+2]` -/
def P549042798708338284.Spec : Prop :=
  ∀ n, P549042798708338284.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P3722951866494229087

`∑[1-A033880(n+1)+n]`
-/

namespace A099738.P3722951866494229087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033880 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P3722951866494229087

namespace A099738

/-- `∑[1-A033880(n+1)+n]` -/
def P3722951866494229087.Spec : Prop :=
  ∀ n, P3722951866494229087.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P14814867508336244959

`∑[A235796(n+1)+2+n]`
-/

namespace A099738.P14814867508336244959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P14814867508336244959

namespace A099738

/-- `∑[A235796(n+1)+2+n]` -/
def P14814867508336244959.Spec : Prop :=
  ∀ n, P14814867508336244959.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P14492176639870291269

`∑[2-A237588(n+1)+n]`
-/

namespace A099738.P14492176639870291269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P14492176639870291269

namespace A099738

/-- `∑[2-A237588(n+1)+n]` -/
def P14492176639870291269.Spec : Prop :=
  ∀ n, P14492176639870291269.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P5840834725157805531

`A049766(n+1)+2*(n+1)`
-/

namespace A099738.P5840834725157805531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049766 (n + 1) + (2 * (n + 1) : ℤ)

end

end A099738.P5840834725157805531

namespace A099738

/-- `A049766(n+1)+2*(n+1)` -/
def P5840834725157805531.Spec : Prop :=
  ∀ n, P5840834725157805531.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P17149713913695665699

`∑[2*(n+1)-A001065(n+1)]`
-/

namespace A099738.P17149713913695665699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P17149713913695665699

namespace A099738

/-- `∑[2*(n+1)-A001065(n+1)]` -/
def P17149713913695665699.Spec : Prop :=
  ∀ n, P17149713913695665699.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P6887468693239465308

`∑[3*(n+1)-A000203(n+1)]`
-/

namespace A099738.P6887468693239465308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P6887468693239465308

namespace A099738

/-- `∑[3*(n+1)-A000203(n+1)]` -/
def P6887468693239465308.Spec : Prop :=
  ∀ n, P6887468693239465308.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P12664634028414036974

`∑[∑{d}[n+1, 3*A000010(#)-#]]`
-/

namespace A099738.P12664634028414036974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (3 * A000010 d - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P12664634028414036974

namespace A099738

/-- `∑[∑{d}[n+1, 3*A000010(#)-#]]` -/
def P12664634028414036974.Spec : Prop :=
  ∀ n, P12664634028414036974.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P12113507347161355559

`(n+2)²-(A153485(n+1)+n+2)`
-/

namespace A099738.P12113507347161355559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (A153485 (n + 1) + (n + 2 : ℤ))

end

end A099738.P12113507347161355559

namespace A099738

/-- `(n+2)²-(A153485(n+1)+n+2)` -/
def P12113507347161355559.Spec : Prop :=
  ∀ n, P12113507347161355559.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P16583342562294750117

`∑[A005408(n)-A048050(n+1)]+1`
-/

namespace A099738.P16583342562294750117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099738.P16583342562294750117

namespace A099738

/-- `∑[A005408(n)-A048050(n+1)]+1` -/
def P16583342562294750117.Spec : Prop :=
  ∀ n, P16583342562294750117.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P6268155436525768051

`∑[A016777(n)+2-A000203(n+1)]`
-/

namespace A099738.P6268155436525768051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099738.P6268155436525768051

namespace A099738

/-- `∑[A016777(n)+2-A000203(n+1)]` -/
def P6268155436525768051.Spec : Prop :=
  ∀ n, P6268155436525768051.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P16576832784868107150

`A153485(n+1)+2*A111490(n+1)`
-/

namespace A099738.P16576832784868107150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) + 2 * A111490 (n + 1)

end

end A099738.P16576832784868107150

namespace A099738

/-- `A153485(n+1)+2*A111490(n+1)` -/
def P16576832784868107150.Spec : Prop :=
  ∀ n, P16576832784868107150.a n = A099738 (n + 1)

end A099738

/-! ## A099738.P15900718714996913634

`A000292(n+1)+A111490(n+1)-A000292(n)`
-/

namespace A099738.P15900718714996913634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A111490 (n + 1) - A000292 n)

end

end A099738.P15900718714996913634

namespace A099738

/-- `A000292(n+1)+A111490(n+1)-A000292(n)` -/
def P15900718714996913634.Spec : Prop :=
  ∀ n, P15900718714996913634.a n = A099738 (n + 1)

end A099738

/-!
# A099739: a(n) = Sum_{k=1..n} k!*mu(k), where mu() is the Moebius function.

The programs for A099739, there is no canonical definition to state claims against.
-/

/-! ## A099739.P9940033731594820636

`∑[(n+1)!*A008683(n+1)]`
-/

namespace A099739.P9940033731594820636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099739.P9940033731594820636

/-! ## A099739.P7041488321982625360

`∑[A000142(n)*A055615(n+1)]`
-/

namespace A099739.P7041488321982625360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099739.P7041488321982625360

/-! ## A099739.P12057998721137310379

`∑[A008683(n+1)*Δ[A007489(n)]]`
-/

namespace A099739.P12057998721137310379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099739.P12057998721137310379

/-! ## A099739.P17819376986856568567

`∑[A008683(n+1)*A000142(n+1)]`
-/

namespace A099739.P17819376986856568567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099739.P17819376986856568567

/-! ## A099739.P11664436853022403967

`∑[∏[A000027(n+1)]*A008683(n+1)]`
-/

namespace A099739.P11664436853022403967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099739.P11664436853022403967

/-! ## A099739.P5078547420167857927

`∑[A008683(n+1)*A173333(A000124(n))]`
-/

namespace A099739.P5078547420167857927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A173333 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099739.P5078547420167857927

/-!
# A099740: a(n) = Sum_{k|n} k!*mu(k), where mu() is the Moebius function.

The programs for A099740, there is no canonical definition to state claims against.
-/

/-! ## A099740.P1945375167931583163

`∑{d}[n+1, #!*A008683(#)]`
-/

namespace A099740.P1945375167931583163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial d : ℤ) * A008683 d

end

end A099740.P1945375167931583163

/-!
# A099741: a(1) = a(2) = 1; a(n) = a([n/2])+a([n/3]) (n >= 3).

The programs for A099741, the canonical program `A099741.P6588019627606907231` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099741 has offset 1).

The definition of A099741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099741.P6588019627606907231

`a(floor((n+1)/2)-1)+a(floor((n+1)/3)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099741

/-- `a(floor((n+1)/2)-1)+a(floor((n+1)/3)-1)` -/
def P6588019627606907231.Spec : Prop :=
  ∀ n, (P6588019627606907231.a n : ℤ) = A099741 (n + 1)

theorem P6588019627606907231.correct : P6588019627606907231.Spec := by
  intro n
  simp only [A099741, Nat.add_sub_cancel]

end A099741

/-! ## A099741.P10588166953744365583

`A088468(round(n/3))`
-/

namespace A099741.P10588166953744365583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A099741.P10588166953744365583

namespace A099741

/-- `A088468(round(n/3))` -/
def P10588166953744365583.Spec : Prop :=
  ∀ n, P10588166953744365583.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P12153366154904976435

`A082479(ceil((2*n+1)/3))`
-/

namespace A099741.P12153366154904976435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 ⌈(2 * n + 1 : ℚ) / 3⌉.toNat

end

end A099741.P12153366154904976435

namespace A099741

/-- `A082479(ceil((2*n+1)/3))` -/
def P12153366154904976435.Spec : Prop :=
  ∀ n, P12153366154904976435.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P3465900152198390801

`A061984(A002264(n+1))+1`
-/

namespace A099741.P3465900152198390801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (A002264 (n + 1)).toNat + 1

end

end A099741.P3465900152198390801

namespace A099741

/-- `A061984(A002264(n+1))+1` -/
def P3465900152198390801.Spec : Prop :=
  ∀ n, P3465900152198390801.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P8066938768375626165

`A088468(n+1)-A088468(A110654(n))`
-/

namespace A099741.P8066938768375626165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (n + 1) - A088468 (A110654 n).toNat

end

end A099741.P8066938768375626165

namespace A099741

/-- `A088468(n+1)-A088468(A110654(n))` -/
def P8066938768375626165.Spec : Prop :=
  ∀ n, P8066938768375626165.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P18021792830013529576

`A088468(n+1)-A088468(A008619(n+1)-1)`
-/

namespace A099741.P18021792830013529576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (n + 1) - A088468 (A008619 (n + 1) - 1).toNat

end

end A099741.P18021792830013529576

namespace A099741

/-- `A088468(n+1)-A088468(A008619(n+1)-1)` -/
def P18021792830013529576.Spec : Prop :=
  ∀ n, P18021792830013529576.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P12685055198362469283

`A088468(n+1)-A088468(A004526(n+1))`
-/

namespace A099741.P12685055198362469283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (n + 1) - A088468 (A004526 (n + 1)).toNat

end

end A099741.P12685055198362469283

namespace A099741

/-- `A088468(n+1)-A088468(A004526(n+1))` -/
def P12685055198362469283.Spec : Prop :=
  ∀ n, P12685055198362469283.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P12781758095402101437

`A082479(2*(n+1))-A082479(n+1)`
-/

namespace A099741.P12781758095402101437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 (2 * (n + 1)) - A082479 (n + 1)

end

end A099741.P12781758095402101437

namespace A099741

/-- `A082479(2*(n+1))-A082479(n+1)` -/
def P12781758095402101437.Spec : Prop :=
  ∀ n, P12781758095402101437.a n = A099741 (n + 1)

end A099741

/-! ## A099741.P435423248293373480

`A160519(A301461(n+1)+1)`
-/

namespace A099741.P435423248293373480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160519 (A301461 (n + 1) + 1).toNat

end

end A099741.P435423248293373480

namespace A099741

/-- `A160519(A301461(n+1)+1)` -/
def P435423248293373480.Spec : Prop :=
  ∀ n, P435423248293373480.a n = A099741 (n + 1)

end A099741

/-!
# A099742: Least number B such that (A001359(n)-B^2)^2+B is also the lesser of larger twin primes, or 0 if no such B exists.

The programs for A099742, there is no canonical definition to state claims against.
-/

/-! ## A099742.P14872550491423922811

`A111273(C(n, 2)!)`
-/

namespace A099742.P14872550491423922811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (Nat.factorial (Nat.choose n 2))

end

end A099742.P14872550491423922811

/-!
# A099743: Number of permutations with exactly 1 valley which avoid the pattern 1324.

The programs for A099743, the canonical program `A099743.P15513249980678416656` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099743 has offset 1).

The definition of A099743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099743.P15513249980678416656

`9*a(n-1)-30*a(n-2)+44*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=15`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099743

/-- `9*a(n-1)-30*a(n-2)+44*a(n-3)-24*a(n-4)` -/
def P15513249980678416656.Spec : Prop :=
  ∀ n, P15513249980678416656.a n = A099743 (n + 1)

theorem P15513249980678416656.correct : P15513249980678416656.Spec := by
  intro n
  simp only [A099743, Nat.add_sub_cancel]

end A099743

/-! ## A099743.P15229753316781147109

`3^(n+1)-A058396(n+1)`
-/

namespace A099743.P15229753316781147109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A058396 (n + 1)

end

end A099743.P15229753316781147109

namespace A099743

/-- `3^(n+1)-A058396(n+1)` -/
def P15229753316781147109.Spec : Prop :=
  ∀ n, P15229753316781147109.a n = A099743 (n + 1)

end A099743

/-! ## A099743.P6212129627335938185

`A066810(n)+Δ[A345954(n)]`
-/

namespace A099743.P6212129627335938185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066810 n + (f1 (n + 1) - f1 n)

end

end A099743.P6212129627335938185

namespace A099743

/-- `A066810(n)+Δ[A345954(n)]` -/
def P6212129627335938185.Spec : Prop :=
  ∀ n, P6212129627335938185.a n = A099743 (n + 1)

end A099743

/-! ## A099743.P13339931318869293254

`A000244(n+1)-Δ[A084851(n)]`
-/

namespace A099743.P13339931318869293254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099743.P13339931318869293254

namespace A099743

/-- `A000244(n+1)-Δ[A084851(n)]` -/
def P13339931318869293254.Spec : Prop :=
  ∀ n, P13339931318869293254.a n = A099743 (n + 1)

end A099743

/-! ## A099743.P6193144653807104034

`Δ[A029858(n+1)-A084851(n)]`
-/

namespace A099743.P6193144653807104034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) - A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099743.P6193144653807104034

namespace A099743

/-- `Δ[A029858(n+1)-A084851(n)]` -/
def P6193144653807104034.Spec : Prop :=
  ∀ n, P6193144653807104034.a n = A099743 (n + 1)

end A099743

/-! ## A099743.P14263015787129529850

`∑[A008776(n)-A158920(n+2)]`
-/

namespace A099743.P14263015787129529850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A158920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099743.P14263015787129529850

namespace A099743

/-- `∑[A008776(n)-A158920(n+2)]` -/
def P14263015787129529850.Spec : Prop :=
  ∀ n, P14263015787129529850.a n = A099743 (n + 1)

end A099743

/-! ## A099743.P16062452398789999072

`A066810(n+1)+A345954(n)-A001047(n)`
-/

namespace A099743.P16062452398789999072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066810 (n + 1) + (A345954 n - A001047 n)

end

end A099743.P16062452398789999072

namespace A099743

/-- `A066810(n+1)+A345954(n)-A001047(n)` -/
def P16062452398789999072.Spec : Prop :=
  ∀ n, P16062452398789999072.a n = A099743 (n + 1)

end A099743

/-!
# A099744: Palindromes n such that 10n01 is a prime.

The programs for A099744, there is no canonical definition to state claims against.
-/

/-! ## A099744.P7615180187180428397

`∩[A002113(n+1), A099678(n+1)]`
-/

namespace A099744.P7615180187180428397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099744.P7615180187180428397

/-! ## A099744.P14089770841319980978

`∩[A056525(n+1), A099678(n+1)]`
-/

namespace A099744.P14089770841319980978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099744.P14089770841319980978

/-! ## A099744.P15116725652548924332

`∩[A083158(n+1), A099678(n+1)]`
-/

namespace A099744.P15116725652548924332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099744.P15116725652548924332

/-! ## A099744.P9532329208957440128

`∩[A099678(n+1), A056142(n)]`
-/

namespace A099744.P9532329208957440128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099744.P9532329208957440128

/-!
# A099745: Number of permutations of [n] with exactly 2 valleys which avoid the permutation 1324.

The programs for A099745, there is no canonical definition to state claims against.
-/

/-! ## A099745.P9933548035052990858

`A160918(2*n+5)%A046901(A000698(n))`
-/

namespace A099745.P9933548035052990858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160918 (2 * n + 5)) (A046901 (A000698 n).toNat)

end

end A099745.P9933548035052990858

/-! ## A099745.P13216067777935389422

`(13^((n-4)^9+1)-1)*floor(n/4)`
-/

namespace A099745.P13216067777935389422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 : ℚ) ^ (((n : ℤ) - 4) ^ 9 + 1 : ℤ) - 1) * (⌊(n : ℚ) / 4⌋ : ℚ)

end

end A099745.P13216067777935389422

/-!
# A099746: Primes arising in A099744.

The programs for A099746, there is no canonical definition to state claims against.
-/

/-! ## A099746.P13689099711281363451

`A159613(A226085(n+2))`
-/

namespace A099746.P13689099711281363451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159613 (A226085 (n + 2)).toNat

end

end A099746.P13689099711281363451

/-! ## A099746.P4990658128804128896

`A159613(∏{e}[A020707(n), A226085(#)])`
-/

namespace A099746.P4990658128804128896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159613 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A226085 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A099746.P4990658128804128896

/-!
# A099748: Molien series for complete weight enumerators of Euclidean self-dual codes over the Galois ring GR(4,2) that contain the all-ones vector.

The programs for A099748, there is no canonical definition to state claims against.
-/

/-! ## A099748.P11912769630017442829

`A277564(A198409(∏[Δ[n²]]))`
-/

namespace A099748.P11912769630017442829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277564 (A198409 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A099748.P11912769630017442829

/-!
# A099749: The number defined by the decimal string "a(2n) 1's followed by a(2n+1)" is prime.

The programs for A099749, there is no canonical definition to state claims against.
-/

/-! ## A099749.P15701860382926996915

`gcd(A081622(n), A207064(A207050(n+3)))`
-/

namespace A099749.P15701860382926996915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081622 n) (A207064 (A207050 (n + 3)).toNat)

end

end A099749.P15701860382926996915

/-!
# A099751: Number of ways to write n as differences of (-4)-gonal numbers. If pe(n):=1/2*n*((e-2)*n+(4-e)) is the n-th e-gonal number, then a(n) = |{(m,k) of Z X Z; pe(-1)(m+k)-pe(m-1)=n}| for e=-4.

The programs for A099751, the canonical program `A099751.P7046842454229189137` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099751 has offset 1).

The definition of A099751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099751.P7046842454229189137

`abs(A256232(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099751

/-- `abs(A256232(n+1))` -/
def P7046842454229189137.Spec : Prop :=
  ∀ n, P7046842454229189137.a n = A099751 (n + 1)

theorem P7046842454229189137.correct : P7046842454229189137.Spec := by
  intro n
  simp only [A099751, Nat.add_sub_cancel]

end A099751

/-! ## A099751.P16291029241002124041

`A112329(A038502(n+1))`
-/

namespace A099751.P16291029241002124041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A038502 (n + 1)).toNat

end

end A099751.P16291029241002124041

namespace A099751

/-- `A112329(A038502(n+1))` -/
def P16291029241002124041.Spec : Prop :=
  ∀ n, P16291029241002124041.a n = A099751 (n + 1)

end A099751

/-! ## A099751.P630199365470400123

`A033999(n)*A256232(n+1)`
-/

namespace A099751.P630199365470400123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A256232 (n + 1)

end

end A099751.P630199365470400123

namespace A099751

/-- `A033999(n)*A256232(n+1)` -/
def P630199365470400123.Spec : Prop :=
  ∀ n, P630199365470400123.a n = A099751 (n + 1)

end A099751

/-! ## A099751.P14983585943611216584

`gcd(A000038(n), A256232(n+1))`
-/

namespace A099751.P14983585943611216584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A256232 (n + 1))

end

end A099751.P14983585943611216584

namespace A099751

/-- `gcd(A000038(n), A256232(n+1))` -/
def P14983585943611216584.Spec : Prop :=
  ∀ n, (P14983585943611216584.a n : ℤ) = A099751 (n + 1)

end A099751

/-! ## A099751.P1755883553724569794

`lcm(A020985(n), A256232(n+1))`
-/

namespace A099751.P1755883553724569794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A256232 (n + 1))

end

end A099751.P1755883553724569794

namespace A099751

/-- `lcm(A020985(n), A256232(n+1))` -/
def P1755883553724569794.Spec : Prop :=
  ∀ n, (P1755883553724569794.a n : ℤ) = A099751 (n + 1)

end A099751

/-! ## A099751.P5037966215249616714

`∑{d}[A256232(n+1), A000010(#)]`
-/

namespace A099751.P5037966215249616714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A099751.P5037966215249616714

namespace A099751

/-- `∑{d}[A256232(n+1), A000010(#)]` -/
def P5037966215249616714.Spec : Prop :=
  ∀ n, P5037966215249616714.a n = A099751 (n + 1)

end A099751

/-! ## A099751.P2234830441767623083

`A112329(n+1)/A051064(n+1)`
-/

namespace A099751.P2234830441767623083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112329 (n + 1) : ℚ) / (A051064 (n + 1) : ℚ)

end

end A099751.P2234830441767623083

namespace A099751

/-- `A112329(n+1)/A051064(n+1)` -/
def P2234830441767623083.Spec : Prop :=
  ∀ n, P2234830441767623083.a n = (A099751 (n + 1) : ℚ)

end A099751

/-! ## A099751.P5590838739865363366

`A143520(n+1)/A364222(n+1)`
-/

namespace A099751.P5590838739865363366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143520 (n + 1) : ℚ) / (A364222 (n + 1) : ℚ)

end

end A099751.P5590838739865363366

namespace A099751

/-- `A143520(n+1)/A364222(n+1)` -/
def P5590838739865363366.Spec : Prop :=
  ∀ n, P5590838739865363366.a n = (A099751 (n + 1) : ℚ)

end A099751

/-! ## A099751.P14699758154430260303

`abs(A035218(n+1)/A001227(n+1)*A048272(n+1))`
-/

namespace A099751.P14699758154430260303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A035218 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) * (A048272 (n + 1) : ℚ)|

end

end A099751.P14699758154430260303

namespace A099751

/-- `abs(A035218(n+1)/A001227(n+1)*A048272(n+1))` -/
def P14699758154430260303.Spec : Prop :=
  ∀ n, P14699758154430260303.a n = (A099751 (n + 1) : ℚ)

end A099751

/-! ## A099751.P2407867430362671727

`abs(∑{d}[n+1, A092220(#)])`
-/

namespace A099751.P2407867430362671727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A092220 d|

end

end A099751.P2407867430362671727

namespace A099751

/-- `abs(∑{d}[n+1, A092220(#)])` -/
def P2407867430362671727.Spec : Prop :=
  ∀ n, P2407867430362671727.a n = A099751 (n + 1)

end A099751

/-! ## A099751.P8912431708580751345

`abs(A048272(3*(n+1))-A048272(n+1))`
-/

namespace A099751.P8912431708580751345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048272 (3 * (n + 1)) - A048272 (n + 1)|

end

end A099751.P8912431708580751345

namespace A099751

/-- `abs(A048272(3*(n+1))-A048272(n+1))` -/
def P8912431708580751345.Spec : Prop :=
  ∀ n, P8912431708580751345.a n = A099751 (n + 1)

end A099751

/-! ## A099751.P5345045688929252064

`A112329(A004767(n)-n)-A112329(n+1)`
-/

namespace A099751.P5345045688929252064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A004767 n - (n : ℤ)).toNat - A112329 (n + 1)

end

end A099751.P5345045688929252064

namespace A099751

/-- `A112329(A004767(n)-n)-A112329(n+1)` -/
def P5345045688929252064.Spec : Prop :=
  ∀ n, P5345045688929252064.a n = A099751 (n + 1)

end A099751

/-!
# A099752: Molien series for symmetrized weight enumerators of doubly-even Euclidean self-dual codes over the Galois ring GR(4,2).

The programs for A099752, there is no canonical definition to state claims against.
-/

/-! ## A099752.P5507963880779085718

`A110266(A007727(n+1))`
-/

namespace A099752.P5507963880779085718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A007727 (n + 1)).toNat

end

end A099752.P5507963880779085718

/-!
# A099753: a(n) = (2*n+1)^(n+2).

The programs for A099753, the canonical program `A099753.P1416949880053980928` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099753 has offset 0).

The definition of A099753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^(n+2)` (program `A099753.P1416949880053980928`, by `A099753.P1416949880053980928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099753.P1416949880053980928

`(2*n+1)^(n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099753

/-- `(2*n+1)^(n+2)` -/
def P1416949880053980928.Spec : Prop :=
  ∀ n, (P1416949880053980928.a n : ℤ) = A099753 n

theorem P1416949880053980928.correct : P1416949880053980928.Spec := by
  intro n
  simp only [A099753]

end A099753

/-! ## A099753.P13663909797438287053

`record[(2*n-3)^n]`
-/

namespace A099753.P13663909797438287053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099753.P13663909797438287053

namespace A099753

/-- `record[(2*n-3)^n]` -/
def P13663909797438287053.Spec : Prop :=
  ∀ n, P13663909797438287053.a n = A099753 n

end A099753

/-! ## A099753.P13140871782154740231

`root(comp[2*n], tan(acot(n+2)))`
-/

namespace A099753.P13140871782154740231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (n + 2 : ℝ)))

end

end A099753.P13140871782154740231

namespace A099753

/-- `root(comp[2*n], tan(acot(n+2)))` -/
def P13140871782154740231.Spec : Prop :=
  ∀ n, P13140871782154740231.a n = (A099753 n : ℝ)

end A099753

/-! ## A099753.P6811795677711520960

`or(1, (n+1+n)^(n+2))`
-/

namespace A099753.P6811795677711520960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1 + n) ^ (n + 2))

end

end A099753.P6811795677711520960

namespace A099753

/-- `or(1, (n+1+n)^(n+2))` -/
def P6811795677711520960.Spec : Prop :=
  ∀ n, (P6811795677711520960.a n : ℤ) = A099753 n

end A099753

/-! ## A099753.P6112112743897857039

`root(2*n+1, abs(tan(acot(n+2))))`
-/

namespace A099753.P6112112743897857039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / |Real.tan (SequenceMachineLib.acot (n + 2 : ℝ))|)

end

end A099753.P6112112743897857039

namespace A099753

/-- `root(2*n+1, abs(tan(acot(n+2))))` -/
def P6112112743897857039.Spec : Prop :=
  ∀ n, P6112112743897857039.a n = (A099753 n : ℝ)

end A099753

/-!
# A099754: a(n) = (3^n +1)/2 + 2^n.

The programs for A099754, the canonical program `A099754.P15959787038249439815` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099754 has offset 0).

The definition of A099754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099754.P15959787038249439815

`A007051(n)+A000079(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099754

/-- `A007051(n)+A000079(n)` -/
def P15959787038249439815.Spec : Prop :=
  ∀ n, P15959787038249439815.a n = A099754 n

theorem P15959787038249439815.correct : P15959787038249439815.Spec := by
  intro n
  simp only [A099754]

end A099754

/-! ## A099754.P11192121122404424448

`(3^n+1)/2+2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099754.P11192121122404424448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℚ) / 2 + (2 ^ n : ℚ)

end

end A099754.P11192121122404424448

namespace A099754

/-- `(3^n+1)/2+2^n` -/
def P11192121122404424448.Spec : Prop :=
  ∀ n, P11192121122404424448.a n = (A099754 n : ℚ)

end A099754

/-! ## A099754.P1909093809511778570

`∑[ogf((2-8x+7x^2)/(1-5x+6x^2))]`
-/

namespace A099754.P1909093809511778570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8, 7] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099754.P1909093809511778570

namespace A099754

/-- `∑[ogf((2-8x+7x^2)/(1-5x+6x^2))]` -/
def P1909093809511778570.Spec : Prop :=
  ∀ n, P1909093809511778570.a n = A099754 n

end A099754

/-! ## A099754.P10315717653347503101

`abs(∑[3*a(n-1)]+2^n)` with `a(0)=1, a(1)=1`
-/

namespace A099754.P10315717653347503101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A099754.P10315717653347503101

namespace A099754

/-- `abs(∑[3*a(n-1)]+2^n)` -/
def P10315717653347503101.Spec : Prop :=
  ∀ n, (P10315717653347503101.a n : ℤ) = A099754 n

end A099754

/-! ## A099754.P4080396108757314700

`floor(∑[3*a(n-1)]+2^n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A099754.P4080396108757314700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A099754.P4080396108757314700

namespace A099754

/-- `floor(∑[3*a(n-1)]+2^n)` -/
def P4080396108757314700.Spec : Prop :=
  ∀ n, (P4080396108757314700.a n : ℤ) = A099754 n

end A099754

/-! ## A099754.P17916538919497991092

`round(∑[3*a(n-1)]+2^n)` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A099754.P17916538919497991092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A099754.P17916538919497991092

namespace A099754

/-- `round(∑[3*a(n-1)]+2^n)` -/
def P17916538919497991092.Spec : Prop :=
  ∀ n, (P17916538919497991092.a n : ℤ) = A099754 n

end A099754

/-! ## A099754.P10870293886609350411

`∑[A085281(floor(acot(n)+n))]`
-/

namespace A099754.P10870293886609350411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099754.P10870293886609350411

namespace A099754

/-- `∑[A085281(floor(acot(n)+n))]` -/
def P10870293886609350411.Spec : Prop :=
  ∀ n, P10870293886609350411.a n = A099754 n

end A099754

/-! ## A099754.P8960345010614395921

`∑[A133494(n)+ceil(2^(n-1))]`
-/

namespace A099754.P8960345010614395921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099754.P8960345010614395921

namespace A099754

/-- `∑[A133494(n)+ceil(2^(n-1))]` -/
def P8960345010614395921.Spec : Prop :=
  ∀ n, P8960345010614395921.a n = A099754 n

end A099754

/-! ## A099754.P8261315986670542082

`∑[A007689(round(sqrt(n²+1))-1)]`
-/

namespace A099754.P8261315986670542082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099754.P8261315986670542082

namespace A099754

/-- `∑[A007689(round(sqrt(n²+1))-1)]` -/
def P8261315986670542082.Spec : Prop :=
  ∀ n, P8261315986670542082.a n = A099754 n

end A099754

/-! ## A099754.P2598892049947399437

`(∑[floor(3^(n-1))]+2^n+1)*A000041(C(2, n+2))`
-/

namespace A099754.P2598892049947399437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ) + 1) * A000041 (Nat.choose 2 (n + 2))

end

end A099754.P2598892049947399437

namespace A099754

/-- `(∑[floor(3^(n-1))]+2^n+1)*A000041(C(2, n+2))` -/
def P2598892049947399437.Spec : Prop :=
  ∀ n, P2598892049947399437.a n = A099754 n

end A099754

/-! ## A099754.P1741864032326927108

`∑[A085281(n)+A000038(n)/2]`
-/

namespace A099754.P1741864032326927108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085281 n : ℚ) + (A000038 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099754.P1741864032326927108

namespace A099754

/-- `∑[A085281(n)+A000038(n)/2]` -/
def P1741864032326927108.Spec : Prop :=
  ∀ n, P1741864032326927108.a n = (A099754 n : ℚ)

end A099754

/-! ## A099754.P1581540872871454440

`abs(A054135(n+1)+A094734(n)+A057428(n))`
-/

namespace A099754.P1581540872871454440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054135 (n + 1) + (A094734 n + A057428 n)|

end

end A099754.P1581540872871454440

namespace A099754

/-- `abs(A054135(n+1)+A094734(n)+A057428(n))` -/
def P1581540872871454440.Spec : Prop :=
  ∀ n, P1581540872871454440.a n = A099754 n

end A099754

/-! ## A099754.P14855372338026236687

`abs(A054135(n+1)+A007051(n)-A083329(n))`
-/

namespace A099754.P14855372338026236687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054135 (n + 1) + (A007051 n - A083329 n)|

end

end A099754.P14855372338026236687

namespace A099754

/-- `abs(A054135(n+1)+A007051(n)-A083329(n))` -/
def P14855372338026236687.Spec : Prop :=
  ∀ n, P14855372338026236687.a n = A099754 n

end A099754

/-! ## A099754.P10150892547459692940

`(A007051(n)+A000225(n)+1)*val(A109009(n+3)+1, 2)`
-/

namespace A099754.P10150892547459692940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n + A000225 n + 1) * (SequenceMachineLib.valuation (A109009 (n + 3) + 1).toNat 2 : ℤ)

end

end A099754.P10150892547459692940

namespace A099754

/-- `(A007051(n)+A000225(n)+1)*val(A109009(n+3)+1, 2)` -/
def P10150892547459692940.Spec : Prop :=
  ∀ n, P10150892547459692940.a n = A099754 n

end A099754

/-! ## A099754.P7475571248424570984

`(∑[floor(3^(n-1))]+2^n+1)%(∑[2^n]+3^n+4)`
-/

namespace A099754.P7475571248424570984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ) + 1) ((∑ j ∈ Finset.range (n + 1), f2 j + (3 ^ n + 4) : ℕ) : ℤ)

end

end A099754.P7475571248424570984

namespace A099754

/-- `(∑[floor(3^(n-1))]+2^n+1)%(∑[2^n]+3^n+4)` -/
def P7475571248424570984.Spec : Prop :=
  ∀ n, P7475571248424570984.a n = A099754 n

end A099754

/-! ## A099754.P3824016702119883534

`round(A085279(n+1)/2)`
-/

namespace A099754.P3824016702119883534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085279 (n + 1) : ℚ) / 2)

end

end A099754.P3824016702119883534

namespace A099754

/-- `round(A085279(n+1)/2)` -/
def P3824016702119883534.Spec : Prop :=
  ∀ n, P3824016702119883534.a n = A099754 n

end A099754

/-! ## A099754.P11813680254763417213

`abs(2^n+3^n-A003462(n))`
-/

namespace A099754.P11813680254763417213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n + 3 ^ n : ℤ) - A003462 n|

end

end A099754.P11813680254763417213

namespace A099754

/-- `abs(2^n+3^n-A003462(n))` -/
def P11813680254763417213.Spec : Prop :=
  ∀ n, P11813680254763417213.a n = A099754 n

end A099754

/-! ## A099754.P3056771027716014840

`(A001550(n)+A000079(n))/2`
-/

namespace A099754.P3056771027716014840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 n + A000079 n : ℚ) / 2

end

end A099754.P3056771027716014840

namespace A099754

/-- `(A001550(n)+A000079(n))/2` -/
def P3056771027716014840.Spec : Prop :=
  ∀ n, P3056771027716014840.a n = (A099754 n : ℚ)

end A099754

/-! ## A099754.P11722769667751791100

`(A007689(n)+A000051(n))/2`
-/

namespace A099754.P11722769667751791100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007689 n + A000051 n : ℚ) / 2

end

end A099754.P11722769667751791100

namespace A099754

/-- `(A007689(n)+A000051(n))/2` -/
def P11722769667751791100.Spec : Prop :=
  ∀ n, P11722769667751791100.a n = (A099754 n : ℚ)

end A099754

/-! ## A099754.P14553789709955067041

`floor(A000051(n)+A000244(n)/2)`
-/

namespace A099754.P14553789709955067041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n : ℚ) + (A000244 n : ℚ) / 2⌋

end

end A099754.P14553789709955067041

namespace A099754

/-- `floor(A000051(n)+A000244(n)/2)` -/
def P14553789709955067041.Spec : Prop :=
  ∀ n, P14553789709955067041.a n = A099754 n

end A099754

/-!
# A099755: Triangle read by rows: T(n,0)=1, T(n,n)=(2*n-1)!!+1, T(n,k) = 2*(n-k) * T(n-1,k-1) + 2*(k+1)*T(n-1,k).

The programs for A099755, there is no canonical definition to state claims against.
-/

/-! ## A099755.P16152036404415967191

`A157007(lcm(A059481(n), A188002(n+1)))`
-/

namespace A099755.P16152036404415967191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157007 (Int.lcm (A059481 n) (A188002 (n + 1)))

end

end A099755.P16152036404415967191

/-!
# A099756: For each single digit {0,1,...,9} record the smallest prime made up of copies of that digit (if there is one); repeat for all of the C(10,2) = 45 pairs of distinct decimal digits; then for all triples; etc.

The programs for A099756, there is no canonical definition to state claims against.
-/

/-! ## A099756.P17183433074843381293

`A006530(p?[A099268(n+1)]²)`
-/

namespace A099756.P17183433074843381293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A099756.P17183433074843381293

/-! ## A099756.P4786311001598324143

`A088277(A392076(n))`
-/

namespace A099756.P4786311001598324143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088277 (A392076 n).toNat

end

end A099756.P4786311001598324143

/-!
# A099757: Molien series for complete weight enumerators of Hermitian self-dual codes over the Galois ring GR(4,2).

The programs for A099757, there is no canonical definition to state claims against.
-/

/-! ## A099757.P5702849654958625262

`A339113(A004752(2*n+3))%A138049(n+3)`
-/

namespace A099757.P5702849654958625262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339113 (A004752 (2 * n + 3)).toNat) (A138049 (n + 3))

end

end A099757.P5702849654958625262

/-!
# A099759: Triangle read by rows: T(n,0)=1, T(n,n)=1, T(n, k) = 2*(n-k)*T(n-1, k-1) + 2*k*T(n-1, k).

The programs for A099759, there is no canonical definition to state claims against.
-/

/-! ## A099759.P5783417967766116315

`A111636(n)-A369054(A002905(n))`
-/

namespace A099759.P5783417967766116315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111636 n - A369054 (A002905 n).toNat

end

end A099759.P5783417967766116315

/-!
# A099760: a(n+1) = 2*n*a(n) + 2 with a(0)=1.

The programs for A099760, the canonical program `A099760.P10853672139707737534` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099760 has offset 0).

The definition of A099760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099760.P10853672139707737534

`2*(n-1)*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099760

/-- `2*(n-1)*a(n-1)+2` -/
def P10853672139707737534.Spec : Prop :=
  ∀ n, P10853672139707737534.a n = A099760 n

theorem P10853672139707737534.correct : P10853672139707737534.Spec := by
  intro n
  simp only [A099760]

end A099760

/-! ## A099760.P9044630848150639423

`2*(1-(1-n)*a(n-1))` with `a(0)=1`
-/

namespace A099760.P9044630848150639423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (1 - (n : ℤ)) * a (n - 1))

end

end A099760.P9044630848150639423

namespace A099760

/-- `2*(1-(1-n)*a(n-1))` -/
def P9044630848150639423.Spec : Prop :=
  ∀ n, P9044630848150639423.a n = A099760 n

theorem P9044630848150639423.correct : P9044630848150639423.Spec := by
  intro n
  simp only [A099760, Nat.add_sub_cancel, A099760.P9044630848150639423.a, A099760.P10853672139707737534.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099760

/-! ## A099760.P3856427866864275152

`A077138(comp[2*(n+1)])+1`
-/

namespace A099760.P3856427866864275152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A099760.P3856427866864275152

namespace A099760

/-- `A077138(comp[2*(n+1)])+1` -/
def P3856427866864275152.Spec : Prop :=
  ∀ n, P3856427866864275152.a n = A099760 n

end A099760

/-! ## A099760.P8991044955345736485

`a(n-1)*A004275(n)+2` with `a(0)=1, a(1)=2`
-/

namespace A099760.P8991044955345736485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A004275 n + 2

end

end A099760.P8991044955345736485

namespace A099760

/-- `a(n-1)*A004275(n)+2` -/
def P8991044955345736485.Spec : Prop :=
  ∀ n, P8991044955345736485.a n = A099760 n

end A099760

/-! ## A099760.P9169185031266090182

`2*a(n-1)*A023443(n)+2` with `a(0)=1`
-/

namespace A099760.P9169185031266090182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A023443 n + 2

end

end A099760.P9169185031266090182

namespace A099760

/-- `2*a(n-1)*A023443(n)+2` -/
def P9169185031266090182.Spec : Prop :=
  ∀ n, P9169185031266090182.a n = A099760 n

end A099760

/-! ## A099760.P7206755776159283497

`or(2, a(n-1)*A097141(2*n))` with `a(0)=1`
-/

namespace A099760.P7206755776159283497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (a (n - 1) * A097141 (2 * n))

end

end A099760.P7206755776159283497

namespace A099760

/-- `or(2, a(n-1)*A097141(2*n))` -/
def P7206755776159283497.Spec : Prop :=
  ∀ n, P7206755776159283497.a n = A099760 n

end A099760

/-!
# A099761: a(n) = ( n*(n+2) )^2.

The programs for A099761, the canonical program `A099761.P12819074216923447249` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099761 has offset 0).

The definition of A099761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+2))²` (program `A099761.P12819074216923447249`, by `A099761.P12819074216923447249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099761.P12819074216923447249

`(n*(n+2))²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099761

/-- `(n*(n+2))²` -/
def P12819074216923447249.Spec : Prop :=
  ∀ n, (P12819074216923447249.a n : ℤ) = A099761 n

theorem P12819074216923447249.correct : P12819074216923447249.Spec := by
  intro n
  simp only [A099761]

end A099761

/-! ## A099761.P15874914519140518584

`record[n*(n-2)]^2`
-/

namespace A099761.P15874914519140518584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A099761.P15874914519140518584

namespace A099761

/-- `record[n*(n-2)]^2` -/
def P15874914519140518584.Spec : Prop :=
  ∀ n, P15874914519140518584.a n = A099761 n

end A099761

/-! ## A099761.P15603265673294036993

`n²*record[(2-n)²]`
-/

namespace A099761.P15603265673294036993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099761.P15603265673294036993

namespace A099761

/-- `n²*record[(2-n)²]` -/
def P15603265673294036993.Spec : Prop :=
  ∀ n, P15603265673294036993.a n = A099761 n

end A099761

/-! ## A099761.P5963521334203364036

`lcm(n, record[(1-n²)²])`
-/

namespace A099761.P5963521334203364036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A099761.P5963521334203364036

namespace A099761

/-- `lcm(n, record[(1-n²)²])` -/
def P5963521334203364036.Spec : Prop :=
  ∀ n, (P5963521334203364036.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P9205984015720241656

`cot(asin(1/(n+1)))^4`
-/

namespace A099761.P9205984015720241656
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin (1 / (n + 1 : ℚ) : ℝ)) ^ 4

end

end A099761.P9205984015720241656

namespace A099761

/-- `cot(asin(1/(n+1)))^4` -/
def P9205984015720241656.Spec : Prop :=
  ∀ n, P9205984015720241656.a n = (A099761 n : ℝ)

end A099761

/-! ## A099761.P13629736621456025258

`(n*(n+2))^acos(cos(2))`
-/

namespace A099761.P13629736621456025258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A099761.P13629736621456025258

namespace A099761

/-- `(n*(n+2))^acos(cos(2))` -/
def P13629736621456025258.Spec : Prop :=
  ∀ n, P13629736621456025258.a n = (A099761 n : ℝ)

end A099761

/-! ## A099761.P17214665675941148361

`floor(n²/acot((n+2)²))`
-/

namespace A099761.P17214665675941148361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ)⌋

end

end A099761.P17214665675941148361

namespace A099761

/-- `floor(n²/acot((n+2)²))` -/
def P17214665675941148361.Spec : Prop :=
  ∀ n, P17214665675941148361.a n = A099761 n

end A099761

/-! ## A099761.P6464226313094923161

`round(n²/acot((n+2)²))`
-/

namespace A099761.P6464226313094923161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ))

end

end A099761.P6464226313094923161

namespace A099761

/-- `round(n²/acot((n+2)²))` -/
def P6464226313094923161.Spec : Prop :=
  ∀ n, P6464226313094923161.a n = A099761 n

end A099761

/-! ## A099761.P17182413277031426619

`n²/tan(acot((n+2)²))`
-/

namespace A099761.P17182413277031426619
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ))

end

end A099761.P17182413277031426619

namespace A099761

/-- `n²/tan(acot((n+2)²))` -/
def P17182413277031426619.Spec : Prop :=
  ∀ n, P17182413277031426619.a n = (A099761 n : ℝ)

end A099761

/-! ## A099761.P11029811283459975340

`n²/cot(atan(n+2))²`
-/

namespace A099761.P11029811283459975340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ)) ^ 2

end

end A099761.P11029811283459975340

namespace A099761

/-- `n²/cot(atan(n+2))²` -/
def P11029811283459975340.Spec : Prop :=
  ∀ n, P11029811283459975340.a n = (A099761 n : ℝ)

end A099761

/-! ## A099761.P14819204205400872885

`and(-3, (1-(n+1)²)²)`
-/

namespace A099761.P14819204205400872885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((1 - ((n + 1) ^ 2 : ℤ)) ^ 2)

end

end A099761.P14819204205400872885

namespace A099761

/-- `and(-3, (1-(n+1)²)²)` -/
def P14819204205400872885.Spec : Prop :=
  ∀ n, P14819204205400872885.a n = A099761 n

end A099761

/-! ## A099761.P1644423303517913700

`or((1-(n+1)²)², char[1])`
-/

namespace A099761.P1644423303517913700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - ((n + 1) ^ 2 : ℤ)) ^ 2) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099761.P1644423303517913700

namespace A099761

/-- `or((1-(n+1)²)², char[1])` -/
def P1644423303517913700.Spec : Prop :=
  ∀ n, P1644423303517913700.a n = A099761 n

end A099761

/-! ## A099761.P9038709726315850805

`lcm((1-(n+1)²)², n²)`
-/

namespace A099761.P9038709726315850805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - ((n + 1) ^ 2 : ℤ)) ^ 2) (n ^ 2 : ℤ)

end

end A099761.P9038709726315850805

namespace A099761

/-- `lcm((1-(n+1)²)², n²)` -/
def P9038709726315850805.Spec : Prop :=
  ∀ n, (P9038709726315850805.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P12251328576931121376

`∑[a(n-1)+2]^2` with `a(0)=0, a(1)=3`
-/

namespace A099761.P12251328576931121376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099761.P12251328576931121376

namespace A099761

/-- `∑[a(n-1)+2]^2` -/
def P12251328576931121376.Spec : Prop :=
  ∀ n, (P12251328576931121376.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P3928127172383381369

`floor(∑[a(n-1)+2]²)` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A099761.P3928127172383381369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099761.P3928127172383381369

namespace A099761

/-- `floor(∑[a(n-1)+2]²)` -/
def P3928127172383381369.Spec : Prop :=
  ∀ n, (P3928127172383381369.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P18421844562192603489

`ceil(∑[a(n-1)+2]²)` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A099761.P18421844562192603489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099761.P18421844562192603489

namespace A099761

/-- `ceil(∑[a(n-1)+2]²)` -/
def P18421844562192603489.Spec : Prop :=
  ∀ n, (P18421844562192603489.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P9181558933356260112

`round(∑[a(n-1)+2]²)` with `a(0)=0, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A099761.P9181558933356260112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099761.P9181558933356260112

namespace A099761

/-- `round(∑[a(n-1)+2]²)` -/
def P9181558933356260112.Spec : Prop :=
  ∀ n, (P9181558933356260112.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P15890597816203991319

`(n*(n+2))^(2%(n+3))`
-/

namespace A099761.P15890597816203991319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2)) ^ (2 % (n + 3))

end

end A099761.P15890597816203991319

namespace A099761

/-- `(n*(n+2))^(2%(n+3))` -/
def P15890597816203991319.Spec : Prop :=
  ∀ n, (P15890597816203991319.a n : ℤ) = A099761 n

end A099761

/-! ## A099761.P9225624259239667112

`(n*(n+2))^gcd(2, 2*n)`
-/

namespace A099761.P9225624259239667112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2)) ^ Nat.gcd 2 (2 * n)

end

end A099761.P9225624259239667112

namespace A099761

/-- `(n*(n+2))^gcd(2, 2*n)` -/
def P9225624259239667112.Spec : Prop :=
  ∀ n, (P9225624259239667112.a n : ℤ) = A099761 n

theorem P9225624259239667112.correct : P9225624259239667112.Spec := by
  intro n
  simp only [A099761, Nat.add_sub_cancel, A099761.P9225624259239667112.a, A099761.P12819074216923447249.a, SequenceMachineLib.memo_apply]
  try simp

end A099761

/-! ## A099761.P10261269737541383419

`(n*(n+2))^ceil(atan(n+1))`
-/

namespace A099761.P10261269737541383419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A099761.P10261269737541383419

namespace A099761

/-- `(n*(n+2))^ceil(atan(n+1))` -/
def P10261269737541383419.Spec : Prop :=
  ∀ n, P10261269737541383419.a n = (A099761 n : ℚ)

end A099761

/-!
# A099762: a(n) = n^2 * (n+1)^3.

The programs for A099762, the canonical program `A099762.P5343226608238859591` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099762 has offset 0).

The definition of A099762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)^3` (program `A099762.P5343226608238859591`, by `A099762.P5343226608238859591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099762.P5343226608238859591

`n²*(n+1)^3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099762

/-- `n²*(n+1)^3` -/
def P5343226608238859591.Spec : Prop :=
  ∀ n, (P5343226608238859591.a n : ℤ) = A099762 n

theorem P5343226608238859591.correct : P5343226608238859591.Spec := by
  intro n
  simp only [A099762]

end A099762

/-! ## A099762.P11390469246648047974

`lcm(n², (n+1)^3)`
-/

namespace A099762.P11390469246648047974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2) ((n + 1) ^ 3)

end

end A099762.P11390469246648047974

namespace A099762

/-- `lcm(n², (n+1)^3)` -/
def P11390469246648047974.Spec : Prop :=
  ∀ n, (P11390469246648047974.a n : ℤ) = A099762 n

end A099762

/-! ## A099762.P5674235287656498120

`floor(n²/acot((n+1)^3))`
-/

namespace A099762.P5674235287656498120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ)⌋

end

end A099762.P5674235287656498120

namespace A099762

/-- `floor(n²/acot((n+1)^3))` -/
def P5674235287656498120.Spec : Prop :=
  ∀ n, P5674235287656498120.a n = A099762 n

end A099762

/-! ## A099762.P9154012578498446451

`round(n²/acot((n+1)^3))`
-/

namespace A099762.P9154012578498446451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))

end

end A099762.P9154012578498446451

namespace A099762

/-- `round(n²/acot((n+1)^3))` -/
def P9154012578498446451.Spec : Prop :=
  ∀ n, P9154012578498446451.a n = A099762 n

end A099762

/-! ## A099762.P17226015760257911766

`n²/tan(acot((n+1)^3))`
-/

namespace A099762.P17226015760257911766
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))

end

end A099762.P17226015760257911766

namespace A099762

/-- `n²/tan(acot((n+1)^3))` -/
def P17226015760257911766.Spec : Prop :=
  ∀ n, P17226015760257911766.a n = (A099762 n : ℝ)

end A099762

/-! ## A099762.P6824074242121143000

`lcm(n, (n+1)²)²/(n+1)`
-/

namespace A099762.P6824074242121143000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A099762.P6824074242121143000

namespace A099762

/-- `lcm(n, (n+1)²)²/(n+1)` -/
def P6824074242121143000.Spec : Prop :=
  ∀ n, P6824074242121143000.a n = (A099762 n : ℚ)

end A099762

/-! ## A099762.P10413032483933027675

`(n²+n)²/cot(atan(n+1))`
-/

namespace A099762.P10413032483933027675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n) ^ 2 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A099762.P10413032483933027675

namespace A099762

/-- `(n²+n)²/cot(atan(n+1))` -/
def P10413032483933027675.Spec : Prop :=
  ∀ n, P10413032483933027675.a n = (A099762 n : ℝ)

end A099762

/-! ## A099762.P7168531625947480917

`and((n+1)*∑[2*n]², -2)`
-/

namespace A099762.P7168531625947480917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (-2)

end

end A099762.P7168531625947480917

namespace A099762

/-- `and((n+1)*∑[2*n]², -2)` -/
def P7168531625947480917.Spec : Prop :=
  ∀ n, P7168531625947480917.a n = A099762 n

end A099762

/-! ## A099762.P12783907241946811310

`(n*record[(n-1)²])²/(n+1)`
-/

namespace A099762.P12783907241946811310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A099762.P12783907241946811310

namespace A099762

/-- `(n*record[(n-1)²])²/(n+1)` -/
def P12783907241946811310.Spec : Prop :=
  ∀ n, P12783907241946811310.a n = (A099762 n : ℚ)

end A099762

/-! ## A099762.P2486769580703938131

`(n*C(n+1, n)²)²/(n+1)`
-/

namespace A099762.P2486769580703938131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * Nat.choose (n + 1) n ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A099762.P2486769580703938131

namespace A099762

/-- `(n*C(n+1, n)²)²/(n+1)` -/
def P2486769580703938131.Spec : Prop :=
  ∀ n, P2486769580703938131.a n = (A099762 n : ℚ)

end A099762

/-! ## A099762.P2944686550006866183

`floor((n+1)*∑[a(n-1)+2]²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A099762.P2944686550006866183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099762.P2944686550006866183

namespace A099762

/-- `floor((n+1)*∑[a(n-1)+2]²)` -/
def P2944686550006866183.Spec : Prop :=
  ∀ n, (P2944686550006866183.a n : ℤ) = A099762 n

end A099762

/-! ## A099762.P1400058856669373138

`n²/(n+1)^(gcd(n, n+1)-4)`
-/

namespace A099762.P1400058856669373138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (n + 1 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - 4 : ℤ)

end

end A099762.P1400058856669373138

namespace A099762

/-- `n²/(n+1)^(gcd(n, n+1)-4)` -/
def P1400058856669373138.Spec : Prop :=
  ∀ n, P1400058856669373138.a n = (A099762 n : ℚ)

theorem P1400058856669373138.correct : P1400058856669373138.Spec := by
  intro n
  simp only [A099762, Nat.add_sub_cancel, A099762.P1400058856669373138.a, A099762.P5343226608238859591.a, SequenceMachineLib.memo_apply]
  try simp

end A099762

/-! ## A099762.P11698918740434471923

`(n+1)*∑[a(n-1)+4]²/4` with `a(0)=0`
-/

namespace A099762.P11698918740434471923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A099762.P11698918740434471923

namespace A099762

/-- `(n+1)*∑[a(n-1)+4]²/4` -/
def P11698918740434471923.Spec : Prop :=
  ∀ n, P11698918740434471923.a n = (A099762 n : ℚ)

end A099762

/-! ## A099762.P2116990890346860027

`lcm(∑[2*n]²+1, n+1)-(n+1)`
-/

namespace A099762.P2116990890346860027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A099762.P2116990890346860027

namespace A099762

/-- `lcm(∑[2*n]²+1, n+1)-(n+1)` -/
def P2116990890346860027.Spec : Prop :=
  ∀ n, P2116990890346860027.a n = A099762 n

end A099762

/-! ## A099762.P7931574082357338227

`C(2, n+3)+(n+1)*∑[2*n]²`
-/

namespace A099762.P7931574082357338227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099762.P7931574082357338227

namespace A099762

/-- `C(2, n+3)+(n+1)*∑[2*n]²` -/
def P7931574082357338227.Spec : Prop :=
  ∀ n, (P7931574082357338227.a n : ℤ) = A099762 n

end A099762

/-! ## A099762.P17357925132210526121

`and(1, 2*n)+(n+1)*∑[2*n]²`
-/

namespace A099762.P17357925132210526121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099762.P17357925132210526121

namespace A099762

/-- `and(1, 2*n)+(n+1)*∑[2*n]²` -/
def P17357925132210526121.Spec : Prop :=
  ∀ n, (P17357925132210526121.a n : ℤ) = A099762 n

end A099762

/-! ## A099762.P1597099123590783231

`∑[a(n-1)+2]²/(n+1)^(-1)` with `a(0)=0`
-/

namespace A099762.P1597099123590783231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A099762.P1597099123590783231

namespace A099762

/-- `∑[a(n-1)+2]²/(n+1)^(-1)` -/
def P1597099123590783231.Spec : Prop :=
  ∀ n, P1597099123590783231.a n = (A099762 n : ℚ)

end A099762

/-! ## A099762.P6108214197073442654

`sqrt(n²*A085540(n)²)`
-/

namespace A099762.P6108214197073442654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A085540 n ^ 2 : ℝ)

end

end A099762.P6108214197073442654

namespace A099762

/-- `sqrt(n²*A085540(n)²)` -/
def P6108214197073442654.Spec : Prop :=
  ∀ n, P6108214197073442654.a n = (A099762 n : ℝ)

end A099762

/-! ## A099762.P5507811693279581369

`(n+1)*A254371(n)/2`
-/

namespace A099762.P5507811693279581369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A254371 n : ℚ) / 2

end

end A099762.P5507811693279581369

namespace A099762

/-- `(n+1)*A254371(n)/2` -/
def P5507811693279581369.Spec : Prop :=
  ∀ n, P5507811693279581369.a n = (A099762 n : ℚ)

end A099762

/-! ## A099762.P9244694575314158825

`∑[n²*A273982(n+1)]`
-/

namespace A099762.P9244694575314158825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A273982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099762.P9244694575314158825

namespace A099762

/-- `∑[n²*A273982(n+1)]` -/
def P9244694575314158825.Spec : Prop :=
  ∀ n, P9244694575314158825.a n = A099762 n

end A099762

/-!
# A099764: a(n) = n^2 * (n+1)^2 * (n+2)^2 = 36*A001249(n-1).

The programs for A099764, the canonical program `A099764.P18377624873638177505` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099764 has offset 0).

The definition of A099764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)²*(n+2)²` (program `A099764.P18377624873638177505`, by `A099764.P18377624873638177505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099764.P18377624873638177505

`n²*(n+1)²*(n+2)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099764

/-- `n²*(n+1)²*(n+2)²` -/
def P18377624873638177505.Spec : Prop :=
  ∀ n, (P18377624873638177505.a n : ℤ) = A099764 n

theorem P18377624873638177505.correct : P18377624873638177505.Spec := by
  intro n
  simp only [A099764]

end A099764

/-! ## A099764.P6141100300981646618

`A001014(n+1)-A002593(n+1)`
-/

namespace A099764.P6141100300981646618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1) - A002593 (n + 1)

end

end A099764.P6141100300981646618

namespace A099764

/-- `A001014(n+1)-A002593(n+1)` -/
def P6141100300981646618.Spec : Prop :=
  ∀ n, P6141100300981646618.a n = A099764 n

end A099764

/-! ## A099764.P18154207239327793037

`∑[∑[a(n-1)+6]]²` with `a(0)=0`
-/

namespace A099764.P18154207239327793037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099764.P18154207239327793037

namespace A099764

/-- `∑[∑[a(n-1)+6]]²` -/
def P18154207239327793037.Spec : Prop :=
  ∀ n, (P18154207239327793037.a n : ℤ) = A099764 n

end A099764

/-! ## A099764.P6495729714017822533

`lcm(2, ((n+1)^3-(n+1))²)`
-/

namespace A099764.P6495729714017822533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ)) ^ 2)

end

end A099764.P6495729714017822533

namespace A099764

/-- `lcm(2, ((n+1)^3-(n+1))²)` -/
def P6495729714017822533.Spec : Prop :=
  ∀ n, (P6495729714017822533.a n : ℤ) = A099764 n

end A099764

/-! ## A099764.P15914021438063133789

`(2*n*∑[n+1])^gcd(2, 2*n)`
-/

namespace A099764.P15914021438063133789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ Nat.gcd 2 (2 * n)

end

end A099764.P15914021438063133789

namespace A099764

/-- `(2*n*∑[n+1])^gcd(2, 2*n)` -/
def P15914021438063133789.Spec : Prop :=
  ∀ n, (P15914021438063133789.a n : ℤ) = A099764 n

end A099764

/-! ## A099764.P15929280183893678793

`∑[A028896(n)]²`
-/

namespace A099764.P15929280183893678793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099764.P15929280183893678793

namespace A099764

/-- `∑[A028896(n)]²` -/
def P15929280183893678793.Spec : Prop :=
  ∀ n, P15929280183893678793.a n = A099764 n

end A099764

/-! ## A099764.P5815566012926467788

`A133754(n+1)²/(n+1)²²`
-/

namespace A099764.P5815566012926467788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133754 (n + 1) ^ 2 : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A099764.P5815566012926467788

namespace A099764

/-- `A133754(n+1)²/(n+1)²²` -/
def P5815566012926467788.Spec : Prop :=
  ∀ n, P5815566012926467788.a n = (A099764 n : ℚ)

end A099764

/-! ## A099764.P16739128443594708990

`A005563(n)^3+A005563(n)²`
-/

namespace A099764.P16739128443594708990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n ^ 3 + A005563 n ^ 2

end

end A099764.P16739128443594708990

namespace A099764

/-- `A005563(n)^3+A005563(n)²` -/
def P16739128443594708990.Spec : Prop :=
  ∀ n, P16739128443594708990.a n = A099764 n

end A099764

/-! ## A099764.P12574420427450921206

`Δ[2*C(∑[n], 2)]²`
-/

namespace A099764.P12574420427450921206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A099764.P12574420427450921206

namespace A099764

/-- `Δ[2*C(∑[n], 2)]²` -/
def P12574420427450921206.Spec : Prop :=
  ∀ n, P12574420427450921206.a n = A099764 n

end A099764

/-! ## A099764.P15079414526501836478

`A007531(n+2)²`
-/

namespace A099764.P15079414526501836478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 2) ^ 2

end

end A099764.P15079414526501836478

namespace A099764

/-- `A007531(n+2)²` -/
def P15079414526501836478.Spec : Prop :=
  ∀ n, P15079414526501836478.a n = A099764 n

end A099764

/-! ## A099764.P3278892799384194953

`∑[A242477(2*n+1)]²`
-/

namespace A099764.P3278892799384194953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099764.P3278892799384194953

namespace A099764

/-- `∑[A242477(2*n+1)]²` -/
def P3278892799384194953.Spec : Prop :=
  ∀ n, P3278892799384194953.a n = A099764 n

end A099764

/-! ## A099764.P7532507896316672975

`∑[A331952(2*n+1)]²`
-/

namespace A099764.P7532507896316672975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099764.P7532507896316672975

namespace A099764

/-- `∑[A331952(2*n+1)]²` -/
def P7532507896316672975.Spec : Prop :=
  ∀ n, P7532507896316672975.a n = A099764 n

end A099764

/-! ## A099764.P6648333995981142255

`A001014(n+1)-A105636(2*n+1)`
-/

namespace A099764.P6648333995981142255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1) - A105636 (2 * n + 1)

end

end A099764.P6648333995981142255

namespace A099764

/-- `A001014(n+1)-A105636(2*n+1)` -/
def P6648333995981142255.Spec : Prop :=
  ∀ n, P6648333995981142255.a n = A099764 n

end A099764

/-! ## A099764.P13745758564500317357

`∑[3*∩[2*n, ∑[2*n]]]²`
-/

namespace A099764.P13745758564500317357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099764.P13745758564500317357

namespace A099764

/-- `∑[3*∩[2*n, ∑[2*n]]]²` -/
def P13745758564500317357.Spec : Prop :=
  ∀ n, (P13745758564500317357.a n : ℤ) = A099764 n

end A099764

/-! ## A099764.P16508449387277289826

`(n*A065420(∑[n]))²`
-/

namespace A099764.P16508449387277289826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A065420 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A099764.P16508449387277289826

namespace A099764

/-- `(n*A065420(∑[n]))²` -/
def P16508449387277289826.Spec : Prop :=
  ∀ n, P16508449387277289826.a n = A099764 n

end A099764

/-! ## A099764.P10515776958901185130

`(n*A140880(∑[n]))²`
-/

namespace A099764.P10515776958901185130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A140880 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A099764.P10515776958901185130

namespace A099764

/-- `(n*A140880(∑[n]))²` -/
def P10515776958901185130.Spec : Prop :=
  ∀ n, P10515776958901185130.a n = A099764 n

end A099764

/-! ## A099764.P187199580576126457

`A362791(∑[n+1]+3)²`
-/

namespace A099764.P187199580576126457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362791 (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2

end

end A099764.P187199580576126457

namespace A099764

/-- `A362791(∑[n+1]+3)²` -/
def P187199580576126457.Spec : Prop :=
  ∀ n, P187199580576126457.a n = A099764 n

end A099764

/-! ## A099764.P6726358041707372170

`A262704(∑[n+1]+n)²`
-/

namespace A099764.P6726358041707372170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262704 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A099764.P6726358041707372170

namespace A099764

/-- `A262704(∑[n+1]+n)²` -/
def P6726358041707372170.Spec : Prop :=
  ∀ n, P6726358041707372170.a n = A099764 n

end A099764

/-! ## A099764.P705434660071306894

`A011379(n*(n+2))`
-/

namespace A099764.P705434660071306894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (n * (n + 2))

end

end A099764.P705434660071306894

namespace A099764

/-- `A011379(n*(n+2))` -/
def P705434660071306894.Spec : Prop :=
  ∀ n, P705434660071306894.a n = A099764 n

end A099764

/-! ## A099764.P3199308270442955542

`A185595((n+1)²)²`
-/

namespace A099764.P3199308270442955542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 ((n + 1) ^ 2) ^ 2

end

end A099764.P3199308270442955542

namespace A099764

/-- `A185595((n+1)²)²` -/
def P3199308270442955542.Spec : Prop :=
  ∀ n, P3199308270442955542.a n = A099764 n

end A099764

/-!
# A099765: a(n) = (1/Pi) * (2^n/n) * (n-1)! * Integral_{t>=0} (sin(t)/t)^n dt.

The programs for A099765, there is no canonical definition to state claims against.
-/

/-! ## A099765.P6641787010116325543

`A261398(n+1)/(n+1)`
-/

namespace A099765.P6641787010116325543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261398 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A099765.P6641787010116325543

/-! ## A099765.P2834377556691068641

`record[A000122(n)*A101842(n+1)]/(n+1)`
-/

namespace A099765.P2834377556691068641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A101842 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A099765.P2834377556691068641

/-! ## A099765.P563460376130758388

`A002260(A133263(n))*A101842(A253909(n))/(n+1)`
-/

namespace A099765.P563460376130758388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (A133263 n).toNat * A101842 (A253909 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A099765.P563460376130758388

/-! ## A099765.P792121053854251038

`A014963(A137688(n))*A101842(A253909(n))/(n+1)`
-/

namespace A099765.P792121053854251038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A137688 n).toNat * A101842 (A253909 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A099765.P792121053854251038

/-!
# A099766: Triangle read by rows: T(n,k) = number of unbordered binary words of length n and weight k, n >= 0, 0 <= k <= n.

The programs for A099766, there is no canonical definition to state claims against.
-/

/-! ## A099766.P10732327161396800280

`A036453(A022166(n))*A329054(n)`
-/

namespace A099766.P10732327161396800280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A022166 n).toNat * A329054 n

end

end A099766.P10732327161396800280

/-! ## A099766.P13581749160341441610

`A036453(A059922(n))*A329054(n)`
-/

namespace A099766.P13581749160341441610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A059922 n).toNat * A329054 n

end

end A099766.P13581749160341441610

/-! ## A099766.P2026252501966990838

`A036453(A309876(n))*A329054(n)`
-/

namespace A099766.P2026252501966990838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A309876 n).toNat * A329054 n

end

end A099766.P2026252501966990838

/-! ## A099766.P14985194333045658770

`A036453(A342088(n))*A329054(n)`
-/

namespace A099766.P14985194333045658770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A342088 n).toNat * A329054 n

end

end A099766.P14985194333045658770

/-!
# A099767: Number of n-digit palindromes in base n.

The programs for A099767, the canonical program `A099767.P2749011994588103638` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099767 has offset 2).

The definition of A099767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099767.P2749011994588103638

`(n+1)*(n+2)^(floor((n+3)/2)-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099767

/-- `(n+1)*(n+2)^(floor((n+3)/2)-1)` -/
def P2749011994588103638.Spec : Prop :=
  ∀ n, P2749011994588103638.a n = (A099767 (n + 2) : ℚ)

end A099767

/-! ## A099767.P5820998857618612988

`lcm(n+1, (n+2)^ceil(n/2))`
-/

namespace A099767.P5820998857618612988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)))

end

end A099767.P5820998857618612988

namespace A099767

/-- `lcm(n+1, (n+2)^ceil(n/2))` -/
def P5820998857618612988.Spec : Prop :=
  ∀ n, (P5820998857618612988.a n : ℤ) = A099767 (n + 2)

end A099767

/-! ## A099767.P7707814841674717725

`(n+2)^A080513(n)/(1/(n+1)+1)`
-/

namespace A099767.P7707814841674717725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A080513 n : ℤ) / (1 / (n + 1 : ℚ) + 1)

end

end A099767.P7707814841674717725

namespace A099767

/-- `(n+2)^A080513(n)/(1/(n+1)+1)` -/
def P7707814841674717725.Spec : Prop :=
  ∀ n, P7707814841674717725.a n = (A099767 (n + 2) : ℚ)

end A099767

/-! ## A099767.P1341931914380791725

`record[Δ[(A008619(n)+1)^A008624(n+1)]]`
-/

namespace A099767.P1341931914380791725
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n + 1 : ℚ) ^ (A008624 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099767.P1341931914380791725

namespace A099767

/-- `record[Δ[(A008619(n)+1)^A008624(n+1)]]` -/
def P1341931914380791725.Spec : Prop :=
  ∀ n, P1341931914380791725.a n = (A099767 (n + 2) : ℚ)

end A099767

/-! ## A099767.P11442383989638767646

`∏{d}[A060546(n), A006530(#)+n]`
-/

namespace A099767.P11442383989638767646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A006530 d + (n : ℤ))

end

end A099767.P11442383989638767646

namespace A099767

/-- `∏{d}[A060546(n), A006530(#)+n]` -/
def P11442383989638767646.Spec : Prop :=
  ∀ n, P11442383989638767646.a n = A099767 (n + 2)

end A099767

/-!
# A099768: Largest (or middle) entry in row n of A099766.

The programs for A099768, there is no canonical definition to state claims against.
-/

/-! ## A099768.P61645144669435966

`A099766(∑[or(1, n)]-1)`
-/

namespace A099768.P61645144669435966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099766 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A099768.P61645144669435966

/-! ## A099768.P1306158546983434606

`A099766(∑[and(1, n)+n])`
-/

namespace A099768.P1306158546983434606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099768.P1306158546983434606

/-! ## A099768.P15227480002587129936

`A099766(∑[2*ceil(n/2)])`
-/

namespace A099768.P15227480002587129936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099768.P15227480002587129936

/-! ## A099768.P856039061321234945

`A306008(n)+A056169(2*n+1)`
-/

namespace A099768.P856039061321234945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306008 n + A056169 (2 * n + 1)

end

end A099768.P856039061321234945

/-! ## A099768.P10698481175985000434

`A306008(n)+A257991(A099774(n+1))`
-/

namespace A099768.P10698481175985000434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306008 n + A257991 (A099774 (n + 1)).toNat

end

end A099768.P10698481175985000434

/-!
# A099770: Expansion of 1/((1-x)*(1-x^2)*(1-x^4)*(1-x^6)).

The programs for A099770, the canonical program `A099770.P18363296482415683708` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099770 has offset 0).

The definition of A099770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^4+x^5+x^8-x^9+x^10-x^11-x^12+x^13))` (program `A099770.P18363296482415683708`, by `A099770.P18363296482415683708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099770.P18363296482415683708

`ogf(1/(1-x-x^2+x^3-x^4+x^5+x^8-x^9+x^10-x^11-x^12+x^13))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099770

/-- `ogf(1/(1-x-x^2+x^3-x^4+x^5+x^8-x^9+x^10-x^11-x^12+x^13))` -/
def P18363296482415683708.Spec : Prop :=
  ∀ n, P18363296482415683708.a n = A099770 n

theorem P18363296482415683708.correct : P18363296482415683708.Spec := by
  intro n
  simp only [A099770]

end A099770

/-! ## A099770.P384824720311949234

`floor((2*n^3+39*n²+225*n+576)/576+(-1)^n*n*(n+13)/192)`
-/

namespace A099770.P384824720311949234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 3 + 39 * n ^ 2 + 225 * n + 576 : ℚ) / 576 + ((-1) ^ n * (n : ℤ) * (n + 13 : ℤ) : ℚ) / 192⌋

end

end A099770.P384824720311949234

namespace A099770

/-- `floor((2*n^3+39*n²+225*n+576)/576+(-1)^n*n*(n+13)/192)` -/
def P384824720311949234.Spec : Prop :=
  ∀ n, P384824720311949234.a n = A099770 n

end A099770

/-! ## A099770.P17702088808317385018

`A000601(A004526(n))`
-/

namespace A099770.P17702088808317385018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (A004526 n).toNat

end

end A099770.P17702088808317385018

namespace A099770

/-- `A000601(A004526(n))` -/
def P17702088808317385018.Spec : Prop :=
  ∀ n, P17702088808317385018.a n = A099770 n

end A099770

/-! ## A099770.P1887955540221872261

`A000601(floor(n/2))`
-/

namespace A099770.P1887955540221872261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 ⌊(n : ℚ) / 2⌋.toNat

end

end A099770.P1887955540221872261

namespace A099770

/-- `A000601(floor(n/2))` -/
def P1887955540221872261.Spec : Prop :=
  ∀ n, P1887955540221872261.a n = A099770 n

end A099770

/-! ## A099770.P6343231261586559129

`A254594(or(1, n)-1)`
-/

namespace A099770.P6343231261586559129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (Nat.lor 1 n - 1)

end

end A099770.P6343231261586559129

namespace A099770

/-- `A254594(or(1, n)-1)` -/
def P6343231261586559129.Spec : Prop :=
  ∀ n, P6343231261586559129.a n = A099770 n

end A099770

/-! ## A099770.P1456759249638084594

`∑[log2(gcd(2, n))*A266755(n)]`
-/

namespace A099770.P1456759249638084594
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A266755 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P1456759249638084594

namespace A099770

/-- `∑[log2(gcd(2, n))*A266755(n)]` -/
def P1456759249638084594.Spec : Prop :=
  ∀ n, P1456759249638084594.a n = (A099770 n : ℝ)

end A099770

/-! ## A099770.P1116897757083526229

`A001400(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A099770.P1116897757083526229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A001400 n - a (n - 3)

end

end A099770.P1116897757083526229

namespace A099770

/-- `A001400(n)-a(n-3)` -/
def P1116897757083526229.Spec : Prop :=
  ∀ n, P1116897757083526229.a n = A099770 n

end A099770

/-! ## A099770.P2175468425829863933

`A029002(A052928(n))`
-/

namespace A099770.P2175468425829863933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029002 (A052928 n).toNat

end

end A099770.P2175468425829863933

namespace A099770

/-- `A029002(A052928(n))` -/
def P2175468425829863933.Spec : Prop :=
  ∀ n, P2175468425829863933.a n = A099770 n

end A099770

/-! ## A099770.P1567288192519276537

`A254594(A109613(n)-1)`
-/

namespace A099770.P1567288192519276537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (A109613 n - 1).toNat

end

end A099770.P1567288192519276537

namespace A099770

/-- `A254594(A109613(n)-1)` -/
def P1567288192519276537.Spec : Prop :=
  ∀ n, P1567288192519276537.a n = A099770 n

end A099770

/-! ## A099770.P1525260500232870262

`A254594(xor(1, A109613(n)))`
-/

namespace A099770.P1525260500232870262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (Int.xor 1 (A109613 n)).toNat

end

end A099770.P1525260500232870262

namespace A099770

/-- `A254594(xor(1, A109613(n)))` -/
def P1525260500232870262.Spec : Prop :=
  ∀ n, P1525260500232870262.a n = A099770 n

end A099770

/-! ## A099770.P775944749508690228

`∑[A008743(n)*A059841(n)]`
-/

namespace A099770.P775944749508690228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P775944749508690228

namespace A099770

/-- `∑[A008743(n)*A059841(n)]` -/
def P775944749508690228.Spec : Prop :=
  ∀ n, P775944749508690228.a n = A099770 n

end A099770

/-! ## A099770.P3122793871811247690

`∑[A059841(n)*A266755(n)]`
-/

namespace A099770.P3122793871811247690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P3122793871811247690

namespace A099770

/-- `∑[A059841(n)*A266755(n)]` -/
def P3122793871811247690.Spec : Prop :=
  ∀ n, P3122793871811247690.a n = A099770 n

end A099770

/-! ## A099770.P14882109621375872051

`∑[∑[A033999(n)]*A266755(n)]`
-/

namespace A099770.P14882109621375872051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P14882109621375872051

namespace A099770

/-- `∑[∑[A033999(n)]*A266755(n)]` -/
def P14882109621375872051.Spec : Prop :=
  ∀ n, P14882109621375872051.a n = A099770 n

end A099770

/-! ## A099770.P5822420678431693216

`∑[(1-A000035(n))*A008743(n)]`
-/

namespace A099770.P5822420678431693216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A008743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P5822420678431693216

namespace A099770

/-- `∑[(1-A000035(n))*A008743(n)]` -/
def P5822420678431693216.Spec : Prop :=
  ∀ n, P5822420678431693216.a n = A099770 n

end A099770

/-! ## A099770.P3900998216961368494

`∑[(A109613(n)-n)*A008743(n)]`
-/

namespace A099770.P3900998216961368494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - (n : ℤ)) * A008743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P3900998216961368494

namespace A099770

/-- `∑[(A109613(n)-n)*A008743(n)]` -/
def P3900998216961368494.Spec : Prop :=
  ∀ n, P3900998216961368494.a n = A099770 n

end A099770

/-! ## A099770.P15156577512348917772

`∑[∑[A106400(n)]²*A266755(n)]`
-/

namespace A099770.P15156577512348917772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 * A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099770.P15156577512348917772

namespace A099770

/-- `∑[∑[A106400(n)]²*A266755(n)]` -/
def P15156577512348917772.Spec : Prop :=
  ∀ n, P15156577512348917772.a n = A099770 n

end A099770

/-! ## A099770.P17612367410127427606

`A254594(xor(1, n+1))`
-/

namespace A099770.P17612367410127427606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (Nat.xor 1 (n + 1))

end

end A099770.P17612367410127427606

namespace A099770

/-- `A254594(xor(1, n+1))` -/
def P17612367410127427606.Spec : Prop :=
  ∀ n, P17612367410127427606.a n = A099770 n

end A099770

/-! ## A099770.P13455797937587071069

`A254594(A004442(n+1))`
-/

namespace A099770.P13455797937587071069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (A004442 (n + 1)).toNat

end

end A099770.P13455797937587071069

namespace A099770

/-- `A254594(A004442(n+1))` -/
def P13455797937587071069.Spec : Prop :=
  ∀ n, P13455797937587071069.a n = A099770 n

end A099770

/-! ## A099770.P11172095235044600111

`A181120(A080513(n+1)+1)`
-/

namespace A099770.P11172095235044600111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A080513 (n + 1) + 1).toNat

end

end A099770.P11172095235044600111

namespace A099770

/-- `A181120(A080513(n+1)+1)` -/
def P11172095235044600111.Spec : Prop :=
  ∀ n, P11172095235044600111.a n = A099770 n

end A099770

/-! ## A099770.P11016984728096292848

`A254594(n-A056594(n+1)²)`
-/

namespace A099770.P11016984728096292848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 ((n : ℤ) - A056594 (n + 1) ^ 2).toNat

end

end A099770.P11016984728096292848

namespace A099770

/-- `A254594(n-A056594(n+1)²)` -/
def P11016984728096292848.Spec : Prop :=
  ∀ n, P11016984728096292848.a n = A099770 n

end A099770

/-!
# A099772: 

The programs for A099772, there is no canonical definition to state claims against.
-/

/-! ## A099772.P14850844041987232869

`2^p?[∏{d}[n, #]]²`
-/

namespace A099772.P14850844041987232869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A099772.P14850844041987232869

/-! ## A099772.P5113299485518500235

`2^p?[comp[n²]]²`
-/

namespace A099772.P5113299485518500235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A099772.P5113299485518500235

/-! ## A099772.P14112637789898398835

`2^A000040(n+1)²`
-/

namespace A099772.P14112637789898398835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) ^ 2 : ℤ)

end

end A099772.P14112637789898398835

/-!
# A099773: Number of partitions of n into odd prime parts.

The programs for A099773, there is no canonical definition to state claims against.
-/

/-! ## A099773.P1912436100140514387

`A283875(n)-A178798(A239239(n))`
-/

namespace A099773.P1912436100140514387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283875 n - A178798 (A239239 n).toNat

end

end A099773.P1912436100140514387

/-! ## A099773.P7313240697388933629

`A283875(n)-A163533(A251762(n))`
-/

namespace A099773.P7313240697388933629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283875 n - A163533 (A251762 n).toNat

end

end A099773.P7313240697388933629

/-! ## A099773.P7685616287923765963

`A283875(n)%A028491(n+1)`
-/

namespace A099773.P7685616287923765963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283875 n) (A028491 (n + 1))

end

end A099773.P7685616287923765963

/-! ## A099773.P550139136848165805

`A283875(n)+A181405(A142468(n))`
-/

namespace A099773.P550139136848165805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283875 n + A181405 (A142468 n).toNat

end

end A099773.P550139136848165805

/-! ## A099773.P13227383853151112600

`A283875(n)^A227690(A331126(n))`
-/

namespace A099773.P13227383853151112600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283875 n : ℚ) ^ (A227690 (A331126 n).toNat : ℤ)

end

end A099773.P13227383853151112600

/-!
# A099774: Number of divisors of 2*n-1.

The programs for A099774, the canonical program `A099774.P14550011835521758030` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099774 has offset 1).

The definition of A099774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099774.P14550011835521758030

`∏{e}[Δ[n²], #+1]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099774

/-- `∏{e}[Δ[n²], #+1]` -/
def P14550011835521758030.Spec : Prop :=
  ∀ n, (P14550011835521758030.a n : ℤ) = A099774 (n + 1)

theorem P14550011835521758030.correct : P14550011835521758030.Spec := by
  intro n
  simp only [A099774, Nat.add_sub_cancel]

end A099774

/-! ## A099774.P11956508831960608852

`∑{d}[comp[2*n], #%2]`
-/

namespace A099774.P11956508831960608852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 2

end

end A099774.P11956508831960608852

namespace A099774

/-- `∑{d}[comp[2*n], #%2]` -/
def P11956508831960608852.Spec : Prop :=
  ∀ n, (P11956508831960608852.a n : ℤ) = A099774 (n + 1)

end A099774

/-! ## A099774.P12519107766380667884

`∑{d}[comp[2*n], gcd(2, #)]`
-/

namespace A099774.P12519107766380667884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d

end

end A099774.P12519107766380667884

namespace A099774

/-- `∑{d}[comp[2*n], gcd(2, #)]` -/
def P12519107766380667884.Spec : Prop :=
  ∀ n, (P12519107766380667884.a n : ℤ) = A099774 (n + 1)

end A099774

/-! ## A099774.P5685830768553727938

`∑{d}[comp[2*n], and(1, #)]`
-/

namespace A099774.P5685830768553727938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A099774.P5685830768553727938

namespace A099774

/-- `∑{d}[comp[2*n], and(1, #)]` -/
def P5685830768553727938.Spec : Prop :=
  ∀ n, (P5685830768553727938.a n : ℤ) = A099774 (n + 1)

end A099774

/-! ## A099774.P10240727473470504085

`∑{d}[comp[2*n], ceil(acot(#))]`
-/

namespace A099774.P10240727473470504085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A099774.P10240727473470504085

namespace A099774

/-- `∑{d}[comp[2*n], ceil(acot(#))]` -/
def P10240727473470504085.Spec : Prop :=
  ∀ n, P10240727473470504085.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P8145112252218758922

`∑{d}[2*n+1, and(1, #)²]`
-/

namespace A099774.P8145112252218758922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d ^ 2

end

end A099774.P8145112252218758922

namespace A099774

/-- `∑{d}[2*n+1, and(1, #)²]` -/
def P8145112252218758922.Spec : Prop :=
  ∀ n, (P8145112252218758922.a n : ℤ) = A099774 (n + 1)

end A099774

/-! ## A099774.P16626007096006196802

`∑{d}[2*n+1, sqrt(and(1, #))]`
-/

namespace A099774.P16626007096006196802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (Nat.land 1 d : ℝ)

end

end A099774.P16626007096006196802

namespace A099774

/-- `∑{d}[2*n+1, sqrt(and(1, #))]` -/
def P16626007096006196802.Spec : Prop :=
  ∀ n, P16626007096006196802.a n = (A099774 (n + 1) : ℝ)

end A099774

/-! ## A099774.P15203268295262324054

`∑{d}[2*n+1, ceil(1/#)]`
-/

namespace A099774.P15203268295262324054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A099774.P15203268295262324054

namespace A099774

/-- `∑{d}[2*n+1, ceil(1/#)]` -/
def P15203268295262324054.Spec : Prop :=
  ∀ n, P15203268295262324054.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P11324092625796793379

`round(∑{d}[2*n+1, sin(atan(#))])`
-/

namespace A099774.P11324092625796793379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), Real.sin (Real.arctan (d : ℝ)))

end

end A099774.P11324092625796793379

namespace A099774

/-- `round(∑{d}[2*n+1, sin(atan(#))])` -/
def P11324092625796793379.Spec : Prop :=
  ∀ n, P11324092625796793379.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P16672956434105987658

`round(∑{d}[2*n+1, cos(acot(#))])`
-/

namespace A099774.P16672956434105987658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), Real.cos (SequenceMachineLib.acot (d : ℝ)))

end

end A099774.P16672956434105987658

namespace A099774

/-- `round(∑{d}[2*n+1, cos(acot(#))])` -/
def P16672956434105987658.Spec : Prop :=
  ∀ n, P16672956434105987658.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P5533761822375264281

`round(∑{d}[2*n+1, cosh(acot(#))])`
-/

namespace A099774.P5533761822375264281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), Real.cosh (SequenceMachineLib.acot (d : ℝ)))

end

end A099774.P5533761822375264281

namespace A099774

/-- `round(∑{d}[2*n+1, cosh(acot(#))])` -/
def P5533761822375264281.Spec : Prop :=
  ∀ n, P5533761822375264281.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P9691951691728210605

`abs(∑{d}[2*n+1, (-1)^#])`
-/

namespace A099774.P9691951691728210605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d|

end

end A099774.P9691951691728210605

namespace A099774

/-- `abs(∑{d}[2*n+1, (-1)^#])` -/
def P9691951691728210605.Spec : Prop :=
  ∀ n, P9691951691728210605.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P6958698321708635909

`-∑{d}[2*n+1, (-1)^#]`
-/

namespace A099774.P6958698321708635909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-1) ^ d)

end

end A099774.P6958698321708635909

namespace A099774

/-- `-∑{d}[2*n+1, (-1)^#]` -/
def P6958698321708635909.Spec : Prop :=
  ∀ n, P6958698321708635909.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P308275687109437494

`∑{d}[2*n+1, C(2, #)!]-1`
-/

namespace A099774.P308275687109437494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1

end

end A099774.P308275687109437494

namespace A099774

/-- `∑{d}[2*n+1, C(2, #)!]-1` -/
def P308275687109437494.Spec : Prop :=
  ∀ n, P308275687109437494.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P14628340351107294442

`A000005(Δ[n²])`
-/

namespace A099774.P14628340351107294442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099774.P14628340351107294442

namespace A099774

/-- `A000005(Δ[n²])` -/
def P14628340351107294442.Spec : Prop :=
  ∀ n, P14628340351107294442.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P4025126489737314205

`A060764(Δ[n²])`
-/

namespace A099774.P4025126489737314205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099774.P4025126489737314205

namespace A099774

/-- `A060764(Δ[n²])` -/
def P4025126489737314205.Spec : Prop :=
  ∀ n, P4025126489737314205.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P1541106861577576493

`A174273(Δ[n²])`
-/

namespace A099774.P1541106861577576493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099774.P1541106861577576493

namespace A099774

/-- `A174273(Δ[n²])` -/
def P1541106861577576493.Spec : Prop :=
  ∀ n, P1541106861577576493.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P16930651220851060004

`A320111(Δ[n²])`
-/

namespace A099774.P16930651220851060004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099774.P16930651220851060004

namespace A099774

/-- `A320111(Δ[n²])` -/
def P16930651220851060004.Spec : Prop :=
  ∀ n, P16930651220851060004.a n = A099774 (n + 1)

end A099774

/-! ## A099774.P16994743085568686324

`A000005(4*n+2)/2`
-/

namespace A099774.P16994743085568686324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (4 * n + 2) : ℚ) / 2

end

end A099774.P16994743085568686324

namespace A099774

/-- `A000005(4*n+2)/2` -/
def P16994743085568686324.Spec : Prop :=
  ∀ n, P16994743085568686324.a n = (A099774 (n + 1) : ℚ)

end A099774

/-! ## A099774.P10055858132174889742

`and(63, A000005(2*n+1))`
-/

namespace A099774.P10055858132174889742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A000005 (2 * n + 1))

end

end A099774.P10055858132174889742

namespace A099774

/-- `and(63, A000005(2*n+1))` -/
def P10055858132174889742.Spec : Prop :=
  ∀ n, P10055858132174889742.a n = A099774 (n + 1)

end A099774

/-!
# A099775: Primes of the form pq - 6, where p and q are consecutive primes.

The programs for A099775, there is no canonical definition to state claims against.
-/

/-! ## A099775.P17160955499354655004

`p?[p?[xor(1, n)+1]*p?[2*n+1]-6]`
-/

namespace A099775.P17160955499354655004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099775.P17160955499354655004

/-! ## A099775.P12005741943153230770

`p?[∑[A109805(n+1)]]`
-/

namespace A099775.P12005741943153230770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099775.P12005741943153230770

/-! ## A099775.P6944930313368095743

`p?[A023515(n+1)-5]`
-/

namespace A099775.P6944930313368095743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099775.P6944930313368095743

/-! ## A099775.P17360946701855589126

`p?[A006094(n+1)-6]`
-/

namespace A099775.P17360946701855589126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099775.P17360946701855589126

/-! ## A099775.P3304018065236204079

`p?[record[A006530(n+2)]*p?[2*n+1]-6]`
-/

namespace A099775.P3304018065236204079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099775.P3304018065236204079

/-!
# A099776: Length of the hypotenuse of an integer right triangle with the hypotenuse being one more than the longer side. The shorter sides are just consecutive odd numbers 3, 5, 7, ...

The programs for A099776, the canonical program `A099776.P2051460282799887681` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099776 has offset 1).

The definition of A099776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099776.P2051460282799887681

`(n+1)²+(n+2)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099776

/-- `(n+1)²+(n+2)²` -/
def P2051460282799887681.Spec : Prop :=
  ∀ n, (P2051460282799887681.a n : ℤ) = A099776 (n + 1)

theorem P2051460282799887681.correct : P2051460282799887681.Spec := by
  intro n
  simp only [A099776, Nat.add_sub_cancel]

end A099776

/-! ## A099776.P6638150422537883554

`∑[floor(4/acot(n+1))]`
-/

namespace A099776.P6638150422537883554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099776.P6638150422537883554

namespace A099776

/-- `∑[floor(4/acot(n+1))]` -/
def P6638150422537883554.Spec : Prop :=
  ∀ n, P6638150422537883554.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P18118756591943815571

`or(1, 4*C(n+2, 2))`
-/

namespace A099776.P18118756591943815571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * Nat.choose (n + 2) 2)

end

end A099776.P18118756591943815571

namespace A099776

/-- `or(1, 4*C(n+2, 2))` -/
def P18118756591943815571.Spec : Prop :=
  ∀ n, (P18118756591943815571.a n : ℤ) = A099776 (n + 1)

end A099776

/-! ## A099776.P12015741453007521223

`xor(1, 4*C(n+2, 2))`
-/

namespace A099776.P12015741453007521223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * Nat.choose (n + 2) 2)

end

end A099776.P12015741453007521223

namespace A099776

/-- `xor(1, 4*C(n+2, 2))` -/
def P12015741453007521223.Spec : Prop :=
  ∀ n, (P12015741453007521223.a n : ℤ) = A099776 (n + 1)

end A099776

/-! ## A099776.P1461122137978195226

`∑[a(n-1)+4]` with `a(0)=5, a(1)=8`
-/

namespace A099776.P1461122137978195226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099776.P1461122137978195226

namespace A099776

/-- `∑[a(n-1)+4]` -/
def P1461122137978195226.Spec : Prop :=
  ∀ n, (P1461122137978195226.a n : ℤ) = A099776 (n + 1)

end A099776

/-! ## A099776.P16525866118180473693

`or(1, ∑[ogf(4/(1-2x+x^2))])`
-/

namespace A099776.P16525866118180473693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099776.P16525866118180473693

namespace A099776

/-- `or(1, ∑[ogf(4/(1-2x+x^2))])` -/
def P16525866118180473693.Spec : Prop :=
  ∀ n, P16525866118180473693.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P6371869788481518481

`xor(1, ∑[ogf(4/(1-2x+x^2))])`
-/

namespace A099776.P6371869788481518481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099776.P6371869788481518481

namespace A099776

/-- `xor(1, ∑[ogf(4/(1-2x+x^2))])` -/
def P6371869788481518481.Spec : Prop :=
  ∀ n, P6371869788481518481.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P9699814166194768003

`∑[ogf((5-2x+x^2)/(1-2x+x^2))]`
-/

namespace A099776.P9699814166194768003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099776.P9699814166194768003

namespace A099776

/-- `∑[ogf((5-2x+x^2)/(1-2x+x^2))]` -/
def P9699814166194768003.Spec : Prop :=
  ∀ n, P9699814166194768003.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P6152246892516700538

`ogf((5-2x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A099776.P6152246892516700538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, 1] [1, -3, 3, -1] n

end

end A099776.P6152246892516700538

namespace A099776

/-- `ogf((5-2x+x^2)/(1-3x+3x^2-x^3))` -/
def P6152246892516700538.Spec : Prop :=
  ∀ n, P6152246892516700538.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P11525981019190067398

`record[2*n*(n-3)+5]`
-/

namespace A099776.P11525981019190067398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 3)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099776.P11525981019190067398

namespace A099776

/-- `record[2*n*(n-3)+5]` -/
def P11525981019190067398.Spec : Prop :=
  ∀ n, P11525981019190067398.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P2859519960780531730

`Δ[4*C(n+2, 3)+n]`
-/

namespace A099776.P2859519960780531730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 2) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A099776.P2859519960780531730

namespace A099776

/-- `Δ[4*C(n+2, 3)+n]` -/
def P2859519960780531730.Spec : Prop :=
  ∀ n, P2859519960780531730.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P2496357363542311599

`ceil(record[(2*n-3)²/2])`
-/

namespace A099776.P2496357363542311599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A099776.P2496357363542311599

namespace A099776

/-- `ceil(record[(2*n-3)²/2])` -/
def P2496357363542311599.Spec : Prop :=
  ∀ n, P2496357363542311599.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P18183791268721946861

`round(record[(2*n-3)²/2])`
-/

namespace A099776.P18183791268721946861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A099776.P18183791268721946861

namespace A099776

/-- `round(record[(2*n-3)²/2])` -/
def P18183791268721946861.Spec : Prop :=
  ∀ n, P18183791268721946861.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P12024697437442570802

`∑[(n+1)*(ceil(acot(n))+3)]`
-/

namespace A099776.P12024697437442570802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099776.P12024697437442570802

namespace A099776

/-- `∑[(n+1)*(ceil(acot(n))+3)]` -/
def P12024697437442570802.Spec : Prop :=
  ∀ n, P12024697437442570802.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P4492430287932972520

`ceil(2/acot((n+1)*(n+2)))`
-/

namespace A099776.P4492430287932972520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((n + 1) * (n + 2) : ℝ)⌉

end

end A099776.P4492430287932972520

namespace A099776

/-- `ceil(2/acot((n+1)*(n+2)))` -/
def P4492430287932972520.Spec : Prop :=
  ∀ n, P4492430287932972520.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P5701020068326871318

`round(2*(n+2)/acot(n+1))`
-/

namespace A099776.P5701020068326871318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n + 2 : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A099776.P5701020068326871318

namespace A099776

/-- `round(2*(n+2)/acot(n+1))` -/
def P5701020068326871318.Spec : Prop :=
  ∀ n, P5701020068326871318.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P10041694943647188522

`abs(C(2*(n+2), 2)-(n+1))`
-/

namespace A099776.P10041694943647188522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * (n + 2)) 2 : ℤ) - (n + 1 : ℤ)|

end

end A099776.P10041694943647188522

namespace A099776

/-- `abs(C(2*(n+2), 2)-(n+1))` -/
def P10041694943647188522.Spec : Prop :=
  ∀ n, P10041694943647188522.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P4606324293728529244

`and((n+3)*2*n+5, -3)`
-/

namespace A099776.P4606324293728529244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 3) * (2 * n) + 5 : ℤ) (-3)

end

end A099776.P4606324293728529244

namespace A099776

/-- `and((n+3)*2*n+5, -3)` -/
def P4606324293728529244.Spec : Prop :=
  ∀ n, P4606324293728529244.a n = A099776 (n + 1)

end A099776

/-! ## A099776.P9377533607553021943

`abs(a(n-1)+4*(n+1))` with `a(0)=5`
-/

namespace A099776.P9377533607553021943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * (n + 1)

end

end A099776.P9377533607553021943

namespace A099776

/-- `abs(a(n-1)+4*(n+1))` -/
def P9377533607553021943.Spec : Prop :=
  ∀ n, (P9377533607553021943.a n : ℤ) = A099776 (n + 1)

theorem P9377533607553021943.correct : P9377533607553021943.Spec := by
  intro n
  induction n with
  | zero => simp [A099776, A099776.P9377533607553021943.a, A099776.P2051460282799887681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A099776, Nat.add_sub_cancel, A099776.P9377533607553021943.a, A099776.P2051460282799887681.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A099776

/-! ## A099776.P6869788711140458838

`floor(a(n-1)+4*(n+1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A099776.P6869788711140458838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * (n + 1)

end

end A099776.P6869788711140458838

namespace A099776

/-- `floor(a(n-1)+4*(n+1))` -/
def P6869788711140458838.Spec : Prop :=
  ∀ n, (P6869788711140458838.a n : ℤ) = A099776 (n + 1)

theorem P6869788711140458838.correct : P6869788711140458838.Spec := by
  intro n
  induction n with
  | zero => simp [A099776, A099776.P6869788711140458838.a, A099776.P2051460282799887681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A099776, Nat.add_sub_cancel, A099776.P6869788711140458838.a, A099776.P2051460282799887681.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A099776

/-!
# A099777: Number of divisors of 2n.

The programs for A099777, the canonical program `A099777.P11792433152824821401` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099777 has offset 1).

The definition of A099777 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099777.P11792433152824821401

`A000005(n+1)+A001227(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099777

/-- `A000005(n+1)+A001227(n+1)` -/
def P11792433152824821401.Spec : Prop :=
  ∀ n, P11792433152824821401.a n = A099777 (n + 1)

theorem P11792433152824821401.correct : P11792433152824821401.Spec := by
  intro n
  simp only [A099777, Nat.add_sub_cancel]

end A099777

/-! ## A099777.P15028538309011940573

`∏{e}[2*(n+1), #+1]`
-/

namespace A099777.P15028538309011940573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A099777.P15028538309011940573

namespace A099777

/-- `∏{e}[2*(n+1), #+1]` -/
def P15028538309011940573.Spec : Prop :=
  ∀ n, (P15028538309011940573.a n : ℤ) = A099777 (n + 1)

end A099777

/-! ## A099777.P17093494927221882622

`∑{d}[n+1, #%2+1]`
-/

namespace A099777.P17093494927221882622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1)

end

end A099777.P17093494927221882622

namespace A099777

/-- `∑{d}[n+1, #%2+1]` -/
def P17093494927221882622.Spec : Prop :=
  ∀ n, (P17093494927221882622.a n : ℤ) = A099777 (n + 1)

end A099777

/-! ## A099777.P11328489853463674813

`∑{d}[n+1, gcd(2, #+1)]`
-/

namespace A099777.P11328489853463674813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 (d + 1)

end

end A099777.P11328489853463674813

namespace A099777

/-- `∑{d}[n+1, gcd(2, #+1)]` -/
def P11328489853463674813.Spec : Prop :=
  ∀ n, (P11328489853463674813.a n : ℤ) = A099777 (n + 1)

end A099777

/-! ## A099777.P12088148322842143434

`∑{d}[n+1, and(1, #)+1]`
-/

namespace A099777.P12088148322842143434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + 1)

end

end A099777.P12088148322842143434

namespace A099777

/-- `∑{d}[n+1, and(1, #)+1]` -/
def P12088148322842143434.Spec : Prop :=
  ∀ n, (P12088148322842143434.a n : ℤ) = A099777 (n + 1)

end A099777

/-! ## A099777.P3726888597833230265

`∑{d}[n+1, lcm(2, #)/#]`
-/

namespace A099777.P3726888597833230265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / (d : ℚ)

end

end A099777.P3726888597833230265

namespace A099777

/-- `∑{d}[n+1, lcm(2, #)/#]` -/
def P3726888597833230265.Spec : Prop :=
  ∀ n, P3726888597833230265.a n = (A099777 (n + 1) : ℚ)

end A099777

/-! ## A099777.P2181198724027320698

`∑{d}[n+1, or(#, -2)+3]`
-/

namespace A099777.P2181198724027320698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.lor (d : ℤ) (-2) + 3)

end

end A099777.P2181198724027320698

namespace A099777

/-- `∑{d}[n+1, or(#, -2)+3]` -/
def P2181198724027320698.Spec : Prop :=
  ∀ n, P2181198724027320698.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P14916377809387439842

`∑{d}[2*(n+1), ceil(1/#)]`
-/

namespace A099777.P14916377809387439842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A099777.P14916377809387439842

namespace A099777

/-- `∑{d}[2*(n+1), ceil(1/#)]` -/
def P14916377809387439842.Spec : Prop :=
  ∀ n, P14916377809387439842.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P13183618917620820520

`Δ[A113241(n)]+1`
-/

namespace A099777.P13183618917620820520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A099777.P13183618917620820520

namespace A099777

/-- `Δ[A113241(n)]+1` -/
def P13183618917620820520.Spec : Prop :=
  ∀ n, P13183618917620820520.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P1215271829905068813

`A066660(n+1)+1`
-/

namespace A099777.P1215271829905068813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) + 1

end

end A099777.P1215271829905068813

namespace A099777

/-- `A066660(n+1)+1` -/
def P1215271829905068813.Spec : Prop :=
  ∀ n, P1215271829905068813.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P6744578876500028156

`A069930(n+1)+2`
-/

namespace A099777.P6744578876500028156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + 2

end

end A099777.P6744578876500028156

namespace A099777

/-- `A069930(n+1)+2` -/
def P6744578876500028156.Spec : Prop :=
  ∀ n, P6744578876500028156.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P1085922791251050710

`A000005(2*(n+1))`
-/

namespace A099777.P1085922791251050710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1))

end

end A099777.P1085922791251050710

namespace A099777

/-- `A000005(2*(n+1))` -/
def P1085922791251050710.Spec : Prop :=
  ∀ n, P1085922791251050710.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P8448935246745638378

`A340273(2*(n+1))`
-/

namespace A099777.P8448935246745638378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (2 * (n + 1))

end

end A099777.P8448935246745638378

namespace A099777

/-- `A340273(2*(n+1))` -/
def P8448935246745638378.Spec : Prop :=
  ∀ n, P8448935246745638378.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P5727804545177038045

`A111150(n+1)/2+1`
-/

namespace A099777.P5727804545177038045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111150 (n + 1) : ℚ) / 2 + 1

end

end A099777.P5727804545177038045

namespace A099777

/-- `A111150(n+1)/2+1` -/
def P5727804545177038045.Spec : Prop :=
  ∀ n, P5727804545177038045.a n = (A099777 (n + 1) : ℚ)

end A099777

/-! ## A099777.P3807668031820213742

`2-A378216(2*(n+1))`
-/

namespace A099777.P3807668031820213742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 (2 * (n + 1))

end

end A099777.P3807668031820213742

namespace A099777

/-- `2-A378216(2*(n+1))` -/
def P3807668031820213742.Spec : Prop :=
  ∀ n, P3807668031820213742.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P7721113353841928419

`2-A234306(n+1)+n`
-/

namespace A099777.P7721113353841928419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A234306 (n + 1) + (n : ℤ)

end

end A099777.P7721113353841928419

namespace A099777

/-- `2-A234306(n+1)+n` -/
def P7721113353841928419.Spec : Prop :=
  ∀ n, P7721113353841928419.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P109449943092733908

`abs(A000005(Δ[n²]+1)-1)+1`
-/

namespace A099777.P109449943092733908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1| + 1

end

end A099777.P109449943092733908

namespace A099777

/-- `abs(A000005(Δ[n²]+1)-1)+1` -/
def P109449943092733908.Spec : Prop :=
  ∀ n, P109449943092733908.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P7175205416645399760

`A008619(A111150(n+1))`
-/

namespace A099777.P7175205416645399760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111150 (n + 1)).toNat

end

end A099777.P7175205416645399760

namespace A099777

/-- `A008619(A111150(n+1))` -/
def P7175205416645399760.Spec : Prop :=
  ∀ n, P7175205416645399760.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P10721352525985431510

`A001227(n+1)*A085058(n)`
-/

namespace A099777.P10721352525985431510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A085058 n

end

end A099777.P10721352525985431510

namespace A099777

/-- `A001227(n+1)*A085058(n)` -/
def P10721352525985431510.Spec : Prop :=
  ∀ n, P10721352525985431510.a n = A099777 (n + 1)

end A099777

/-! ## A099777.P10465132235501019145

`A069735(n+1)+A048272(n+1)`
-/

namespace A099777.P10465132235501019145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) + A048272 (n + 1)

end

end A099777.P10465132235501019145

namespace A099777

/-- `A069735(n+1)+A048272(n+1)` -/
def P10465132235501019145.Spec : Prop :=
  ∀ n, P10465132235501019145.a n = A099777 (n + 1)

end A099777

/-!
# A099779: a(n) = ceiling( 1/2 + (Sum_{i=0..n-1}C(n,i)*C(n,i+1))/2^(n+1) ).

The programs for A099779, the canonical program `A099779.P12361820023365817871` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099779 has offset 2).

The definition of A099779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099779.P12361820023365817871

`ceil(1/2+(n+2)*C(2*(n+2), n+2)/((n+3)*2^(n+3)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099779

/-- `ceil(1/2+(n+2)*C(2*(n+2), n+2)/((n+3)*2^(n+3)))` -/
def P12361820023365817871.Spec : Prop :=
  ∀ n, P12361820023365817871.a n = A099779 (n + 2)

theorem P12361820023365817871.correct : P12361820023365817871.Spec := by
  intro n
  simp only [A099779, Nat.add_sub_cancel]

end A099779

/-! ## A099779.P6509469815584582688

`Δ[A065033(A024502(n+2))]+1`
-/

namespace A099779.P6509469815584582688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A024502 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A099779.P6509469815584582688

namespace A099779

/-- `Δ[A065033(A024502(n+2))]+1` -/
def P6509469815584582688.Spec : Prop :=
  ∀ n, P6509469815584582688.a n = A099779 (n + 2)

end A099779

/-! ## A099779.P13722979305225930794

`A257639(3*A086631(n))`
-/

namespace A099779.P13722979305225930794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (3 * A086631 n).toNat

end

end A099779.P13722979305225930794

namespace A099779

/-- `A257639(3*A086631(n))` -/
def P13722979305225930794.Spec : Prop :=
  ∀ n, P13722979305225930794.a n = A099779 (n + 2)

end A099779

/-! ## A099779.P6758643097065926524

`A305734(A089408(n))+A063886(n)`
-/

namespace A099779.P6758643097065926524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305734 (A089408 n).toNat + A063886 n

end

end A099779.P6758643097065926524

namespace A099779

/-- `A305734(A089408(n))+A063886(n)` -/
def P6758643097065926524.Spec : Prop :=
  ∀ n, P6758643097065926524.a n = A099779 (n + 2)

end A099779

/-! ## A099779.P6239932722620395714

`A257639(A288465(n)+A275046(n))`
-/

namespace A099779.P6239932722620395714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A288465 n + A275046 n).toNat

end

end A099779.P6239932722620395714

namespace A099779

/-- `A257639(A288465(n)+A275046(n))` -/
def P6239932722620395714.Spec : Prop :=
  ∀ n, P6239932722620395714.a n = A099779 (n + 2)

end A099779

/-!
# A099780: a(n) = Sum_{k=0..floor(n/3)} C(n-k, 2*k) * 2^k*3^(n-3*k).

The programs for A099780, the canonical program `A099780.P3300022809467527779` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099780 has offset 0).

The definition of A099780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099780.P3300022809467527779

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099780

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P3300022809467527779.Spec : Prop :=
  ∀ n, P3300022809467527779.a n = A099780 n

theorem P3300022809467527779.correct : P3300022809467527779.Spec := by
  intro n
  simp only [A099780]

end A099780

/-! ## A099780.P7148392322163421940

`A001834(n)/3+2^(n+1)/3`
-/

namespace A099780.P7148392322163421940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001834 n : ℚ) / 3 + (2 ^ (n + 1) : ℚ) / 3

end

end A099780.P7148392322163421940

namespace A099780

/-- `A001834(n)/3+2^(n+1)/3` -/
def P7148392322163421940.Spec : Prop :=
  ∀ n, P7148392322163421940.a n = (A099780 n : ℚ)

end A099780

/-! ## A099780.P6940993106642151442

`ogf((1-3x)/(1-6x+9x^2-2x^3))`
-/

namespace A099780.P6940993106642151442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 9, -2] n

end

end A099780.P6940993106642151442

namespace A099780

/-- `ogf((1-3x)/(1-6x+9x^2-2x^3))` -/
def P6940993106642151442.Spec : Prop :=
  ∀ n, P6940993106642151442.a n = A099780 n

end A099780

/-! ## A099780.P4972418230219645936

`∑[4*a(n-1)-a(n-2)-2^(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A099780.P4972418230219645936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099780.P4972418230219645936

namespace A099780

/-- `∑[4*a(n-1)-a(n-2)-2^(n-2)]` -/
def P4972418230219645936.Spec : Prop :=
  ∀ n, P4972418230219645936.a n = (A099780 n : ℚ)

end A099780

/-! ## A099780.P925640181424713861

`∑[A087944(n)]`
-/

namespace A099780.P925640181424713861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099780.P925640181424713861

namespace A099780

/-- `∑[A087944(n)]` -/
def P925640181424713861.Spec : Prop :=
  ∀ n, P925640181424713861.a n = A099780 n

end A099780

/-! ## A099780.P3664444613205622840

`Δ[A123020(n+1)]`
-/

namespace A099780.P3664444613205622840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099780.P3664444613205622840

namespace A099780

/-- `Δ[A123020(n+1)]` -/
def P3664444613205622840.Spec : Prop :=
  ∀ n, P3664444613205622840.a n = A099780 n

end A099780

/-! ## A099780.P5001195352944558939

`∑[A336678(2*n)]`
-/

namespace A099780.P5001195352944558939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099780.P5001195352944558939

namespace A099780

/-- `∑[A336678(2*n)]` -/
def P5001195352944558939.Spec : Prop :=
  ∀ n, P5001195352944558939.a n = A099780 n

end A099780

/-! ## A099780.P9256236062761190289

`A001835(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099780.P9256236062761190289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001835 n + 2 * a (n - 1)

end

end A099780.P9256236062761190289

namespace A099780

/-- `A001835(n)+2*a(n-1)` -/
def P9256236062761190289.Spec : Prop :=
  ∀ n, P9256236062761190289.a n = A099780 n

end A099780

/-! ## A099780.P17134921285728458792

`a(n-1)+A079935(n)+a(n-1)` with `a(0)=1`
-/

namespace A099780.P17134921285728458792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A079935 n + a (n - 1))

end

end A099780.P17134921285728458792

namespace A099780

/-- `a(n-1)+A079935(n)+a(n-1)` -/
def P17134921285728458792.Spec : Prop :=
  ∀ n, P17134921285728458792.a n = A099780 n

end A099780

/-! ## A099780.P6977070712737940379

`A217233(n)+A014113(n)`
-/

namespace A099780.P6977070712737940379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n + A014113 n

end

end A099780.P6977070712737940379

namespace A099780

/-- `A217233(n)+A014113(n)` -/
def P6977070712737940379.Spec : Prop :=
  ∀ n, P6977070712737940379.a n = A099780 n

end A099780

/-! ## A099780.P7881028982552439648

`A000975(n)+∑[A120893(n)]`
-/

namespace A099780.P7881028982552439648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099780.P7881028982552439648

namespace A099780

/-- `A000975(n)+∑[A120893(n)]` -/
def P7881028982552439648.Spec : Prop :=
  ∀ n, P7881028982552439648.a n = A099780 n

end A099780

/-! ## A099780.P9595852058870232349

`∑[A123020(n)+A001353(n)]`
-/

namespace A099780.P9595852058870232349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 n + A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099780.P9595852058870232349

namespace A099780

/-- `∑[A123020(n)+A001353(n)]` -/
def P9595852058870232349.Spec : Prop :=
  ∀ n, P9595852058870232349.a n = A099780 n

end A099780

/-! ## A099780.P13533278340979771979

`∑[A087946(n)-A001353(n)]`
-/

namespace A099780.P13533278340979771979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099780.P13533278340979771979

namespace A099780

/-- `∑[A087946(n)-A001353(n)]` -/
def P13533278340979771979.Spec : Prop :=
  ∀ n, P13533278340979771979.a n = A099780 n

end A099780

/-! ## A099780.P14672827118089756275

`A123020(n+1)+A001353(n)`
-/

namespace A099780.P14672827118089756275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 1) + A001353 n

end

end A099780.P14672827118089756275

namespace A099780

/-- `A123020(n+1)+A001353(n)` -/
def P14672827118089756275.Spec : Prop :=
  ∀ n, P14672827118089756275.a n = A099780 n

end A099780

/-! ## A099780.P5819693804084568925

`A123020(n+1)-A106707(n)`
-/

namespace A099780.P5819693804084568925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 1) - A106707 n

end

end A099780.P5819693804084568925

namespace A099780

/-- `A123020(n+1)-A106707(n)` -/
def P5819693804084568925.Spec : Prop :=
  ∀ n, P5819693804084568925.a n = A099780 n

end A099780

/-! ## A099780.P14485124053564892466

`2*A087944(n)-A001835(n)`
-/

namespace A099780.P14485124053564892466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087944 n - A001835 n

end

end A099780.P14485124053564892466

namespace A099780

/-- `2*A087944(n)-A001835(n)` -/
def P14485124053564892466.Spec : Prop :=
  ∀ n, P14485124053564892466.a n = A099780 n

end A099780

/-! ## A099780.P9217148926952327597

`A123020(n+2)-A123020(n+1)`
-/

namespace A099780.P9217148926952327597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 2) - A123020 (n + 1)

end

end A099780.P9217148926952327597

namespace A099780

/-- `A123020(n+2)-A123020(n+1)` -/
def P9217148926952327597.Spec : Prop :=
  ∀ n, P9217148926952327597.a n = A099780 n

end A099780

/-! ## A099780.P212284378300632629

`A123020(n+1)+A048788(2*n)/2`
-/

namespace A099780.P212284378300632629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123020 (n + 1) : ℚ) + (A048788 (2 * n) : ℚ) / 2

end

end A099780.P212284378300632629

namespace A099780

/-- `A123020(n+1)+A048788(2*n)/2` -/
def P212284378300632629.Spec : Prop :=
  ∀ n, P212284378300632629.a n = (A099780 n : ℚ)

end A099780

/-! ## A099780.P2262373053425589681

`∑[A001835(n)/A000079(n)]*A000079(n)`
-/

namespace A099780.P2262373053425589681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001835 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A099780.P2262373053425589681

namespace A099780

/-- `∑[A001835(n)/A000079(n)]*A000079(n)` -/
def P2262373053425589681.Spec : Prop :=
  ∀ n, P2262373053425589681.a n = (A099780 n : ℚ)

end A099780

/-! ## A099780.P16645482393762336691

`ceil((∑[2^n]+2*A001571(n)+1)/3)`
-/

namespace A099780.P16645482393762336691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 * A001571 n + 1) : ℚ) / 3⌉

end

end A099780.P16645482393762336691

namespace A099780

/-- `ceil((∑[2^n]+2*A001571(n)+1)/3)` -/
def P16645482393762336691.Spec : Prop :=
  ∀ n, P16645482393762336691.a n = A099780 n

end A099780

/-!
# A099781: a(n) = Sum_{k=0..floor(n/3)} C(n-k,2*k) * 4^(n-3*k).

The programs for A099781, the canonical program `A099781.P13854998078815403011` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099781 has offset 0).

The definition of A099781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099781.P13854998078815403011

`8*a(n-1)-16*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099781

/-- `8*a(n-1)-16*a(n-2)+a(n-3)` -/
def P13854998078815403011.Spec : Prop :=
  ∀ n, P13854998078815403011.a n = A099781 n

theorem P13854998078815403011.correct : P13854998078815403011.Spec := by
  intro n
  simp only [A099781]

end A099781

/-! ## A099781.P12638481532447068308

`record[4*a(n-2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A099781.P12638481532447068308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  4 * f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099781.P12638481532447068308

namespace A099781

/-- `record[4*a(n-2)-a(n-3)]` -/
def P12638481532447068308.Spec : Prop :=
  ∀ n, P12638481532447068308.a n = A099781 n

end A099781

/-! ## A099781.P3795766440582387728

`A099503(2*n)²%A099503(2*n+1)`
-/

namespace A099781.P3795766440582387728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099503 (2 * n) ^ 2) (A099503 (2 * n + 1))

end

end A099781.P3795766440582387728

namespace A099781

/-- `A099503(2*n)²%A099503(2*n+1)` -/
def P3795766440582387728.Spec : Prop :=
  ∀ n, P3795766440582387728.a n = A099781 n

end A099781

/-! ## A099781.P10246891858256039013

`A117724(A340266(2*n+1)+1)`
-/

namespace A099781.P10246891858256039013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117724 (A340266 (2 * n + 1) + 1).toNat

end

end A099781.P10246891858256039013

namespace A099781

/-- `A117724(A340266(2*n+1)+1)` -/
def P10246891858256039013.Spec : Prop :=
  ∀ n, P10246891858256039013.a n = A099781 n

end A099781

/-!
# A099782: a(n) = Sum_{k=0..floor(n/3)} C(n-k,2*k) * 2^k * 4^(n-3*k).

The programs for A099782, the canonical program `A099782.P8217971005537485410` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099782 has offset 0).

The definition of A099782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099782.P8217971005537485410

`8*a(n-1)-16*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099782

/-- `8*a(n-1)-16*a(n-2)+2*a(n-3)` -/
def P8217971005537485410.Spec : Prop :=
  ∀ n, P8217971005537485410.a n = A099782 n

theorem P8217971005537485410.correct : P8217971005537485410.Spec := by
  intro n
  simp only [A099782]

end A099782

/-! ## A099782.P6492854693532362234

`A080645(A045890(n))`
-/

namespace A099782.P6492854693532362234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080645 (A045890 n).toNat

end

end A099782.P6492854693532362234

namespace A099782

/-- `A080645(A045890(n))` -/
def P6492854693532362234.Spec : Prop :=
  ∀ n, P6492854693532362234.a n = A099782 n

end A099782

/-! ## A099782.P5551305268979177709

`A080541(A026872(n+1))`
-/

namespace A099782.P5551305268979177709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A026872 (n + 1)).toNat

end

end A099782.P5551305268979177709

namespace A099782

/-- `A080541(A026872(n+1))` -/
def P5551305268979177709.Spec : Prop :=
  ∀ n, P5551305268979177709.a n = A099782 n

end A099782

/-!
# A099783: a(n) = Sum_{k=0..floor(n/3)} C(n-k,2*k)*3^(n-2*k).

The programs for A099783, the canonical program `A099783.P4079645038113712384` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099783 has offset 0).

The definition of A099783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099783.P4079645038113712384

`6*a(n-1)-9*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099783

/-- `6*a(n-1)-9*a(n-2)+3*a(n-3)` -/
def P4079645038113712384.Spec : Prop :=
  ∀ n, P4079645038113712384.a n = A099783 n

theorem P4079645038113712384.correct : P4079645038113712384.Spec := by
  intro n
  simp only [A099783]

end A099783

/-! ## A099783.P1534791902176885943

`ogf((1-3x)/(1-6x+9x^2-3x^3))`
-/

namespace A099783.P1534791902176885943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 9, -3] n

end

end A099783.P1534791902176885943

namespace A099783

/-- `ogf((1-3x)/(1-6x+9x^2-3x^3))` -/
def P1534791902176885943.Spec : Prop :=
  ∀ n, P1534791902176885943.a n = A099783 n

end A099783

/-! ## A099783.P556115422703328466

`∑[A124292(n+2)]`
-/

namespace A099783.P556115422703328466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099783.P556115422703328466

namespace A099783

/-- `∑[A124292(n+2)]` -/
def P556115422703328466.Spec : Prop :=
  ∀ n, P556115422703328466.a n = A099783 n

end A099783

/-! ## A099783.P9031321760157503199

`∑[record[A124292(A324346(n))]]`
-/

namespace A099783.P9031321760157503199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099783.P9031321760157503199

namespace A099783

/-- `∑[record[A124292(A324346(n))]]` -/
def P9031321760157503199.Spec : Prop :=
  ∀ n, P9031321760157503199.a n = A099783 n

end A099783

/-! ## A099783.P17250365921637727762

`A000244(n)+∑[A206949(n)]`
-/

namespace A099783.P17250365921637727762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099783.P17250365921637727762

namespace A099783

/-- `A000244(n)+∑[A206949(n)]` -/
def P17250365921637727762.Spec : Prop :=
  ∀ n, P17250365921637727762.a n = A099783 n

end A099783

/-! ## A099783.P5646798938228412418

`∑[A206949(n)+A025192(n)]`
-/

namespace A099783.P5646798938228412418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206949 n + A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099783.P5646798938228412418

namespace A099783

/-- `∑[A206949(n)+A025192(n)]` -/
def P5646798938228412418.Spec : Prop :=
  ∀ n, P5646798938228412418.a n = A099783 n

end A099783

/-! ## A099783.P964635668543213805

`∑[abs(A215634(n)/3)]`
-/

namespace A099783.P964635668543213805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A215634 n : ℚ) / 3|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099783.P964635668543213805

namespace A099783

/-- `∑[abs(A215634(n)/3)]` -/
def P964635668543213805.Spec : Prop :=
  ∀ n, P964635668543213805.a n = (A099783 n : ℚ)

end A099783

/-!
# A099784: a(n) = Sum_{k=0..floor(n/3)} C(n-k,2*k) * 2^k * (-2)^(n-3*k).

The programs for A099784, the canonical program `A099784.P10732061206557207464` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099784 has offset 0).

The definition of A099784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099784.P10732061206557207464

`ogf((1+2x)/(1+4x+4x^2-2x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099784

/-- `ogf((1+2x)/(1+4x+4x^2-2x^3))` -/
def P10732061206557207464.Spec : Prop :=
  ∀ n, P10732061206557207464.a n = A099784 n

theorem P10732061206557207464.correct : P10732061206557207464.Spec := by
  intro n
  simp only [A099784]

end A099784

/-!
# A099785: a(n) = Sum_{k=0..floor(n/4)} C(n-k,3*k) * 2^(n-3*k).

The programs for A099785, the canonical program `A099785.P18219350436314518597` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099785 has offset 0).

The definition of A099785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099785.P18219350436314518597

`6*a(n-1)-12*a(n-2)+8*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099785

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)+2*a(n-4)` -/
def P18219350436314518597.Spec : Prop :=
  ∀ n, P18219350436314518597.a n = A099785 n

theorem P18219350436314518597.correct : P18219350436314518597.Spec := by
  intro n
  simp only [A099785]

end A099785

/-! ## A099785.P11493216836025002749

`A060646(A148710(n+1))`
-/

namespace A099785.P11493216836025002749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060646 (A148710 (n + 1)).toNat

end

end A099785.P11493216836025002749

namespace A099785

/-- `A060646(A148710(n+1))` -/
def P11493216836025002749.Spec : Prop :=
  ∀ n, P11493216836025002749.a n = A099785 n

end A099785

/-! ## A099785.P1125743878658267975

`2*A385489(a(n-1))` with `a(0)=1`
-/

namespace A099785.P1125743878658267975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A385489 (a (n - 1)).toNat

end

end A099785.P1125743878658267975

namespace A099785

/-- `2*A385489(a(n-1))` -/
def P1125743878658267975.Spec : Prop :=
  ∀ n, P1125743878658267975.a n = A099785 n

end A099785

/-!
# A099786: a(n) = Sum_{k=0..floor(n/4)} C(n-k,3*k)*3^(n-4*k).

The programs for A099786, the canonical program `A099786.P11942201618025564922` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099786 has offset 0).

The definition of A099786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099786.P11942201618025564922

`9*a(n-1)-27*a(n-2)+27*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099786

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)+a(n-4)` -/
def P11942201618025564922.Spec : Prop :=
  ∀ n, P11942201618025564922.a n = A099786 n

theorem P11942201618025564922.correct : P11942201618025564922.Spec := by
  intro n
  simp only [A099786]

end A099786

/-! ## A099786.P5044750343971138191

`A004526(A099787(n)+3^n)`
-/

namespace A099786.P5044750343971138191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A099787 n + (3 ^ n : ℤ)).toNat

end

end A099786.P5044750343971138191

namespace A099786

/-- `A004526(A099787(n)+3^n)` -/
def P5044750343971138191.Spec : Prop :=
  ∀ n, P5044750343971138191.a n = A099786 n

end A099786

/-! ## A099786.P15462706664685983027

`A025480(A099787(n)+3^n)`
-/

namespace A099786.P15462706664685983027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A099787 n + (3 ^ n : ℤ)).toNat

end

end A099786.P15462706664685983027

namespace A099786

/-- `A025480(A099787(n)+3^n)` -/
def P15462706664685983027.Spec : Prop :=
  ∀ n, P15462706664685983027.a n = A099786 n

end A099786

/-! ## A099786.P7690794506567284936

`A110654(A099787(n)+3^n)`
-/

namespace A099786.P7690794506567284936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A099787 n + (3 ^ n : ℤ)).toNat

end

end A099786.P7690794506567284936

namespace A099786

/-- `A110654(A099787(n)+3^n)` -/
def P7690794506567284936.Spec : Prop :=
  ∀ n, P7690794506567284936.a n = A099786 n

end A099786

/-!
# A099787: a(n) = Sum_{k=0..floor(n/4)} C(n-k,3*k) * 2^k * 3^(n-4*k).

The programs for A099787, the canonical program `A099787.P10029599252369116742` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099787 has offset 0).

The definition of A099787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099787.P10029599252369116742

`9*a(n-1)-27*a(n-2)+27*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099787

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)+2*a(n-4)` -/
def P10029599252369116742.Spec : Prop :=
  ∀ n, P10029599252369116742.a n = A099787 n

theorem P10029599252369116742.correct : P10029599252369116742.Spec := by
  intro n
  simp only [A099787]

end A099787

/-! ## A099787.P9660047768591015615

`∑[A034973(Δ[A217617(n)])]`
-/

namespace A099787.P9660047768591015615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217617 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099787.P9660047768591015615

namespace A099787

/-- `∑[A034973(Δ[A217617(n)])]` -/
def P9660047768591015615.Spec : Prop :=
  ∀ n, P9660047768591015615.a n = A099787 n

end A099787

/-!
# A099788: a(n) = Product_{i=1..2n} prime(i).

The programs for A099788, there is no canonical definition to state claims against.
-/

/-! ## A099788.P12138291894512226783

`A002110(2*n)`
-/

namespace A099788.P12138291894512226783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (2 * n)

end

end A099788.P12138291894512226783

/-! ## A099788.P7223023692968475306

`record[A070918(∑[n])]`
-/

namespace A099788.P7223023692968475306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099788.P7223023692968475306

/-! ## A099788.P6091214319480880726

`A006862(2*n)-1`
-/

namespace A099788.P6091214319480880726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (2 * n) - 1

end

end A099788.P6091214319480880726

/-! ## A099788.P9981921250138227525

`A070918(n*Δ[n²])`
-/

namespace A099788.P9981921250138227525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A099788.P9981921250138227525

/-! ## A099788.P17277136692033938819

`A096334(n*Δ[n²])`
-/

namespace A099788.P17277136692033938819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A099788.P17277136692033938819

/-!
# A099789: Records for terms in the continued fraction of Catalan's constant.

The programs for A099789, there is no canonical definition to state claims against.
-/

/-! ## A099789.P13585309539750583942

`record[A014538(n)]`
-/

namespace A099789.P13585309539750583942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099789.P13585309539750583942

/-! ## A099789.P2191203195408358110

`A014538(A099790(n))`
-/

namespace A099789.P2191203195408358110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014538 (A099790 n).toNat

end

end A099789.P2191203195408358110

/-!
# A099790: Positions of records for terms in the continued fraction of Catalan's constant.

The programs for A099790, there is no canonical definition to state claims against.
-/

/-! ## A099790.P1381799713867573697

`record[A066951(n+1)-A260785(n+2)]`
-/

namespace A099790.P1381799713867573697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066951 (n + 1) - A260785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099790.P1381799713867573697

/-! ## A099790.P3386846824345938899

`A247891(A006679(n)/A013632(n))`
-/

namespace A099790.P3386846824345938899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247891 (SequenceMachineLib.roundAway ((A006679 n : ℚ) / (A013632 n : ℚ))).toNat

end

end A099790.P3386846824345938899

/-!
# A099791: Records for terms in the continued fraction of the Glaisher-Kinkelin constant A.

The programs for A099791, there is no canonical definition to state claims against.
-/

/-! ## A099791.P13370270753053310889

`record[A087501(n)]`
-/

namespace A099791.P13370270753053310889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099791.P13370270753053310889

/-!
# A099792: Positions of records for terms in the continued fraction of the Glaisher-Kinkelin constant A.

The programs for A099792, there is no canonical definition to state claims against.
-/

/-! ## A099792.P5735156127625086767

`A225752(n+1)+1`
-/

namespace A099792.P5735156127625086767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225752 (n + 1) + 1

end

end A099792.P5735156127625086767

/-! ## A099792.P658545921060278311

`A241510(A140076(n+1))`
-/

namespace A099792.P658545921060278311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241510 (A140076 (n + 1)).toNat

end

end A099792.P658545921060278311

/-!
# A099794: a(n) = smallest integer k such that k*prime(n) == 1 mod j for each integer j with 1

The programs for A099794, there is no canonical definition to state claims against.
-/

/-! ## A099794.P12865922102567403343

`A094998(n+1)/A000040(n+1)`
-/

namespace A099794.P12865922102567403343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A099794.P12865922102567403343

/-! ## A099794.P13919508904347090120

`A094998(n+1)/eq[1, A003415(n)]`
-/

namespace A099794.P13919508904347090120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ)

end

end A099794.P13919508904347090120

/-! ## A099794.P6167838212026874727

`A094998(n+1)/record[A006530(n+2)]`
-/

namespace A099794.P6167838212026874727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A099794.P6167838212026874727

/-! ## A099794.P16577254675514173010

`A094998(n+1)/record[A014963(n+2)]`
-/

namespace A099794.P16577254675514173010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A099794.P16577254675514173010

/-! ## A099794.P13130278948180269924

`A094998(n+1)/record[A020639(n+2)]`
-/

namespace A099794.P13130278948180269924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A099794.P13130278948180269924

/-!
# A099795: Least common multiple of 1, 2, 3, ..., prime(n)-1.

The programs for A099795, the canonical program `A099795.P8359144970959057964` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099795 has offset 1).

The definition of A099795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038610, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099795.P8359144970959057964

`A038610(A000040(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099795

/-- `A038610(A000040(n+1))` -/
def P8359144970959057964.Spec : Prop :=
  ∀ n, P8359144970959057964.a n = A099795 (n + 1)

theorem P8359144970959057964.correct : P8359144970959057964.Spec := by
  intro n
  simp only [A099795, Nat.add_sub_cancel]

end A099795

/-! ## A099795.P5791707998729431206

`(A094998(n+1)-1)/A099796(n+1)`
-/

namespace A099795.P5791707998729431206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) - 1 : ℚ) / (A099796 (n + 1) : ℚ)

end

end A099795.P5791707998729431206

namespace A099795

/-- `(A094998(n+1)-1)/A099796(n+1)` -/
def P5791707998729431206.Spec : Prop :=
  ∀ n, P5791707998729431206.a n = (A099795 (n + 1) : ℚ)

end A099795

/-! ## A099795.P6295130685200515830

`A002944(ratio[A002110(n)])`
-/

namespace A099795.P6295130685200515830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A099795.P6295130685200515830

namespace A099795

/-- `A002944(ratio[A002110(n)])` -/
def P6295130685200515830.Spec : Prop :=
  ∀ n, P6295130685200515830.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P12317845534943991770

`A002944(A006005(n+1))`
-/

namespace A099795.P12317845534943991770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A006005 (n + 1)).toNat

end

end A099795.P12317845534943991770

namespace A099795

/-- `A002944(A006005(n+1))` -/
def P12317845534943991770.Spec : Prop :=
  ∀ n, P12317845534943991770.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P428904478257114472

`A003418(A006093(n+1))`
-/

namespace A099795.P428904478257114472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A006093 (n + 1)).toNat

end

end A099795.P428904478257114472

namespace A099795

/-- `A003418(A006093(n+1))` -/
def P428904478257114472.Spec : Prop :=
  ∀ n, P428904478257114472.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P17220217832658653138

`A003418(record[A000010(n+1)])`
-/

namespace A099795.P17220217832658653138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099795.P17220217832658653138

namespace A099795

/-- `A003418(record[A000010(n+1)])` -/
def P17220217832658653138.Spec : Prop :=
  ∀ n, P17220217832658653138.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P16288332009975205925

`record[A002944(A006530(n+1))]`
-/

namespace A099795.P16288332009975205925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099795.P16288332009975205925

namespace A099795

/-- `record[A002944(A006530(n+1))]` -/
def P16288332009975205925.Spec : Prop :=
  ∀ n, P16288332009975205925.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P13186619205267690231

`record[A002944(A014963(n+1))]`
-/

namespace A099795.P13186619205267690231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099795.P13186619205267690231

namespace A099795

/-- `record[A002944(A014963(n+1))]` -/
def P13186619205267690231.Spec : Prop :=
  ∀ n, P13186619205267690231.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P15634488108639095228

`record[A002944(A020639(n+1))]`
-/

namespace A099795.P15634488108639095228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099795.P15634488108639095228

namespace A099795

/-- `record[A002944(A020639(n+1))]` -/
def P15634488108639095228.Spec : Prop :=
  ∀ n, P15634488108639095228.a n = A099795 (n + 1)

end A099795

/-! ## A099795.P14921189766617621384

`record[A002944(A057859(n+1))]`
-/

namespace A099795.P14921189766617621384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A057859 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099795.P14921189766617621384

namespace A099795

/-- `record[A002944(A057859(n+1))]` -/
def P14921189766617621384.Spec : Prop :=
  ∀ n, P14921189766617621384.a n = A099795 (n + 1)

end A099795

/-!
# A099796: a(n) = (A094998(n)-1) / A099795(n).

The programs for A099796, there is no canonical definition to state claims against.
-/

/-! ## A099796.P14415278057051705413

`(A094998(n+1)-1)/A099795(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099796.P14415278057051705413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094998 (n + 1) - 1 : ℚ) / (A099795 (n + 1) : ℚ)

end

end A099796.P14415278057051705413

/-! ## A099796.P18332723560219916772

`A059955(ceil(acot(n)+n))`
-/

namespace A099796.P18332723560219916772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059955 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A099796.P18332723560219916772

/-! ## A099796.P5259388177171211544

`A059955(floor(acot(n))+1+n)`
-/

namespace A099796.P5259388177171211544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059955 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)).toNat

end

end A099796.P5259388177171211544

/-! ## A099796.P5533231188584300965

`A059955(ceil(2/(n+1)+n))`
-/

namespace A099796.P5533231188584300965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059955 ⌈2 / (n + 1 : ℚ) + (n : ℚ)⌉.toNat

end

end A099796.P5533231188584300965

/-! ## A099796.P10535470779951969133

`Δ[A007504(n)]-A255010(n+1)`
-/

namespace A099796.P10535470779951969133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255010 (n + 1)

end

end A099796.P10535470779951969133

/-! ## A099796.P6715472860508937809

`p?[A001057(n)]-A255010(n+1)`
-/

namespace A099796.P6715472860508937809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255010 (n + 1)

end

end A099796.P6715472860508937809

/-! ## A099796.P5868553256352597202

`A000040(n+1)-A255010(n+1)`
-/

namespace A099796.P5868553256352597202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A255010 (n + 1)

end

end A099796.P5868553256352597202

/-! ## A099796.P6681265689548929107

`A216884(n+1)-A255010(n+1)`
-/

namespace A099796.P6681265689548929107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1) - A255010 (n + 1)

end

end A099796.P6681265689548929107

/-! ## A099796.P9591792469722472930

`p?[A000961(n+1)]-A255010(n+1)`
-/

namespace A099796.P9591792469722472930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255010 (n + 1)

end

end A099796.P9591792469722472930

/-!
# A099797: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is composite".

The programs for A099797, there is no canonical definition to state claims against.
-/

/-! ## A099797.P9057069839477519725

`lt[A249222(A011373(n+1)), A292270(n)]`
-/

namespace A099797.P9057069839477519725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249222 (A011373 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099797.P9057069839477519725

/-! ## A099797.P8005200466637913490

`∑[A072909(p?[A330115(n+1)])]`
-/

namespace A099797.P8005200466637913490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099797.P8005200466637913490

/-! ## A099797.P12003876046442904663

`∑[A089309(p?[A330115(n+1)])]`
-/

namespace A099797.P12003876046442904663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099797.P12003876046442904663

/-! ## A099797.P18300830923244982682

`A000196(record[A284966(n)+1])+n+1`
-/

namespace A099797.P18300830923244982682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284966 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n + 1 : ℤ)

end

end A099797.P18300830923244982682

/-! ## A099797.P10103837297790789727

`∑[gcd(A001592(n+3), A246052(3*(n+1)))]`
-/

namespace A099797.P10103837297790789727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001592 (n + 3)) (A246052 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099797.P10103837297790789727

