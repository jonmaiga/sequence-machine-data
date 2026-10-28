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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A190900: Positive integers without recursively self-conjugate partitions.

The programs for A190900, there is no canonical definition to state claims against.
-/

/-! ## A190900.P853577409432003873

`eq[0, A321223(n+1)]+1`
-/

namespace A190900.P853577409432003873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190900.P853577409432003873

/-! ## A190900.P12240149100942924459

`lt[A321223(n+2), 1]+2`
-/

namespace A190900.P12240149100942924459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A190900.P12240149100942924459

/-! ## A190900.P10319809041793131653

`eq[0, A321223(A028310(n))]`
-/

namespace A190900.P10319809041793131653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190900.P10319809041793131653

/-! ## A190900.P9858234932885571719

`A020725(eq[0, A321223(n+1)])`
-/

namespace A190900.P9858234932885571719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190900.P9858234932885571719

/-! ## A190900.P1396953053650360074

`eq[0, A321223(A066182(n+1))]`
-/

namespace A190900.P1396953053650360074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190900.P1396953053650360074

/-!
# A190901: a(n) = Product_{k in M_n} k; M_n = {k | 1 <= k <= 2n and k mod 2 = n mod 2}.

The programs for A190901, there is no canonical definition to state claims against.
-/

/-! ## A190901.P6768812047716055750

`A006882(2*n-n%2)`
-/

namespace A190901.P6768812047716055750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n - n % 2)

end

end A190901.P6768812047716055750

/-! ## A190901.P11895309075275944692

`A128882(or(1, n)+n-1)+1`
-/

namespace A190901.P11895309075275944692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 ((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1)).toNat + 1

end

end A190901.P11895309075275944692

/-! ## A190901.P4066630738383532453

`A006882(2*n-char[2*n+1])`
-/

namespace A190901.P4066630738383532453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n - (if ∃ j, f1 j = n then 1 else 0))

end

end A190901.P4066630738383532453

/-! ## A190901.P983466345957651917

`A006882(A042948(n))*A304042(n)`
-/

namespace A190901.P983466345957651917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A042948 n).toNat * A304042 n

end

end A190901.P983466345957651917

/-! ## A190901.P8116842429009582609

`gcd(A000038(n), A006882(A042948(n)))`
-/

namespace A190901.P8116842429009582609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006882 (A042948 n).toNat)

end

end A190901.P8116842429009582609

/-! ## A190901.P3329607708581118918

`lcm(A006882(n), A006882(A042948(n)))`
-/

namespace A190901.P3329607708581118918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006882 n) (A006882 (A042948 n).toNat)

end

end A190901.P3329607708581118918

/-! ## A190901.P5599693220264731540

`or(A000007(n), A006882(A042948(n)))`
-/

namespace A190901.P5599693220264731540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A006882 (A042948 n).toNat)

end

end A190901.P5599693220264731540

/-! ## A190901.P10747889666415262341

`A006882(A042948(n))+A000038(2*(n+2))`
-/

namespace A190901.P10747889666415262341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A042948 n).toNat + A000038 (2 * (n + 2))

end

end A190901.P10747889666415262341

/-! ## A190901.P17446676784023399907

`A370419(A316671(n+2))`
-/

namespace A190901.P17446676784023399907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A316671 (n + 2)).toNat

end

end A190901.P17446676784023399907

/-! ## A190901.P10332548145909797557

`A225474(A266304(n))`
-/

namespace A190901.P10332548145909797557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225474 (A266304 n).toNat

end

end A190901.P10332548145909797557

/-!
# A190902: a(n) = Product_{d|n} d*mu(n/d).

The programs for A190902, the canonical program `A190902.P5214767407288776691` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190902 has offset 1).

The definition of A190902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190902.P5214767407288776691

`A069158(n+1)*A061537(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A190902

/-- `A069158(n+1)*A061537(n+1)` -/
def P5214767407288776691.Spec : Prop :=
  ∀ n, P5214767407288776691.a n = A190902 (n + 1)

theorem P5214767407288776691.correct : P5214767407288776691.Spec := by
  intro n
  simp only [A190902, Nat.add_sub_cancel]

end A190902

/-! ## A190902.P4009977045681425157

`A069158(n+1)*A007955(n+1)`
-/

namespace A190902.P4009977045681425157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A007955 (n + 1)

end

end A190902.P4009977045681425157

namespace A190902

/-- `A069158(n+1)*A007955(n+1)` -/
def P4009977045681425157.Spec : Prop :=
  ∀ n, P4009977045681425157.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P2678311001307541971

`∏{d}[n+1, A055615(#)]`
-/

namespace A190902.P2678311001307541971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A055615 d

end

end A190902.P2678311001307541971

namespace A190902

/-- `∏{d}[n+1, A055615(#)]` -/
def P2678311001307541971.Spec : Prop :=
  ∀ n, P2678311001307541971.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P5949555511197345566

`∏{d}[n+1, #*A008683(#)]`
-/

namespace A190902.P5949555511197345566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d

end

end A190902.P5949555511197345566

namespace A190902

/-- `∏{d}[n+1, #*A008683(#)]` -/
def P5949555511197345566.Spec : Prop :=
  ∀ n, P5949555511197345566.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P10188875643818813448

`A055615(n+1)^(∏{e}[n+1, #+1]/2)`
-/

namespace A190902.P10188875643818813448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℝ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2 : ℝ)

end

end A190902.P10188875643818813448

namespace A190902

/-- `A055615(n+1)^(∏{e}[n+1, #+1]/2)` -/
def P10188875643818813448.Spec : Prop :=
  ∀ n, P10188875643818813448.a n = (A190902 (n + 1) : ℝ)

end A190902

/-! ## A190902.P17914712234909653348

`A061537(n+1)*A069158(n+1)`
-/

namespace A190902.P17914712234909653348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (n + 1) * A069158 (n + 1)

end

end A190902.P17914712234909653348

namespace A190902

/-- `A061537(n+1)*A069158(n+1)` -/
def P17914712234909653348.Spec : Prop :=
  ∀ n, P17914712234909653348.a n = A190902 (n + 1)

theorem P17914712234909653348.correct : P17914712234909653348.Spec := by
  intro n
  simp only [A190902, Nat.add_sub_cancel, A190902.P17914712234909653348.a, A190902.P5214767407288776691.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190902

/-! ## A190902.P8692776470113889004

`A069158(n+1)*A078599(n+1)`
-/

namespace A190902.P8692776470113889004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A078599 (n + 1)

end

end A190902.P8692776470113889004

namespace A190902

/-- `A069158(n+1)*A078599(n+1)` -/
def P8692776470113889004.Spec : Prop :=
  ∀ n, P8692776470113889004.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P13447207980213431730

`A140700(n+1)*A290479(n+1)`
-/

namespace A190902.P13447207980213431730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1) * A290479 (n + 1)

end

end A190902.P13447207980213431730

namespace A190902

/-- `A140700(n+1)*A290479(n+1)` -/
def P13447207980213431730.Spec : Prop :=
  ∀ n, P13447207980213431730.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P12671241076880630535

`A140700(n+1)*A290480(n+1)`
-/

namespace A190902.P12671241076880630535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1) * A290480 (n + 1)

end

end A190902.P12671241076880630535

namespace A190902

/-- `A140700(n+1)*A290480(n+1)` -/
def P12671241076880630535.Spec : Prop :=
  ∀ n, P12671241076880630535.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P7709060269066546115

`A140700(n+1)*A378689(n+1)`
-/

namespace A190902.P7709060269066546115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1) * A378689 (n + 1)

end

end A190902.P7709060269066546115

namespace A190902

/-- `A140700(n+1)*A378689(n+1)` -/
def P7709060269066546115.Spec : Prop :=
  ∀ n, P7709060269066546115.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P10942143926489609399

`A140700(n+1)*A160199(n+1)`
-/

namespace A190902.P10942143926489609399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1) * A160199 (n + 1)

end

end A190902.P10942143926489609399

namespace A190902

/-- `A140700(n+1)*A160199(n+1)` -/
def P10942143926489609399.Spec : Prop :=
  ∀ n, P10942143926489609399.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P6411986775167845594

`A069158(n+1)*A274029(n+1)`
-/

namespace A190902.P6411986775167845594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A274029 (n + 1)

end

end A190902.P6411986775167845594

namespace A190902

/-- `A069158(n+1)*A274029(n+1)` -/
def P6411986775167845594.Spec : Prop :=
  ∀ n, P6411986775167845594.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P12129343821588789894

`A007955(n+1)*A069158(n+1)`
-/

namespace A190902.P12129343821588789894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A069158 (n + 1)

end

end A190902.P12129343821588789894

namespace A190902

/-- `A007955(n+1)*A069158(n+1)` -/
def P12129343821588789894.Spec : Prop :=
  ∀ n, P12129343821588789894.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P12526207528131373821

`A056925(n+1)*A069158(n+1)`
-/

namespace A190902.P12526207528131373821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056925 (n + 1) * A069158 (n + 1)

end

end A190902.P12526207528131373821

namespace A190902

/-- `A056925(n+1)*A069158(n+1)` -/
def P12526207528131373821.Spec : Prop :=
  ∀ n, P12526207528131373821.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P7506175454783540667

`A007956(n+1)*A140700(n+1)`
-/

namespace A190902.P7506175454783540667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A140700 (n + 1)

end

end A190902.P7506175454783540667

namespace A190902

/-- `A007956(n+1)*A140700(n+1)` -/
def P7506175454783540667.Spec : Prop :=
  ∀ n, P7506175454783540667.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P9116516053293587197

`A087652(n+1)*A140700(n+1)`
-/

namespace A190902.P9116516053293587197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) * A140700 (n + 1)

end

end A190902.P9116516053293587197

namespace A190902

/-- `A087652(n+1)*A140700(n+1)` -/
def P9116516053293587197.Spec : Prop :=
  ∀ n, P9116516053293587197.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P16558621972904886593

`A069158(n+1)*A183103(n+1)`
-/

namespace A190902.P16558621972904886593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A183103 (n + 1)

end

end A190902.P16558621972904886593

namespace A190902

/-- `A069158(n+1)*A183103(n+1)` -/
def P16558621972904886593.Spec : Prop :=
  ∀ n, P16558621972904886593.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P2948307969421670053

`A069158(n+1)*A183105(n+1)`
-/

namespace A190902.P2948307969421670053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A183105 (n + 1)

end

end A190902.P2948307969421670053

namespace A190902

/-- `A069158(n+1)*A183105(n+1)` -/
def P2948307969421670053.Spec : Prop :=
  ∀ n, P2948307969421670053.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P9648592925978489139

`A140700(n+1)*A183092(n+1)`
-/

namespace A190902.P9648592925978489139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1) * A183092 (n + 1)

end

end A190902.P9648592925978489139

namespace A190902

/-- `A140700(n+1)*A183092(n+1)` -/
def P9648592925978489139.Spec : Prop :=
  ∀ n, P9648592925978489139.a n = A190902 (n + 1)

end A190902

/-! ## A190902.P11335604484898896999

`A069158(n+1)*A364813(n+1)`
-/

namespace A190902.P11335604484898896999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A364813 (n + 1)

end

end A190902.P11335604484898896999

namespace A190902

/-- `A069158(n+1)*A364813(n+1)` -/
def P11335604484898896999.Spec : Prop :=
  ∀ n, P11335604484898896999.a n = A190902 (n + 1)

end A190902

/-!
# A190903: a(n) = Product_{k in M_n} k, M_n = {k | 1 <= k <= 3n and k mod 3 = n mod 3}.

The programs for A190903, there is no canonical definition to state claims against.
-/

/-! ## A190903.P4522538371009514073

`A007661(3*n-(2*n)%3)`
-/

namespace A190903.P4522538371009514073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (3 * n - 2 * n % 3)

end

end A190903.P4522538371009514073

/-! ## A190903.P4465767566587584147

`A007661(A047245(2*n+1)-A110654(2*(n+1)))`
-/

namespace A190903.P4465767566587584147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (A047245 (2 * n + 1) - A110654 (2 * (n + 1))).toNat

end

end A190903.P4465767566587584147

/-!
# A190905: Euler transform of the swinging factorial A056040.

The programs for A190905, there is no canonical definition to state claims against.
-/

/-! ## A190905.P3656240179903000103

`A051162(A097899(n+2))`
-/

namespace A190905.P3656240179903000103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A097899 (n + 2)).toNat

end

end A190905.P3656240179903000103

/-! ## A190905.P17795428895533904391

`A033763(A293081(n+2))`
-/

namespace A190905.P17795428895533904391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033763 (A293081 (n + 2)).toNat

end

end A190905.P17795428895533904391

/-! ## A190905.P6617421671495519256

`A321318(A001850(n))-A270740(n)`
-/

namespace A190905.P6617421671495519256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321318 (A001850 n).toNat - A270740 n

end

end A190905.P6617421671495519256

/-!
# A190906: a(n) = gcd(n! / floor(n/2)!^2, 3^n).

The programs for A190906, the canonical program `A190906.P9013112785990461409` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190906 has offset 0).

The definition of A190906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190906.P9013112785990461409

`gcd(A056040(n), 3^n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190906

/-- `gcd(A056040(n), 3^n)` -/
def P9013112785990461409.Spec : Prop :=
  ∀ n, (P9013112785990461409.a n : ℤ) = A190906 n

theorem P9013112785990461409.correct : P9013112785990461409.Spec := by
  intro n
  simp only [A190906]

end A190906

/-! ## A190906.P11254801162106217556

`A048883(A332497(n)-A000035(n))`
-/

namespace A190906.P11254801162106217556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A332497 n - A000035 n).toNat

end

end A190906.P11254801162106217556

namespace A190906

/-- `A048883(A332497(n)-A000035(n))` -/
def P11254801162106217556.Spec : Prop :=
  ∀ n, P11254801162106217556.a n = A190906 n

end A190906

/-! ## A190906.P18083417388752549121

`gcd(A026375(A002264(n)), A162852(n+1))`
-/

namespace A190906.P18083417388752549121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026375 (A002264 n).toNat) (A162852 (n + 1))

end

end A190906.P18083417388752549121

namespace A190906

/-- `gcd(A026375(A002264(n)), A162852(n+1))` -/
def P18083417388752549121.Spec : Prop :=
  ∀ n, (P18083417388752549121.a n : ℤ) = A190906 n

end A190906

/-! ## A190906.P9447785304803594156

`gcd(A038754(n), A163590(n))`
-/

namespace A190906.P9447785304803594156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038754 n) (A163590 n)

end

end A190906.P9447785304803594156

namespace A190906

/-- `gcd(A038754(n), A163590(n))` -/
def P9447785304803594156.Spec : Prop :=
  ∀ n, (P9447785304803594156.a n : ℤ) = A190906 n

end A190906

/-! ## A190906.P15791670141243566061

`A000244(val(A056040(n), 3))`
-/

namespace A190906.P15791670141243566061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (A056040 n).toNat 3)

end

end A190906.P15791670141243566061

namespace A190906

/-- `A000244(val(A056040(n), 3))` -/
def P15791670141243566061.Spec : Prop :=
  ∀ n, P15791670141243566061.a n = A190906 n

end A190906

/-! ## A190906.P4349603232692586280

`gcd(A060828(n), A275324(n))`
-/

namespace A190906.P4349603232692586280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060828 n) (A275324 n)

end

end A190906.P4349603232692586280

namespace A190906

/-- `gcd(A060828(n), A275324(n))` -/
def P4349603232692586280.Spec : Prop :=
  ∀ n, (P4349603232692586280.a n : ℤ) = A190906 n

end A190906

/-! ## A190906.P16438548360000778457

`gcd(A026549(n), A163590(n))`
-/

namespace A190906.P16438548360000778457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026549 n) (A163590 n)

end

end A190906.P16438548360000778457

namespace A190906

/-- `gcd(A026549(n), A163590(n))` -/
def P16438548360000778457.Spec : Prop :=
  ∀ n, (P16438548360000778457.a n : ℤ) = A190906 n

end A190906

/-! ## A190906.P17723364044424585017

`gcd(A000244(n), A056040(n))`
-/

namespace A190906.P17723364044424585017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000244 n) (A056040 n)

end

end A190906.P17723364044424585017

namespace A190906

/-- `gcd(A000244(n), A056040(n))` -/
def P17723364044424585017.Spec : Prop :=
  ∀ n, (P17723364044424585017.a n : ℤ) = A190906 n

end A190906

/-! ## A190906.P10367821427335272622

`gcd(A003946(n), A163590(n))`
-/

namespace A190906.P10367821427335272622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003946 n) (A163590 n)

end

end A190906.P10367821427335272622

namespace A190906

/-- `gcd(A003946(n), A163590(n))` -/
def P10367821427335272622.Spec : Prop :=
  ∀ n, (P10367821427335272622.a n : ℤ) = A190906 n

end A190906

/-! ## A190906.P12163380840127782889

`A120879(A008612(A105672(n+1)))`
-/

namespace A190906.P12163380840127782889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A008612 (A105672 (n + 1)).toNat).toNat

end

end A190906.P12163380840127782889

namespace A190906

/-- `A120879(A008612(A105672(n+1)))` -/
def P12163380840127782889.Spec : Prop :=
  ∀ n, P12163380840127782889.a n = A190906 n

end A190906

/-!
# A190907: Triangle read by rows: T(n,k) = binomial(n+k, n-k) k! / (floor(k/2)! * floor((k+2)/2)!).

The programs for A190907, the canonical program `A190907.P8773094599439942829` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190907 has offset 0).

The definition of A190907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190907.P8773094599439942829

`C(row(n)+col(n), row(n)-col(n))*col(n)!/(floor(col(n)/2)!*floor((col(n)+2)/2)!)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190907

/-- `C(row(n)+col(n), row(n)-col(n))*col(n)!/(floor(col(n)/2)!*floor((col(n)+2)/2)!)` -/
def P8773094599439942829.Spec : Prop :=
  ∀ n, P8773094599439942829.a n = (A190907 n : ℚ)

end A190907

/-! ## A190907.P17751360457185002700

`A190909(n)/ceil((A002262(n)+1)/2)`
-/

namespace A190907.P17751360457185002700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190909 n : ℚ) / (⌈(A002262 n + 1 : ℚ) / 2⌉ : ℚ)

end

end A190907.P17751360457185002700

namespace A190907

/-- `A190909(n)/ceil((A002262(n)+1)/2)` -/
def P17751360457185002700.Spec : Prop :=
  ∀ n, P17751360457185002700.a n = (A190907 n : ℚ)

end A190907

/-! ## A190907.P5674583236946865434

`A057977(A002262(n))*A085478(n)`
-/

namespace A190907.P5674583236946865434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A002262 n).toNat * A085478 n

end

end A190907.P5674583236946865434

namespace A190907

/-- `A057977(A002262(n))*A085478(n)` -/
def P5674583236946865434.Spec : Prop :=
  ∀ n, P5674583236946865434.a n = A190907 n

end A190907

/-! ## A190907.P1910705185031475039

`A190909(n)/A008619(A002262(n))`
-/

namespace A190907.P1910705185031475039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190909 n : ℚ) / (A008619 (A002262 n).toNat : ℚ)

end

end A190907.P1910705185031475039

namespace A190907

/-- `A190909(n)/A008619(A002262(n))` -/
def P1910705185031475039.Spec : Prop :=
  ∀ n, P1910705185031475039.a n = (A190907 n : ℚ)

end A190907

/-! ## A190907.P16806754025325353706

`A057977(A144328(n+1))*A085478(n)`
-/

namespace A190907.P16806754025325353706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A144328 (n + 1)).toNat * A085478 n

end

end A190907.P16806754025325353706

namespace A190907

/-- `A057977(A144328(n+1))*A085478(n)` -/
def P16806754025325353706.Spec : Prop :=
  ∀ n, P16806754025325353706.a n = A190907 n

end A190907

/-! ## A190907.P8868766164242511719

`A085478(n)*A189231(A112367(n))`
-/

namespace A190907.P8868766164242511719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A189231 (A112367 n).toNat

end

end A190907.P8868766164242511719

namespace A190907

/-- `A085478(n)*A189231(A112367(n))` -/
def P8868766164242511719.Spec : Prop :=
  ∀ n, P8868766164242511719.a n = A190907 n

end A190907

/-! ## A190907.P14446194212712967497

`abs(A129818(n)*A189231(A112367(n)))`
-/

namespace A190907.P14446194212712967497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 n * A189231 (A112367 n).toNat|

end

end A190907.P14446194212712967497

namespace A190907

/-- `abs(A129818(n)*A189231(A112367(n)))` -/
def P14446194212712967497.Spec : Prop :=
  ∀ n, P14446194212712967497.a n = A190907 n

end A190907

/-!
# A190908: a(n) = Sum{0<=k<=n} binomial(n+k, n-k) * k! / (floor(k/2)! * floor((k+2)/2)!).

The programs for A190908, there is no canonical definition to state claims against.
-/

/-! ## A190908.P4368202865184290918

`∑[A261585(A281338(n+1))]`
-/

namespace A190908.P4368202865184290918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A281338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190908.P4368202865184290918

/-! ## A190908.P15142923238720950274

`A187188(A115128(n+2)+n)`
-/

namespace A190908.P15142923238720950274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A115128 (n + 2) + (n : ℤ)).toNat

end

end A190908.P15142923238720950274

/-! ## A190908.P17172995155710039267

`A103221(A073728(2*n)+n)`
-/

namespace A190908.P17172995155710039267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A073728 (2 * n) + (n : ℤ)).toNat

end

end A190908.P17172995155710039267

/-!
# A190909: Triangle read by rows: T(n,k) = binomial(n+k,n-k) * k! / floor(k/2)!^2.

The programs for A190909, the canonical program `A190909.P9720095074938753888` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190909 has offset 0).

The definition of A190909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190909.P9720095074938753888

`C(row(n)+col(n), row(n)-col(n))*col(n)!/floor(col(n)/2)!²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190909

/-- `C(row(n)+col(n), row(n)-col(n))*col(n)!/floor(col(n)/2)!²` -/
def P9720095074938753888.Spec : Prop :=
  ∀ n, P9720095074938753888.a n = (A190909 n : ℚ)

end A190909

/-! ## A190909.P4455590788614055220

`A056040(A002262(n))*A085478(n)`
-/

namespace A190909.P4455590788614055220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A085478 n

end

end A190909.P4455590788614055220

namespace A190909

/-- `A056040(A002262(n))*A085478(n)` -/
def P4455590788614055220.Spec : Prop :=
  ∀ n, P4455590788614055220.a n = A190909 n

end A190909

/-! ## A190909.P15591751168565508188

`A008619(A002262(n))*A190907(n)`
-/

namespace A190909.P15591751168565508188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002262 n).toNat * A190907 n

end

end A190909.P15591751168565508188

namespace A190909

/-- `A008619(A002262(n))*A190907(n)` -/
def P15591751168565508188.Spec : Prop :=
  ∀ n, P15591751168565508188.a n = A190909 n

end A190909

/-! ## A190909.P3141906292613475294

`A008619(sqrt(A143844(n)))*A190907(n)`
-/

namespace A190909.P3141906292613475294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat * A190907 n

end

end A190909.P3141906292613475294

namespace A190909

/-- `A008619(sqrt(A143844(n)))*A190907(n)` -/
def P3141906292613475294.Spec : Prop :=
  ∀ n, P3141906292613475294.a n = A190909 n

end A190909

/-! ## A190909.P8399900751174280777

`A056040(A144328(n+1))*A085478(n)`
-/

namespace A190909.P8399900751174280777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A144328 (n + 1)).toNat * A085478 n

end

end A190909.P8399900751174280777

namespace A190909

/-- `A056040(A144328(n+1))*A085478(n)` -/
def P8399900751174280777.Spec : Prop :=
  ∀ n, P8399900751174280777.a n = A190909 n

end A190909

/-! ## A190909.P14569667152430963135

`A008619(A144328(n+1))*A190907(n)`
-/

namespace A190909.P14569667152430963135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144328 (n + 1)).toNat * A190907 n

end

end A190909.P14569667152430963135

namespace A190909

/-- `A008619(A144328(n+1))*A190907(n)` -/
def P14569667152430963135.Spec : Prop :=
  ∀ n, P14569667152430963135.a n = A190909 n

end A190909

/-!
# A190910: a(n) = Sum{0<=k<=n} binomial(n+k,n-k) * k! / (floor(k/2)!)^2.

The programs for A190910, there is no canonical definition to state claims against.
-/

/-! ## A190910.P13364404429778514802

`A292613(n)-A001222(A001147(n))`
-/

namespace A190910.P13364404429778514802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292613 n - A001222 (A001147 n).toNat

end

end A190910.P13364404429778514802

/-! ## A190910.P9231099547822456695

`A233970(2^n)-∑[n]`
-/

namespace A190910.P9231099547822456695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A190910.P9231099547822456695

/-!
# A190911: Least number coprime to n and n+3.

The programs for A190911, there is no canonical definition to state claims against.
-/

/-! ## A190911.P4013976426770273042

`A284723(∑[n+2])`
-/

namespace A190911.P4013976426770273042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190911.P4013976426770273042

/-! ## A190911.P18340325091586913716

`A355001((n+2)²+n)`
-/

namespace A190911.P18340325091586913716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 ((n + 2) ^ 2 + n)

end

end A190911.P18340325091586913716

/-! ## A190911.P15040733745157656806

`A381032(∑[2*(n+2)])`
-/

namespace A190911.P15040733745157656806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190911.P15040733745157656806

/-! ## A190911.P8805601054913145800

`p?[A351566((n+1)²+n)]`
-/

namespace A190911.P8805601054913145800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190911.P8805601054913145800

/-! ## A190911.P9789950260621565022

`A351566((n+2)²+1+n)`
-/

namespace A190911.P9789950260621565022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 ((n + 2) ^ 2 + 1 + n)

end

end A190911.P9789950260621565022

/-! ## A190911.P17486669116554215692

`A020639(A328571(∑[2*(n+2)]))`
-/

namespace A190911.P17486669116554215692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328571 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190911.P17486669116554215692

/-! ## A190911.P14224390335342329048

`or(1, A053669(A143975(n+1)))`
-/

namespace A190911.P14224390335342329048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053669 (A143975 (n + 1)).toNat)

end

end A190911.P14224390335342329048

/-! ## A190911.P2476086233259751241

`A053670(A034856(n+1)-A055667(n))`
-/

namespace A190911.P2476086233259751241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (A034856 (n + 1) - A055667 n).toNat

end

end A190911.P2476086233259751241

/-! ## A190911.P1858829894800403020

`A053670(∑[n+2]-1)`
-/

namespace A190911.P1858829894800403020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A190911.P1858829894800403020

/-! ## A190911.P10818114053987096741

`A006530(A053670(∑[n+1]+n))`
-/

namespace A190911.P10818114053987096741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053670 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A190911.P10818114053987096741

/-! ## A190911.P3545591402747208253

`A053670(∑[n+1]+n)%A049094(n+1)`
-/

namespace A190911.P3545591402747208253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053670 (∑ j ∈ Finset.range (n + 1), f1 j + n)) (A049094 (n + 1))

end

end A190911.P3545591402747208253

/-! ## A190911.P3737582693050152624

`A053669(∏{p}[∑[2*(n+1)+2], #])`
-/

namespace A190911.P3737582693050152624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A190911.P3737582693050152624

/-!
# A190912: Partial sums of pentanacci numbers (A000322).

The programs for A190912, the canonical program `A190912.P8871110757989843142` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190912 has offset 1).

The definition of A190912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190912.P1566293313397430808

`ogf((1-x^2-2x^3-3x^4)/(1-2x+x^6))`
-/

namespace A190912.P1566293313397430808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2, -3] [1, -2, 0, 0, 0, 0, 1] n

end

end A190912.P1566293313397430808

namespace A190912

/-- `ogf((1-x^2-2x^3-3x^4)/(1-2x+x^6))` -/
def P1566293313397430808.Spec : Prop :=
  ∀ n, P1566293313397430808.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P8871110757989843142

`2*a(n-1)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190912

/-- `2*a(n-1)-a(n-6)` -/
def P8871110757989843142.Spec : Prop :=
  ∀ n, P8871110757989843142.a n = A190912 (n + 1)

theorem P8871110757989843142.correct : P8871110757989843142.Spec := by
  intro n
  simp only [A190912, Nat.add_sub_cancel]

end A190912

/-! ## A190912.P9174509363499326980

`∑[A000322(n)]`
-/

namespace A190912.P9174509363499326980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190912.P9174509363499326980

namespace A190912

/-- `∑[A000322(n)]` -/
def P9174509363499326980.Spec : Prop :=
  ∀ n, P9174509363499326980.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P3619417820054888995

`∑[4*A001949(n)+1]`
-/

namespace A190912.P3619417820054888995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001949 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190912.P3619417820054888995

namespace A190912

/-- `∑[4*A001949(n)+1]` -/
def P3619417820054888995.Spec : Prop :=
  ∀ n, P3619417820054888995.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P7098832033916382453

`A135056(n)+1-A001949(n)`
-/

namespace A190912.P7098832033916382453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135056 n + (1 - A001949 n)

end

end A190912.P7098832033916382453

namespace A190912

/-- `A135056(n)+1-A001949(n)` -/
def P7098832033916382453.Spec : Prop :=
  ∀ n, P7098832033916382453.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P13149066277167214703

`A000322(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A190912.P13149066277167214703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000322 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A190912.P13149066277167214703

namespace A190912

/-- `A000322(A004524(2*n+1))+a(n-1)` -/
def P13149066277167214703.Spec : Prop :=
  ∀ n, P13149066277167214703.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P7404308930602501839

`∑[A135493(n+1)-A023424(n)]`
-/

namespace A190912.P7404308930602501839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) - A023424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190912.P7404308930602501839

