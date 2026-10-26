import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A151500: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 1), (1, -1), (1, 0)}.

The programs for A151500, there is no canonical definition to state claims against.
-/

/-! ## A151500.P10335190969002833109

`A008619(A199163(n)-A001684(n))`
-/

namespace A151500.P10335190969002833109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A199163 n - A001684 n).toNat

end

end A151500.P10335190969002833109

/-! ## A151500.P16126521880333862050

`A065033(A199163(n))-A309690(n)`
-/

namespace A151500.P16126521880333862050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A199163 n).toNat - A309690 n

end

end A151500.P16126521880333862050

/-!
# A151502: a(n) = A006720(n)^4 (fourth powers of Somos-4 sequence).

The programs for A151502, the canonical program `A151502.P14494945211104877193` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151502 has offset 0).

The definition of A151502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151502.P6942806161627077343

`A028945(n)²`
-/

namespace A151502.P6942806161627077343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028945 n ^ 2

end

end A151502.P6942806161627077343

namespace A151502

/-- `A028945(n)²` -/
def P6942806161627077343.Spec : Prop :=
  ∀ n, P6942806161627077343.a n = A151502 n

theorem P6942806161627077343.correct : P6942806161627077343.Spec := by
  intro n
  simp only [A151502, Nat.add_sub_cancel, A151502.P6942806161627077343.a, A151502.P14494945211104877193.a, A006720, A006720.P8178216761220668954.a, A028945, A028945.P9063600272498406862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A151502

/-! ## A151502.P14494945211104877193

`A006720(n)^4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151502

/-- `A006720(n)^4` -/
def P14494945211104877193.Spec : Prop :=
  ∀ n, P14494945211104877193.a n = A151502 n

theorem P14494945211104877193.correct : P14494945211104877193.Spec := by
  intro n
  simp only [A151502]

end A151502

/-! ## A151502.P10009559618900870152

`(A165904(n)/2^n)^4`
-/

namespace A151502.P10009559618900870152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165904 n : ℚ) / (2 ^ n : ℚ)) ^ 4

end

end A151502.P10009559618900870152

namespace A151502

/-- `(A165904(n)/2^n)^4` -/
def P10009559618900870152.Spec : Prop :=
  ∀ n, P10009559618900870152.a n = (A151502 n : ℚ)

end A151502

/-! ## A151502.P7763990673598623643

`A028941(A004281(n))²`
-/

namespace A151502.P7763990673598623643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028941 (A004281 n).toNat ^ 2

end

end A151502.P7763990673598623643

namespace A151502

/-- `A028941(A004281(n))²` -/
def P7763990673598623643.Spec : Prop :=
  ∀ n, P7763990673598623643.a n = A151502 n

end A151502

/-! ## A151502.P1753516933480275807

`A006720(n)*A028935(n)`
-/

namespace A151502.P1753516933480275807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n * A028935 n

end

end A151502.P1753516933480275807

namespace A151502

/-- `A006720(n)*A028935(n)` -/
def P1753516933480275807.Spec : Prop :=
  ∀ n, P1753516933480275807.a n = A151502 n

theorem P1753516933480275807.correct : P1753516933480275807.Spec := by
  intro n
  simp only [A151502, Nat.add_sub_cancel, A151502.P1753516933480275807.a, A151502.P14494945211104877193.a, A006720, A006720.P8178216761220668954.a, A028935, A028935.P1136129241853609240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A151502

/-!
# A151504: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, 0)}.

The programs for A151504, there is no canonical definition to state claims against.
-/

/-! ## A151504.P13102522820264575896

`A093991(n+1)/A328830(A002297(n+1))`
-/

namespace A151504.P13102522820264575896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093991 (n + 1) : ℚ) / (A328830 (A002297 (n + 1)).toNat : ℚ)

end

end A151504.P13102522820264575896

/-!
# A151505: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, -1), (1, 0)}.

The programs for A151505, there is no canonical definition to state claims against.
-/

/-! ## A151505.P885079906170335019

`A184732(A153559(n))`
-/

namespace A151505.P885079906170335019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184732 (A153559 n).toNat

end

end A151505.P885079906170335019

/-!
# A151508: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, -1), (1, 0)}.

The programs for A151508, there is no canonical definition to state claims against.
-/

/-! ## A151508.P15250927757309131637

`record[A113514(n+1)+1]-A000203(n+1)`
-/

namespace A151508.P15250927757309131637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113514 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000203 (n + 1)

end

end A151508.P15250927757309131637

/-! ## A151508.P12653526393070445311

`A048273(A001405(n)*A085919(n))`
-/

namespace A151508.P12653526393070445311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A001405 n * A085919 n).toNat

end

end A151508.P12653526393070445311

/-! ## A151508.P15033344192903456368

`A004736(A337071(n))*A008624(n)`
-/

namespace A151508.P15033344192903456368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A337071 n).toNat * A008624 n

end

end A151508.P15033344192903456368

/-!
# A151509: The triangle in A151338 read by rows downwards.

The programs for A151509, there is no canonical definition to state claims against.
-/

/-! ## A151509.P14379732711826761872

`A151510(A061579(n)%A172292(n+1))`
-/

namespace A151509.P14379732711826761872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 (Int.tmod (A061579 n) (A172292 (n + 1))).toNat

end

end A151509.P14379732711826761872

/-! ## A151509.P6518350204870164568

`A151510(∑[2*n]%comp[∑[n]])`
-/

namespace A151509.P6518350204870164568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A151509.P6518350204870164568

/-! ## A151509.P15928911110408539015

`A151510(∑[char[∑[n]]]²-(n+1))`
-/

namespace A151509.P15928911110408539015
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A151509.P15928911110408539015

/-! ## A151509.P6289561462968175386

`A264668(n)+A151510(A061579(n))`
-/

namespace A151509.P6289561462968175386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A151510 (A061579 n).toNat

end

end A151509.P6289561462968175386

/-! ## A151509.P15522585550028716228

`A151510(A061579(n))*A304042(n)`
-/

namespace A151509.P15522585550028716228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 (A061579 n).toNat * A304042 n

end

end A151509.P15522585550028716228

/-! ## A151509.P14745232523380044304

`A151510(A061579(n))^A035214(n)`
-/

namespace A151509.P14745232523380044304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151510 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A151509.P14745232523380044304

/-! ## A151509.P7255174578613046425

`A151510(A061579(n))^A178334(n)`
-/

namespace A151509.P7255174578613046425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151510 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A151509.P7255174578613046425

/-! ## A151509.P1629815979035990089

`A151510(A061579(n))%A002148(n)`
-/

namespace A151509.P1629815979035990089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151510 (A061579 n).toNat) (A002148 n)

end

end A151509.P1629815979035990089

/-!
# A151510: The triangle in A151338 read by rows upwards.

The programs for A151510, there is no canonical definition to state claims against.
-/

/-! ## A151510.P16524952808450669849

`A151509(∑[2*n]%comp[∑[n]])`
-/

namespace A151510.P16524952808450669849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A151510.P16524952808450669849

/-! ## A151510.P7856138885467099210

`A151509(∑[char[∑[n]]]²-(n+1))`
-/

namespace A151510.P7856138885467099210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A151510.P7856138885467099210

/-! ## A151510.P16874643501067269899

`and(-1, A151509(A061579(n)))`
-/

namespace A151510.P16874643501067269899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151509 (A061579 n).toNat)

end

end A151510.P16874643501067269899

/-! ## A151510.P12223534929115034318

`A264668(n)+A151509(A061579(n))`
-/

namespace A151510.P12223534929115034318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A151509 (A061579 n).toNat

end

end A151510.P12223534929115034318

/-! ## A151510.P8363222440471675560

`A151509(A061579(n))^A035214(n)`
-/

namespace A151510.P8363222440471675560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151509 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A151510.P8363222440471675560

/-! ## A151510.P16256875778353975644

`A151509(A061579(n))^A178334(n)`
-/

namespace A151510.P16256875778353975644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151509 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A151510.P16256875778353975644

/-! ## A151510.P17372804493176345113

`A151509(A061579(n))%A001513(n)`
-/

namespace A151510.P17372804493176345113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151509 (A061579 n).toNat) (A001513 n)

end

end A151510.P17372804493176345113

/-! ## A151510.P6211100587066029953

`A000005(gcd(n, n+1))*A151509(A061579(n))`
-/

namespace A151510.P6211100587066029953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A151509 (A061579 n).toNat

end

end A151510.P6211100587066029953

/-!
# A151511: The triangle in A151359 read by rows downwards.

The programs for A151511, there is no canonical definition to state claims against.
-/

/-! ## A151511.P5391771073748264977

`A151512(A061579(n)%A172292(n+1))`
-/

namespace A151511.P5391771073748264977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 (Int.tmod (A061579 n) (A172292 (n + 1))).toNat

end

end A151511.P5391771073748264977

/-! ## A151511.P8246959820608976892

`A151512(∑[2*n]%comp[∑[n]])`
-/

namespace A151511.P8246959820608976892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A151511.P8246959820608976892

/-! ## A151511.P12399724632397916262

`A151512(∑[char[∑[n]]]²-(n+1))`
-/

namespace A151511.P12399724632397916262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A151511.P12399724632397916262

/-! ## A151511.P16783804918982767402

`A151512(A061579(char[1]+n))-char[1]`
-/

namespace A151511.P16783804918982767402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 (A061579 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151511.P16783804918982767402

/-! ## A151511.P17690940668867564004

`A151512(A061579(n)-char[1])-char[1]`
-/

namespace A151511.P17690940668867564004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 (A061579 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151511.P17690940668867564004

/-! ## A151511.P12831000892983679438

`A264668(n)+A151512(A061579(n))`
-/

namespace A151511.P12831000892983679438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A151512 (A061579 n).toNat

end

end A151511.P12831000892983679438

/-! ## A151511.P2114860848088672157

`A151512(A061579(n))*A304042(n)`
-/

namespace A151511.P2114860848088672157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151512 (A061579 n).toNat * A304042 n

end

end A151511.P2114860848088672157

/-! ## A151511.P15721190003949526627

`A151512(A061579(n))^A035214(n)`
-/

namespace A151511.P15721190003949526627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151512 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A151511.P15721190003949526627

/-! ## A151511.P14339462024798570080

`A151512(A061579(n))^A178334(n)`
-/

namespace A151511.P14339462024798570080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151512 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A151511.P14339462024798570080

/-! ## A151511.P6209905860089576361

`A151512(A061579(n))%A001513(n)`
-/

namespace A151511.P6209905860089576361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151512 (A061579 n).toNat) (A001513 n)

end

end A151511.P6209905860089576361

/-!
# A151512: The triangle in A151359 read by rows upwards.

The programs for A151512, there is no canonical definition to state claims against.
-/

/-! ## A151512.P4642872171124032464

`A151511(∑[2*n]%comp[∑[n]])`
-/

namespace A151512.P4642872171124032464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A151512.P4642872171124032464

/-! ## A151512.P7352336622355778984

`A151511(∑[char[∑[n]]]²-(n+1))`
-/

namespace A151512.P7352336622355778984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A151512.P7352336622355778984

/-! ## A151512.P3345917941948527417

`lcm((-1)^n, A151511(A061579(n)))`
-/

namespace A151512.P3345917941948527417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A151511 (A061579 n).toNat)

end

end A151512.P3345917941948527417

/-! ## A151512.P5904916000510998521

`A264668(n)+A151511(A061579(n))`
-/

namespace A151512.P5904916000510998521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A151511 (A061579 n).toNat

end

end A151512.P5904916000510998521

/-! ## A151512.P8112553837490910572

`A151511(A061579(n))*A304042(n)`
-/

namespace A151512.P8112553837490910572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (A061579 n).toNat * A304042 n

end

end A151512.P8112553837490910572

/-! ## A151512.P16054473833764560711

`A151511(A061579(n))^A178334(n)`
-/

namespace A151512.P16054473833764560711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151511 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A151512.P16054473833764560711

/-! ## A151512.P8025028937505166715

`A151511(A061579(n))%A001513(n)`
-/

namespace A151512.P8025028937505166715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151511 (A061579 n).toNat) (A001513 n)

end

end A151512.P8025028937505166715

/-! ## A151512.P9992568329295868036

`gcd(A000038(n), A151511(A061579(n)))`
-/

namespace A151512.P9992568329295868036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A151511 (A061579 n).toNat)

end

end A151512.P9992568329295868036

/-! ## A151512.P5831708979071923596

`A151511(A061579(n))+A008683(8*(n+1))`
-/

namespace A151512.P5831708979071923596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (A061579 n).toNat + A008683 (8 * (n + 1))

end

end A151512.P5831708979071923596

/-!
# A151513: Weight distribution of [128,71,20] extended binary primitive BCH (or XBCH) code.

The programs for A151513, there is no canonical definition to state claims against.
-/

/-! ## A151513.P12738281566251113368

`A151838(2*n)+A151838(A084984(n+2))`
-/

namespace A151513.P12738281566251113368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 (2 * n) + A151838 (A084984 (n + 2)).toNat

end

end A151513.P12738281566251113368

/-!
# A151514: Number of 1-sided snake polyominoes with n cells.

The programs for A151514, there is no canonical definition to state claims against.
-/

/-! ## A151514.P2933965834426344964

`ceil(A151523(n+1)/2)`
-/

namespace A151514.P2933965834426344964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151523 (n + 1) : ℚ) / 2⌉

end

end A151514.P2933965834426344964

/-! ## A151514.P8452310441798569920

`A151523(n+1)/A292563(n)`
-/

namespace A151514.P8452310441798569920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151523 (n + 1) : ℚ) / (A292563 n : ℚ)

end

end A151514.P8452310441798569920

/-! ## A151514.P17882537088452797936

`A151523(n+1)/A000122(n²)`
-/

namespace A151514.P17882537088452797936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151523 (n + 1) : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A151514.P17882537088452797936

/-! ## A151514.P6637455593501902867

`A151523(n+1)/A036452(n+1)`
-/

namespace A151514.P6637455593501902867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151523 (n + 1) : ℚ) / (A036452 (n + 1) : ℚ)

end

end A151514.P6637455593501902867

/-!
# A151515: Number of 1-sided strip polyhexes with n cells.

The programs for A151515, there is no canonical definition to state claims against.
-/

/-! ## A151515.P9850672306639500563

`2*A003104(n+1)-A323931(n+1)-1`
-/

namespace A151515.P9850672306639500563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003104 (n + 1) - A323931 (n + 1) - 1

end

end A151515.P9850672306639500563

/-! ## A151515.P12669086869048514354

`A004273(A003104(n+1))-A323931(n+1)`
-/

namespace A151515.P12669086869048514354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A003104 (n + 1)).toNat - A323931 (n + 1)

end

end A151515.P12669086869048514354

/-! ## A151515.P6956844655645773449

`or(A046660(A060557(n)), A319560(n))`
-/

namespace A151515.P6956844655645773449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A060557 n).toNat) (A319560 n)

end

end A151515.P6956844655645773449

/-! ## A151515.P10703465616588727217

`or(A046660(A150445(n)), A319560(n))`
-/

namespace A151515.P10703465616588727217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A150445 n).toNat) (A319560 n)

end

end A151515.P10703465616588727217

/-!
# A151517: Number of 1-sided strip polyiamonds with n cells.

The programs for A151517, there is no canonical definition to state claims against.
-/

/-! ## A151517.P13642692260550401260

`A184419(A309807(n))`
-/

namespace A151517.P13642692260550401260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (A309807 n).toNat

end

end A151517.P13642692260550401260

/-! ## A151517.P5391147359402223382

`A184419(A332954(∑[n]))`
-/

namespace A151517.P5391147359402223382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (A332954 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A151517.P5391147359402223382

/-! ## A151517.P6732815934769909559

`A093697(A037952(n)+1)`
-/

namespace A151517.P6732815934769909559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A037952 n + 1).toNat

end

end A151517.P6732815934769909559

/-! ## A151517.P13043665135502213326

`A351846(A148530(n+1))`
-/

namespace A151517.P13043665135502213326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A148530 (n + 1)).toNat

end

end A151517.P13043665135502213326

/-! ## A151517.P7319356146864574465

`A351290(A239553(n))+A002033(n)`
-/

namespace A151517.P7319356146864574465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A239553 n).toNat + A002033 n

end

end A151517.P7319356146864574465

/-!
# A151518: Number of 2-sided strip polyiamonds with n cells.

The programs for A151518, there is no canonical definition to state claims against.
-/

/-! ## A151518.P16736855105333952600

`A135304(A115323(n)+A092424(n))`
-/

namespace A151518.P16736855105333952600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A115323 n + A092424 n).toNat

end

end A151518.P16736855105333952600

/-! ## A151518.P5313325152180680337

`A135304(A122921(n)+A092424(n))`
-/

namespace A151518.P5313325152180680337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A122921 n + A092424 n).toNat

end

end A151518.P5313325152180680337

/-! ## A151518.P5660162466997719615

`A177486(n)-A102683(A077241(n))`
-/

namespace A151518.P5660162466997719615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177486 n - A102683 (A077241 n).toNat

end

end A151518.P5660162466997719615

/-! ## A151518.P3669830324934486359

`A079955(2*n)-A025469(A027449(n+2))`
-/

namespace A151518.P3669830324934486359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (2 * n) - A025469 (A027449 (n + 2)).toNat

end

end A151518.P3669830324934486359

/-! ## A151518.P11687994476239179561

`A229300(A005627(n))`
-/

namespace A151518.P11687994476239179561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A005627 n).toNat

end

end A151518.P11687994476239179561

/-!
# A151519: Number of 1-sided polytans (polyaboloes) with n cells.

The programs for A151519, there is no canonical definition to state claims against.
-/

/-! ## A151519.P15815465184760096440

`∑{digits}[∑[A000032(A133467(n))], #]`
-/

namespace A151519.P15815465184760096440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A133467 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A151519.P15815465184760096440

/-! ## A151519.P18327894897387164976

`record[gcd(A260749(n+1), A307889(n))]`
-/

namespace A151519.P18327894897387164976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260749 (n + 1)) (A307889 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151519.P18327894897387164976

/-!
# A151520: Number of 1-sided strip polytans (polyaboloes) with n cells.

The programs for A151520, there is no canonical definition to state claims against.
-/

/-! ## A151520.P15989851985290779324

`A258743(A036673(n+1))`
-/

namespace A151520.P15989851985290779324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258743 (A036673 (n + 1)).toNat

end

end A151520.P15989851985290779324

/-! ## A151520.P1094244068309745476

`∑[A272351(A176479(n+1))]`
-/

namespace A151520.P1094244068309745476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (A176479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151520.P1094244068309745476

/-!
# A151522: Number of 1-sided polyrhombs with n cells.

The programs for A151522, there is no canonical definition to state claims against.
-/

/-! ## A151522.P5671451265038118861

`2*A056783(n+1)-A346800(n+1)`
-/

namespace A151522.P5671451265038118861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056783 (n + 1) - A346800 (n + 1)

end

end A151522.P5671451265038118861

/-! ## A151522.P2277897444856550751

`A056780(n+1)+A056783(n+1)-A030227(n+1)`
-/

namespace A151522.P2277897444856550751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056780 (n + 1) + (A056783 (n + 1) - A030227 (n + 1))

end

end A151522.P2277897444856550751

/-! ## A151522.P14548387615973715773

`A004277(A056783(n+1))-A346800(n+1)`
-/

namespace A151522.P14548387615973715773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056783 (n + 1)).toNat - A346800 (n + 1)

end

end A151522.P14548387615973715773

/-! ## A151522.P6293690114675693022

`A004277(A056783(n+1))+A234007(n+1)-A234009(n+1)`
-/

namespace A151522.P6293690114675693022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056783 (n + 1)).toNat + (A234007 (n + 1) - A234009 (n + 1))

end

end A151522.P6293690114675693022

/-! ## A151522.P12182687775273398429

`A004277(A056783(n+1))+A351191(n+1)-A182645(n+1)`
-/

namespace A151522.P12182687775273398429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056783 (n + 1)).toNat + (A351191 (n + 1) - A182645 (n + 1))