namespace A190912

/-- `∑[A135493(n+1)-A023424(n)]` -/
def P7404308930602501839.Spec : Prop :=
  ∀ n, P7404308930602501839.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P13573168217918371465

`∑[A135493(n+1)-A074048(n+1)]`
-/

namespace A190912.P13573168217918371465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) - A074048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190912.P13573168217918371465

namespace A190912

/-- `∑[A135493(n+1)-A074048(n+1)]` -/
def P13573168217918371465.Spec : Prop :=
  ∀ n, P13573168217918371465.a n = A190912 (n + 1)

end A190912

/-! ## A190912.P18145417312770640781

`∑[or(4*A001949(n), A048004(∑[n]))]`
-/

namespace A190912.P18145417312770640781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A001949 n) (A048004 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190912.P18145417312770640781

namespace A190912

/-- `∑[or(4*A001949(n), A048004(∑[n]))]` -/
def P18145417312770640781.Spec : Prop :=
  ∀ n, P18145417312770640781.a n = A190912 (n + 1)

end A190912

/-!
# A190913: Sequence A190914 evaluated at the negative index -n.

The programs for A190913, the canonical program `A190913.P16496416454050350867` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190913 has offset 0).

The definition of A190913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190913.P16807248213536484503

`ogf((5-3x^2-6x^3)/(1-x^2-3x^3+x^5))`
-/

namespace A190913.P16807248213536484503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -3, -6] [1, 0, -1, -3, 0, 1] n

end

end A190913.P16807248213536484503

namespace A190913

/-- `ogf((5-3x^2-6x^3)/(1-x^2-3x^3+x^5))` -/
def P16807248213536484503.Spec : Prop :=
  ∀ n, P16807248213536484503.a n = A190913 n

end A190913

/-! ## A190913.P16496416454050350867

`A000032(n)+A073145(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190913

/-- `A000032(n)+A073145(n)` -/
def P16496416454050350867.Spec : Prop :=
  ∀ n, P16496416454050350867.a n = A190913 n

theorem P16496416454050350867.correct : P16496416454050350867.Spec := by
  intro n
  simp only [A190913]

end A190913

/-! ## A190913.P4483598937100931569

`A001612(n)+A073145(n)-1`
-/

namespace A190913.P4483598937100931569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + (A073145 n - 1)

end

end A190913.P4483598937100931569

namespace A190913

/-- `A001612(n)+A073145(n)-1` -/
def P4483598937100931569.Spec : Prop :=
  ∀ n, P4483598937100931569.a n = A190913 n

end A190913

/-! ## A190913.P3734485416019768822

`A000211(n)+A073145(n)-2`
-/

namespace A190913.P3734485416019768822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + (A073145 n - 2)

end

end A190913.P3734485416019768822

namespace A190913

/-- `A000211(n)+A073145(n)-2` -/
def P3734485416019768822.Spec : Prop :=
  ∀ n, P3734485416019768822.a n = A190913 n

end A190913

/-! ## A190913.P12151546757770520283

`A302126(2*n+1)+A073145(n)`
-/

namespace A190913.P12151546757770520283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n + 1) + A073145 n

end

end A190913.P12151546757770520283

namespace A190913

/-- `A302126(2*n+1)+A073145(n)` -/
def P12151546757770520283.Spec : Prop :=
  ∀ n, P12151546757770520283.a n = A190913 n

end A190913

/-! ## A190913.P13325610674030363748

`A073145(n)+A212804(n)+∑[A212804(n)]`
-/

namespace A190913.P13325610674030363748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190913.P13325610674030363748

namespace A190913

/-- `A073145(n)+A212804(n)+∑[A212804(n)]` -/
def P13325610674030363748.Spec : Prop :=
  ∀ n, P13325610674030363748.a n = A190913 n

end A190913

/-! ## A190913.P1250927720015589372

`A073145(n)+A212804(n)+A000045(n+1)`
-/

namespace A190913.P1250927720015589372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (A212804 n + A000045 (n + 1))

end

end A190913.P1250927720015589372

namespace A190913

/-- `A073145(n)+A212804(n)+A000045(n+1)` -/
def P1250927720015589372.Spec : Prop :=
  ∀ n, P1250927720015589372.a n = A190913 n

end A190913

/-! ## A190913.P5481686336383990965

`A073145(n)+Δ[A000045(n)]+A000045(n+1)`
-/

namespace A190913.P5481686336383990965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (f1 (n + 1) - f1 n + A000045 (n + 1))

end

end A190913.P5481686336383990965

namespace A190913

/-- `A073145(n)+Δ[A000045(n)]+A000045(n+1)` -/
def P5481686336383990965.Spec : Prop :=
  ∀ n, P5481686336383990965.a n = A190913 n

end A190913

/-! ## A190913.P435415965919864441

`A073145(n)+A075091(n)-A061084(n+1)`
-/

namespace A190913.P435415965919864441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (A075091 n - A061084 (n + 1))

end

end A190913.P435415965919864441

namespace A190913

/-- `A073145(n)+A075091(n)-A061084(n+1)` -/
def P435415965919864441.Spec : Prop :=
  ∀ n, P435415965919864441.a n = A190913 n

end A190913

/-! ## A190913.P9450586375356025093

`A073145(n)+Δ[A001610(n)]`
-/

namespace A190913.P9450586375356025093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (f1 (n + 1) - f1 n)

end

end A190913.P9450586375356025093

namespace A190913

/-- `A073145(n)+Δ[A001610(n)]` -/
def P9450586375356025093.Spec : Prop :=
  ∀ n, P9450586375356025093.a n = A190913 n

end A190913

/-! ## A190913.P12043047254380196790

`A073145(n)+Δ[A000204(n+1)]`
-/

namespace A190913.P12043047254380196790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (f1 (n + 1) - f1 n)

end

end A190913.P12043047254380196790

namespace A190913

/-- `A073145(n)+Δ[A000204(n+1)]` -/
def P12043047254380196790.Spec : Prop :=
  ∀ n, P12043047254380196790.a n = A190913 n

end A190913

/-! ## A190913.P7870529487939588989

`A073145(n)+Δ[A000211(n+1)]`
-/

namespace A190913.P7870529487939588989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (f1 (n + 1) - f1 n)

end

end A190913.P7870529487939588989

namespace A190913

/-- `A073145(n)+Δ[A000211(n+1)]` -/
def P7870529487939588989.Spec : Prop :=
  ∀ n, P7870529487939588989.a n = A190913 n

end A190913

/-! ## A190913.P9274582676294995167

`A073145(n)+A001610(n+1)-A001610(n)`
-/

namespace A190913.P9274582676294995167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (A001610 (n + 1) - A001610 n)

end

end A190913.P9274582676294995167

namespace A190913

/-- `A073145(n)+A001610(n+1)-A001610(n)` -/
def P9274582676294995167.Spec : Prop :=
  ∀ n, P9274582676294995167.a n = A190913 n

end A190913

/-! ## A190913.P9789497049027954905

`A073145(n)+3*A000045(n+1)-A000045(n+2)`
-/

namespace A190913.P9789497049027954905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (3 * A000045 (n + 1) - A000045 (n + 2))

end

end A190913.P9789497049027954905

namespace A190913

/-- `A073145(n)+3*A000045(n+1)-A000045(n+2)` -/
def P9789497049027954905.Spec : Prop :=
  ∀ n, P9789497049027954905.a n = A190913 n

end A190913

/-! ## A190913.P11080640613742368054

`A000032(n)+A075092(n)-A001644(n)`
-/

namespace A190913.P11080640613742368054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A075092 n - A001644 n)

end

end A190913.P11080640613742368054

namespace A190913

/-- `A000032(n)+A075092(n)-A001644(n)` -/
def P11080640613742368054.Spec : Prop :=
  ∀ n, P11080640613742368054.a n = A190913 n

end A190913

/-! ## A190913.P3819889182874535475

`A075117(∑[n+1]+1)+A073145(n)`
-/

namespace A190913.P3819889182874535475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075117 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A073145 n

end

end A190913.P3819889182874535475

namespace A190913

/-- `A075117(∑[n+1]+1)+A073145(n)` -/
def P3819889182874535475.Spec : Prop :=
  ∀ n, P3819889182874535475.a n = A190913 n

end A190913

/-!
# A190914: Expansion of ( 5-9*x^2-2*x^3 ) / ( (1+x-x^2)*(1-x-x^2-x^3) ).

The programs for A190914, the canonical program `A190914.P240275179722748392` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190914 has offset 0).

The definition of A190914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-9x^2-2x^3)/(1-3x^2-x^3+x^5))` (program `A190914.P240275179722748392`, by `A190914.P240275179722748392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190914.P240275179722748392

`ogf((5-9x^2-2x^3)/(1-3x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190914

/-- `ogf((5-9x^2-2x^3)/(1-3x^2-x^3+x^5))` -/
def P240275179722748392.Spec : Prop :=
  ∀ n, P240275179722748392.a n = A190914 n

theorem P240275179722748392.correct : P240275179722748392.Spec := by
  intro n
  simp only [A190914]

end A190914

/-! ## A190914.P3011523766713469507

`A061084(n+1)+A001644(n)`
-/

namespace A190914.P3011523766713469507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A001644 n

end

end A190914.P3011523766713469507

namespace A190914

/-- `A061084(n+1)+A001644(n)` -/
def P3011523766713469507.Spec : Prop :=
  ∀ n, P3011523766713469507.a n = A190914 n

end A190914

/-! ## A190914.P7066483815513043916

`A001644(n)+∑[A075193(n)]+1`
-/

namespace A190914.P7066483815513043916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190914.P7066483815513043916

namespace A190914

/-- `A001644(n)+∑[A075193(n)]+1` -/
def P7066483815513043916.Spec : Prop :=
  ∀ n, P7066483815513043916.a n = A190914 n

end A190914

/-! ## A190914.P170800954528417974

`A001644(n)+(xor(1, n)-n)*A000032(n)`
-/

namespace A190914.P170800954528417974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A000032 n

end

end A190914.P170800954528417974

namespace A190914

/-- `A001644(n)+(xor(1, n)-n)*A000032(n)` -/
def P170800954528417974.Spec : Prop :=
  ∀ n, P170800954528417974.a n = A190914 n

end A190914

/-! ## A190914.P5038409711899220624

`A001644(n)-(A075193(n+1)+A075193(n))`
-/

namespace A190914.P5038409711899220624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - (A075193 (n + 1) + A075193 n)

end

end A190914.P5038409711899220624

namespace A190914

/-- `A001644(n)-(A075193(n+1)+A075193(n))` -/
def P5038409711899220624.Spec : Prop :=
  ∀ n, P5038409711899220624.a n = A190914 n

end A190914

/-! ## A190914.P1138497724394740513

`A061084(n+1)+A075092(n)-A073145(n)`
-/

namespace A190914.P1138497724394740513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + (A075092 n - A073145 n)

end

end A190914.P1138497724394740513

namespace A190914

/-- `A061084(n+1)+A075092(n)-A073145(n)` -/
def P1138497724394740513.Spec : Prop :=
  ∀ n, P1138497724394740513.a n = A190914 n

end A190914

/-!
# A190916: Number of multilinear monomials corresponding to the association types of A190915.

The programs for A190916, there is no canonical definition to state claims against.
-/

/-! ## A190916.P8782068164733156738

`A222640(A001003(n))`
-/

namespace A190916.P8782068164733156738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222640 (A001003 n).toNat

end

end A190916.P8782068164733156738

/-!
# A190917: Number of permutations of n copies of 1..3 introduced in order 1..3 with no element equal to another within a distance of 1.

The programs for A190917, the canonical program `A190917.P9292440803940837928` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190917 has offset 0).

The definition of A190917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190917.P9292440803940837928

`((7*n-4)*a(n-1)+8*(n-2)²*a(n-2)/(n+1))/n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190917

/-- `((7*n-4)*a(n-1)+8*(n-2)²*a(n-2)/(n+1))/n` -/
def P9292440803940837928.Spec : Prop :=
  ∀ n, P9292440803940837928.a n = (A190917 n : ℚ)

end A190917

/-! ## A190917.P2094982769536801235

`A199126(A008486(n))`
-/

namespace A190917.P2094982769536801235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199126 (A008486 n).toNat

end

end A190917.P2094982769536801235

namespace A190917

/-- `A199126(A008486(n))` -/
def P2094982769536801235.Spec : Prop :=
  ∀ n, P2094982769536801235.a n = A190917 n

end A190917

/-! ## A190917.P15257507705739699443

`A199126(A028310(3*n))`
-/

namespace A190917.P15257507705739699443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199126 (A028310 (3 * n)).toNat

end

end A190917.P15257507705739699443

namespace A190917

/-- `A199126(A028310(3*n))` -/
def P15257507705739699443.Spec : Prop :=
  ∀ n, P15257507705739699443.a n = A190917 n

end A190917

/-! ## A190917.P9192454258475697503

`ceil(A110706(n)/6)`
-/

namespace A190917.P9192454258475697503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110706 n : ℚ) / 6⌉

end

end A190917.P9192454258475697503

namespace A190917

/-- `ceil(A110706(n)/6)` -/
def P9192454258475697503.Spec : Prop :=
  ∀ n, P9192454258475697503.a n = A190917 n

end A190917

/-! ## A190917.P15093792893978373247

`A110706(n)/A110706(n/A028310(n))`
-/

namespace A190917.P15093792893978373247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110706 n : ℚ) / (A110706 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℚ)

end

end A190917.P15093792893978373247

namespace A190917

/-- `A110706(n)/A110706(n/A028310(n))` -/
def P15093792893978373247.Spec : Prop :=
  ∀ n, P15093792893978373247.a n = (A190917 n : ℚ)

end A190917

/-!
# A190918: Number of permutations of n copies of 1..4 introduced in order 1..4 with no element equal to another within a distance of 1.

The programs for A190918, there is no canonical definition to state claims against.
-/

/-! ## A190918.P1742539787133736147

`A199194(4*(n+1))`
-/

namespace A190918.P1742539787133736147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199194 (4 * (n + 1))

end

end A190918.P1742539787133736147

/-! ## A190918.P9843493082970390422

`record[A322013(A027379(n))]`
-/

namespace A190918.P9843493082970390422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190918.P9843493082970390422

/-! ## A190918.P7884172358246939035

`A322013(A141214(n+1))`
-/

namespace A190918.P7884172358246939035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A141214 (n + 1)).toNat

end

end A190918.P7884172358246939035

/-! ## A190918.P18245964423042823190

`A322013(A027379(n+2))`
-/

namespace A190918.P18245964423042823190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A027379 (n + 2)).toNat

end

end A190918.P18245964423042823190

/-! ## A190918.P9570392462229762573

`A322013(A056000(n)+7)`
-/

namespace A190918.P9570392462229762573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A056000 n + 7).toNat

end

end A190918.P9570392462229762573

/-!
# A190919: Number of permutations of n copies of 1..4 introduced in order 1..4 with no element equal to another within a distance of 2.

The programs for A190919, there is no canonical definition to state claims against.
-/

/-! ## A190919.P3616514718953332484

`A000108(2*(n+1))-A110654(A371789(3*n))`
-/

namespace A190919.P3616514718953332484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * (n + 1)) - A110654 (A371789 (3 * n)).toNat

end

end A190919.P3616514718953332484

/-!
# A190920: Number of permutations of n copies of 1..5 introduced in order 1..5 with no element equal to another within a distance of 1.

The programs for A190920, there is no canonical definition to state claims against.
-/

/-! ## A190920.P11795989742701392397

`A322013(A046691(n+3))`
-/

namespace A190920.P11795989742701392397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A046691 (n + 3)).toNat

end

end A190920.P11795989742701392397

/-! ## A190920.P431138665835662016

`record[A322013(abs(A046691(n)))]`
-/

namespace A190920.P431138665835662016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190920.P431138665835662016

/-! ## A190920.P5727036722558151739

`record[A322013(A052905(n)+1)]`
-/

namespace A190920.P5727036722558151739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190920.P5727036722558151739

/-! ## A190920.P4285316664943848472

`A322013(A000096(n+4)-3)`
-/

namespace A190920.P4285316664943848472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A000096 (n + 4) - 3).toNat

end

end A190920.P4285316664943848472

/-! ## A190920.P9599647778767993874

`record[A322013(A233583(A027379(n)))]`
-/

namespace A190920.P9599647778767993874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A233583 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190920.P9599647778767993874

/-!
# A190923: Number of permutations of n copies of 1..6 introduced in order 1..6 with no element equal to another within a distance of 1.

The programs for A190923, there is no canonical definition to state claims against.
-/

/-! ## A190923.P11669397839132079155

`record[A322013(A052905(n))]`
-/

namespace A190923.P11669397839132079155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190923.P11669397839132079155

/-! ## A190923.P36311218695614521

`A322013(A052905(n+3))`
-/

namespace A190923.P36311218695614521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A052905 (n + 3)).toNat

end

end A190923.P36311218695614521

/-! ## A190923.P4858562887653644158

`A322013(A175631(n+8)-4)`
-/

namespace A190923.P4858562887653644158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A175631 (n + 8) - 4).toNat

end

end A190923.P4858562887653644158

/-! ## A190923.P17062744991799207735

`record[A322013(A008585(n)+A000124(n))]`
-/

namespace A190923.P17062744991799207735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A008585 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190923.P17062744991799207735

/-! ## A190923.P10501283901668837780

`record[A322013(A008574(n+1)+A000124(n))]`
-/

namespace A190923.P10501283901668837780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (A008574 (n + 1) + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190923.P10501283901668837780

/-!
# A190926: Number of permutations of n copies of 1..6 introduced in order 1..6 with no element equal to another within a distance of 4.

The programs for A190926, there is no canonical definition to state claims against.
-/

/-! ## A190926.P248400509174935880

`A190931(n+1)/A061142(A000420(n))`
-/

namespace A190926.P248400509174935880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190931 (n + 1) : ℚ) / (A061142 (A000420 n).toNat : ℚ)

end

end A190926.P248400509174935880

/-!
# A190927: 

The programs for A190927, there is no canonical definition to state claims against.
-/

/-! ## A190927.P7452693779027593372

`record[A322013(∑[A020705(n)])]`
-/

namespace A190927.P7452693779027593372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190927.P7452693779027593372

/-!
# A190931: Number of permutations of n copies of 1..7 introduced in order 1..7 with no element equal to another within a distance of 5.

The programs for A190931, there is no canonical definition to state claims against.
-/

/-! ## A190931.P14256487662182624661

`A190937(n+1)/record[A056671(n+1)]`
-/

namespace A190931.P14256487662182624661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190937 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A190931.P14256487662182624661

/-! ## A190931.P10912954160658196461

`A190937(n+1)/A000188(A164346(n))`
-/

namespace A190931.P10912954160658196461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190937 (n + 1) : ℚ) / (A000188 (A164346 n).toNat : ℚ)

end

end A190931.P10912954160658196461

/-!
# A190937: Number of permutations of n copies of 1..8 introduced in order 1..8 with no element equal to another within a distance of 6.

The programs for A190937, there is no canonical definition to state claims against.
-/

/-! ## A190937.P1390267590894895702

`record[A056671(n+1)]*A190931(n+1)`
-/

namespace A190937.P1390267590894895702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A190931 (n + 1)

end

end A190937.P1390267590894895702

/-! ## A190937.P18204471749153604559

`A000188(A164346(n))*A190931(n+1)`
-/

namespace A190937.P18204471749153604559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A164346 n).toNat * A190931 (n + 1)

end

end A190937.P18204471749153604559

/-!
# A190938: Parity of the multiplicative partition function A001055.

The programs for A190938, there is no canonical definition to state claims against.
-/

/-! ## A190938.P4205566308317669936

`A001055(n+1)%2`
-/

namespace A190938.P4205566308317669936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) 2

end

end A190938.P4205566308317669936

/-! ## A190938.P7473624735882012254

`Δ[A096276(n)]%2`
-/

namespace A190938.P7473624735882012254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A190938.P7473624735882012254

/-! ## A190938.P3169005448557137905

`A378176(n+1)%2`
-/

namespace A190938.P3169005448557137905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378176 (n + 1)) 2

end

end A190938.P3169005448557137905

/-! ## A190938.P10201337292599435898

`and(1, A316441(n+1))`
-/

namespace A190938.P10201337292599435898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A316441 (n + 1))

end

end A190938.P10201337292599435898

/-! ## A190938.P13267735621908249419

`log2(gcd(2, A028422(n+1)))`
-/

namespace A190938.P13267735621908249419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A028422 (n + 1)) : ℝ)

end

end A190938.P13267735621908249419

/-! ## A190938.P4282497958587169653

`and(1, A001055(C(2, C(3, n²))+n))`
-/

namespace A190938.P4282497958587169653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001055 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n))

end

end A190938.P4282497958587169653

/-! ## A190938.P15676213860826189172

`A000035(A001055(n+1))`
-/

namespace A190938.P15676213860826189172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001055 (n + 1)).toNat

end

end A190938.P15676213860826189172

/-! ## A190938.P4597639920569559034

`A059841(Δ[A096276(n)]+1)`
-/

namespace A190938.P4597639920569559034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f1 (n + 1) - f1 n + 1).toNat

end

end A190938.P4597639920569559034

/-! ## A190938.P10537195522469157601

`1-A059841(Δ[A096276(n)])`
-/

namespace A190938.P10537195522469157601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059841 (f1 (n + 1) - f1 n).toNat

end

end A190938.P10537195522469157601

/-! ## A190938.P14344096090442124341

`A059841(A001055(n+1)+1)`
-/

namespace A190938.P14344096090442124341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001055 (n + 1) + 1).toNat

end

end A190938.P14344096090442124341

/-! ## A190938.P884810825667638929

`A266591(A001055(n+1)+1)`
-/

namespace A190938.P884810825667638929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (A001055 (n + 1) + 1).toNat

end

end A190938.P884810825667638929

/-! ## A190938.P14883896805783073650

`A327510(val(A001055(n+1), 2))`
-/

namespace A190938.P14883896805783073650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327510 (SequenceMachineLib.valuation (A001055 (n + 1)).toNat 2)

end

end A190938.P14883896805783073650

/-! ## A190938.P18038423754394446780

`and(1, A001055(A046523(n+1)))`
-/

namespace A190938.P18038423754394446780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001055 (A046523 (n + 1)).toNat)

end

end A190938.P18038423754394446780

/-! ## A190938.P18261723198700650509

`(A096276(n+1)-A096276(n))%2`
-/

namespace A190938.P18261723198700650509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096276 (n + 1) - A096276 n) 2

end

end A190938.P18261723198700650509

/-! ## A190938.P15891849199116774314

`floor(2/A020639(A001055(n+1)+1))`
-/

namespace A190938.P15891849199116774314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A020639 (A001055 (n + 1) + 1).toNat : ℚ)⌋

end

end A190938.P15891849199116774314

/-! ## A190938.P12615100685367319000

`and(1, (A001055(n+1)*A007204(n))²)`
-/

namespace A190938.P12615100685367319000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A001055 (n + 1) * A007204 n) ^ 2)

end

end A190938.P12615100685367319000

/-! ## A190938.P11539868595730424721

`and(1, A001055(n+1)²*A008349(n))`
-/

namespace A190938.P11539868595730424721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001055 (n + 1) ^ 2 * A008349 n)

end

end A190938.P11539868595730424721

/-! ## A190938.P10927702408524368888

`and(A001055(n+1), A046951(∏{p}[n+1, #]))`
-/

namespace A190938.P10927702408524368888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001055 (n + 1)) (A046951 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A190938.P10927702408524368888

/-! ## A190938.P14652629337815244137

`and(1, A001055(n+1)²*A001361(n+1))`
-/

namespace A190938.P14652629337815244137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001055 (n + 1) ^ 2 * A001361 (n + 1))

end

end A190938.P14652629337815244137

/-! ## A190938.P17764270765775969138

`and(A001222(A052369(n+1)), A001055(n+1))`
-/

namespace A190938.P17764270765775969138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A052369 (n + 1)).toNat) (A001055 (n + 1))

end

end A190938.P17764270765775969138

/-!
# A190939: Subgroups of nimber addition interpreted as binary numbers.

The programs for A190939, there is no canonical definition to state claims against.
-/

/-! ## A190939.P3543762171722189767

`A118759(or(1, A033623(n+1)))`
-/

namespace A190939.P3543762171722189767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor 1 (A033623 (n + 1))).toNat

end

end A190939.P3543762171722189767

/-! ## A190939.P4125944810666472021

`or(A001222(A002583(n)), A033623(n+1))`
-/

namespace A190939.P4125944810666472021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A002583 n).toNat) (A033623 (n + 1))

end

end A190939.P4125944810666472021

/-! ## A190939.P9812651745468392401

`or(A011655(A026150(n)), A033623(n+1))`
-/

namespace A190939.P9812651745468392401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 (A026150 n).toNat) (A033623 (n + 1))

end

end A190939.P9812651745468392401

/-! ## A190939.P3520326189936019055

`or(A011655(A033650(n)), A033623(n+1))`
-/

namespace A190939.P3520326189936019055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 (A033650 n).toNat) (A033623 (n + 1))

end

end A190939.P3520326189936019055

/-! ## A190939.P13660336483275926603

`or(A033623(n+1), A057427(A000108(n)))`
-/

namespace A190939.P13660336483275926603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033623 (n + 1)) (A057427 (A000108 n).toNat)

end

end A190939.P13660336483275926603

/-!
# A190940: Number of divisors of LCM(1,2,...,n)/n.

The programs for A190940, the canonical program `A190940.P3482057702571658597` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190940 has offset 1).

The definition of A190940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190940.P3482057702571658597