end

end A151522.P12182687775273398429

/-!
# A151523: Number of 1-sided strip polyrhombs with n cells.

The programs for A151523, there is no canonical definition to state claims against.
-/

/-! ## A151523.P214153265271459168

`A108248(n)*A151514(n+1)`
-/

namespace A151523.P214153265271459168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108248 n * A151514 (n + 1)

end

end A151523.P214153265271459168

/-! ## A151523.P15028078931567685811

`A151514(n+1)*A292563(n)`
-/

namespace A151523.P15028078931567685811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151514 (n + 1) * A292563 n

end

end A151523.P15028078931567685811

/-! ## A151523.P10528889947999603541

`A036452(n+1)*A151514(n+1)`
-/

namespace A151523.P10528889947999603541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A151514 (n + 1)

end

end A151523.P10528889947999603541

/-!
# A151524: Number of 2-sided strip polyrhombs with n cells.

The programs for A151524, there is no canonical definition to state claims against.
-/

/-! ## A151524.P12459025874826096748

`A151527(n+1)+A182646(n+1)-A151526(n+1)`
-/

namespace A151524.P12459025874826096748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151527 (n + 1) + (A182646 (n + 1) - A151526 (n + 1))

end

end A151524.P12459025874826096748

/-! ## A151524.P14005523211971261809

`Δ[record[A277796(A025453(n))]]`
-/

namespace A151524.P14005523211971261809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277796 (A025453 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151524.P14005523211971261809

/-! ## A151524.P2122861161862892708

`Δ[record[A277796(A222228(n))]]`
-/

namespace A151524.P2122861161862892708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277796 (A222228 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151524.P2122861161862892708

/-! ## A151524.P2759324714496917112

`Δ[record[A277796(A267181(n))]]`
-/

namespace A151524.P2759324714496917112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277796 (A267181 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151524.P2759324714496917112

/-!
# A151525: Number of poly-IH64-tiles (holes allowed) with n cells.

The programs for A151525, there is no canonical definition to state claims against.
-/

/-! ## A151525.P2171953128173603896

`A351191(n+1)+A030227(n+1)`
-/

namespace A151525.P2171953128173603896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351191 (n + 1) + A030227 (n + 1)

end

end A151525.P2171953128173603896

/-! ## A151525.P15459851069778488260

`A351191(A152271(n))+A234006(n+1)`
-/

namespace A151525.P15459851069778488260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351191 (A152271 n).toNat + A234006 (n + 1)

end

end A151525.P15459851069778488260

/-! ## A151525.P12952042552141619581

`A056780(n+1)+A182645(n+1)-A056783(n+1)`
-/

namespace A151525.P12952042552141619581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056780 (n + 1) + (A182645 (n + 1) - A056783 (n + 1))

end

end A151525.P12952042552141619581

/-! ## A151525.P14922461935431142570

`A030227(n+1)+A182645(n+1)-A346800(n+1)`
-/

namespace A151525.P14922461935431142570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A182645 (n + 1) - A346800 (n + 1))

end

end A151525.P14922461935431142570

/-! ## A151525.P6217414534424979108

`2*A000105(n+1)-A000988(n+1)+A182645(n+1)-A346800(n+1)`
-/

namespace A151525.P6217414534424979108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000105 (n + 1) - A000988 (n + 1) + (A182645 (n + 1) - A346800 (n + 1))

end

end A151525.P6217414534424979108

/-! ## A151525.P16794651087981718153

`A000988(n+1)-2*A030228(n+1)+A182645(n+1)-A346800(n+1)`
-/

namespace A151525.P16794651087981718153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (n + 1) - 2 * A030228 (n + 1) + (A182645 (n + 1) - A346800 (n + 1))

end

end A151525.P16794651087981718153

/-!
# A151526: Number of strip poly-IH64-tiles (holes allowed) with n cells.

The programs for A151526, there is no canonical definition to state claims against.
-/

/-! ## A151526.P8292092921285044156

`A151527(n+1)+A182646(n+1)-A151524(n+1)`
-/

namespace A151526.P8292092921285044156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151527 (n + 1) + (A182646 (n + 1) - A151524 (n + 1))

end

end A151526.P8292092921285044156

/-! ## A151526.P3645712130737706909

`A097624(A395489(n))`
-/

namespace A151526.P3645712130737706909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097624 (A395489 n).toNat

end

end A151526.P3645712130737706909

/-! ## A151526.P1097306816075180273

`A114147(A054152(n+1))`
-/

namespace A151526.P1097306816075180273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114147 (A054152 (n + 1)).toNat

end

end A151526.P1097306816075180273

/-! ## A151526.P2220104058937839683

`A087836(A309538(n)+A150580(n))`
-/

namespace A151526.P2220104058937839683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A309538 n + A150580 n).toNat

end

end A151526.P2220104058937839683

/-!
# A151527: Number of 2-sided strip polyrects with n cells.

The programs for A151527, there is no canonical definition to state claims against.
-/

/-! ## A151527.P6174636289501216206

`A151524(n+1)+A151526(n+1)-A182646(n+1)`
-/

namespace A151527.P6174636289501216206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151524 (n + 1) + (A151526 (n + 1) - A182646 (n + 1))

end

end A151527.P6174636289501216206

/-! ## A151527.P9848402116681077019

`A001462(A204678(n+1))-A003056(A337683(n+1))`
-/

namespace A151527.P9848402116681077019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A204678 (n + 1)).toNat - A003056 (A337683 (n + 1)).toNat

end

end A151527.P9848402116681077019

/-! ## A151527.P16510263963194486074

`A003056(floor((sqrt(n)+1)^n)+1)`
-/

namespace A151527.P16510263963194486074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊(Real.sqrt (n : ℝ) + 1) ^ n⌋ + 1).toNat

end

end A151527.P16510263963194486074

/-! ## A151527.P13328800828547618767

`A249728(A192502(n))`
-/

namespace A151527.P13328800828547618767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A192502 n).toNat

end

end A151527.P13328800828547618767

/-!
# A151528: Number of 1-sided polykites with n cells.

The programs for A151528, there is no canonical definition to state claims against.
-/

/-! ## A151528.P3607942388514349051

`A341939(A000055(n+3))-n`
-/

namespace A151528.P3607942388514349051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341939 (A000055 (n + 3)).toNat - (n : ℤ)

end

end A151528.P3607942388514349051

/-! ## A151528.P2472081896239442329

`A324058(A054726(n))+A192877(n)`
-/

namespace A151528.P2472081896239442329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324058 (A054726 n).toNat + A192877 n

end

end A151528.P2472081896239442329

/-!
# A151529: Number of 1-sided strip polykites with n cells.

The programs for A151529, there is no canonical definition to state claims against.
-/

/-! ## A151529.P16735667472891186994

`∑[∑[A235963(A114710(n))]]`
-/

namespace A151529.P16735667472891186994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A114710 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151529.P16735667472891186994

/-! ## A151529.P17884439247423015188

`A003056(A001075(n))+A000129(n)`
-/

namespace A151529.P17884439247423015188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001075 n).toNat + A000129 n

end

end A151529.P17884439247423015188

/-! ## A151529.P17430791501776070383

`A018008(n)-A007949(A033505(n))`
-/

namespace A151529.P17430791501776070383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - A007949 (A033505 n).toNat

end

end A151529.P17430791501776070383

/-!
# A151530: Number of 2-sided strip polykites with n cells.

The programs for A151530, there is no canonical definition to state claims against.
-/

/-! ## A151530.P14948649165605942086

`A128428(A002443(n))+A100071(n)`
-/

namespace A151530.P14948649165605942086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A002443 n).toNat + A100071 n

end

end A151530.P14948649165605942086

/-! ## A151530.P7788218087997753881

`A138904(A000975(n))+A100071(n)`
-/

namespace A151530.P7788218087997753881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A000975 n).toNat + A100071 n

end

end A151530.P7788218087997753881

/-! ## A151530.P7010636248946205193

`A100071(n)+A003557(A262168(n))`
-/

namespace A151530.P7010636248946205193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + A003557 (A262168 n).toNat

end

end A151530.P7010636248946205193

/-! ## A151530.P2004276160123270911

`A100071(n)+A066099(A247006(n))`
-/

namespace A151530.P2004276160123270911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + A066099 (A247006 n).toNat

end

end A151530.P2004276160123270911

/-!
# A151531: Number of 1-sided polypons with n cells.

The programs for A151531, there is no canonical definition to state claims against.
-/

/-! ## A151531.P5297410878490610270

`A383493(A381225(n))`
-/

namespace A151531.P5297410878490610270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383493 (A381225 n).toNat

end

end A151531.P5297410878490610270

/-! ## A151531.P16350639996403026238

`A383493(A001104(n+1))`
-/

namespace A151531.P16350639996403026238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383493 (A001104 (n + 1)).toNat

end

end A151531.P16350639996403026238

/-! ## A151531.P17466095343304032808

`A383493(A002998(n+1))`
-/

namespace A151531.P17466095343304032808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383493 (A002998 (n + 1)).toNat

end

end A151531.P17466095343304032808

/-! ## A151531.P17523407475249232387

`A383493(A023106(n+1))`
-/

namespace A151531.P17523407475249232387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383493 (A023106 (n + 1)).toNat

end

end A151531.P17523407475249232387

/-! ## A151531.P459976355946187586

`A383493(A024662(n+1))`
-/

namespace A151531.P459976355946187586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383493 (A024662 (n + 1)).toNat

end

end A151531.P459976355946187586

/-!
# A151532: Number of 1-sided strip polypons with n cells.

The programs for A151532, there is no canonical definition to state claims against.
-/

/-! ## A151532.P6077485369282430553

`A089868(A056508(n+1))+1`
-/

namespace A151532.P6077485369282430553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A056508 (n + 1)).toNat + 1

end

end A151532.P6077485369282430553

/-! ## A151532.P16223882232735739332

`A131996(A164509(n+1))`
-/

namespace A151532.P16223882232735739332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A164509 (n + 1)).toNat

end

end A151532.P16223882232735739332

/-! ## A151532.P3500446500701458484

`A131996(A062108(n)+A060647(n))`
-/

namespace A151532.P3500446500701458484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A062108 n + A060647 n).toNat

end

end A151532.P3500446500701458484

/-! ## A151532.P4491900116771489979

`A131996(A060647(n)+A000006(n+1))`
-/

namespace A151532.P4491900116771489979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A060647 n + A000006 (n + 1)).toNat

end

end A151532.P4491900116771489979

/-! ## A151532.P867331650513995664

`A131996(A060647(n)+A000010(n+1))`
-/

namespace A151532.P867331650513995664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A060647 n + A000010 (n + 1)).toNat

end

end A151532.P867331650513995664

/-!
# A151533: Number of 2-sided strip polypons with n cells.

The programs for A151533, there is no canonical definition to state claims against.
-/

/-! ## A151533.P3064378791654449708

`A281873(A182712(n+1)+1)`
-/

namespace A151533.P3064378791654449708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A182712 (n + 1) + 1).toNat

end

end A151533.P3064378791654449708

/-! ## A151533.P13554474720351726231

`(A182712(n+1)+1)%A065847(n+4)`
-/

namespace A151533.P13554474720351726231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182712 (n + 1) + 1) (A065847 (n + 4))

end

end A151533.P13554474720351726231

/-! ## A151533.P6367588789507192692

`A182712(n+1)%A106640(n²+n)+1`
-/

namespace A151533.P6367588789507192692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182712 (n + 1)) (A106640 (n ^ 2 + n)) + 1

end

end A151533.P6367588789507192692

/-! ## A151533.P274763041511817497

`A344608(n)+A276949(A000079(n))`
-/

namespace A151533.P274763041511817497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344608 n + A276949 (A000079 n).toNat

end

end A151533.P274763041511817497

/-! ## A151533.P12834698368096792077

`A182712(n+1)+A000001(A000230(n))`
-/

namespace A151533.P12834698368096792077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + A000001 (A000230 n).toNat

end

end A151533.P12834698368096792077

/-!
# A151534: Number of 1-sided polycairos with n cells.

The programs for A151534, there is no canonical definition to state claims against.
-/

/-! ## A151534.P8050360336579795700

`A123229(A134091(n))+A002450(n)`
-/

namespace A151534.P8050360336579795700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (A134091 n).toNat + A002450 n

end

end A151534.P8050360336579795700

/-! ## A151534.P6955738065939248261

`A122651(A006630(n)+A000005(n+1))`
-/

namespace A151534.P6955738065939248261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A006630 n + A000005 (n + 1)).toNat

end

end A151534.P6955738065939248261

/-!
# A151535: Number of 1-sided strip polycairos with n cells.

The programs for A151535, there is no canonical definition to state claims against.
-/

/-! ## A151535.P7997353814963653778

`A025428(A120354(n))+A018726(n+1)`
-/

namespace A151535.P7997353814963653778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A120354 n).toNat + A018726 (n + 1)

end

end A151535.P7997353814963653778

/-! ## A151535.P2854906999859636241

`A116903(n)-A241462(A078174(n+1))`
-/

namespace A151535.P2854906999859636241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116903 n - A241462 (A078174 (n + 1)).toNat

end

end A151535.P2854906999859636241

/-!
# A151536: Number of 2-sided strip polycairos with n cells.

The programs for A151536, there is no canonical definition to state claims against.
-/

/-! ## A151536.P4177798653378313438

`A008616(A017985(2*(n+2))-A364909(n))`
-/

namespace A151536.P4177798653378313438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A017985 (2 * (n + 2)) - A364909 n).toNat

end

end A151536.P4177798653378313438

/-! ## A151536.P2028082640007956987

`∑[A325398(A304969(n))]`
-/

namespace A151536.P2028082640007956987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (A304969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151536.P2028082640007956987

/-! ## A151536.P17766145930761360883

`A109167(A044049(n+1))`
-/

namespace A151536.P17766145930761360883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109167 (A044049 (n + 1)).toNat

end

end A151536.P17766145930761360883

/-!
# A151537: Number of 1-sided polyedges with n edges.

The programs for A151537, there is no canonical definition to state claims against.
-/

/-! ## A151537.P11282553027996087362

`A123764(n+1)+A001899(A041059(n))`
-/

namespace A151537.P11282553027996087362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123764 (n + 1) + A001899 (A041059 n).toNat

end

end A151537.P11282553027996087362

/-! ## A151537.P16936749937154983882

`A110654(A149440(n)+A086444(n))`
-/

namespace A151537.P16936749937154983882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149440 n + A086444 n).toNat

end

end A151537.P16936749937154983882

/-! ## A151537.P7696429127425941509

`A285589(A215881(n))+A123764(n+1)`
-/

namespace A151537.P7696429127425941509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285589 (A215881 n).toNat + A123764 (n + 1)

end

end A151537.P7696429127425941509

/-!
# A151538: Number of 1-sided strip polyedges with n cells.

The programs for A151538, there is no canonical definition to state claims against.
-/

/-! ## A151538.P2296112108946808627

`(A001411(n+1)+A323189(n+1))/8`
-/

namespace A151538.P2296112108946808627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (n + 1) + A323189 (n + 1) : ℚ) / 8

end

end A151538.P2296112108946808627

/-! ## A151538.P7196438656604385866

`A110656(A001411(n+1)+1)+A074331(A211513(n))`
-/

namespace A151538.P7196438656604385866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A001411 (n + 1) + 1).toNat + A074331 (A211513 n).toNat

end

end A151538.P7196438656604385866

/-!
# A151539: Number of 1-sided triangular polyedges with n cells.

The programs for A151539, there is no canonical definition to state claims against.
-/

/-! ## A151539.P13574414306132508878

`A062602(A213336(n+1)+1)+1`
-/

namespace A151539.P13574414306132508878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A213336 (n + 1) + 1).toNat + 1

end

end A151539.P13574414306132508878

/-!
# A151540: Number of 1-sided triangular strip polyedges with n cells.

The programs for A151540, there is no canonical definition to state claims against.
-/

/-! ## A151540.P4358227517749943941

`A186971(A001936(n)*A136429(n))`
-/

namespace A151540.P4358227517749943941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (A001936 n * A136429 n).toNat

end

end A151540.P4358227517749943941

/-! ## A151540.P13011620753809256919

`or(A008615(A033876(n)), A032120(n))`
-/

namespace A151540.P13011620753809256919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008615 (A033876 n).toNat) (A032120 n)

end

end A151540.P13011620753809256919

/-!
# A151541: Number of 2-sided triangular strip polyedges with n cells.

The programs for A151541, there is no canonical definition to state claims against.
-/

/-! ## A151541.P15101915157972680247

`A194640(A149397(n+1))`
-/

namespace A151541.P15101915157972680247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A149397 (n + 1)).toNat

end

end A151541.P15101915157972680247

/-! ## A151541.P4506892571893418974

`A150644(n)+A010879(A090021(n))`
-/

namespace A151541.P4506892571893418974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150644 n + A010879 (A090021 n).toNat

end

end A151541.P4506892571893418974

/-!
# A151542: Generalized pentagonal numbers: a(n) = 12*n + 3*n*(n-1)/2.

The programs for A151542, the canonical program `A151542.P7736533081600966635` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151542 has offset 0).

The definition of A151542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+3*n*(n-1)/2` (program `A151542.P1771073501335098452`, by `A151542.P1771073501335098452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A151542.P4170601522464289380

`3*n*(n+7)/2`
-/

namespace A151542.P4170601522464289380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n * (n + 7) : ℚ) / 2

end

end A151542.P4170601522464289380

namespace A151542

/-- `3*n*(n+7)/2` -/
def P4170601522464289380.Spec : Prop :=
  ∀ n, P4170601522464289380.a n = (A151542 n : ℚ)

theorem P4170601522464289380.correct : P4170601522464289380.Spec := by
  intro n
  induction n with
  | zero => simp [A151542, A151542.P4170601522464289380.a, A151542.P7736533081600966635.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A151542, Nat.add_sub_cancel, A151542.P4170601522464289380.a, A151542.P7736533081600966635.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A151542

/-! ## A151542.P7736533081600966635

`a(n-1)+3*n+9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151542

/-- `a(n-1)+3*n+9` -/
def P7736533081600966635.Spec : Prop :=
  ∀ n, (P7736533081600966635.a n : ℤ) = A151542 n

theorem P7736533081600966635.correct : P7736533081600966635.Spec := by
  intro n
  simp only [A151542]

end A151542

/-! ## A151542.P1771073501335098452

`12*n+3*n*(n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151542.P1771073501335098452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * n : ℚ) + ((3 * n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A151542.P1771073501335098452

namespace A151542

/-- `12*n+3*n*(n-1)/2` -/
def P1771073501335098452.Spec : Prop :=
  ∀ n, P1771073501335098452.a n = (A151542 n : ℚ)

theorem P1771073501335098452.correct : P1771073501335098452.Spec := by
  intro n
  induction n with
  | zero => simp [A151542, A151542.P1771073501335098452.a, A151542.P7736533081600966635.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A151542, Nat.add_sub_cancel, A151542.P1771073501335098452.a, A151542.P7736533081600966635.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A151542

/-! ## A151542.P4638419191893401132

`∑[a(n-1)+3]` with `a(0)=0, a(1)=12`
-/

namespace A151542.P4638419191893401132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151542.P4638419191893401132

namespace A151542

/-- `∑[a(n-1)+3]` -/
def P4638419191893401132.Spec : Prop :=
  ∀ n, (P4638419191893401132.a n : ℤ) = A151542 n

end A151542

/-! ## A151542.P13226869724887830696

`∑[3*(3%(n+3)+n)]`
-/

namespace A151542.P13226869724887830696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 % (n + 3) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151542.P13226869724887830696

namespace A151542

/-- `∑[3*(3%(n+3)+n)]` -/
def P13226869724887830696.Spec : Prop :=
  ∀ n, (P13226869724887830696.a n : ℤ) = A151542 n

end A151542

/-! ## A151542.P11506136911369652098

`3*A055999(n)`
-/

namespace A151542.P11506136911369652098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055999 n

end

end A151542.P11506136911369652098

namespace A151542

/-- `3*A055999(n)` -/
def P11506136911369652098.Spec : Prop :=
  ∀ n, P11506136911369652098.a n = A151542 n

end A151542

/-! ## A151542.P3722779863218113177

`3*(A052905(n)-1)`
-/

namespace A151542.P3722779863218113177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A052905 n - 1)

end

end A151542.P3722779863218113177

namespace A151542

/-- `3*(A052905(n)-1)` -/
def P3722779863218113177.Spec : Prop :=
  ∀ n, P3722779863218113177.a n = A151542 n

end A151542

/-! ## A151542.P14450690498398160313

`3/2*A028563(n)`
-/

namespace A151542.P14450690498398160313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A028563 n : ℚ)

end

end A151542.P14450690498398160313

namespace A151542

/-- `3/2*A028563(n)` -/
def P14450690498398160313.Spec : Prop :=
  ∀ n, P14450690498398160313.a n = (A151542 n : ℚ)

theorem P14450690498398160313.correct : P14450690498398160313.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A151542, Nat.add_sub_cancel, A151542.P14450690498398160313.a, A151542.P7736533081600966635.a, A028563, A028563.P15186121141906373506.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A151542, Nat.add_sub_cancel, A151542.P14450690498398160313.a, A151542.P7736533081600966635.a, A028563, A028563.P15186121141906373506.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A151542

/-! ## A151542.P6850439019135368970

`3*(A055998(n)+n)`
-/

namespace A151542.P6850439019135368970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A055998 n + (n : ℤ))

end

end A151542.P6850439019135368970

namespace A151542

/-- `3*(A055998(n)+n)` -/
def P6850439019135368970.Spec : Prop :=
  ∀ n, P6850439019135368970.a n = A151542 n

end A151542

/-! ## A151542.P9109238403825623250

`3*(A056000(n)-n)`
-/

namespace A151542.P9109238403825623250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A056000 n - (n : ℤ))

end

end A151542.P9109238403825623250

namespace A151542

/-- `3*(A056000(n)-n)` -/
def P9109238403825623250.Spec : Prop :=
  ∀ n, P9109238403825623250.a n = A151542 n

end A151542

/-! ## A151542.P1069533324383080499

`A129428(n)%A033575(n)`
-/

namespace A151542.P1069533324383080499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129428 n) (A033575 n)

end

end A151542.P1069533324383080499

namespace A151542

/-- `A129428(n)%A033575(n)` -/
def P1069533324383080499.Spec : Prop :=
  ∀ n, P1069533324383080499.a n = A151542 n

end A151542

/-! ## A151542.P11336256069834331477

`A158549(n)%A081591(n)`
-/

namespace A151542.P11336256069834331477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158549 n) (A081591 n)

end

end A151542.P11336256069834331477

namespace A151542

/-- `A158549(n)%A081591(n)` -/
def P11336256069834331477.Spec : Prop :=
  ∀ n, P11336256069834331477.a n = A151542 n

end A151542

/-! ## A151542.P12104753167234445261

`A098924(n+1)%A033574(n)`
-/

namespace A151542.P12104753167234445261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098924 (n + 1)) (A033574 n)

end

end A151542.P12104753167234445261

namespace A151542

/-- `A098924(n+1)%A033574(n)` -/
def P12104753167234445261.Spec : Prop :=
  ∀ n, P12104753167234445261.a n = A151542 n

end A151542

/-! ## A151542.P5578862966939036856

`A166873(n+1)%A081271(n)`
-/

namespace A151542.P5578862966939036856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166873 (n + 1)) (A081271 n)

end

end A151542.P5578862966939036856

namespace A151542

/-- `A166873(n+1)%A081271(n)` -/
def P5578862966939036856.Spec : Prop :=
  ∀ n, P5578862966939036856.a n = A151542 n

end A151542

/-! ## A151542.P8760876807386720069

`A389799(n+1)%A093485(n)`
-/

namespace A151542.P8760876807386720069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389799 (n + 1)) (A093485 n)

end

end A151542.P8760876807386720069

namespace A151542

/-- `A389799(n+1)%A093485(n)` -/
def P8760876807386720069.Spec : Prop :=
  ∀ n, P8760876807386720069.a n = A151542 n

end A151542

/-! ## A151542.P16552525501565158656

`A389797(n+1)%A244805(n+1)`
-/

namespace A151542.P16552525501565158656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389797 (n + 1)) (A244805 (n + 1))

end

end A151542.P16552525501565158656

namespace A151542

/-- `A389797(n+1)%A244805(n+1)` -/
def P16552525501565158656.Spec : Prop :=
  ∀ n, P16552525501565158656.a n = A151542 n

end A151542

/-! ## A151542.P1835269359884760810

`3*(A046691(n+1)-2)`
-/

namespace A151542.P1835269359884760810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A046691 (n + 1) - 2)

end

end A151542.P1835269359884760810

namespace A151542

/-- `3*(A046691(n+1)-2)` -/
def P1835269359884760810.Spec : Prop :=
  ∀ n, P1835269359884760810.a n = A151542 n

end A151542

/-! ## A151542.P2137103845052685166

`3*(A027379(n+1)-3)`
-/

namespace A151542.P2137103845052685166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A027379 (n + 1) - 3)

end

end A151542.P2137103845052685166

namespace A151542

/-- `3*(A027379(n+1)-3)` -/
def P2137103845052685166.Spec : Prop :=
  ∀ n, P2137103845052685166.a n = A151542 n

end A151542

/-! ## A151542.P9321862162199838022

`3*A074171(n+3)`
-/

namespace A151542.P9321862162199838022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074171 (n + 3)

end

end A151542.P9321862162199838022

namespace A151542

/-- `3*A074171(n+3)` -/
def P9321862162199838022.Spec : Prop :=
  ∀ n, P9321862162199838022.a n = A151542 n

end A151542

/-! ## A151542.P4971344301298450105

`record[3*((1-n)²-∑[n+1])]`
-/

namespace A151542.P4971344301298450105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((1 - (n : ℤ)) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151542.P4971344301298450105

namespace A151542

/-- `record[3*((1-n)²-∑[n+1])]` -/
def P4971344301298450105.Spec : Prop :=
  ∀ n, P4971344301298450105.a n = A151542 n

end A151542

/-!
# A151543: Smallest precursor of n-th cycle in the "Recurring Digital Invariant Variant" problem.

The programs for A151543, there is no canonical definition to state claims against.
-/

/-! ## A151543.P14770937245743367774

`∑[∑[A194441(A102388(n+1))]]`
-/

namespace A151543.P14770937245743367774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194441 (A102388 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151543.P14770937245743367774

/-! ## A151543.P8847332594748618533

`∑[A102388(C(n+1, ∑{digits}[n, #]))]+n`
-/

namespace A151543.P8847332594748618533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (Nat.choose (n + 1) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A151543.P8847332594748618533

/-! ## A151543.P2248750256823831685

`∑[A046074(A049164(n))]`
-/

namespace A151543.P2248750256823831685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A049164 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151543.P2248750256823831685

/-! ## A151543.P6632842460723687582

`∑[A180502(A153984(n))]`
-/

namespace A151543.P6632842460723687582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180502 (A153984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151543.P6632842460723687582

/-! ## A151543.P926775298821927682

`∑[A089860(A250285(n))]`
-/

namespace A151543.P926775298821927682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A250285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151543.P926775298821927682

/-!
# A151544: Numbers appearing in the cycles of the "Recurring Digital Invariant Variant" problem described in A151543.

The programs for A151544, there is no canonical definition to state claims against.
-/

/-! ## A151544.P13619384331905757697

`∑[A320056(A320081(n+1)-n)]`
-/

namespace A151544.P13619384331905757697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (A320081 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151544.P13619384331905757697

/-! ## A151544.P3133139844141960978

`A343380(A276531(n))+A001104(n+1)`
-/

namespace A151544.P3133139844141960978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A276531 n).toNat + A001104 (n + 1)

end

end A151544.P3133139844141960978

/-! ## A151544.P4522872620986213503

`A383333(A025715(n))`
-/

namespace A151544.P4522872620986213503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383333 (A025715 n).toNat

end

end A151544.P4522872620986213503

/-! ## A151544.P8113459813420864636

`A383333(A046489(n))`
-/

namespace A151544.P8113459813420864636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383333 (A046489 n).toNat

end

end A151544.P8113459813420864636

/-! ## A151544.P54275617852133502

`A088473(A062388(n+1))`
-/

namespace A151544.P54275617852133502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088473 (A062388 (n + 1)).toNat

end

end A151544.P54275617852133502

/-!
# A151545: Records in A160256.

The programs for A151545, there is no canonical definition to state claims against.
-/

/-! ## A151545.P3954995437253316103

`A160256(A151547(n+1))`
-/

namespace A151545.P3954995437253316103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160256 (A151547 (n + 1)).toNat

end

end A151545.P3954995437253316103

/-! ## A151545.P5001765456118546200

`record[A160256(n+1)]`
-/

namespace A151545.P5001765456118546200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151545.P5001765456118546200

/-! ## A151545.P2923323554024571001

`record[gcd(A338927(n+1), A338973(n+1))]`
-/

namespace A151545.P2923323554024571001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338927 (n + 1)) (A338973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151545.P2923323554024571001

/-! ## A151545.P13168526540016121157

`record[A000005(A173933(n+1))]`
-/

namespace A151545.P13168526540016121157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A173933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151545.P13168526540016121157

/-!
# A151546: When computing A160256(n), it must be a multiple of a(n).

The programs for A151546, there is no canonical definition to state claims against.
-/

/-! ## A151546.P14607266538383192116

`A160256(n+1)/gcd(A160256(n+1), A160256(n+2))`
-/

namespace A151546.P14607266538383192116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160256 (n + 1) : ℚ) / (Int.gcd (A160256 (n + 1)) (A160256 (n + 2)) : ℚ)

end

end A151546.P14607266538383192116

/-!
# A151547: Indices of records in A160256.

The programs for A151547, there is no canonical definition to state claims against.
-/

/-! ## A151547.P1144334197687808811

`lt[A249264(n+1)+1, ∑[gcd(2, n+1)^3+2]-2]`
-/

namespace A151547.P1144334197687808811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249264 (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A151547.P1144334197687808811

/-! ## A151547.P10197909498960353677

`∑[A102096(Δ[A173027(n+1)])]`
-/

namespace A151547.P10197909498960353677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151547.P10197909498960353677

/-! ## A151547.P15983209680906695871

`∑[A225330(Δ[A173027(n+1)])]`
-/

namespace A151547.P15983209680906695871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225330 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151547.P15983209680906695871

/-! ## A151547.P7705655184969997658

`∑[A249717(Δ[A173027(n+1)])]`
-/

namespace A151547.P7705655184969997658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151547.P7705655184969997658

/-! ## A151547.P12025832034132616715

`∑[A020639(∏[A115571(3*n+2)])]`
-/

namespace A151547.P12025832034132616715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115571 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151547.P12025832034132616715

/-!
# A151548: When A160552 is regarded as a triangle with rows of lengths 1, 1, 2, 4, 8, 16, ..., this is what the rows converge to.

The programs for A151548, there is no canonical definition to state claims against.
-/

/-! ## A151548.P16396327859050979373

`A147646(n)-a(n-1)` with `a(0)=1`
-/

namespace A151548.P16396327859050979373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147646 n - a (n - 1)

end

end A151548.P16396327859050979373

/-! ## A151548.P7341432628797240255

`A151860(n)+A151555(n)`
-/

namespace A151548.P7341432628797240255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151860 n + A151555 n

end

end A151548.P7341432628797240255

/-! ## A151548.P15834299124711631648

`A151862(n)-A151860(n)`
-/

namespace A151548.P15834299124711631648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n - A151860 n

end

end A151548.P15834299124711631648

/-! ## A151548.P8899383233959998614

`A151866(n)-A151864(n)`
-/

namespace A151548.P8899383233959998614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151866 n - A151864 n

end

end A151548.P8899383233959998614

/-! ## A151548.P3754232521945201773

`A160552(n)+Δ[A139250(n)]`
-/

namespace A151548.P3754232521945201773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + (f1 (n + 1) - f1 n)

end

end A151548.P3754232521945201773

/-! ## A151548.P12624050069918226678

`A160552(n)+A139251(n+1)`
-/

namespace A151548.P12624050069918226678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + A139251 (n + 1)

end

end A151548.P12624050069918226678

/-! ## A151548.P17998050081703886698

`A160552(n+1)+2*A160552(n)`
-/

namespace A151548.P17998050081703886698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) + 2 * A160552 n

end

end A151548.P17998050081703886698

/-! ## A151548.P3017586824126028687

`Δ[A139250(n)]+A151569(n)-A151568(n)`
-/

namespace A151548.P3017586824126028687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A151569 n - A151568 n)

end

end A151548.P3017586824126028687

/-! ## A151548.P18219607606250648902

`A139250(n+1)+A160552(n)-A139250(n)`
-/

namespace A151548.P18219607606250648902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + (A160552 n - A139250 n)

end

end A151548.P18219607606250648902

/-! ## A151548.P11373878682443210606

`A160164(n+1)-(A160552(n+1)+A160164(n))`
-/

namespace A151548.P11373878682443210606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (n + 1) - (A160552 (n + 1) + A160164 n)

end

end A151548.P11373878682443210606

/-! ## A151548.P13721707367748725974

`A151704(n+1)+A151568(n)`
-/

namespace A151548.P13721707367748725974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 (n + 1) + A151568 n

end

end A151548.P13721707367748725974

/-! ## A151548.P642123854733223242

`A151569(n)+Δ[A151568(n)/2]`
-/

namespace A151548.P642123854733223242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151568 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151569 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A151548.P642123854733223242

/-! ## A151548.P16342045799110048680

`A151568(n+1)+A151568(n)-A160552(n+1)`
-/

namespace A151548.P16342045799110048680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 (n + 1) + (A151568 n - A160552 (n + 1))

end

end A151548.P16342045799110048680

/-! ## A151548.P17831186764278130163

`A160552(A004760(n+2))`
-/

namespace A151548.P17831186764278130163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A004760 (n + 2)).toNat

end

end A151548.P17831186764278130163

/-! ## A151548.P3379363829772897029

`A160552(A171757(n+1)-n)`
-/

namespace A151548.P3379363829772897029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A171757 (n + 1) - (n : ℤ)).toNat