`A000005(A002944(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190940

/-- `A000005(A002944(n+1))` -/
def P3482057702571658597.Spec : Prop :=
  ∀ n, P3482057702571658597.a n = A190940 (n + 1)

theorem P3482057702571658597.correct : P3482057702571658597.Spec := by
  intro n
  simp only [A190940, Nat.add_sub_cancel]

end A190940

/-! ## A190940.P8822049585301427690

`Δ[A378314(n)]`
-/

namespace A190940.P8822049585301427690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190940.P8822049585301427690

namespace A190940

/-- `Δ[A378314(n)]` -/
def P8822049585301427690.Spec : Prop :=
  ∀ n, P8822049585301427690.a n = A190940 (n + 1)

end A190940

/-! ## A190940.P3259284340842207398

`A378314(n+1)-A378314(n)`
-/

namespace A190940.P3259284340842207398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378314 (n + 1) - A378314 n

end

end A190940.P3259284340842207398

namespace A190940

/-- `A378314(n+1)-A378314(n)` -/
def P3259284340842207398.Spec : Prop :=
  ∀ n, P3259284340842207398.a n = A190940 (n + 1)

end A190940

/-! ## A190940.P14177011720299604476

`∏{e}[n*lcm(n+1, a(n-1))/(n+1), #+1]` with `a(0)=1`
-/

namespace A190940.P14177011720299604476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * ((Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A190940.P14177011720299604476

namespace A190940

/-- `∏{e}[n*lcm(n+1, a(n-1))/(n+1), #+1]` -/
def P14177011720299604476.Spec : Prop :=
  ∀ n, (P14177011720299604476.a n : ℤ) = A190940 (n + 1)

end A190940

/-! ## A190940.P15676992927136628468

`∏{e}[A003418(n+1)/(n+1), #+1]`
-/

namespace A190940.P15676992927136628468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A190940.P15676992927136628468

namespace A190940

/-- `∏{e}[A003418(n+1)/(n+1), #+1]` -/
def P15676992927136628468.Spec : Prop :=
  ∀ n, (P15676992927136628468.a n : ℤ) = A190940 (n + 1)

end A190940

/-!
# A190941: Partial sums of A190592.

The programs for A190941, the canonical program `A190941.P10346162016489397206` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190941 has offset 0).

The definition of A190941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190941.P17984991823968421882

`∑[A190592(n)]`
-/

namespace A190941.P17984991823968421882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190941.P17984991823968421882

namespace A190941

/-- `∑[A190592(n)]` -/
def P17984991823968421882.Spec : Prop :=
  ∀ n, P17984991823968421882.a n = A190941 n

end A190941

/-! ## A190941.P10346162016489397206

`n+A081610(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A190941

/-- `n+A081610(n)` -/
def P10346162016489397206.Spec : Prop :=
  ∀ n, P10346162016489397206.a n = A190941 n

theorem P10346162016489397206.correct : P10346162016489397206.Spec := by
  intro n
  simp only [A190941]

end A190941

/-! ## A190941.P18323462892321102130

`∑[A038574(n)%3]`
-/

namespace A190941.P18323462892321102130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038574 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190941.P18323462892321102130

namespace A190941

/-- `∑[A038574(n)%3]` -/
def P18323462892321102130.Spec : Prop :=
  ∀ n, P18323462892321102130.a n = A190941 n

end A190941

/-! ## A190941.P5804650335820637606

`Δ[n²]-A081611(n)`
-/

namespace A190941.P5804650335820637606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A081611 n

end

end A190941.P5804650335820637606

namespace A190941

/-- `Δ[n²]-A081611(n)` -/
def P5804650335820637606.Spec : Prop :=
  ∀ n, P5804650335820637606.a n = A190941 n

end A190941

/-! ## A190941.P12062878232312657642

`∑[2-A039966(n)]-1`
-/

namespace A190941.P12062878232312657642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A190941.P12062878232312657642

namespace A190941

/-- `∑[2-A039966(n)]-1` -/
def P12062878232312657642.Spec : Prop :=
  ∀ n, P12062878232312657642.a n = A190941 n

end A190941

/-! ## A190941.P6678306115864956193

`∑[A189820(n+1)]+n`
-/

namespace A190941.P6678306115864956193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190941.P6678306115864956193

namespace A190941

/-- `∑[A189820(n+1)]+n` -/
def P6678306115864956193.Spec : Prop :=
  ∀ n, P6678306115864956193.a n = A190941 n

end A190941

/-! ## A190941.P3479103088492154234

`comp[A074940(n+1)+n]`
-/

namespace A190941.P3479103088492154234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190941.P3479103088492154234

namespace A190941

/-- `comp[A074940(n+1)+n]` -/
def P3479103088492154234.Spec : Prop :=
  ∀ n, (P3479103088492154234.a n : ℤ) = A190941 n

end A190941

/-! ## A190941.P2092692645671439783

`∑[round(atan(A081603(n)))]+n`
-/

namespace A190941.P2092692645671439783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A081603 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190941.P2092692645671439783

namespace A190941

/-- `∑[round(atan(A081603(n)))]+n` -/
def P2092692645671439783.Spec : Prop :=
  ∀ n, P2092692645671439783.a n = A190941 n

end A190941

/-! ## A190941.P4254060699270916534

`∪[2*n+1, A091311(n)]`
-/

namespace A190941.P4254060699270916534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091311 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190941.P4254060699270916534

namespace A190941

/-- `∪[2*n+1, A091311(n)]` -/
def P4254060699270916534.Spec : Prop :=
  ∀ n, (P4254060699270916534.a n : ℤ) = A190941 n

end A190941

/-! ## A190941.P14699456725770246365

`comp[comp[A005836(n+1)]+n]`
-/

namespace A190941.P14699456725770246365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190941.P14699456725770246365

namespace A190941

/-- `comp[comp[A005836(n+1)]+n]` -/
def P14699456725770246365.Spec : Prop :=
  ∀ n, (P14699456725770246365.a n : ℤ) = A190941 n

end A190941

/-! ## A190941.P6387000863181736176

`comp[comp[A107681(n+1)]+n]`
-/

namespace A190941.P6387000863181736176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190941.P6387000863181736176

namespace A190941

/-- `comp[comp[A107681(n+1)]+n]` -/
def P6387000863181736176.Spec : Prop :=
  ∀ n, (P6387000863181736176.a n : ℤ) = A190941 n

end A190941

/-! ## A190941.P11933481880866349453

`2*n+1-∑[A088917(2*n)]`
-/

namespace A190941.P11933481880866349453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190941.P11933481880866349453

namespace A190941

/-- `2*n+1-∑[A088917(2*n)]` -/
def P11933481880866349453.Spec : Prop :=
  ∀ n, P11933481880866349453.a n = A190941 n

end A190941

/-! ## A190941.P11254485808876086194

`∑[A061395(A006047(n))]`
-/

namespace A190941.P11254485808876086194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190941.P11254485808876086194

namespace A190941

/-- `∑[A061395(A006047(n))]` -/
def P11254485808876086194.Spec : Prop :=
  ∀ n, P11254485808876086194.a n = A190941 n

end A190941

/-! ## A190941.P321838506770731140

`∑[A001222(A331279(n))]`
-/

namespace A190941.P321838506770731140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190941.P321838506770731140

namespace A190941

/-- `∑[A001222(A331279(n))]` -/
def P321838506770731140.Spec : Prop :=
  ∀ n, P321838506770731140.a n = A190941 n

end A190941

/-! ## A190941.P10195534580072677569

`A081610(n)-A001489(n)`
-/

namespace A190941.P10195534580072677569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081610 n - A001489 n

end

end A190941.P10195534580072677569

namespace A190941

/-- `A081610(n)-A001489(n)` -/
def P10195534580072677569.Spec : Prop :=
  ∀ n, P10195534580072677569.a n = A190941 n

theorem P10195534580072677569.correct : P10195534580072677569.Spec := by
  intro n
  simp only [A190941, Nat.add_sub_cancel, A190941.P10195534580072677569.a, A190941.P10346162016489397206.a, A001489, A001489.P15233530513763566776.a, A081610, A081610.P55257795083380857.f1, A081610.P55257795083380857.a, A039966, A039966.P2512638377875033340.a, A002426, A002426.P18316219981098248731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190941

/-! ## A190941.P12003996268994684112

`∑[A001221(A117592(n))]+n`
-/

namespace A190941.P12003996268994684112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A117592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190941.P12003996268994684112

namespace A190941

/-- `∑[A001221(A117592(n))]+n` -/
def P12003996268994684112.Spec : Prop :=
  ∀ n, P12003996268994684112.a n = A190941 n

end A190941

/-! ## A190941.P10903250628121980547

`∑[A002487(A273514(n))]+n`
-/

namespace A190941.P10903250628121980547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A273514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190941.P10903250628121980547

namespace A190941

/-- `∑[A002487(A273514(n))]+n` -/
def P10903250628121980547.Spec : Prop :=
  ∀ n, P10903250628121980547.a n = A190941 n

end A190941

/-! ## A190941.P15903201572253378546

`∪[A091311(n), A144396(n+1)]`
-/

namespace A190941.P15903201572253378546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190941.P15903201572253378546

namespace A190941

/-- `∪[A091311(n), A144396(n+1)]` -/
def P15903201572253378546.Spec : Prop :=
  ∀ n, (P15903201572253378546.a n : ℤ) = A190941 n

end A190941

/-! ## A190941.P9750356001142841921

`∑[A001221(abs(A117942(n)))]+n`
-/

namespace A190941.P9750356001142841921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 |A117942 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190941.P9750356001142841921

namespace A190941

/-- `∑[A001221(abs(A117942(n)))]+n` -/
def P9750356001142841921.Spec : Prop :=
  ∀ n, P9750356001142841921.a n = A190941 n

end A190941

/-!
# A190942: Numbers n such that 2*71^n + 1 is prime.

The programs for A190942, there is no canonical definition to state claims against.
-/

/-! ## A190942.P80410248159564617

`eq[A023823(n+1), A288799(n+1)]`
-/

namespace A190942.P80410248159564617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190942.P80410248159564617

/-!
# A190943: a(n) = 8*a(n-1) + 27*a(n-2), with a(0)=0, a(1)=1.

The programs for A190943, the canonical program `A190943.P14799295254831153302` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190943 has offset 0).

The definition of A190943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+27*a(n-2)` (program `A190943.P14799295254831153302`, by `A190943.P14799295254831153302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190943.P17138625975055335223

`ogf(x/(1-8x-27x^2))`
-/

namespace A190943.P17138625975055335223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, -27] n

end

end A190943.P17138625975055335223

namespace A190943

/-- `ogf(x/(1-8x-27x^2))` -/
def P17138625975055335223.Spec : Prop :=
  ∀ n, P17138625975055335223.a n = A190943 n

end A190943

/-! ## A190943.P14799295254831153302

`8*a(n-1)+27*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190943

/-- `8*a(n-1)+27*a(n-2)` -/
def P14799295254831153302.Spec : Prop :=
  ∀ n, (P14799295254831153302.a n : ℤ) = A190943 n

theorem P14799295254831153302.correct : P14799295254831153302.Spec := by
  intro n
  simp only [A190943]

end A190943

/-! ## A190943.P13375066491320421170

`((4+sqrt(43))^n-(4-sqrt(43))^n)/(2*sqrt(43))`
-/

namespace A190943.P13375066491320421170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (43 : ℝ)) ^ n - (4 - Real.sqrt (43 : ℝ)) ^ n) / (2 * Real.sqrt (43 : ℝ))

end

end A190943.P13375066491320421170

namespace A190943

/-- `((4+sqrt(43))^n-(4-sqrt(43))^n)/(2*sqrt(43))` -/
def P13375066491320421170.Spec : Prop :=
  ∀ n, P13375066491320421170.a n = (A190943 n : ℝ)

theorem P13375066491320421170.correct : P13375066491320421170.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190943, Nat.add_sub_cancel, A190943.P13375066491320421170.a, A190943.P14799295254831153302.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190943, Nat.add_sub_cancel, A190943.P13375066491320421170.a, A190943.P14799295254831153302.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190943

/-!
# A190944: Multiples of 3 written in base 2.

The programs for A190944, the canonical program `A190944.P11131727820817368207` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190944 has offset 0).

The definition of A190944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190944.P11131727820817368207

`A007088(A008585(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190944

/-- `A007088(A008585(n))` -/
def P11131727820817368207.Spec : Prop :=
  ∀ n, P11131727820817368207.a n = A190944 n

theorem P11131727820817368207.correct : P11131727820817368207.Spec := by
  intro n
  simp only [A190944]

end A190944

/-! ## A190944.P2098365779167243082

`A007088(3*n)`
-/

namespace A190944.P2098365779167243082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (3 * n)

end

end A190944.P2098365779167243082

namespace A190944

/-- `A007088(3*n)` -/
def P2098365779167243082.Spec : Prop :=
  ∀ n, P2098365779167243082.a n = A190944 n

end A190944

/-! ## A190944.P2659863114584332454

`xor(A000007(n), A007088(A008486(n)))`
-/

namespace A190944.P2659863114584332454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A007088 (A008486 n).toNat)

end

end A190944.P2659863114584332454

namespace A190944

/-- `xor(A000007(n), A007088(A008486(n)))` -/
def P2659863114584332454.Spec : Prop :=
  ∀ n, P2659863114584332454.a n = A190944 n

end A190944

/-! ## A190944.P8066878594743881806

`A007088(A008588(n))/10`
-/

namespace A190944.P8066878594743881806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A008588 n).toNat : ℚ) / 10

end

end A190944.P8066878594743881806

namespace A190944

/-- `A007088(A008588(n))/10` -/
def P8066878594743881806.Spec : Prop :=
  ∀ n, P8066878594743881806.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P9577959638237149051

`A303596(A372060(3*n))`
-/

namespace A190944.P9577959638237149051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 (3 * n)).toNat

end

end A190944.P9577959638237149051

namespace A190944

/-- `A303596(A372060(3*n))` -/
def P9577959638237149051.Spec : Prop :=
  ∀ n, P9577959638237149051.a n = A190944 n

end A190944

/-! ## A190944.P15987571989171133711

`sqrt(A063009(3*n))`
-/

namespace A190944.P15987571989171133711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (3 * n) : ℝ)

end

end A190944.P15987571989171133711

namespace A190944

/-- `sqrt(A063009(3*n))` -/
def P15987571989171133711.Spec : Prop :=
  ∀ n, P15987571989171133711.a n = (A190944 n : ℝ)

end A190944

/-! ## A190944.P3019215700692184117

`A204093(3*n)/6`
-/

namespace A190944.P3019215700692184117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (3 * n) : ℚ) / 6

end

end A190944.P3019215700692184117

namespace A190944

/-- `A204093(3*n)/6` -/
def P3019215700692184117.Spec : Prop :=
  ∀ n, P3019215700692184117.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P8373477867069412997

`A204094(3*n)/7`
-/

namespace A190944.P8373477867069412997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 (3 * n) : ℚ) / 7

end

end A190944.P8373477867069412997

namespace A190944

/-- `A204094(3*n)/7` -/
def P8373477867069412997.Spec : Prop :=
  ∀ n, P8373477867069412997.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P2039972620390649659

`A204095(3*n)/8`
-/

namespace A190944.P2039972620390649659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 (3 * n) : ℚ) / 8

end

end A190944.P2039972620390649659

namespace A190944

/-- `A204095(3*n)/8` -/
def P2039972620390649659.Spec : Prop :=
  ∀ n, P2039972620390649659.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P3691252362545603820

`A097256(3*n)/9`
-/

namespace A190944.P3691252362545603820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (3 * n) : ℚ) / 9

end

end A190944.P3691252362545603820

namespace A190944

/-- `A097256(3*n)/9` -/
def P3691252362545603820.Spec : Prop :=
  ∀ n, P3691252362545603820.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P10479449421925545456

`A099820(3*n)/10`
-/

namespace A190944.P10479449421925545456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 (3 * n) : ℚ) / 10

end

end A190944.P10479449421925545456

namespace A190944

/-- `A099820(3*n)/10` -/
def P10479449421925545456.Spec : Prop :=
  ∀ n, P10479449421925545456.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P13693653063424188620

`A169965(3*n+1)/2`
-/

namespace A190944.P13693653063424188620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (3 * n + 1) : ℚ) / 2

end

end A190944.P13693653063424188620

namespace A190944

/-- `A169965(3*n+1)/2` -/
def P13693653063424188620.Spec : Prop :=
  ∀ n, P13693653063424188620.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P12154646531118631546

`A169966(3*n+1)/3`
-/

namespace A190944.P12154646531118631546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (3 * n + 1) : ℚ) / 3

end

end A190944.P12154646531118631546

namespace A190944

/-- `A169966(3*n+1)/3` -/
def P12154646531118631546.Spec : Prop :=
  ∀ n, P12154646531118631546.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P14607144927713831308

`A169967(3*n+1)/4`
-/

namespace A190944.P14607144927713831308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (3 * n + 1) : ℚ) / 4

end

end A190944.P14607144927713831308

namespace A190944

/-- `A169967(3*n+1)/4` -/
def P14607144927713831308.Spec : Prop :=
  ∀ n, P14607144927713831308.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P5197917484819663818

`A169964(3*n+1)/5`
-/

namespace A190944.P5197917484819663818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (3 * n + 1) : ℚ) / 5

end

end A190944.P5197917484819663818

namespace A190944

/-- `A169964(3*n+1)/5` -/
def P5197917484819663818.Spec : Prop :=
  ∀ n, P5197917484819663818.a n = (A190944 n : ℚ)

end A190944

/-! ## A190944.P11051301498480524819

`A304747(A303768(3*n))`
-/

namespace A190944.P11051301498480524819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304747 (A303768 (3 * n)).toNat

end

end A190944.P11051301498480524819

namespace A190944

/-- `A304747(A303768(3*n))` -/
def P11051301498480524819.Spec : Prop :=
  ∀ n, P11051301498480524819.a n = A190944 n

end A190944

/-! ## A190944.P5577946383238978889

`A014550(A006068(3*n))`
-/

namespace A190944.P5577946383238978889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A006068 (3 * n)).toNat

end

end A190944.P5577946383238978889

namespace A190944

/-- `A014550(A006068(3*n))` -/
def P5577946383238978889.Spec : Prop :=
  ∀ n, P5577946383238978889.a n = A190944 n

end A190944

/-! ## A190944.P17024007359806841595

`A265747(A197911(3*n))`
-/

namespace A190944.P17024007359806841595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A197911 (3 * n)).toNat

end

end A190944.P17024007359806841595

namespace A190944

/-- `A265747(A197911(3*n))` -/
def P17024007359806841595.Spec : Prop :=
  ∀ n, P17024007359806841595.a n = A190944 n

end A190944

/-! ## A190944.P1774799365540416154

`A169683(A005187(3*n))`
-/

namespace A190944.P1774799365540416154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 (A005187 (3 * n)).toNat

end

end A190944.P1774799365540416154

namespace A190944

/-- `A169683(A005187(3*n))` -/
def P1774799365540416154.Spec : Prop :=
  ∀ n, P1774799365540416154.a n = A190944 n

end A190944

/-! ## A190944.P1650681337123569585

`A185544(6*n)`
-/

namespace A190944.P1650681337123569585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (6 * n)

end

end A190944.P1650681337123569585

namespace A190944

/-- `A185544(6*n)` -/
def P1650681337123569585.Spec : Prop :=
  ∀ n, P1650681337123569585.a n = A190944 n

end A190944

/-!
# A190946: Number of permutations of the n*(n+1)/2 numbers (i copies of i | i=1..n), with no element equal to another within a distance of 2.

The programs for A190946, there is no canonical definition to state claims against.
-/

/-! ## A190946.P18037144167664629406

`A336611(A000010(a(n-1-and(n, 2*n))+1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A190946.P18037144167664629406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A336611 (A000010 (a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1).toNat).toNat

end

end A190946.P18037144167664629406

/-!
# A190947: Number of permutations of the n*(n+1)/2 numbers (i copies of i | i=1..n), with no element equal to another within a distance of 3.

The programs for A190947, there is no canonical definition to state claims against.
-/

/-! ## A190947.P16516766795253011141

`A073786(A288321(∑[n]))`
-/

namespace A190947.P16516766795253011141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073786 (A288321 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190947.P16516766795253011141

/-! ## A190947.P12449123875478804232

`A073786(C(A000900(n), n))`
-/

namespace A190947.P12449123875478804232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073786 (Nat.choose (A000900 n).toNat n)

end

end A190947.P12449123875478804232

/-!
# A190949: Odd Fibonacci numbers with odd index.

The programs for A190949, the canonical program `A190949.P12045969265448107205` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190949 has offset 1).

The definition of A190949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190949.P9739311214272777150

`ogf((1+5x-5x^2-x^3)/(1-18x^2+x^4))`
-/

namespace A190949.P9739311214272777150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -5, -1] [1, 0, -18, 0, 1] n

end

end A190949.P9739311214272777150

namespace A190949

/-- `ogf((1+5x-5x^2-x^3)/(1-18x^2+x^4))` -/
def P9739311214272777150.Spec : Prop :=
  ∀ n, P9739311214272777150.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P12045969265448107205

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=89`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190949

/-- `18*a(n-2)-a(n-4)` -/
def P12045969265448107205.Spec : Prop :=
  ∀ n, P12045969265448107205.a n = A190949 (n + 1)

theorem P12045969265448107205.correct : P12045969265448107205.Spec := by
  intro n
  simp only [A190949, Nat.add_sub_cancel]

end A190949

/-! ## A190949.P6694525569855945190

`A000045(A007310(n+1))`
-/

namespace A190949.P6694525569855945190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007310 (n + 1)).toNat

end

end A190949.P6694525569855945190

namespace A190949

/-- `A000045(A007310(n+1))` -/
def P6694525569855945190.Spec : Prop :=
  ∀ n, P6694525569855945190.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P15626584808676615131

`2*A077259(n)+1`
-/

namespace A190949.P15626584808676615131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077259 n + 1

end

end A190949.P15626584808676615131

namespace A190949

/-- `2*A077259(n)+1` -/
def P15626584808676615131.Spec : Prop :=
  ∀ n, P15626584808676615131.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P17028493574910230167

`A094967(3*n+1)`
-/

namespace A190949.P17028493574910230167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (3 * n + 1)

end

end A190949.P17028493574910230167

namespace A190949

/-- `A094967(3*n+1)` -/
def P17028493574910230167.Spec : Prop :=
  ∀ n, P17028493574910230167.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P13138707144768510683

`2*A351354(n+1)-1`
-/

namespace A190949.P13138707144768510683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351354 (n + 1) - 1

end

end A190949.P13138707144768510683

namespace A190949

/-- `2*A351354(n+1)-1` -/
def P13138707144768510683.Spec : Prop :=
  ∀ n, P13138707144768510683.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P16689824372416374189

`A000045(or(1, 3*n+1))`
-/

namespace A190949.P16689824372416374189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 1 (3 * n + 1))

end

end A190949.P16689824372416374189

namespace A190949

/-- `A000045(or(1, 3*n+1))` -/
def P16689824372416374189.Spec : Prop :=
  ∀ n, P16689824372416374189.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P734884775436993436

`record[A000045(lcm(6, n+1)/6)]`
-/

namespace A190949.P734884775436993436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.lcm 6 (n + 1) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190949.P734884775436993436

namespace A190949

/-- `record[A000045(lcm(6, n+1)/6)]` -/
def P734884775436993436.Spec : Prop :=
  ∀ n, P734884775436993436.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P4628014177806803581

`A000045(∑[3^(n%2)]+n)`
-/

namespace A190949.P4628014177806803581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A190949.P4628014177806803581

namespace A190949

/-- `A000045(∑[3^(n%2)]+n)` -/
def P4628014177806803581.Spec : Prop :=
  ∀ n, P4628014177806803581.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P1610830306877069870

`A000045(comp[2*lcm(2, n)-n])`
-/

namespace A190949.P1610830306877069870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A190949.P1610830306877069870

namespace A190949

/-- `A000045(comp[2*lcm(2, n)-n])` -/
def P1610830306877069870.Spec : Prop :=
  ∀ n, P1610830306877069870.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P5209572661251890173

`A000045(Δ[floor(3/2*n²)])`
-/

namespace A190949.P5209572661251890173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A190949.P5209572661251890173

namespace A190949

/-- `A000045(Δ[floor(3/2*n²)])` -/
def P5209572661251890173.Spec : Prop :=
  ∀ n, P5209572661251890173.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P15287313908350018509

`record[A000045((2*n+1)/gcd(3, 1-n))]`
-/

namespace A190949.P15287313908350018509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190949.P15287313908350018509

namespace A190949

/-- `record[A000045((2*n+1)/gcd(3, 1-n))]` -/
def P15287313908350018509.Spec : Prop :=
  ∀ n, P15287313908350018509.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P4937730162482382224

`A014437(A014601(n))`
-/

namespace A190949.P4937730162482382224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (A014601 n).toNat

end

end A190949.P4937730162482382224

namespace A190949

/-- `A014437(A014601(n))` -/
def P4937730162482382224.Spec : Prop :=
  ∀ n, P4937730162482382224.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P3793315720627727720

`A079497(A004277(n))`
-/

namespace A190949.P3793315720627727720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079497 (A004277 n).toNat

end

end A190949.P3793315720627727720

namespace A190949

/-- `A079497(A004277(n))` -/
def P3793315720627727720.Spec : Prop :=
  ∀ n, P3793315720627727720.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P13333466625388101101

`A122367(A007494(n))`
-/

namespace A190949.P13333466625388101101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (A007494 n).toNat

end

end A190949.P13333466625388101101

namespace A190949

/-- `A122367(A007494(n))` -/
def P13333466625388101101.Spec : Prop :=
  ∀ n, P13333466625388101101.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P3818357588350095543

`A272912(A295821(n))`
-/

namespace A190949.P3818357588350095543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A295821 n).toNat

end

end A190949.P3818357588350095543

namespace A190949

/-- `A272912(A295821(n))` -/
def P3818357588350095543.Spec : Prop :=
  ∀ n, P3818357588350095543.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P2256270266974477383

`A001519(A007494(n)+1)`
-/

namespace A190949.P2256270266974477383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A007494 n + 1).toNat

end

end A190949.P2256270266974477383

namespace A190949

/-- `A001519(A007494(n)+1)` -/
def P2256270266974477383.Spec : Prop :=
  ∀ n, P2256270266974477383.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P6075038018910537568

`A001519(A032766(n+1))`
-/

namespace A190949.P6075038018910537568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A032766 (n + 1)).toNat

end

end A190949.P6075038018910537568

namespace A190949

/-- `A001519(A032766(n+1))` -/
def P6075038018910537568.Spec : Prop :=
  ∀ n, P6075038018910537568.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P11221331552155996965

`A079497(A004275(n+1))`
-/

namespace A190949.P11221331552155996965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079497 (A004275 (n + 1)).toNat

end

end A190949.P11221331552155996965

namespace A190949

/-- `A079497(A004275(n+1))` -/
def P11221331552155996965.Spec : Prop :=
  ∀ n, P11221331552155996965.a n = A190949 (n + 1)

end A190949

/-! ## A190949.P8657879889215746965

`A087123(A047243(n+1))`
-/

namespace A190949.P8657879889215746965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 (A047243 (n + 1)).toNat

end

end A190949.P8657879889215746965

namespace A190949

/-- `A087123(A047243(n+1))` -/
def P8657879889215746965.Spec : Prop :=
  ∀ n, P8657879889215746965.a n = A190949 (n + 1)

end A190949

/-!
# A190950: Denominators corresponding to A190948.

The programs for A190950, there is no canonical definition to state claims against.
-/

/-! ## A190950.P16594078031888659902

`A055231(A000079(n)*A058919(n))`
-/

namespace A190950.P16594078031888659902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000079 n * A058919 n).toNat

end

end A190950.P16594078031888659902

/-! ## A190950.P10465765130480852668

`A055231(lcm(A000079(n), A058919(n)))`
-/

namespace A190950.P10465765130480852668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (Int.lcm (A000079 n) (A058919 n))

end

end A190950.P10465765130480852668

/-!
# A190951: Closest integer to the largest real number x such that exp(x) = x^n, for n>=3.

The programs for A190951, there is no canonical definition to state claims against.
-/

/-! ## A190951.P2149144840431085471

`A001462(A080663(n+2)-A093384(n+9))`
-/

namespace A190951.P2149144840431085471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A080663 (n + 2) - A093384 (n + 9)).toNat

end

end A190951.P2149144840431085471

/-! ## A190951.P14481690849646378902

`A008620(A001462((6*n+11)*A016789(n+1)))`
-/

namespace A190951.P14481690849646378902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A001462 ((6 * n + 11 : ℤ) * A016789 (n + 1)).toNat).toNat

end

end A190951.P14481690849646378902

/-! ## A190951.P7581781678076289516

`A001462(A001651(record[A196167(n+1)]))`
-/

namespace A190951.P7581781678076289516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001651 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A190951.P7581781678076289516

/-! ## A190951.P8132155981782452857

`round(log2(A136224(n+2)))`
-/

namespace A190951.P8132155981782452857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A136224 (n + 2) : ℝ))

end

end A190951.P8132155981782452857

/-! ## A190951.P1659685768157320832

`round(log2(A158839(n+2)))`
-/

namespace A190951.P1659685768157320832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A158839 (n + 2) : ℝ))

end

end A190951.P1659685768157320832

/-!
# A190952: Largest integer k for which exp(k) < k^n, n>=3.

The programs for A190952, there is no canonical definition to state claims against.
-/

/-! ## A190952.P10855735948842587847

`A088346(n+3)-1`
-/

namespace A190952.P10855735948842587847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088346 (n + 3) - 1

end

end A190952.P10855735948842587847

/-! ## A190952.P7795605024960476602

`eq[1, A291197(n+2)]+2`
-/

namespace A190952.P7795605024960476602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291197 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A190952.P7795605024960476602

/-! ## A190952.P11015110484826464977

`A023443(A088346(n+3))`
-/

namespace A190952.P11015110484826464977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A088346 (n + 3)).toNat

end

end A190952.P11015110484826464977

/-! ## A190952.P1484571301668610004

`A023444(A088346(n+3)+1)`
-/

namespace A190952.P1484571301668610004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A088346 (n + 3) + 1).toNat

end

end A190952.P1484571301668610004

/-! ## A190952.P12705678588760944469

`A289207(A088346(n+3)+1)`
-/

namespace A190952.P12705678588760944469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A088346 (n + 3) + 1).toNat

end

end A190952.P12705678588760944469

/-! ## A190952.P4848033359325561049

`A046667(2*A088346(n+3))`
-/

namespace A190952.P4848033359325561049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A088346 (n + 3)).toNat

end

end A190952.P4848033359325561049

/-! ## A190952.P12770574920622362049

`A065423(2*A088346(n+3))`
-/

namespace A190952.P12770574920622362049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A088346 (n + 3)).toNat

end

end A190952.P12770574920622362049

/-! ## A190952.P7763285318937378756

`A249738(2*A088346(n+3))`
-/

namespace A190952.P7763285318937378756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A088346 (n + 3)).toNat

end

end A190952.P7763285318937378756

/-!
# A190953: a(n) = 8*a(n-1) + 10*a(n-2), with a(0)=0, a(1)=1.

The programs for A190953, the canonical program `A190953.P4662524997095681000` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190953 has offset 0).

The definition of A190953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A190953.P4662524997095681000`, by `A190953.P4662524997095681000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190953.P4196219796079299352

`ogf(x/(1-8x-10x^2))`
-/

namespace A190953.P4196219796079299352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, -10] n

end

end A190953.P4196219796079299352

namespace A190953

/-- `ogf(x/(1-8x-10x^2))` -/
def P4196219796079299352.Spec : Prop :=
  ∀ n, P4196219796079299352.a n = A190953 n

end A190953

/-! ## A190953.P4662524997095681000

`8*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190953

/-- `8*a(n-1)+10*a(n-2)` -/
def P4662524997095681000.Spec : Prop :=
  ∀ n, (P4662524997095681000.a n : ℤ) = A190953 n

theorem P4662524997095681000.correct : P4662524997095681000.Spec := by
  intro n
  simp only [A190953]

end A190953

/-!
# A190954: a(n) = 10*a(n-1) + 4*a(n-2), with a(0)=0, a(1)=1.

The programs for A190954, the canonical program `A190954.P16627965120858453648` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190954 has offset 0).