end

end A151548.P3379363829772897029

/-! ## A151548.P4179397686598195667

`A160552(A206332(n+1))`
-/

namespace A151548.P4179397686598195667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A206332 (n + 1)).toNat

end

end A151548.P4179397686598195667

/-! ## A151548.P8572524128895550452

`2*A246336(n)-A194811(n)`
-/

namespace A151548.P8572524128895550452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246336 n - A194811 n

end

end A151548.P8572524128895550452

/-! ## A151548.P5635273883271656444

`A139250(n+1)-A266530(A004277(n))`
-/

namespace A151548.P5635273883271656444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) - A266530 (A004277 n).toNat

end

end A151548.P5635273883271656444

/-! ## A151548.P2321767785493218349

`A147646(n+1)+A246336(n)-A246336(n+1)`
-/

namespace A151548.P2321767785493218349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1) + (A246336 n - A246336 (n + 1))

end

end A151548.P2321767785493218349

/-! ## A151548.P16981865545559728496

`A187221(n+2)-A160552(n+1)`
-/

namespace A151548.P16981865545559728496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 (n + 2) - A160552 (n + 1)

end

end A151548.P16981865545559728496

/-!
# A151549: a(n) = (A151548(n)-1)/2.

The programs for A151549, there is no canonical definition to state claims against.
-/

/-! ## A151549.P6330810792763273453

`(A151548(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151549.P6330810792763273453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151548 n - 1 : ℚ) / 2

end

end A151549.P6330810792763273453

/-! ## A151549.P3655571171200497306

`floor(A151548(n)/2)`
-/

namespace A151549.P3655571171200497306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151548 n : ℚ) / 2⌋

end

end A151549.P3655571171200497306

/-! ## A151549.P8911156544369233689

`floor(A160552(lt[n, 2*and(n, 2*n)]-1)/2)`
-/

namespace A151549.P8911156544369233689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160552 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1) : ℚ) / 2⌋

end

end A151549.P8911156544369233689

/-! ## A151549.P15755153264542337340

`floor(A266529(2*lt[n, 2*and(n, 2*n)])/2)`
-/

namespace A151549.P15755153264542337340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266529 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2⌋

end

end A151549.P15755153264542337340

/-! ## A151549.P7543453348267232458

`A246336(n)-(A159793(n)+1)`
-/

namespace A151549.P7543453348267232458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n - (A159793 n + 1)

end

end A151549.P7543453348267232458

/-! ## A151549.P11930488244243180069

`A139251(n+1)-A255045(n+1)`
-/

namespace A151549.P11930488244243180069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) - A255045 (n + 1)

end

end A151549.P11930488244243180069

/-! ## A151549.P5336029003567496963

`A152998(n)+A255747(n)-A139250(n)`
-/

namespace A151549.P5336029003567496963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n + (A255747 n - A139250 n)

end

end A151549.P5336029003567496963

/-! ## A151549.P13049581470915847266

`A151548(n)-(A255045(n+1)+A160552(n))`
-/

namespace A151549.P13049581470915847266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - (A255045 (n + 1) + A160552 n)

end

end A151549.P13049581470915847266

/-! ## A151549.P17447734022137206859

`A160552(n+1)+A160552(n)-A255045(n+1)`
-/

namespace A151549.P17447734022137206859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) + (A160552 n - A255045 (n + 1))

end

end A151549.P17447734022137206859

/-! ## A151549.P17877745766247277158

`A255046(n)-1`
-/

namespace A151549.P17877745766247277158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255046 n - 1

end

end A151549.P17877745766247277158

/-! ## A151549.P1593257107387685949

`A151548(n)%A255046(n)`
-/

namespace A151549.P1593257107387685949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151548 n) (A255046 n)

end

end A151549.P1593257107387685949

/-! ## A151549.P7559742080250556503

`A023443(A255046(n))`
-/

namespace A151549.P7559742080250556503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A255046 n).toNat

end

end A151549.P7559742080250556503

/-! ## A151549.P5578983383216209218

`A004524(A151548(n))`
-/

namespace A151549.P5578983383216209218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A151548 n).toNat

end

end A151549.P5578983383216209218

/-! ## A151549.P5601019107634525239

`A046667(A151548(n)+1)`
-/

namespace A151549.P5601019107634525239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A151548 n + 1).toNat

end

end A151549.P5601019107634525239

/-! ## A151549.P16275399785854994360

`A001281(A151548(n)-1)`
-/

namespace A151549.P16275399785854994360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151548 n - 1).toNat

end

end A151549.P16275399785854994360

/-! ## A151549.P7198727054883686987

`A004525(A151548(n)-1)`
-/

namespace A151549.P7198727054883686987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151548 n - 1).toNat

end

end A151549.P7198727054883686987

/-! ## A151549.P9443758330502574890

`A002265(2*A151548(n))`
-/

namespace A151549.P9443758330502574890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A151548 n).toNat

end

end A151549.P9443758330502574890

/-!
# A151550: Expansion of g.f. Product_{n >= 1} (1 + x^(2^n-1) + 2*x^(2^n)).

The programs for A151550, there is no canonical definition to state claims against.
-/

/-! ## A151550.P72618622570059785

`round(A151548(n+1)/4)`
-/

namespace A151550.P72618622570059785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A151548 (n + 1) : ℚ) / 4)

end

end A151550.P72618622570059785

/-! ## A151550.P6837215370934003576

`A152980(n)-a(n-1)` with `a(0)=1`
-/

namespace A151550.P6837215370934003576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152980 n - a (n - 1)

end

end A151550.P6837215370934003576

/-! ## A151550.P10756532014201285735

`Δ[A153006(n)]-a(n-1)` with `a(0)=1`
-/

namespace A151550.P10756532014201285735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A151550.P10756532014201285735

/-! ## A151550.P13877979290372025766

`A151555(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A151550.P13877979290372025766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151555 n - (a (n - 1) + a (n - 1))

end

end A151550.P13877979290372025766

/-! ## A151550.P9185459637291022910

`2*A152980(n)-A151555(n)`
-/

namespace A151550.P9185459637291022910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152980 n - A151555 n

end

end A151550.P9185459637291022910

/-! ## A151550.P1726783163533872804

`Δ[2*A153006(n)]-A151555(n)`
-/

namespace A151550.P1726783163533872804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A151555 n

end

end A151550.P1726783163533872804

/-! ## A151550.P8252490197821793677

`A151555(n+1)-A152980(n+1)`
-/

namespace A151550.P8252490197821793677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 (n + 1) - A152980 (n + 1)

end

end A151550.P8252490197821793677

/-! ## A151550.P13530269411900302339

`A151555(n+1)-Δ[A153006(n+1)]`
-/

namespace A151550.P13530269411900302339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 (n + 1) - (f1 (n + 1) - f1 n)

end

end A151550.P13530269411900302339

/-! ## A151550.P4921676183979625857

`A153006(n+1)-(A153006(n)+a(n-1))` with `a(0)=1`
-/

namespace A151550.P4921676183979625857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153006 (n + 1) - (A153006 n + a (n - 1))

end

end A151550.P4921676183979625857

/-! ## A151550.P12804637299184509092

`A000027(A152980(n)-(A151555(n)-A152980(n)))`
-/

namespace A151550.P12804637299184509092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A152980 n - (A151555 n - A152980 n)).toNat

end

end A151550.P12804637299184509092

/-! ## A151550.P401284741925173784

`A160552(n+1)-A151859(n+1)`
-/

namespace A151550.P401284741925173784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) - A151859 (n + 1)

end

end A151550.P401284741925173784

/-! ## A151550.P4522556833269544515

`A151861(n+1)-2*A151859(n+1)`
-/

namespace A151550.P4522556833269544515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 (n + 1) - 2 * A151859 (n + 1)

end

end A151550.P4522556833269544515

/-! ## A151550.P13635167731627196631

`2*A160552(n+1)-A151861(n+1)`
-/

namespace A151550.P13635167731627196631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160552 (n + 1) - A151861 (n + 1)

end

end A151550.P13635167731627196631

/-! ## A151550.P10337610832826308371

`A151688(n)-A151555(n)`
-/

namespace A151550.P10337610832826308371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n - A151555 n

end

end A151550.P10337610832826308371

/-! ## A151550.P16400793843542921896

`A065033(A151549(n+1))`
-/

namespace A151550.P16400793843542921896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151549 (n + 1)).toNat

end

end A151550.P16400793843542921896

/-! ## A151550.P16275071002608749727

`A004526(A255046(n+1))`
-/

namespace A151550.P16275071002608749727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A255046 (n + 1)).toNat

end

end A151550.P16275071002608749727

/-! ## A151550.P7999481855441736982

`A004277(A152980(n))-A151555(n)`
-/

namespace A151550.P7999481855441736982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152980 n).toNat - A151555 n

end

end A151550.P7999481855441736982

/-! ## A151550.P15992567868819336120

`A151555(n)-2*A008624(A151548(n))`
-/

namespace A151550.P15992567868819336120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 n - 2 * A008624 (A151548 n).toNat

end

end A151550.P15992567868819336120

/-! ## A151550.P14177226547922430015

`A006368(A151548(n))+A152980(n)-A151548(n)`
-/

namespace A151550.P14177226547922430015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A151548 n).toNat + (A152980 n - A151548 n)

end

end A151550.P14177226547922430015

/-! ## A151550.P12620757330036322820

`A008624(A151548(n+1))`
-/

namespace A151550.P12620757330036322820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A151548 (n + 1)).toNat

end

end A151550.P12620757330036322820

/-!
# A151551: G.f.: (1 + 3x) * Product_{n>=1} (1 + x^(2^n-1) + 2*x^(2^n)).

The programs for A151551, there is no canonical definition to state claims against.
-/

/-! ## A151551.P2477991505105636040

`2*A151555(n)-A152980(n)`
-/

namespace A151551.P2477991505105636040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151555 n - A152980 n

end

end A151551.P2477991505105636040

/-! ## A151551.P18348779865975665377

`2*A151555(n)-Δ[A153006(n)]`
-/

namespace A151551.P18348779865975665377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151555 n - (f1 (n + 1) - f1 n)

end

end A151551.P18348779865975665377

/-! ## A151551.P7443645804638344887

`A159785(n+1)-2*A151550(n)`
-/

namespace A151551.P7443645804638344887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) - 2 * A151550 n

end

end A151551.P7443645804638344887

/-! ## A151551.P16132867137328349403

`floor(A151555(n)+(A151549(n)+1)/2)`
-/

namespace A151551.P16132867137328349403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151555 n : ℚ) + (A151549 n + 1 : ℚ) / 2⌋

end

end A151551.P16132867137328349403

/-! ## A151551.P3850041545293977974

`A151555(n)+A008624(A151548(n))`
-/

namespace A151551.P3850041545293977974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 n + A008624 (A151548 n).toNat

end

end A151551.P3850041545293977974

/-! ## A151551.P17829069489797758616

`A151555(n)+A004526(A255046(n))`
-/

namespace A151551.P17829069489797758616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 n + A004526 (A255046 n).toNat

end

end A151551.P17829069489797758616

/-! ## A151551.P4842223508701854431

`A151555(n)+A110654(A151549(n))`
-/

namespace A151551.P4842223508701854431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 n + A110654 (A151549 n).toNat

end

end A151551.P4842223508701854431

/-! ## A151551.P4839707104151709451

`A152980(n)+A052928(A255046(n))`
-/

namespace A151551.P4839707104151709451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n + A052928 (A255046 n).toNat

end

end A151551.P4839707104151709451

/-! ## A151551.P4729362740205036314

`A004277(A151555(n))-A152980(n)`
-/

namespace A151551.P4729362740205036314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151555 n).toNat - A152980 n

end

end A151551.P4729362740205036314

/-! ## A151551.P16656544361495492974

`A159785(n+1)-A005843(A151550(n))`
-/

namespace A151551.P16656544361495492974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) - A005843 (A151550 n).toNat

end

end A151551.P16656544361495492974

/-!
# A151552: G.f.: Product_{k>=1} (1 + x^(2^k-1) + x^(2^k)).

The programs for A151552, there is no canonical definition to state claims against.
-/

/-! ## A151552.P14625433574681547942

`A151553(n)-a(n-1)` with `a(0)=1`
-/

namespace A151552.P14625433574681547942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151553 n - a (n - 1)

end

end A151552.P14625433574681547942

/-! ## A151552.P10897501481285292129

`A151554(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A151552.P10897501481285292129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151554 n - (a (n - 1) + a (n - 1))

end

end A151552.P10897501481285292129

/-! ## A151552.P2095514709351414247

`2*A151553(n)-A151554(n)`
-/

namespace A151552.P2095514709351414247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151553 n - A151554 n

end

end A151552.P2095514709351414247

/-! ## A151552.P12848987808152690976

`A151848(n)-2*A151844(n)`
-/

namespace A151552.P12848987808152690976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 n - 2 * A151844 n

end

end A151552.P12848987808152690976

/-! ## A151552.P17241964128321415337

`A151554(n+1)-A151553(n+1)`
-/

namespace A151552.P17241964128321415337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151554 (n + 1) - A151553 (n + 1)

end

end A151552.P17241964128321415337

/-! ## A151552.P13595089031548588513

`A151845(n+1)-2*A151843(n+1)`
-/

namespace A151552.P13595089031548588513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) - 2 * A151843 (n + 1)

end

end A151552.P13595089031548588513

/-! ## A151552.P95759918557811285

`A151553(n)-A151702(n+1)`
-/

namespace A151552.P95759918557811285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 n - A151702 (n + 1)

end

end A151552.P95759918557811285

/-! ## A151552.P4123699935532638683

`A118977(n+1)-A151843(n+1)`
-/

namespace A151552.P4123699935532638683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1) - A151843 (n + 1)

end

end A151552.P4123699935532638683

/-! ## A151552.P12934824116551321005

`A151570(n+1)-A151847(n+1)`
-/

namespace A151552.P12934824116551321005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (n + 1) - A151847 (n + 1)

end

end A151552.P12934824116551321005

/-! ## A151552.P9076435022254674090

`A151846(n+1)-A151848(n+1)`
-/

namespace A151552.P9076435022254674090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 (n + 1) - A151848 (n + 1)

end

end A151552.P9076435022254674090

/-! ## A151552.P14054792453486552650

`A151847(n+2)-A151843(n+2)`
-/

namespace A151552.P14054792453486552650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 2) - A151843 (n + 2)

end

end A151552.P14054792453486552650

/-! ## A151552.P2374816628191044218

`2*A118977(n+1)-A151845(n+1)`
-/

namespace A151552.P2374816628191044218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118977 (n + 1) - A151845 (n + 1)

end

end A151552.P2374816628191044218

/-! ## A151552.P6106033097865280106

`A005843(A118977(n+1))-A151845(n+1)`
-/

namespace A151552.P6106033097865280106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A118977 (n + 1)).toNat - A151845 (n + 1)

end

end A151552.P6106033097865280106

/-! ## A151552.P17167901854103374877

`A151702(n+2)`
-/

namespace A151552.P17167901854103374877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 2)

end

end A151552.P17167901854103374877

/-! ## A151552.P1336174736255864730

`A151570(n+2)-A118977(n+2)`
-/

namespace A151552.P1336174736255864730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (n + 2) - A118977 (n + 2)

end

end A151552.P1336174736255864730

/-! ## A151552.P604759672750114911

`A151849(n+2)-A151845(n+2)`
-/

namespace A151552.P604759672750114911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 (n + 2) - A151845 (n + 2)

end

end A151552.P604759672750114911

/-! ## A151552.P13108429915781608962

`A118977(A206332(n+2))-A151553(n)`
-/

namespace A151552.P13108429915781608962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A206332 (n + 2)).toNat - A151553 n

end

end A151552.P13108429915781608962

/-! ## A151552.P4804817023045421429

`A151714(A053645(n+2))`
-/

namespace A151552.P4804817023045421429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (A053645 (n + 2)).toNat

end

end A151552.P4804817023045421429

/-! ## A151552.P5166727660511651631

`A151714(n+2-A053644(n+2))`
-/

namespace A151552.P5166727660511651631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 ((n + 2 : ℤ) - A053644 (n + 2)).toNat

end

end A151552.P5166727660511651631

/-!
# A151553: G.f.: (1 + x) * Product_{n>=1} (1 + x^(2^n-1) + x^(2^n)).

The programs for A151553, there is no canonical definition to state claims against.
-/

/-! ## A151553.P14239610229936138939

`(A151554(n)+A151552(n))/2`
-/

namespace A151553.P14239610229936138939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151554 n + A151552 n : ℚ) / 2

end

end A151553.P14239610229936138939

/-! ## A151553.P14725866294425464438

`A151846(n)-2*A151844(n)`
-/

namespace A151553.P14725866294425464438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 n - 2 * A151844 n

end

end A151553.P14725866294425464438

/-! ## A151553.P10784048519169320043

`A151702(n+1)+A151552(n)`
-/

namespace A151553.P10784048519169320043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + A151552 n

end

end A151553.P10784048519169320043

/-! ## A151553.P16914473914010702266

`A151554(n)-A151702(n+1)`
-/

namespace A151553.P16914473914010702266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151554 n - A151702 (n + 1)

end

end A151553.P16914473914010702266

/-! ## A151553.P18358641854848055000

`A151844(n+1)+A151552(n+1)`
-/

namespace A151553.P18358641854848055000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151844 (n + 1) + A151552 (n + 1)

end

end A151553.P18358641854848055000

/-! ## A151553.P9053783254256104056

`A151570(n+1)-A151843(n+1)`
-/

namespace A151553.P9053783254256104056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (n + 1) - A151843 (n + 1)

end

end A151553.P9053783254256104056

/-! ## A151553.P16679843508235217452

`A151571(n+1)-A151845(n+1)`
-/

namespace A151553.P16679843508235217452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 (n + 1) - A151845 (n + 1)

end

end A151553.P16679843508235217452

/-! ## A151553.P1578592530165344036

`A151848(n+1)-A151844(n+1)`
-/

namespace A151553.P1578592530165344036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 (n + 1) - A151844 (n + 1)

end

end A151553.P1578592530165344036

/-! ## A151553.P10635761250155087218

`A151850(n+1)-A151846(n+1)`
-/

namespace A151553.P10635761250155087218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151850 (n + 1) - A151846 (n + 1)

end

end A151553.P10635761250155087218

/-! ## A151553.P10955803527265296511

`2*A151570(n+1)-A151849(n+1)`
-/

namespace A151553.P10955803527265296511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151570 (n + 1) - A151849 (n + 1)

end

end A151553.P10955803527265296511

/-! ## A151553.P4406093802503396818

`A151849(n+1)-2*A151843(n+1)`
-/

namespace A151553.P4406093802503396818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 (n + 1) - 2 * A151843 (n + 1)

end

end A151553.P4406093802503396818

/-! ## A151553.P14663791377818234856

`A151570(n+1)+A151552(n)-A118977(n+1)`
-/

namespace A151553.P14663791377818234856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (n + 1) + (A151552 n - A118977 (n + 1))

end

end A151553.P14663791377818234856

/-! ## A151553.P7147657990240580020

`A151702(n+1)+A151702(n+2)`
-/

namespace A151553.P7147657990240580020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + A151702 (n + 2)

end

end A151553.P7147657990240580020

/-! ## A151553.P4400110981577474446

`A151845(n+1)+Δ[A118977(n+1)]`
-/

namespace A151553.P4400110981577474446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) + (f1 (n + 1) - f1 n)

end

end A151553.P4400110981577474446

/-! ## A151553.P6850614483805382014

`A014682(A151571(n+1)+Δ[A118977(n+1)])`
-/

namespace A151553.P6850614483805382014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151571 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A151553.P6850614483805382014

/-! ## A151553.P2078270836397220972

`∑{d}[A008578(n+1), A151552(n+1-A071364(#))]`
-/

namespace A151553.P2078270836397220972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151552 ((n + 1 : ℤ) - A071364 d).toNat

end

end A151553.P2078270836397220972

/-! ## A151553.P9885009895532712427

`A151552(A206332(n+1)-1)`
-/

namespace A151553.P9885009895532712427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A206332 (n + 1) - 1).toNat

end

end A151553.P9885009895532712427

/-! ## A151553.P6569769042044506730

`A151552(A132196(2*n+1)-1)`
-/

namespace A151553.P6569769042044506730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A132196 (2 * n + 1) - 1).toNat

end

end A151553.P6569769042044506730

/-! ## A151553.P4516110499522150429

`A151702(A004755(n+1))`
-/

namespace A151553.P4516110499522150429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A004755 (n + 1)).toNat