The definition of A190954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+4*a(n-2)` (program `A190954.P16627965120858453648`, by `A190954.P16627965120858453648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190954.P8821533595539439277

`ogf(x/(1-10x-4x^2))`
-/

namespace A190954.P8821533595539439277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, -4] n

end

end A190954.P8821533595539439277

namespace A190954

/-- `ogf(x/(1-10x-4x^2))` -/
def P8821533595539439277.Spec : Prop :=
  ∀ n, P8821533595539439277.a n = A190954 n

end A190954

/-! ## A190954.P16627965120858453648

`10*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190954

/-- `10*a(n-1)+4*a(n-2)` -/
def P16627965120858453648.Spec : Prop :=
  ∀ n, (P16627965120858453648.a n : ℤ) = A190954 n

theorem P16627965120858453648.correct : P16627965120858453648.Spec := by
  intro n
  simp only [A190954]

end A190954

/-! ## A190954.P10076152887702656466

`(A164581(n)-A015449(n))*A011782(n)`
-/

namespace A190954.P10076152887702656466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164581 n - A015449 n) * A011782 n

end

end A190954.P10076152887702656466

namespace A190954

/-- `(A164581(n)-A015449(n))*A011782(n)` -/
def P10076152887702656466.Spec : Prop :=
  ∀ n, P10076152887702656466.a n = A190954 n

end A190954

/-! ## A190954.P11919635992321533419

`-((A052918(n)-A015449(n+1))*A011782(n))`
-/

namespace A190954.P11919635992321533419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A052918 n - A015449 (n + 1)) * A011782 n)

end

end A190954.P11919635992321533419

namespace A190954

/-- `-((A052918(n)-A015449(n+1))*A011782(n))` -/
def P11919635992321533419.Spec : Prop :=
  ∀ n, P11919635992321533419.a n = A190954 n

end A190954

/-! ## A190954.P15185138830836270462

`1/58*sqrt(29)*((5+sqrt(29))^n-(5-sqrt(29))^n)`
-/

namespace A190954.P15185138830836270462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 58 : ℝ) * Real.sqrt (29 : ℝ) * ((5 + Real.sqrt (29 : ℝ)) ^ n - (5 - Real.sqrt (29 : ℝ)) ^ n)

end

end A190954.P15185138830836270462

namespace A190954

/-- `1/58*sqrt(29)*((5+sqrt(29))^n-(5-sqrt(29))^n)` -/
def P15185138830836270462.Spec : Prop :=
  ∀ n, P15185138830836270462.a n = (A190954 n : ℝ)

theorem P15185138830836270462.correct : P15185138830836270462.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190954, Nat.add_sub_cancel, A190954.P15185138830836270462.a, A190954.P16627965120858453648.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190954, Nat.add_sub_cancel, A190954.P15185138830836270462.a, A190954.P16627965120858453648.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190954

/-!
# A190955: a(n) = 10*a(n-1) + 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A190955, the canonical program `A190955.P4491068273993953323` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190955 has offset 0).

The definition of A190955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+5*a(n-2)` (program `A190955.P4491068273993953323`, by `A190955.P4491068273993953323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190955.P14048042110368138420

`ogf(x/(1-10x-5x^2))`
-/

namespace A190955.P14048042110368138420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, -5] n

end

end A190955.P14048042110368138420

namespace A190955

/-- `ogf(x/(1-10x-5x^2))` -/
def P14048042110368138420.Spec : Prop :=
  ∀ n, P14048042110368138420.a n = A190955 n

end A190955

/-! ## A190955.P4491068273993953323

`10*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190955

/-- `10*a(n-1)+5*a(n-2)` -/
def P4491068273993953323.Spec : Prop :=
  ∀ n, (P4491068273993953323.a n : ℤ) = A190955 n

theorem P4491068273993953323.correct : P4491068273993953323.Spec := by
  intro n
  simp only [A190955]

end A190955

/-! ## A190955.P6386273695176191232

`5*(a(n-2)+2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A190955.P6386273695176191232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * (a (n - 2) + 2 * a (n - 1))

end

end A190955.P6386273695176191232

namespace A190955

/-- `5*(a(n-2)+2*a(n-1))` -/
def P6386273695176191232.Spec : Prop :=
  ∀ n, (P6386273695176191232.a n : ℤ) = A190955 n

end A190955

/-! ## A190955.P2974607863912150256

`5*(3*a(n-1)-(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A190955.P2974607863912150256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * (3 * a (n - 1) - (a (n - 1) - a (n - 2)))

end

end A190955.P2974607863912150256

namespace A190955

/-- `5*(3*a(n-1)-(a(n-1)-a(n-2)))` -/
def P2974607863912150256.Spec : Prop :=
  ∀ n, P2974607863912150256.a n = A190955 n

end A190955

/-! ## A190955.P4575841393497555080

`1/60*sqrt(30)*((5+sqrt(30))^n-(5-sqrt(30))^n)`
-/

namespace A190955.P4575841393497555080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 60 : ℝ) * Real.sqrt (30 : ℝ) * ((5 + Real.sqrt (30 : ℝ)) ^ n - (5 - Real.sqrt (30 : ℝ)) ^ n)

end

end A190955.P4575841393497555080

namespace A190955

/-- `1/60*sqrt(30)*((5+sqrt(30))^n-(5-sqrt(30))^n)` -/
def P4575841393497555080.Spec : Prop :=
  ∀ n, P4575841393497555080.a n = (A190955 n : ℝ)

theorem P4575841393497555080.correct : P4575841393497555080.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190955, Nat.add_sub_cancel, A190955.P4575841393497555080.a, A190955.P4491068273993953323.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190955, Nat.add_sub_cancel, A190955.P4575841393497555080.a, A190955.P4491068273993953323.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190955

/-! ## A190955.P602129516150205845

`A342134((n+3)²-∑[n])`
-/

namespace A190955.P602129516150205845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342134 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190955.P602129516150205845

namespace A190955

/-- `A342134((n+3)²-∑[n])` -/
def P602129516150205845.Spec : Prop :=
  ∀ n, P602129516150205845.a n = A190955 n

end A190955

/-!
# A190956: a(n) = 10*a(n-1) + 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190956, the canonical program `A190956.P4237136274047550343` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190956 has offset 0).

The definition of A190956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+6*a(n-2)` (program `A190956.P4237136274047550343`, by `A190956.P4237136274047550343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190956.P3508035635246751907

`ogf(x/(1-10x-6x^2))`
-/

namespace A190956.P3508035635246751907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, -6] n

end

end A190956.P3508035635246751907

namespace A190956

/-- `ogf(x/(1-10x-6x^2))` -/
def P3508035635246751907.Spec : Prop :=
  ∀ n, P3508035635246751907.a n = A190956 n

end A190956

/-! ## A190956.P4237136274047550343

`10*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190956

/-- `10*a(n-1)+6*a(n-2)` -/
def P4237136274047550343.Spec : Prop :=
  ∀ n, (P4237136274047550343.a n : ℤ) = A190956 n

theorem P4237136274047550343.correct : P4237136274047550343.Spec := by
  intro n
  simp only [A190956]

end A190956

/-! ## A190956.P17122287559751806450

`1/62*sqrt(31)*((5+sqrt(31))^n-(5-sqrt(31))^n)`
-/

namespace A190956.P17122287559751806450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 62 : ℝ) * Real.sqrt (31 : ℝ) * ((5 + Real.sqrt (31 : ℝ)) ^ n - (5 - Real.sqrt (31 : ℝ)) ^ n)

end

end A190956.P17122287559751806450

namespace A190956

/-- `1/62*sqrt(31)*((5+sqrt(31))^n-(5-sqrt(31))^n)` -/
def P17122287559751806450.Spec : Prop :=
  ∀ n, P17122287559751806450.a n = (A190956 n : ℝ)

theorem P17122287559751806450.correct : P17122287559751806450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190956, Nat.add_sub_cancel, A190956.P17122287559751806450.a, A190956.P4237136274047550343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190956, Nat.add_sub_cancel, A190956.P17122287559751806450.a, A190956.P4237136274047550343.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190956

/-!
# A190957: a(n) = 10*a(n-1) + 8*a(n-2), with a(0)=0, a(1)=1.

The programs for A190957, the canonical program `A190957.P11504358113211397093` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190957 has offset 0).

The definition of A190957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+8*a(n-2)` (program `A190957.P11504358113211397093`, by `A190957.P11504358113211397093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190957.P15329167671316721986

`ogf(x/(1-10x-8x^2))`
-/

namespace A190957.P15329167671316721986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, -8] n

end

end A190957.P15329167671316721986

namespace A190957

/-- `ogf(x/(1-10x-8x^2))` -/
def P15329167671316721986.Spec : Prop :=
  ∀ n, P15329167671316721986.a n = A190957 n

end A190957

/-! ## A190957.P11504358113211397093

`10*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190957

/-- `10*a(n-1)+8*a(n-2)` -/
def P11504358113211397093.Spec : Prop :=
  ∀ n, (P11504358113211397093.a n : ℤ) = A190957 n

theorem P11504358113211397093.correct : P11504358113211397093.Spec := by
  intro n
  simp only [A190957]

end A190957

/-! ## A190957.P5314004280439478841

`A011782(n)*A015535(n)`
-/

namespace A190957.P5314004280439478841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A015535 n

end

end A190957.P5314004280439478841

namespace A190957

/-- `A011782(n)*A015535(n)` -/
def P5314004280439478841.Spec : Prop :=
  ∀ n, P5314004280439478841.a n = A190957 n

end A190957

/-! ## A190957.P11965124297553319831

`A000079(n)/2*A015535(n)`
-/

namespace A190957.P11965124297553319831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A015535 n : ℚ)

end

end A190957.P11965124297553319831

namespace A190957

/-- `A000079(n)/2*A015535(n)` -/
def P11965124297553319831.Spec : Prop :=
  ∀ n, P11965124297553319831.a n = (A190957 n : ℚ)

end A190957

/-! ## A190957.P3164473700692458057

`record[A048675(n+1)]*A015535(n)`
-/

namespace A190957.P3164473700692458057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A015535 n

end

end A190957.P3164473700692458057

namespace A190957

/-- `record[A048675(n+1)]*A015535(n)` -/
def P3164473700692458057.Spec : Prop :=
  ∀ n, P3164473700692458057.a n = A190957 n

end A190957

/-! ## A190957.P6713882222478171082

`1/66*sqrt(33)*((5+sqrt(33))^n-(5-sqrt(33))^n)`
-/

namespace A190957.P6713882222478171082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 66 : ℝ) * Real.sqrt (33 : ℝ) * ((5 + Real.sqrt (33 : ℝ)) ^ n - (5 - Real.sqrt (33 : ℝ)) ^ n)

end

end A190957.P6713882222478171082

namespace A190957

/-- `1/66*sqrt(33)*((5+sqrt(33))^n-(5-sqrt(33))^n)` -/
def P6713882222478171082.Spec : Prop :=
  ∀ n, P6713882222478171082.a n = (A190957 n : ℝ)

theorem P6713882222478171082.correct : P6713882222478171082.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190957, Nat.add_sub_cancel, A190957.P6713882222478171082.a, A190957.P11504358113211397093.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190957, Nat.add_sub_cancel, A190957.P6713882222478171082.a, A190957.P11504358113211397093.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190957

/-!
# A190958: a(n) = 2*a(n-1) - 10*a(n-2), with a(0) = 0, a(1) = 1.

The programs for A190958, the canonical program `A190958.P8190372717391026488` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190958 has offset 0).

The definition of A190958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-10*a(n-2)` (program `A190958.P8190372717391026488`, by `A190958.P8190372717391026488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190958.P12201495319357626204

`ogf(x/(1-2x+10x^2))`
-/

namespace A190958.P12201495319357626204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 10] n

end

end A190958.P12201495319357626204

namespace A190958

/-- `ogf(x/(1-2x+10x^2))` -/
def P12201495319357626204.Spec : Prop :=
  ∀ n, P12201495319357626204.a n = A190958 n

end A190958

/-! ## A190958.P8190372717391026488

`2*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190958

/-- `2*a(n-1)-10*a(n-2)` -/
def P8190372717391026488.Spec : Prop :=
  ∀ n, P8190372717391026488.a n = A190958 n

theorem P8190372717391026488.correct : P8190372717391026488.Spec := by
  intro n
  simp only [A190958]

end A190958

/-! ## A190958.P8170241091459344873

`1/3*10^(n/2)*sin(n*atan(3))`
-/

namespace A190958.P8170241091459344873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 3 : ℝ) * (10 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * Real.sin ((n : ℝ) * Real.arctan (3 : ℝ))

end

end A190958.P8170241091459344873

namespace A190958

/-- `1/3*10^(n/2)*sin(n*atan(3))` -/
def P8170241091459344873.Spec : Prop :=
  ∀ n, P8170241091459344873.a n = (A190958 n : ℝ)

end A190958

/-! ## A190958.P10815515379535320770

`∑{#}[floor(n/2), (-1)^#*3^(2*#)*C(n, 2*#+1)]`
-/

namespace A190958.P10815515379535320770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (3 ^ (2 * k) : ℤ) * (Nat.choose n (2 * k + 1) : ℤ)

end

end A190958.P10815515379535320770

namespace A190958

/-- `∑{#}[floor(n/2), (-1)^#*3^(2*#)*C(n, 2*#+1)]` -/
def P10815515379535320770.Spec : Prop :=
  ∀ n, P10815515379535320770.a n = A190958 n

end A190958

/-! ## A190958.P1433080378417270731

`2*(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190958.P1433080378417270731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - 5 * a (n - 2))

end

end A190958.P1433080378417270731

namespace A190958

/-- `2*(a(n-1)-5*a(n-2))` -/
def P1433080378417270731.Spec : Prop :=
  ∀ n, P1433080378417270731.a n = A190958 n

theorem P1433080378417270731.correct : P1433080378417270731.Spec := by
  intro n
  simp only [A190958, Nat.add_sub_cancel, A190958.P1433080378417270731.a, A190958.P8190372717391026488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190958

/-!
# A190959: a(n) = 3*a(n-1) - 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A190959, the canonical program `A190959.P18206287475247165486` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190959 has offset 0).

The definition of A190959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-5*a(n-2)` (program `A190959.P18206287475247165486`, by `A190959.P18206287475247165486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190959.P6536489724947660859

`ogf(x/(1-3x+5x^2))`
-/

namespace A190959.P6536489724947660859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 5] n

end

end A190959.P6536489724947660859

namespace A190959

/-- `ogf(x/(1-3x+5x^2))` -/
def P6536489724947660859.Spec : Prop :=
  ∀ n, P6536489724947660859.a n = A190959 n

end A190959

/-! ## A190959.P18206287475247165486

`3*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190959

/-- `3*a(n-1)-5*a(n-2)` -/
def P18206287475247165486.Spec : Prop :=
  ∀ n, P18206287475247165486.a n = A190959 n

theorem P18206287475247165486.correct : P18206287475247165486.Spec := by
  intro n
  simp only [A190959]

end A190959

/-! ## A190959.P5043569736596842478

`(a(n-1)-a(n-2))/(1/2)²-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A190959.P5043569736596842478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2 - (a (n - 1) + a (n - 2))

end

end A190959.P5043569736596842478

namespace A190959

/-- `(a(n-1)-a(n-2))/(1/2)²-(a(n-1)+a(n-2))` -/
def P5043569736596842478.Spec : Prop :=
  ∀ n, P5043569736596842478.a n = (A190959 n : ℚ)

end A190959

/-!
# A190960: a(n) = 3*a(n-1) - 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190960, the canonical program `A190960.P1516089428030594899` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190960 has offset 0).

The definition of A190960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-6*a(n-2)` (program `A190960.P1516089428030594899`, by `A190960.P1516089428030594899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190960.P12698693829900166222

`ogf(x/(1-3x+6x^2))`
-/

namespace A190960.P12698693829900166222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 6] n

end

end A190960.P12698693829900166222

namespace A190960

/-- `ogf(x/(1-3x+6x^2))` -/
def P12698693829900166222.Spec : Prop :=
  ∀ n, P12698693829900166222.a n = A190960 n

end A190960

/-! ## A190960.P1516089428030594899

`3*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190960

/-- `3*a(n-1)-6*a(n-2)` -/
def P1516089428030594899.Spec : Prop :=
  ∀ n, P1516089428030594899.a n = A190960 n

theorem P1516089428030594899.correct : P1516089428030594899.Spec := by
  intro n
  simp only [A190960]

end A190960

/-! ## A190960.P16033497350838866045

`a(n-1)-12*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A190960.P16033497350838866045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) - 12 * a (n - 3)

end

end A190960.P16033497350838866045

namespace A190960

/-- `a(n-1)-12*a(n-3)` -/
def P16033497350838866045.Spec : Prop :=
  ∀ n, P16033497350838866045.a n = A190960 n

end A190960

/-!
# A190961: a(n) = 3*a(n-1) - 7*a(n-2), with a(0)=0, a(1)=1.

The programs for A190961, the canonical program `A190961.P15979151508594347542` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190961 has offset 0).

The definition of A190961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-7*a(n-2)` (program `A190961.P15979151508594347542`, by `A190961.P15979151508594347542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190961.P14657763322938145815

`ogf(x/(1-3x+7x^2))`
-/

namespace A190961.P14657763322938145815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 7] n

end

end A190961.P14657763322938145815

namespace A190961

/-- `ogf(x/(1-3x+7x^2))` -/
def P14657763322938145815.Spec : Prop :=
  ∀ n, P14657763322938145815.a n = A190961 n

end A190961

/-! ## A190961.P15979151508594347542

`3*a(n-1)-7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190961

/-- `3*a(n-1)-7*a(n-2)` -/
def P15979151508594347542.Spec : Prop :=
  ∀ n, P15979151508594347542.a n = A190961 n

theorem P15979151508594347542.correct : P15979151508594347542.Spec := by
  intro n
  simp only [A190961]

end A190961

/-!
# A190962: a(n) = 3*a(n-1) - 8*a(n-2), with a(0)=0, a(1)=1.

The programs for A190962, the canonical program `A190962.P6999239430981092324` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190962 has offset 0).

The definition of A190962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-8*a(n-2)` (program `A190962.P6999239430981092324`, by `A190962.P6999239430981092324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190962.P9019533598244415212

`ogf(x/(1-3x+8x^2))`
-/

namespace A190962.P9019533598244415212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 8] n

end

end A190962.P9019533598244415212

namespace A190962

/-- `ogf(x/(1-3x+8x^2))` -/
def P9019533598244415212.Spec : Prop :=
  ∀ n, P9019533598244415212.a n = A190962 n

end A190962

/-! ## A190962.P6999239430981092324

`3*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190962

/-- `3*a(n-1)-8*a(n-2)` -/
def P6999239430981092324.Spec : Prop :=
  ∀ n, P6999239430981092324.a n = A190962 n

theorem P6999239430981092324.correct : P6999239430981092324.Spec := by
  intro n
  simp only [A190962]

end A190962

/-! ## A190962.P12603698001719182431

`a(n-2)-24*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A190962.P12603698001719182431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) - 24 * a (n - 3)

end

end A190962.P12603698001719182431

namespace A190962

/-- `a(n-2)-24*a(n-3)` -/
def P12603698001719182431.Spec : Prop :=
  ∀ n, P12603698001719182431.a n = A190962 n

end A190962

/-!
# A190963: a(n) = 3*a(n-1) - 9*a(n-2), with a(0)=0, a(1)=1.

The programs for A190963, the canonical program `A190963.P13470470296001156618` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190963 has offset 0).

The definition of A190963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-9*a(n-2)` (program `A190963.P13470470296001156618`, by `A190963.P13470470296001156618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190963.P10290463511572592290

`ogf(x/(1-3x+9x^2))`
-/

namespace A190963.P10290463511572592290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 9] n

end

end A190963.P10290463511572592290

namespace A190963

/-- `ogf(x/(1-3x+9x^2))` -/
def P10290463511572592290.Spec : Prop :=
  ∀ n, P10290463511572592290.a n = A190963 n

end A190963

/-! ## A190963.P13470470296001156618

`3*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190963

/-- `3*a(n-1)-9*a(n-2)` -/
def P13470470296001156618.Spec : Prop :=
  ∀ n, P13470470296001156618.a n = A190963 n

theorem P13470470296001156618.correct : P13470470296001156618.Spec := by
  intro n
  simp only [A190963]

end A190963

/-! ## A190963.P4705868720274636276

`3^(n-1)*A128834(n)`
-/

namespace A190963.P4705868720274636276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A128834 n : ℚ)

end

end A190963.P4705868720274636276

namespace A190963

/-- `3^(n-1)*A128834(n)` -/
def P4705868720274636276.Spec : Prop :=
  ∀ n, P4705868720274636276.a n = (A190963 n : ℚ)

end A190963

/-! ## A190963.P16514641462041755463

`floor(3^(n-1))*round(sin(n%6))`
-/

namespace A190963.P16514641462041755463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A190963.P16514641462041755463

namespace A190963

/-- `floor(3^(n-1))*round(sin(n%6))` -/
def P16514641462041755463.Spec : Prop :=
  ∀ n, P16514641462041755463.a n = A190963 n

end A190963

/-! ## A190963.P2313647097664647215

`a(n-3)-28*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A190963.P2313647097664647215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) - 28 * a (n - 3)

end

end A190963.P2313647097664647215

namespace A190963

/-- `a(n-3)-28*a(n-3)` -/
def P2313647097664647215.Spec : Prop :=
  ∀ n, P2313647097664647215.a n = A190963 n

end A190963

/-! ## A190963.P13084627647518560071

`floor(3^(n-1))*round(cos((1-n)%6))`
-/

namespace A190963.P13084627647518560071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * SequenceMachineLib.roundAway (Real.cos (Int.tmod (1 - (n : ℤ)) 6 : ℝ))

end

end A190963.P13084627647518560071

namespace A190963

/-- `floor(3^(n-1))*round(cos((1-n)%6))` -/
def P13084627647518560071.Spec : Prop :=
  ∀ n, P13084627647518560071.a n = A190963 n

end A190963

/-! ## A190963.P9094472461352679320

`3^(n-1)*A163810(n+3)`
-/

namespace A190963.P9094472461352679320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A163810 (n + 3) : ℚ)

end

end A190963.P9094472461352679320

namespace A190963

/-- `3^(n-1)*A163810(n+3)` -/
def P9094472461352679320.Spec : Prop :=
  ∀ n, P9094472461352679320.a n = (A190963 n : ℚ)

end A190963

/-! ## A190963.P9404328591259148860

`A057682(A004273(n))`
-/

namespace A190963.P9404328591259148860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (A004273 n).toNat

end

end A190963.P9404328591259148860

namespace A190963

/-- `A057682(A004273(n))` -/
def P9404328591259148860.Spec : Prop :=
  ∀ n, P9404328591259148860.a n = A190963 n

end A190963

/-! ## A190963.P2521810649902959692

`A057682(record[A026741(n)])`
-/

namespace A190963.P2521810649902959692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190963.P2521810649902959692

namespace A190963

/-- `A057682(record[A026741(n)])` -/
def P2521810649902959692.Spec : Prop :=
  ∀ n, P2521810649902959692.a n = A190963 n

end A190963

/-! ## A190963.P6852655732888827363

`A128834(n)*A133494(n)`
-/

namespace A190963.P6852655732888827363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A133494 n

end

end A190963.P6852655732888827363

namespace A190963

/-- `A128834(n)*A133494(n)` -/
def P6852655732888827363.Spec : Prop :=
  ∀ n, P6852655732888827363.a n = A190963 n

end A190963

/-! ## A190963.P11486281643422925118

`A128834(n)*A140429(n)`
-/

namespace A190963.P11486281643422925118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A140429 n

end

end A190963.P11486281643422925118

namespace A190963

/-- `A128834(n)*A140429(n)` -/
def P11486281643422925118.Spec : Prop :=
  ∀ n, P11486281643422925118.a n = A190963 n

end A190963

/-! ## A190963.P11719292973539742553

`A128834(n)*A155734(n)`
-/

namespace A190963.P11719292973539742553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A155734 n

end

end A190963.P11719292973539742553

namespace A190963

/-- `A128834(n)*A155734(n)` -/
def P11719292973539742553.Spec : Prop :=
  ∀ n, P11719292973539742553.a n = A190963 n

end A190963

/-! ## A190963.P9917261009547300319

`A140429(n)*A163806(n)`
-/

namespace A190963.P9917261009547300319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A163806 n

end

end A190963.P9917261009547300319

namespace A190963

/-- `A140429(n)*A163806(n)` -/
def P9917261009547300319.Spec : Prop :=
  ∀ n, P9917261009547300319.a n = A190963 n

end A190963

/-! ## A190963.P10580220784382423423

`A057682(eq[n, A026741(n)])`
-/

namespace A190963.P10580220784382423423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190963.P10580220784382423423

namespace A190963

/-- `A057682(eq[n, A026741(n)])` -/
def P10580220784382423423.Spec : Prop :=
  ∀ n, P10580220784382423423.a n = A190963 n

end A190963

/-! ## A190963.P13710358443315780615

`∑[A057682(n)]*A057681(n)`
-/

namespace A190963.P13710358443315780615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057681 n

end

end A190963.P13710358443315780615

namespace A190963

/-- `∑[A057682(n)]*A057681(n)` -/
def P13710358443315780615.Spec : Prop :=
  ∀ n, P13710358443315780615.a n = A190963 n

end A190963

/-! ## A190963.P10311584696527282025

`A057682(2*n)-A103312(2*n)`
-/

namespace A190963.P10311584696527282025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (2 * n) - A103312 (2 * n)

end

end A190963.P10311584696527282025

namespace A190963

/-- `A057682(2*n)-A103312(2*n)` -/
def P10311584696527282025.Spec : Prop :=
  ∀ n, P10311584696527282025.a n = A190963 n

end A190963

/-! ## A190963.P17218692751069834746

`A057682(record[A007599(A029579(n))])`
-/

namespace A190963.P17218692751069834746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190963.P17218692751069834746

namespace A190963

/-- `A057682(record[A007599(A029579(n))])` -/
def P17218692751069834746.Spec : Prop :=
  ∀ n, P17218692751069834746.a n = A190963 n

end A190963

/-! ## A190963.P14825921792723955831

`A057682(A008574(n)-A005408(n))`
-/

namespace A190963.P14825921792723955831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (A008574 n - A005408 n).toNat

end

end A190963.P14825921792723955831

namespace A190963

/-- `A057682(A008574(n)-A005408(n))` -/
def P14825921792723955831.Spec : Prop :=
  ∀ n, P14825921792723955831.a n = A190963 n

end A190963

/-! ## A190963.P6505026751035139926

`(A057083(n)-A057682(n+1))*A057681(n)`
-/

namespace A190963.P6505026751035139926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057083 n - A057682 (n + 1)) * A057681 n

end

end A190963.P6505026751035139926

namespace A190963

/-- `(A057083(n)-A057682(n+1))*A057681(n)` -/
def P6505026751035139926.Spec : Prop :=
  ∀ n, P6505026751035139926.a n = A190963 n

end A190963

/-! ## A190963.P16514572084355977073

`(A057682(n+1)-A057681(n+1))*A057681(n)`
-/

namespace A190963.P16514572084355977073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057682 (n + 1) - A057681 (n + 1)) * A057681 n

end

end A190963.P16514572084355977073

namespace A190963

/-- `(A057682(n+1)-A057681(n+1))*A057681(n)` -/
def P16514572084355977073.Spec : Prop :=
  ∀ n, P16514572084355977073.a n = A190963 n

end A190963

/-!
# A190964: a(n) = 3*a(n-1) - 10*a(n-2), with a(0)=0, a(1)=1.

The programs for A190964, the canonical program `A190964.P7662290303891910893` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190964 has offset 0).

The definition of A190964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-10*a(n-2)` (program `A190964.P7662290303891910893`, by `A190964.P7662290303891910893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190964.P8404982159228266373

`ogf(x/(1-3x+10x^2))`
-/

namespace A190964.P8404982159228266373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 10] n

end

end A190964.P8404982159228266373

namespace A190964

/-- `ogf(x/(1-3x+10x^2))` -/
def P8404982159228266373.Spec : Prop :=
  ∀ n, P8404982159228266373.a n = A190964 n

end A190964

/-! ## A190964.P7662290303891910893

`3*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190964

/-- `3*a(n-1)-10*a(n-2)` -/
def P7662290303891910893.Spec : Prop :=
  ∀ n, P7662290303891910893.a n = A190964 n

theorem P7662290303891910893.correct : P7662290303891910893.Spec := by
  intro n
  simp only [A190964]

end A190964

/-!
# A190965: a(n) = 4*a(n-1) - 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190965, the canonical program `A190965.P3443584317203578192` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190965 has offset 0).

The definition of A190965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)` (program `A190965.P3443584317203578192`, by `A190965.P3443584317203578192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190965.P9962718270592418780

`ogf(x/(1-4x+6x^2))`
-/

namespace A190965.P9962718270592418780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 6] n

end

end A190965.P9962718270592418780

namespace A190965

/-- `ogf(x/(1-4x+6x^2))` -/
def P9962718270592418780.Spec : Prop :=
  ∀ n, P9962718270592418780.a n = A190965 n

end A190965

/-! ## A190965.P3443584317203578192

`4*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190965

/-- `4*a(n-1)-6*a(n-2)` -/
def P3443584317203578192.Spec : Prop :=
  ∀ n, P3443584317203578192.a n = A190965 n

theorem P3443584317203578192.correct : P3443584317203578192.Spec := by
  intro n
  simp only [A190965]

end A190965

/-! ## A190965.P715684535200946847

`A266046(n)-A266046(n+1)/2`
-/

namespace A190965.P715684535200946847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266046 n : ℚ) - (A266046 (n + 1) : ℚ) / 2