end

end A151553.P4516110499522150429

/-! ## A151553.P8818958688763835797

`A151702(A206332(n+1)+1)`
-/

namespace A151553.P8818958688763835797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A206332 (n + 1) + 1).toNat

end

end A151553.P8818958688763835797

/-!
# A151554: G.f.: (1 + 2x) * Product_{n>=1} (1 + x^(2^n-1) + x^(2^n)).

The programs for A151554, there is no canonical definition to state claims against.
-/

/-! ## A151554.P413083857902807816

`2*A151553(n)-A151552(n)`
-/

namespace A151554.P413083857902807816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151553 n - A151552 n

end

end A151554.P413083857902807816

/-! ## A151554.P12071183571113968522

`A151702(n+1)+A151553(n)`
-/

namespace A151554.P12071183571113968522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + A151553 n

end

end A151554.P12071183571113968522

/-! ## A151554.P2160475433322489993

`2*A151570(n+1)-A151845(n+1)`
-/

namespace A151554.P2160475433322489993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151570 (n + 1) - A151845 (n + 1)

end

end A151554.P2160475433322489993

/-! ## A151554.P9586848355486275337

`A151702(n+1)+A151702(n+1)+A151552(n)`
-/

namespace A151554.P9586848355486275337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + (A151702 (n + 1) + A151552 n)

end

end A151554.P9586848355486275337

/-! ## A151554.P6500977927624504689

`A151570(n+1)+A118977(n+2)-A151702(n+2)`
-/

namespace A151554.P6500977927624504689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (n + 1) + (A118977 (n + 2) - A151702 (n + 2))

end

end A151554.P6500977927624504689

/-! ## A151554.P6517254906065386435

`A151702(n+1)+A151702(A206332(n+2))`
-/

namespace A151554.P6517254906065386435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 1) + A151702 (A206332 (n + 2)).toNat

end

end A151554.P6517254906065386435

/-! ## A151554.P740510916182759879

`A151848(n)+Δ[2*A151714(n)]`
-/

namespace A151554.P740510916182759879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 n + (f1 (n + 1) - f1 n)

end

end A151554.P740510916182759879

/-! ## A151554.P14250753451984684905

`A151714(n+1)+A151702(n+1)`
-/

namespace A151554.P14250753451984684905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (n + 1) + A151702 (n + 1)

end

end A151554.P14250753451984684905

/-! ## A151554.P13019449907568833702

`A151848(n)+Δ[A005843(A151714(n))]`
-/

namespace A151554.P13019449907568833702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 n + (f1 (n + 1) - f1 n)

end

end A151554.P13019449907568833702

/-! ## A151554.P768738215155564521

`A151714(n+1)+A151714(n+1)-A151552(n)`
-/

namespace A151554.P768738215155564521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (n + 1) + (A151714 (n + 1) - A151552 n)

end

end A151554.P768738215155564521

/-!
# A151555: G.f.: (1 + 2x) * Product_{n>=1} (1 + x^(2^n-1) + 2*x^(2^n)).

The programs for A151555, there is no canonical definition to state claims against.
-/

/-! ## A151555.P5049342052784824102

`A151548(n)-A151860(n)`
-/

namespace A151555.P5049342052784824102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A151860 n

end

end A151555.P5049342052784824102

/-! ## A151555.P4217185095394349009

`2*A151548(n)-A151862(n)`
-/

namespace A151555.P4217185095394349009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151548 n - A151862 n

end

end A151555.P4217185095394349009

/-! ## A151555.P5113980508296360090

`A151862(n)-2*A151860(n)`
-/

namespace A151555.P5113980508296360090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151862 n - 2 * A151860 n

end

end A151555.P5113980508296360090

/-! ## A151555.P1847921614244578829

`2*A152980(n)-A151550(n)`
-/

namespace A151555.P1847921614244578829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152980 n - A151550 n

end

end A151555.P1847921614244578829

/-! ## A151555.P16189534243673807384

`A151688(n)-A151550(n)`
-/

namespace A151555.P16189534243673807384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n - A151550 n

end

end A151555.P16189534243673807384

/-! ## A151555.P8521395189485876253

`A151550(A206332(n+1)-1)`
-/

namespace A151555.P8521395189485876253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (A206332 (n + 1) - 1).toNat

end

end A151555.P8521395189485876253

/-! ## A151555.P7296648356321500150

`A151550(A004755(n+1)-2)`
-/

namespace A151555.P7296648356321500150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (A004755 (n + 1) - 2).toNat

end

end A151555.P7296648356321500150

/-! ## A151555.P5884438838648945682

`A151550(∑[A048298(n+1)]+n)`
-/

namespace A151555.P5884438838648945682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A151555.P5884438838648945682

/-! ## A151555.P6649215721552215303

`A151550(A080079(n+1)+2*n)`
-/

namespace A151555.P6649215721552215303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (A080079 (n + 1) + (2 * n : ℤ)).toNat

end

end A151555.P6649215721552215303

/-! ## A151555.P17504426488651278800

`A151550(A080079(n+1)+n+n)`
-/

namespace A151555.P17504426488651278800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (A080079 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A151555.P17504426488651278800

/-! ## A151555.P3868293602276069705

`A147646(n+1)/2-A151550(n)`
-/

namespace A151555.P3868293602276069705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (n + 1) : ℚ) / 2 - (A151550 n : ℚ)

end

end A151555.P3868293602276069705

/-! ## A151555.P9225185173284467941

`A151550(∑[A005408(A048298(n))])`
-/

namespace A151555.P9225185173284467941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A048298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151555.P9225185173284467941

/-! ## A151555.P17239006377728243402

`A151548(n)+A151550(n)-A004525(A151548(n))`
-/

namespace A151555.P17239006377728243402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n + (A151550 n - A004525 (A151548 n).toNat)

end

end A151555.P17239006377728243402

/-! ## A151555.P2789590447963680285

`A151548(n)+A152980(n)-A006368(A151548(n))`
-/

namespace A151555.P2789590447963680285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n + (A152980 n - A006368 (A151548 n).toNat)

end

end A151555.P2789590447963680285

/-! ## A151555.P7517719684059243178

`A123108(A147646(n+1))-A151550(n)`
-/

namespace A151555.P7517719684059243178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A147646 (n + 1)).toNat - A151550 n

end

end A151555.P7517719684059243178

/-!
# A151557: Squares which are the sum of two or more consecutive squares.

The programs for A151557, there is no canonical definition to state claims against.
-/

/-! ## A151557.P13807730866627038221

`A097812(n+1)²`
-/

namespace A151557.P13807730866627038221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097812 (n + 1) ^ 2

end

end A151557.P13807730866627038221

/-! ## A151557.P11088045222404045923

`A097812((n+1)^2/(n+1))^2`
-/

namespace A151557.P11088045222404045923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097812 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A151557.P11088045222404045923

/-! ## A151557.P4140424950282829253

`A097812(A000027(n+1))*A097812(n+1)`
-/

namespace A151557.P4140424950282829253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097812 (A000027 (n + 1)).toNat * A097812 (n + 1)

end

end A151557.P4140424950282829253

/-! ## A151557.P5150314039291904337

`A097812(A000007(n+1)+n+1)*A097812(n+1)`
-/

namespace A151557.P5150314039291904337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097812 (A000007 (n + 1) + (n + 1 : ℤ)).toNat * A097812 (n + 1)

end

end A151557.P5150314039291904337

/-! ## A151557.P6385371199369922971

`A097812(n+1)*A097812((n+1)%A097812(n+1))`
-/

namespace A151557.P6385371199369922971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097812 (n + 1) * A097812 (Int.tmod (n + 1 : ℤ) (A097812 (n + 1))).toNat

end

end A151557.P6385371199369922971

/-! ## A151557.P9517339795586980325

`(A097812(n+1)%A097812(n+2))^2`
-/

namespace A151557.P9517339795586980325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097812 (n + 1)) (A097812 (n + 2)) ^ 2

end

end A151557.P9517339795586980325

/-! ## A151557.P6088644071469729738

`∩[A130052(n+1), n²]`
-/

namespace A151557.P6088644071469729738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A151557.P6088644071469729738

/-! ## A151557.P11203303794244026630

`∩[A000290(n), A130052(n+1)]`
-/

namespace A151557.P11203303794244026630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151557.P11203303794244026630

/-! ## A151557.P12425609374570261216

`A000290(A097812(Δ[n*n]-n))`
-/

namespace A151557.P12425609374570261216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A097812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A151557.P12425609374570261216

/-! ## A151557.P15106136962516696683

`∩[A002760(n+1), A130052(n+1)]`
-/

namespace A151557.P15106136962516696683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151557.P15106136962516696683

/-! ## A151557.P8033878380841198878

`∩[A085960(n+1), A130052(n+1)]`
-/

namespace A151557.P8033878380841198878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151557.P8033878380841198878

/-! ## A151557.P1928636578768925276

`A000290(A097812(n+1)+and(2, A000290(n)))`
-/

namespace A151557.P1928636578768925276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A097812 (n + 1) + Int.land 2 (A000290 n)).toNat

end

end A151557.P1928636578768925276

/-! ## A151557.P1784975490467867625

`A000290(2*A097812(n+1)-A097812(n+1))`
-/

namespace A151557.P1784975490467867625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A097812 (n + 1) - A097812 (n + 1)).toNat

end

end A151557.P1784975490467867625

/-! ## A151557.P10140012939485027589

`∩[A001597(n+1), A130052(n+1)]`
-/

namespace A151557.P10140012939485027589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151557.P10140012939485027589

/-!
# A151559: Weight distribution of [128,85,14] extended binary primitive BCH (or XBCH) code.

The programs for A151559, there is no canonical definition to state claims against.
-/

/-! ## A151559.P16897806808563147663

`C(C(2^n, 16*n+15), ∑{e}[n+1, #])`
-/

namespace A151559.P16897806808563147663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (2 ^ n) (16 * n + 15)) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A151559.P16897806808563147663

/-! ## A151559.P9951588214931668300

`C(round((n+1)^(n/3)), A224339(n+1))`
-/

namespace A151559.P9951588214931668300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat (A224339 (n + 1)).toNat

end

end A151559.P9951588214931668300

/-! ## A151559.P2762247493804284659