end

end A190965.P715684535200946847

namespace A190965

/-- `A266046(n)-A266046(n+1)/2` -/
def P715684535200946847.Spec : Prop :=
  ∀ n, P715684535200946847.a n = (A190965 n : ℚ)

end A190965

/-! ## A190965.P2809495463008700367

`floor(acot(n)-A347098(2^n))`
-/

namespace A190965.P2809495463008700367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A347098 (2 ^ n) : ℝ)⌋

end

end A190965.P2809495463008700367

namespace A190965

/-- `floor(acot(n)-A347098(2^n))` -/
def P2809495463008700367.Spec : Prop :=
  ∀ n, P2809495463008700367.a n = A190965 n

end A190965

/-! ## A190965.P12298475154771359164

`floor(acot(n))-A347098(A000079(n))`
-/

namespace A190965.P12298475154771359164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - A347098 (A000079 n).toNat

end

end A190965.P12298475154771359164

namespace A190965

/-- `floor(acot(n))-A347098(A000079(n))` -/
def P12298475154771359164.Spec : Prop :=
  ∀ n, P12298475154771359164.a n = A190965 n

end A190965

/-!
# A190966: a(n) = 4*a(n-1) - 8*a(n-2), with a(0)=0, a(1)=1.

The programs for A190966, the canonical program `A190966.P341792310371950973` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190966 has offset 0).

The definition of A190966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-8*a(n-2)` (program `A190966.P341792310371950973`, by `A190966.P341792310371950973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190966.P10824125788687361126

`ogf(x/(1-4x+8x^2))`
-/

namespace A190966.P10824125788687361126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 8] n

end

end A190966.P10824125788687361126

namespace A190966

/-- `ogf(x/(1-4x+8x^2))` -/
def P10824125788687361126.Spec : Prop :=
  ∀ n, P10824125788687361126.a n = A190966 n

end A190966

/-! ## A190966.P341792310371950973

`4*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190966

/-- `4*a(n-1)-8*a(n-2)` -/
def P341792310371950973.Spec : Prop :=
  ∀ n, P341792310371950973.a n = A190966 n

theorem P341792310371950973.correct : P341792310371950973.Spec := by
  intro n
  simp only [A190966]

end A190966

/-! ## A190966.P16235142851816966340

`2^(n-1)*A009545(n)`
-/

namespace A190966.P16235142851816966340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A009545 n : ℚ)

end

end A190966.P16235142851816966340

namespace A190966

/-- `2^(n-1)*A009545(n)` -/
def P16235142851816966340.Spec : Prop :=
  ∀ n, P16235142851816966340.a n = (A190966 n : ℚ)

end A190966

/-! ## A190966.P11431636398576555108

`4*(a(n-1)-2*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190966.P11431636398576555108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) - 2 * a (n - 2))

end

end A190966.P11431636398576555108

namespace A190966

/-- `4*(a(n-1)-2*a(n-2))` -/
def P11431636398576555108.Spec : Prop :=
  ∀ n, P11431636398576555108.a n = A190966 n

theorem P11431636398576555108.correct : P11431636398576555108.Spec := by
  intro n
  simp only [A190966, Nat.add_sub_cancel, A190966.P11431636398576555108.a, A190966.P341792310371950973.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190966

/-! ## A190966.P13827735709542842572

`(a(n-1)-a(n-2)-a(n-2))/(1/2)²` with `a(0)=0, a(1)=1`
-/

namespace A190966.P13827735709542842572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A190966.P13827735709542842572

namespace A190966

/-- `(a(n-1)-a(n-2)-a(n-2))/(1/2)²` -/
def P13827735709542842572.Spec : Prop :=
  ∀ n, P13827735709542842572.a n = (A190966 n : ℚ)

end A190966

/-! ## A190966.P2312773987895235787

`A138231(2*n)/2*2^n`
-/

namespace A190966.P2312773987895235787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138231 (2 * n) : ℚ) / 2 * (2 ^ n : ℚ)

end

end A190966.P2312773987895235787

namespace A190966

/-- `A138231(2*n)/2*2^n` -/
def P2312773987895235787.Spec : Prop :=
  ∀ n, P2312773987895235787.a n = (A190966 n : ℚ)

end A190966

/-! ## A190966.P2336604165630139675

`A009545(n)*A011782(n)`
-/

namespace A190966.P2336604165630139675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n * A011782 n

end

end A190966.P2336604165630139675

namespace A190966

/-- `A009545(n)*A011782(n)` -/
def P2336604165630139675.Spec : Prop :=
  ∀ n, P2336604165630139675.a n = A190966 n

end A190966

/-! ## A190966.P14816761652807122382

`A009545(n)*A131577(n)`
-/

namespace A190966.P14816761652807122382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n * A131577 n

end

end A190966.P14816761652807122382

namespace A190966

/-- `A009545(n)*A131577(n)` -/
def P14816761652807122382.Spec : Prop :=
  ∀ n, P14816761652807122382.a n = A190966 n

end A190966

/-! ## A190966.P1422748446966176819

`A009545(n)*A166444(n+1)`
-/

namespace A190966.P1422748446966176819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n * A166444 (n + 1)

end

end A190966.P1422748446966176819

namespace A190966

/-- `A009545(n)*A166444(n+1)` -/
def P1422748446966176819.Spec : Prop :=
  ∀ n, P1422748446966176819.a n = A190966 n

end A190966

/-! ## A190966.P3681515866529916293

`A009545(n)*A158780(2*n)`
-/

namespace A190966.P3681515866529916293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n * A158780 (2 * n)

end

end A190966.P3681515866529916293

namespace A190966

/-- `A009545(n)*A158780(2*n)` -/
def P3681515866529916293.Spec : Prop :=
  ∀ n, P3681515866529916293.a n = A190966 n

end A190966

/-! ## A190966.P9038918744096321061

`A131577(n)*A138231(2*n)`
-/

namespace A190966.P9038918744096321061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A138231 (2 * n)

end

end A190966.P9038918744096321061

namespace A190966

/-- `A131577(n)*A138231(2*n)` -/
def P9038918744096321061.Spec : Prop :=
  ∀ n, P9038918744096321061.a n = A190966 n

end A190966

/-! ## A190966.P4231599728204861468

`A011782(n)*A138232(2*n+1)`
-/

namespace A190966.P4231599728204861468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A138232 (2 * n + 1)

end

end A190966.P4231599728204861468

namespace A190966

/-- `A011782(n)*A138232(2*n+1)` -/
def P4231599728204861468.Spec : Prop :=
  ∀ n, P4231599728204861468.a n = A190966 n

end A190966

/-! ## A190966.P13718109104014181797

`A131577(n)*A138232(2*n+1)`
-/

namespace A190966.P13718109104014181797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A138232 (2 * n + 1)

end

end A190966.P13718109104014181797

namespace A190966

/-- `A131577(n)*A138232(2*n+1)` -/
def P13718109104014181797.Spec : Prop :=
  ∀ n, P13718109104014181797.a n = A190966 n

end A190966

/-! ## A190966.P11519544572933526015

`A138232(2*n+1)/2*A016116(2*n)`
-/

namespace A190966.P11519544572933526015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138232 (2 * n + 1) : ℚ) / 2 * (A016116 (2 * n) : ℚ)

end

end A190966.P11519544572933526015

namespace A190966

/-- `A138232(2*n+1)/2*A016116(2*n)` -/
def P11519544572933526015.Spec : Prop :=
  ∀ n, P11519544572933526015.a n = (A190966 n : ℚ)

end A190966

/-! ## A190966.P562737654986091143

`(A131885(n)-A011782(n))*A011782(n)`
-/

namespace A190966.P562737654986091143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131885 n - A011782 n) * A011782 n

end

end A190966.P562737654986091143

namespace A190966

/-- `(A131885(n)-A011782(n))*A011782(n)` -/
def P562737654986091143.Spec : Prop :=
  ∀ n, P562737654986091143.a n = A190966 n

end A190966

/-! ## A190966.P6667963222966766400

`(A038504(n)-A000749(n))*A131577(n)`
-/

namespace A190966.P6667963222966766400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038504 n - A000749 n) * A131577 n

end

end A190966.P6667963222966766400

namespace A190966

/-- `(A038504(n)-A000749(n))*A131577(n)` -/
def P6667963222966766400.Spec : Prop :=
  ∀ n, P6667963222966766400.a n = A190966 n

end A190966

/-! ## A190966.P4364087054465019839

`A011782(n)*A016116(n)*A046978(n)`
-/

namespace A190966.P4364087054465019839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A016116 n * A046978 n

end

end A190966.P4364087054465019839

namespace A190966

/-- `A011782(n)*A016116(n)*A046978(n)` -/
def P4364087054465019839.Spec : Prop :=
  ∀ n, P4364087054465019839.a n = A190966 n

end A190966

/-! ## A190966.P4988326332061478845

`(A146559(n)-A146559(n+1))*A011782(n)`
-/

namespace A190966.P4988326332061478845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146559 n - A146559 (n + 1)) * A011782 n

end

end A190966.P4988326332061478845

namespace A190966

/-- `(A146559(n)-A146559(n+1))*A011782(n)` -/
def P4988326332061478845.Spec : Prop :=
  ∀ n, P4988326332061478845.a n = A190966 n

end A190966

/-! ## A190966.P18426999652932462205

`A009545(n)/A010685(n+1)*A135520(n)`
-/

namespace A190966.P18426999652932462205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 n : ℚ) / (A010685 (n + 1) : ℚ) * (A135520 n : ℚ)

end

end A190966.P18426999652932462205

namespace A190966

/-- `A009545(n)/A010685(n+1)*A135520(n)` -/
def P18426999652932462205.Spec : Prop :=
  ∀ n, P18426999652932462205.a n = (A190966 n : ℚ)

end A190966

/-! ## A190966.P14403170643979091587

`A009116(3*n+2)/4`
-/

namespace A190966.P14403170643979091587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 (3 * n + 2) : ℚ) / 4

end

end A190966.P14403170643979091587

namespace A190966

/-- `A009116(3*n+2)/4` -/
def P14403170643979091587.Spec : Prop :=
  ∀ n, P14403170643979091587.a n = (A190966 n : ℚ)

end A190966

/-!
# A190967: a(n) = 4*a(n-1) - 9*a(n-2), with a(0)=0, a(1)=1.

The programs for A190967, the canonical program `A190967.P6603748144756480548` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190967 has offset 0).

The definition of A190967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-9*a(n-2)` (program `A190967.P6603748144756480548`, by `A190967.P6603748144756480548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190967.P15252427014545170574

`ogf(x/(1-4x+9x^2))`
-/

namespace A190967.P15252427014545170574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 9] n

end

end A190967.P15252427014545170574

namespace A190967

/-- `ogf(x/(1-4x+9x^2))` -/
def P15252427014545170574.Spec : Prop :=
  ∀ n, P15252427014545170574.a n = A190967 n

end A190967

/-! ## A190967.P6603748144756480548

`4*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190967

/-- `4*a(n-1)-9*a(n-2)` -/
def P6603748144756480548.Spec : Prop :=
  ∀ n, P6603748144756480548.a n = A190967 n

theorem P6603748144756480548.correct : P6603748144756480548.Spec := by
  intro n
  simp only [A190967]

end A190967

/-! ## A190967.P15006474365123789010

`Δ[-(A176333(n)/6)]`
-/

namespace A190967.P15006474365123789010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A176333 n : ℚ) / 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190967.P15006474365123789010

namespace A190967

/-- `Δ[-(A176333(n)/6)]` -/
def P15006474365123789010.Spec : Prop :=
  ∀ n, P15006474365123789010.a n = (A190967 n : ℚ)

end A190967

/-! ## A190967.P10734648745217901013

`Δ[A176333(n)/6]*A057428(n)`
-/

namespace A190967.P10734648745217901013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176333 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A057428 n : ℚ)

end

end A190967.P10734648745217901013

namespace A190967

/-- `Δ[A176333(n)/6]*A057428(n)` -/
def P10734648745217901013.Spec : Prop :=
  ∀ n, P10734648745217901013.a n = (A190967 n : ℚ)

end A190967

/-! ## A190967.P3165633147313338208

`Δ[A008683(A007918(n))-A176333(n)/6]`
-/

namespace A190967.P3165633147313338208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A007918 n).toNat : ℚ) - (A176333 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190967.P3165633147313338208

namespace A190967

/-- `Δ[A008683(A007918(n))-A176333(n)/6]` -/
def P3165633147313338208.Spec : Prop :=
  ∀ n, P3165633147313338208.a n = (A190967 n : ℚ)

end A190967

/-! ## A190967.P9281669081414921670

`2*A088139(2*n)/A122803(n+1)`
-/

namespace A190967.P9281669081414921670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A088139 (2 * n) : ℚ) / (A122803 (n + 1) : ℚ))

end

end A190967.P9281669081414921670

namespace A190967

/-- `2*A088139(2*n)/A122803(n+1)` -/
def P9281669081414921670.Spec : Prop :=
  ∀ n, P9281669081414921670.a n = (A190967 n : ℚ)

end A190967

/-!
# A190968: a(n) = 4*a(n-1) - 10*a(n-2), with a(0)=0, a(1)=1.

The programs for A190968, the canonical program `A190968.P15819363999602875151` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190968 has offset 0).

The definition of A190968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-10*a(n-2)` (program `A190968.P15819363999602875151`, by `A190968.P15819363999602875151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190968.P353598491569048773

`ogf(x/(1-4x+10x^2))`
-/

namespace A190968.P353598491569048773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 10] n

end

end A190968.P353598491569048773

namespace A190968

/-- `ogf(x/(1-4x+10x^2))` -/
def P353598491569048773.Spec : Prop :=
  ∀ n, P353598491569048773.a n = A190968 n

end A190968

/-! ## A190968.P15819363999602875151

`4*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190968

/-- `4*a(n-1)-10*a(n-2)` -/
def P15819363999602875151.Spec : Prop :=
  ∀ n, P15819363999602875151.a n = A190968 n

theorem P15819363999602875151.correct : P15819363999602875151.Spec := by
  intro n
  simp only [A190968]

end A190968

/-!
# A190969: a(n) = 5*a(n-1) - 8*a(n-2), with a(0)=0, a(1)=1.

The programs for A190969, the canonical program `A190969.P12757235652856586334` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190969 has offset 0).

The definition of A190969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-8*a(n-2)` (program `A190969.P12757235652856586334`, by `A190969.P12757235652856586334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190969.P8752918527716133282

`ogf(x/(1-5x+8x^2))`
-/

namespace A190969.P8752918527716133282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 8] n

end

end A190969.P8752918527716133282

namespace A190969

/-- `ogf(x/(1-5x+8x^2))` -/
def P8752918527716133282.Spec : Prop :=
  ∀ n, P8752918527716133282.a n = A190969 n

end A190969

/-! ## A190969.P12757235652856586334

`5*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190969

/-- `5*a(n-1)-8*a(n-2)` -/
def P12757235652856586334.Spec : Prop :=
  ∀ n, P12757235652856586334.a n = A190969 n

theorem P12757235652856586334.correct : P12757235652856586334.Spec := by
  intro n
  simp only [A190969]

end A190969

/-! ## A190969.P1415189459269368114

`A110512(3*n+1)/2`
-/

namespace A190969.P1415189459269368114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110512 (3 * n + 1) : ℚ) / 2

end

end A190969.P1415189459269368114

namespace A190969

/-- `A110512(3*n+1)/2` -/
def P1415189459269368114.Spec : Prop :=
  ∀ n, P1415189459269368114.a n = (A190969 n : ℚ)

end A190969

/-! ## A190969.P10942977718916339421

`A107920(3*n)/A001607(n+1)*A107920(n+1)`
-/

namespace A190969.P10942977718916339421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 (3 * n) : ℚ) / (A001607 (n + 1) : ℚ) * (A107920 (n + 1) : ℚ)

end

end A190969.P10942977718916339421

namespace A190969

/-- `A107920(3*n)/A001607(n+1)*A107920(n+1)` -/
def P10942977718916339421.Spec : Prop :=
  ∀ n, P10942977718916339421.a n = (A190969 n : ℚ)

end A190969

/-! ## A190969.P11680979172207312429

`-A001607(3*n)`
-/

namespace A190969.P11680979172207312429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001607 (3 * n)

end

end A190969.P11680979172207312429

namespace A190969

/-- `-A001607(3*n)` -/
def P11680979172207312429.Spec : Prop :=
  ∀ n, P11680979172207312429.a n = A190969 n

end A190969

/-! ## A190969.P7004214015314789287

`A000007(n+1)-A001607(3*n)`
-/

namespace A190969.P7004214015314789287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A001607 (3 * n)

end

end A190969.P7004214015314789287

namespace A190969

/-- `A000007(n+1)-A001607(3*n)` -/
def P7004214015314789287.Spec : Prop :=
  ∀ n, P7004214015314789287.a n = A190969 n

end A190969

/-! ## A190969.P10875907389949191361

`(A000007(n)-1)*A001607(3*n)`
-/

namespace A190969.P10875907389949191361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A001607 (3 * n)

end

end A190969.P10875907389949191361

namespace A190969

/-- `(A000007(n)-1)*A001607(3*n)` -/
def P10875907389949191361.Spec : Prop :=
  ∀ n, P10875907389949191361.a n = A190969 n

end A190969

/-! ## A190969.P15778301331329556336

`and(2, A323152(n+2))-A001607(3*n)`
-/

namespace A190969.P15778301331329556336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A323152 (n + 2)) - A001607 (3 * n)

end

end A190969.P15778301331329556336

namespace A190969

/-- `and(2, A323152(n+2))-A001607(3*n)` -/
def P15778301331329556336.Spec : Prop :=
  ∀ n, P15778301331329556336.a n = A190969 n

end A190969

/-! ## A190969.P3241657771646841254

`A001607(2*n)+A107920(2*n)-A001607(3*n)`
-/

namespace A190969.P3241657771646841254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (2 * n) + (A107920 (2 * n) - A001607 (3 * n))

end

end A190969.P3241657771646841254

namespace A190969

/-- `A001607(2*n)+A107920(2*n)-A001607(3*n)` -/
def P3241657771646841254.Spec : Prop :=
  ∀ n, P3241657771646841254.a n = A190969 n

end A190969

/-! ## A190969.P10577419613632106643

`A087168(2*n)-(A247560(2*n)+A001607(3*n))`
-/

namespace A190969.P10577419613632106643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087168 (2 * n) - (A247560 (2 * n) + A001607 (3 * n))

end

end A190969.P10577419613632106643

namespace A190969

/-- `A087168(2*n)-(A247560(2*n)+A001607(3*n))` -/
def P10577419613632106643.Spec : Prop :=
  ∀ n, P10577419613632106643.a n = A190969 n

end A190969

/-!
# A190970: a(n) = 5*a(n-1) - 9*a(n-2), with a(0)=0, a(1)=1.

The programs for A190970, the canonical program `A190970.P11808060712639039541` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190970 has offset 0).

The definition of A190970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-9*a(n-2)` (program `A190970.P11808060712639039541`, by `A190970.P11808060712639039541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190970.P16257644673359731370

`ogf(x/(1-5x+9x^2))`
-/

namespace A190970.P16257644673359731370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 9] n

end

end A190970.P16257644673359731370

namespace A190970

/-- `ogf(x/(1-5x+9x^2))` -/
def P16257644673359731370.Spec : Prop :=
  ∀ n, P16257644673359731370.a n = A190970 n

end A190970

/-! ## A190970.P11808060712639039541

`5*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190970

/-- `5*a(n-1)-9*a(n-2)` -/
def P11808060712639039541.Spec : Prop :=
  ∀ n, P11808060712639039541.a n = A190970 n

theorem P11808060712639039541.correct : P11808060712639039541.Spec := by
  intro n
  simp only [A190970]

end A190970

/-! ## A190970.P9815854954505727911

`(-1)^n*A214733(2*n)`
-/

namespace A190970.P9815854954505727911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214733 (2 * n)

end

end A190970.P9815854954505727911

namespace A190970

/-- `(-1)^n*A214733(2*n)` -/
def P9815854954505727911.Spec : Prop :=
  ∀ n, P9815854954505727911.a n = A190970 n

end A190970

/-! ## A190970.P15088053493485975416

`A214733(2*n)/A033999(n)`
-/

namespace A190970.P15088053493485975416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (2 * n) : ℚ) / (A033999 n : ℚ)

end

end A190970.P15088053493485975416

namespace A190970

/-- `A214733(2*n)/A033999(n)` -/
def P15088053493485975416.Spec : Prop :=
  ∀ n, P15088053493485975416.a n = (A190970 n : ℚ)

end A190970

/-! ## A190970.P5749172432774926798

`A214733(2*n)/ratio[A057077(n)]`
-/

namespace A190970.P5749172432774926798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (2 * n) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A190970.P5749172432774926798

namespace A190970

/-- `A214733(2*n)/ratio[A057077(n)]` -/
def P5749172432774926798.Spec : Prop :=
  ∀ n, P5749172432774926798.a n = (A190970 n : ℚ)

end A190970

/-! ## A190970.P5215989126105321600

`A062157(n)*A106852(A004273(n))`
-/

namespace A190970.P5215989126105321600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A106852 (A004273 n).toNat

end

end A190970.P5215989126105321600

namespace A190970

/-- `A062157(n)*A106852(A004273(n))` -/
def P5215989126105321600.Spec : Prop :=
  ∀ n, P5215989126105321600.a n = A190970 n

end A190970

/-! ## A190970.P6103264105471251907

`A214733(2*n)/(A000035(n+1)-A000035(n))`
-/

namespace A190970.P6103264105471251907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (2 * n) : ℚ) / (A000035 (n + 1) - A000035 n : ℚ)

end

end A190970.P6103264105471251907

namespace A190970

/-- `A214733(2*n)/(A000035(n+1)-A000035(n))` -/
def P6103264105471251907.Spec : Prop :=
  ∀ n, P6103264105471251907.a n = (A190970 n : ℚ)

end A190970

/-!
# A190971: a(n) = 5*a(n-1) - 10*a(n-2), with a(0)=0, a(1)=1.

The programs for A190971, the canonical program `A190971.P3632425544551170566` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190971 has offset 0).

The definition of A190971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-10*a(n-2)` (program `A190971.P3632425544551170566`, by `A190971.P3632425544551170566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190971.P13588814875214818268

`ogf(x/(1-5x+10x^2))`
-/

namespace A190971.P13588814875214818268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 10] n

end

end A190971.P13588814875214818268

namespace A190971

/-- `ogf(x/(1-5x+10x^2))` -/
def P13588814875214818268.Spec : Prop :=
  ∀ n, P13588814875214818268.a n = A190971 n

end A190971

/-! ## A190971.P3632425544551170566

`5*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190971

/-- `5*a(n-1)-10*a(n-2)` -/
def P3632425544551170566.Spec : Prop :=
  ∀ n, P3632425544551170566.a n = A190971 n

theorem P3632425544551170566.correct : P3632425544551170566.Spec := by
  intro n
  simp only [A190971]

end A190971

/-! ## A190971.P10516492851993687657

`5*(a(n-1)-2*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190971.P10516492851993687657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * (a (n - 1) - 2 * a (n - 2))

end

end A190971.P10516492851993687657

namespace A190971

/-- `5*(a(n-1)-2*a(n-2))` -/
def P10516492851993687657.Spec : Prop :=
  ∀ n, P10516492851993687657.a n = A190971 n

theorem P10516492851993687657.correct : P10516492851993687657.Spec := by
  intro n
  simp only [A190971, Nat.add_sub_cancel, A190971.P10516492851993687657.a, A190971.P3632425544551170566.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190971

/-!
# A190972: a(n) = 7*a(n-1) - 3*a(n-2), with a(0)=0, a(1)=1.

The programs for A190972, the canonical program `A190972.P7073665966880877432` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190972 has offset 0).

The definition of A190972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-3*a(n-2)` (program `A190972.P7073665966880877432`, by `A190972.P7073665966880877432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190972.P6219479284871703116

`ogf(x/(1-7x+3x^2))`
-/

namespace A190972.P6219479284871703116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 3] n

end

end A190972.P6219479284871703116

namespace A190972

/-- `ogf(x/(1-7x+3x^2))` -/
def P6219479284871703116.Spec : Prop :=
  ∀ n, P6219479284871703116.a n = A190972 n

end A190972

/-! ## A190972.P7073665966880877432