`C((A029245(n)+a(n-1))^n, 3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A151559.P2762247493804284659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  Nat.choose ((A029245 n + (a (n - 1) : ℤ)) ^ n).toNat 3

end

end A151559.P2762247493804284659

/-! ## A151559.P17703252975176445295

`C(a(n-1)+2^n, A003592(2*(n+1)))` with `a(0)=1`
-/

namespace A151559.P17703252975176445295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1) + 2 ^ n) (A003592 (2 * (n + 1))).toNat

end

end A151559.P17703252975176445295

/-!
# A151560: Weight distribution of [128,92,12] extended binary primitive BCH (or XBCH) code.

The programs for A151560, there is no canonical definition to state claims against.
-/

/-! ## A151560.P17607999218154392283

`A000455(A089677(n))*A151435(n)`
-/

namespace A151560.P17607999218154392283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000455 (A089677 n).toNat * A151435 n

end

end A151560.P17607999218154392283

/-! ## A151560.P6943332116300712669

`A117974(A008000(n))*A151435(n)`
-/

namespace A151560.P6943332116300712669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117974 (A008000 n).toNat * A151435 n

end

end A151560.P6943332116300712669

/-! ## A151560.P4532322389205182827

`A000030(A151379(n))*A151435(n)`
-/

namespace A151560.P4532322389205182827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A151379 n).toNat * A151435 n

end

end A151560.P4532322389205182827

/-!
# A151561: Weight distribution of [128,99,10] extended binary primitive BCH (or XBCH) code.

The programs for A151561, there is no canonical definition to state claims against.
-/

/-! ## A151561.P9738799845642436019

`A145685(n)*A187002(A186998(n))`
-/

namespace A151561.P9738799845642436019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145685 n * A187002 (A186998 n).toNat

end

end A151561.P9738799845642436019

/-! ## A151561.P5596541612249166644

`A145685(n)*A145890(A002944(n+1))`
-/

namespace A151561.P5596541612249166644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145685 n * A145890 (A002944 (n + 1)).toNat

end

end A151561.P5596541612249166644

/-!
# A151562: Weight distribution of [128,106,8] extended binary primitive BCH (or XBCH) code.

The programs for A151562, there is no canonical definition to state claims against.
-/

/-! ## A151562.P4619707767877119107

`lcm(n!, A228591(A326904(n)))`
-/

namespace A151562.P4619707767877119107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A228591 (A326904 n).toNat)

end

end A151562.P4619707767877119107

/-!
# A151564: Weight distribution of [256,13,120] extended binary primitive BCH (or XBCH) code.

The programs for A151564, there is no canonical definition to state claims against.
-/

/-! ## A151564.P2540191537085632431

`A028240(n)%∏[char[∑[n]]+1]²`
-/

namespace A151564.P2540191537085632431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028240 n) (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A151564.P2540191537085632431

/-! ## A151564.P17896111875225739928

`and(A028240(n), A285475(A131507(n)))`
-/

namespace A151564.P17896111875225739928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028240 n) (A285475 (A131507 n).toNat)

end

end A151564.P17896111875225739928

/-! ## A151564.P4583327729090462162

`and(A028240(n), A286521(A133310(n)))`
-/

namespace A151564.P4583327729090462162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028240 n) (A286521 (A133310 n).toNat)

end

end A151564.P4583327729090462162

/-! ## A151564.P10668881281853363567

`and(A028240(n), A286114(A328571(n)))`
-/

namespace A151564.P10668881281853363567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028240 n) (A286114 (A328571 n).toNat)

end

end A151564.P10668881281853363567

/-! ## A151564.P12142495196486388915

`and(A005231(A002024(n+1)), A028240(n))`
-/

namespace A151564.P12142495196486388915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005231 (A002024 (n + 1)).toNat) (A028240 n)

end

end A151564.P12142495196486388915

/-!
# A151566: Leftist toothpicks (see Comments for definition).

The programs for A151566, the canonical program `A151566.P2662618975660010276` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151566 has offset 0).

The definition of A151566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151566.P2689296746708995964

`A160742(n)/2`
-/

namespace A151566.P2689296746708995964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160742 n : ℚ) / 2

end

end A151566.P2689296746708995964

namespace A151566

/-- `A160742(n)/2` -/
def P2689296746708995964.Spec : Prop :=
  ∀ n, P2689296746708995964.a n = (A151566 n : ℚ)

theorem P2689296746708995964.correct : P2689296746708995964.Spec := by
  intro n
  simp only [A151566, Nat.add_sub_cancel, A151566.P2689296746708995964.a, A151566.P2662618975660010276.f1, A151566.P2662618975660010276.a, A060632, A060632.P4006644986864804916.a, A160742, A160742.P554087851942868596.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151566

/-! ## A151566.P1032273823101575502

`A160744(n)/3`
-/

namespace A151566.P1032273823101575502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160744 n : ℚ) / 3

end

end A151566.P1032273823101575502

namespace A151566

/-- `A160744(n)/3` -/
def P1032273823101575502.Spec : Prop :=
  ∀ n, P1032273823101575502.a n = (A151566 n : ℚ)

theorem P1032273823101575502.correct : P1032273823101575502.Spec := by
  intro n
  simp only [A151566, Nat.add_sub_cancel, A151566.P1032273823101575502.a, A151566.P2662618975660010276.f1, A151566.P2662618975660010276.a, A060632, A060632.P4006644986864804916.a, A160744, A160744.P10798283293530994526.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151566

/-! ## A151566.P12894467322364183990

`A160746(n)/4`
-/

namespace A151566.P12894467322364183990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160746 n : ℚ) / 4

end

end A151566.P12894467322364183990

namespace A151566

/-- `A160746(n)/4` -/
def P12894467322364183990.Spec : Prop :=
  ∀ n, P12894467322364183990.a n = (A151566 n : ℚ)

theorem P12894467322364183990.correct : P12894467322364183990.Spec := by
  intro n
  simp only [A151566, Nat.add_sub_cancel, A151566.P12894467322364183990.a, A151566.P2662618975660010276.f1, A151566.P2662618975660010276.a, A060632, A060632.P4006644986864804916.a, A160746, A160746.P2805536965338767188.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151566

/-! ## A151566.P4728299282086974749

`A173522(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A151566.P4728299282086974749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173522 n - (a (n - 1) + a (n - 1))

end

end A151566.P4728299282086974749

namespace A151566

/-- `A173522(n)-(a(n-1)+a(n-1))` -/
def P4728299282086974749.Spec : Prop :=
  ∀ n, P4728299282086974749.a n = A151566 n

end A151566

/-! ## A151566.P9553129976217571231

`A160744(n)-A160742(n)`
-/

namespace A151566.P9553129976217571231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160744 n - A160742 n

end

end A151566.P9553129976217571231

namespace A151566

/-- `A160744(n)-A160742(n)` -/
def P9553129976217571231.Spec : Prop :=
  ∀ n, P9553129976217571231.a n = A151566 n

theorem P9553129976217571231.correct : P9553129976217571231.Spec := by
  intro n
  simp only [A151566, Nat.add_sub_cancel, A151566.P9553129976217571231.a, A151566.P2662618975660010276.f1, A151566.P2662618975660010276.a, A060632, A060632.P4006644986864804916.a, A160742, A160742.P554087851942868596.a, A160744, A160744.P10798283293530994526.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151566

/-! ## A151566.P2813460025221212873

`A160746(n)-A160744(n)`
-/

namespace A151566.P2813460025221212873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160746 n - A160744 n

end

end A151566.P2813460025221212873

namespace A151566

/-- `A160746(n)-A160744(n)` -/
def P2813460025221212873.Spec : Prop :=
  ∀ n, P2813460025221212873.a n = A151566 n

theorem P2813460025221212873.correct : P2813460025221212873.Spec := by
  intro n
  simp only [A151566, Nat.add_sub_cancel, A151566.P2813460025221212873.a, A151566.P2662618975660010276.f1, A151566.P2662618975660010276.a, A060632, A060632.P4006644986864804916.a, A160744, A160744.P10798283293530994526.a, A160746, A160746.P2805536965338767188.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A151566

/-! ## A151566.P2662618975660010276

`∑[A060632(n)]-A060632(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151566

/-- `∑[A060632(n)]-A060632(n)` -/
def P2662618975660010276.Spec : Prop :=
  ∀ n, P2662618975660010276.a n = A151566 n

theorem P2662618975660010276.correct : P2662618975660010276.Spec := by
  intro n
  simp only [A151566]

end A151566

/-! ## A151566.P18392741300200394875

`(A266383(n)-A001316(n))/2`
-/

namespace A151566.P18392741300200394875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266383 n - A001316 n : ℚ) / 2

end

end A151566.P18392741300200394875

namespace A151566

/-- `(A266383(n)-A001316(n))/2` -/
def P18392741300200394875.Spec : Prop :=
  ∀ n, P18392741300200394875.a n = (A151566 n : ℚ)

end A151566

/-! ## A151566.P10327850386932584261

`A006046(n)-A006046(floor(n/2))`
-/

namespace A151566.P10327850386932584261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n - A006046 ⌊(n : ℚ) / 2⌋.toNat

end

end A151566.P10327850386932584261

namespace A151566

/-- `A006046(n)-A006046(floor(n/2))` -/
def P10327850386932584261.Spec : Prop :=
  ∀ n, P10327850386932584261.a n = A151566 n

end A151566

/-! ## A151566.P6968178974525610897

`(∑[A071044(n)]-A001316(n))/2`
-/

namespace A151566.P6968178974525610897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A001316 n : ℤ) : ℚ) / 2

end

end A151566.P6968178974525610897

namespace A151566

/-- `(∑[A071044(n)]-A001316(n))/2` -/
def P6968178974525610897.Spec : Prop :=
  ∀ n, P6968178974525610897.a n = (A151566 n : ℚ)

end A151566

/-! ## A151566.P9630985531864887111

`∑[A261366(xor(1, n+1)-A261366(n))]`
-/

namespace A151566.P9630985531864887111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 ((Nat.xor 1 (n + 1) : ℤ) - A261366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151566.P9630985531864887111

namespace A151566

/-- `∑[A261366(xor(1, n+1)-A261366(n))]` -/
def P9630985531864887111.Spec : Prop :=
  ∀ n, P9630985531864887111.a n = A151566 n

end A151566

/-! ## A151566.P3516417564827473965

`∑[A038573(n%A110654(n+1))]+n`
-/

namespace A151566.P3516417564827473965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (Int.tmod (n : ℤ) (A110654 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A151566.P3516417564827473965

namespace A151566

/-- `∑[A038573(n%A110654(n+1))]+n` -/
def P3516417564827473965.Spec : Prop :=
  ∀ n, P3516417564827473965.a n = A151566 n

end A151566

/-! ## A151566.P12626013036867023118

`(A006046(n)+A006046(A110654(n)))/2`
-/

namespace A151566.P12626013036867023118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006046 n + A006046 (A110654 n).toNat : ℚ) / 2

end

end A151566.P12626013036867023118

namespace A151566

/-- `(A006046(n)+A006046(A110654(n)))/2` -/
def P12626013036867023118.Spec : Prop :=
  ∀ n, P12626013036867023118.a n = (A151566 n : ℚ)

end A151566

/-! ## A151566.P16615774040487383257

`A001281(A160742(n))`
-/

namespace A151566.P16615774040487383257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160742 n).toNat

end

end A151566.P16615774040487383257

namespace A151566

/-- `A001281(A160742(n))` -/
def P16615774040487383257.Spec : Prop :=
  ∀ n, P16615774040487383257.a n = A151566 n

end A151566

/-! ## A151566.P15536734866443784126

`A004525(A266383(n)-A001316(n))`
-/

namespace A151566.P15536734866443784126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A266383 n - A001316 n).toNat

end

end A151566.P15536734866443784126

namespace A151566

/-- `A004525(A266383(n)-A001316(n))` -/
def P15536734866443784126.Spec : Prop :=
  ∀ n, P15536734866443784126.a n = A151566 n

end A151566

/-! ## A151566.P426535303397767037

`A004526(∑[A131136(A004526(n+1))])`
-/

namespace A151566.P426535303397767037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151566.P426535303397767037

namespace A151566

/-- `A004526(∑[A131136(A004526(n+1))])` -/
def P426535303397767037.Spec : Prop :=
  ∀ n, P426535303397767037.a n = A151566 n

end A151566

/-! ## A151566.P10161810746247097561

`A002264(A160744(n))`
-/

namespace A151566.P10161810746247097561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A160744 n).toNat

end

end A151566.P10161810746247097561

namespace A151566

/-- `A002264(A160744(n))` -/
def P10161810746247097561.Spec : Prop :=
  ∀ n, P10161810746247097561.a n = A151566 n

end A151566

/-! ## A151566.P11435591552567269276

`A002265(A160746(n))`
-/

namespace A151566.P11435591552567269276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A160746 n).toNat

end

end A151566.P11435591552567269276

namespace A151566

/-- `A002265(A160746(n))` -/
def P11435591552567269276.Spec : Prop :=
  ∀ n, P11435591552567269276.a n = A151566 n

end A151566

/-!
# A151567: Another version of the toothpick sequence A139250 (see Comments for definition).

The programs for A151567, there is no canonical definition to state claims against.
-/

/-! ## A151567.P9267271239929356030

`ceil(2/3*A295560(n))`
-/

namespace A151567.P9267271239929356030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A295560 n : ℚ)⌉

end

end A151567.P9267271239929356030

/-! ## A151567.P8421825641005122938

`round(2*A295560(2*n-n)/3)`
-/

namespace A151567.P8421825641005122938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A295560 (2 * n - n) : ℚ) / 3)

end

end A151567.P8421825641005122938

/-! ## A151567.P210860180568625196

`A004396(A295560(n))`
-/

namespace A151567.P210860180568625196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A295560 n).toNat

end

end A151567.P210860180568625196

/-! ## A151567.P17256152763529452368

`A004396(∑[A295559(n)])`
-/

namespace A151567.P17256152763529452368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151567.P17256152763529452368

/-! ## A151567.P12575354288732951654

`A004523(A295560(n)+1)`
-/

namespace A151567.P12575354288732951654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A295560 n + 1).toNat

end

end A151567.P12575354288732951654

/-! ## A151567.P17468781729186494093

`A007318(∑[n])*round(2*A295560(n)/3)`
-/

namespace A151567.P17468781729186494093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((2 * A295560 n : ℚ) / 3)

end

end A151567.P17468781729186494093

/-! ## A151567.P16927433397272612792

`round(2*A295560(n)/3)%A000045(n+3)`
-/

namespace A151567.P16927433397272612792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * A295560 n : ℚ) / 3)) (A000045 (n + 3))

end

end A151567.P16927433397272612792

/-! ## A151567.P12424446408700853037

`A007318(C(2, n))²*round(2*A295560(n)/3)`
-/

namespace A151567.P12424446408700853037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * SequenceMachineLib.roundAway ((2 * A295560 n : ℚ) / 3)

end

end A151567.P12424446408700853037

/-! ## A151567.P14848375711504800895

`round(2*A295560(n)/3)^A014963(∑[n+1])`
-/

namespace A151567.P14848375711504800895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((2 * A295560 n : ℚ) / 3) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A151567.P14848375711504800895

/-! ## A151567.P6200924682081839153

`A008683(4*(n+1))+round(2*A295560(n)/3)`
-/

namespace A151567.P6200924682081839153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((2 * A295560 n : ℚ) / 3)

end

end A151567.P6200924682081839153

/-!
# A151568: a(0)=1, a(1)=1; a(2^i+j)=2*a(j)+a(j+1) for 0 <= j < 2^i.

The programs for A151568, there is no canonical definition to state claims against.
-/

/-! ## A151568.P4981483863598613005

`Δ[A187220(n)]-a(n-1)` with `a(0)=1`
-/

namespace A151568.P4981483863598613005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A151568.P4981483863598613005

/-! ## A151568.P8493482176341371908

`2*A139251(n)-a(n-1)` with `a(0)=1`
-/

namespace A151568.P8493482176341371908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A139251 n - a (n - 1)

end

end A151568.P8493482176341371908

/-! ## A151568.P10431697587631855762

`A160552(n)+A151704(n)`
-/

namespace A151568.P10431697587631855762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + A151704 n

end

end A151568.P10431697587631855762

/-! ## A151568.P242951495051951720

`A151865(n)-A151859(n)`
-/

namespace A151568.P242951495051951720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n - A151859 n

end

end A151568.P242951495051951720

/-! ## A151568.P17296853357933340878

`A151569(n)-A160552(n)`
-/

namespace A151568.P17296853357933340878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A160552 n

end

end A151568.P17296853357933340878

/-! ## A151568.P3923326466039545832

`A033999(n)+2*A160552(n)`
-/

namespace A151568.P3923326466039545832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A160552 n

end

end A151568.P3923326466039545832

/-! ## A151568.P15445538709722368669

`2*A151704(n)-A033999(n)`
-/

namespace A151568.P15445538709722368669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151704 n - A033999 n

end

end A151568.P15445538709722368669

/-! ## A151568.P6427253342835546842

`(A151704(n)+A151569(n))/2`
-/

namespace A151568.P6427253342835546842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151704 n + A151569 n : ℚ) / 2

end

end A151568.P6427253342835546842

/-! ## A151568.P18030784513327639880

`A187220(n+1)-(A187220(n)+a(n-1))` with `a(0)=1`
-/

namespace A151568.P18030784513327639880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187220 (n + 1) - (A187220 n + a (n - 1))

end

end A151568.P18030784513327639880

/-! ## A151568.P17039510469349223180

`A151704(n)+xor(A151704(n), A153284(n+1))`
-/

namespace A151568.P17039510469349223180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 n + Int.xor (A151704 n) (A153284 (n + 1))

end

end A151568.P17039510469349223180

/-! ## A151568.P16276183367155273794

`A160552(n)+xor(A153284(n+1), A160552(n))`
-/

namespace A151568.P16276183367155273794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + Int.xor (A153284 (n + 1)) (A160552 n)

end

end A151568.P16276183367155273794

/-! ## A151568.P7777015372384535545

`A151548(n)-A151704(n+1)`
-/

namespace A151568.P7777015372384535545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A151704 (n + 1)

end

end A151568.P7777015372384535545

/-! ## A151568.P5944991155295440158

`A266530(A004277(n))+A151569(n)-A139250(n)`
-/

namespace A151568.P5944991155295440158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (A004277 n).toNat + (A151569 n - A139250 n)

end

end A151568.P5944991155295440158

/-! ## A151568.P9103187323705589795

`A139250(n)+A151704(n)-A266530(A004277(n))`
-/

namespace A151568.P9103187323705589795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A151704 n - A266530 (A004277 n).toNat)

end

end A151568.P9103187323705589795

/-! ## A151568.P17253609660246482358

`A266529(Δ[n²])+A151704(n)`
-/

namespace A151568.P17253609660246482358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A151704 n

end

end A151568.P17253609660246482358

/-! ## A151568.P15556773778707742858

`A151569(n)-A266529(Δ[n²])`
-/

namespace A151568.P15556773778707742858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A151568.P15556773778707742858

/-! ## A151568.P10043176708402807612

`A187221(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A151568.P10043176708402807612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187221 (n + 1) - a (n - 1)

end

end A151568.P10043176708402807612

/-! ## A151568.P5389374873586594629

`A004396(A151569(n))`
-/

namespace A151568.P5389374873586594629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151569 n).toNat

end

end A151568.P5389374873586594629

/-! ## A151568.P13352958252345492907

`A255049(n)+A033999(n)`
-/

namespace A151568.P13352958252345492907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255049 n + A033999 n

end

end A151568.P13352958252345492907

/-! ## A151568.P8286713493605565027

`xor(A010684(n), A255049(n))`
-/

namespace A151568.P8286713493605565027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A255049 n)

end

end A151568.P8286713493605565027

/-!
# A151569: a(0)=1, a(1)=2; a(2^i+j)=2*a(j)+a(j+1) for 0 <= j < 2^i.

The programs for A151569, there is no canonical definition to state claims against.
-/

/-! ## A151569.P3293396128547904622

`3*A139251(n)-a(n-1)` with `a(0)=1`
-/

namespace A151569.P3293396128547904622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A139251 n - a (n - 1)

end

end A151569.P3293396128547904622

/-! ## A151569.P7952262021669061120

`A160552(n)+A151568(n)`
-/

namespace A151569.P7952262021669061120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + A151568 n

end

end A151569.P7952262021669061120

/-! ## A151569.P15590447105974396082

`A151704(n)+2*A160552(n)`
-/

namespace A151569.P15590447105974396082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 n + 2 * A160552 n

end

end A151569.P15590447105974396082

/-! ## A151569.P5434605499860075159

`2*A151568(n)-A151704(n)`
-/

namespace A151569.P5434605499860075159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151568 n - A151704 n

end

end A151569.P5434605499860075159

/-! ## A151569.P77713157016531032

`A151548(n)+A151568(n)-A139251(n+1)`
-/

namespace A151569.P77713157016531032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n + (A151568 n - A139251 (n + 1))

end

end A151569.P77713157016531032

/-! ## A151569.P569218559421793684

`A139250(n)+A151568(n)-A266530(A004277(n))`
-/

namespace A151569.P569218559421793684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A151568 n - A266530 (A004277 n).toNat)

end

end A151569.P569218559421793684

/-! ## A151569.P12306398908819824801

`A266529(Δ[n²])+A151568(n)`
-/

namespace A151569.P12306398908819824801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A151568 n

end

end A151569.P12306398908819824801

/-! ## A151569.P3631391038706101212

`A151568(n)+A255046(n)-A255045(n+1)`
-/

namespace A151569.P3631391038706101212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n + (A255046 n - A255045 (n + 1))

end

end A151569.P3631391038706101212

/-! ## A151569.P15960367825971222690

`A004277(A151568(n))-A151704(n)`
-/

namespace A151569.P15960367825971222690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151568 n).toNat - A151704 n

end

end A151569.P15960367825971222690

/-! ## A151569.P783864394891518520

`A255049(n)+A151704(n)`
-/