`7*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190972

/-- `7*a(n-1)-3*a(n-2)` -/
def P7073665966880877432.Spec : Prop :=
  ∀ n, P7073665966880877432.a n = A190972 n

theorem P7073665966880877432.correct : P7073665966880877432.Spec := by
  intro n
  simp only [A190972]

end A190972

/-! ## A190972.P499820130060406956

`((7/2+1/2*sqrt(37))^n-(7/2-1/2*sqrt(37))^n)/sqrt(37)`
-/

namespace A190972.P499820130060406956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((7 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (37 : ℝ)) ^ n - (((7 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (37 : ℝ)) ^ n) / Real.sqrt (37 : ℝ)

end

end A190972.P499820130060406956

namespace A190972

/-- `((7/2+1/2*sqrt(37))^n-(7/2-1/2*sqrt(37))^n)/sqrt(37)` -/
def P499820130060406956.Spec : Prop :=
  ∀ n, P499820130060406956.a n = (A190972 n : ℝ)

theorem P499820130060406956.correct : P499820130060406956.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190972, Nat.add_sub_cancel, A190972.P499820130060406956.a, A190972.P7073665966880877432.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190972, Nat.add_sub_cancel, A190972.P499820130060406956.a, A190972.P7073665966880877432.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190972

/-! ## A190972.P10136618123138435414

`A276288(2*n)`
-/

namespace A190972.P10136618123138435414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276288 (2 * n)

end

end A190972.P10136618123138435414

namespace A190972

/-- `A276288(2*n)` -/
def P10136618123138435414.Spec : Prop :=
  ∀ n, P10136618123138435414.a n = A190972 n

end A190972

/-! ## A190972.P3854104342095758202

`record[A276288(n)/(-1)^n]`
-/

namespace A190972.P3854104342095758202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276288 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190972.P3854104342095758202

namespace A190972

/-- `record[A276288(n)/(-1)^n]` -/
def P3854104342095758202.Spec : Prop :=
  ∀ n, P3854104342095758202.a n = (A190972 n : ℚ)

end A190972

/-! ## A190972.P5636796824664373863

`record[A276288(A014681(n))]`
-/

namespace A190972.P5636796824664373863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276288 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190972.P5636796824664373863

namespace A190972

/-- `record[A276288(A014681(n))]` -/
def P5636796824664373863.Spec : Prop :=
  ∀ n, P5636796824664373863.a n = A190972 n

end A190972

/-! ## A190972.P15244598975570953631

`record[A276288(n)^and(1, A003230(n))]`
-/

namespace A190972.P15244598975570953631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276288 n : ℚ) ^ (Int.land 1 (A003230 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190972.P15244598975570953631

namespace A190972

/-- `record[A276288(n)^and(1, A003230(n))]` -/
def P15244598975570953631.Spec : Prop :=
  ∀ n, P15244598975570953631.a n = (A190972 n : ℚ)

end A190972

/-!
# A190973: a(n) = 7*a(n-1) - 4*a(n-2), with a(0) = 0, a(1) = 1.

The programs for A190973, the canonical program `A190973.P9038566941388563587` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190973 has offset 0).

The definition of A190973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-4*a(n-2)` (program `A190973.P9038566941388563587`, by `A190973.P9038566941388563587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190973.P8064081431427714571

`ogf(x/(1-7x+4x^2))`
-/

namespace A190973.P8064081431427714571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 4] n

end

end A190973.P8064081431427714571

namespace A190973

/-- `ogf(x/(1-7x+4x^2))` -/
def P8064081431427714571.Spec : Prop :=
  ∀ n, P8064081431427714571.a n = A190973 n

end A190973

/-! ## A190973.P9038566941388563587

`7*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190973

/-- `7*a(n-1)-4*a(n-2)` -/
def P9038566941388563587.Spec : Prop :=
  ∀ n, P9038566941388563587.a n = A190973 n

theorem P9038566941388563587.correct : P9038566941388563587.Spec := by
  intro n
  simp only [A190973]

end A190973

/-! ## A190973.P11837721378797417717

`((7/2+1/2*sqrt(33))^n-(7/2-1/2*sqrt(33))^n)/sqrt(33)`
-/

namespace A190973.P11837721378797417717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((7 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (33 : ℝ)) ^ n - (((7 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (33 : ℝ)) ^ n) / Real.sqrt (33 : ℝ)

end

end A190973.P11837721378797417717

namespace A190973

/-- `((7/2+1/2*sqrt(33))^n-(7/2-1/2*sqrt(33))^n)/sqrt(33)` -/
def P11837721378797417717.Spec : Prop :=
  ∀ n, P11837721378797417717.a n = (A190973 n : ℝ)

theorem P11837721378797417717.correct : P11837721378797417717.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190973, Nat.add_sub_cancel, A190973.P11837721378797417717.a, A190973.P9038566941388563587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190973, Nat.add_sub_cancel, A190973.P11837721378797417717.a, A190973.P9038566941388563587.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190973

/-! ## A190973.P6572892625308789374

`A138977(n+1)%A138977(A028310(n))`
-/

namespace A190973.P6572892625308789374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138977 (n + 1)) (A138977 (A028310 n).toNat)

end

end A190973.P6572892625308789374

namespace A190973

/-- `A138977(n+1)%A138977(A028310(n))` -/
def P6572892625308789374.Spec : Prop :=
  ∀ n, P6572892625308789374.a n = A190973 n

end A190973

/-!
# A190974: a(n) = 7*a(n-1) - 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A190974, the canonical program `A190974.P1475050974712876628` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190974 has offset 0).

The definition of A190974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-5*a(n-2)` (program `A190974.P1475050974712876628`, by `A190974.P1475050974712876628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190974.P6310613211815378219

`ogf(x/(1-7x+5x^2))`
-/

namespace A190974.P6310613211815378219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 5] n

end

end A190974.P6310613211815378219

namespace A190974

/-- `ogf(x/(1-7x+5x^2))` -/
def P6310613211815378219.Spec : Prop :=
  ∀ n, P6310613211815378219.a n = A190974 n

end A190974

/-! ## A190974.P1475050974712876628

`7*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190974

/-- `7*a(n-1)-5*a(n-2)` -/
def P1475050974712876628.Spec : Prop :=
  ∀ n, P1475050974712876628.a n = A190974 n

theorem P1475050974712876628.correct : P1475050974712876628.Spec := by
  intro n
  simp only [A190974]

end A190974

/-! ## A190974.P2102953188012240209

`∑[round(A147837(n)/5)]`
-/

namespace A190974.P2102953188012240209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147837 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190974.P2102953188012240209

namespace A190974

/-- `∑[round(A147837(n)/5)]` -/
def P2102953188012240209.Spec : Prop :=
  ∀ n, P2102953188012240209.a n = A190974 n

end A190974

/-! ## A190974.P5769076449216826209

`A018904(n)-A147837(n)`
-/

namespace A190974.P5769076449216826209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018904 n - A147837 n

end

end A190974.P5769076449216826209

namespace A190974

/-- `A018904(n)-A147837(n)` -/
def P5769076449216826209.Spec : Prop :=
  ∀ n, P5769076449216826209.a n = A190974 n

end A190974

/-! ## A190974.P1271904983074057713

`a(n-1)^A000108(C(n, n²))+A147837(n)/5` with `a(0)=0`
-/

namespace A190974.P1271904983074057713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ (A000108 (Nat.choose n (n ^ 2)) : ℤ) + (A147837 n : ℚ) / 5

end

end A190974.P1271904983074057713

namespace A190974

/-- `a(n-1)^A000108(C(n, n²))+A147837(n)/5` -/
def P1271904983074057713.Spec : Prop :=
  ∀ n, P1271904983074057713.a n = (A190974 n : ℚ)

end A190974

/-! ## A190974.P12534641658661832370

`A018904(n+1)%A018904(n)`
-/

namespace A190974.P12534641658661832370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018904 (n + 1)) (A018904 n)

end

end A190974.P12534641658661832370

namespace A190974

/-- `A018904(n+1)%A018904(n)` -/
def P12534641658661832370.Spec : Prop :=
  ∀ n, P12534641658661832370.a n = A190974 n

end A190974

/-!
# A190975: a(n) = 8*a(n-1) - 2*a(n-2), with a(0)=0, a(1)=1.

The programs for A190975, the canonical program `A190975.P6333818625217674287` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190975 has offset 0).

The definition of A190975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-2*a(n-2)` (program `A190975.P6333818625217674287`, by `A190975.P6333818625217674287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190975.P13539312120971814377

`ogf(x/(1-8x+2x^2))`
-/

namespace A190975.P13539312120971814377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 2] n

end

end A190975.P13539312120971814377

namespace A190975

/-- `ogf(x/(1-8x+2x^2))` -/
def P13539312120971814377.Spec : Prop :=
  ∀ n, P13539312120971814377.a n = A190975 n

end A190975

/-! ## A190975.P6333818625217674287

`8*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190975

/-- `8*a(n-1)-2*a(n-2)` -/
def P6333818625217674287.Spec : Prop :=
  ∀ n, P6333818625217674287.a n = A190975 n

theorem P6333818625217674287.correct : P6333818625217674287.Spec := by
  intro n
  simp only [A190975]

end A190975

/-! ## A190975.P9207946953477656709

`((4+sqrt(14))^n-(4-sqrt(14))^n)/(2*sqrt(14))`
-/

namespace A190975.P9207946953477656709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (14 : ℝ)) ^ n - (4 - Real.sqrt (14 : ℝ)) ^ n) / (2 * Real.sqrt (14 : ℝ))

end

end A190975.P9207946953477656709

namespace A190975

/-- `((4+sqrt(14))^n-(4-sqrt(14))^n)/(2*sqrt(14))` -/
def P9207946953477656709.Spec : Prop :=
  ∀ n, P9207946953477656709.a n = (A190975 n : ℝ)

theorem P9207946953477656709.correct : P9207946953477656709.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190975, Nat.add_sub_cancel, A190975.P9207946953477656709.a, A190975.P6333818625217674287.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190975, Nat.add_sub_cancel, A190975.P9207946953477656709.a, A190975.P6333818625217674287.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190975

/-! ## A190975.P9017109262201530082

`2*(4*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190975.P9017109262201530082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (4 * a (n - 1) - a (n - 2))

end

end A190975.P9017109262201530082

namespace A190975

/-- `2*(4*a(n-1)-a(n-2))` -/
def P9017109262201530082.Spec : Prop :=
  ∀ n, P9017109262201530082.a n = A190975 n

theorem P9017109262201530082.correct : P9017109262201530082.Spec := by
  intro n
  simp only [A190975, Nat.add_sub_cancel, A190975.P9017109262201530082.a, A190975.P6333818625217674287.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190975

/-! ## A190975.P8957074729343314113

`a(n-1)/(1/2)^3-a(n-2)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A190975.P8957074729343314113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 - a (n - 2) - a (n - 2)

end

end A190975.P8957074729343314113

namespace A190975

/-- `a(n-1)/(1/2)^3-a(n-2)-a(n-2)` -/
def P8957074729343314113.Spec : Prop :=
  ∀ n, P8957074729343314113.a n = (A190975 n : ℚ)

end A190975

/-! ## A190975.P17346257842149810736

`sqrt(A322709(n)/7*A011782(n))`
-/

namespace A190975.P17346257842149810736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A322709 n : ℚ) / 7 * (A011782 n : ℚ) : ℝ)

end

end A190975.P17346257842149810736

namespace A190975

/-- `sqrt(A322709(n)/7*A011782(n))` -/
def P17346257842149810736.Spec : Prop :=
  ∀ n, P17346257842149810736.a n = (A190975 n : ℝ)

end A190975

/-!
# A190976: a(n) = 8*a(n-1) - 3*a(n-2), with a(0)=0, a(1)=1.

The programs for A190976, the canonical program `A190976.P14887446132807127778` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190976 has offset 0).

The definition of A190976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-3*a(n-2)` (program `A190976.P14887446132807127778`, by `A190976.P14887446132807127778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190976.P4727786840656590848

`ogf(x/(1-8x+3x^2))`
-/

namespace A190976.P4727786840656590848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 3] n

end

end A190976.P4727786840656590848

namespace A190976

/-- `ogf(x/(1-8x+3x^2))` -/
def P4727786840656590848.Spec : Prop :=
  ∀ n, P4727786840656590848.a n = A190976 n

end A190976

/-! ## A190976.P14887446132807127778

`8*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190976

/-- `8*a(n-1)-3*a(n-2)` -/
def P14887446132807127778.Spec : Prop :=
  ∀ n, P14887446132807127778.a n = A190976 n

theorem P14887446132807127778.correct : P14887446132807127778.Spec := by
  intro n
  simp only [A190976]

end A190976

/-! ## A190976.P11678339727152520701

`((4+sqrt(13))^n-(4-sqrt(13))^n)/(2*sqrt(13))`
-/

namespace A190976.P11678339727152520701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (13 : ℝ)) ^ n - (4 - Real.sqrt (13 : ℝ)) ^ n) / (2 * Real.sqrt (13 : ℝ))

end

end A190976.P11678339727152520701

namespace A190976

/-- `((4+sqrt(13))^n-(4-sqrt(13))^n)/(2*sqrt(13))` -/
def P11678339727152520701.Spec : Prop :=
  ∀ n, P11678339727152520701.a n = (A190976 n : ℝ)

theorem P11678339727152520701.correct : P11678339727152520701.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190976, Nat.add_sub_cancel, A190976.P11678339727152520701.a, A190976.P14887446132807127778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190976, Nat.add_sub_cancel, A190976.P11678339727152520701.a, A190976.P14887446132807127778.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190976

/-! ## A190976.P13102669903867167708

`∑[floor(∑[A154636(n)/3])]`
-/

namespace A190976.P13102669903867167708
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154636 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190976.P13102669903867167708

namespace A190976

/-- `∑[floor(∑[A154636(n)/3])]` -/
def P13102669903867167708.Spec : Prop :=
  ∀ n, P13102669903867167708.a n = A190976 n

end A190976

/-!
# A190977: a(n) = 8*a(n-1) - 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A190977, the canonical program `A190977.P3787572177666382348` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190977 has offset 0).

The definition of A190977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-5*a(n-2)` (program `A190977.P3787572177666382348`, by `A190977.P3787572177666382348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190977.P5855925155478527740

`ogf(x/(1-8x+5x^2))`
-/

namespace A190977.P5855925155478527740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 5] n

end

end A190977.P5855925155478527740

namespace A190977

/-- `ogf(x/(1-8x+5x^2))` -/
def P5855925155478527740.Spec : Prop :=
  ∀ n, P5855925155478527740.a n = A190977 n

end A190977

/-! ## A190977.P3787572177666382348

`8*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190977

/-- `8*a(n-1)-5*a(n-2)` -/
def P3787572177666382348.Spec : Prop :=
  ∀ n, P3787572177666382348.a n = A190977 n

theorem P3787572177666382348.correct : P3787572177666382348.Spec := by
  intro n
  simp only [A190977]

end A190977

/-! ## A190977.P11812696879185515085

`((4+sqrt(11))^n-(4-sqrt(11))^n)/(2*sqrt(11))`
-/

namespace A190977.P11812696879185515085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (11 : ℝ)) ^ n - (4 - Real.sqrt (11 : ℝ)) ^ n) / (2 * Real.sqrt (11 : ℝ))

end

end A190977.P11812696879185515085

namespace A190977

/-- `((4+sqrt(11))^n-(4-sqrt(11))^n)/(2*sqrt(11))` -/
def P11812696879185515085.Spec : Prop :=
  ∀ n, P11812696879185515085.a n = (A190977 n : ℝ)

theorem P11812696879185515085.correct : P11812696879185515085.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190977, Nat.add_sub_cancel, A190977.P11812696879185515085.a, A190977.P3787572177666382348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190977, Nat.add_sub_cancel, A190977.P11812696879185515085.a, A190977.P3787572177666382348.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190977

/-! ## A190977.P11451815349219498621

`Δ[A138513(A028310(n))/2]`
-/

namespace A190977.P11451815349219498621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138513 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190977.P11451815349219498621

namespace A190977

/-- `Δ[A138513(A028310(n))/2]` -/
def P11451815349219498621.Spec : Prop :=
  ∀ n, P11451815349219498621.a n = (A190977 n : ℚ)

end A190977

/-!
# A190978: a(n) = 8*a(n-1) - 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190978, the canonical program `A190978.P14084019261856238036` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190978 has offset 0).

The definition of A190978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-6*a(n-2)` (program `A190978.P14084019261856238036`, by `A190978.P14084019261856238036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190978.P7119952649351251767

`ogf(x/(1-8x+6x^2))`
-/

namespace A190978.P7119952649351251767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 6] n

end

end A190978.P7119952649351251767

namespace A190978

/-- `ogf(x/(1-8x+6x^2))` -/
def P7119952649351251767.Spec : Prop :=
  ∀ n, P7119952649351251767.a n = A190978 n

end A190978

/-! ## A190978.P14084019261856238036

`8*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190978

/-- `8*a(n-1)-6*a(n-2)` -/
def P14084019261856238036.Spec : Prop :=
  ∀ n, P14084019261856238036.a n = A190978 n

theorem P14084019261856238036.correct : P14084019261856238036.Spec := by
  intro n
  simp only [A190978]

end A190978

/-! ## A190978.P14625576064985098432

`((4+sqrt(10))^n-(4-sqrt(10))^n)/(2*sqrt(10))`
-/

namespace A190978.P14625576064985098432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (10 : ℝ)) ^ n - (4 - Real.sqrt (10 : ℝ)) ^ n) / (2 * Real.sqrt (10 : ℝ))

end

end A190978.P14625576064985098432

namespace A190978

/-- `((4+sqrt(10))^n-(4-sqrt(10))^n)/(2*sqrt(10))` -/
def P14625576064985098432.Spec : Prop :=
  ∀ n, P14625576064985098432.a n = (A190978 n : ℝ)

theorem P14625576064985098432.correct : P14625576064985098432.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190978, Nat.add_sub_cancel, A190978.P14625576064985098432.a, A190978.P14084019261856238036.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190978, Nat.add_sub_cancel, A190978.P14625576064985098432.a, A190978.P14084019261856238036.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190978

/-! ## A190978.P10124398023836756096

`∑[round(A147838(n)/6)]`
-/

namespace A190978.P10124398023836756096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147838 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190978.P10124398023836756096

namespace A190978

/-- `∑[round(A147838(n)/6)]` -/
def P10124398023836756096.Spec : Prop :=
  ∀ n, P10124398023836756096.a n = A190978 n

end A190978

/-! ## A190978.P2196725230193164374

`record[Δ[A249310(n+1)]*A000035(n)]`
-/

namespace A190978.P2196725230193164374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249310 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190978.P2196725230193164374

namespace A190978

/-- `record[Δ[A249310(n+1)]*A000035(n)]` -/
def P2196725230193164374.Spec : Prop :=
  ∀ n, P2196725230193164374.a n = A190978 n

end A190978

/-! ## A190978.P4804608152347828115

`record[A249310(A065190(n+1))-A249310(n+1)]`
-/

namespace A190978.P4804608152347828115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249310 (A065190 (n + 1)).toNat - A249310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190978.P4804608152347828115

namespace A190978

/-- `record[A249310(A065190(n+1))-A249310(n+1)]` -/
def P4804608152347828115.Spec : Prop :=
  ∀ n, P4804608152347828115.a n = A190978 n

end A190978

/-! ## A190978.P5207193308193963626

`A249310(2*n+1)-A249310(A028310(2*n))`
-/

namespace A190978.P5207193308193963626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249310 (2 * n + 1) - A249310 (A028310 (2 * n)).toNat

end

end A190978.P5207193308193963626

namespace A190978

/-- `A249310(2*n+1)-A249310(A028310(2*n))` -/
def P5207193308193963626.Spec : Prop :=
  ∀ n, P5207193308193963626.a n = A190978 n

end A190978

/-! ## A190978.P6126995027411983413

`A249310(2*n+1)-A249310(A065190(2*n+1))`
-/

namespace A190978.P6126995027411983413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249310 (2 * n + 1) - A249310 (A065190 (2 * n + 1)).toNat

end

end A190978.P6126995027411983413

namespace A190978

/-- `A249310(2*n+1)-A249310(A065190(2*n+1))` -/
def P6126995027411983413.Spec : Prop :=
  ∀ n, P6126995027411983413.a n = A190978 n

end A190978

/-!
# A190979: a(n) = 9*a(n-1) - 2*a(n-2), with a(0)=0, a(1)=1.

The programs for A190979, the canonical program `A190979.P1816005944988132974` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190979 has offset 0).

The definition of A190979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-2*a(n-2)` (program `A190979.P1816005944988132974`, by `A190979.P1816005944988132974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190979.P10184818615256291935

`ogf(x/(1-9x+2x^2))`
-/

namespace A190979.P10184818615256291935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 2] n

end

end A190979.P10184818615256291935

namespace A190979

/-- `ogf(x/(1-9x+2x^2))` -/
def P10184818615256291935.Spec : Prop :=
  ∀ n, P10184818615256291935.a n = A190979 n

end A190979

/-! ## A190979.P1816005944988132974

`9*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190979

/-- `9*a(n-1)-2*a(n-2)` -/
def P1816005944988132974.Spec : Prop :=
  ∀ n, P1816005944988132974.a n = A190979 n

theorem P1816005944988132974.correct : P1816005944988132974.Spec := by
  intro n
  simp only [A190979]

end A190979

/-! ## A190979.P15802327931442138424

`floor((a(n-1)²-2)/a(n-2))` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A190979.P15802327931442138424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A190979.P15802327931442138424

namespace A190979

/-- `floor((a(n-1)²-2)/a(n-2))` -/
def P15802327931442138424.Spec : Prop :=
  ∀ n, P15802327931442138424.a n = A190979 n

end A190979

/-!
# A190980: a(n) = 9*a(n-1) - 3*a(n-2), with a(0)=0, a(1)=1.

The programs for A190980, the canonical program `A190980.P2973009387891586455` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190980 has offset 0).

The definition of A190980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-3*a(n-2)` (program `A190980.P2973009387891586455`, by `A190980.P2973009387891586455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190980.P9371762617610655956

`ogf(x/(1-9x+3x^2))`
-/

namespace A190980.P9371762617610655956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 3] n

end

end A190980.P9371762617610655956

namespace A190980

/-- `ogf(x/(1-9x+3x^2))` -/
def P9371762617610655956.Spec : Prop :=
  ∀ n, P9371762617610655956.a n = A190980 n

end A190980

/-! ## A190980.P2973009387891586455

`9*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190980

/-- `9*a(n-1)-3*a(n-2)` -/
def P2973009387891586455.Spec : Prop :=
  ∀ n, P2973009387891586455.a n = A190980 n

theorem P2973009387891586455.correct : P2973009387891586455.Spec := by
  intro n
  simp only [A190980]

end A190980

/-! ## A190980.P5496841261048883914

`3*(3*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190980.P5496841261048883914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (3 * a (n - 1) - a (n - 2))

end

end A190980.P5496841261048883914

namespace A190980

/-- `3*(3*a(n-1)-a(n-2))` -/
def P5496841261048883914.Spec : Prop :=
  ∀ n, P5496841261048883914.a n = A190980 n

theorem P5496841261048883914.correct : P5496841261048883914.Spec := by
  intro n
  simp only [A190980, Nat.add_sub_cancel, A190980.P5496841261048883914.a, A190980.P2973009387891586455.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190980

/-!
# A190981: a(n) = 9*a(n-1) - 4*a(n-2), with a(0)=0, a(1)=1.

The programs for A190981, the canonical program `A190981.P3908866845920819425` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190981 has offset 0).

The definition of A190981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-4*a(n-2)` (program `A190981.P3908866845920819425`, by `A190981.P3908866845920819425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190981.P17266876559752750399

`ogf(x/(1-9x+4x^2))`
-/

namespace A190981.P17266876559752750399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 4] n

end

end A190981.P17266876559752750399

namespace A190981

/-- `ogf(x/(1-9x+4x^2))` -/
def P17266876559752750399.Spec : Prop :=
  ∀ n, P17266876559752750399.a n = A190981 n

end A190981

/-! ## A190981.P3908866845920819425

`9*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190981

/-- `9*a(n-1)-4*a(n-2)` -/
def P3908866845920819425.Spec : Prop :=
  ∀ n, P3908866845920819425.a n = A190981 n

theorem P3908866845920819425.correct : P3908866845920819425.Spec := by
  intro n
  simp only [A190981]

end A190981

/-! ## A190981.P8295968471573394306

`1/65*sqrt(65)*((9/2+1/2*sqrt(65))^n-(9/2-1/2*sqrt(65))^n)`
-/

namespace A190981.P8295968471573394306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 65 : ℝ) * Real.sqrt (65 : ℝ) * ((((9 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (65 : ℝ)) ^ n - (((9 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (65 : ℝ)) ^ n)

end

end A190981.P8295968471573394306

namespace A190981

/-- `1/65*sqrt(65)*((9/2+1/2*sqrt(65))^n-(9/2-1/2*sqrt(65))^n)` -/
def P8295968471573394306.Spec : Prop :=
  ∀ n, P8295968471573394306.a n = (A190981 n : ℝ)

theorem P8295968471573394306.correct : P8295968471573394306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190981, Nat.add_sub_cancel, A190981.P8295968471573394306.a, A190981.P3908866845920819425.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190981, Nat.add_sub_cancel, A190981.P8295968471573394306.a, A190981.P3908866845920819425.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190981

/-! ## A190981.P5193427100075174998

`A230647(Δ[n²])/3`
-/

namespace A190981.P5193427100075174998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230647 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A190981.P5193427100075174998

namespace A190981

/-- `A230647(Δ[n²])/3` -/
def P5193427100075174998.Spec : Prop :=
  ∀ n, P5193427100075174998.a n = (A190981 n : ℚ)

end A190981

/-! ## A190981.P13546301143408446166

`A230658(2*n+1)/15`
-/

namespace A190981.P13546301143408446166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (2 * n + 1) : ℚ) / 15

end

end A190981.P13546301143408446166

namespace A190981

/-- `A230658(2*n+1)/15` -/
def P13546301143408446166.Spec : Prop :=
  ∀ n, P13546301143408446166.a n = (A190981 n : ℚ)

end A190981

/-! ## A190981.P7163921743281139038

`record[A230647(A000265(n+1))/3]`
-/

namespace A190981.P7163921743281139038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230647 (A000265 (n + 1)).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190981.P7163921743281139038

namespace A190981

/-- `record[A230647(A000265(n+1))/3]` -/
def P7163921743281139038.Spec : Prop :=
  ∀ n, P7163921743281139038.a n = (A190981 n : ℚ)

end A190981

/-!
# A190982: a(n) = 9*a(n-1) - 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A190982, the canonical program `A190982.P9012083281719292891` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190982 has offset 0).

The definition of A190982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-5*a(n-2)` (program `A190982.P9012083281719292891`, by `A190982.P9012083281719292891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190982.P5097357882857894426

`ogf(x/(1-9x+5x^2))`
-/

namespace A190982.P5097357882857894426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 5] n

end

end A190982.P5097357882857894426

namespace A190982

/-- `ogf(x/(1-9x+5x^2))` -/
def P5097357882857894426.Spec : Prop :=
  ∀ n, P5097357882857894426.a n = A190982 n

end A190982

/-! ## A190982.P9012083281719292891

`9*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190982

/-- `9*a(n-1)-5*a(n-2)` -/
def P9012083281719292891.Spec : Prop :=
  ∀ n, P9012083281719292891.a n = A190982 n

theorem P9012083281719292891.correct : P9012083281719292891.Spec := by
  intro n
  simp only [A190982]

end A190982

/-! ## A190982.P8715482017252883322

`1/61*sqrt(61)*((9/2+1/2*sqrt(61))^n-(9/2-1/2*sqrt(61))^n)`
-/

namespace A190982.P8715482017252883322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 61 : ℝ) * Real.sqrt (61 : ℝ) * ((((9 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (61 : ℝ)) ^ n - (((9 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (61 : ℝ)) ^ n)

end

end A190982.P8715482017252883322

namespace A190982

/-- `1/61*sqrt(61)*((9/2+1/2*sqrt(61))^n-(9/2-1/2*sqrt(61))^n)` -/
def P8715482017252883322.Spec : Prop :=
  ∀ n, P8715482017252883322.a n = (A190982 n : ℝ)

theorem P8715482017252883322.correct : P8715482017252883322.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190982, Nat.add_sub_cancel, A190982.P8715482017252883322.a, A190982.P9012083281719292891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190982, Nat.add_sub_cancel, A190982.P8715482017252883322.a, A190982.P9012083281719292891.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190982

/-!
# A190983: a(n) = 9*a(n-1) - 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190983, the canonical program `A190983.P14968202820168291449` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190983 has offset 0).

The definition of A190983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-6*a(n-2)` (program `A190983.P14968202820168291449`, by `A190983.P14968202820168291449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190983.P16515986188862472002

`ogf(x/(1-9x+6x^2))`
-/

namespace A190983.P16515986188862472002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 6] n

end

end A190983.P16515986188862472002

namespace A190983

/-- `ogf(x/(1-9x+6x^2))` -/
def P16515986188862472002.Spec : Prop :=
  ∀ n, P16515986188862472002.a n = A190983 n

end A190983

/-! ## A190983.P14968202820168291449

`9*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190983

/-- `9*a(n-1)-6*a(n-2)` -/
def P14968202820168291449.Spec : Prop :=
  ∀ n, P14968202820168291449.a n = A190983 n

theorem P14968202820168291449.correct : P14968202820168291449.Spec := by
  intro n
  simp only [A190983]

end A190983

/-! ## A190983.P4843959720642126392

`1/sqrt(57)*((9/2+1/2*sqrt(57))^n-(9/2-1/2*sqrt(57))^n)`
-/

namespace A190983.P4843959720642126392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.sqrt (57 : ℝ) * ((((9 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (57 : ℝ)) ^ n - (((9 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (57 : ℝ)) ^ n)

end

end A190983.P4843959720642126392

namespace A190983

/-- `1/sqrt(57)*((9/2+1/2*sqrt(57))^n-(9/2-1/2*sqrt(57))^n)` -/
def P4843959720642126392.Spec : Prop :=
  ∀ n, P4843959720642126392.a n = (A190983 n : ℝ)

theorem P4843959720642126392.correct : P4843959720642126392.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190983, Nat.add_sub_cancel, A190983.P4843959720642126392.a, A190983.P14968202820168291449.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190983, Nat.add_sub_cancel, A190983.P4843959720642126392.a, A190983.P14968202820168291449.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190983

/-!
# A190984: a(n) = 9*a(n-1) - 7*a(n-2), with a(0)=0, a(1)=1.

The programs for A190984, the canonical program `A190984.P11096065902682015085` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190984 has offset 0).

The definition of A190984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-7*a(n-2)` (program `A190984.P11096065902682015085`, by `A190984.P11096065902682015085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190984.P3022091158435864005

`ogf(x/(1-9x+7x^2))`
-/

namespace A190984.P3022091158435864005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 7] n

end

end A190984.P3022091158435864005

namespace A190984

/-- `ogf(x/(1-9x+7x^2))` -/
def P3022091158435864005.Spec : Prop :=
  ∀ n, P3022091158435864005.a n = A190984 n

end A190984

/-! ## A190984.P11096065902682015085

`9*a(n-1)-7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190984

/-- `9*a(n-1)-7*a(n-2)` -/
def P11096065902682015085.Spec : Prop :=
  ∀ n, P11096065902682015085.a n = A190984 n

theorem P11096065902682015085.correct : P11096065902682015085.Spec := by
  intro n
  simp only [A190984]

end A190984

/-! ## A190984.P530631429034486788

`1/53*sqrt(53)*((9/2+1/2*sqrt(53))^n-(9/2-1/2*sqrt(53))^n)`
-/

namespace A190984.P530631429034486788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 53 : ℝ) * Real.sqrt (53 : ℝ) * ((((9 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (53 : ℝ)) ^ n - (((9 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (53 : ℝ)) ^ n)

end

end A190984.P530631429034486788

namespace A190984

/-- `1/53*sqrt(53)*((9/2+1/2*sqrt(53))^n-(9/2-1/2*sqrt(53))^n)` -/
def P530631429034486788.Spec : Prop :=
  ∀ n, P530631429034486788.a n = (A190984 n : ℝ)

theorem P530631429034486788.correct : P530631429034486788.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190984, Nat.add_sub_cancel, A190984.P530631429034486788.a, A190984.P11096065902682015085.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190984, Nat.add_sub_cancel, A190984.P530631429034486788.a, A190984.P11096065902682015085.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190984

/-!
# A190985: a(n) = 10*a(n-1) - 3*a(n-2), with a(0)=0, a(1)=1.

The programs for A190985, the canonical program `A190985.P9542154542602916250` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190985 has offset 0).

The definition of A190985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-3*a(n-2)` (program `A190985.P9542154542602916250`, by `A190985.P9542154542602916250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190985.P2010001734771770147

`ogf(x/(1-10x+3x^2))`
-/

namespace A190985.P2010001734771770147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 3] n

end

end A190985.P2010001734771770147

namespace A190985

/-- `ogf(x/(1-10x+3x^2))` -/
def P2010001734771770147.Spec : Prop :=
  ∀ n, P2010001734771770147.a n = A190985 n

end A190985

/-! ## A190985.P9542154542602916250

`10*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190985

/-- `10*a(n-1)-3*a(n-2)` -/
def P9542154542602916250.Spec : Prop :=
  ∀ n, P9542154542602916250.a n = A190985 n

theorem P9542154542602916250.correct : P9542154542602916250.Spec := by
  intro n
  simp only [A190985]

end A190985

/-! ## A190985.P570215440772891104

`1/44*sqrt(22)*((5+sqrt(22))^n-(5-sqrt(22))^n)`
-/

namespace A190985.P570215440772891104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 44 : ℝ) * Real.sqrt (22 : ℝ) * ((5 + Real.sqrt (22 : ℝ)) ^ n - (5 - Real.sqrt (22 : ℝ)) ^ n)

end

end A190985.P570215440772891104

namespace A190985

/-- `1/44*sqrt(22)*((5+sqrt(22))^n-(5-sqrt(22))^n)` -/
def P570215440772891104.Spec : Prop :=
  ∀ n, P570215440772891104.a n = (A190985 n : ℝ)

theorem P570215440772891104.correct : P570215440772891104.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190985, Nat.add_sub_cancel, A190985.P570215440772891104.a, A190985.P9542154542602916250.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190985, Nat.add_sub_cancel, A190985.P570215440772891104.a, A190985.P9542154542602916250.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190985

/-!
# A190986: a(n) = 10*a(n-1) - 4*a(n-2), with a(0)=0, a(1)=1.

The programs for A190986, the canonical program `A190986.P10204873127401680587` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190986 has offset 0).

The definition of A190986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-4*a(n-2)` (program `A190986.P10204873127401680587`, by `A190986.P10204873127401680587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190986.P12636341502737164586

`ogf(x/(1-10x+4x^2))`
-/

namespace A190986.P12636341502737164586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 4] n

end

end A190986.P12636341502737164586

namespace A190986

/-- `ogf(x/(1-10x+4x^2))` -/
def P12636341502737164586.Spec : Prop :=
  ∀ n, P12636341502737164586.a n = A190986 n

end A190986

/-! ## A190986.P10204873127401680587

`10*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190986

/-- `10*a(n-1)-4*a(n-2)` -/
def P10204873127401680587.Spec : Prop :=
  ∀ n, P10204873127401680587.a n = A190986 n

theorem P10204873127401680587.correct : P10204873127401680587.Spec := by
  intro n
  simp only [A190986]

end A190986

/-! ## A190986.P7263548526300075220

`2^(n-1)*A004254(n)`
-/

namespace A190986.P7263548526300075220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A004254 n : ℚ)

end

end A190986.P7263548526300075220

namespace A190986

/-- `2^(n-1)*A004254(n)` -/
def P7263548526300075220.Spec : Prop :=
  ∀ n, P7263548526300075220.a n = (A190986 n : ℚ)

end A190986

/-! ## A190986.P9863405024452748530

`A004254(n)*A011782(n)`
-/

namespace A190986.P9863405024452748530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n * A011782 n

end

end A190986.P9863405024452748530

namespace A190986

/-- `A004254(n)*A011782(n)` -/
def P9863405024452748530.Spec : Prop :=
  ∀ n, P9863405024452748530.a n = A190986 n

end A190986

/-! ## A190986.P3449077114770048723

`A004254(n)*A131577(n)`
-/

namespace A190986.P3449077114770048723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n * A131577 n

end

end A190986.P3449077114770048723

namespace A190986

/-- `A004254(n)*A131577(n)` -/
def P3449077114770048723.Spec : Prop :=
  ∀ n, P3449077114770048723.a n = A190986 n

end A190986

/-! ## A190986.P1484511767364335128

`A000079(n)*A004254(n)/2`
-/

namespace A190986.P1484511767364335128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A004254 n : ℚ) / 2

end

end A190986.P1484511767364335128

namespace A190986

/-- `A000079(n)*A004254(n)/2` -/
def P1484511767364335128.Spec : Prop :=
  ∀ n, P1484511767364335128.a n = (A190986 n : ℚ)

end A190986

/-! ## A190986.P13808942117705274609

`(A002320(n)-A002310(n))*∑[A034008(n)]`
-/

namespace A190986.P13808942117705274609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002320 n - A002310 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190986.P13808942117705274609

namespace A190986

/-- `(A002320(n)-A002310(n))*∑[A034008(n)]` -/
def P13808942117705274609.Spec : Prop :=
  ∀ n, P13808942117705274609.a n = A190986 n

end A190986

/-! ## A190986.P5192694209544240714

`(A002320(n)-A002310(n))*A034008(n+1)`
-/

namespace A190986.P5192694209544240714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002320 n - A002310 n) * A034008 (n + 1)

end

end A190986.P5192694209544240714

namespace A190986

/-- `(A002320(n)-A002310(n))*A034008(n+1)` -/
def P5192694209544240714.Spec : Prop :=
  ∀ n, P5192694209544240714.a n = A190986 n

end A190986

/-! ## A190986.P15789697145494206941

`1/42*sqrt(21)*((5+sqrt(21))^n-(5-sqrt(21))^n)`
-/

namespace A190986.P15789697145494206941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 42 : ℝ) * Real.sqrt (21 : ℝ) * ((5 + Real.sqrt (21 : ℝ)) ^ n - (5 - Real.sqrt (21 : ℝ)) ^ n)

end

end A190986.P15789697145494206941

namespace A190986

/-- `1/42*sqrt(21)*((5+sqrt(21))^n-(5-sqrt(21))^n)` -/
def P15789697145494206941.Spec : Prop :=
  ∀ n, P15789697145494206941.a n = (A190986 n : ℝ)

theorem P15789697145494206941.correct : P15789697145494206941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190986, Nat.add_sub_cancel, A190986.P15789697145494206941.a, A190986.P10204873127401680587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190986, Nat.add_sub_cancel, A190986.P15789697145494206941.a, A190986.P10204873127401680587.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190986

/-!
# A190987: a(n) = 10*a(n-1) - 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A190987, the canonical program `A190987.P13434088803364608788` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190987 has offset 0).

The definition of A190987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-5*a(n-2)` (program `A190987.P13434088803364608788`, by `A190987.P13434088803364608788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190987.P5551750252769960418

`ogf(x/(1-10x+5x^2))`
-/

namespace A190987.P5551750252769960418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 5] n

end

end A190987.P5551750252769960418

namespace A190987

/-- `ogf(x/(1-10x+5x^2))` -/
def P5551750252769960418.Spec : Prop :=
  ∀ n, P5551750252769960418.a n = A190987 n

end A190987

/-! ## A190987.P13434088803364608788

`10*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190987

/-- `10*a(n-1)-5*a(n-2)` -/
def P13434088803364608788.Spec : Prop :=
  ∀ n, P13434088803364608788.a n = A190987 n

theorem P13434088803364608788.correct : P13434088803364608788.Spec := by
  intro n
  simp only [A190987]

end A190987

/-! ## A190987.P3780814384566471381

`5*(2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A190987.P3780814384566471381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * (2 * a (n - 1) - a (n - 2))

end

end A190987.P3780814384566471381

namespace A190987

/-- `5*(2*a(n-1)-a(n-2))` -/
def P3780814384566471381.Spec : Prop :=
  ∀ n, P3780814384566471381.a n = A190987 n

theorem P3780814384566471381.correct : P3780814384566471381.Spec := by
  intro n
  simp only [A190987, Nat.add_sub_cancel, A190987.P3780814384566471381.a, A190987.P13434088803364608788.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A190987

/-! ## A190987.P307347931554210935

`∑[round(A165225(n)/5)]`
-/

namespace A190987.P307347931554210935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A165225 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190987.P307347931554210935

namespace A190987

/-- `∑[round(A165225(n)/5)]` -/
def P307347931554210935.Spec : Prop :=
  ∀ n, P307347931554210935.a n = A190987 n

end A190987

/-! ## A190987.P8280865676869674852

`∑[floor(floor(A189334(n)/2)/2)]`
-/

namespace A190987.P8280865676869674852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A189334 n : ℚ) / 2⌋ : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190987.P8280865676869674852

namespace A190987

/-- `∑[floor(floor(A189334(n)/2)/2)]` -/
def P8280865676869674852.Spec : Prop :=
  ∀ n, P8280865676869674852.a n = A190987 n

end A190987

/-! ## A190987.P6926685055121862614

`A084329(n)/2^(n-1)`
-/

namespace A190987.P6926685055121862614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084329 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A190987.P6926685055121862614

namespace A190987

/-- `A084329(n)/2^(n-1)` -/
def P6926685055121862614.Spec : Prop :=
  ∀ n, P6926685055121862614.a n = (A190987 n : ℚ)

end A190987

/-! ## A190987.P16086169529371001903

`A342133((n+3)²-∑[n])`
-/

namespace A190987.P16086169529371001903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342133 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190987.P16086169529371001903

namespace A190987

/-- `A342133((n+3)²-∑[n])` -/
def P16086169529371001903.Spec : Prop :=
  ∀ n, P16086169529371001903.a n = A190987 n

end A190987

/-!
# A190988: a(n) = 10*a(n-1) - 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190988, the canonical program `A190988.P17820422051294865951` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190988 has offset 0).

The definition of A190988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-6*a(n-2)` (program `A190988.P17820422051294865951`, by `A190988.P17820422051294865951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190988.P4495697541084171203

`ogf(x/(1-10x+6x^2))`
-/

namespace A190988.P4495697541084171203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 6] n

end

end A190988.P4495697541084171203

namespace A190988

/-- `ogf(x/(1-10x+6x^2))` -/
def P4495697541084171203.Spec : Prop :=
  ∀ n, P4495697541084171203.a n = A190988 n

end A190988

/-! ## A190988.P17820422051294865951

`10*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190988

/-- `10*a(n-1)-6*a(n-2)` -/
def P17820422051294865951.Spec : Prop :=
  ∀ n, P17820422051294865951.a n = A190988 n

theorem P17820422051294865951.correct : P17820422051294865951.Spec := by
  intro n
  simp only [A190988]

end A190988

/-! ## A190988.P15654962213062498348

`1/38*sqrt(19)*((5+sqrt(19))^n-(5-sqrt(19))^n)`
-/

namespace A190988.P15654962213062498348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 38 : ℝ) * Real.sqrt (19 : ℝ) * ((5 + Real.sqrt (19 : ℝ)) ^ n - (5 - Real.sqrt (19 : ℝ)) ^ n)

end

end A190988.P15654962213062498348

namespace A190988

/-- `1/38*sqrt(19)*((5+sqrt(19))^n-(5-sqrt(19))^n)` -/
def P15654962213062498348.Spec : Prop :=
  ∀ n, P15654962213062498348.a n = (A190988 n : ℝ)

theorem P15654962213062498348.correct : P15654962213062498348.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A190988, Nat.add_sub_cancel, A190988.P15654962213062498348.a, A190988.P17820422051294865951.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A190988, Nat.add_sub_cancel, A190988.P15654962213062498348.a, A190988.P17820422051294865951.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190988

/-!
# A190989: a(n) = 10*a(n-1) - 7*a(n-2), with a(0)=0, a(1)=1.

The programs for A190989, the canonical program `A190989.P7134707430059171840` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190989 has offset 0).

The definition of A190989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-7*a(n-2)` (program `A190989.P7134707430059171840`, by `A190989.P7134707430059171840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190989.P14829164676738630244

`ogf(x/(1-10x+7x^2))`
-/

namespace A190989.P14829164676738630244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 7] n

end

end A190989.P14829164676738630244

namespace A190989

/-- `ogf(x/(1-10x+7x^2))` -/
def P14829164676738630244.Spec : Prop :=
  ∀ n, P14829164676738630244.a n = A190989 n

end A190989

/-! ## A190989.P7134707430059171840

`10*a(n-1)-7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190989

/-- `10*a(n-1)-7*a(n-2)` -/
def P7134707430059171840.Spec : Prop :=
  ∀ n, P7134707430059171840.a n = A190989 n

theorem P7134707430059171840.correct : P7134707430059171840.Spec := by
  intro n
  simp only [A190989]

end A190989

/-!
# A190990: a(n) = 10*a(n-1) - 8*a(n-2), with a(0)=0, a(1)=1.

The programs for A190990, the canonical program `A190990.P7200503991823970236` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190990 has offset 0).

The definition of A190990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-8*a(n-2)` (program `A190990.P7200503991823970236`, by `A190990.P7200503991823970236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190990.P8517063156137609356

`ogf(x/(1-10x+8x^2))`
-/

namespace A190990.P8517063156137609356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 8] n

end

end A190990.P8517063156137609356

namespace A190990

/-- `ogf(x/(1-10x+8x^2))` -/
def P8517063156137609356.Spec : Prop :=
  ∀ n, P8517063156137609356.a n = A190990 n

end A190990

/-! ## A190990.P7200503991823970236

`10*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190990

/-- `10*a(n-1)-8*a(n-2)` -/
def P7200503991823970236.Spec : Prop :=
  ∀ n, P7200503991823970236.a n = A190990 n

theorem P7200503991823970236.correct : P7200503991823970236.Spec := by
  intro n
  simp only [A190990]

end A190990

/-! ## A190990.P10421124196463235377

`A005824(2*n)*A011782(n)`
-/

namespace A190990.P10421124196463235377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (2 * n) * A011782 n

end

end A190990.P10421124196463235377

namespace A190990

/-- `A005824(2*n)*A011782(n)` -/
def P10421124196463235377.Spec : Prop :=
  ∀ n, P10421124196463235377.a n = A190990 n

end A190990

/-! ## A190990.P6678023209728895470

`A011782(n)*A249581(4*n)`
-/

namespace A190990.P6678023209728895470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A249581 (4 * n)

end

end A190990.P6678023209728895470

namespace A190990

/-- `A011782(n)*A249581(4*n)` -/
def P6678023209728895470.Spec : Prop :=
  ∀ n, P6678023209728895470.a n = A190990 n

end A190990

/-! ## A190990.P4745949293867824442

`2^(n-1)*A249581(A008586(n))`
-/

namespace A190990.P4745949293867824442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A249581 (A008586 n).toNat : ℚ)

end

end A190990.P4745949293867824442

namespace A190990

/-- `2^(n-1)*A249581(A008586(n))` -/
def P4745949293867824442.Spec : Prop :=
  ∀ n, P4745949293867824442.a n = (A190990 n : ℚ)

end A190990

/-! ## A190990.P1973044323634175633

`lcm(floor(2^(n-1)), A005824(A005843(n)))`
-/

namespace A190990.P1973044323634175633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A005824 (A005843 n).toNat)

end

end A190990.P1973044323634175633

namespace A190990

/-- `lcm(floor(2^(n-1)), A005824(A005843(n)))` -/
def P1973044323634175633.Spec : Prop :=
  ∀ n, (P1973044323634175633.a n : ℤ) = A190990 n

end A190990

/-! ## A190990.P3365332613026103944

`A131577(n)*A249581(A008574(n))`
-/

namespace A190990.P3365332613026103944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A249581 (A008574 n).toNat

end

end A190990.P3365332613026103944

namespace A190990

/-- `A131577(n)*A249581(A008574(n))` -/
def P3365332613026103944.Spec : Prop :=
  ∀ n, P3365332613026103944.a n = A190990 n

end A190990

/-! ## A190990.P7227920200017878745

`(A052984(n)-A147722(n))*A011782(n)`
-/

namespace A190990.P7227920200017878745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052984 n - A147722 n) * A011782 n

end

end A190990.P7227920200017878745

namespace A190990

/-- `(A052984(n)-A147722(n))*A011782(n)` -/
def P7227920200017878745.Spec : Prop :=
  ∀ n, P7227920200017878745.a n = A190990 n

end A190990

/-! ## A190990.P17860690324371954969

`record[Δ[A249311(n+1)]*A000035(n)]`
-/

namespace A190990.P17860690324371954969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249311 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190990.P17860690324371954969

namespace A190990

/-- `record[Δ[A249311(n+1)]*A000035(n)]` -/
def P17860690324371954969.Spec : Prop :=
  ∀ n, P17860690324371954969.a n = A190990 n

end A190990

/-!
# A190991: a(n) = 13*n + 1.

The programs for A190991, the canonical program `A190991.P11410187498899268460` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190991 has offset 0).

The definition of A190991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+1` (program `A190991.P11410187498899268460`, by `A190991.P11410187498899268460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190991.P11410187498899268460

`13*n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190991

/-- `13*n+1` -/
def P11410187498899268460.Spec : Prop :=
  ∀ n, (P11410187498899268460.a n : ℤ) = A190991 n

theorem P11410187498899268460.correct : P11410187498899268460.Spec := by
  intro n
  simp only [A190991]

end A190991

/-!
# A190993: Square excess of Fibonacci numbers.

The programs for A190993, the canonical program `A190993.P17203414956202834796` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190993 has offset 0).

The definition of A190993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190993.P17203414956202834796

`A000045(n)-floor(sqrt(A000045(n)))²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190993

/-- `A000045(n)-floor(sqrt(A000045(n)))²` -/
def P17203414956202834796.Spec : Prop :=
  ∀ n, P17203414956202834796.a n = A190993 n

theorem P17203414956202834796.correct : P17203414956202834796.Spec := by
  intro n
  simp only [A190993]

end A190993

/-! ## A190993.P8554082118388520746

`A000045(n)-A263727(n)`
-/

namespace A190993.P8554082118388520746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A263727 n

end

end A190993.P8554082118388520746

namespace A190993

/-- `A000045(n)-A263727(n)` -/
def P8554082118388520746.Spec : Prop :=
  ∀ n, P8554082118388520746.a n = A190993 n

end A190993

/-! ## A190993.P14945227397455594263

`A000045(n)-A061287(n)²`
-/

namespace A190993.P14945227397455594263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A061287 n ^ 2

end

end A190993.P14945227397455594263

namespace A190993

/-- `A000045(n)-A061287(n)²` -/
def P14945227397455594263.Spec : Prop :=
  ∀ n, P14945227397455594263.a n = A190993 n

end A190993

/-! ## A190993.P14990783112450872164

`abs(A236191(n))-A061287(n)²`
-/

namespace A190993.P14990783112450872164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| - A061287 n ^ 2

end

end A190993.P14990783112450872164

namespace A190993

/-- `abs(A236191(n))-A061287(n)²` -/
def P14990783112450872164.Spec : Prop :=
  ∀ n, P14990783112450872164.a n = A190993 n

end A190993

/-! ## A190993.P6952930422557784295

`A001611(n)-(A061287(n)²+1)`
-/

namespace A190993.P6952930422557784295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A061287 n ^ 2 + 1)

end

end A190993.P6952930422557784295

namespace A190993

/-- `A001611(n)-(A061287(n)²+1)` -/
def P6952930422557784295.Spec : Prop :=
  ∀ n, P6952930422557784295.a n = A190993 n

theorem P6952930422557784295.correct : P6952930422557784295.Spec := by
  intro n
  simp only [A190993, Nat.add_sub_cancel, A190993.P6952930422557784295.a, A190993.P17203414956202834796.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, A061287, A061287.P16595364071046665369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190993

/-! ## A190993.P2713524306811551258

`A212804(n+1)-A061287(n)²`
-/

namespace A190993.P2713524306811551258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A061287 n ^ 2

end

end A190993.P2713524306811551258

namespace A190993

/-- `A212804(n+1)-A061287(n)²` -/
def P2713524306811551258.Spec : Prop :=
  ∀ n, P2713524306811551258.a n = A190993 n

end A190993

/-! ## A190993.P18103562252220999885

`A103609(2*n)-A061287(n)²`
-/

namespace A190993.P18103562252220999885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A061287 n ^ 2

end

end A190993.P18103562252220999885

namespace A190993

/-- `A103609(2*n)-A061287(n)²` -/
def P18103562252220999885.Spec : Prop :=
  ∀ n, P18103562252220999885.a n = A190993 n

end A190993

/-! ## A190993.P5614551422801188894

`A053602(2*n)-A061287(n)²`
-/

namespace A190993.P5614551422801188894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n) - A061287 n ^ 2

end

end A190993.P5614551422801188894

namespace A190993

/-- `A053602(2*n)-A061287(n)²` -/
def P5614551422801188894.Spec : Prop :=
  ∀ n, P5614551422801188894.a n = A190993 n

end A190993

/-! ## A190993.P8098966624041468188

`Δ[A000071(n+1)]-A061287(n)²`
-/

namespace A190993.P8098966624041468188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061287 n ^ 2

end

end A190993.P8098966624041468188

namespace A190993

/-- `Δ[A000071(n+1)]-A061287(n)²` -/
def P8098966624041468188.Spec : Prop :=
  ∀ n, P8098966624041468188.a n = A190993 n

end A190993

/-! ## A190993.P16925767071418560492

`A039913(A000217(n))-A061287(n)²`
-/

namespace A190993.P16925767071418560492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A000217 n).toNat - A061287 n ^ 2

end

end A190993.P16925767071418560492

namespace A190993

/-- `A039913(A000217(n))-A061287(n)²` -/
def P16925767071418560492.Spec : Prop :=
  ∀ n, P16925767071418560492.a n = A190993 n

end A190993

/-!
# A190994: a(n) = a(n-1) + a(n-2), for n>=2, with a(0)=27, a(1)=2.

The programs for A190994, the canonical program `A190994.P9575713649519499419` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190994 has offset 0).

The definition of A190994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A190994.P9575713649519499419`, by `A190994.P9575713649519499419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190994.P3775265886407121799

`ogf((27-25x)/(1-x-x^2))`
-/

namespace A190994.P3775265886407121799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -25] [1, -1, -1] n

end

end A190994.P3775265886407121799

namespace A190994

/-- `ogf((27-25x)/(1-x-x^2))` -/
def P3775265886407121799.Spec : Prop :=
  ∀ n, P3775265886407121799.a n = A190994 n

end A190994

/-! ## A190994.P9575713649519499419

`a(n-1)+a(n-2)` with `a(0)=27, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190994

/-- `a(n-1)+a(n-2)` -/
def P9575713649519499419.Spec : Prop :=
  ∀ n, (P9575713649519499419.a n : ℤ) = A190994 n

theorem P9575713649519499419.correct : P9575713649519499419.Spec := by
  intro n
  simp only [A190994]

end A190994

/-! ## A190994.P12149340924693263215

`Δ[A022117(n)]+Δ[A022348(n)]`
-/

namespace A190994.P12149340924693263215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A190994.P12149340924693263215

namespace A190994

/-- `Δ[A022117(n)]+Δ[A022348(n)]` -/
def P12149340924693263215.Spec : Prop :=
  ∀ n, P12149340924693263215.a n = A190994 n

end A190994

/-! ## A190994.P133438559519576244

`Δ[A022323(n)]+Δ[A022353(n)]`
-/

namespace A190994.P133438559519576244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A190994.P133438559519576244

namespace A190994

/-- `Δ[A022323(n)]+Δ[A022353(n)]` -/
def P133438559519576244.Spec : Prop :=
  ∀ n, P133438559519576244.a n = A190994 n

end A190994

/-! ## A190994.P12920101521592558980

`Δ[A022324(n)]+Δ[A022352(n)]`
-/

namespace A190994.P12920101521592558980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A190994.P12920101521592558980

namespace A190994

/-- `Δ[A022324(n)]+Δ[A022352(n)]` -/
def P12920101521592558980.Spec : Prop :=
  ∀ n, P12920101521592558980.a n = A190994 n

end A190994

/-! ## A190994.P6397023564764104

`Δ[A022325(n)]+Δ[A022351(n)]`
-/

namespace A190994.P6397023564764104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A190994.P6397023564764104

namespace A190994

/-- `Δ[A022325(n)]+Δ[A022351(n)]` -/
def P6397023564764104.Spec : Prop :=
  ∀ n, P6397023564764104.a n = A190994 n

end A190994

/-! ## A190994.P1725060985017802350

`Δ[A022326(n)]+Δ[A022350(n)]`
-/

namespace A190994.P1725060985017802350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A190994.P1725060985017802350

namespace A190994

/-- `Δ[A022326(n)]+Δ[A022350(n)]` -/
def P1725060985017802350.Spec : Prop :=
  ∀ n, P1725060985017802350.a n = A190994 n

end A190994

/-! ## A190994.P5792863022092406349

`A393414(n)-A022119(n)`
-/

namespace A190994.P5792863022092406349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393414 n - A022119 n

end

end A190994.P5792863022092406349

namespace A190994

/-- `A393414(n)-A022119(n)` -/
def P5792863022092406349.Spec : Prop :=
  ∀ n, P5792863022092406349.a n = A190994 n

end A190994

/-! ## A190994.P12836655012268314542

`Δ[A022376(n)+A000045(n)]`
-/

namespace A190994.P12836655012268314542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022376 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P12836655012268314542

namespace A190994

/-- `Δ[A022376(n)+A000045(n)]` -/
def P12836655012268314542.Spec : Prop :=
  ∀ n, P12836655012268314542.a n = A190994 n

end A190994

/-! ## A190994.P12033878785917846104

`A000045(n)+Δ[A022398(n)]`
-/

namespace A190994.P12033878785917846104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A190994.P12033878785917846104

namespace A190994

/-- `A000045(n)+Δ[A022398(n)]` -/
def P12033878785917846104.Spec : Prop :=
  ∀ n, P12033878785917846104.a n = A190994 n

end A190994

/-! ## A190994.P9655399941738338043

`Δ[A022348(n)+A022117(n)]`
-/

namespace A190994.P9655399941738338043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P9655399941738338043

namespace A190994

/-- `Δ[A022348(n)+A022117(n)]` -/
def P9655399941738338043.Spec : Prop :=
  ∀ n, P9655399941738338043.a n = A190994 n

end A190994

/-! ## A190994.P11488849500700261003

`Δ[A022354(n)+A022114(n)]`
-/

namespace A190994.P11488849500700261003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P11488849500700261003

namespace A190994

/-- `Δ[A022354(n)+A022114(n)]` -/
def P11488849500700261003.Spec : Prop :=
  ∀ n, P11488849500700261003.a n = A190994 n

end A190994

/-! ## A190994.P7765435520776082415

`Δ[A022350(n)+A022326(n)]`
-/

namespace A190994.P7765435520776082415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P7765435520776082415

namespace A190994

/-- `Δ[A022350(n)+A022326(n)]` -/
def P7765435520776082415.Spec : Prop :=
  ∀ n, P7765435520776082415.a n = A190994 n

end A190994

/-! ## A190994.P3280239698314400819

`Δ[A022351(n)+A022325(n)]`
-/

namespace A190994.P3280239698314400819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P3280239698314400819

namespace A190994

/-- `Δ[A022351(n)+A022325(n)]` -/
def P3280239698314400819.Spec : Prop :=
  ∀ n, P3280239698314400819.a n = A190994 n

end A190994

/-! ## A190994.P17710567766596130491

`Δ[A022352(n)+A022324(n)]`
-/

namespace A190994.P17710567766596130491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P17710567766596130491

namespace A190994

/-- `Δ[A022352(n)+A022324(n)]` -/
def P17710567766596130491.Spec : Prop :=
  ∀ n, P17710567766596130491.a n = A190994 n

end A190994

/-! ## A190994.P9381236623122043554

`Δ[A022353(n)+A022323(n)]`
-/

namespace A190994.P9381236623122043554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P9381236623122043554

namespace A190994

/-- `Δ[A022353(n)+A022323(n)]` -/
def P9381236623122043554.Spec : Prop :=
  ∀ n, P9381236623122043554.a n = A190994 n

end A190994

/-! ## A190994.P4768183069813989813

`Δ[A212804(n)+A022399(n)]`
-/

namespace A190994.P4768183069813989813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190994.P4768183069813989813

namespace A190994

/-- `Δ[A212804(n)+A022399(n)]` -/
def P4768183069813989813.Spec : Prop :=
  ∀ n, P4768183069813989813.a n = A190994 n

end A190994

/-! ## A190994.P17199281230709680102

`A022398(n+1)+A000045(n)-A022398(n)`
-/

namespace A190994.P17199281230709680102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (n + 1) + (A000045 n - A022398 n)

end

end A190994.P17199281230709680102

namespace A190994

/-- `A022398(n+1)+A000045(n)-A022398(n)` -/
def P17199281230709680102.Spec : Prop :=
  ∀ n, P17199281230709680102.a n = A190994 n

end A190994

/-! ## A190994.P7263038858328837865

`A000045(n+1)+A022397(n+1)-A022397(n)`
-/

namespace A190994.P7263038858328837865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A022397 (n + 1) - A022397 n)

end

end A190994.P7263038858328837865

namespace A190994

/-- `A000045(n+1)+A022397(n+1)-A022397(n)` -/
def P7263038858328837865.Spec : Prop :=
  ∀ n, P7263038858328837865.a n = A190994 n

end A190994

/-! ## A190994.P12874677062965124297

`A022125(n+1)+A022125(n+1)-A022402(n)`
-/

namespace A190994.P12874677062965124297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 (n + 1) + (A022125 (n + 1) - A022402 n)

end

end A190994.P12874677062965124297

namespace A190994

/-- `A022125(n+1)+A022125(n+1)-A022402(n)` -/
def P12874677062965124297.Spec : Prop :=
  ∀ n, P12874677062965124297.a n = A190994 n

end A190994