namespace A151569.P783864394891518520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255049 n + A151704 n

end

end A151569.P783864394891518520

/-!
# A151570: a(0)=1, a(1)=1; a(2^i + j) = a(j) + a(j+1) for 0 <= j < 2^i.

The programs for A151570, there is no canonical definition to state claims against.
-/

/-! ## A151570.P4596297723006706330

`A151702(n)+A118977(n)`
-/

namespace A151570.P4596297723006706330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n + A118977 n

end

end A151570.P4596297723006706330

/-! ## A151570.P887182062024973256

`A151571(n)-A118977(n)`
-/

namespace A151570.P887182062024973256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - A118977 n

end

end A151570.P887182062024973256

/-! ## A151570.P5738301575035400539

`A151849(n)-A151843(n)`
-/

namespace A151570.P5738301575035400539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n - A151843 n

end

end A151570.P5738301575035400539

/-! ## A151570.P18432130591101485623

`A151846(n)-A151847(n+1)`
-/

namespace A151570.P18432130591101485623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 n - A151847 (n + 1)

end

end A151570.P18432130591101485623

/-! ## A151570.P15481638984815745052

`A151848(n)-A151843(n+1)`
-/

namespace A151570.P15481638984815745052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151848 n - A151843 (n + 1)

end

end A151570.P15481638984815745052

/-! ## A151570.P5356872243341353058

`(A151702(n)+A151571(n))/2`
-/

namespace A151570.P5356872243341353058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151702 n + A151571 n : ℚ) / 2

end

end A151570.P5356872243341353058

/-! ## A151570.P5309925083297844168

`A151843(n)+A151850(n)-A151846(n)`
-/

namespace A151570.P5309925083297844168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151850 n - A151846 n)

end

end A151570.P5309925083297844168

/-! ## A151570.P15824502003969603180

`A151845(n+1)+A151845(n)-A151847(n+1)`
-/

namespace A151570.P15824502003969603180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (n + 1) + (A151845 n - A151847 (n + 1))

end

end A151570.P15824502003969603180

/-! ## A151570.P2618269511798084368

`A151847(n+1)+A151847(n)-A151843(n+1)`
-/

namespace A151570.P2618269511798084368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) + (A151847 n - A151843 (n + 1))

end

end A151570.P2618269511798084368

/-! ## A151570.P11378516995394064641

`A151847(n)+A151702(n+1)`
-/

namespace A151570.P11378516995394064641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n + A151702 (n + 1)

end

end A151570.P11378516995394064641

/-! ## A151570.P1017634737014493877

`A151571(n)-Δ[A151702(n)]-A151847(n)`
-/

namespace A151570.P1017634737014493877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - (f1 (n + 1) - f1 n) - A151847 n

end

end A151570.P1017634737014493877

/-! ## A151570.P13386704936029428167

`A151843(n)+A151702(A206332(n+1))`
-/

namespace A151570.P13386704936029428167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + A151702 (A206332 (n + 1)).toNat

end

end A151570.P13386704936029428167

/-!
# A151571: a(0)=1, a(1)=2; a(2^i + j) = a(j) + a(j+1) for 0 <= j < 2^i.

The programs for A151571, there is no canonical definition to state claims against.
-/

/-! ## A151571.P1112120441343313848

`A151570(n)+A118977(n)`
-/

namespace A151571.P1112120441343313848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n + A118977 n

end

end A151571.P1112120441343313848

/-! ## A151571.P10794410535287699429

`A151850(n)-A151845(n+1)`
-/

namespace A151571.P10794410535287699429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151850 n - A151845 (n + 1)

end

end A151571.P10794410535287699429

/-! ## A151571.P6201594682103312795

`A151702(n)+2*A118977(n)`
-/

namespace A151571.P6201594682103312795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n + 2 * A118977 n

end

end A151571.P6201594682103312795

/-! ## A151571.P10113113240091355526

`2*A151570(n)-A151702(n)`
-/

namespace A151571.P10113113240091355526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151570 n - A151702 n

end

end A151571.P10113113240091355526

/-! ## A151571.P16049475487169703730

`A151702(n)+A005843(A118977(n))`
-/

namespace A151571.P16049475487169703730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n + A005843 (A118977 n).toNat

end

end A151571.P16049475487169703730

/-! ## A151571.P14273641865667751832

`A004277(A151570(n))-A151702(n)`
-/

namespace A151571.P14273641865667751832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151570 n).toNat - A151702 n

end

end A151571.P14273641865667751832

/-! ## A151571.P15269968997356927425

`A151570(n)+A151845(n)-A151843(n)`
-/

namespace A151571.P15269968997356927425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n + (A151845 n - A151843 n)

end

end A151571.P15269968997356927425

/-! ## A151571.P4197310073021287863

`A151846(n)+A151849(n)-A151848(n)`
-/

namespace A151571.P4197310073021287863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 n + (A151849 n - A151848 n)

end

end A151571.P4197310073021287863

/-! ## A151571.P16016492828334305437

`A151843(n)+A151846(n)-A151843(n+1)`
-/

namespace A151571.P16016492828334305437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151846 n - A151843 (n + 1))

end

end A151571.P16016492828334305437

/-! ## A151571.P3354477798308763759

`A151849(n)+A151702(n+1)`
-/

namespace A151571.P3354477798308763759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n + A151702 (n + 1)

end

end A151571.P3354477798308763759

/-! ## A151571.P12733606364105459953

`Δ[A118977(n)]+2*A151845(n)`
-/

namespace A151571.P12733606364105459953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A151845 n

end

end A151571.P12733606364105459953

/-! ## A151571.P5157153805630403855

`A005843(A151845(n))+Δ[A118977(n)]`
-/

namespace A151571.P5157153805630403855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151845 n).toNat + (f1 (n + 1) - f1 n)

end

end A151571.P5157153805630403855

/-! ## A151571.P10110209119091731198

`A151849(n+1)+A151849(n)-A151845(n+1)`
-/

namespace A151571.P10110209119091731198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 (n + 1) + (A151849 n - A151845 (n + 1))

end

end A151571.P10110209119091731198

/-! ## A151571.P6636735338307825685

`A151845(n)+A151702(A206332(n+1))`
-/

namespace A151571.P6636735338307825685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 n + A151702 (A206332 (n + 1)).toNat

end

end A151571.P6636735338307825685

/-!
# A151572: a(0)=0, a(1)=1; a(2^i + j) = a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151572, there is no canonical definition to state claims against.
-/

/-! ## A151572.P6447352557005503999

`A151574(n)-A151573(n)`
-/

namespace A151572.P6447352557005503999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - A151573 n

end

end A151572.P6447352557005503999

/-! ## A151572.P11549928327588207067

`A151573(n)-A151703(n)`
-/

namespace A151572.P11549928327588207067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n - A151703 n

end

end A151572.P11549928327588207067

/-! ## A151572.P1930842909907512658

`A151853(n)-A151851(n)`
-/

namespace A151572.P1930842909907512658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151853 n - A151851 n

end

end A151572.P1930842909907512658

/-! ## A151572.P18063847852366376273

`A151857(n)-A151855(n)`
-/

namespace A151572.P18063847852366376273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n - A151855 n

end

end A151572.P18063847852366376273

/-! ## A151572.P9393300454254349058

`(A151574(n)-A151703(n))/2`
-/

namespace A151572.P9393300454254349058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151574 n - A151703 n : ℚ) / 2

end

end A151572.P9393300454254349058

/-! ## A151572.P12752159628765182074

`A014682(A151574(n)-A151703(n))`
-/

namespace A151572.P12752159628765182074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151574 n - A151703 n).toNat

end

end A151572.P12752159628765182074

/-! ## A151572.P10795616509169871645

`A151574(n)-A000265(A151703(n)+A151574(n))`
-/

namespace A151572.P10795616509169871645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - A000265 (A151703 n + A151574 n).toNat

end

end A151572.P10795616509169871645

/-! ## A151572.P15435114304523108785

`A004525(A151574(n)-A151703(n))`
-/

namespace A151572.P15435114304523108785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151574 n - A151703 n).toNat

end

end A151572.P15435114304523108785

/-! ## A151572.P7457076039814862184

`A004526(A151574(n)-A151703(n))`
-/

namespace A151572.P7457076039814862184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151574 n - A151703 n).toNat

end

end A151572.P7457076039814862184

/-! ## A151572.P15977009864326250595

`A151574(n)-A065033(A151703(n)+A151574(n))`
-/

namespace A151572.P15977009864326250595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - A065033 (A151703 n + A151574 n).toNat

end

end A151572.P15977009864326250595

/-!
# A151573: a(0)=1, a(1)=1; a(2^i + j) = a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151573, there is no canonical definition to state claims against.
-/

/-! ## A151573.P3425660802555719501

`A151703(n)+A151572(n)`
-/

namespace A151573.P3425660802555719501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + A151572 n

end

end A151573.P3425660802555719501

/-! ## A151573.P4396732270477415788

`A151574(n)-A151572(n)`
-/

namespace A151573.P4396732270477415788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - A151572 n

end

end A151573.P4396732270477415788

/-! ## A151573.P4181911561809440166

`A151857(n)-A151851(n)`
-/

namespace A151573.P4181911561809440166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n - A151851 n

end

end A151573.P4181911561809440166

/-! ## A151573.P11087647937457014323

`(A151703(n)+A151574(n))/2`
-/

namespace A151573.P11087647937457014323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151703 n + A151574 n : ℚ) / 2

end

end A151573.P11087647937457014323

/-! ## A151573.P4848062035149444043

`A151703(n)+A014682(A151574(n)-A151703(n))`
-/

namespace A151573.P4848062035149444043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + A014682 (A151574 n - A151703 n).toNat

end

end A151573.P4848062035149444043

/-! ## A151573.P18145017915648347251

`A000265(A151703(n)+A151574(n))`
-/

namespace A151573.P18145017915648347251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A151703 n + A151574 n).toNat

end

end A151573.P18145017915648347251

/-! ## A151573.P18231940629519306494

`A014682(A151703(n)+A151574(n))`
-/

namespace A151573.P18231940629519306494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151703 n + A151574 n).toNat

end

end A151573.P18231940629519306494

/-! ## A151573.P8621521241069247574

`A151574(n)-A004526(A151574(n)-A151703(n))`
-/

namespace A151573.P8621521241069247574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - A004526 (A151574 n - A151703 n).toNat

end

end A151573.P8621521241069247574

/-! ## A151573.P9590302035626894277

`A004525(A151703(n)+A151574(n))`
-/

namespace A151573.P9590302035626894277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151703 n + A151574 n).toNat

end

end A151573.P9590302035626894277

/-! ## A151573.P5887384690359093505

`A004526(A151703(n)+A151574(n))`
-/

namespace A151573.P5887384690359093505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151703 n + A151574 n).toNat

end

end A151573.P5887384690359093505

/-! ## A151573.P7381214242943832570

`A065033(A151703(n)+A151574(n))`
-/

namespace A151573.P7381214242943832570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151703 n + A151574 n).toNat

end

end A151573.P7381214242943832570

/-! ## A151573.P16617611163364343539

`A004525(A151574(n)-(1-A151703(n)))`
-/

namespace A151573.P16617611163364343539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151574 n - (1 - A151703 n)).toNat

end

end A151573.P16617611163364343539

/-! ## A151573.P17229754661416137090

`A065033(A151574(n)-(1-A151703(n)))`
-/

namespace A151573.P17229754661416137090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151574 n - (1 - A151703 n)).toNat

end

end A151573.P17229754661416137090

/-!
# A151574: a(0)=1, a(1)=2; a(2^i + j) = a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151574, there is no canonical definition to state claims against.
-/

/-! ## A151574.P11025558367456737895

`A151573(n)+A151572(n)`
-/

namespace A151574.P11025558367456737895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n + A151572 n

end

end A151574.P11025558367456737895

/-! ## A151574.P2357623095410446455

`A151703(n)+2*A151572(n)`
-/

namespace A151574.P2357623095410446455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + 2 * A151572 n

end

end A151574.P2357623095410446455

/-! ## A151574.P1004642381519512476

`2*A151573(n)-A151703(n)`
-/

namespace A151574.P1004642381519512476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151573 n - A151703 n

end

end A151574.P1004642381519512476

/-! ## A151574.P4398354788889417612

`A151703(n)+A005843(A151572(n))`
-/

namespace A151574.P4398354788889417612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n + A005843 (A151572 n).toNat

end

end A151574.P4398354788889417612

/-! ## A151574.P3816450791767679165

`A004277(A151573(n))-A151703(n)`
-/

namespace A151574.P3816450791767679165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151573 n).toNat - A151703 n

end

end A151574.P3816450791767679165

/-! ## A151574.P1219521341492661680

`A151572(n)+A028310(A151703(n)+A151572(n))`
-/

namespace A151574.P1219521341492661680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + A028310 (A151703 n + A151572 n).toNat

end

end A151574.P1219521341492661680

/-!
# A151575: G.f.: (1+x)/(1+x-2*x^2).

The programs for A151575, the canonical program `A151575.P12730425805375642226` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151575 has offset 0).

The definition of A151575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151575.P16830309048051702546

`(2+(-2)^n)/3`
-/

namespace A151575.P16830309048051702546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (-2) ^ n : ℚ) / 3

end

end A151575.P16830309048051702546

namespace A151575

/-- `(2+(-2)^n)/3` -/
def P16830309048051702546.Spec : Prop :=
  ∀ n, P16830309048051702546.a n = (A151575 n : ℚ)

end A151575

/-! ## A151575.P12730425805375642226

`(-1)^n*A078008(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151575

/-- `(-1)^n*A078008(n)` -/
def P12730425805375642226.Spec : Prop :=
  ∀ n, P12730425805375642226.a n = A151575 n

theorem P12730425805375642226.correct : P12730425805375642226.Spec := by
  intro n
  simp only [A151575]

end A151575

/-! ## A151575.P6133493216572660681

`∑[ogf((1+x)/(1+2x))]`
-/

namespace A151575.P6133493216572660681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151575.P6133493216572660681

namespace A151575

/-- `∑[ogf((1+x)/(1+2x))]` -/
def P6133493216572660681.Spec : Prop :=
  ∀ n, P6133493216572660681.a n = A151575 n

end A151575

/-! ## A151575.P5100858654874043230

`ogf((1+x)/(1+x-2x^2))`
-/

namespace A151575.P5100858654874043230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 1, -2] n

end

end A151575.P5100858654874043230

namespace A151575

/-- `ogf((1+x)/(1+x-2x^2))` -/
def P5100858654874043230.Spec : Prop :=
  ∀ n, P5100858654874043230.a n = A151575 n

end A151575

/-! ## A151575.P982898475666217287

`2*(1-a(n-1))` with `a(0)=1`
-/

namespace A151575.P982898475666217287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - a (n - 1))

end

end A151575.P982898475666217287

namespace A151575

/-- `2*(1-a(n-1))` -/
def P982898475666217287.Spec : Prop :=
  ∀ n, P982898475666217287.a n = A151575 n

end A151575

/-! ## A151575.P1418209829898370093

`a(n-1)-(-2)^(n-1)` with `a(0)=1`
-/

namespace A151575.P1418209829898370093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A151575.P1418209829898370093

namespace A151575

/-- `a(n-1)-(-2)^(n-1)` -/
def P1418209829898370093.Spec : Prop :=
  ∀ n, P1418209829898370093.a n = (A151575 n : ℚ)

end A151575

/-! ## A151575.P14656083918849597579

`2-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A151575.P14656083918849597579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) + a (n - 1))

end

end A151575.P14656083918849597579

namespace A151575

/-- `2-(a(n-1)+a(n-1))` -/
def P14656083918849597579.Spec : Prop :=
  ∀ n, P14656083918849597579.a n = A151575 n

end A151575

/-! ## A151575.P2918429071153405439