/-!
# A190995: Fibonacci sequence beginning 9, 7.

The programs for A190995, the canonical program `A190995.P18057764635252338058` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190995 has offset 0).

The definition of A190995 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A190995.anchor : A190995 0 = 9 ∧ A190995 1 = 7 ∧ ∀ n, A190995 (n + 2) = A190995 (n + 1) + A190995 n` in `Proof.A190.A190995`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190995.P10741030574009259080

`ogf((9-2x)/(1-x-x^2))`
-/

namespace A190995.P10741030574009259080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -2] [1, -1, -1] n

end

end A190995.P10741030574009259080

namespace A190995

/-- `ogf((9-2x)/(1-x-x^2))` -/
def P10741030574009259080.Spec : Prop :=
  ∀ n, P10741030574009259080.a n = A190995 n

end A190995

/-! ## A190995.P18057764635252338058

`a(n-1)+a(n-2)` with `a(0)=9, a(1)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190995

/-- `a(n-1)+a(n-2)` -/
def P18057764635252338058.Spec : Prop :=
  ∀ n, (P18057764635252338058.a n : ℤ) = A190995 n

theorem P18057764635252338058.correct : P18057764635252338058.Spec := by
  intro n
  simp only [A190995]

end A190995

/-! ## A190995.P16880202848858926423

`a(n-1)-floor(-a(n-2))` with `a(0)=9, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A190995.P16880202848858926423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A190995.P16880202848858926423

namespace A190995

/-- `a(n-1)-floor(-a(n-2))` -/
def P16880202848858926423.Spec : Prop :=
  ∀ n, P16880202848858926423.a n = A190995 n

end A190995

/-! ## A190995.P10329130529452417937

`a(n-1)-ceil(-a(n-2))` with `a(0)=9, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A190995.P10329130529452417937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A190995.P10329130529452417937

namespace A190995

/-- `a(n-1)-ceil(-a(n-2))` -/
def P10329130529452417937.Spec : Prop :=
  ∀ n, P10329130529452417937.a n = A190995 n

end A190995

/-! ## A190995.P1142904978335388685

`a(n-1)-round(-a(n-2))` with `a(0)=9, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A190995.P1142904978335388685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A190995.P1142904978335388685

namespace A190995

/-- `a(n-1)-round(-a(n-2))` -/
def P1142904978335388685.Spec : Prop :=
  ∀ n, P1142904978335388685.a n = A190995 n

end A190995

/-! ## A190995.P14475877066869148030

`A190996(n)-A212804(n)`
-/

namespace A190995.P14475877066869148030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n - A212804 n

end

end A190995.P14475877066869148030

namespace A190995

/-- `A190996(n)-A212804(n)` -/
def P14475877066869148030.Spec : Prop :=
  ∀ n, P14475877066869148030.a n = A190995 n

end A190995

/-! ## A190995.P4420710558173822300

`A022120(n)+Δ[A022089(n)]`
-/

namespace A190995.P4420710558173822300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + (f1 (n + 1) - f1 n)

end

end A190995.P4420710558173822300

namespace A190995

/-- `A022120(n)+Δ[A022089(n)]` -/
def P4420710558173822300.Spec : Prop :=
  ∀ n, P4420710558173822300.a n = A190995 n

end A190995

/-! ## A190995.P5016237830480628937

`A104449(n)+A022089(n+1)`
-/

namespace A190995.P5016237830480628937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022089 (n + 1)

end

end A190995.P5016237830480628937

namespace A190995

/-- `A104449(n)+A022089(n+1)` -/
def P5016237830480628937.Spec : Prop :=
  ∀ n, P5016237830480628937.a n = A190995 n

end A190995

/-! ## A190995.P17114725907369609760

`A118658(n)+A022090(n+1)`
-/

namespace A190995.P17114725907369609760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022090 (n + 1)

end

end A190995.P17114725907369609760

namespace A190995

/-- `A118658(n)+A022090(n+1)` -/
def P17114725907369609760.Spec : Prop :=
  ∀ n, P17114725907369609760.a n = A190995 n

end A190995

/-! ## A190995.P1251645884601002868

`A156279(n)+A000032(n+1)`
-/

namespace A190995.P1251645884601002868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A000032 (n + 1)

end

end A190995.P1251645884601002868

namespace A190995

/-- `A156279(n)+A000032(n+1)` -/
def P1251645884601002868.Spec : Prop :=
  ∀ n, P1251645884601002868.a n = A190995 n

end A190995

/-! ## A190995.P10129277450964806865

`A156279(n)+A000204(n+1)`
-/

namespace A190995.P10129277450964806865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A000204 (n + 1)

end

end A190995.P10129277450964806865

namespace A190995

/-- `A156279(n)+A000204(n+1)` -/
def P10129277450964806865.Spec : Prop :=
  ∀ n, P10129277450964806865.a n = A190995 n

end A190995

/-! ## A190995.P6951656713445704979

`A152163(n)+A022091(n+1)`
-/

namespace A190995.P6951656713445704979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022091 (n + 1)

end

end A190995.P6951656713445704979

namespace A190995

/-- `A152163(n)+A022091(n+1)` -/
def P6951656713445704979.Spec : Prop :=
  ∀ n, P6951656713445704979.a n = A190995 n

end A190995

/-! ## A190995.P6982226277104438369

`A022100(n+1)-A000285(n)`
-/

namespace A190995.P6982226277104438369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 (n + 1) - A000285 n

end

end A190995.P6982226277104438369

namespace A190995

/-- `A022100(n+1)-A000285(n)` -/
def P6982226277104438369.Spec : Prop :=
  ∀ n, P6982226277104438369.a n = A190995 n

end A190995

/-! ## A190995.P1219637348127846080

`A022101(n+1)-A001060(n)`
-/

namespace A190995.P1219637348127846080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (n + 1) - A001060 n

end

end A190995.P1219637348127846080

namespace A190995

/-- `A022101(n+1)-A001060(n)` -/
def P1219637348127846080.Spec : Prop :=
  ∀ n, P1219637348127846080.a n = A190995 n

end A190995

/-! ## A190995.P15415924745831101545

`A022346(n+1)-A020701(n)`
-/

namespace A190995.P15415924745831101545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A020701 n

end

end A190995.P15415924745831101545

namespace A190995

/-- `A022346(n+1)-A020701(n)` -/
def P15415924745831101545.Spec : Prop :=
  ∀ n, P15415924745831101545.a n = A190995 n

end A190995

/-! ## A190995.P2328133470960428311

`A022099(n+1)-A022086(n)`
-/

namespace A190995.P2328133470960428311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 (n + 1) - A022086 n

end

end A190995.P2328133470960428311

namespace A190995

/-- `A022099(n+1)-A022086(n)` -/
def P2328133470960428311.Spec : Prop :=
  ∀ n, P2328133470960428311.a n = A190995 n

end A190995

/-! ## A190995.P18421428224323663780

`A022114(n+1)-A022087(n)`
-/

namespace A190995.P18421428224323663780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 (n + 1) - A022087 n

end

end A190995.P18421428224323663780

namespace A190995

/-- `A022114(n+1)-A022087(n)` -/
def P18421428224323663780.Spec : Prop :=
  ∀ n, P18421428224323663780.a n = A190995 n

end A190995

/-! ## A190995.P18077012220010359985

`A022130(n+1)-A022089(n)`
-/

namespace A190995.P18077012220010359985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 (n + 1) - A022089 n

end

end A190995.P18077012220010359985

namespace A190995

/-- `A022130(n+1)-A022089(n)` -/
def P18077012220010359985.Spec : Prop :=
  ∀ n, P18077012220010359985.a n = A190995 n

end A190995

/-! ## A190995.P18000164515310030066

`A022367(n+1)-A022095(n)`
-/

namespace A190995.P18000164515310030066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 (n + 1) - A022095 n

end

end A190995.P18000164515310030066

namespace A190995

/-- `A022367(n+1)-A022095(n)` -/
def P18000164515310030066.Spec : Prop :=
  ∀ n, P18000164515310030066.a n = A190995 n

end A190995

/-! ## A190995.P11819268199659465299

`A022379(n+1)-A022088(n)`
-/

namespace A190995.P11819268199659465299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 (n + 1) - A022088 n

end

end A190995.P11819268199659465299

namespace A190995

/-- `A022379(n+1)-A022088(n)` -/
def P11819268199659465299.Spec : Prop :=
  ∀ n, P11819268199659465299.a n = A190995 n

end A190995

/-!
# A190996: Fibonacci sequence beginning 10, 7.

The programs for A190996, the canonical program `A190996.P13109645690583072028` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190996 has offset 0).

The definition of A190996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190996.P8608802388352217362

`ogf((10-3x)/(1-x-x^2))`
-/

namespace A190996.P8608802388352217362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -3] [1, -1, -1] n

end

end A190996.P8608802388352217362

namespace A190996

/-- `ogf((10-3x)/(1-x-x^2))` -/
def P8608802388352217362.Spec : Prop :=
  ∀ n, P8608802388352217362.a n = A190996 n

end A190996

/-! ## A190996.P13109645690583072028

`4*A000045(n+1)+3*A000032(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190996

/-- `4*A000045(n+1)+3*A000032(n)` -/
def P13109645690583072028.Spec : Prop :=
  ∀ n, P13109645690583072028.a n = A190996 n

theorem P13109645690583072028.correct : P13109645690583072028.Spec := by
  intro n
  simp only [A190996]

end A190996

/-! ## A190996.P4625556774931111704

`a(n-1)+a(n-2)` with `a(0)=10, a(1)=7`
-/

namespace A190996.P4625556774931111704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A190996.P4625556774931111704

namespace A190996

/-- `a(n-1)+a(n-2)` -/
def P4625556774931111704.Spec : Prop :=
  ∀ n, (P4625556774931111704.a n : ℤ) = A190996 n

end A190996

/-! ## A190996.P15838932588807829871

`a(n-1)-floor(-a(n-2))` with `a(0)=10, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A190996.P15838932588807829871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A190996.P15838932588807829871

namespace A190996

/-- `a(n-1)-floor(-a(n-2))` -/
def P15838932588807829871.Spec : Prop :=
  ∀ n, P15838932588807829871.a n = A190996 n

end A190996

/-! ## A190996.P12072018298671423909

`a(n-1)-ceil(-a(n-2))` with `a(0)=10, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A190996.P12072018298671423909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A190996.P12072018298671423909

namespace A190996

/-- `a(n-1)-ceil(-a(n-2))` -/
def P12072018298671423909.Spec : Prop :=
  ∀ n, P12072018298671423909.a n = A190996 n

end A190996

/-! ## A190996.P11419757460788620536

`a(n-1)-round(-a(n-2))` with `a(0)=10, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A190996.P11419757460788620536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A190996.P11419757460788620536

namespace A190996

/-- `a(n-1)-round(-a(n-2))` -/
def P11419757460788620536.Spec : Prop :=
  ∀ n, P11419757460788620536.a n = A190996 n

end A190996

/-! ## A190996.P9547998618681797939

`A156279(n)+A020695(n)`
-/

namespace A190996.P9547998618681797939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A020695 n

end

end A190996.P9547998618681797939

namespace A190996

/-- `A156279(n)+A020695(n)` -/
def P9547998618681797939.Spec : Prop :=
  ∀ n, P9547998618681797939.a n = A190996 n

end A190996

/-! ## A190996.P6870261216428659054

`A212804(n)+A190995(n)`
-/

namespace A190996.P6870261216428659054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A190995 n

end

end A190996.P6870261216428659054

namespace A190996

/-- `A212804(n)+A190995(n)` -/
def P6870261216428659054.Spec : Prop :=
  ∀ n, P6870261216428659054.a n = A190996 n

end A190996

/-! ## A190996.P856386430036146631

`A022090(n)+Δ[A022093(n)]`
-/

namespace A190996.P856386430036146631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + (f1 (n + 1) - f1 n)

end

end A190996.P856386430036146631

namespace A190996

/-- `A022090(n)+Δ[A022093(n)]` -/
def P856386430036146631.Spec : Prop :=
  ∀ n, P856386430036146631.a n = A190996 n

end A190996

/-! ## A190996.P15845580284224616413

`A020712(n)+Δ[A187891(n)]`
-/

namespace A190996.P15845580284224616413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n + (f1 (n + 1) - f1 n)

end

end A190996.P15845580284224616413

namespace A190996

/-- `A020712(n)+Δ[A187891(n)]` -/
def P15845580284224616413.Spec : Prop :=
  ∀ n, P15845580284224616413.a n = A190996 n

end A190996

/-! ## A190996.P7906435687503521973

`A280154(n)+A006355(n+1)`
-/

namespace A190996.P7906435687503521973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A006355 (n + 1)

end

end A190996.P7906435687503521973

namespace A190996

/-- `A280154(n)+A006355(n+1)` -/
def P7906435687503521973.Spec : Prop :=
  ∀ n, P7906435687503521973.a n = A190996 n

end A190996

/-! ## A190996.P10509114728211961797

`A280154(n)+A118658(n+1)`
-/

namespace A190996.P10509114728211961797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A118658 (n + 1)

end

end A190996.P10509114728211961797

namespace A190996

/-- `A280154(n)+A118658(n+1)` -/
def P10509114728211961797.Spec : Prop :=
  ∀ n, P10509114728211961797.a n = A190996 n

end A190996

/-! ## A190996.P9779006209278768758

`A022345(n+1)-A000285(n)`
-/

namespace A190996.P9779006209278768758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) - A000285 n

end

end A190996.P9779006209278768758

namespace A190996

/-- `A022345(n+1)-A000285(n)` -/
def P9779006209278768758.Spec : Prop :=
  ∀ n, P9779006209278768758.a n = A190996 n

end A190996

/-! ## A190996.P8914820103581051423

`A022346(n+1)-A001060(n)`
-/

namespace A190996.P8914820103581051423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A001060 n

end

end A190996.P8914820103581051423

namespace A190996

/-- `A022346(n+1)-A001060(n)` -/
def P8914820103581051423.Spec : Prop :=
  ∀ n, P8914820103581051423.a n = A190996 n

end A190996

/-! ## A190996.P2763442541517167174

`A022093(n+1)-A022086(n)`
-/

namespace A190996.P2763442541517167174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (n + 1) - A022086 n

end

end A190996.P2763442541517167174

namespace A190996

/-- `A022093(n+1)-A022086(n)` -/
def P2763442541517167174.Spec : Prop :=
  ∀ n, P2763442541517167174.a n = A190996 n

end A190996

/-! ## A190996.P12971579677425233121

`A022100(n+1)-A022087(n)`
-/

namespace A190996.P12971579677425233121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 (n + 1) - A022087 n

end

end A190996.P12971579677425233121

namespace A190996

/-- `A022100(n+1)-A022087(n)` -/
def P12971579677425233121.Spec : Prop :=
  ∀ n, P12971579677425233121.a n = A190996 n

end A190996

/-! ## A190996.P12836843946097907802

`A022101(n+1)-A022095(n)`
-/

namespace A190996.P12836843946097907802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (n + 1) - A022095 n

end

end A190996.P12836843946097907802

namespace A190996

/-- `A022101(n+1)-A022095(n)` -/
def P12836843946097907802.Spec : Prop :=
  ∀ n, P12836843946097907802.a n = A190996 n

end A190996

/-! ## A190996.P10206177011218201545

`A022122(n+1)-A022089(n)`
-/

namespace A190996.P10206177011218201545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 (n + 1) - A022089 n

end

end A190996.P10206177011218201545

namespace A190996

/-- `A022122(n+1)-A022089(n)` -/
def P10206177011218201545.Spec : Prop :=
  ∀ n, P10206177011218201545.a n = A190996 n

end A190996

/-! ## A190996.P90667787019828978

`A022367(n+1)-A022088(n)`
-/

namespace A190996.P90667787019828978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 (n + 1) - A022088 n

end

end A190996.P90667787019828978

namespace A190996

/-- `A022367(n+1)-A022088(n)` -/
def P90667787019828978.Spec : Prop :=
  ∀ n, P90667787019828978.a n = A190996 n

end A190996

/-! ## A190996.P9313488230734340723

`A206609(n+1)-A013655(n)`
-/

namespace A190996.P9313488230734340723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A013655 n

end

end A190996.P9313488230734340723

namespace A190996

/-- `A206609(n+1)-A013655(n)` -/
def P9313488230734340723.Spec : Prop :=
  ∀ n, P9313488230734340723.a n = A190996 n

end A190996

/-!
# A190997: Product of digits of all the divisors of n.

The programs for A190997, the canonical program `A190997.P14174213423803526934` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190997 has offset 1).

The definition of A190997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190997.P10740901726660925286

`∏{d}[n+1, A007954(#)]`
-/

namespace A190997.P10740901726660925286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007954 d

end

end A190997.P10740901726660925286

namespace A190997

/-- `∏{d}[n+1, A007954(#)]` -/
def P10740901726660925286.Spec : Prop :=
  ∀ n, P10740901726660925286.a n = A190997 (n + 1)

end A190997

/-! ## A190997.P14174213423803526934

`∏{d}[n+1, abs(A187844(#))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190997

/-- `∏{d}[n+1, abs(A187844(#))]` -/
def P14174213423803526934.Spec : Prop :=
  ∀ n, P14174213423803526934.a n = A190997 (n + 1)

theorem P14174213423803526934.correct : P14174213423803526934.Spec := by
  intro n
  simp only [A190997, Nat.add_sub_cancel]

end A190997

/-! ## A190997.P15789948705461811430

`∏{digits}[A037278(n+1), #]`
-/

namespace A190997.P15789948705461811430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A190997.P15789948705461811430

namespace A190997

/-- `∏{digits}[A037278(n+1), #]` -/
def P15789948705461811430.Spec : Prop :=
  ∀ n, (P15789948705461811430.a n : ℤ) = A190997 (n + 1)

end A190997

/-! ## A190997.P45757819009251432

`∏{digits}[A176558(n+1), #]`
-/

namespace A190997.P45757819009251432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A190997.P45757819009251432

namespace A190997

/-- `∏{digits}[A176558(n+1), #]` -/
def P45757819009251432.Spec : Prop :=
  ∀ n, (P45757819009251432.a n : ℤ) = A190997 (n + 1)

end A190997

/-! ## A190997.P17553932957872197460

`∏{digits}[A243360(n+1), #]`
-/

namespace A190997.P17553932957872197460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A190997.P17553932957872197460

namespace A190997

/-- `∏{digits}[A243360(n+1), #]` -/
def P17553932957872197460.Spec : Prop :=
  ∀ n, (P17553932957872197460.a n : ℤ) = A190997 (n + 1)

end A190997

/-! ## A190997.P10308106929076498279

`∏{digits}[A390599(n+1), #]`
-/

namespace A190997.P10308106929076498279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A190997.P10308106929076498279

namespace A190997

/-- `∏{digits}[A390599(n+1), #]` -/
def P10308106929076498279.Spec : Prop :=
  ∀ n, (P10308106929076498279.a n : ℤ) = A190997 (n + 1)

end A190997

/-! ## A190997.P14098199541504978539

`∏{d}[n+1, A302801(#)%(2*#)]`
-/

namespace A190997.P14098199541504978539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.tmod (A302801 d) (2 * d : ℤ)

end

end A190997.P14098199541504978539

namespace A190997

/-- `∏{d}[n+1, A302801(#)%(2*#)]` -/
def P14098199541504978539.Spec : Prop :=
  ∀ n, P14098199541504978539.a n = A190997 (n + 1)

end A190997

/-!
# A190998: Digital root of concatenation of all divisors of n (A037278).

The programs for A190998, the canonical program `A190998.P6647600116624546979` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190998 has offset 1).

The definition of A190998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190998.P6647600116624546979

`dr(∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190998

/-- `dr(∑{d}[n+1, #])` -/
def P6647600116624546979.Spec : Prop :=
  ∀ n, (P6647600116624546979.a n : ℤ) = A190998 (n + 1)

theorem P6647600116624546979.correct : P6647600116624546979.Spec := by
  intro n
  simp only [A190998, Nat.add_sub_cancel]

end A190998

/-! ## A190998.P11817662747678698457

`dr(Δ[A160664(n)])`
-/

namespace A190998.P11817662747678698457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A190998.P11817662747678698457

namespace A190998

/-- `dr(Δ[A160664(n)])` -/
def P11817662747678698457.Spec : Prop :=
  ∀ n, (P11817662747678698457.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P6230001987296391461

`dr(Δ[A330725(n)])`
-/

namespace A190998.P6230001987296391461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A190998.P6230001987296391461

namespace A190998

/-- `dr(Δ[A330725(n)])` -/
def P6230001987296391461.Spec : Prop :=
  ∀ n, (P6230001987296391461.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P16762638026712332545

`dr(A000203(n+1))`
-/

namespace A190998.P16762638026712332545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000203 (n + 1))

end

end A190998.P16762638026712332545

namespace A190998

/-- `dr(A000203(n+1))` -/
def P16762638026712332545.Spec : Prop :=
  ∀ n, (P16762638026712332545.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P7754573085763833906

`dr(A034690(n+1))`
-/

namespace A190998.P7754573085763833906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A034690 (n + 1))

end

end A190998.P7754573085763833906

namespace A190998

/-- `dr(A034690(n+1))` -/
def P7754573085763833906.Spec : Prop :=
  ∀ n, (P7754573085763833906.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P6341957086133502357

`dr(A067342(n+1))`
-/

namespace A190998.P6341957086133502357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067342 (n + 1))

end

end A190998.P6341957086133502357

namespace A190998

/-- `dr(A067342(n+1))` -/
def P6341957086133502357.Spec : Prop :=
  ∀ n, (P6341957086133502357.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P6951809908613760342

`dr(A069192(n+1))`
-/

namespace A190998.P6951809908613760342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069192 (n + 1))

end

end A190998.P6951809908613760342

namespace A190998

/-- `dr(A069192(n+1))` -/
def P6951809908613760342.Spec : Prop :=
  ∀ n, (P6951809908613760342.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P7587132781574562574

`dr(A116607(n+1))`
-/

namespace A190998.P7587132781574562574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A116607 (n + 1))

end

end A190998.P7587132781574562574

namespace A190998

/-- `dr(A116607(n+1))` -/
def P7587132781574562574.Spec : Prop :=
  ∀ n, (P7587132781574562574.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P2117725260578683558

`dr(A143348(n+1))`
-/

namespace A190998.P2117725260578683558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A143348 (n + 1))

end

end A190998.P2117725260578683558

namespace A190998

/-- `dr(A143348(n+1))` -/
def P2117725260578683558.Spec : Prop :=
  ∀ n, (P2117725260578683558.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P12253920482828753592

`dr(A326122(n+1))`
-/

namespace A190998.P12253920482828753592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326122 (n + 1))

end

end A190998.P12253920482828753592

namespace A190998

/-- `dr(A326122(n+1))` -/
def P12253920482828753592.Spec : Prop :=
  ∀ n, (P12253920482828753592.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P13723307490785424237

`dr(sqrt(A072861(n+1)))`
-/

namespace A190998.P13723307490785424237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ)))

end

end A190998.P13723307490785424237

namespace A190998

/-- `dr(sqrt(A072861(n+1)))` -/
def P13723307490785424237.Spec : Prop :=
  ∀ n, (P13723307490785424237.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P9417588535345933706

`dr(∑[A340793(n+1)])`
-/

namespace A190998.P9417588535345933706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190998.P9417588535345933706

namespace A190998

/-- `dr(∑[A340793(n+1)])` -/
def P9417588535345933706.Spec : Prop :=
  ∀ n, (P9417588535345933706.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P12147588351813182400

`dr(A039653(n+1)+1)`
-/

namespace A190998.P12147588351813182400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039653 (n + 1) + 1)

end

end A190998.P12147588351813182400

namespace A190998

/-- `dr(A039653(n+1)+1)` -/
def P12147588351813182400.Spec : Prop :=
  ∀ n, (P12147588351813182400.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P14349059936104927840

`dr(1-A088580(n+1))`
-/

namespace A190998.P14349059936104927840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A088580 (n + 1))

end

end A190998.P14349059936104927840

namespace A190998

/-- `dr(1-A088580(n+1))` -/
def P14349059936104927840.Spec : Prop :=
  ∀ n, (P14349059936104927840.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P1669397676532764812

`dr(A245092(2*n+1))`
-/

namespace A190998.P1669397676532764812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A245092 (2 * n + 1))

end

end A190998.P1669397676532764812

namespace A190998

/-- `dr(A245092(2*n+1))` -/
def P1669397676532764812.Spec : Prop :=
  ∀ n, (P1669397676532764812.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P11530178498557476027

`dr(A001065(n+1)+1+n)`
-/

namespace A190998.P11530178498557476027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001065 (n + 1) + 1 + (n : ℤ))

end

end A190998.P11530178498557476027

namespace A190998

/-- `dr(A001065(n+1)+1+n)` -/
def P11530178498557476027.Spec : Prop :=
  ∀ n, (P11530178498557476027.a n : ℤ) = A190998 (n + 1)

theorem P11530178498557476027.correct : P11530178498557476027.Spec := by
  intro n
  simp only [A190998, Nat.add_sub_cancel, A190998.P11530178498557476027.a, A190998.P6647600116624546979.f1, A190998.P6647600116624546979.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190998

/-! ## A190998.P4461200281563468482

`dr(1-A155085(n+1)+n)`
-/

namespace A190998.P4461200281563468482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A155085 (n + 1) + (n : ℤ))

end

end A190998.P4461200281563468482

namespace A190998

/-- `dr(1-A155085(n+1)+n)` -/
def P4461200281563468482.Spec : Prop :=
  ∀ n, (P4461200281563468482.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P11258694070412047280

`dr(A064987(n+1)/(n+1))`
-/

namespace A190998.P11258694070412047280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A190998.P11258694070412047280

namespace A190998

/-- `dr(A064987(n+1)/(n+1))` -/
def P11258694070412047280.Spec : Prop :=
  ∀ n, (P11258694070412047280.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P15806069124919048869

`dr(10*A000203(2*n-(n-1)))`
-/

namespace A190998.P15806069124919048869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (10 * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A190998.P15806069124919048869

namespace A190998

/-- `dr(10*A000203(2*n-(n-1)))` -/
def P15806069124919048869.Spec : Prop :=
  ∀ n, (P15806069124919048869.a n : ℤ) = A190998 (n + 1)

end A190998

/-! ## A190998.P11425225468569154824

`dr(A160664(n+1)-A160664(n))`
-/

namespace A190998.P11425225468569154824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A160664 (n + 1) - A160664 n)

end

end A190998.P11425225468569154824

namespace A190998

/-- `dr(A160664(n+1)-A160664(n))` -/
def P11425225468569154824.Spec : Prop :=
  ∀ n, (P11425225468569154824.a n : ℤ) = A190998 (n + 1)

end A190998

/-!
# A190999: a(n) = 2^(n^2)*(2^(2*n+1) - 1).

The programs for A190999, the canonical program `A190999.P17992522190848535329` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190999 has offset 0).

The definition of A190999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n²*(2^(2*n+1)-1)` (program `A190999.P17992522190848535329`, by `A190999.P17992522190848535329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190999.P17992522190848535329

`2^n²*(2^(2*n+1)-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A190999

/-- `2^n²*(2^(2*n+1)-1)` -/
def P17992522190848535329.Spec : Prop :=
  ∀ n, P17992522190848535329.a n = A190999 n

theorem P17992522190848535329.correct : P17992522190848535329.Spec := by
  intro n
  simp only [A190999]

end A190999

/-! ## A190999.P12565617414991798893

`Δ[or(8, 2^n²)]`
-/

namespace A190999.P12565617414991798893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 (2 ^ n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A190999.P12565617414991798893

namespace A190999

/-- `Δ[or(8, 2^n²)]` -/
def P12565617414991798893.Spec : Prop :=
  ∀ n, P12565617414991798893.a n = A190999 n

end A190999

/-! ## A190999.P2837710213688684337

`lcm(2^n, Δ[2^n²])`
-/

namespace A190999.P2837710213688684337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A190999.P2837710213688684337

namespace A190999

/-- `lcm(2^n, Δ[2^n²])` -/
def P2837710213688684337.Spec : Prop :=
  ∀ n, (P2837710213688684337.a n : ℤ) = A190999 n

end A190999

/-! ## A190999.P16956826697939161552

`Δ[and(-2, 2^n)^n]`
-/

namespace A190999.P16956826697939161552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190999.P16956826697939161552

namespace A190999

/-- `Δ[and(-2, 2^n)^n]` -/
def P16956826697939161552.Spec : Prop :=
  ∀ n, P16956826697939161552.a n = A190999 n

end A190999

/-! ## A190999.P5264701133956822177

`Δ[A002416(n)]`
-/

namespace A190999.P5264701133956822177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190999.P5264701133956822177

namespace A190999

/-- `Δ[A002416(n)]` -/
def P5264701133956822177.Spec : Prop :=
  ∀ n, P5264701133956822177.a n = A190999 n

theorem P5264701133956822177.correct : P5264701133956822177.Spec := by
  intro n
  simp only [A190999, Nat.add_sub_cancel, A190999.P5264701133956822177.f1, A190999.P5264701133956822177.a, A190999.P17992522190848535329.a, A002416, A002416.P14306128811858098284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A190999