`2-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A151575.P2918429071153405439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - a (n - 1) - a (n - 1)

end

end A151575.P2918429071153405439

namespace A151575

/-- `2-a(n-1)-a(n-1)` -/
def P2918429071153405439.Spec : Prop :=
  ∀ n, P2918429071153405439.a n = A151575 n

end A151575

/-! ## A151575.P18410113622280663475

`A140966(n)-1`
-/

namespace A151575.P18410113622280663475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n - 1

end

end A151575.P18410113622280663475

namespace A151575

/-- `A140966(n)-1` -/
def P18410113622280663475.Spec : Prop :=
  ∀ n, P18410113622280663475.a n = A151575 n

end A151575

/-! ## A151575.P12147811897921226085

`2-A084247(n)`
-/

namespace A151575.P12147811897921226085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084247 n

end

end A151575.P12147811897921226085

namespace A151575

/-- `2-A084247(n)` -/
def P12147811897921226085.Spec : Prop :=
  ∀ n, P12147811897921226085.a n = A151575 n

end A151575

/-! ## A151575.P14576932356526199109

`A078052(2*n)`
-/

namespace A151575.P14576932356526199109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 (2 * n)

end

end A151575.P14576932356526199109

namespace A151575

/-- `A078052(2*n)` -/
def P14576932356526199109.Spec : Prop :=
  ∀ n, P14576932356526199109.a n = A151575 n

end A151575

/-! ## A151575.P7282508984784724569

`5-A268741(n)`
-/

namespace A151575.P7282508984784724569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A268741 n

end

end A151575.P7282508984784724569

namespace A151575

/-- `5-A268741(n)` -/
def P7282508984784724569.Spec : Prop :=
  ∀ n, P7282508984784724569.a n = A151575 n

end A151575

/-! ## A151575.P15458360168387152896

`xor(1, A171501(n))`
-/

namespace A151575.P15458360168387152896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A171501 n)

end

end A151575.P15458360168387152896

namespace A151575

/-- `xor(1, A171501(n))` -/
def P15458360168387152896.Spec : Prop :=
  ∀ n, P15458360168387152896.a n = A151575 n

end A151575

/-! ## A151575.P12837777998396659537

`Δ[-A140962(n)]`
-/

namespace A151575.P12837777998396659537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151575.P12837777998396659537

namespace A151575

/-- `Δ[-A140962(n)]` -/
def P12837777998396659537.Spec : Prop :=
  ∀ n, P12837777998396659537.a n = A151575 n

end A151575

/-! ## A151575.P13677693730002942441

`∑[∑[A110164(n)]]`
-/

namespace A151575.P13677693730002942441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151575.P13677693730002942441

namespace A151575

/-- `∑[∑[A110164(n)]]` -/
def P13677693730002942441.Spec : Prop :=
  ∀ n, P13677693730002942441.a n = A151575 n

end A151575

/-! ## A151575.P9531421827653252056

`2-∑[A123344(n)]`
-/

namespace A151575.P9531421827653252056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151575.P9531421827653252056

namespace A151575

/-- `2-∑[A123344(n)]` -/
def P9531421827653252056.Spec : Prop :=
  ∀ n, P9531421827653252056.a n = A151575 n

end A151575

/-! ## A151575.P2653489302545550560

`∑[A117575(2*n)]`
-/

namespace A151575.P2653489302545550560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151575.P2653489302545550560

namespace A151575

/-- `∑[A117575(2*n)]` -/
def P2653489302545550560.Spec : Prop :=
  ∀ n, P2653489302545550560.a n = A151575 n

end A151575

/-! ## A151575.P15431245141686497025

`∑[∑[∑[A279634(n)]]]`
-/

namespace A151575.P15431245141686497025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151575.P15431245141686497025

namespace A151575

/-- `∑[∑[∑[A279634(n)]]]` -/
def P15431245141686497025.Spec : Prop :=
  ∀ n, P15431245141686497025.a n = A151575 n

end A151575

/-! ## A151575.P13636478419057159896

`A052992(n)-A000225(n)`
-/

namespace A151575.P13636478419057159896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n - A000225 n

end

end A151575.P13636478419057159896

namespace A151575

/-- `A052992(n)-A000225(n)` -/
def P13636478419057159896.Spec : Prop :=
  ∀ n, P13636478419057159896.a n = A151575 n

end A151575

/-! ## A151575.P14485265148653999364

`A166752(n)-A001045(n)`
-/

namespace A151575.P14485265148653999364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n - A001045 n

end

end A151575.P14485265148653999364

namespace A151575

/-- `A166752(n)-A001045(n)` -/
def P14485265148653999364.Spec : Prop :=
  ∀ n, P14485265148653999364.a n = A151575 n

end A151575

/-!
# A151576: Number of permutations of 1..n arranged in a circle with exactly 3 adjacent element pairs in decreasing order.

The programs for A151576, the canonical program `A151576.P1769516149050097514` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151576 has offset 3).

The definition of A151576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151576.P1769516149050097514

`(n+3)*(3^(n+2)-(n+3)*2^(n+2)+(n+3)*(n+2)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151576

/-- `(n+3)*(3^(n+2)-(n+3)*2^(n+2)+(n+3)*(n+2)/2)` -/
def P1769516149050097514.Spec : Prop :=
  ∀ n, P1769516149050097514.a n = (A151576 (n + 3) : ℚ)

end A151576

/-! ## A151576.P14729515312470909062

`A334218(A167614(n+2))`
-/

namespace A151576.P14729515312470909062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A167614 (n + 2)).toNat

end

end A151576.P14729515312470909062

namespace A151576

/-- `A334218(A167614(n+2))` -/
def P14729515312470909062.Spec : Prop :=
  ∀ n, P14729515312470909062.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P4254771049000314410

`A334218(A052905(n)+8)`
-/

namespace A151576.P4254771049000314410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A052905 n + 8).toNat

end

end A151576.P4254771049000314410

namespace A151576

/-- `A334218(A052905(n)+8)` -/
def P4254771049000314410.Spec : Prop :=
  ∀ n, P4254771049000314410.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P14792764732170078650

`A334218(A055999(n)+9)`
-/

namespace A151576.P14792764732170078650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A055999 n + 9).toNat

end

end A151576.P14792764732170078650

namespace A151576

/-- `A334218(A055999(n)+9)` -/
def P14792764732170078650.Spec : Prop :=
  ∀ n, P14792764732170078650.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P4209224696298954256

`A334218(eq[3, A002262(n)])`
-/

namespace A151576.P4209224696298954256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151576.P4209224696298954256

namespace A151576

/-- `A334218(eq[3, A002262(n)])` -/
def P4209224696298954256.Spec : Prop :=
  ∀ n, P4209224696298954256.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P6383337046927991423

`A334218(eq[1, A144328(n+1)-2])`
-/

namespace A151576.P6383337046927991423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151576.P6383337046927991423

namespace A151576

/-- `A334218(eq[1, A144328(n+1)-2])` -/
def P6383337046927991423.Spec : Prop :=
  ∀ n, P6383337046927991423.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P11342934730057983820

`A334218(eq[2, A002260(n+1)-2])`
-/

namespace A151576.P11342934730057983820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151576.P11342934730057983820

namespace A151576

/-- `A334218(eq[2, A002260(n+1)-2])` -/
def P11342934730057983820.Spec : Prop :=
  ∀ n, P11342934730057983820.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P11604700806366119093

`A334218(eq[2, A002260(n+1)/2])`
-/

namespace A151576.P11604700806366119093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A151576.P11604700806366119093

namespace A151576

/-- `A334218(eq[2, A002260(n+1)/2])` -/
def P11604700806366119093.Spec : Prop :=
  ∀ n, P11604700806366119093.a n = A151576 (n + 3)

end A151576

/-! ## A151576.P18388684063924321053

`A334218(∑[n+3]+n+3)`
-/

namespace A151576.P18388684063924321053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A151576.P18388684063924321053

namespace A151576

/-- `A334218(∑[n+3]+n+3)` -/
def P18388684063924321053.Spec : Prop :=
  ∀ n, P18388684063924321053.a n = A151576 (n + 3)

end A151576

/-!
# A151577: Number of permutations of 1..n arranged in a circle with exactly 4 adjacent element pairs in decreasing order.

The programs for A151577, the canonical program `A151577.P12247410866759644079` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151577 has offset 4).

The definition of A151577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151577.P12247410866759644079

`(n+4)*(4^(n+3)-(n+4)*3^(n+3)+C(n+4, 2)*2^(n+3)-C(n+4, 3))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151577

/-- `(n+4)*(4^(n+3)-(n+4)*3^(n+3)+C(n+4, 2)*2^(n+3)-C(n+4, 3))` -/
def P12247410866759644079.Spec : Prop :=
  ∀ n, P12247410866759644079.a n = A151577 (n + 4)

theorem P12247410866759644079.correct : P12247410866759644079.Spec := by
  intro n
  simp only [A151577, Nat.add_sub_cancel]

end A151577

/-! ## A151577.P853296433051100071

`(n+4)*A066912(n)`
-/

namespace A151577.P853296433051100071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A066912 n

end

end A151577.P853296433051100071

namespace A151577

/-- `(n+4)*A066912(n)` -/
def P853296433051100071.Spec : Prop :=
  ∀ n, P853296433051100071.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P10643163006204159902

`(n+4)*A173018(A167614(n+2))`
-/

namespace A151577.P10643163006204159902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A173018 (A167614 (n + 2)).toNat

end

end A151577.P10643163006204159902

namespace A151577

/-- `(n+4)*A173018(A167614(n+2))` -/
def P10643163006204159902.Spec : Prop :=
  ∀ n, P10643163006204159902.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P1370505709664803148

`(n+4)*A123125(A167614(n+2)+1)`
-/

namespace A151577.P1370505709664803148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A123125 (A167614 (n + 2) + 1).toNat

end

end A151577.P1370505709664803148

namespace A151577

/-- `(n+4)*A123125(A167614(n+2)+1)` -/
def P1370505709664803148.Spec : Prop :=
  ∀ n, P1370505709664803148.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P3938711485006486813

`A334218(eq[4, A002262(n)])`
-/

namespace A151577.P3938711485006486813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151577.P3938711485006486813

namespace A151577

/-- `A334218(eq[4, A002262(n)])` -/
def P3938711485006486813.Spec : Prop :=
  ∀ n, P3938711485006486813.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P3287870377077936392

`A334218(eq[2, A144328(n+1)-2])`
-/

namespace A151577.P3287870377077936392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151577.P3287870377077936392

namespace A151577

/-- `A334218(eq[2, A144328(n+1)-2])` -/
def P3287870377077936392.Spec : Prop :=
  ∀ n, P3287870377077936392.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P2315982656011684376

`A334218(eq[2, A144328(n+1)/2])`
-/

namespace A151577.P2315982656011684376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A151577.P2315982656011684376

namespace A151577

/-- `A334218(eq[2, A144328(n+1)/2])` -/
def P2315982656011684376.Spec : Prop :=
  ∀ n, P2315982656011684376.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P10557773630174671165

`(n+4)*A173018(A000096(n+3)-4)`
-/

namespace A151577.P10557773630174671165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A173018 (A000096 (n + 3) - 4).toNat

end

end A151577.P10557773630174671165

namespace A151577

/-- `(n+4)*A173018(A000096(n+3)-4)` -/
def P10557773630174671165.Spec : Prop :=
  ∀ n, P10557773630174671165.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P8075167058947735295

`A334218(A052905(n+2))`
-/

namespace A151577.P8075167058947735295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A052905 (n + 2)).toNat

end

end A151577.P8075167058947735295

namespace A151577

/-- `A334218(A052905(n+2))` -/
def P8075167058947735295.Spec : Prop :=
  ∀ n, P8075167058947735295.a n = A151577 (n + 4)

end A151577

/-! ## A151577.P3674036532860272514

`A334218(eq[4, A025581(n)])`
-/

namespace A151577.P3674036532860272514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151577.P3674036532860272514

namespace A151577

/-- `A334218(eq[4, A025581(n)])` -/
def P3674036532860272514.Spec : Prop :=
  ∀ n, P3674036532860272514.a n = A151577 (n + 4)

end A151577

/-!
# A151578: Number of permutations of 1..n arranged in a circle with exactly 5 adjacent element pairs in decreasing order.

The programs for A151578, there is no canonical definition to state claims against.
-/

/-! ## A151578.P15461037116309815464

`A334218(eq[5, A002262(n)])`
-/

namespace A151578.P15461037116309815464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151578.P15461037116309815464

/-! ## A151578.P2814944293560911572

`A334218(eq[6, A002260(n+1)])`
-/

namespace A151578.P2814944293560911572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151578.P2814944293560911572

/-! ## A151578.P8230647810960605314

`A334218(A055999(n+3))`
-/

namespace A151578.P8230647810960605314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A055999 (n + 3)).toNat

end

end A151578.P8230647810960605314

/-! ## A151578.P13169976752099762986

`A334218(A056119(n)+15)`
-/

namespace A151578.P13169976752099762986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A056119 n + 15).toNat

end

end A151578.P13169976752099762986

/-! ## A151578.P12162981480816079144

`A334218(A055998(n+4)-3)`
-/

namespace A151578.P12162981480816079144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (A055998 (n + 4) - 3).toNat

end

end A151578.P12162981480816079144

/-! ## A151578.P14852215866968254864

`A334218(eq[6, A004736(n+1)])`
-/

namespace A151578.P14852215866968254864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151578.P14852215866968254864

/-!
# A151579: Number of permutations of 1..n arranged in a circle with exactly 6 adjacent element pairs in decreasing order.

The programs for A151579, there is no canonical definition to state claims against.
-/

/-! ## A151579.P7204993502219598369

`(n+6)*A123125(A166136(n+4))`
-/

namespace A151579.P7204993502219598369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A123125 (A166136 (n + 4)).toNat

end

end A151579.P7204993502219598369

/-! ## A151579.P10848574168508828607

`(n+6)*A123125(A000217(n+5)+6)`
-/

namespace A151579.P10848574168508828607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A123125 (A000217 (n + 5) + 6).toNat

end

end A151579.P10848574168508828607

/-! ## A151579.P2469642702797430807

`A334218(eq[7, A002260(n+1)])`
-/

namespace A151579.P2469642702797430807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151579.P2469642702797430807

/-! ## A151579.P12709975702761243355

`A334218(eq[13, A099375(n)])`
-/

namespace A151579.P12709975702761243355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151579.P12709975702761243355

/-! ## A151579.P12717614981071386372

`A334218(eq[7, A004736(n+1)])`
-/

namespace A151579.P12717614981071386372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151579.P12717614981071386372

/-!
# A151580: Number of permutations of 1..n arranged in a circle with exactly 7 adjacent element pairs in decreasing order.

The programs for A151580, there is no canonical definition to state claims against.
-/

/-! ## A151580.P7441011831223417140

`A334218(eq[7, A144328(n+1)])`
-/

namespace A151580.P7441011831223417140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151580.P7441011831223417140

/-! ## A151580.P17220549198874329774

`A334218(eq[8, A002260(n+1)])`
-/

namespace A151580.P17220549198874329774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151580.P17220549198874329774

/-! ## A151580.P2486129176110333779

`A334218(eq[7, A025581(n)])`
-/

namespace A151580.P2486129176110333779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151580.P2486129176110333779

/-! ## A151580.P6898804929451275945

`A334218(eq[15, A099375(n)])`
-/

namespace A151580.P6898804929451275945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151580.P6898804929451275945

/-! ## A151580.P3275219539319384716

`A334218(eq[8, A004736(n+1)])`
-/

namespace A151580.P3275219539319384716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151580.P3275219539319384716

/-!
# A151581: Number of permutations of 1..n arranged in a circle with exactly 8 adjacent element pairs in decreasing order.

The programs for A151581, there is no canonical definition to state claims against.
-/

/-! ## A151581.P16483064332860685945

`A334218(eq[8, A002262(n)])`
-/

namespace A151581.P16483064332860685945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151581.P16483064332860685945

/-! ## A151581.P3912275617415881370

`A334218(eq[9, A002260(n+1)])`
-/

namespace A151581.P3912275617415881370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151581.P3912275617415881370

/-! ## A151581.P18274534079586205413

`A334218(eq[8, A025581(n)])`
-/

namespace A151581.P18274534079586205413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151581.P18274534079586205413

/-! ## A151581.P12314872657877654742

`A334218(eq[8, A144257(n+1)])`
-/

namespace A151581.P12314872657877654742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151581.P12314872657877654742

/-! ## A151581.P2971955551983642210

`A334218(eq[9, A004736(n+1)])`
-/

namespace A151581.P2971955551983642210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151581.P2971955551983642210

/-!
# A151582: Number of permutations of 1..n arranged in a circle with exactly 9 adjacent element pairs in decreasing order.

The programs for A151582, there is no canonical definition to state claims against.
-/

/-! ## A151582.P11328226555013121232

`A334218(eq[9, A002262(n)])`
-/

namespace A151582.P11328226555013121232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151582.P11328226555013121232

/-! ## A151582.P361006517665131896

`A334218(eq[10, A002260(n+1)])`
-/

namespace A151582.P361006517665131896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151582.P361006517665131896

/-! ## A151582.P592630195415808269

`A334218(eq[9, A025581(n)])`
-/

namespace A151582.P592630195415808269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151582.P592630195415808269

/-! ## A151582.P13107508807725929748

`A334218(eq[10, A195663(n)])`
-/

namespace A151582.P13107508807725929748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151582.P13107508807725929748

/-! ## A151582.P8720588147454991605

`A334218(eq[9, A144257(n+1)])`
-/

namespace A151582.P8720588147454991605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151582.P8720588147454991605

/-! ## A151582.P5271972149395689189

`A334218(eq[10, A004736(n+1)])`
-/

namespace A151582.P5271972149395689189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151582.P5271972149395689189

/-!
# A151583: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly 2 adjacent element pairs in decreasing order.

The programs for A151583, the canonical program `A151583.P7017535433690359870` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151583 has offset 1).

The definition of A151583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151583.P7017535433690359870

`record[n*(3^n-4*n)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A151583

/-- `record[n*(3^n-4*n)]` -/
def P7017535433690359870.Spec : Prop :=
  ∀ n, P7017535433690359870.a n = A151583 (n + 1)

theorem P7017535433690359870.correct : P7017535433690359870.Spec := by
  intro n
  simp only [A151583, Nat.add_sub_cancel]

end A151583

/-! ## A151583.P6023382674426884790

`(n+1)*record[A111575(n+1)-(n+1)]`
-/

namespace A151583.P6023382674426884790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151583.P6023382674426884790

namespace A151583

/-- `(n+1)*record[A111575(n+1)-(n+1)]` -/
def P6023382674426884790.Spec : Prop :=
  ∀ n, P6023382674426884790.a n = A151583 (n + 1)

end A151583

/-! ## A151583.P2892066434337208250

`(n+1)*record[A108411(A004526(n+1))-(n+1)]`
-/

namespace A151583.P2892066434337208250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A004526 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151583.P2892066434337208250

namespace A151583

/-- `(n+1)*record[A108411(A004526(n+1))-(n+1)]` -/
def P2892066434337208250.Spec : Prop :=
  ∀ n, P2892066434337208250.a n = A151583 (n + 1)

end A151583

/-!
# A151590: Number of permutations of 3 indistinguishable copies of 1..n arranged in a circle with exactly 2 adjacent element pairs in decreasing order.

The programs for A151590, the canonical program `A151590.P9873821401431012945` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151590 has offset 1).

The definition of A151590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151590.P9873821401431012945

`record[n*(A117902(n)-n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A151590

/-- `record[n*(A117902(n)-n)]` -/
def P9873821401431012945.Spec : Prop :=
  ∀ n, P9873821401431012945.a n = A151590 (n + 1)

theorem P9873821401431012945.correct : P9873821401431012945.Spec := by
  intro n
  simp only [A151590, Nat.add_sub_cancel]

end A151590

