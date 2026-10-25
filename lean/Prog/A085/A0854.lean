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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A085400: a(n) = abs(A085061(n-1) - A085061(n)).

The programs for A085400, there is no canonical definition to state claims against.
-/

/-! ## A085400.P4797558295513527369

`abs(A085061(n)-A085061(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085400.P4797558295513527369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085061 n - A085061 (n + 1)|

end

end A085400.P4797558295513527369

/-! ## A085400.P14609424476644491855

`abs(Δ[A085061(n)])`
-/

namespace A085400.P14609424476644491855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A085400.P14609424476644491855

/-! ## A085400.P18123902146324295584

`∑{d}[Δ[A085061(n)], A000010(#)]`
-/

namespace A085400.P18123902146324295584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085400.P18123902146324295584

/-! ## A085400.P5075989028039551923

`A006530(∏{p}[Δ[A085061(n)], #])`
-/

namespace A085400.P5075989028039551923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A085400.P5075989028039551923

/-! ## A085400.P12041865319165230897

`A006530(lcm(2, Δ[A085061(n)]))`
-/

namespace A085400.P12041865319165230897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A085400.P12041865319165230897

/-! ## A085400.P17530431529409638494

`∏{d}[Δ[A085061(n)], A014963(#)]`
-/

namespace A085400.P17530431529409638494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A085400.P17530431529409638494

/-! ## A085400.P4127426261683533148

`A006530(Δ[A085061(n)]²)`
-/

namespace A085400.P4127426261683533148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A085400.P4127426261683533148

/-! ## A085400.P6606198095112237543

`A007947(Δ[A085061(n)]²)`
-/

namespace A085400.P6606198095112237543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A085400.P6606198095112237543

/-! ## A085400.P6676380655094741449

`A008472(Δ[A085061(n)]²)`
-/

namespace A085400.P6676380655094741449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A085400.P6676380655094741449

/-! ## A085400.P6386513972041390574

`A020639(Δ[A085061(n)]²)`
-/

namespace A085400.P6386513972041390574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A085400.P6386513972041390574

/-!
# A085402: a(n) = abs(A085401(n-1) - A085401(n)).

The programs for A085402, there is no canonical definition to state claims against.
-/

/-! ## A085402.P8224758662975012570

`abs(A085401(n)-A085401(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085402.P8224758662975012570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085401 n - A085401 (n + 1)|

end

end A085402.P8224758662975012570

/-!
# A085403: Expansion of (1-x+sqrt(1-6x+x^2))/2 in powers of x.

The programs for A085403, the canonical program `A085403.P17921680985737888414` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085403 has offset 0).

The definition of A085403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085403.P17887261055709068758

`A117354(∑[n])`
-/

namespace A085403.P17887261055709068758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085403.P17887261055709068758

namespace A085403

/-- `A117354(∑[n])` -/
def P17887261055709068758.Spec : Prop :=
  ∀ n, P17887261055709068758.a n = A085403 n

end A085403

/-! ## A085403.P16798211710681077508

`A086456(char[1]+n)`
-/

namespace A085403.P16798211710681077508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A085403.P16798211710681077508

namespace A085403

/-- `A086456(char[1]+n)` -/
def P16798211710681077508.Spec : Prop :=
  ∀ n, P16798211710681077508.a n = A085403 n

end A085403

/-! ## A085403.P4956436554541800960

`A086456(n)-char[1]`
-/

namespace A085403.P4956436554541800960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A085403.P4956436554541800960

namespace A085403

/-- `A086456(n)-char[1]` -/
def P4956436554541800960.Spec : Prop :=
  ∀ n, P4956436554541800960.a n = A085403 n

end A085403

/-! ## A085403.P17921680985737888414

`-A006318(n+1-gcd(2, a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085403

/-- `-A006318(n+1-gcd(2, a(n-1)))` -/
def P17921680985737888414.Spec : Prop :=
  ∀ n, P17921680985737888414.a n = A085403 n

theorem P17921680985737888414.correct : P17921680985737888414.Spec := by
  intro n
  simp only [A085403]

end A085403

/-! ## A085403.P4516497996076260768

`A159075(n)+A086456(n)`
-/

namespace A085403.P4516497996076260768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A086456 n

end

end A085403.P4516497996076260768

namespace A085403

/-- `A159075(n)+A086456(n)` -/
def P4516497996076260768.Spec : Prop :=
  ∀ n, P4516497996076260768.a n = A085403 n

end A085403

/-! ## A085403.P5695484700040202867

`A033999(n)*A112478(n)`
-/

namespace A085403.P5695484700040202867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112478 n

end

end A085403.P5695484700040202867

namespace A085403

/-- `A033999(n)*A112478(n)` -/
def P5695484700040202867.Spec : Prop :=
  ∀ n, P5695484700040202867.a n = A085403 n

end A085403

/-! ## A085403.P14358892223506916942

`A086456(n)*A373565(n)`
-/

namespace A085403.P14358892223506916942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 n * A373565 n

end

end A085403.P14358892223506916942

namespace A085403

/-- `A086456(n)*A373565(n)` -/
def P14358892223506916942.Spec : Prop :=
  ∀ n, P14358892223506916942.a n = A085403 n

end A085403

/-! ## A085403.P2513814750683292400

`xor(A063524(n), A086456(n))`
-/

namespace A085403.P2513814750683292400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A086456 n)

end

end A085403.P2513814750683292400

namespace A085403

/-- `xor(A063524(n), A086456(n))` -/
def P2513814750683292400.Spec : Prop :=
  ∀ n, P2513814750683292400.a n = A085403 n

end A085403

/-! ## A085403.P16857053668420247666

`A056594(2*n)*A112478(n)`
-/

namespace A085403.P16857053668420247666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A112478 n

end

end A085403.P16857053668420247666

namespace A085403

/-- `A056594(2*n)*A112478(n)` -/
def P16857053668420247666.Spec : Prop :=
  ∀ n, P16857053668420247666.a n = A085403 n

end A085403

/-! ## A085403.P17838696746074541211

`xor(char[A086456(3*n)], A086456(n))`
-/

namespace A085403.P17838696746074541211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A086456 n)

end

end A085403.P17838696746074541211

namespace A085403

/-- `xor(char[A086456(3*n)], A086456(n))` -/
def P17838696746074541211.Spec : Prop :=
  ∀ n, P17838696746074541211.a n = A085403 n

end A085403

/-! ## A085403.P708720973310461616

`A000038(n)-A155069(A254667(n))`
-/

namespace A085403.P708720973310461616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A155069 (A254667 n).toNat

end

end A085403.P708720973310461616

namespace A085403

/-- `A000038(n)-A155069(A254667(n))` -/
def P708720973310461616.Spec : Prop :=
  ∀ n, P708720973310461616.a n = A085403 n

end A085403

/-! ## A085403.P11425351224988417908

`A093829(A006047(n))*A112478(n)`
-/

namespace A085403.P11425351224988417908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A006047 n).toNat * A112478 n

end

end A085403.P11425351224988417908

namespace A085403

/-- `A093829(A006047(n))*A112478(n)` -/
def P11425351224988417908.Spec : Prop :=
  ∀ n, P11425351224988417908.a n = A085403 n

end A085403

/-! ## A085403.P15578788368940900886

`(A111954(n)-A000129(n))*A112478(n)`
-/

namespace A085403.P15578788368940900886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111954 n - A000129 n) * A112478 n

end

end A085403.P15578788368940900886

namespace A085403

/-- `(A111954(n)-A000129(n))*A112478(n)` -/
def P15578788368940900886.Spec : Prop :=
  ∀ n, P15578788368940900886.a n = A085403 n

end A085403

/-! ## A085403.P17250862486976785024

`A000038(n)-lcm(A000034(n), A155069(n))`
-/

namespace A085403.P17250862486976785024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (Int.lcm (A000034 n) (A155069 n) : ℤ)

end

end A085403.P17250862486976785024

namespace A085403

/-- `A000038(n)-lcm(A000034(n), A155069(n))` -/
def P17250862486976785024.Spec : Prop :=
  ∀ n, P17250862486976785024.a n = A085403 n

end A085403

/-! ## A085403.P5336820861112930210

`A112478(n)/(A000129(n+1)-A111954(n+1))`
-/

namespace A085403.P5336820861112930210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112478 n : ℚ) / (A000129 (n + 1) - A111954 (n + 1) : ℚ)

end

end A085403.P5336820861112930210

namespace A085403

/-- `A112478(n)/(A000129(n+1)-A111954(n+1))` -/
def P5336820861112930210.Spec : Prop :=
  ∀ n, P5336820861112930210.a n = (A085403 n : ℚ)

theorem P5336820861112930210.correct : P5336820861112930210.Spec := by
  intro n
  simp only [A085403, Nat.add_sub_cancel, A085403.P5336820861112930210.a, A085403.P17921680985737888414.a, A000129, A000129.P3563729298025900801.a, A006318, A006318.P6019427271403172875.f1, A006318.P6019427271403172875.a, A111954, A111954.P2161245122123074090.a, A112478, A112478.P3456292499635885197.a, A176006, A176006.P1011772208691613746.a, A035011, A035011.P9518209092387552565.a, A086616, A086616.P4854257795119713207.a, A025240, A025240.P15418065983883315172.a, A104858, A104858.P16916997968901490082.f1, A104858.P16916997968901490082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085403

/-! ## A085403.P76252012163902532

`A000007(n)+A006319(n)-A006318(n)-char[1]`
-/

namespace A085403.P76252012163902532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A006319 n - A006318 n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A085403.P76252012163902532

namespace A085403

/-- `A000007(n)+A006319(n)-A006318(n)-char[1]` -/
def P76252012163902532.Spec : Prop :=
  ∀ n, P76252012163902532.a n = A085403 n

end A085403

/-!
# A085404: Number of n X n matrices over GF(4) with rank n-1.

The programs for A085404, there is no canonical definition to state claims against.
-/

/-! ## A085404.P3967695632666541269

`A060869(n+1)/3*A053291(n)`
-/

namespace A085404.P3967695632666541269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060869 (n + 1) : ℚ) / 3 * (A053291 n : ℚ)

end

end A085404.P3967695632666541269

/-!
# A085405: Common residues of binomial(3n+2,n+1)/(3n+2) modulo 2.

The programs for A085405, the canonical program `A085405.P9788753788236568854` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085405 has offset 0).

The definition of A085405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A323239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085405.P9788753788236568854

`A323239(A005940(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085405

/-- `A323239(A005940(1+n))` -/
def P9788753788236568854.Spec : Prop :=
  ∀ n, P9788753788236568854.a n = A085405 n

theorem P9788753788236568854.correct : P9788753788236568854.Spec := by
  intro n
  simp only [A085405]

end A085405

/-! ## A085405.P7685769914197552440

`(C(3*n+2, n+1)/(3*n+2))%2`
-/

namespace A085405.P7685769914197552440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.choose (3 * n + 2) (n + 1) : ℚ) / (3 * n + 2 : ℚ))) 2

end

end A085405.P7685769914197552440

namespace A085405

/-- `(C(3*n+2, n+1)/(3*n+2))%2` -/
def P7685769914197552440.Spec : Prop :=
  ∀ n, P7685769914197552440.a n = A085405 n

end A085405

/-! ## A085405.P4248499676204417487

`char[xor(n, 3*n)]`
-/

namespace A085405.P4248499676204417487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A085405.P4248499676204417487

namespace A085405

/-- `char[xor(n, 3*n)]` -/
def P4248499676204417487.Spec : Prop :=
  ∀ n, (P4248499676204417487.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P16456962338639349496

`char[and(2*n, -n)]`
-/

namespace A085405.P16456962338639349496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085405.P16456962338639349496

namespace A085405

/-- `char[and(2*n, -n)]` -/
def P16456962338639349496.Spec : Prop :=
  ∀ n, (P16456962338639349496.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P16464355706959555364

`char[or(n, 2*n)-n]`
-/

namespace A085405.P16464355706959555364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085405.P16464355706959555364

namespace A085405

/-- `char[or(n, 2*n)-n]` -/
def P16464355706959555364.Spec : Prop :=
  ∀ n, (P16464355706959555364.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P5261056613283176443

`char[n-and(n, 3*n)]`
-/

namespace A085405.P5261056613283176443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (3 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085405.P5261056613283176443

namespace A085405

/-- `char[n-and(n, 3*n)]` -/
def P5261056613283176443.Spec : Prop :=
  ∀ n, (P5261056613283176443.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P5516583680326732952

`floor(acot(and(n, comp[2*n])))`
-/

namespace A085405.P5516583680326732952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Nat.land n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌋

end

end A085405.P5516583680326732952

namespace A085405

/-- `floor(acot(and(n, comp[2*n])))` -/
def P5516583680326732952.Spec : Prop :=
  ∀ n, P5516583680326732952.a n = A085405 n

end A085405

/-! ## A085405.P3319323166961893750

`C(and(n, 3*n+1), n)`
-/

namespace A085405.P3319323166961893750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (3 * n + 1)) n

end

end A085405.P3319323166961893750

namespace A085405

/-- `C(and(n, 3*n+1), n)` -/
def P3319323166961893750.Spec : Prop :=
  ∀ n, (P3319323166961893750.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P6500122146137488443

`C(2, and(n, Δ[n²])+2)`
-/

namespace A085405.P6500122146137488443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 2).toNat

end

end A085405.P6500122146137488443

namespace A085405

/-- `C(2, and(n, Δ[n²])+2)` -/
def P6500122146137488443.Spec : Prop :=
  ∀ n, (P6500122146137488443.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P3453413093910340986

`C(n-and(n, Δ[n²]), n)`
-/

namespace A085405.P3453413093910340986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat n

end

end A085405.P3453413093910340986

namespace A085405

/-- `C(n-and(n, Δ[n²]), n)` -/
def P3453413093910340986.Spec : Prop :=
  ∀ n, (P3453413093910340986.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P310851203133861458

`char[eq[0, and(n+1, 2*n)]]`
-/

namespace A085405.P310851203133861458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A085405.P310851203133861458

namespace A085405

/-- `char[eq[0, and(n+1, 2*n)]]` -/
def P310851203133861458.Spec : Prop :=
  ∀ n, (P310851203133861458.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P2804954027745141637

`char[lt[and(n+1, 2*n), 1]]`
-/

namespace A085405.P2804954027745141637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A085405.P2804954027745141637

namespace A085405

/-- `char[lt[and(n+1, 2*n), 1]]` -/
def P2804954027745141637.Spec : Prop :=
  ∀ n, (P2804954027745141637.a n : ℤ) = A085405 n

end A085405

/-! ## A085405.P11441763070062366163

`floor(γ^and(n+1, 2*n))`
-/

namespace A085405.P11441763070062366163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant ^ Nat.land (n + 1) (2 * n)⌋

end

end A085405.P11441763070062366163

namespace A085405

/-- `floor(γ^and(n+1, 2*n))` -/
def P11441763070062366163.Spec : Prop :=
  ∀ n, P11441763070062366163.a n = A085405 n

end A085405

/-! ## A085405.P6827847999421399158

`round(γ^and(n+1, 2*n))`
-/

namespace A085405.P6827847999421399158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ Nat.land (n + 1) (2 * n))

end

end A085405.P6827847999421399158

namespace A085405

/-- `round(γ^and(n+1, 2*n))` -/
def P6827847999421399158.Spec : Prop :=
  ∀ n, P6827847999421399158.a n = A085405 n

end A085405

/-! ## A085405.P5703070560219986589

`floor(exp(-and(n+1, 2*n)))`
-/

namespace A085405.P5703070560219986589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (-(Nat.land (n + 1) (2 * n) : ℤ) : ℝ)⌋

end

end A085405.P5703070560219986589

namespace A085405

/-- `floor(exp(-and(n+1, 2*n)))` -/
def P5703070560219986589.Spec : Prop :=
  ∀ n, P5703070560219986589.a n = A085405 n

end A085405

/-! ## A085405.P8288567751072310546

`round(exp(-and(n+1, 2*n)))`
-/

namespace A085405.P8288567751072310546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (-(Nat.land (n + 1) (2 * n) : ℤ) : ℝ))

end

end A085405.P8288567751072310546

namespace A085405

/-- `round(exp(-and(n+1, 2*n)))` -/
def P8288567751072310546.Spec : Prop :=
  ∀ n, P8288567751072310546.a n = A085405 n

end A085405

/-! ## A085405.P4277877605153264560

`∏{d}[and(n+1, 2*n), log(#)]`
-/

namespace A085405.P4277877605153264560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)

end

end A085405.P4277877605153264560

namespace A085405

/-- `∏{d}[and(n+1, 2*n), log(#)]` -/
def P4277877605153264560.Spec : Prop :=
  ∀ n, P4277877605153264560.a n = (A085405 n : ℝ)

end A085405

/-! ## A085405.P17131198510942340476

`floor(1/and(n+1, Δ[n²]))`
-/

namespace A085405.P17131198510942340476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.land (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)⌋

end

end A085405.P17131198510942340476

namespace A085405

/-- `floor(1/and(n+1, Δ[n²]))` -/
def P17131198510942340476.Spec : Prop :=
  ∀ n, P17131198510942340476.a n = A085405 n

end A085405

/-! ## A085405.P10166792538480714922

`floor(abs(cos(and(n+1, 2*n))))`
-/

namespace A085405.P10166792538480714922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cos (Nat.land (n + 1) (2 * n) : ℝ)|⌋

end

end A085405.P10166792538480714922

namespace A085405

/-- `floor(abs(cos(and(n+1, 2*n))))` -/
def P10166792538480714922.Spec : Prop :=
  ∀ n, P10166792538480714922.a n = A085405 n

end A085405

/-! ## A085405.P16712755847871595141

`floor(cos(and(n+1, 2*n))²)`
-/

namespace A085405.P16712755847871595141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Nat.land (n + 1) (2 * n) : ℝ) ^ 2⌋

end

end A085405.P16712755847871595141

namespace A085405

/-- `floor(cos(and(n+1, 2*n))²)` -/
def P16712755847871595141.Spec : Prop :=
  ∀ n, P16712755847871595141.a n = A085405 n

end A085405

/-!
# A085407: Runs of zeros in binomial(3k+2,k+1)/(3k+2) modulo 2 (A085405).

The programs for A085407, the canonical program `A085407.P8456139182409742609` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085407 has offset 1).

The definition of A085407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085407.P8456139182409742609

`Δ[A022340(n)]-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A085407

/-- `Δ[A022340(n)]-1` -/
def P8456139182409742609.Spec : Prop :=
  ∀ n, P8456139182409742609.a n = A085407 (n + 1)

theorem P8456139182409742609.correct : P8456139182409742609.Spec := by
  intro n
  simp only [A085407, Nat.add_sub_cancel]

end A085407

/-! ## A085407.P6032678367115827784

`2*A129761(n)-1`
-/

namespace A085407.P6032678367115827784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129761 n - 1

end

end A085407.P6032678367115827784

namespace A085407

/-- `2*A129761(n)-1` -/
def P6032678367115827784.Spec : Prop :=
  ∀ n, P6032678367115827784.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P16996705530862107421

`floor(A319432(n+1)/2)`
-/

namespace A085407.P16996705530862107421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319432 (n + 1) : ℚ) / 2⌋

end

end A085407.P16996705530862107421

namespace A085407

/-- `floor(A319432(n+1)/2)` -/
def P16996705530862107421.Spec : Prop :=
  ∀ n, P16996705530862107421.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P6023508534400265931

`A001045(A035612(n+1))`
-/

namespace A085407.P6023508534400265931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A035612 (n + 1)).toNat

end

end A085407.P6023508534400265931

namespace A085407

/-- `A001045(A035612(n+1))` -/
def P6023508534400265931.Spec : Prop :=
  ∀ n, P6023508534400265931.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P14098498866117779232

`A001045(A035614(n)+1)`
-/

namespace A085407.P14098498866117779232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A035614 n + 1).toNat

end

end A085407.P14098498866117779232

namespace A085407

/-- `A001045(A035614(n)+1)` -/
def P14098498866117779232.Spec : Prop :=
  ∀ n, P14098498866117779232.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P2040937496289487168

`A022340(n+1)-A118113(n)`
-/

namespace A085407.P2040937496289487168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (n + 1) - A118113 n

end

end A085407.P2040937496289487168

namespace A085407

/-- `A022340(n+1)-A118113(n)` -/
def P2040937496289487168.Spec : Prop :=
  ∀ n, P2040937496289487168.a n = A085407 (n + 1)

theorem P2040937496289487168.correct : P2040937496289487168.Spec := by
  intro n
  simp only [A085407, Nat.add_sub_cancel, A085407.P2040937496289487168.a, A085407.P8456139182409742609.f1, A085407.P8456139182409742609.a, A022340, A022340.P3334581410869230776.a, A118113, A118113.P10341986219208380266.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085407

/-! ## A085407.P17296646881214070821

`A022340(n+1)+A022340(n)-A022341(n)`
-/

namespace A085407.P17296646881214070821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (n + 1) + (A022340 n - A022341 n)

end

end A085407.P17296646881214070821

namespace A085407

/-- `A022340(n+1)+A022340(n)-A022341(n)` -/
def P17296646881214070821.Spec : Prop :=
  ∀ n, P17296646881214070821.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P14571323547956780690

`Δ[A118113(n)]-1`
-/

namespace A085407.P14571323547956780690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A085407.P14571323547956780690

namespace A085407

/-- `Δ[A118113(n)]-1` -/
def P14571323547956780690.Spec : Prop :=
  ∀ n, P14571323547956780690.a n = A085407 (n + 1)

theorem P14571323547956780690.correct : P14571323547956780690.Spec := by
  intro n
  simp only [A085407, Nat.add_sub_cancel, A085407.P14571323547956780690.f1, A085407.P14571323547956780690.a, A085407.P8456139182409742609.f1, A085407.P8456139182409742609.a, A022340, A022340.P3334581410869230776.a, A118113, A118113.P10341986219208380266.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085407

/-! ## A085407.P13624781378851088542

`A003714(n+1)+A003714(n+1)-A118113(n)`
-/

namespace A085407.P13624781378851088542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (n + 1) + (A003714 (n + 1) - A118113 n)

end

end A085407.P13624781378851088542

namespace A085407

/-- `A003714(n+1)+A003714(n+1)-A118113(n)` -/
def P13624781378851088542.Spec : Prop :=
  ∀ n, P13624781378851088542.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P17519115151154292996

`Δ[record[and(2*n, -n)]]-1`
-/

namespace A085407.P17519115151154292996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A085407.P17519115151154292996

namespace A085407

/-- `Δ[record[and(2*n, -n)]]-1` -/
def P17519115151154292996.Spec : Prop :=
  ∀ n, P17519115151154292996.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P17586877237875328757

`Δ[record[xor(n, 2*n)-(n+1)]]-1`
-/

namespace A085407.P17586877237875328757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A085407.P17586877237875328757

namespace A085407

/-- `Δ[record[xor(n, 2*n)-(n+1)]]-1` -/
def P17586877237875328757.Spec : Prop :=
  ∀ n, P17586877237875328757.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P13918437546239418732

`2*Δ[eq[0, and(n, 2*n)]]-1`
-/

namespace A085407.P13918437546239418732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1

end

end A085407.P13918437546239418732

namespace A085407

/-- `2*Δ[eq[0, and(n, 2*n)]]-1` -/
def P13918437546239418732.Spec : Prop :=
  ∀ n, P13918437546239418732.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P5452102773012619656

`A004273(A129761(n))`
-/

namespace A085407.P5452102773012619656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A129761 n).toNat

end

end A085407.P5452102773012619656

namespace A085407

/-- `A004273(A129761(n))` -/
def P5452102773012619656.Spec : Prop :=
  ∀ n, P5452102773012619656.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P11271855403441798681

`A003160(A085358(n))`
-/

namespace A085407.P11271855403441798681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A085358 n).toNat

end

end A085407.P11271855403441798681

namespace A085407

/-- `A003160(A085358(n))` -/
def P11271855403441798681.Spec : Prop :=
  ∀ n, P11271855403441798681.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P10957542366476222059

`A004525(A319432(n+1))`
-/

namespace A085407.P10957542366476222059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319432 (n + 1)).toNat

end

end A085407.P10957542366476222059

namespace A085407

/-- `A004525(A319432(n+1))` -/
def P10957542366476222059.Spec : Prop :=
  ∀ n, P10957542366476222059.a n = A085407 (n + 1)

end A085407

/-! ## A085407.P6958982656304339595

`A268032(2*(n+1))`
-/

namespace A085407.P6958982656304339595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268032 (2 * (n + 1))

end

end A085407.P6958982656304339595

namespace A085407

/-- `A268032(2*(n+1))` -/
def P6958982656304339595.Spec : Prop :=
  ∀ n, P6958982656304339595.a n = A085407 (n + 1)

end A085407

/-!
# A085409: Sum of three solutions of the Diophantine equation x^2 - y^2 = z^3.

The programs for A085409, the canonical program `A085409.P4278820891763862298` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085409 has offset 0).

The definition of A085409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085409.P4278820891763862298

`9*n^3+3*n²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085409

/-- `9*n^3+3*n²` -/
def P4278820891763862298.Spec : Prop :=
  ∀ n, (P4278820891763862298.a n : ℤ) = A085409 n

theorem P4278820891763862298.correct : P4278820891763862298.Spec := by
  intro n
  simp only [A085409]

end A085409

/-! ## A085409.P9103207309487108481

`A087887(n)/2`
-/

namespace A085409.P9103207309487108481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087887 n : ℚ) / 2

end

end A085409.P9103207309487108481

namespace A085409

/-- `A087887(n)/2` -/
def P9103207309487108481.Spec : Prop :=
  ∀ n, P9103207309487108481.a n = (A085409 n : ℚ)

theorem P9103207309487108481.correct : P9103207309487108481.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P9103207309487108481.a, A085409.P4278820891763862298.a, A087887, A087887.P10011487220671445220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P6847836998646009626

`3*A294315(n)`
-/

namespace A085409.P6847836998646009626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A294315 n

end

end A085409.P6847836998646009626

namespace A085409

/-- `3*A294315(n)` -/
def P6847836998646009626.Spec : Prop :=
  ∀ n, P6847836998646009626.a n = A085409 n

theorem P6847836998646009626.correct : P6847836998646009626.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P6847836998646009626.a, A085409.P4278820891763862298.a, A294315, A294315.P3866111110080714343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P14577023566065683680

`A033428(n)*A016777(n)`
-/

namespace A085409.P14577023566065683680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n * A016777 n

end

end A085409.P14577023566065683680

namespace A085409

/-- `A033428(n)*A016777(n)` -/
def P14577023566065683680.Spec : Prop :=
  ∀ n, P14577023566065683680.a n = A085409 n

theorem P14577023566065683680.correct : P14577023566065683680.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P14577023566065683680.a, A085409.P4278820891763862298.a, A016777, A016777.P9931792138852554157.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P15125503341917076637

`2*n*C(3*n+1, 2)`
-/

namespace A085409.P15125503341917076637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (3 * n + 1) 2

end

end A085409.P15125503341917076637

namespace A085409

/-- `2*n*C(3*n+1, 2)` -/
def P15125503341917076637.Spec : Prop :=
  ∀ n, (P15125503341917076637.a n : ℤ) = A085409 n

theorem P15125503341917076637.correct : P15125503341917076637.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P15125503341917076637.a, A085409.P4278820891763862298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P859803642344138276

`lcm(3*n², Δ[C(3*n, 2)])`
-/

namespace A085409.P859803642344138276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A085409.P859803642344138276

namespace A085409

/-- `lcm(3*n², Δ[C(3*n, 2)])` -/
def P859803642344138276.Spec : Prop :=
  ∀ n, (P859803642344138276.a n : ℤ) = A085409 n

end A085409

/-! ## A085409.P13969306736534700585

`lcm(2*n+1+n, n*(2*n+n))`
-/

namespace A085409.P13969306736534700585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1 + n) (n * (2 * n + n))

end

end A085409.P13969306736534700585

namespace A085409

/-- `lcm(2*n+1+n, n*(2*n+n))` -/
def P13969306736534700585.Spec : Prop :=
  ∀ n, (P13969306736534700585.a n : ℤ) = A085409 n

end A085409

/-! ## A085409.P9269010970551749268

`n*A045945(n)`
-/

namespace A085409.P9269010970551749268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045945 n

end

end A085409.P9269010970551749268

namespace A085409

/-- `n*A045945(n)` -/
def P9269010970551749268.Spec : Prop :=
  ∀ n, P9269010970551749268.a n = A085409 n

theorem P9269010970551749268.correct : P9269010970551749268.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P9269010970551749268.a, A085409.P4278820891763862298.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P12793748166832406117

`n²*A017197(n)`
-/

namespace A085409.P12793748166832406117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A017197 n

end

end A085409.P12793748166832406117

namespace A085409

/-- `n²*A017197(n)` -/
def P12793748166832406117.Spec : Prop :=
  ∀ n, P12793748166832406117.a n = A085409 n

theorem P12793748166832406117.correct : P12793748166832406117.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P12793748166832406117.a, A085409.P4278820891763862298.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P16089869108108228244

`n*(A082040(n)-1)`
-/

namespace A085409.P16089869108108228244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A082040 n - 1)

end

end A085409.P16089869108108228244

namespace A085409

/-- `n*(A082040(n)-1)` -/
def P16089869108108228244.Spec : Prop :=
  ∀ n, P16089869108108228244.a n = A085409 n

theorem P16089869108108228244.correct : P16089869108108228244.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P16089869108108228244.a, A085409.P4278820891763862298.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P12340274091809011645

`2*n*A081266(n)`
-/

namespace A085409.P12340274091809011645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A081266 n)

end

end A085409.P12340274091809011645

namespace A085409

/-- `2*n*A081266(n)` -/
def P12340274091809011645.Spec : Prop :=
  ∀ n, P12340274091809011645.a n = A085409 n

end A085409

/-! ## A085409.P18172865342280180560

`n/2*A045946(n)`
-/

namespace A085409.P18172865342280180560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A045946 n : ℚ)

end

end A085409.P18172865342280180560

namespace A085409

/-- `n/2*A045946(n)` -/
def P18172865342280180560.Spec : Prop :=
  ∀ n, P18172865342280180560.a n = (A085409 n : ℚ)

theorem P18172865342280180560.correct : P18172865342280180560.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P18172865342280180560.a, A085409.P4278820891763862298.a, A045946, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P5941184496384317162

`3*n*A049451(n)`
-/

namespace A085409.P5941184496384317162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A049451 n)

end

end A085409.P5941184496384317162

namespace A085409

/-- `3*n*A049451(n)` -/
def P5941184496384317162.Spec : Prop :=
  ∀ n, P5941184496384317162.a n = A085409 n

theorem P5941184496384317162.correct : P5941184496384317162.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P5941184496384317162.a, A085409.P4278820891763862298.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P3896138462555071010

`n*(A147296(n)+n)`
-/

namespace A085409.P3896138462555071010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A147296 n + (n : ℤ))

end

end A085409.P3896138462555071010

namespace A085409

/-- `n*(A147296(n)+n)` -/
def P3896138462555071010.Spec : Prop :=
  ∀ n, P3896138462555071010.a n = A085409 n

theorem P3896138462555071010.correct : P3896138462555071010.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P3896138462555071010.a, A085409.P4278820891763862298.a, A147296, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P10587586844514969483

`n²*Δ[A062741(n)]`
-/

namespace A085409.P10587586844514969483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A085409.P10587586844514969483

namespace A085409

/-- `n²*Δ[A062741(n)]` -/
def P10587586844514969483.Spec : Prop :=
  ∀ n, P10587586844514969483.a n = A085409 n

end A085409

/-! ## A085409.P9364649981538723650

`4*n*A000217(3*n)/2`
-/

namespace A085409.P9364649981538723650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) * A000217 (3 * n) : ℚ) / 2

end

end A085409.P9364649981538723650

namespace A085409

/-- `4*n*A000217(3*n)/2` -/
def P9364649981538723650.Spec : Prop :=
  ∀ n, P9364649981538723650.a n = (A085409 n : ℚ)

theorem P9364649981538723650.correct : P9364649981538723650.Spec := by
  intro n
  simp only [A085409, Nat.add_sub_cancel, A085409.P9364649981538723650.a, A085409.P4278820891763862298.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085409

/-! ## A085409.P5724760620712058680

`A005449(n)*A008458(n)`
-/

namespace A085409.P5724760620712058680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n * A008458 n

end

end A085409.P5724760620712058680

namespace A085409

/-- `A005449(n)*A008458(n)` -/
def P5724760620712058680.Spec : Prop :=
  ∀ n, P5724760620712058680.a n = A085409 n

end A085409

/-! ## A085409.P2717584068567742140

`A005449(n)*A008588(n)`
-/

namespace A085409.P2717584068567742140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n * A008588 n

end

end A085409.P2717584068567742140

namespace A085409

/-- `A005449(n)*A008588(n)` -/
def P2717584068567742140.Spec : Prop :=
  ∀ n, P2717584068567742140.a n = A085409 n

end A085409

/-! ## A085409.P10728337772988074230

`n²*Δ[A080855(n)]`
-/

namespace A085409.P10728337772988074230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A085409.P10728337772988074230

namespace A085409

/-- `n²*Δ[A080855(n)]` -/
def P10728337772988074230.Spec : Prop :=
  ∀ n, P10728337772988074230.a n = A085409 n

end A085409

/-! ## A085409.P7518184533041565433

`2*n*A117748(2*n+1)`
-/

namespace A085409.P7518184533041565433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A117748 (2 * n + 1)

end

end A085409.P7518184533041565433

namespace A085409

/-- `2*n*A117748(2*n+1)` -/
def P7518184533041565433.Spec : Prop :=
  ∀ n, P7518184533041565433.a n = A085409 n

end A085409

/-!
# A085411: Total number of parts in all compositions of n into relatively prime parts.

The programs for A085411, the canonical program `A085411.P3737243703673920386` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085411 has offset 1).

The definition of A085411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085411.P3737243703673920386

`∑{d}[n+1, A001792(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A085411

/-- `∑{d}[n+1, A001792(#-1)*A008683((n+1)/#)]` -/
def P3737243703673920386.Spec : Prop :=
  ∀ n, P3737243703673920386.a n = A085411 (n + 1)

theorem P3737243703673920386.correct : P3737243703673920386.Spec := by
  intro n
  simp only [A085411, Nat.add_sub_cancel]

end A085411

/-! ## A085411.P11539256238135768773

`record[Δ[A303974(A117142(n+1))]]`
-/

namespace A085411.P11539256238135768773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303974 (A117142 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085411.P11539256238135768773

namespace A085411

/-- `record[Δ[A303974(A117142(n+1))]]` -/
def P11539256238135768773.Spec : Prop :=
  ∀ n, P11539256238135768773.a n = A085411 (n + 1)

end A085411

/-! ## A085411.P3800033076429393773

`A303974(∑[n+2])-A000740(n+1)`
-/

namespace A085411.P3800033076429393773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303974 (∑ j ∈ Finset.range (n + 1), f1 j) - A000740 (n + 1)

end

end A085411.P3800033076429393773

namespace A085411

/-- `A303974(∑[n+2])-A000740(n+1)` -/
def P3800033076429393773.Spec : Prop :=
  ∀ n, P3800033076429393773.a n = A085411 (n + 1)

end A085411

/-! ## A085411.P13087574625421596528

`A303974(A027379(n)+2)-A056278(n+1)`
-/

namespace A085411.P13087574625421596528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303974 (A027379 n + 2).toNat - A056278 (n + 1)

end

end A085411.P13087574625421596528

namespace A085411

/-- `A303974(A027379(n)+2)-A056278(n+1)` -/
def P13087574625421596528.Spec : Prop :=
  ∀ n, P13087574625421596528.a n = A085411 (n + 1)

end A085411

/-!
# A085412: Numbers n such that concatenation of prime[n] and first digit of prime[n] is prime.

The programs for A085412, the canonical program `A085412.P5357625299025834806` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085412 has offset 1).

The definition of A085412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085412.P5357625299025834806

`A000720(A085413(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085412

/-- `A000720(A085413(n+1))` -/
def P5357625299025834806.Spec : Prop :=
  ∀ n, P5357625299025834806.a n = A085412 (n + 1)

theorem P5357625299025834806.correct : P5357625299025834806.Spec := by
  intro n
  simp only [A085412, Nat.add_sub_cancel]

end A085412

/-! ## A085412.P983307159377911439

`A000720(p?[floor(A077652(n+1)/10)])`
-/

namespace A085412.P983307159377911439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085412.P983307159377911439

namespace A085412

/-- `A000720(p?[floor(A077652(n+1)/10)])` -/
def P983307159377911439.Spec : Prop :=
  ∀ n, P983307159377911439.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P4420784100725148534

`A263297(or(1, A085413(n+1)))`
-/

namespace A085412.P4420784100725148534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (Int.lor 1 (A085413 (n + 1))).toNat

end

end A085412.P4420784100725148534

namespace A085412

/-- `A263297(or(1, A085413(n+1)))` -/
def P4420784100725148534.Spec : Prop :=
  ∀ n, P4420784100725148534.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P3840128636483771191

`A344616(or(1, A085413(n+1)))`
-/

namespace A085412.P3840128636483771191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.lor 1 (A085413 (n + 1))).toNat

end

end A085412.P3840128636483771191

namespace A085412

/-- `A344616(or(1, A085413(n+1)))` -/
def P3840128636483771191.Spec : Prop :=
  ∀ n, P3840128636483771191.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P5067592495326202378

`∑{d}[A085413(n+1), A263297(#)]`
-/

namespace A085412.P5067592495326202378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A263297 d

end

end A085412.P5067592495326202378

namespace A085412

/-- `∑{d}[A085413(n+1), A263297(#)]` -/
def P5067592495326202378.Spec : Prop :=
  ∀ n, P5067592495326202378.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P9786230438438549580

`∑{d}[A085413(n+1), A344616(#)]`
-/

namespace A085412.P9786230438438549580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344616 d

end

end A085412.P9786230438438549580

namespace A085412

/-- `∑{d}[A085413(n+1), A344616(#)]` -/
def P9786230438438549580.Spec : Prop :=
  ∀ n, P9786230438438549580.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P6783272117274869150

`A263297(∪[A344904(n+1), A085413(n+1)])`
-/

namespace A085412.P6783272117274869150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A085412.P6783272117274869150

namespace A085412

/-- `A263297(∪[A344904(n+1), A085413(n+1)])` -/
def P6783272117274869150.Spec : Prop :=
  ∀ n, P6783272117274869150.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P17355099957036507999

`A344616(∪[A085413(n+1), A344904(n+1)])`
-/

namespace A085412.P17355099957036507999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344904 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A085412.P17355099957036507999

namespace A085412

/-- `A344616(∪[A085413(n+1), A344904(n+1)])` -/
def P17355099957036507999.Spec : Prop :=
  ∀ n, P17355099957036507999.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P6732923865153389051

`A344616(∪[A085413(2*n+1), A085413(n+2)])`
-/

namespace A085412.P6732923865153389051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A085412.P6732923865153389051

namespace A085412

/-- `A344616(∪[A085413(2*n+1), A085413(n+2)])` -/
def P6732923865153389051.Spec : Prop :=
  ∀ n, P6732923865153389051.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P11412810183196018391

`A263297(∪[A085413(3*n+2), A085413(n+1)])`
-/

namespace A085412.P11412810183196018391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085413 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A085412.P11412810183196018391

namespace A085412

/-- `A263297(∪[A085413(3*n+2), A085413(n+1)])` -/
def P11412810183196018391.Spec : Prop :=
  ∀ n, P11412810183196018391.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P12454062812304210714

`A003963(p?[floor(A077652(n+1)/10)])`
-/

namespace A085412.P12454062812304210714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085412.P12454062812304210714

namespace A085412

/-- `A003963(p?[floor(A077652(n+1)/10)])` -/
def P12454062812304210714.Spec : Prop :=
  ∀ n, P12454062812304210714.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P12711720396453152638

`A026238(p?[floor(A077652(n+1)/10)])`
-/

namespace A085412.P12711720396453152638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085412.P12711720396453152638

namespace A085412

/-- `A026238(p?[floor(A077652(n+1)/10)])` -/
def P12711720396453152638.Spec : Prop :=
  ∀ n, P12711720396453152638.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P12983976242101348812

`A049084(p?[floor(A077652(n+1)/10)])`
-/

namespace A085412.P12983976242101348812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085412.P12983976242101348812

namespace A085412

/-- `A049084(p?[floor(A077652(n+1)/10)])` -/
def P12983976242101348812.Spec : Prop :=
  ∀ n, P12983976242101348812.a n = A085412 (n + 1)

end A085412

/-! ## A085412.P912834246969449443

`A055396(p?[floor(A077652(n+1)/10)])`
-/

namespace A085412.P912834246969449443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085412.P912834246969449443

namespace A085412

/-- `A055396(p?[floor(A077652(n+1)/10)])` -/
def P912834246969449443.Spec : Prop :=
  ∀ n, P912834246969449443.a n = A085412 (n + 1)

end A085412

/-!
# A085413: Prime such that concatenation of it and its first digit is prime.

The programs for A085413, the canonical program `A085413.P14024777601885863617` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085413 has offset 1).

The definition of A085413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085413.P5763941105419129115

`A156037(A085412(n+1))+A049347(3*(n+1))`
-/

namespace A085413.P5763941105419129115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A085412 (n + 1)).toNat + A049347 (3 * (n + 1))

end

end A085413.P5763941105419129115

namespace A085413

/-- `A156037(A085412(n+1))+A049347(3*(n+1))` -/
def P5763941105419129115.Spec : Prop :=
  ∀ n, P5763941105419129115.a n = A085413 (n + 1)

end A085413

/-! ## A085413.P14024777601885863617

`p?[floor(A077652(n+1)/10)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A085413

/-- `p?[floor(A077652(n+1)/10)]` -/
def P14024777601885863617.Spec : Prop :=
  ∀ n, P14024777601885863617.a n = A085413 (n + 1)

theorem P14024777601885863617.correct : P14024777601885863617.Spec := by
  intro n
  simp only [A085413, Nat.add_sub_cancel]

end A085413

/-! ## A085413.P1878758865933979726

`A000040(A085412(n+1))`
-/

namespace A085413.P1878758865933979726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085412 (n + 1)).toNat

end

end A085413.P1878758865933979726

namespace A085413

/-- `A000040(A085412(n+1))` -/
def P1878758865933979726.Spec : Prop :=
  ∀ n, P1878758865933979726.a n = A085413 (n + 1)

end A085413

/-! ## A085413.P4372359292599654198

`A008578(A085412(n+1)+1)`
-/

namespace A085413.P4372359292599654198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085412 (n + 1) + 1).toNat

end

end A085413.P4372359292599654198

namespace A085413

/-- `A008578(A085412(n+1)+1)` -/
def P4372359292599654198.Spec : Prop :=
  ∀ n, P4372359292599654198.a n = A085413 (n + 1)

end A085413

/-! ## A085413.P13598269901362334153

`A065091(A085412(n+1)-1)`
-/

namespace A085413.P13598269901362334153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A085412 (n + 1) - 1).toNat

end

end A085413.P13598269901362334153

namespace A085413

/-- `A065091(A085412(n+1)-1)` -/
def P13598269901362334153.Spec : Prop :=
  ∀ n, P13598269901362334153.a n = A085413 (n + 1)

end A085413

/-! ## A085413.P16465322442500864058

`A158611(A085412(n+1)+2)`
-/

namespace A085413.P16465322442500864058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A085412 (n + 1) + 2).toNat

end

end A085413.P16465322442500864058

namespace A085413

/-- `A158611(A085412(n+1)+2)` -/
def P16465322442500864058.Spec : Prop :=
  ∀ n, P16465322442500864058.a n = A085413 (n + 1)

end A085413

/-!
# A085414: Primes that are a concatenation of a prime and its first digit.

The programs for A085414, the canonical program `A085414.P12443412934305902750` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085414 has offset 1).

The definition of A085414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085414.P12443412934305902750

`∩[A077652(n+1), A227919(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A085414

/-- `∩[A077652(n+1), A227919(n+1)]` -/
def P12443412934305902750.Spec : Prop :=
  ∀ n, (P12443412934305902750.a n : ℤ) = A085414 (n + 1)

theorem P12443412934305902750.correct : P12443412934305902750.Spec := by
  intro n
  simp only [A085414, Nat.add_sub_cancel]

end A085414

/-!
# A085415: Take prime(n) and continue adding 1, 2, ..., a(n) until one reaches a prime.

The programs for A085415, there is no canonical definition to state claims against.
-/

/-! ## A085415.P18010004784151958774

`A002260(A085416(n+1)-A000040(n+1))`
-/

namespace A085415.P18010004784151958774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A085416 (n + 1) - A000040 (n + 1)).toNat

end

end A085415.P18010004784151958774

/-! ## A085415.P16586214798220691396

`A003056(A085416(n+1)-A000040(n+1))`
-/

namespace A085415.P16586214798220691396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A085416 (n + 1) - A000040 (n + 1)).toNat

end

end A085415.P16586214798220691396

/-! ## A085415.P8377073920804305165

`A003987(A085416(n+1)-A000040(n+1))`
-/

namespace A085415.P8377073920804305165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A085416 (n + 1) - A000040 (n + 1)).toNat

end

end A085415.P8377073920804305165

/-! ## A085415.P6963817522157942127

`A003056(A085416(n+1)-A006093(n+1))`
-/

namespace A085415.P6963817522157942127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A085416 (n + 1) - A006093 (n + 1)).toNat

end

end A085415.P6963817522157942127

/-! ## A085415.P11884363080177993298

`A025581(A085416(n+1)-A000040(n+1))`
-/

namespace A085415.P11884363080177993298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A085416 (n + 1) - A000040 (n + 1)).toNat

end

end A085415.P11884363080177993298

/-! ## A085415.P7434434419561496919

`A080098(A085416(n+1)-A000040(n+1))`
-/

namespace A085415.P7434434419561496919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A085416 (n + 1) - A000040 (n + 1)).toNat

end

end A085415.P7434434419561496919

/-! ## A085415.P5348318321042181856

`A249061(Δ[A007504(n)])`
-/

namespace A085415.P5348318321042181856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (n + 1) - f1 n).toNat

end

end A085415.P5348318321042181856

/-! ## A085415.P17931896020322323280

`A249061(record[A051698(n)])`
-/

namespace A085415.P17931896020322323280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085415.P17931896020322323280

/-! ## A085415.P11786132917116339272

`A249061(record[A110560(n)])`
-/

namespace A085415.P11786132917116339272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085415.P11786132917116339272

/-! ## A085415.P1178546079214855024

`A249061(record[A162753(n)])`
-/

namespace A085415.P1178546079214855024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085415.P1178546079214855024

/-! ## A085415.P4807209833469109204

`A249061(A000040(n+1))`
-/

namespace A085415.P4807209833469109204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A000040 (n + 1)).toNat

end

end A085415.P4807209833469109204

/-! ## A085415.P16280593777656894434

`A249061(A006005(n+1))`
-/

namespace A085415.P16280593777656894434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A006005 (n + 1)).toNat

end

end A085415.P16280593777656894434

/-! ## A085415.P2073302873348747578

`A249061(A008578(n+2))`
-/

namespace A085415.P2073302873348747578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A008578 (n + 2)).toNat

end

end A085415.P2073302873348747578

/-! ## A085415.P5791856557298567109

`A249061(A075643(n+2))`
-/

namespace A085415.P5791856557298567109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A075643 (n + 2)).toNat

end

end A085415.P5791856557298567109

/-! ## A085415.P9031533256364393709

`A249061(A182986(n+2))`
-/

namespace A085415.P9031533256364393709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A182986 (n + 2)).toNat

end

end A085415.P9031533256364393709

/-! ## A085415.P4042945671959210538

`A249061(record[A006530(n+2)])`
-/

namespace A085415.P4042945671959210538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085415.P4042945671959210538

/-! ## A085415.P6371773456948969309

`A249061(record[A014963(n+2)])`
-/

namespace A085415.P6371773456948969309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085415.P6371773456948969309

/-! ## A085415.P10758371875450212359

`A249061(record[A020639(n+2)])`
-/

namespace A085415.P10758371875450212359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085415.P10758371875450212359

/-! ## A085415.P14328739550710205991

`A249061(eq[1, A249061(n)]+1)`
-/

namespace A085415.P14328739550710205991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085415.P14328739550710205991

/-! ## A085415.P1487064764253484379

`A249061(A007504(n+1)-A007504(n))`
-/

namespace A085415.P1487064764253484379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A007504 (n + 1) - A007504 n).toNat

end

end A085415.P1487064764253484379

/-!
# A085416: Take prime(n) and continue adding 1,2,..., A085415(n) until one reaches a prime a(n).

The programs for A085416, there is no canonical definition to state claims against.
-/

/-! ## A085416.P16017178842657221043

`A000217(A085415(n+1))+Δ[A007504(n)]`
-/

namespace A085416.P16017178842657221043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A085415 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A085416.P16017178842657221043

/-! ## A085416.P1708376665742835014

`A000217(A085415(n+1))+A000040(n+1)`
-/

namespace A085416.P1708376665742835014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A085415 (n + 1)).toNat + A000040 (n + 1)

end

end A085416.P1708376665742835014

/-! ## A085416.P8320388246286587061

`A006093(n+1)+A000124(A085415(n+1))`
-/

namespace A085416.P8320388246286587061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000124 (A085415 (n + 1)).toNat

end

end A085416.P8320388246286587061

/-! ## A085416.P18255305376192992507

`A000124(A085415(n+1))+record[A000010(n+1)]`
-/

namespace A085416.P18255305376192992507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A085415 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085416.P18255305376192992507

/-! ## A085416.P6416150770726024604

`A000217(A085415(n+1))+record[A162753(n)]`
-/

namespace A085416.P6416150770726024604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A085415 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085416.P6416150770726024604

/-! ## A085416.P2886924272106331333

`A000217(A085415(n+1))+p?[A014681(n)]`
-/

namespace A085416.P2886924272106331333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A085415 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085416.P2886924272106331333

/-!
# A085417: Take prime(n) and continue adding n,n+1,..., n+a(n)-1 until one reaches a prime.

The programs for A085417, there is no canonical definition to state claims against.
-/

/-! ## A085417.P2612300207610686383

`A010276(A172395(n+1))`
-/

namespace A085417.P2612300207610686383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010276 (A172395 (n + 1)).toNat

end

end A085417.P2612300207610686383

/-! ## A085417.P3356533169290752519

`gcd(A130980(n), A225258(A015886(n)))`
-/

namespace A085417.P3356533169290752519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130980 n) (A225258 (A015886 n).toNat)

end

end A085417.P3356533169290752519

/-! ## A085417.P941845511720929453

`A017305(n)%A099777(A297520(n+1))`
-/

namespace A085417.P941845511720929453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017305 n) (A099777 (A297520 (n + 1)).toNat)

end

end A085417.P941845511720929453

/-! ## A085417.P8259581492353345422

`and(A020483(A193039(n)), A213815(n+1))`
-/

namespace A085417.P8259581492353345422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020483 (A193039 n).toNat) (A213815 (n + 1))

end

end A085417.P8259581492353345422

/-! ## A085417.P4204983866673432257

`A076844(A027894(n+1)-A001221(n+1))`
-/

namespace A085417.P4204983866673432257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076844 (A027894 (n + 1) - A001221 (n + 1)).toNat

end

end A085417.P4204983866673432257

/-!
# A085421: a(0)=2, a(1)=1, a(n+2)=floor[(e-1/e)*a(n+1)+a(n-2)].

The programs for A085421, there is no canonical definition to state claims against.
-/

/-! ## A085421.P11849732962193262306

`A022843(a(n-1))` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A085421.P11849732962193262306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  A022843 (a (n - 1)).toNat

end

end A085421.P11849732962193262306

/-! ## A085421.P11993906729427843522

`A022852(a(n-1))` with `a(0)=2, a(1)=1, a(2)=4, a(3)=10`
-/

namespace A085421.P11993906729427843522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 10] fun n a =>
  A022852 (a (n - 1)).toNat

end

end A085421.P11993906729427843522

/-! ## A085421.P9286555700114607008

`A184589(a(n-1))+1` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A085421.P9286555700114607008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  A184589 (a (n - 1)).toNat + 1

end

end A085421.P9286555700114607008

/-! ## A085421.P8310411195154406747

`A247778(2*a(n-1))` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A085421.P8310411195154406747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  A247778 (2 * a (n - 1)).toNat

end

end A085421.P8310411195154406747

/-! ## A085421.P6514336455256886063

`A279607(2*a(n-1))` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A085421.P6514336455256886063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  A279607 (2 * a (n - 1)).toNat

end

end A085421.P6514336455256886063

/-!
# A085422: A sequence analogous to the Lucas numbers (A000032), with ratios converging to Pi.

The programs for A085422, there is no canonical definition to state claims against.
-/

/-! ## A085422.P4612423628315969748

`A123578(A006880(n))-A008610(n)`
-/

namespace A085422.P4612423628315969748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A006880 n).toNat - A008610 n

end

end A085422.P4612423628315969748

/-! ## A085422.P8616639772185625692

`A123578(A006880(n))-A323858(n)`
-/

namespace A085422.P8616639772185625692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A006880 n).toNat - A323858 n

end

end A085422.P8616639772185625692

/-!
# A085423: a(n) = floor(log_2(3n)).

The programs for A085423, the canonical program `A085423.P955145333866998257` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085423 has offset 1).

The definition of A085423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(3*(n+1)))` (program `A085423.P955145333866998257`, by `A085423.P955145333866998257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085423.P955145333866998257

`floor(log2(3*(n+1)))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085423

/-- `floor(log2(3*(n+1)))` -/
def P955145333866998257.Spec : Prop :=
  ∀ n, (P955145333866998257.a n : ℤ) = A085423 (n + 1)

theorem P955145333866998257.correct : P955145333866998257.Spec := by
  intro n
  simp only [A085423, Nat.add_sub_cancel]

end A085423

/-! ## A085423.P8359444492366056777

`A000523(A008585(n+1))`
-/

namespace A085423.P8359444492366056777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A008585 (n + 1)).toNat

end

end A085423.P8359444492366056777

namespace A085423

/-- `A000523(A008585(n+1))` -/
def P8359444492366056777.Spec : Prop :=
  ∀ n, P8359444492366056777.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P18412222816427870060

`ceil(log2(∑[gcd(2, n)]))`
-/

namespace A085423.P18412222816427870060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A085423.P18412222816427870060

namespace A085423

/-- `ceil(log2(∑[gcd(2, n)]))` -/
def P18412222816427870060.Spec : Prop :=
  ∀ n, P18412222816427870060.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P1734195833297859908

`ceil(log2(∑[2-n%2]))`
-/

namespace A085423.P1734195833297859908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A085423.P1734195833297859908

namespace A085423

/-- `ceil(log2(∑[2-n%2]))` -/
def P1734195833297859908.Spec : Prop :=
  ∀ n, P1734195833297859908.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P6355035628945223796

`ceil(log2(∑[2-and(1, n)]))`
-/

namespace A085423.P6355035628945223796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A085423.P6355035628945223796

namespace A085423

/-- `ceil(log2(∑[2-and(1, n)]))` -/
def P6355035628945223796.Spec : Prop :=
  ∀ n, P6355035628945223796.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P293913856126110523

`ceil(log2(∑[and(3, n)]+2))`
-/

namespace A085423.P293913856126110523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ)⌉

end

end A085423.P293913856126110523

namespace A085423

/-- `ceil(log2(∑[and(3, n)]+2))` -/
def P293913856126110523.Spec : Prop :=
  ∀ n, P293913856126110523.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P5285244083474920766

`∑[char[ogf(x/(1-2x-x^2+2x^3))]]`
-/

namespace A085423.P5285244083474920766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -1, 2] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085423.P5285244083474920766

namespace A085423

/-- `∑[char[ogf(x/(1-2x-x^2+2x^3))]]` -/
def P5285244083474920766.Spec : Prop :=
  ∀ n, (P5285244083474920766.a n : ℤ) = A085423 (n + 1)

end A085423

/-! ## A085423.P11563508632117671031

`∑[char[record[2*n-and(n, 3*n)]]]`
-/

namespace A085423.P11563508632117671031
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land n (3 * n) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085423.P11563508632117671031

namespace A085423

/-- `∑[char[record[2*n-and(n, 3*n)]]]` -/
def P11563508632117671031.Spec : Prop :=
  ∀ n, (P11563508632117671031.a n : ℤ) = A085423 (n + 1)

end A085423

/-! ## A085423.P11796049696313937975

`a(floor((n-a(n-1)%2)/2))+1` with `a(0)=1`
-/

namespace A085423.P11796049696313937975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - ((a (n - 1) % 2 : ℕ) : ℤ) : ℚ) / 2⌋.toNat + 1

end

end A085423.P11796049696313937975

namespace A085423

/-- `a(floor((n-a(n-1)%2)/2))+1` -/
def P11796049696313937975.Spec : Prop :=
  ∀ n, (P11796049696313937975.a n : ℤ) = A085423 (n + 1)

end A085423

/-! ## A085423.P2039505324684240771

`ceil(log2(A299407(n)))`
-/

namespace A085423.P2039505324684240771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A299407 n : ℝ)⌉

end

end A085423.P2039505324684240771

namespace A085423

/-- `ceil(log2(A299407(n)))` -/
def P2039505324684240771.Spec : Prop :=
  ∀ n, P2039505324684240771.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P18016659726795286185

`∑[char[A000975(n)]]`
-/

namespace A085423.P18016659726795286185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085423.P18016659726795286185

namespace A085423

/-- `∑[char[A000975(n)]]` -/
def P18016659726795286185.Spec : Prop :=
  ∀ n, (P18016659726795286185.a n : ℤ) = A085423 (n + 1)

end A085423

/-! ## A085423.P7979483295212101018

`∑[char[∑[A001045(n)]]]`
-/

namespace A085423.P7979483295212101018
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085423.P7979483295212101018

namespace A085423

/-- `∑[char[∑[A001045(n)]]]` -/
def P7979483295212101018.Spec : Prop :=
  ∀ n, (P7979483295212101018.a n : ℤ) = A085423 (n + 1)

end A085423

/-! ## A085423.P4305542128107036602

`ceil(log2(A007494(n+1)))`
-/

namespace A085423.P4305542128107036602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A007494 (n + 1) : ℝ)⌉

end

end A085423.P4305542128107036602

namespace A085423

/-- `ceil(log2(A007494(n+1)))` -/
def P4305542128107036602.Spec : Prop :=
  ∀ n, P4305542128107036602.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P8877253021246804084

`floor(log2(A016969(n)))-1`
-/

namespace A085423.P8877253021246804084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A016969 n).toNat : ℤ) - 1

end

end A085423.P8877253021246804084

namespace A085423

/-- `floor(log2(A016969(n)))-1` -/
def P8877253021246804084.Spec : Prop :=
  ∀ n, P8877253021246804084.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P12000514924062251465

`ceil(log2(A032766(n)+2))`
-/

namespace A085423.P12000514924062251465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A032766 n + 2 : ℝ)⌉

end

end A085423.P12000514924062251465

namespace A085423

/-- `ceil(log2(A032766(n)+2))` -/
def P12000514924062251465.Spec : Prop :=
  ∀ n, P12000514924062251465.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P4455158204732539099

`∑[floor(1/A284559(n))]`
-/

namespace A085423.P4455158204732539099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A284559 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085423.P4455158204732539099

namespace A085423

/-- `∑[floor(1/A284559(n))]` -/
def P4455158204732539099.Spec : Prop :=
  ∀ n, P4455158204732539099.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P3203528757349439515

`∑[A147612(2*n+1)]`
-/

namespace A085423.P3203528757349439515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085423.P3203528757349439515

namespace A085423

/-- `∑[A147612(2*n+1)]` -/
def P3203528757349439515.Spec : Prop :=
  ∀ n, P3203528757349439515.a n = A085423 (n + 1)

end A085423

/-! ## A085423.P17987801188486894396

`A072649(A022290(n+1))`
-/

namespace A085423.P17987801188486894396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A022290 (n + 1)).toNat

end

end A085423.P17987801188486894396

namespace A085423

/-- `A072649(A022290(n+1))` -/
def P17987801188486894396.Spec : Prop :=
  ∀ n, P17987801188486894396.a n = A085423 (n + 1)

end A085423

/-!
# A085424: Number of ones in the symmetric signed digit expansion of n with q=2 (i.e., the representation of n in the (-1,0,1)_2 number system).

The programs for A085424, the canonical program `A085424.P14560680484762153167` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085424 has offset 1).

The definition of A085424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085424.P5790510385925162907

`log2(A001316(and(3*n+2, -(n+1))))`
-/

namespace A085424.P5790510385925162907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (Int.land (3 * n + 2 : ℤ) (-(n + 1 : ℤ))).toNat : ℝ)

end

end A085424.P5790510385925162907

namespace A085424

/-- `log2(A001316(and(3*n+2, -(n+1))))` -/
def P5790510385925162907.Spec : Prop :=
  ∀ n, P5790510385925162907.a n = (A085424 (n + 1) : ℝ)

end A085424

/-! ## A085424.P14560680484762153167

`A007302(n+1)-A085425(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085424

/-- `A007302(n+1)-A085425(n+1)` -/
def P14560680484762153167.Spec : Prop :=
  ∀ n, P14560680484762153167.a n = A085424 (n + 1)

theorem P14560680484762153167.correct : P14560680484762153167.Spec := by
  intro n
  simp only [A085424, Nat.add_sub_cancel]

end A085424

/-! ## A085424.P15558377677652181324

`A085423(n+1)-(A085425(n+1)+A057526(n+1))`
-/

namespace A085424.P15558377677652181324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) - (A085425 (n + 1) + A057526 (n + 1))

end

end A085424.P15558377677652181324

namespace A085424

/-- `A085423(n+1)-(A085425(n+1)+A057526(n+1))` -/
def P15558377677652181324.Spec : Prop :=
  ∀ n, P15558377677652181324.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P9195986467600247633

`A000120(A184615(n+1))`
-/

namespace A085424.P9195986467600247633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184615 (n + 1)).toNat

end

end A085424.P9195986467600247633

namespace A085424

/-- `A000120(A184615(n+1))` -/
def P9195986467600247633.Spec : Prop :=
  ∀ n, P9195986467600247633.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P2545723137985169975

`A000120(A184616(n+1)+n+1)`
-/

namespace A085424.P2545723137985169975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184616 (n + 1) + (n + 1 : ℤ)).toNat

end

end A085424.P2545723137985169975

namespace A085424

/-- `A000120(A184616(n+1)+n+1)` -/
def P2545723137985169975.Spec : Prop :=
  ∀ n, P2545723137985169975.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P2408253642309132030

`A007302(A184616(n+1)+n+1)`
-/

namespace A085424.P2408253642309132030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184616 (n + 1) + (n + 1 : ℤ)).toNat

end

end A085424.P2408253642309132030

namespace A085424

/-- `A007302(A184616(n+1)+n+1)` -/
def P2408253642309132030.Spec : Prop :=
  ∀ n, P2408253642309132030.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P3591901683060975804

`A334913(A184616(n+1)+n+1)`
-/

namespace A085424.P3591901683060975804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184616 (n + 1) + (n + 1 : ℤ)).toNat

end

end A085424.P3591901683060975804

namespace A085424

/-- `A334913(A184616(n+1)+n+1)` -/
def P3591901683060975804.Spec : Prop :=
  ∀ n, P3591901683060975804.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P2858289799977728667

`A334913(A184615(A379262(A379261(n+1))))`
-/

namespace A085424.P2858289799977728667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184615 (A379262 (A379261 (n + 1)).toNat).toNat).toNat

end

end A085424.P2858289799977728667

namespace A085424

/-- `A334913(A184615(A379262(A379261(n+1))))` -/
def P2858289799977728667.Spec : Prop :=
  ∀ n, P2858289799977728667.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P1424761628419205857

`A069010(and(3*n+2, -(n+1)))`
-/

namespace A085424.P1424761628419205857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.land (3 * n + 2 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A085424.P1424761628419205857

namespace A085424

/-- `A069010(and(3*n+2, -(n+1)))` -/
def P1424761628419205857.Spec : Prop :=
  ∀ n, P1424761628419205857.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P14082926621603504974

`A069010(2*A184615(n+1))`
-/

namespace A085424.P14082926621603504974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * A184615 (n + 1)).toNat

end

end A085424.P14082926621603504974

namespace A085424

/-- `A069010(2*A184615(n+1))` -/
def P14082926621603504974.Spec : Prop :=
  ∀ n, P14082926621603504974.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P10493974224318106210

`A000120(or(n, 3*n+2)-n)`
-/

namespace A085424.P10493974224318106210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.lor n (3 * n + 2) - n)

end

end A085424.P10493974224318106210

namespace A085424

/-- `A000120(or(n, 3*n+2)-n)` -/
def P10493974224318106210.Spec : Prop :=
  ∀ n, P10493974224318106210.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P11762842737633061822

`A000120(and(3*n+2, -(n+1)))`
-/

namespace A085424.P11762842737633061822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (3 * n + 2 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A085424.P11762842737633061822

namespace A085424

/-- `A000120(and(3*n+2, -(n+1)))` -/
def P11762842737633061822.Spec : Prop :=
  ∀ n, P11762842737633061822.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P11295633186450416714

`A000120(3*n+2-and(n, 3*n+2))`
-/

namespace A085424.P11295633186450416714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n + 2 - Nat.land n (3 * n + 2))

end

end A085424.P11295633186450416714

namespace A085424

/-- `A000120(3*n+2-and(n, 3*n+2))` -/
def P11295633186450416714.Spec : Prop :=
  ∀ n, P11295633186450416714.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P9686999000169088248

`A334913(2*A184615(n+1))`
-/

namespace A085424.P9686999000169088248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (2 * A184615 (n + 1)).toNat

end

end A085424.P9686999000169088248

namespace A085424

/-- `A334913(2*A184615(n+1))` -/
def P9686999000169088248.Spec : Prop :=
  ∀ n, P9686999000169088248.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P17277589353646940683

`A000120(A184617(n+1)+n+1)`
-/

namespace A085424.P17277589353646940683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184617 (n + 1) + (n + 1 : ℤ)).toNat

end

end A085424.P17277589353646940683

namespace A085424

/-- `A000120(A184617(n+1)+n+1)` -/
def P17277589353646940683.Spec : Prop :=
  ∀ n, P17277589353646940683.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P7751393828484705719

`A007302(A184617(n+1)+n+1)`
-/

namespace A085424.P7751393828484705719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184617 (n + 1) + (n + 1 : ℤ)).toNat

end

end A085424.P7751393828484705719

namespace A085424

/-- `A007302(A184617(n+1)+n+1)` -/
def P7751393828484705719.Spec : Prop :=
  ∀ n, P7751393828484705719.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P13114110693306084443

`A334913(A184617(n+1)+n+1)`
-/

namespace A085424.P13114110693306084443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184617 (n + 1) + (n + 1 : ℤ)).toNat

end

end A085424.P13114110693306084443

namespace A085424

/-- `A334913(A184617(n+1)+n+1)` -/
def P13114110693306084443.Spec : Prop :=
  ∀ n, P13114110693306084443.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P12939469582288133514

`A007302(A184615(n+1)+A184615(n+1))`
-/

namespace A085424.P12939469582288133514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184615 (n + 1) + A184615 (n + 1)).toNat

end

end A085424.P12939469582288133514

namespace A085424

/-- `A007302(A184615(n+1)+A184615(n+1))` -/
def P12939469582288133514.Spec : Prop :=
  ∀ n, P12939469582288133514.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P6366279338978435406

`A334913(A184615(n+1)+A184615(n+1))`
-/

namespace A085424.P6366279338978435406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184615 (n + 1) + A184615 (n + 1)).toNat

end

end A085424.P6366279338978435406

namespace A085424

/-- `A334913(A184615(n+1)+A184615(n+1))` -/
def P6366279338978435406.Spec : Prop :=
  ∀ n, P6366279338978435406.a n = A085424 (n + 1)

end A085424

/-! ## A085424.P8763941629836668012

`A007302(A184615(2*(n+1)))`
-/

namespace A085424.P8763941629836668012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184615 (2 * (n + 1))).toNat

end

end A085424.P8763941629836668012

namespace A085424

/-- `A007302(A184615(2*(n+1)))` -/
def P8763941629836668012.Spec : Prop :=
  ∀ n, P8763941629836668012.a n = A085424 (n + 1)

end A085424

/-!
# A085425: Number of minus ones in the symmetric signed digit expansion of n with q=2 (i.e., the representation of n in the (-1,0,1)_2 number system).

The programs for A085425, the canonical program `A085425.P14460580140874115341` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085425 has offset 1).

The definition of A085425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085425.P14460580140874115341

`A000120(and(n, -(3*(n+1))))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A085425

/-- `A000120(and(n, -(3*(n+1))))` -/
def P14460580140874115341.Spec : Prop :=
  ∀ n, P14460580140874115341.a n = A085425 (n + 1)

theorem P14460580140874115341.correct : P14460580140874115341.Spec := by
  intro n
  simp only [A085425, Nat.add_sub_cancel]

end A085425

/-! ## A085425.P12211603913906899403

`A000120(n-and(n, 3*n+2))`
-/

namespace A085425.P12211603913906899403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n - Nat.land n (3 * n + 2))

end

end A085425.P12211603913906899403

namespace A085425

/-- `A000120(n-and(n, 3*n+2))` -/
def P12211603913906899403.Spec : Prop :=
  ∀ n, P12211603913906899403.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P4583219110405101989

`log2(A001316(and(n, -(3*(n+1)))))`
-/

namespace A085425.P4583219110405101989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (Int.land (n : ℤ) (-(3 * (n + 1) : ℤ))).toNat : ℝ)

end

end A085425.P4583219110405101989

namespace A085425

/-- `log2(A001316(and(n, -(3*(n+1)))))` -/
def P4583219110405101989.Spec : Prop :=
  ∀ n, P4583219110405101989.a n = (A085425 (n + 1) : ℝ)

end A085425

/-! ## A085425.P10581213164759571609

`A000120(xor(n, and(n, 3*n+2)))`
-/

namespace A085425.P10581213164759571609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor n (Nat.land n (3 * n + 2)))

end

end A085425.P10581213164759571609

namespace A085425

/-- `A000120(xor(n, and(n, 3*n+2)))` -/
def P10581213164759571609.Spec : Prop :=
  ∀ n, P10581213164759571609.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P5333019892823268054

`A007302(n+1)-A085424(n+1)`
-/

namespace A085425.P5333019892823268054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) - A085424 (n + 1)

end

end A085425.P5333019892823268054

namespace A085425

/-- `A007302(n+1)-A085424(n+1)` -/
def P5333019892823268054.Spec : Prop :=
  ∀ n, P5333019892823268054.a n = A085425 (n + 1)

theorem P5333019892823268054.correct : P5333019892823268054.Spec := by
  intro n
  simp only [A085425, Nat.add_sub_cancel, A085425.P5333019892823268054.a, A085425.P14460580140874115341.a, A000120, A000120.P2816527436160941581.a, A007302, A007302.P7515534801561219706.a, A085424, A085424.P14560680484762153167.a, A005187, A005187.P3874015513960485494.a, A069010, A069010.P14932719103722593844.a, A184617, A184617.P6500714334577552436.a, A005811, A005811.P8696411420205566785.a, A178729, A178729.P1381440878226345061.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085425

/-! ## A085425.P16514587663595166628

`A000120(A184617(n+1)-(n+1))`
-/

namespace A085425.P16514587663595166628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184617 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P16514587663595166628

namespace A085425

/-- `A000120(A184617(n+1)-(n+1))` -/
def P16514587663595166628.Spec : Prop :=
  ∀ n, P16514587663595166628.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P11525057534421305812

`A007302(A184617(n+1)-(n+1))`
-/

namespace A085425.P11525057534421305812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184617 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P11525057534421305812

namespace A085425

/-- `A007302(A184617(n+1)-(n+1))` -/
def P11525057534421305812.Spec : Prop :=
  ∀ n, P11525057534421305812.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P11505914469726159868

`A334913(A184617(n+1)-(n+1))`
-/

namespace A085425.P11505914469726159868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184617 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P11505914469726159868

namespace A085425

/-- `A334913(A184617(n+1)-(n+1))` -/
def P11505914469726159868.Spec : Prop :=
  ∀ n, P11505914469726159868.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P13869771902355159972

`A085423(n+1)-(A085424(n+1)+A057526(n+1))`
-/

namespace A085425.P13869771902355159972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) - (A085424 (n + 1) + A057526 (n + 1))

end

end A085425.P13869771902355159972

namespace A085425

/-- `A085423(n+1)-(A085424(n+1)+A057526(n+1))` -/
def P13869771902355159972.Spec : Prop :=
  ∀ n, P13869771902355159972.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P9551011623227697319

`A085424(n+1)-A334913(n+1)`
-/

namespace A085425.P9551011623227697319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085424 (n + 1) - A334913 (n + 1)

end

end A085425.P9551011623227697319

namespace A085425

/-- `A085424(n+1)-A334913(n+1)` -/
def P9551011623227697319.Spec : Prop :=
  ∀ n, P9551011623227697319.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P7206878411387721620

`A000120(A184616(n+1))`
-/

namespace A085425.P7206878411387721620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184616 (n + 1)).toNat

end

end A085425.P7206878411387721620

namespace A085425

/-- `A000120(A184616(n+1))` -/
def P7206878411387721620.Spec : Prop :=
  ∀ n, P7206878411387721620.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P4318882481494083791

`A334913(2*A184616(n+1))`
-/

namespace A085425.P4318882481494083791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (2 * A184616 (n + 1)).toNat

end

end A085425.P4318882481494083791

namespace A085425

/-- `A334913(2*A184616(n+1))` -/
def P4318882481494083791.Spec : Prop :=
  ∀ n, P4318882481494083791.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P10563207506987955390

`A000120(A184615(n+1)-(n+1))`
-/

namespace A085425.P10563207506987955390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184615 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P10563207506987955390

namespace A085425

/-- `A000120(A184615(n+1)-(n+1))` -/
def P10563207506987955390.Spec : Prop :=
  ∀ n, P10563207506987955390.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P13157045730491492813

`A007302(A184615(n+1)-(n+1))`
-/

namespace A085425.P13157045730491492813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184615 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P13157045730491492813

namespace A085425

/-- `A007302(A184615(n+1)-(n+1))` -/
def P13157045730491492813.Spec : Prop :=
  ∀ n, P13157045730491492813.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P18314660156876766357

`A069010(A184615(n+1)-(n+1))`
-/

namespace A085425.P18314660156876766357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A184615 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P18314660156876766357

namespace A085425

/-- `A069010(A184615(n+1)-(n+1))` -/
def P18314660156876766357.Spec : Prop :=
  ∀ n, P18314660156876766357.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P16597616322140461665

`A334913(A184615(n+1)-(n+1))`
-/

namespace A085425.P16597616322140461665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184615 (n + 1) - (n + 1 : ℤ)).toNat

end

end A085425.P16597616322140461665

namespace A085425

/-- `A334913(A184615(n+1)-(n+1))` -/
def P16597616322140461665.Spec : Prop :=
  ∀ n, P16597616322140461665.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P14428318452824596727

`A007302(A184616(2*(n+1)))`
-/

namespace A085425.P14428318452824596727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A184616 (2 * (n + 1))).toNat

end

end A085425.P14428318452824596727

namespace A085425

/-- `A007302(A184616(2*(n+1)))` -/
def P14428318452824596727.Spec : Prop :=
  ∀ n, P14428318452824596727.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P5563288482184120760

`A334913(A184616(n+2+n))`
-/

namespace A085425.P5563288482184120760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A184616 (n + 2 + n)).toNat

end

end A085425.P5563288482184120760

namespace A085425

/-- `A334913(A184616(n+2+n))` -/
def P5563288482184120760.Spec : Prop :=
  ∀ n, P5563288482184120760.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P9071186210875839789

`A065363(A379658(A184616(A379658(A379657(n+1)))))`
-/

namespace A085425.P9071186210875839789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A379658 (A184616 (A379658 (A379657 (n + 1)).toNat).toNat).toNat).toNat

end

end A085425.P9071186210875839789

namespace A085425

/-- `A065363(A379658(A184616(A379658(A379657(n+1)))))` -/
def P9071186210875839789.Spec : Prop :=
  ∀ n, P9071186210875839789.a n = A085425 (n + 1)

end A085425

/-! ## A085425.P4883024359556581051

`A134022(A379658(n+1))`
-/

namespace A085425.P4883024359556581051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A379658 (n + 1)).toNat

end

end A085425.P4883024359556581051

namespace A085425

/-- `A134022(A379658(n+1))` -/
def P4883024359556581051.Spec : Prop :=
  ∀ n, P4883024359556581051.a n = A085425 (n + 1)

end A085425

/-!
# A085427: Least k such that k*2^n - 1 is prime.

The programs for A085427, there is no canonical definition to state claims against.
-/

/-! ## A085427.P15660316633709642653

`A127587(n)+1`
-/

namespace A085427.P15660316633709642653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n + 1

end

end A085427.P15660316633709642653

/-! ## A085427.P5627702704024812192

`A027656(2*A127587(n))`
-/

namespace A085427.P5627702704024812192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A127587 n).toNat

end

end A085427.P5627702704024812192

/-! ## A085427.P8673518526254296247

`A028242(2*A127587(n))`
-/

namespace A085427.P8673518526254296247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A127587 n).toNat

end

end A085427.P8673518526254296247

/-! ## A085427.P17542052479169427028

`A242112(2*A127587(n))`
-/

namespace A085427.P17542052479169427028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (2 * A127587 n).toNat

end

end A085427.P17542052479169427028

/-! ## A085427.P13708310933467118835

`A008611(3*A127587(n))`
-/

namespace A085427.P13708310933467118835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A127587 n).toNat

end

end A085427.P13708310933467118835

/-! ## A085427.P11818065997595144780

`A008624(4*A127587(n))`
-/

namespace A085427.P11818065997595144780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A127587 n).toNat

end

end A085427.P11818065997595144780

/-! ## A085427.P9542432065885852102

`2-(A001222(A007918(n))-A127587(n))`
-/

namespace A085427.P9542432065885852102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001222 (A007918 n).toNat - A127587 n)

end

end A085427.P9542432065885852102

/-! ## A085427.P9912017845951145545

`A001105(n)-(A056220(n)-A127587(n))`
-/

namespace A085427.P9912017845951145545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - (A056220 n - A127587 n)

end

end A085427.P9912017845951145545

/-! ## A085427.P8030601176655988180

`(A127582(n)+1)/2^n`
-/

namespace A085427.P8030601176655988180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127582 n + 1 : ℚ) / (2 ^ n : ℚ)

end

end A085427.P8030601176655988180

/-!
# A085428: Sum of the smallest and largest prime divisors of the n-th composite number.

The programs for A085428, there is no canonical definition to state claims against.
-/

/-! ## A085428.P17882174886221188388

`A052369(n+1)+p?[A107286(n)]`
-/

namespace A085428.P17882174886221188388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085428.P17882174886221188388

/-! ## A085428.P11658538824706590529

`A056608(n+1)+A052369(n+1)`
-/

namespace A085428.P11658538824706590529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + A052369 (n + 1)

end

end A085428.P11658538824706590529

/-! ## A085428.P4744533111564587144

`A079772(n+1)-A085273(n+1)`
-/

namespace A085428.P4744533111564587144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) - A085273 (n + 1)

end

end A085428.P4744533111564587144

/-! ## A085428.P714406243769734432

`A085275(n+1)-A085271(n+1)`
-/

namespace A085428.P714406243769734432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085275 (n + 1) - A085271 (n + 1)

end

end A085428.P714406243769734432

/-! ## A085428.P4804968238877610416

`A002808(n+1)+A056608(n+1)-A085273(n+1)`
-/

namespace A085428.P4804968238877610416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A056608 (n + 1) - A085273 (n + 1))

end

end A085428.P4804968238877610416

/-! ## A085428.P14705967468473561016

`A056608(n+1)+A085275(n+1)-A002808(n+1)`
-/

namespace A085428.P14705967468473561016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + (A085275 (n + 1) - A002808 (n + 1))

end

end A085428.P14705967468473561016

/-! ## A085428.P16836746738034634065

`A056608(n+1)+A002808(n+1)/A161003(n+1)`
-/

namespace A085428.P16836746738034634065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056608 (n + 1) : ℚ) + (A002808 (n + 1) : ℚ) / (A161003 (n + 1) : ℚ)

end

end A085428.P16836746738034634065

/-! ## A085428.P8853064718636582740

`A020639(A002808(n+1))+A006530(A002808(n+1))`
-/

namespace A085428.P8853064718636582740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002808 (n + 1)).toNat + A006530 (A002808 (n + 1)).toNat

end

end A085428.P8853064718636582740

/-! ## A085428.P15054391199137171104

`A074320(comp[A351078(n)])`
-/

namespace A085428.P15054391199137171104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A085428.P15054391199137171104

/-! ## A085428.P1831562301437280441

`A074320(A002808(n+1))`
-/

namespace A085428.P1831562301437280441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (A002808 (n + 1)).toNat

end

end A085428.P1831562301437280441

/-! ## A085428.P8503662991300500098

`A074320(A018252(n+2))`
-/

namespace A085428.P8503662991300500098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (A018252 (n + 2)).toNat

end

end A085428.P8503662991300500098

/-! ## A085428.P18191144695447175574

`A074320(lt[0, A082023(n)])`
-/

namespace A085428.P18191144695447175574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085428.P18191144695447175574

/-! ## A085428.P4094403742340283771

`A074320(lt[1, A107286(n)])`
-/

namespace A085428.P4094403742340283771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085428.P4094403742340283771

/-! ## A085428.P16787114385971015321

`A074320(comp[C(A006530(n+1), n)])`
-/

namespace A085428.P16787114385971015321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A085428.P16787114385971015321

/-! ## A085428.P10452167644111836167

`A074320(comp[C(A020639(n+1), n)])`
-/

namespace A085428.P10452167644111836167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A085428.P10452167644111836167

/-! ## A085428.P7633594331871480285

`A052369(n+1)+A052126(A088739(n+1))`
-/

namespace A085428.P7633594331871480285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) + A052126 (A088739 (n + 1)).toNat

end

end A085428.P7633594331871480285

/-!
# A085429: Numbers k such that the number of 1's in the binary expansion of k is equal to the number of 1's in the binary expansion of the reversal of k.

The programs for A085429, there is no canonical definition to state claims against.
-/

/-! ## A085429.P8777541585968997775

`eq[A001316(n), A001316(A004086(n))]`
-/

namespace A085429.P8777541585968997775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P8777541585968997775

/-! ## A085429.P9120096701324833474

`eq[A000120(n), A000120(A004086(n))]`
-/

namespace A085429.P9120096701324833474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P9120096701324833474

/-! ## A085429.P15775276923324942818

`eq[A038573(A004086(n)), A038573(n)]`
-/

namespace A085429.P15775276923324942818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P15775276923324942818

/-! ## A085429.P17043765044111683559

`eq[A001316(n), A001316(A081431(n))]`
-/

namespace A085429.P17043765044111683559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A081431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P17043765044111683559

/-! ## A085429.P4807682414138437679

`eq[A048883(A004086(n)), A048883(n)]`
-/

namespace A085429.P4807682414138437679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P4807682414138437679

/-! ## A085429.P1862028622532166004

`eq[A180018(A004086(n)), A180018(n)]`
-/

namespace A085429.P1862028622532166004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P1862028622532166004

/-! ## A085429.P5441605177969038250

`eq[A000120(n-A056965(n)), A000120(n)]`
-/

namespace A085429.P5441605177969038250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A056965 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P5441605177969038250

/-! ## A085429.P8997964567621458785

`eq[A000120(n), A000120(A056964(n)-n)]`
-/

namespace A085429.P8997964567621458785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P8997964567621458785

/-! ## A085429.P5785930937319758153

`eq[A038573(n-A056965(n)), A038573(n)]`
-/

namespace A085429.P5785930937319758153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 ((n : ℤ) - A056965 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P5785930937319758153

/-! ## A085429.P16205362744010642612

`eq[A000120(n), A000120(A081431(n))]`
-/

namespace A085429.P16205362744010642612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A081431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085429.P16205362744010642612

/-!
# A085431: a(n) = (2^(n-1) + prime(n+1)-prime(n))/2.

The programs for A085431, the canonical program `A085431.P6345133048144332819` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085431 has offset 1).

The definition of A085431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085431.P6345133048144332819

`Δ[A130291(n+1)]+ceil(2^(n-1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A085431

/-- `Δ[A130291(n+1)]+ceil(2^(n-1))` -/
def P6345133048144332819.Spec : Prop :=
  ∀ n, P6345133048144332819.a n = A085431 (n + 1)

theorem P6345133048144332819.correct : P6345133048144332819.Spec := by
  intro n
  simp only [A085431, Nat.add_sub_cancel]

end A085431

/-! ## A085431.P6344097206472489719

`A100820(n+1)+A094373(n)`
-/

namespace A085431.P6344097206472489719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) + A094373 n

end

end A085431.P6344097206472489719

namespace A085431

/-- `A100820(n+1)+A094373(n)` -/
def P6344097206472489719.Spec : Prop :=
  ∀ n, P6344097206472489719.a n = A085431 (n + 1)

end A085431

/-! ## A085431.P8592659914844782346

`A011782(n)+Δ[A130290(n+1)]`
-/

namespace A085431.P8592659914844782346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A085431.P8592659914844782346

namespace A085431

/-- `A011782(n)+Δ[A130290(n+1)]` -/
def P8592659914844782346.Spec : Prop :=
  ∀ n, P8592659914844782346.a n = A085431 (n + 1)

theorem P8592659914844782346.correct : P8592659914844782346.Spec := by
  intro n
  simp only [A085431, Nat.add_sub_cancel, A085431.P8592659914844782346.f1, A085431.P8592659914844782346.a, A085431.P6345133048144332819.f1, A085431.P6345133048144332819.a, A011782, A011782.P7461078519819856082.a, A130290, A130290.P12006832031725450867.a, A130291, A130291.P14568566917462971400.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085431

/-! ## A085431.P4251614238616563327

`A067076(n+1)+A093304(n+1)-A000071(n+2)`
-/

namespace A085431.P4251614238616563327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (A093304 (n + 1) - A000071 (n + 2))

end

end A085431.P4251614238616563327

namespace A085431

/-- `A067076(n+1)+A093304(n+1)-A000071(n+2)` -/
def P4251614238616563327.Spec : Prop :=
  ∀ n, P4251614238616563327.a n = A085431 (n + 1)

end A085431

/-! ## A085431.P17409133639205898492

`Δ[A092176(n)]`
-/

namespace A085431.P17409133639205898492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085431.P17409133639205898492

namespace A085431

/-- `Δ[A092176(n)]` -/
def P17409133639205898492.Spec : Prop :=
  ∀ n, P17409133639205898492.a n = A085431 (n + 1)

end A085431

/-! ## A085431.P11552648158183103338

`A092176(n+1)-A092176(n)`
-/

namespace A085431.P11552648158183103338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092176 (n + 1) - A092176 n

end

end A085431.P11552648158183103338

namespace A085431

/-- `A092176(n+1)-A092176(n)` -/
def P11552648158183103338.Spec : Prop :=
  ∀ n, P11552648158183103338.a n = A085431 (n + 1)

end A085431

/-! ## A085431.P17980361178150395309

`(A001223(n+1)+A000079(n))/2`
-/

namespace A085431.P17980361178150395309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) + A000079 n : ℚ) / 2

end

end A085431.P17980361178150395309

namespace A085431

/-- `(A001223(n+1)+A000079(n))/2` -/
def P17980361178150395309.Spec : Prop :=
  ∀ n, P17980361178150395309.a n = (A085431 (n + 1) : ℚ)

end A085431

/-! ## A085431.P14468470690212278705

`(A001223(n+1)+A000325(n)+n)/2`
-/

namespace A085431.P14468470690212278705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) + A000325 n + (n : ℤ) : ℚ) / 2

end

end A085431.P14468470690212278705

namespace A085431

/-- `(A001223(n+1)+A000325(n)+n)/2` -/
def P14468470690212278705.Spec : Prop :=
  ∀ n, P14468470690212278705.a n = (A085431 (n + 1) : ℚ)

end A085431

/-! ## A085431.P9421420958486813788

`Δ[floor(or(p?[xor(1, n)]-2, 2^n)/2)]`
-/

namespace A085431.P9421420958486813788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2) (2 ^ n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085431.P9421420958486813788

namespace A085431

/-- `Δ[floor(or(p?[xor(1, n)]-2, 2^n)/2)]` -/
def P9421420958486813788.Spec : Prop :=
  ∀ n, P9421420958486813788.a n = A085431 (n + 1)

end A085431

/-! ## A085431.P1883155708846888392

`Δ[(A000040(n+1)+2^n)/2]`
-/

namespace A085431.P1883155708846888392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + (2 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085431.P1883155708846888392

namespace A085431

/-- `Δ[(A000040(n+1)+2^n)/2]` -/
def P1883155708846888392.Spec : Prop :=
  ∀ n, P1883155708846888392.a n = (A085431 (n + 1) : ℚ)

end A085431

/-!
# A085432: a(n) = number of triangles ABC with side lengths (n, m, p) such that n, m, p are integers, 1 <= n <= m <= p, gcd(n, m, p) = 1, the Nagel point N of ABC lies on the incircle C(I, r).

The programs for A085432, there is no canonical definition to state claims against.
-/

/-! ## A085432.P5907510671371426245

`round(2^n/A056381(n+1))`
-/

namespace A085432.P5907510671371426245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / (A056381 (n + 1) : ℚ))

end

end A085432.P5907510671371426245

/-! ## A085432.P9297818244357119275

`ceil(A000010(char[6]+1+n)/2)`
-/

namespace A085432.P9297818244357119275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ) / 2⌉

end

end A085432.P9297818244357119275

/-! ## A085432.P13992772256865483984

`round(A000010(char[6]+n+1)/2)`
-/

namespace A085432.P13992772256865483984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1)) : ℚ) / 2)

end

end A085432.P13992772256865483984

/-! ## A085432.P10466591287286713606

`round(ceil(2^(n-1))/A056401(n+1))`
-/

namespace A085432.P10466591287286713606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) / (A056401 (n + 1) : ℚ))

end

end A085432.P10466591287286713606

/-! ## A085432.P7312544529602532448

`round(sqrt((2^n/A056371(n+1))²+1))`
-/

namespace A085432.P7312544529602532448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((2 ^ n : ℚ) / (A056371 (n + 1) : ℚ)) ^ 2 + 1 : ℝ))

end

end A085432.P7312544529602532448

/-!
# A085434: Twice odd isolated primes.

The programs for A085434, the canonical program `A085434.P6643677055624857651` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085434 has offset 1).

The definition of A085434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085434.P6643677055624857651

`2*A134797(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A085434

/-- `2*A134797(n+1)` -/
def P6643677055624857651.Spec : Prop :=
  ∀ n, P6643677055624857651.a n = A085434 (n + 1)

theorem P6643677055624857651.correct : P6643677055624857651.Spec := by
  intro n
  simp only [A085434, Nat.add_sub_cancel]

end A085434

/-! ## A085434.P2226001976855426902

`A163654(n+1)+A068015(n+1)`
-/

namespace A085434.P2226001976855426902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163654 (n + 1) + A068015 (n + 1)

end

end A085434.P2226001976855426902

namespace A085434

/-- `A163654(n+1)+A068015(n+1)` -/
def P2226001976855426902.Spec : Prop :=
  ∀ n, P2226001976855426902.a n = A085434 (n + 1)

theorem P2226001976855426902.correct : P2226001976855426902.Spec := by
  intro n
  simp only [A085434, Nat.add_sub_cancel, A085434.P2226001976855426902.a, A085434.P6643677055624857651.a, A068015, A068015.P16167893793263978770.a, A134797, A134797.P10926386183801791278.a, A163654, A163654.P17404434252909917711.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085434

/-! ## A085434.P7052616563770728768

`2*A007510(n+2)`
-/

namespace A085434.P7052616563770728768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007510 (n + 2)

end

end A085434.P7052616563770728768

namespace A085434

/-- `2*A007510(n+2)` -/
def P7052616563770728768.Spec : Prop :=
  ∀ n, P7052616563770728768.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P18053836319081501428

`Δ[2*A153478(n+1)]`
-/

namespace A085434.P18053836319081501428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085434.P18053836319081501428

namespace A085434

/-- `Δ[2*A153478(n+1)]` -/
def P18053836319081501428.Spec : Prop :=
  ∀ n, P18053836319081501428.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P8221398849046261597

`A134797(n+1)+A007510(n+2)`
-/

namespace A085434.P8221398849046261597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) + A007510 (n + 2)

end

end A085434.P8221398849046261597

namespace A085434

/-- `A134797(n+1)+A007510(n+2)` -/
def P8221398849046261597.Spec : Prop :=
  ∀ n, P8221398849046261597.a n = A085434 (n + 1)

theorem P8221398849046261597.correct : P8221398849046261597.Spec := by
  intro n
  simp only [A085434, Nat.add_sub_cancel, A085434.P8221398849046261597.a, A085434.P6643677055624857651.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A134797, A134797.P10926386183801791278.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085434

/-! ## A085434.P8193533288675841081

`A007510(n+1)+A068015(n+1)+A007510(n+2)`
-/

namespace A085434.P8193533288675841081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + (A068015 (n + 1) + A007510 (n + 2))

end

end A085434.P8193533288675841081

namespace A085434

/-- `A007510(n+1)+A068015(n+1)+A007510(n+2)` -/
def P8193533288675841081.Spec : Prop :=
  ∀ n, P8193533288675841081.a n = A085434 (n + 1)

theorem P8193533288675841081.correct : P8193533288675841081.Spec := by
  intro n
  simp only [A085434, Nat.add_sub_cancel, A085434.P8193533288675841081.a, A085434.P6643677055624857651.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A068015, A068015.P16167893793263978770.a, A134797, A134797.P10926386183801791278.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085434

/-! ## A085434.P2078546704824050532

`A163654(n+1)+A007510(n+2)-A007510(n+1)`
-/

namespace A085434.P2078546704824050532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163654 (n + 1) + (A007510 (n + 2) - A007510 (n + 1))

end

end A085434.P2078546704824050532

namespace A085434

/-- `A163654(n+1)+A007510(n+2)-A007510(n+1)` -/
def P2078546704824050532.Spec : Prop :=
  ∀ n, P2078546704824050532.a n = A085434 (n + 1)

theorem P2078546704824050532.correct : P2078546704824050532.Spec := by
  intro n
  simp only [A085434, Nat.add_sub_cancel, A085434.P2078546704824050532.a, A085434.P6643677055624857651.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A134797, A134797.P10926386183801791278.a, A163654, A163654.P17404434252909917711.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085434

/-! ## A085434.P3934927945806908623

`A007510(n+2)+A153478(n+2)-A153478(n+1)`
-/

namespace A085434.P3934927945806908623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2) + (A153478 (n + 2) - A153478 (n + 1))

end

end A085434.P3934927945806908623

namespace A085434

/-- `A007510(n+2)+A153478(n+2)-A153478(n+1)` -/
def P3934927945806908623.Spec : Prop :=
  ∀ n, P3934927945806908623.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P9414475026382713060

`A007510(n+2)+A164274(n+2)-A014574(n+2)`
-/

namespace A085434.P9414475026382713060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2) + (A164274 (n + 2) - A014574 (n + 2))

end

end A085434.P9414475026382713060

namespace A085434

/-- `A007510(n+2)+A164274(n+2)-A014574(n+2)` -/
def P9414475026382713060.Spec : Prop :=
  ∀ n, P9414475026382713060.a n = A085434 (n + 1)

theorem P9414475026382713060.correct : P9414475026382713060.Spec := by
  intro n
  simp only [A085434, Nat.add_sub_cancel, A085434.P9414475026382713060.a, A085434.P6643677055624857651.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A014574, A014574.P4587706211531852143.a, A134797, A134797.P10926386183801791278.a, A164274, A164274.P11426709217476400918.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A063919, A063919.P11181265949704613022.a, A156828, A156828.P15006888903266838988.a, A166597, A166597.P14552351031517696526.a, A353464, A353464.P7528674575556997429.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A054541, A054541.P347795157194570387.a, A065164, A065164.P11898003082546795665.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A151800, A151800.P4570031678714564115.a, A173557, A173557.P15666735857375843373.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085434

/-! ## A085434.P7484591347903122184

`2*p?[A167706(n+2)]`
-/

namespace A085434.P7484591347903122184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085434.P7484591347903122184

namespace A085434

/-- `2*p?[A167706(n+2)]` -/
def P7484591347903122184.Spec : Prop :=
  ∀ n, P7484591347903122184.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P1156456229705426270

`A073582(A176656(n+2))`
-/

namespace A085434.P1156456229705426270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (A176656 (n + 2)).toNat

end

end A085434.P1156456229705426270

namespace A085434

/-- `A073582(A176656(n+2))` -/
def P1156456229705426270.Spec : Prop :=
  ∀ n, P1156456229705426270.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P11147457229066423871

`∩[A015812(n+1), A176312(n+1)]`
-/

namespace A085434.P11147457229066423871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085434.P11147457229066423871

namespace A085434

/-- `∩[A015812(n+1), A176312(n+1)]` -/
def P11147457229066423871.Spec : Prop :=
  ∀ n, (P11147457229066423871.a n : ℤ) = A085434 (n + 1)

end A085434

/-! ## A085434.P6174589409820291278

`∩[A073582(n+1), A176312(n+1)]`
-/

namespace A085434.P6174589409820291278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085434.P6174589409820291278

namespace A085434

/-- `∩[A073582(n+1), A176312(n+1)]` -/
def P6174589409820291278.Spec : Prop :=
  ∀ n, (P6174589409820291278.a n : ℤ) = A085434 (n + 1)

end A085434

/-! ## A085434.P18263671289500076365

`∩[A074845(n+1), A176312(n+1)]`
-/

namespace A085434.P18263671289500076365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085434.P18263671289500076365

namespace A085434

/-- `∩[A074845(n+1), A176312(n+1)]` -/
def P18263671289500076365.Spec : Prop :=
  ∀ n, (P18263671289500076365.a n : ℤ) = A085434 (n + 1)

end A085434

/-! ## A085434.P18403619487274936422

`∩[A119431(n+1), A176312(n+1)]`
-/

namespace A085434.P18403619487274936422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085434.P18403619487274936422

namespace A085434

/-- `∩[A119431(n+1), A176312(n+1)]` -/
def P18403619487274936422.Spec : Prop :=
  ∀ n, (P18403619487274936422.a n : ℤ) = A085434 (n + 1)

end A085434

/-! ## A085434.P11031247401778203008

`2*p?[A062729(n+3)]`
-/

namespace A085434.P11031247401778203008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085434.P11031247401778203008

namespace A085434

/-- `2*p?[A062729(n+3)]` -/
def P11031247401778203008.Spec : Prop :=
  ∀ n, P11031247401778203008.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P12108732326580686580

`∩[2*n, A176312(n+2)]`
-/

namespace A085434.P12108732326580686580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085434.P12108732326580686580

namespace A085434

/-- `∩[2*n, A176312(n+2)]` -/
def P12108732326580686580.Spec : Prop :=
  ∀ n, (P12108732326580686580.a n : ℤ) = A085434 (n + 1)

end A085434

/-! ## A085434.P17847927523239543540

`filter[A176312(n+1), A182582(#)]`
-/

namespace A085434.P17847927523239543540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A085434.P17847927523239543540

namespace A085434

/-- `filter[A176312(n+1), A182582(#)]` -/
def P17847927523239543540.Spec : Prop :=
  ∀ n, P17847927523239543540.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P15065192099099348168

`filter[A176312(n+1), A354981(#)]`
-/

namespace A085434.P15065192099099348168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354981 (f1 j).toNat = 1) n)

end

end A085434.P15065192099099348168

namespace A085434

/-- `filter[A176312(n+1), A354981(#)]` -/
def P15065192099099348168.Spec : Prop :=
  ∀ n, P15065192099099348168.a n = A085434 (n + 1)

end A085434

/-! ## A085434.P7574477467701835569

`filter[A176312(n+1), A356170(#)]`
-/

namespace A085434.P7574477467701835569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A085434.P7574477467701835569

namespace A085434

/-- `filter[A176312(n+1), A356170(#)]` -/
def P7574477467701835569.Spec : Prop :=
  ∀ n, P7574477467701835569.a n = A085434 (n + 1)

end A085434

/-!
# A085435: Resultant of the polynomial x^n-1 and the Chebyshev polynomial of the second kind U_2(x).

The programs for A085435, the canonical program `A085435.P14282750904706255295` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085435 has offset 1).

The definition of A085435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085435.P14282750904706255295

`4^(n+1)-2^(n+1)-(-2)^(n+1)+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085435

/-- `4^(n+1)-2^(n+1)-(-2)^(n+1)+(-1)^(n+1)` -/
def P14282750904706255295.Spec : Prop :=
  ∀ n, P14282750904706255295.a n = A085435 (n + 1)

theorem P14282750904706255295.correct : P14282750904706255295.Spec := by
  intro n
  simp only [A085435, Nat.add_sub_cancel]

end A085435

/-! ## A085435.P9552395111669975065

`3*Δ[A000975(n)²]`
-/

namespace A085435.P9552395111669975065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A085435.P9552395111669975065

namespace A085435

/-- `3*Δ[A000975(n)²]` -/
def P9552395111669975065.Spec : Prop :=
  ∀ n, P9552395111669975065.a n = A085435 (n + 1)

end A085435

/-! ## A085435.P8499993288609302605

`3*Δ[∑[A001045(n)]²]`
-/

namespace A085435.P8499993288609302605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A085435.P8499993288609302605

namespace A085435

/-- `3*Δ[∑[A001045(n)]²]` -/
def P8499993288609302605.Spec : Prop :=
  ∀ n, P8499993288609302605.a n = A085435 (n + 1)

end A085435

/-! ## A085435.P9260787574629206425

`∑[2^n]*A062510(n+1)`
-/

namespace A085435.P9260787574629206425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A062510 (n + 1)

end

end A085435.P9260787574629206425

namespace A085435

/-- `∑[2^n]*A062510(n+1)` -/
def P9260787574629206425.Spec : Prop :=
  ∀ n, P9260787574629206425.a n = A085435 (n + 1)

end A085435

/-! ## A085435.P16828688189709917047

`A001045(n+1)*A068156(n+1)`
-/

namespace A085435.P16828688189709917047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A068156 (n + 1)

end

end A085435.P16828688189709917047

namespace A085435

/-- `A001045(n+1)*A068156(n+1)` -/
def P16828688189709917047.Spec : Prop :=
  ∀ n, P16828688189709917047.a n = A085435 (n + 1)

end A085435

/-! ## A085435.P3777431998242341389

`(A000975(n+1)-A000975(n))*A068156(n+1)`
-/

namespace A085435.P3777431998242341389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 1) - A000975 n) * A068156 (n + 1)

end

end A085435.P3777431998242341389

namespace A085435

/-- `(A000975(n+1)-A000975(n))*A068156(n+1)` -/
def P3777431998242341389.Spec : Prop :=
  ∀ n, P3777431998242341389.a n = A085435 (n + 1)

end A085435

/-! ## A085435.P16022447526259825588

`(A173078(n+2)-A078008(n+1))*A001045(n+1)`
-/

namespace A085435.P16022447526259825588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173078 (n + 2) - A078008 (n + 1)) * A001045 (n + 1)

end

end A085435.P16022447526259825588

namespace A085435

/-- `(A173078(n+2)-A078008(n+1))*A001045(n+1)` -/
def P16022447526259825588.Spec : Prop :=
  ∀ n, P16022447526259825588.a n = A085435 (n + 1)

end A085435

/-! ## A085435.P14829094518313576870

`Δ[A141023(n+1)²/3]`
-/

namespace A085435.P14829094518313576870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141023 (n + 1) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085435.P14829094518313576870

namespace A085435

/-- `Δ[A141023(n+1)²/3]` -/
def P14829094518313576870.Spec : Prop :=
  ∀ n, P14829094518313576870.a n = (A085435 (n + 1) : ℚ)

end A085435

/-! ## A085435.P9691792654596509668

`∪[A024036(2*n+1), A024036(n+1)²]`
-/

namespace A085435.P9691792654596509668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085435.P9691792654596509668

namespace A085435

/-- `∪[A024036(2*n+1), A024036(n+1)²]` -/
def P9691792654596509668.Spec : Prop :=
  ∀ n, (P9691792654596509668.a n : ℤ) = A085435 (n + 1)

end A085435

/-! ## A085435.P5997526027228174116

`∪[A103454(2*n+1), A103454(n+1)²]`
-/

namespace A085435.P5997526027228174116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085435.P5997526027228174116

namespace A085435

/-- `∪[A103454(2*n+1), A103454(n+1)²]` -/
def P5997526027228174116.Spec : Prop :=
  ∀ n, (P5997526027228174116.a n : ℤ) = A085435 (n + 1)

end A085435

/-! ## A085435.P16097614325177482914

`A060867(n+1)*A062510(n+1)/A000225(n+1)`
-/

namespace A085435.P16097614325177482914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060867 (n + 1) * A062510 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A085435.P16097614325177482914

namespace A085435

/-- `A060867(n+1)*A062510(n+1)/A000225(n+1)` -/
def P16097614325177482914.Spec : Prop :=
  ∀ n, P16097614325177482914.a n = (A085435 (n + 1) : ℚ)

end A085435

/-!
# A085436: Number of partitions of n without rotational symmetry (or 1-fold symmetry).

The programs for A085436, there is no canonical definition to state claims against.
-/

/-! ## A085436.P17271589751074478593

`A135486(∑[n]+1)`
-/

namespace A085436.P17271589751074478593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135486 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A085436.P17271589751074478593

/-! ## A085436.P15590256666429444439

`A135486(A000124(n))+char[15]`
-/

namespace A085436.P15590256666429444439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135486 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A085436.P15590256666429444439

/-! ## A085436.P7398445639553030051

`or(A000007(n), A135486(A000124(n)))`
-/

namespace A085436.P7398445639553030051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A135486 (A000124 n).toNat)

end

end A085436.P7398445639553030051

/-! ## A085436.P16694467875146841122

`A007318(∑[n])*A135486(A000124(n))`
-/

namespace A085436.P16694467875146841122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A135486 (A000124 n).toNat

end

end A085436.P16694467875146841122

/-! ## A085436.P8974112799424540914

`A217156(n+1)+A135486(A000124(n))`
-/

namespace A085436.P8974112799424540914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) + A135486 (A000124 n).toNat

end

end A085436.P8974112799424540914

/-!
# A085438: a(n) = Sum_{i=1..n} binomial(i+1,2)^3.

The programs for A085438, the canonical program `A085438.P16702486531061019504` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085438 has offset 1).

The definition of A085438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085438.P16702486531061019504

`∑[∑[n+1]^3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085438

/-- `∑[∑[n+1]^3]` -/
def P16702486531061019504.Spec : Prop :=
  ∀ n, (P16702486531061019504.a n : ℤ) = A085438 (n + 1)

theorem P16702486531061019504.correct : P16702486531061019504.Spec := by
  intro n
  simp only [A085438, Nat.add_sub_cancel]

end A085438

/-! ## A085438.P9937111774944768414

`a(n-1)+C(n+2, 2)^3` with `a(0)=1`
-/

namespace A085438.P9937111774944768414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 2) 2 ^ 3

end

end A085438.P9937111774944768414

namespace A085438

/-- `a(n-1)+C(n+2, 2)^3` -/
def P9937111774944768414.Spec : Prop :=
  ∀ n, (P9937111774944768414.a n : ℤ) = A085438 (n + 1)

end A085438

/-! ## A085438.P492893526814987151

`a(n-1)+∑[n+1]²*∑[n+1]` with `a(0)=1`
-/

namespace A085438.P492893526814987151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A085438.P492893526814987151

namespace A085438

/-- `a(n-1)+∑[n+1]²*∑[n+1]` -/
def P492893526814987151.Spec : Prop :=
  ∀ n, (P492893526814987151.a n : ℤ) = A085438 (n + 1)

end A085438

/-! ## A085438.P2155416916896344793

`round(∑[sqrt(A059978(n))])`
-/

namespace A085438.P2155416916896344793
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059978 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085438.P2155416916896344793

namespace A085438

/-- `round(∑[sqrt(A059978(n))])` -/
def P2155416916896344793.Spec : Prop :=
  ∀ n, P2155416916896344793.a n = A085438 (n + 1)

end A085438

/-! ## A085438.P14026967539870190405

`A059827(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A085438.P14026967539870190405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059827 (n + 1) + a (n - 1)

end

end A085438.P14026967539870190405

namespace A085438

/-- `A059827(n+1)+a(n-1)` -/
def P14026967539870190405.Spec : Prop :=
  ∀ n, P14026967539870190405.a n = A085438 (n + 1)

end A085438

/-! ## A085438.P9961182238875596137

`or(∑[A059827(n+1)], A000007(n))`
-/

namespace A085438.P9961182238875596137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A085438.P9961182238875596137

namespace A085438

/-- `or(∑[A059827(n+1)], A000007(n))` -/
def P9961182238875596137.Spec : Prop :=
  ∀ n, P9961182238875596137.a n = A085438 (n + 1)

end A085438

/-! ## A085438.P8238887676196374350

`∑[A135300(∑[n+1])]+n`
-/

namespace A085438.P8238887676196374350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A085438.P8238887676196374350

namespace A085438

/-- `∑[A135300(∑[n+1])]+n` -/
def P8238887676196374350.Spec : Prop :=
  ∀ n, P8238887676196374350.a n = A085438 (n + 1)

end A085438

/-! ## A085438.P3223459474243977284

`A000578(∑[n+1])+a(n-1)` with `a(0)=1`
-/

namespace A085438.P3223459474243977284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A085438.P3223459474243977284

namespace A085438

/-- `A000578(∑[n+1])+a(n-1)` -/
def P3223459474243977284.Spec : Prop :=
  ∀ n, P3223459474243977284.a n = A085438 (n + 1)

end A085438

/-!
# A085439: a(n) = Sum_{i=1..n} binomial(i+1,2)^4.

The programs for A085439, the canonical program `A085439.P10265277225576535505` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085439 has offset 1).

The definition of A085439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085439.P10265277225576535505

`∑[∑[n+1]^4]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085439

/-- `∑[∑[n+1]^4]` -/
def P10265277225576535505.Spec : Prop :=
  ∀ n, (P10265277225576535505.a n : ℤ) = A085439 (n + 1)

theorem P10265277225576535505.correct : P10265277225576535505.Spec := by
  intro n
  simp only [A085439, Nat.add_sub_cancel]

end A085439

/-! ## A085439.P5746460179686695428

`or(∑[∑[n+1]²²], char[4])`
-/

namespace A085439.P5746460179686695428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f3 j = n then 1 else 0)

end

end A085439.P5746460179686695428

namespace A085439

/-- `or(∑[∑[n+1]²²], char[4])` -/
def P5746460179686695428.Spec : Prop :=
  ∀ n, (P5746460179686695428.a n : ℤ) = A085439 (n + 1)

end A085439

/-! ## A085439.P871042556783797557

`a(n-1)+∑[n+1]²²` with `a(0)=1`
-/

namespace A085439.P871042556783797557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A085439.P871042556783797557

namespace A085439

/-- `a(n-1)+∑[n+1]²²` -/
def P871042556783797557.Spec : Prop :=
  ∀ n, (P871042556783797557.a n : ℤ) = A085439 (n + 1)

end A085439

/-! ## A085439.P6075059955366605546

`floor(∑[∑[a(n-1)-1]^4])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A085439.P6075059955366605546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085439.P6075059955366605546

namespace A085439

/-- `floor(∑[∑[a(n-1)-1]^4])` -/
def P6075059955366605546.Spec : Prop :=
  ∀ n, P6075059955366605546.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P5746608096519350652

`floor(∑[∑[a(n-1)-1]²²])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A085439.P5746608096519350652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085439.P5746608096519350652

namespace A085439

/-- `floor(∑[∑[a(n-1)-1]²²])` -/
def P5746608096519350652.Spec : Prop :=
  ∀ n, P5746608096519350652.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P18178674501792714320

`floor(∑[(lcm(n+1, n+2)/2)²²])`
-/

namespace A085439.P18178674501792714320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm (n + 1) (n + 2) : ℚ) / 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A085439.P18178674501792714320

namespace A085439

/-- `floor(∑[(lcm(n+1, n+2)/2)²²])` -/
def P18178674501792714320.Spec : Prop :=
  ∀ n, P18178674501792714320.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P8984045972572311807

`∑[∑[n+1]²²]+C(2, n+3)`
-/

namespace A085439.P8984045972572311807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A085439.P8984045972572311807

namespace A085439

/-- `∑[∑[n+1]²²]+C(2, n+3)` -/
def P8984045972572311807.Spec : Prop :=
  ∀ n, (P8984045972572311807.a n : ℤ) = A085439 (n + 1)

end A085439

/-! ## A085439.P9697626820171026348

`∑[∑[n+1]²²]+and(1, 2*n)`
-/

namespace A085439.P9697626820171026348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A085439.P9697626820171026348

namespace A085439

/-- `∑[∑[n+1]²²]+and(1, 2*n)` -/
def P9697626820171026348.Spec : Prop :=
  ∀ n, (P9697626820171026348.a n : ℤ) = A085439 (n + 1)

theorem P9697626820171026348.correct : P9697626820171026348.Spec := by
  intro n
  simp only [A085439, Nat.add_sub_cancel, A085439.P9697626820171026348.f2, A085439.P9697626820171026348.f1, A085439.P9697626820171026348.a, A085439.P10265277225576535505.f2, A085439.P10265277225576535505.f1, A085439.P10265277225576535505.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A085439

/-! ## A085439.P14294142365554443620

`gcd(n, n+1)*∑[∑[n+1]²²]`
-/

namespace A085439.P14294142365554443620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085439.P14294142365554443620

namespace A085439

/-- `gcd(n, n+1)*∑[∑[n+1]²²]` -/
def P14294142365554443620.Spec : Prop :=
  ∀ n, (P14294142365554443620.a n : ℤ) = A085439 (n + 1)

theorem P14294142365554443620.correct : P14294142365554443620.Spec := by
  intro n
  simp only [A085439, Nat.add_sub_cancel, A085439.P14294142365554443620.f2, A085439.P14294142365554443620.f1, A085439.P14294142365554443620.a, A085439.P10265277225576535505.f2, A085439.P10265277225576535505.f1, A085439.P10265277225576535505.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A085439

/-! ## A085439.P11948649766049620355

`floor(a(n-1)+C(n+2, 2)²²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A085439.P11948649766049620355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (n + 2) 2 ^ 2) ^ 2

end

end A085439.P11948649766049620355

namespace A085439

/-- `floor(a(n-1)+C(n+2, 2)²²)` -/
def P11948649766049620355.Spec : Prop :=
  ∀ n, (P11948649766049620355.a n : ℤ) = A085439 (n + 1)

end A085439

/-! ## A085439.P5914863421467757334

`∑[∑[n+1]²²]/gcd(n+2, n+3)`
-/

namespace A085439.P5914863421467757334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (n + 2) (n + 3) : ℚ)

end

end A085439.P5914863421467757334

namespace A085439

/-- `∑[∑[n+1]²²]/gcd(n+2, n+3)` -/
def P5914863421467757334.Spec : Prop :=
  ∀ n, P5914863421467757334.a n = (A085439 (n + 1) : ℚ)

end A085439

/-! ## A085439.P8243125574971472335

`∑[A202107(n+1)]/2`
-/

namespace A085439.P8243125574971472335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202107 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A085439.P8243125574971472335

namespace A085439

/-- `∑[A202107(n+1)]/2` -/
def P8243125574971472335.Spec : Prop :=
  ∀ n, P8243125574971472335.a n = (A085439 (n + 1) : ℚ)

end A085439

/-! ## A085439.P9406767953960382179

`∑[A253145(n)²²]+1`
-/

namespace A085439.P9406767953960382179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253145 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085439.P9406767953960382179

namespace A085439

/-- `∑[A253145(n)²²]+1` -/
def P9406767953960382179.Spec : Prop :=
  ∀ n, P9406767953960382179.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P5663959976870246999

`round(∑[sqrt(A059980(n+1))])`
-/

namespace A085439.P5663959976870246999
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059980 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085439.P5663959976870246999

namespace A085439

/-- `round(∑[sqrt(A059980(n+1))])` -/
def P5663959976870246999.Spec : Prop :=
  ∀ n, P5663959976870246999.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P14923311209643397006

`A059977(n)+a(n-1)` with `a(0)=1`
-/

namespace A085439.P14923311209643397006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059977 n + a (n - 1)

end

end A085439.P14923311209643397006

namespace A085439

/-- `A059977(n)+a(n-1)` -/
def P14923311209643397006.Spec : Prop :=
  ∀ n, P14923311209643397006.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P432978286009926286

`gcd(∑[A059977(n)], A000038(n))`
-/

namespace A085439.P432978286009926286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A085439.P432978286009926286

namespace A085439

/-- `gcd(∑[A059977(n)], A000038(n))` -/
def P432978286009926286.Spec : Prop :=
  ∀ n, (P432978286009926286.a n : ℤ) = A085439 (n + 1)

end A085439

/-! ## A085439.P9311054242959507511

`lcm(∑[A059977(n)], A000034(n))`
-/

namespace A085439.P9311054242959507511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A085439.P9311054242959507511

namespace A085439

/-- `lcm(∑[A059977(n)], A000034(n))` -/
def P9311054242959507511.Spec : Prop :=
  ∀ n, (P9311054242959507511.a n : ℤ) = A085439 (n + 1)

end A085439

/-! ## A085439.P14170197173682663586

`A000108(∏{d}[n, #%2])*∑[A059977(n)]`
-/

namespace A085439.P14170197173682663586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∏ d ∈ Nat.divisors (f1 n), d % 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A085439.P14170197173682663586

namespace A085439

/-- `A000108(∏{d}[n, #%2])*∑[A059977(n)]` -/
def P14170197173682663586.Spec : Prop :=
  ∀ n, P14170197173682663586.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P9765012346910097858

`∑[A059977(n)]%A249076(n+4)`
-/

namespace A085439.P9765012346910097858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A249076 (n + 4))

end

end A085439.P9765012346910097858

namespace A085439

/-- `∑[A059977(n)]%A249076(n+4)` -/
def P9765012346910097858.Spec : Prop :=
  ∀ n, P9765012346910097858.a n = A085439 (n + 1)

end A085439

/-! ## A085439.P622363967367046170

`A000035(2*n)+∑[A059977(n)]`
-/

namespace A085439.P622363967367046170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085439.P622363967367046170

namespace A085439

/-- `A000035(2*n)+∑[A059977(n)]` -/
def P622363967367046170.Spec : Prop :=
  ∀ n, P622363967367046170.a n = A085439 (n + 1)

end A085439

/-!
# A085440: a(n) = Sum_{i=1..n} binomial(i+1,2)^5.

The programs for A085440, the canonical program `A085440.P10564575827509440211` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085440 has offset 1).

The definition of A085440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085440.P10564575827509440211

`∑[∑[n+1]^5]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085440

/-- `∑[∑[n+1]^5]` -/
def P10564575827509440211.Spec : Prop :=
  ∀ n, (P10564575827509440211.a n : ℤ) = A085440 (n + 1)

theorem P10564575827509440211.correct : P10564575827509440211.Spec := by
  intro n
  simp only [A085440, Nat.add_sub_cancel]

end A085440

/-! ## A085440.P14229762047075842929

`a(n-1)+C(n+2, 2)^5` with `a(0)=1`
-/

namespace A085440.P14229762047075842929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 2) 2 ^ 5

end

end A085440.P14229762047075842929

namespace A085440

/-- `a(n-1)+C(n+2, 2)^5` -/
def P14229762047075842929.Spec : Prop :=
  ∀ n, (P14229762047075842929.a n : ℤ) = A085440 (n + 1)

end A085440

/-! ## A085440.P13997049048558235022

`a(n-1)+∑[n+1]²²*∑[n+1]` with `a(0)=1`
-/

namespace A085440.P13997049048558235022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A085440.P13997049048558235022

namespace A085440

/-- `a(n-1)+∑[n+1]²²*∑[n+1]` -/
def P13997049048558235022.Spec : Prop :=
  ∀ n, (P13997049048558235022.a n : ℤ) = A085440 (n + 1)

end A085440

/-! ## A085440.P17222817712571177005

`∑[2*A059860(n+1)]/2`
-/

namespace A085440.P17222817712571177005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059860 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A085440.P17222817712571177005

namespace A085440

/-- `∑[2*A059860(n+1)]/2` -/
def P17222817712571177005.Spec : Prop :=
  ∀ n, P17222817712571177005.a n = (A085440 (n + 1) : ℚ)

end A085440

/-! ## A085440.P797393628085686461

`or(∑[A059860(n+1)], A000007(n))`
-/

namespace A085440.P797393628085686461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A085440.P797393628085686461

namespace A085440

/-- `or(∑[A059860(n+1)], A000007(n))` -/
def P797393628085686461.Spec : Prop :=
  ∀ n, P797393628085686461.a n = A085440 (n + 1)

end A085440

/-! ## A085440.P16361224138700450285

`∑[A059860(n+1)]%A249076(n+4)`
-/

namespace A085440.P16361224138700450285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A249076 (n + 4))

end

end A085440.P16361224138700450285

namespace A085440

/-- `∑[A059860(n+1)]%A249076(n+4)` -/
def P16361224138700450285.Spec : Prop :=
  ∀ n, P16361224138700450285.a n = A085440 (n + 1)

end A085440

/-! ## A085440.P16427131319819840482

`∑[A258807(∑[n+1])]+1+n`
-/

namespace A085440.P16427131319819840482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A085440.P16427131319819840482

namespace A085440

/-- `∑[A258807(∑[n+1])]+1+n` -/
def P16427131319819840482.Spec : Prop :=
  ∀ n, P16427131319819840482.a n = A085440 (n + 1)

end A085440

/-!
# A085441: a(n) = Sum_{i=1..n} binomial(i+1,2)^6.

The programs for A085441, the canonical program `A085441.P7120959263978822715` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085441 has offset 1).

The definition of A085441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085441.P7120959263978822715

`∑[∑[n+1]^6]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085441

/-- `∑[∑[n+1]^6]` -/
def P7120959263978822715.Spec : Prop :=
  ∀ n, (P7120959263978822715.a n : ℤ) = A085441 (n + 1)

theorem P7120959263978822715.correct : P7120959263978822715.Spec := by
  intro n
  simp only [A085441, Nat.add_sub_cancel]

end A085441

/-! ## A085441.P5294319276619815147

`floor(∑[(∑[a(n-1)-1]^3)²])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A085441.P5294319276619815147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085441.P5294319276619815147

namespace A085441

/-- `floor(∑[(∑[a(n-1)-1]^3)²])` -/
def P5294319276619815147.Spec : Prop :=
  ∀ n, P5294319276619815147.a n = A085441 (n + 1)

end A085441

/-! ## A085441.P14359777687591072989

`a(n-1)+(C(n+2, 2)^3)²` with `a(0)=1`
-/

namespace A085441.P14359777687591072989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (n + 2) 2 ^ 3) ^ 2

end

end A085441.P14359777687591072989

namespace A085441

/-- `a(n-1)+(C(n+2, 2)^3)²` -/
def P14359777687591072989.Spec : Prop :=
  ∀ n, (P14359777687591072989.a n : ℤ) = A085441 (n + 1)

end A085441

/-! ## A085441.P18012057764710410340

`a(n-1)+(∑[n+1]²*∑[n+1])²` with `a(0)=1`
-/

namespace A085441.P18012057764710410340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

end

end A085441.P18012057764710410340

namespace A085441

/-- `a(n-1)+(∑[n+1]²*∑[n+1])²` -/
def P18012057764710410340.Spec : Prop :=
  ∀ n, (P18012057764710410340.a n : ℤ) = A085441 (n + 1)

end A085441

/-! ## A085441.P9380907839840014221

`∑[2*A059978(n)]/2`
-/

namespace A085441.P9380907839840014221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059978 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A085441.P9380907839840014221

namespace A085441

/-- `∑[2*A059978(n)]/2` -/
def P9380907839840014221.Spec : Prop :=
  ∀ n, P9380907839840014221.a n = (A085441 (n + 1) : ℚ)

end A085441

/-! ## A085441.P10372833241443737140

`or(∑[A059978(n)], A000007(n))`
-/

namespace A085441.P10372833241443737140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A085441.P10372833241443737140

namespace A085441

/-- `or(∑[A059978(n)], A000007(n))` -/
def P10372833241443737140.Spec : Prop :=
  ∀ n, P10372833241443737140.a n = A085441 (n + 1)

end A085441

/-! ## A085441.P5672870199655373199

`lcm(∑[A059978(n)], A003557(n+1))`
-/

namespace A085441.P5672870199655373199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A003557 (n + 1))

end

end A085441.P5672870199655373199

namespace A085441

/-- `lcm(∑[A059978(n)], A003557(n+1))` -/
def P5672870199655373199.Spec : Prop :=
  ∀ n, (P5672870199655373199.a n : ℤ) = A085441 (n + 1)

end A085441

/-! ## A085441.P3698609240368642583

`∑[A059978(n)]%A059979(2*n+3)`
-/

namespace A085441.P3698609240368642583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A059979 (2 * n + 3))

end

end A085441.P3698609240368642583

namespace A085441

/-- `∑[A059978(n)]%A059979(2*n+3)` -/
def P3698609240368642583.Spec : Prop :=
  ∀ n, P3698609240368642583.a n = A085441 (n + 1)

end A085441

/-!
# A085442: a(n) = Sum_{i=1..n} binomial(i+1,2)^7.

The programs for A085442, the canonical program `A085442.P11414405162490164421` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085442 has offset 1).

The definition of A085442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085442.P11414405162490164421

`∑[∑[n+1]^7]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085442

/-- `∑[∑[n+1]^7]` -/
def P11414405162490164421.Spec : Prop :=
  ∀ n, (P11414405162490164421.a n : ℤ) = A085442 (n + 1)

theorem P11414405162490164421.correct : P11414405162490164421.Spec := by
  intro n
  simp only [A085442, Nat.add_sub_cancel]

end A085442

/-! ## A085442.P3773479535095462278

`a(n-1)+C(n+2, 2)^7` with `a(0)=1`
-/

namespace A085442.P3773479535095462278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 2) 2 ^ 7

end

end A085442.P3773479535095462278

namespace A085442

/-- `a(n-1)+C(n+2, 2)^7` -/
def P3773479535095462278.Spec : Prop :=
  ∀ n, (P3773479535095462278.a n : ℤ) = A085442 (n + 1)

end A085442

/-! ## A085442.P9081450813721029790

`∑[2*A059979(n+1)]/2`
-/

namespace A085442.P9081450813721029790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059979 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A085442.P9081450813721029790

namespace A085442

/-- `∑[2*A059979(n+1)]/2` -/
def P9081450813721029790.Spec : Prop :=
  ∀ n, P9081450813721029790.a n = (A085442 (n + 1) : ℚ)

end A085442

/-! ## A085442.P4318101166904207893

`gcd(∑[A059979(n+1)], A000038(n))`
-/

namespace A085442.P4318101166904207893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A085442.P4318101166904207893

namespace A085442

/-- `gcd(∑[A059979(n+1)], A000038(n))` -/
def P4318101166904207893.Spec : Prop :=
  ∀ n, (P4318101166904207893.a n : ℤ) = A085442 (n + 1)

end A085442

/-! ## A085442.P8332794315404262985

`or(∑[A059979(n+1)], A000007(n))`
-/

namespace A085442.P8332794315404262985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A085442.P8332794315404262985

namespace A085442

/-- `or(∑[A059979(n+1)], A000007(n))` -/
def P8332794315404262985.Spec : Prop :=
  ∀ n, P8332794315404262985.a n = A085442 (n + 1)

end A085442

/-! ## A085442.P1811029646363447569

`lcm(∑[A059979(n+1)], A003557(n+1))`
-/

namespace A085442.P1811029646363447569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A003557 (n + 1))

end

end A085442.P1811029646363447569

namespace A085442

/-- `lcm(∑[A059979(n+1)], A003557(n+1))` -/
def P1811029646363447569.Spec : Prop :=
  ∀ n, (P1811029646363447569.a n : ℤ) = A085442 (n + 1)

end A085442

/-! ## A085442.P12007611329151301198

`∑[A059979(n+1)]+C(2, A001844(n)+18)`
-/

namespace A085442.P12007611329151301198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (A001844 n + 18).toNat : ℤ)

end

end A085442.P12007611329151301198

namespace A085442

/-- `∑[A059979(n+1)]+C(2, A001844(n)+18)` -/
def P12007611329151301198.Spec : Prop :=
  ∀ n, P12007611329151301198.a n = A085442 (n + 1)

end A085442

/-! ## A085442.P10372332549118837023

`∑[A059979(n+1)]*A227739(and(2, -(n+1))+1)`
-/

namespace A085442.P10372332549118837023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A227739 (Int.land 2 (-(n + 1 : ℤ)) + 1).toNat

end

end A085442.P10372332549118837023

namespace A085442

/-- `∑[A059979(n+1)]*A227739(and(2, -(n+1))+1)` -/
def P10372332549118837023.Spec : Prop :=
  ∀ n, P10372332549118837023.a n = A085442 (n + 1)

end A085442

/-! ## A085442.P17321434708923298365

`∑[A059979(n+1)]/A001222(and(2, -(n+1))+3)`
-/

namespace A085442.P17321434708923298365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001222 (Int.land 2 (-(n + 1 : ℤ)) + 3).toNat : ℚ)

end

end A085442.P17321434708923298365

namespace A085442

/-- `∑[A059979(n+1)]/A001222(and(2, -(n+1))+3)` -/
def P17321434708923298365.Spec : Prop :=
  ∀ n, P17321434708923298365.a n = (A085442 (n + 1) : ℚ)

end A085442

/-! ## A085442.P3666492140537918822

`∑[A059979(n+1)]%A059979(2*n+3)`
-/

namespace A085442.P3666492140537918822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A059979 (2 * n + 3))

end

end A085442.P3666492140537918822

namespace A085442

/-- `∑[A059979(n+1)]%A059979(2*n+3)` -/
def P3666492140537918822.Spec : Prop :=
  ∀ n, P3666492140537918822.a n = A085442 (n + 1)

end A085442

/-! ## A085442.P12386386170497654864

`A002262(∑[n+1])+∑[A059979(n+1)]`
-/

namespace A085442.P12386386170497654864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A085442.P12386386170497654864

namespace A085442

/-- `A002262(∑[n+1])+∑[A059979(n+1)]` -/
def P12386386170497654864.Spec : Prop :=
  ∀ n, P12386386170497654864.a n = A085442 (n + 1)

end A085442

/-!
# A085443: Where records in A070172 occur.

The programs for A085443, there is no canonical definition to state claims against.
-/

/-! ## A085443.P17341250119150221527

`A057427(n)+A034885(A028310(n))`
-/

namespace A085443.P17341250119150221527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A034885 (A028310 n).toNat

end

end A085443.P17341250119150221527

/-! ## A085443.P15559374838726001214

`record[∑{d}[n, #]+1]`
-/

namespace A085443.P15559374838726001214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085443.P15559374838726001214

/-! ## A085443.P8793586801997737797

`record[A245092(A006369(n))+1]`
-/

namespace A085443.P8793586801997737797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A006369 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085443.P8793586801997737797

/-! ## A085443.P3041349558489342414

`record[A146076(n+1)/2+1]`
-/

namespace A085443.P3041349558489342414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085443.P3041349558489342414

/-! ## A085443.P7610097136386792346

`record[A028242(2*∑{d}[n, #])]`
-/

namespace A085443.P7610097136386792346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (∑ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085443.P7610097136386792346

/-!
# A085444: Numbers divisible by twice the sum of the products of each of their digits.

The programs for A085444, there is no canonical definition to state claims against.
-/

/-! ## A085444.P339627061165930177

`lt[lcm(A001281(n), A118881(n)), n]`
-/

namespace A085444.P339627061165930177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001281 n) (A118881 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085444.P339627061165930177

/-!
# A085445: Numbers equal to exactly twice the sum of the products of each of their digits.

The programs for A085445, there is no canonical definition to state claims against.
-/

/-! ## A085445.P9960765687029328034

`2*∑[and(5, -n)]²`
-/

namespace A085445.P9960765687029328034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A085445.P9960765687029328034

/-!
# A085446: Numbers divisible by twice the sum of the products of each of their digits, excluding even multiples of 10.

The programs for A085446, there is no canonical definition to state claims against.
-/

/-! ## A085446.P16676239821078509250

`∩[A356349(n+1), A085444(n)]`
-/

namespace A085446.P16676239821078509250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085444 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085446.P16676239821078509250

/-! ## A085446.P7239122947704284087

`filter[A085444(n), A011558(#)]`
-/

namespace A085446.P7239122947704284087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A085446.P7239122947704284087

/-! ## A085446.P11982155396506656083

`filter[A085444(n), A168184(#)]`
-/

namespace A085446.P11982155396506656083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A085446.P11982155396506656083

/-!
# A085447: a(n) = 6*a(n-1) + a(n-2), starting with a(0)=2 and a(1)=6.

The programs for A085447, the canonical program `A085447.P768985586061421838` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085447 has offset 0).

The definition of A085447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+a(n-2)` (program `A085447.P768985586061421838`, by `A085447.P768985586061421838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085447.P768985586061421838

`6*a(n-1)+a(n-2)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085447

/-- `6*a(n-1)+a(n-2)` -/
def P768985586061421838.Spec : Prop :=
  ∀ n, (P768985586061421838.a n : ℤ) = A085447 n

theorem P768985586061421838.correct : P768985586061421838.Spec := by
  intro n
  simp only [A085447]

end A085447

/-! ## A085447.P8759644339248627761

`2*A005667(n)`
-/

namespace A085447.P8759644339248627761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005667 n

end

end A085447.P8759644339248627761

namespace A085447

/-- `2*A005667(n)` -/
def P8759644339248627761.Spec : Prop :=
  ∀ n, P8759644339248627761.a n = A085447 n

end A085447

/-! ## A085447.P8871045926221950978

`ogf((-2+6x)/(-1+6x+x^2))`
-/

namespace A085447.P8871045926221950978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -6, -1] n

end

end A085447.P8871045926221950978

namespace A085447

/-- `ogf((-2+6x)/(-1+6x+x^2))` -/
def P8871045926221950978.Spec : Prop :=
  ∀ n, P8871045926221950978.a n = A085447 n

end A085447

/-! ## A085447.P9876340262001520214

`(3+sqrt(10))^n+(3-sqrt(10))^n`
-/

namespace A085447.P9876340262001520214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 + Real.sqrt (10 : ℝ)) ^ n + (3 - Real.sqrt (10 : ℝ)) ^ n

end

end A085447.P9876340262001520214

namespace A085447

/-- `(3+sqrt(10))^n+(3-sqrt(10))^n` -/
def P9876340262001520214.Spec : Prop :=
  ∀ n, P9876340262001520214.a n = (A085447 n : ℝ)

theorem P9876340262001520214.correct : P9876340262001520214.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A085447, Nat.add_sub_cancel, A085447.P9876340262001520214.a, A085447.P768985586061421838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A085447, Nat.add_sub_cancel, A085447.P9876340262001520214.a, A085447.P768985586061421838.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A085447

/-! ## A085447.P11837927848205805742

`floor(7*a(n-1)-(a(n-1)-a(n-2)))` with `a(0)=2, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A085447.P11837927848205805742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  7 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A085447.P11837927848205805742

namespace A085447

/-- `floor(7*a(n-1)-(a(n-1)-a(n-2)))` -/
def P11837927848205805742.Spec : Prop :=
  ∀ n, P11837927848205805742.a n = A085447 n

end A085447

/-! ## A085447.P1302367617006414816

`round(7*a(n-1)-(a(n-1)-a(n-2)))` with `a(0)=2, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A085447.P1302367617006414816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  7 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A085447.P1302367617006414816

namespace A085447

/-- `round(7*a(n-1)-(a(n-1)-a(n-2)))` -/
def P1302367617006414816.Spec : Prop :=
  ∀ n, P1302367617006414816.a n = A085447 n

end A085447

/-! ## A085447.P11418776986651901836

`record[A174507(n)+1]`
-/

namespace A085447.P11418776986651901836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174507 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085447.P11418776986651901836

namespace A085447

/-- `record[A174507(n)+1]` -/
def P11418776986651901836.Spec : Prop :=
  ∀ n, P11418776986651901836.a n = A085447 n

end A085447

/-! ## A085447.P1102513460318435223

`2*A116559(A016921(n))`
-/

namespace A085447.P1102513460318435223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116559 (A016921 n).toNat

end

end A085447.P1102513460318435223

namespace A085447

/-- `2*A116559(A016921(n))` -/
def P1102513460318435223.Spec : Prop :=
  ∀ n, P1102513460318435223.a n = A085447 n

end A085447

/-! ## A085447.P9253262321481258957

`2*A116559(A271114(n))`
-/

namespace A085447.P9253262321481258957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116559 (A271114 n).toNat

end

end A085447.P9253262321481258957

namespace A085447

/-- `2*A116559(A271114(n))` -/
def P9253262321481258957.Spec : Prop :=
  ∀ n, P9253262321481258957.a n = A085447 n

end A085447

/-! ## A085447.P2844360338002274432

`lcm(ratio[A000079(n)], A005667(n))`
-/

namespace A085447.P2844360338002274432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A005667 n)

end

end A085447.P2844360338002274432

namespace A085447

/-- `lcm(ratio[A000079(n)], A005667(n))` -/
def P2844360338002274432.Spec : Prop :=
  ∀ n, (P2844360338002274432.a n : ℤ) = A085447 n

end A085447

/-! ## A085447.P15769835434842988764

`2*A116559(A008458(n)+1)`
-/

namespace A085447.P15769835434842988764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116559 (A008458 n + 1).toNat

end

end A085447.P15769835434842988764

namespace A085447

/-- `2*A116559(A008458(n)+1)` -/
def P15769835434842988764.Spec : Prop :=
  ∀ n, P15769835434842988764.a n = A085447 n

end A085447

/-! ## A085447.P4965863034305640468

`2*(A179237(n)+A005668(n))`
-/

namespace A085447.P4965863034305640468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A179237 n + A005668 n)

end

end A085447.P4965863034305640468

namespace A085447

/-- `2*(A179237(n)+A005668(n))` -/
def P4965863034305640468.Spec : Prop :=
  ∀ n, P4965863034305640468.a n = A085447 n

end A085447

/-! ## A085447.P1013700437383035209

`record[Δ[2*A116559(A116568(n+1))]]`
-/

namespace A085447.P1013700437383035209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116559 (A116568 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085447.P1013700437383035209

namespace A085447

/-- `record[Δ[2*A116559(A116568(n+1))]]` -/
def P1013700437383035209.Spec : Prop :=
  ∀ n, P1013700437383035209.a n = A085447 n

end A085447

/-!
# A085448: Primes having a semiprime number of 1's in their binary representation.

The programs for A085448, the canonical program `A085448.P15161237144101129775` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085448 has offset 1).

The definition of A085448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085448.P15161237144101129775

`p?[A000265(A086096(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A085448

/-- `p?[A000265(A086096(n+1))]` -/
def P15161237144101129775.Spec : Prop :=
  ∀ n, P15161237144101129775.a n = A085448 (n + 1)

theorem P15161237144101129775.correct : P15161237144101129775.Spec := by
  intro n
  simp only [A085448, Nat.add_sub_cancel]

end A085448

/-! ## A085448.P12518803022071319264

`record[A006530(A086096(n+3))]`
-/

namespace A085448.P12518803022071319264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086096 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085448.P12518803022071319264

namespace A085448

/-- `record[A006530(A086096(n+3))]` -/
def P12518803022071319264.Spec : Prop :=
  ∀ n, P12518803022071319264.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P4033337860632735280

`p?[(2*n+1)*A008836(A000120(n)+1)]`
-/

namespace A085448.P4033337860632735280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A008836 (A000120 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085448.P4033337860632735280

namespace A085448

/-- `p?[(2*n+1)*A008836(A000120(n)+1)]` -/
def P4033337860632735280.Spec : Prop :=
  ∀ n, P4033337860632735280.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P4977203641131732589

`A348036(p?[A300722(A086096(n+1))])`
-/

namespace A085448.P4977203641131732589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300722 (A086096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085448.P4977203641131732589

namespace A085448

/-- `A348036(p?[A300722(A086096(n+1))])` -/
def P4977203641131732589.Spec : Prop :=
  ∀ n, P4977203641131732589.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P9610566763683131069

`p?[(n+1)*A001222(A000120(n+1))-(n+1)]`
-/

namespace A085448.P9610566763683131069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A000120 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085448.P9610566763683131069

namespace A085448

/-- `p?[(n+1)*A001222(A000120(n+1))-(n+1)]` -/
def P9610566763683131069.Spec : Prop :=
  ∀ n, P9610566763683131069.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P4249137295233139211

`p?[n*A106799(A000120(2*n+1))]`
-/

namespace A085448.P4249137295233139211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106799 (A000120 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085448.P4249137295233139211

namespace A085448

/-- `p?[n*A106799(A000120(2*n+1))]` -/
def P4249137295233139211.Spec : Prop :=
  ∀ n, P4249137295233139211.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P5480993223136810432

`A001414(p?[A026741(A086096(n+1))])`
-/

namespace A085448.P5480993223136810432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A086096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085448.P5480993223136810432

namespace A085448

/-- `A001414(p?[A026741(A086096(n+1))])` -/
def P5480993223136810432.Spec : Prop :=
  ∀ n, P5480993223136810432.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P9132180837481576976

`A014973(p?[A016035(A086096(n+1))])`
-/

namespace A085448.P9132180837481576976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A086096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085448.P9132180837481576976

namespace A085448

/-- `A014973(p?[A016035(A086096(n+1))])` -/
def P9132180837481576976.Spec : Prop :=
  ∀ n, P9132180837481576976.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P3074768979429542089

`A026741(p?[A026741(A086096(n+1))])`
-/

namespace A085448.P3074768979429542089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A086096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085448.P3074768979429542089

namespace A085448

/-- `A026741(p?[A026741(A086096(n+1))])` -/
def P3074768979429542089.Spec : Prop :=
  ∀ n, P3074768979429542089.a n = A085448 (n + 1)

end A085448

/-! ## A085448.P9740722512407792755

`A214682(p?[A214682(A086096(n+1))])`
-/

namespace A085448.P9740722512407792755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (A086096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085448.P9740722512407792755

namespace A085448

/-- `A214682(p?[A214682(A086096(n+1))])` -/
def P9740722512407792755.Spec : Prop :=
  ∀ n, P9740722512407792755.a n = A085448 (n + 1)

end A085448

/-!
# A085449: Horadam sequence (0,1,4,2).

The programs for A085449, the canonical program `A085449.P739960782031410857` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085449 has offset 0).

The definition of A085449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085449.P739960782031410857

`2*(a(n-1)+2*a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085449

/-- `2*(a(n-1)+2*a(n-2))` -/
def P739960782031410857.Spec : Prop :=
  ∀ n, (P739960782031410857.a n : ℤ) = A085449 n

theorem P739960782031410857.correct : P739960782031410857.Spec := by
  intro n
  simp only [A085449]

end A085449

/-! ## A085449.P6275959728620804708

`sqrt(5)*((1+sqrt(5))^n-(1-sqrt(5))^n)/10`
-/

namespace A085449.P6275959728620804708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 : ℝ) * ((1 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A085449.P6275959728620804708

namespace A085449

/-- `sqrt(5)*((1+sqrt(5))^n-(1-sqrt(5))^n)/10` -/
def P6275959728620804708.Spec : Prop :=
  ∀ n, P6275959728620804708.a n = (A085449 n : ℝ)

theorem P6275959728620804708.correct : P6275959728620804708.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A085449, Nat.add_sub_cancel, A085449.P6275959728620804708.a, A085449.P739960782031410857.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A085449, Nat.add_sub_cancel, A085449.P6275959728620804708.a, A085449.P739960782031410857.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A085449

/-! ## A085449.P578015816252587453

`ogf(x/(1-2x-4x^2))`
-/

namespace A085449.P578015816252587453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -4] n

end

end A085449.P578015816252587453

namespace A085449

/-- `ogf(x/(1-2x-4x^2))` -/
def P578015816252587453.Spec : Prop :=
  ∀ n, P578015816252587453.a n = A085449 n

end A085449

/-! ## A085449.P6717249927244902471

`8*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A085449.P6717249927244902471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  8 * (a (n - 2) + a (n - 3))

end

end A085449.P6717249927244902471

namespace A085449

/-- `8*(a(n-2)+a(n-3))` -/
def P6717249927244902471.Spec : Prop :=
  ∀ n, (P6717249927244902471.a n : ℤ) = A085449 n

end A085449

/-! ## A085449.P13119573969912799587

`4*a(n-1)-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A085449.P13119573969912799587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 * a (n - 1) - 8 * a (n - 3)

end

end A085449.P13119573969912799587

namespace A085449

/-- `4*a(n-1)-8*a(n-3)` -/
def P13119573969912799587.Spec : Prop :=
  ∀ n, P13119573969912799587.a n = A085449 n

end A085449

/-! ## A085449.P14285183608217353703

`Δ[A014335(n)]`
-/

namespace A085449.P14285183608217353703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085449.P14285183608217353703

namespace A085449

/-- `Δ[A014335(n)]` -/
def P14285183608217353703.Spec : Prop :=
  ∀ n, P14285183608217353703.a n = A085449 n

end A085449

/-! ## A085449.P2579665721664449351

`2^(n-1)*A000045(n)`
-/

namespace A085449.P2579665721664449351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

end

end A085449.P2579665721664449351

namespace A085449

/-- `2^(n-1)*A000045(n)` -/
def P2579665721664449351.Spec : Prop :=
  ∀ n, P2579665721664449351.a n = (A085449 n : ℚ)

end A085449

/-! ## A085449.P15126480348006364770

`2^n/2*Δ[A000045(n+1)]`
-/

namespace A085449.P15126480348006364770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A085449.P15126480348006364770

namespace A085449

/-- `2^n/2*Δ[A000045(n+1)]` -/
def P15126480348006364770.Spec : Prop :=
  ∀ n, P15126480348006364770.a n = (A085449 n : ℚ)

end A085449

/-! ## A085449.P11342409940981578371

`Δ[2^(n-1)/5*A000032(n)]`
-/

namespace A085449.P11342409940981578371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 5 * (A000032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085449.P11342409940981578371

namespace A085449

/-- `Δ[2^(n-1)/5*A000032(n)]` -/
def P11342409940981578371.Spec : Prop :=
  ∀ n, P11342409940981578371.a n = (A085449 n : ℚ)

end A085449

/-! ## A085449.P5972147073059481059

`A000045(n)*A011782(n)`
-/

namespace A085449.P5972147073059481059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A011782 n

end

end A085449.P5972147073059481059

namespace A085449

/-- `A000045(n)*A011782(n)` -/
def P5972147073059481059.Spec : Prop :=
  ∀ n, P5972147073059481059.a n = A085449 n

end A085449

/-! ## A085449.P6370184212507682008

`A000045(n)*A131577(n)`
-/

namespace A085449.P6370184212507682008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A131577 n

end

end A085449.P6370184212507682008

namespace A085449

/-- `A000045(n)*A131577(n)` -/
def P6370184212507682008.Spec : Prop :=
  ∀ n, P6370184212507682008.a n = A085449 n

end A085449

/-! ## A085449.P5041971900833589642

`A000045(n)*Δ[A094373(n)]`
-/

namespace A085449.P5041971900833589642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A085449.P5041971900833589642

namespace A085449

/-- `A000045(n)*Δ[A094373(n)]` -/
def P5041971900833589642.Spec : Prop :=
  ∀ n, P5041971900833589642.a n = A085449 n

end A085449

/-! ## A085449.P5946908255157539660

`A319196(n+1)+A319196(n)`
-/

namespace A085449.P5946908255157539660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 (n + 1) + A319196 n

end

end A085449.P5946908255157539660

namespace A085449

/-- `A319196(n+1)+A319196(n)` -/
def P5946908255157539660.Spec : Prop :=
  ∀ n, P5946908255157539660.a n = A085449 n

end A085449

/-! ## A085449.P2080671106200976564

`A014335(n+1)-A014335(n)`
-/

namespace A085449.P2080671106200976564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (n + 1) - A014335 n

end

end A085449.P2080671106200976564

namespace A085449

/-- `A014335(n+1)-A014335(n)` -/
def P2080671106200976564.Spec : Prop :=
  ∀ n, P2080671106200976564.a n = A085449 n

end A085449

/-! ## A085449.P13639591850336054042

`A000045(n)*A034008(n+1)`
-/

namespace A085449.P13639591850336054042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A034008 (n + 1)

end

end A085449.P13639591850336054042

namespace A085449

/-- `A000045(n)*A034008(n+1)` -/
def P13639591850336054042.Spec : Prop :=
  ∀ n, P13639591850336054042.a n = A085449 n

end A085449

/-! ## A085449.P9985969947476417428

`A000045(n)*A166444(n+1)`
-/

namespace A085449.P9985969947476417428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A166444 (n + 1)

end

end A085449.P9985969947476417428

namespace A085449

/-- `A000045(n)*A166444(n+1)` -/
def P9985969947476417428.Spec : Prop :=
  ∀ n, P9985969947476417428.a n = A085449 n

end A085449

/-! ## A085449.P17798101870324493497

`A011782(n)*A212804(n+1)`
-/

namespace A085449.P17798101870324493497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A212804 (n + 1)

end

end A085449.P17798101870324493497

namespace A085449

/-- `A011782(n)*A212804(n+1)` -/
def P17798101870324493497.Spec : Prop :=
  ∀ n, P17798101870324493497.a n = A085449 n

end A085449

/-! ## A085449.P4489920107628060982

`A131577(n)*A212804(n+1)`
-/

namespace A085449.P4489920107628060982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A212804 (n + 1)

end

end A085449.P4489920107628060982

namespace A085449

/-- `A131577(n)*A212804(n+1)` -/
def P4489920107628060982.Spec : Prop :=
  ∀ n, P4489920107628060982.a n = A085449 n

end A085449

/-! ## A085449.P2668494828887071872

`A131577(n)*A324969(n+1)`
-/

namespace A085449.P2668494828887071872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A324969 (n + 1)

end

end A085449.P2668494828887071872

namespace A085449

/-- `A131577(n)*A324969(n+1)` -/
def P2668494828887071872.Spec : Prop :=
  ∀ n, P2668494828887071872.a n = A085449 n

end A085449

/-!
# A085451: Numbers n such that n and prime[n] together use only distinct digits.

The programs for A085451, there is no canonical definition to state claims against.
-/

/-! ## A085451.P16058953293358306272

`A000720(A154579(n+1))`
-/

namespace A085451.P16058953293358306272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154579 (n + 1)).toNat

end

end A085451.P16058953293358306272

/-! ## A085451.P18443098994852251978

`A061395(p?[A154579(n+1)])`
-/

namespace A085451.P18443098994852251978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085451.P18443098994852251978

/-! ## A085451.P15590189770885404791

`A066328(p?[A154579(n+1)])`
-/

namespace A085451.P15590189770885404791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085451.P15590189770885404791

/-! ## A085451.P163975988917249024

`A302039(p?[A154579(n+1)])`
-/

namespace A085451.P163975988917249024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085451.P163975988917249024

/-! ## A085451.P18391406115627336874

`A061395(2*A154579(n+1))`
-/

namespace A085451.P18391406115627336874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A154579 (n + 1)).toNat

end

end A085451.P18391406115627336874

/-! ## A085451.P16319260798568171319

`A061395(lcm(2, A154579(n+1)))`
-/

namespace A085451.P16319260798568171319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A154579 (n + 1)))

end

end A085451.P16319260798568171319

/-! ## A085451.P13226529172662009444

`∑{d}[A154579(n+1), A061395(#)]`
-/

namespace A085451.P13226529172662009444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A085451.P13226529172662009444

/-! ## A085451.P11430981716731676710

`A302039(2*A154579(n+1))-1`
-/

namespace A085451.P11430981716731676710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A154579 (n + 1)).toNat - 1

end

end A085451.P11430981716731676710

/-! ## A085451.P5099645142007632381

`A066328(2*A154579(n+1)-A154579(n+1))`
-/

namespace A085451.P5099645142007632381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A154579 (n + 1) - A154579 (n + 1)).toNat

end

end A085451.P5099645142007632381

/-!
# A085452: Triangle T(n,k) read by rows: T(n,k) = number of cycles of length 2k in the binary n-cube, for n >= 2, k = 2, 3, ..., 2^(n-1).

The programs for A085452, there is no canonical definition to state claims against.
-/

/-! ## A085452.P12017596376567364233

`∏{digits}[A048785(∑{d}[n+1, #^5]), #]`
-/

namespace A085452.P12017596376567364233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (∑ d ∈ Nat.divisors (f2 n), d ^ 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A085452.P12017596376567364233

/-! ## A085452.P845886807369805807

`A263693(A339633(n))`
-/

namespace A085452.P845886807369805807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263693 (A339633 n).toNat

end

end A085452.P845886807369805807

/-!
# A085455: Sum_{i=0..n} Sum_{j=0..i} a(j) * a(i-j) = (-3)^n.

The programs for A085455, the canonical program `A085455.P11092561144214495539` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085455 has offset 0).

The definition of A085455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085455.P14035455882028683413

`(-1)^n*∑[A105696(n)]`
-/

namespace A085455.P14035455882028683413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085455.P14035455882028683413

namespace A085455

/-- `(-1)^n*∑[A105696(n)]` -/
def P14035455882028683413.Spec : Prop :=
  ∀ n, P14035455882028683413.a n = A085455 n

end A085455

/-! ## A085455.P11092561144214495539

`(-1)^n*A025565(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085455

/-- `(-1)^n*A025565(n+1)` -/
def P11092561144214495539.Spec : Prop :=
  ∀ n, P11092561144214495539.a n = A085455 n

theorem P11092561144214495539.correct : P11092561144214495539.Spec := by
  intro n
  simp only [A085455]

end A085455

/-! ## A085455.P8518205331353630760

`A005773(n)*A280560(n)`
-/

namespace A085455.P8518205331353630760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n * A280560 n

end

end A085455.P8518205331353630760

namespace A085455

/-- `A005773(n)*A280560(n)` -/
def P8518205331353630760.Spec : Prop :=
  ∀ n, P8518205331353630760.a n = A085455 n

end A085455

/-! ## A085455.P10866202997783316917

`∑[A105696(n)]*A033999(n)`
-/

namespace A085455.P10866202997783316917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A085455.P10866202997783316917

namespace A085455

/-- `∑[A105696(n)]*A033999(n)` -/
def P10866202997783316917.Spec : Prop :=
  ∀ n, P10866202997783316917.a n = A085455 n

end A085455

/-! ## A085455.P162424997045519412

`A025565(n+1)*A033999(n)`
-/

namespace A085455.P162424997045519412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1) * A033999 n

end

end A085455.P162424997045519412

namespace A085455

/-- `A025565(n+1)*A033999(n)` -/
def P162424997045519412.Spec : Prop :=
  ∀ n, P162424997045519412.a n = A085455 n

theorem P162424997045519412.correct : P162424997045519412.Spec := by
  intro n
  simp only [A085455, Nat.add_sub_cancel, A085455.P162424997045519412.a, A085455.P11092561144214495539.a, A025565, A025565.P15020973864699713191.a, A033999, A033999.P17703899380244199787.a, A005773, A005773.P2300326801340372225.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085455

/-! ## A085455.P9489872783215510155

`A025565(n+1)*A087960(2*n)`
-/

namespace A085455.P9489872783215510155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1) * A087960 (2 * n)

end

end A085455.P9489872783215510155

namespace A085455

/-- `A025565(n+1)*A087960(2*n)` -/
def P9489872783215510155.Spec : Prop :=
  ∀ n, P9489872783215510155.a n = A085455 n

end A085455

/-! ## A085455.P3336790331769519301

`A025565(n+1)/A085456(n)*A085458(n)`
-/

namespace A085455.P3336790331769519301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) : ℚ) / (A085456 n : ℚ) * (A085458 n : ℚ)

end

end A085455.P3336790331769519301

namespace A085455

/-- `A025565(n+1)/A085456(n)*A085458(n)` -/
def P3336790331769519301.Spec : Prop :=
  ∀ n, P3336790331769519301.a n = (A085455 n : ℚ)

end A085455

/-! ## A085455.P15960303278646705499

`A002448(n²)*A005773(n)`
-/

namespace A085455.P15960303278646705499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2) * A005773 n

end

end A085455.P15960303278646705499

namespace A085455

/-- `A002448(n²)*A005773(n)` -/
def P15960303278646705499.Spec : Prop :=
  ∀ n, P15960303278646705499.a n = A085455 n

end A085455

/-!
# A085456: Sum_{i=0..n} Sum_{j=0..i} a(j) * a(i-j) = (-7)^n.

The programs for A085456, there is no canonical definition to state claims against.
-/

/-! ## A085456.P5847894749317591429

`(-1)^n*A085458(n)`
-/

namespace A085456.P5847894749317591429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A085458 n

end

end A085456.P5847894749317591429

/-! ## A085456.P14172446342545558645

`A085458(n)/A033999(n)`
-/

namespace A085456.P14172446342545558645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085458 n : ℚ) / (A033999 n : ℚ)

end

end A085456.P14172446342545558645

/-! ## A085456.P12070756183415463472

`A085458(n)*A165326(n+1)`
-/

namespace A085456.P12070756183415463472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085458 n * A165326 (n + 1)

end

end A085456.P12070756183415463472

/-! ## A085456.P13654400997316525980

`A085458(n)/A008683(A118124(n))^n`
-/

namespace A085456.P13654400997316525980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085458 n : ℚ) / (A008683 (A118124 n).toNat ^ n : ℚ)

end

end A085456.P13654400997316525980

/-! ## A085456.P15442468416180581138

`A025565(n+1)*A085458(n)/A085455(n)`
-/

namespace A085456.P15442468416180581138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) * A085458 n : ℚ) / (A085455 n : ℚ)

end

end A085456.P15442468416180581138

/-!
# A085458: a(n) = 4*Sum_{i=0..n-1} C(2*i+1, i)*C(n-1, n-1-i)*(-1)^(n-1-i)*2^i for n > 0, a(0) = 1.

The programs for A085458, there is no canonical definition to state claims against.
-/

/-! ## A085458.P12626824841929647909

`abs(A085456(n))`
-/

namespace A085458.P12626824841929647909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085456 n|

end

end A085458.P12626824841929647909

/-! ## A085458.P4915213103322196347

`A033999(n)*A085456(n)`
-/

namespace A085458.P4915213103322196347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A085456 n

end

end A085458.P4915213103322196347

/-! ## A085458.P705083991099167493

`gcd(A000038(n), A085456(n))`
-/

namespace A085458.P705083991099167493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A085456 n)

end

end A085458.P705083991099167493

/-! ## A085458.P16076547457157796277

`lcm(A020985(n), A085456(n))`
-/

namespace A085458.P16076547457157796277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A085456 n)

end

end A085458.P16076547457157796277

/-! ## A085458.P12295112525605921600

`A025565(n+1)/A085455(n)*A085456(n)`
-/

namespace A085458.P12295112525605921600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025565 (n + 1) : ℚ) / (A085455 n : ℚ) * (A085456 n : ℚ)

end

end A085458.P12295112525605921600

/-!
# A085459: Numbers k such that k-th cyclotomic polynomial has exactly 3 positive coefficients.

The programs for A085459, there is no canonical definition to state claims against.
-/

/-! ## A085459.P8404674675177021129

`filter[A337801(n+1), A389911(#)]`
-/

namespace A085459.P8404674675177021129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A085459.P8404674675177021129

/-! ## A085459.P4867772287290193559

`∩[A055632(n+1), A337801(n+1)]`
-/

namespace A085459.P4867772287290193559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085459.P4867772287290193559

/-! ## A085459.P943938342899543766

`∩[A206284(n+1), A337801(n+1)]`
-/

namespace A085459.P943938342899543766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085459.P943938342899543766

/-! ## A085459.P6690147327958243559

`eq[10-a(n-1), A061376(n+2)]+2` with `a(0)=2, a(1)=0, a(2)=-1, a(3)=3`
-/

namespace A085459.P6690147327958243559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, -1, 3] fun n f1 =>
  10 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061376 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A085459.P6690147327958243559

/-! ## A085459.P9377226802624898429

`eq[3, A086765(n+1)]+1`
-/

namespace A085459.P9377226802624898429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085459.P9377226802624898429

/-!
# A085460: Primes p such that there is at least one k dividing (p-1)!-1 (p <= k <= 2p).

The programs for A085460, there is no canonical definition to state claims against.
-/

/-! ## A085460.P3253063088248025272

`record[A006530(2*A085468(n+1))]`
-/

namespace A085460.P3253063088248025272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A085468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085460.P3253063088248025272

/-! ## A085460.P8161953697328174668

`p?[A085468(n+1)+A000007(n)]`
-/

namespace A085460.P8161953697328174668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085468 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085460.P8161953697328174668

/-! ## A085460.P14875945220686224857

`p?[A085491(2*n)+A085468(n+1)]`
-/

namespace A085460.P14875945220686224857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (2 * n) + A085468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085460.P14875945220686224857

/-! ## A085460.P10148015998960673464

`p?[A014963(4*n+2)*A085468(n+1)]`
-/

namespace A085460.P10148015998960673464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A085468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085460.P10148015998960673464

/-! ## A085460.P13995448856984023566

`p?[A085477(n+1)]`
-/

namespace A085460.P13995448856984023566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085460.P13995448856984023566

/-! ## A085460.P16676717516826305512

`p?[A181440(A085468(n+1))]`
-/

namespace A085460.P16676717516826305512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A085468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085460.P16676717516826305512

/-! ## A085460.P10574673150026003737

`∩[A000040(n+1), A085477(n+1)]`
-/

namespace A085460.P10574673150026003737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085460.P10574673150026003737

/-! ## A085460.P5583485333677597639

`∩[A045319(n+1), A085477(n+1)]`
-/

namespace A085460.P5583485333677597639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085460.P5583485333677597639

/-! ## A085460.P86618183788216449

`∩[A045344(n+1), A085477(n+1)]`
-/

namespace A085460.P86618183788216449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085460.P86618183788216449

/-! ## A085460.P5559217251793754881

`∩[A049573(n+1), A085477(n+1)]`
-/

namespace A085460.P5559217251793754881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085460.P5559217251793754881

/-! ## A085460.P9072879773281312902

`∩[A058853(n+1), A085477(n+1)]`
-/

namespace A085460.P9072879773281312902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085460.P9072879773281312902

/-! ## A085460.P14156097925424318779

`∩[A070159(n+1), A085477(n+1)]`
-/

namespace A085460.P14156097925424318779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085460.P14156097925424318779

/-!
# A085461: Number of 5-tuples (v1,v2,v3,v4,v5) of nonnegative integers less than n such that v1 <= v5, v2 <= v5, v2 <= v4 and v3 <= v4.

The programs for A085461, the canonical program `A085461.P4765269538467278555` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085461 has offset 1).

The definition of A085461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085461.P4807664296594198262

`1/30*(n+1)*(n+2)*(2*(n+1)+1)*(2*(n+1)²+2*(n+1)+1)`
-/

namespace A085461.P4807664296594198262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 30 * (n + 1 : ℚ) * (n + 2 : ℚ) * (2 * (n + 1) + 1 : ℚ) * (2 * (n + 1) ^ 2 + 2 * (n + 1) + 1 : ℚ)

end

end A085461.P4807664296594198262

namespace A085461

/-- `1/30*(n+1)*(n+2)*(2*(n+1)+1)*(2*(n+1)²+2*(n+1)+1)` -/
def P4807664296594198262.Spec : Prop :=
  ∀ n, P4807664296594198262.a n = (A085461 (n + 1) : ℚ)

theorem P4807664296594198262.correct : P4807664296594198262.Spec := by
  intro n
  simp only [A085461, Nat.add_sub_cancel, A085461.P4807664296594198262.a, A085461.P4765269538467278555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085461

/-! ## A085461.P4765269538467278555

`n+1+11*C(n+1, 2)+34*C(n+1, 3)+40*C(n+1, 4)+16*C(n+1, 5)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085461

/-- `n+1+11*C(n+1, 2)+34*C(n+1, 3)+40*C(n+1, 4)+16*C(n+1, 5)` -/
def P4765269538467278555.Spec : Prop :=
  ∀ n, (P4765269538467278555.a n : ℤ) = A085461 (n + 1)

theorem P4765269538467278555.correct : P4765269538467278555.Spec := by
  intro n
  simp only [A085461, Nat.add_sub_cancel]

end A085461

/-! ## A085461.P2962613684271761248

`∑[∑[A057813(n)]]`
-/

namespace A085461.P2962613684271761248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P2962613684271761248

namespace A085461

/-- `∑[∑[A057813(n)]]` -/
def P2962613684271761248.Spec : Prop :=
  ∀ n, P2962613684271761248.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P14853626583742551101

`∑[A072819(n+1)+(n+1)²]`
-/

namespace A085461.P14853626583742551101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P14853626583742551101

namespace A085461

/-- `∑[A072819(n+1)+(n+1)²]` -/
def P14853626583742551101.Spec : Prop :=
  ∀ n, P14853626583742551101.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P7683509595306348056

`A271870(n)+A000292(n)`
-/

namespace A085461.P7683509595306348056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n + A000292 n

end

end A085461.P7683509595306348056

namespace A085461

/-- `A271870(n)+A000292(n)` -/
def P7683509595306348056.Spec : Prop :=
  ∀ n, P7683509595306348056.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P17382738013325440671

`A225007(n)-A004320(n)`
-/

namespace A085461.P17382738013325440671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n - A004320 n

end

end A085461.P17382738013325440671

namespace A085461

/-- `A225007(n)-A004320(n)` -/
def P17382738013325440671.Spec : Prop :=
  ∀ n, P17382738013325440671.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P9079929757876077633

`A213556(n+1)-2*A004282(n)`
-/

namespace A085461.P9079929757876077633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - 2 * A004282 n

end

end A085461.P9079929757876077633

namespace A085461

/-- `A213556(n+1)-2*A004282(n)` -/
def P9079929757876077633.Spec : Prop :=
  ∀ n, P9079929757876077633.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P3696157658716948675

`A085463(n+1)+∑[∑[A000330(n)]]`
-/

namespace A085461.P3696157658716948675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P3696157658716948675

namespace A085461

/-- `A085463(n+1)+∑[∑[A000330(n)]]` -/
def P3696157658716948675.Spec : Prop :=
  ∀ n, P3696157658716948675.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P145169762727660880

`(A085463(n+1)+A085462(n+1))/2`
-/

namespace A085461.P145169762727660880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085463 (n + 1) + A085462 (n + 1) : ℚ) / 2

end

end A085461.P145169762727660880

namespace A085461

/-- `(A085463(n+1)+A085462(n+1))/2` -/
def P145169762727660880.Spec : Prop :=
  ∀ n, P145169762727660880.a n = (A085461 (n + 1) : ℚ)

theorem P145169762727660880.correct : P145169762727660880.Spec := by
  intro n
  simp only [A085461, Nat.add_sub_cancel, A085461.P145169762727660880.a, A085461.P4765269538467278555.a, A085462, A085462.P2347339117137320716.a, A085463, A085463.P12822451270084158499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085461

/-! ## A085461.P8406732592734656926

`∑[2*A006324(n+1)]-A006324(n+1)`
-/

namespace A085461.P8406732592734656926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006324 (n + 1)

end

end A085461.P8406732592734656926

namespace A085461

/-- `∑[2*A006324(n+1)]-A006324(n+1)` -/
def P8406732592734656926.Spec : Prop :=
  ∀ n, P8406732592734656926.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P15248873881269674167

`Δ[A006858(n)]`
-/

namespace A085461.P15248873881269674167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085461.P15248873881269674167

namespace A085461

/-- `Δ[A006858(n)]` -/
def P15248873881269674167.Spec : Prop :=
  ∀ n, P15248873881269674167.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P14435197519266459422

`∑[A071270(n+1)]`
-/

namespace A085461.P14435197519266459422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P14435197519266459422

namespace A085461

/-- `∑[A071270(n+1)]` -/
def P14435197519266459422.Spec : Prop :=
  ∀ n, P14435197519266459422.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P16162752606649235160

`Δ[A006332(n)/2]`
-/

namespace A085461.P16162752606649235160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006332 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085461.P16162752606649235160

namespace A085461

/-- `Δ[A006332(n)/2]` -/
def P16162752606649235160.Spec : Prop :=
  ∀ n, P16162752606649235160.a n = (A085461 (n + 1) : ℚ)

end A085461

/-! ## A085461.P8056239741227413405

`∑[(n+1)*A005900(n+1)]`
-/

namespace A085461.P8056239741227413405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P8056239741227413405

namespace A085461

/-- `∑[(n+1)*A005900(n+1)]` -/
def P8056239741227413405.Spec : Prop :=
  ∀ n, P8056239741227413405.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P6203315347550005442

`∑[A272125(n+1)/(n+1)]`
-/

namespace A085461.P6203315347550005442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272125 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P6203315347550005442

namespace A085461

/-- `∑[A272125(n+1)/(n+1)]` -/
def P6203315347550005442.Spec : Prop :=
  ∀ n, P6203315347550005442.a n = (A085461 (n + 1) : ℚ)

end A085461

/-! ## A085461.P11775456597398126617

`∑[A035598(n+1)-(n+1)²]`
-/

namespace A085461.P11775456597398126617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085461.P11775456597398126617

namespace A085461

/-- `∑[A035598(n+1)-(n+1)²]` -/
def P11775456597398126617.Spec : Prop :=
  ∀ n, P11775456597398126617.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P18193545464659560375

`A006858(n+1)-A006858(n)`
-/

namespace A085461.P18193545464659560375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006858 (n + 1) - A006858 n

end

end A085461.P18193545464659560375

namespace A085461

/-- `A006858(n+1)-A006858(n)` -/
def P18193545464659560375.Spec : Prop :=
  ∀ n, P18193545464659560375.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P18008289039288118743

`A069038(n+1)+Δ[A277228(n)]`
-/

namespace A085461.P18008289039288118743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (n + 1) + (f1 (n + 1) - f1 n)

end

end A085461.P18008289039288118743

namespace A085461

/-- `A069038(n+1)+Δ[A277228(n)]` -/
def P18008289039288118743.Spec : Prop :=
  ∀ n, P18008289039288118743.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P13977060229008811469

`A277229(n+1)+A277228(n+1)`
-/

namespace A085461.P13977060229008811469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 (n + 1) + A277228 (n + 1)

end

end A085461.P13977060229008811469

namespace A085461

/-- `A277229(n+1)+A277228(n+1)` -/
def P13977060229008811469.Spec : Prop :=
  ∀ n, P13977060229008811469.a n = A085461 (n + 1)

end A085461

/-! ## A085461.P3895123777256986162

`(A006332(n+1)-A006332(n))/2`
-/

namespace A085461.P3895123777256986162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006332 (n + 1) - A006332 n : ℚ) / 2

end

end A085461.P3895123777256986162

namespace A085461

/-- `(A006332(n+1)-A006332(n))/2` -/
def P3895123777256986162.Spec : Prop :=
  ∀ n, P3895123777256986162.a n = (A085461 (n + 1) : ℚ)

end A085461

/-!
# A085462: Number of 5-tuples (v1,v2,v3,v4,v5) of nonnegative integers less than n such that v1 <= v4, v1 <= v5, v2 <= v4 and v3 <= v4.

The programs for A085462, the canonical program `A085462.P2347339117137320716` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085462 has offset 1).

The definition of A085462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085462.P8398208430180035511

`(n+1)*(n+2)*(2*(n+1)+1)*(3*(n+1)+1)*(3*(n+1)+2)/120`
-/

namespace A085462.P8398208430180035511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (2 * (n + 1) + 1) * (3 * (n + 1) + 1) * (3 * (n + 1) + 2) : ℚ) / 120

end

end A085462.P8398208430180035511

namespace A085462

/-- `(n+1)*(n+2)*(2*(n+1)+1)*(3*(n+1)+1)*(3*(n+1)+2)/120` -/
def P8398208430180035511.Spec : Prop :=
  ∀ n, P8398208430180035511.a n = (A085462 (n + 1) : ℚ)

theorem P8398208430180035511.correct : P8398208430180035511.Spec := by
  intro n
  simp only [A085462, Nat.add_sub_cancel, A085462.P8398208430180035511.a, A085462.P2347339117137320716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085462

/-! ## A085462.P2347339117137320716

`n+1+12*C(n+1, 2)+38*C(n+1, 3)+45*C(n+1, 4)+18*C(n+1, 5)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085462

/-- `n+1+12*C(n+1, 2)+38*C(n+1, 3)+45*C(n+1, 4)+18*C(n+1, 5)` -/
def P2347339117137320716.Spec : Prop :=
  ∀ n, (P2347339117137320716.a n : ℤ) = A085462 (n + 1)

theorem P2347339117137320716.correct : P2347339117137320716.Spec := by
  intro n
  simp only [A085462, Nat.add_sub_cancel]

end A085462

/-! ## A085462.P81571947159157439

`∑[∑[A063491(n+1)]]`
-/

namespace A085462.P81571947159157439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085462.P81571947159157439

namespace A085462

/-- `∑[∑[A063491(n+1)]]` -/
def P81571947159157439.Spec : Prop :=
  ∀ n, P81571947159157439.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P3928557873077876715

`∑[A357178(n+1)/(n+1)]`
-/

namespace A085462.P3928557873077876715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357178 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085462.P3928557873077876715

namespace A085462

/-- `∑[A357178(n+1)/(n+1)]` -/
def P3928557873077876715.Spec : Prop :=
  ∀ n, P3928557873077876715.a n = (A085462 (n + 1) : ℚ)

end A085462

/-! ## A085462.P7090054453005792437

`A086689(n+1)+∑[∑[n]²]`
-/

namespace A085462.P7090054453005792437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085462.P7090054453005792437

namespace A085462

/-- `A086689(n+1)+∑[∑[n]²]` -/
def P7090054453005792437.Spec : Prop :=
  ∀ n, P7090054453005792437.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P11219297164284056572

`A201106(n+1)+A051878(n)`
-/

namespace A085462.P11219297164284056572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201106 (n + 1) + A051878 n

end

end A085462.P11219297164284056572

namespace A085462

/-- `A201106(n+1)+A051878(n)` -/
def P11219297164284056572.Spec : Prop :=
  ∀ n, P11219297164284056572.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P124211307980348537

`2*A085461(n+1)-A085463(n+1)`
-/

namespace A085462.P124211307980348537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085461 (n + 1) - A085463 (n + 1)

end

end A085462.P124211307980348537

namespace A085462

/-- `2*A085461(n+1)-A085463(n+1)` -/
def P124211307980348537.Spec : Prop :=
  ∀ n, P124211307980348537.a n = A085462 (n + 1)

theorem P124211307980348537.correct : P124211307980348537.Spec := by
  intro n
  simp only [A085462, Nat.add_sub_cancel, A085462.P124211307980348537.a, A085462.P2347339117137320716.a, A085461, A085461.P4765269538467278555.a, A085463, A085463.P12822451270084158499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085462

/-! ## A085462.P16293293954471722347

`Δ[(n+1)/2*A024166(n)]`
-/

namespace A085462.P16293293954471722347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A024166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085462.P16293293954471722347

namespace A085462

/-- `Δ[(n+1)/2*A024166(n)]` -/
def P16293293954471722347.Spec : Prop :=
  ∀ n, P16293293954471722347.a n = (A085462 (n + 1) : ℚ)

theorem P16293293954471722347.correct : P16293293954471722347.Spec := by
  intro n
  simp only [A085462, Nat.add_sub_cancel, A085462.P16293293954471722347.f1, A085462.P16293293954471722347.a, A085462.P2347339117137320716.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085462

/-! ## A085462.P3709928815665981272

`A024166(n+1)+A112851(n+1)+A024166(n)`
-/

namespace A085462.P3709928815665981272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) + (A112851 (n + 1) + A024166 n)

end

end A085462.P3709928815665981272

namespace A085462

/-- `A024166(n+1)+A112851(n+1)+A024166(n)` -/
def P3709928815665981272.Spec : Prop :=
  ∀ n, P3709928815665981272.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P17146974668050791404

`A110159(n+1)+A110159(n)-A185505(n+2)`
-/

namespace A085462.P17146974668050791404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110159 (n + 1) + (A110159 n - A185505 (n + 2))

end

end A085462.P17146974668050791404

namespace A085462

/-- `A110159(n+1)+A110159(n)-A185505(n+2)` -/
def P17146974668050791404.Spec : Prop :=
  ∀ n, P17146974668050791404.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P14095909405804483998

`A085461(n+1)+A085463(n+1)-A079547(n+2)`
-/

namespace A085462.P14095909405804483998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + (A085463 (n + 1) - A079547 (n + 2))

end

end A085462.P14095909405804483998

namespace A085462

/-- `A085461(n+1)+A085463(n+1)-A079547(n+2)` -/
def P14095909405804483998.Spec : Prop :=
  ∀ n, P14095909405804483998.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P6515963180825792087

`A014696(2*n)`
-/

namespace A085462.P6515963180825792087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014696 (2 * n)

end

end A085462.P6515963180825792087

namespace A085462

/-- `A014696(2*n)` -/
def P6515963180825792087.Spec : Prop :=
  ∀ n, P6515963180825792087.a n = A085462 (n + 1)

end A085462

/-! ## A085462.P3673974037850086984

`∩[A104599(n+1), A014696(n)]`
-/

namespace A085462.P3673974037850086984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014696 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085462.P3673974037850086984

namespace A085462

/-- `∩[A104599(n+1), A014696(n)]` -/
def P3673974037850086984.Spec : Prop :=
  ∀ n, (P3673974037850086984.a n : ℤ) = A085462 (n + 1)

end A085462

/-! ## A085462.P14568652388783052847

`∑[A024219((n+1)²)+1]`
-/

namespace A085462.P14568652388783052847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024219 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085462.P14568652388783052847

namespace A085462

/-- `∑[A024219((n+1)²)+1]` -/
def P14568652388783052847.Spec : Prop :=
  ∀ n, P14568652388783052847.a n = A085462 (n + 1)

end A085462

/-!
# A085463: Number of 5-tuples (v1,v2,v3,v4,v5) of nonnegative integers less than n such that v1 <= v4, v1 <= v5, v2 <= v4, v2 <= v5 and v3 <= v4.

The programs for A085463, the canonical program `A085463.P12822451270084158499` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085463 has offset 1).

The definition of A085463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085463.P6822223406993242594

`(n+1)*(n+2)*(2*(n+1)+1)*(7*(n+1)²+7*(n+1)+6)/120`
-/

namespace A085463.P6822223406993242594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (2 * (n + 1) + 1) * (7 * (n + 1) ^ 2 + 7 * (n + 1) + 6) : ℚ) / 120

end

end A085463.P6822223406993242594

namespace A085463

/-- `(n+1)*(n+2)*(2*(n+1)+1)*(7*(n+1)²+7*(n+1)+6)/120` -/
def P6822223406993242594.Spec : Prop :=
  ∀ n, P6822223406993242594.a n = (A085463 (n + 1) : ℚ)

theorem P6822223406993242594.correct : P6822223406993242594.Spec := by
  intro n
  simp only [A085463, Nat.add_sub_cancel, A085463.P6822223406993242594.a, A085463.P12822451270084158499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085463

/-! ## A085463.P12822451270084158499

`n+1+10*C(n+1, 2)+30*C(n+1, 3)+35*C(n+1, 4)+14*C(n+1, 5)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085463

/-- `n+1+10*C(n+1, 2)+30*C(n+1, 3)+35*C(n+1, 4)+14*C(n+1, 5)` -/
def P12822451270084158499.Spec : Prop :=
  ∀ n, (P12822451270084158499.a n : ℤ) = A085463 (n + 1)

theorem P12822451270084158499.correct : P12822451270084158499.Spec := by
  intro n
  simp only [A085463, Nat.add_sub_cancel]

end A085463

/-! ## A085463.P16900323245441310683

`∑[A185505(n+1)]`
-/

namespace A085463.P16900323245441310683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085463.P16900323245441310683

namespace A085463

/-- `∑[A185505(n+1)]` -/
def P16900323245441310683.Spec : Prop :=
  ∀ n, P16900323245441310683.a n = A085463 (n + 1)

end A085463

/-! ## A085463.P12382423932044914677

`∑[∑[A063490(n+1)]]`
-/

namespace A085463.P12382423932044914677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085463.P12382423932044914677

namespace A085463

/-- `∑[∑[A063490(n+1)]]` -/
def P12382423932044914677.Spec : Prop :=
  ∀ n, P12382423932044914677.a n = A085463 (n + 1)

end A085463

/-! ## A085463.P16569656813544156497

`A034263(n)+A004282(n)`
-/

namespace A085463.P16569656813544156497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + A004282 n

end

end A085463.P16569656813544156497

namespace A085463

/-- `A034263(n)+A004282(n)` -/
def P16569656813544156497.Spec : Prop :=
  ∀ n, P16569656813544156497.a n = A085463 (n + 1)

end A085463

/-! ## A085463.P2774276396298065769

`A244497(n)+A011888(n)`
-/

namespace A085463.P2774276396298065769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244497 n + A011888 n

end

end A085463.P2774276396298065769

namespace A085463

/-- `A244497(n)+A011888(n)` -/
def P2774276396298065769.Spec : Prop :=
  ∀ n, P2774276396298065769.a n = A085463 (n + 1)

theorem P2774276396298065769.correct : P2774276396298065769.Spec := by
  intro n
  simp only [A085463, Nat.add_sub_cancel, A085463.P2774276396298065769.a, A085463.P12822451270084158499.a, A011888, A011888.P8214025180642361741.f1, A011888.P8214025180642361741.a, A244497, A244497.P10835936318056941169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085463

/-! ## A085463.P17787967941182186280

`2*A085461(n+1)-A085462(n+1)`
-/

namespace A085463.P17787967941182186280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085461 (n + 1) - A085462 (n + 1)

end

end A085463.P17787967941182186280

namespace A085463

/-- `2*A085461(n+1)-A085462(n+1)` -/
def P17787967941182186280.Spec : Prop :=
  ∀ n, P17787967941182186280.a n = A085463 (n + 1)

theorem P17787967941182186280.correct : P17787967941182186280.Spec := by
  intro n
  simp only [A085463, Nat.add_sub_cancel, A085463.P17787967941182186280.a, A085463.P12822451270084158499.a, A085461, A085461.P4765269538467278555.a, A085462, A085462.P2347339117137320716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085463

/-! ## A085463.P7039134919090977585

`∑[2*A006323(n+1)]-A006323(n+1)`
-/

namespace A085463.P7039134919090977585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006323 (n + 1)

end

end A085463.P7039134919090977585

namespace A085463

/-- `∑[2*A006323(n+1)]-A006323(n+1)` -/
def P7039134919090977585.Spec : Prop :=
  ∀ n, P7039134919090977585.a n = A085463 (n + 1)

end A085463

/-! ## A085463.P14512129492486722354

`A034263(n)+A000217(n+1)*A000292(n)`
-/

namespace A085463.P14512129492486722354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + A000217 (n + 1) * A000292 n

end

end A085463.P14512129492486722354

namespace A085463

/-- `A034263(n)+A000217(n+1)*A000292(n)` -/
def P14512129492486722354.Spec : Prop :=
  ∀ n, P14512129492486722354.a n = A085463 (n + 1)

end A085463

/-! ## A085463.P4987465230401958661

`∑[A245380(n+1)/(n+1)]`
-/

namespace A085463.P4987465230401958661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245380 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085463.P4987465230401958661

namespace A085463

/-- `∑[A245380(n+1)/(n+1)]` -/
def P4987465230401958661.Spec : Prop :=
  ∀ n, P4987465230401958661.a n = (A085463 (n + 1) : ℚ)

end A085463

/-! ## A085463.P5864061358306950289

`A085462(n+1)+A079547(n+2)-A085461(n+1)`
-/

namespace A085463.P5864061358306950289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) + (A079547 (n + 2) - A085461 (n + 1))

end

end A085463.P5864061358306950289

namespace A085463

/-- `A085462(n+1)+A079547(n+2)-A085461(n+1)` -/
def P5864061358306950289.Spec : Prop :=
  ∀ n, P5864061358306950289.a n = A085463 (n + 1)

end A085463

/-!
# A085464: Number of monotone n-weightings of complete bipartite digraph K(4,2).

The programs for A085464, the canonical program `A085464.P7073115137427264137` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085464 has offset 1).

The definition of A085464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085464.P477816954790690666

`(n+1)*(n+2)*(2*(n+1)^4+4*(n+1)^3+6*(n+1)²+4*(n+1)-1)/30`
-/

namespace A085464.P477816954790690666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((2 * (n + 1) ^ 4 + 4 * (n + 1) ^ 3 + 6 * (n + 1) ^ 2 + 4 * (n + 1) : ℤ) - 1) : ℚ) / 30

end

end A085464.P477816954790690666

namespace A085464

/-- `(n+1)*(n+2)*(2*(n+1)^4+4*(n+1)^3+6*(n+1)²+4*(n+1)-1)/30` -/
def P477816954790690666.Spec : Prop :=
  ∀ n, P477816954790690666.a n = (A085464 (n + 1) : ℚ)

theorem P477816954790690666.correct : P477816954790690666.Spec := by
  intro n
  simp only [A085464, Nat.add_sub_cancel, A085464.P477816954790690666.a, A085464.P7073115137427264137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085464

/-! ## A085464.P7073115137427264137

`n+1+17*C(n+1, 2)+80*C(n+1, 3)+160*C(n+1, 4)+144*C(n+1, 5)+48*C(n+1, 6)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085464

/-- `n+1+17*C(n+1, 2)+80*C(n+1, 3)+160*C(n+1, 4)+144*C(n+1, 5)+48*C(n+1, 6)` -/
def P7073115137427264137.Spec : Prop :=
  ∀ n, (P7073115137427264137.a n : ℤ) = A085464 (n + 1)

theorem P7073115137427264137.correct : P7073115137427264137.Spec := by
  intro n
  simp only [A085464, Nat.add_sub_cancel]

end A085464

/-! ## A085464.P15726375869487331119

`∑[∑[A008514(n)]]`
-/

namespace A085464.P15726375869487331119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085464.P15726375869487331119

namespace A085464

/-- `∑[∑[A008514(n)]]` -/
def P15726375869487331119.Spec : Prop :=
  ∀ n, P15726375869487331119.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P10445164990748319777

`∑[A061803(n+1)]`
-/

namespace A085464.P10445164990748319777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085464.P10445164990748319777

namespace A085464

/-- `∑[A061803(n+1)]` -/
def P10445164990748319777.Spec : Prop :=
  ∀ n, P10445164990748319777.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P17995287838331719305

`A101089(n+1)+∑[A000538(n)]`
-/

namespace A085464.P17995287838331719305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085464.P17995287838331719305

namespace A085464

/-- `A101089(n+1)+∑[A000538(n)]` -/
def P17995287838331719305.Spec : Prop :=
  ∀ n, P17995287838331719305.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P6916383903547435319

`A101089(n+1)+∑[∑[A000583(n)]]`
-/

namespace A085464.P6916383903547435319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085464.P6916383903547435319

namespace A085464

/-- `A101089(n+1)+∑[∑[A000583(n)]]` -/
def P6916383903547435319.Spec : Prop :=
  ∀ n, P6916383903547435319.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P9853362383490900426

`A101089(n+1)+A101089(n+1)-A000538(n+1)`
-/

namespace A085464.P9853362383490900426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1) + (A101089 (n + 1) - A000538 (n + 1))

end

end A085464.P9853362383490900426

namespace A085464

/-- `A101089(n+1)+A101089(n+1)-A000538(n+1)` -/
def P9853362383490900426.Spec : Prop :=
  ∀ n, P9853362383490900426.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P14188498911913583118

`A083200(n+2)+A083200(n+2)-A085465(n+1)`
-/

namespace A085464.P14188498911913583118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083200 (n + 2) + (A083200 (n + 2) - A085465 (n + 1))

end

end A085464.P14188498911913583118

namespace A085464

/-- `A083200(n+2)+A083200(n+2)-A085465(n+1)` -/
def P14188498911913583118.Spec : Prop :=
  ∀ n, P14188498911913583118.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P2090933753801349258

`A244879(n)+A000332(n+3)`
-/

namespace A085464.P2090933753801349258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244879 n + A000332 (n + 3)

end

end A085464.P2090933753801349258

namespace A085464

/-- `A244879(n)+A000332(n+3)` -/
def P2090933753801349258.Spec : Prop :=
  ∀ n, P2090933753801349258.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P5295412860731410275

`∑[∑[A212742(2*n)]]`
-/

namespace A085464.P5295412860731410275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085464.P5295412860731410275

namespace A085464

/-- `∑[∑[A212742(2*n)]]` -/
def P5295412860731410275.Spec : Prop :=
  ∀ n, P5295412860731410275.a n = A085464 (n + 1)

end A085464

/-! ## A085464.P10196771697661136730

`∑[∑[A212740(2*n+1)]]`
-/

namespace A085464.P10196771697661136730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085464.P10196771697661136730

namespace A085464

/-- `∑[∑[A212740(2*n+1)]]` -/
def P10196771697661136730.Spec : Prop :=
  ∀ n, P10196771697661136730.a n = A085464 (n + 1)

end A085464

/-!
# A085465: Number of monotone n-weightings of complete bipartite digraph K(3,3).

The programs for A085465, the canonical program `A085465.P13233482705594905145` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085465 has offset 1).

The definition of A085465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085465.P17871970422560836346

`1/20*(n+1)*(n+2)*((n+1)²+1)*((n+1)²+2*(n+1)+2)`
-/

namespace A085465.P17871970422560836346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 20 * (n + 1 : ℚ) * (n + 2 : ℚ) * ((n + 1) ^ 2 + 1 : ℚ) * ((n + 1) ^ 2 + 2 * (n + 1) + 2 : ℚ)

end

end A085465.P17871970422560836346

namespace A085465

/-- `1/20*(n+1)*(n+2)*((n+1)²+1)*((n+1)²+2*(n+1)+2)` -/
def P17871970422560836346.Spec : Prop :=
  ∀ n, P17871970422560836346.a n = (A085465 (n + 1) : ℚ)

theorem P17871970422560836346.correct : P17871970422560836346.Spec := by
  intro n
  simp only [A085465, Nat.add_sub_cancel, A085465.P17871970422560836346.a, A085465.P13233482705594905145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085465

/-! ## A085465.P13233482705594905145

`n+1+13*C(n+1, 2)+60*C(n+1, 3)+120*C(n+1, 4)+108*C(n+1, 5)+36*C(n+1, 6)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085465

/-- `n+1+13*C(n+1, 2)+60*C(n+1, 3)+120*C(n+1, 4)+108*C(n+1, 5)+36*C(n+1, 6)` -/
def P13233482705594905145.Spec : Prop :=
  ∀ n, (P13233482705594905145.a n : ℤ) = A085465 (n + 1)

theorem P13233482705594905145.correct : P13233482705594905145.Spec := by
  intro n
  simp only [A085465, Nat.add_sub_cancel]

end A085465

/-! ## A085465.P9339351062617797778

`A006003(n+1)*A006003(n+2)/5`
-/

namespace A085465.P9339351062617797778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006003 (n + 1) * A006003 (n + 2) : ℚ) / 5

end

end A085465.P9339351062617797778

namespace A085465

/-- `A006003(n+1)*A006003(n+2)/5` -/
def P9339351062617797778.Spec : Prop :=
  ∀ n, P9339351062617797778.a n = (A085465 (n + 1) : ℚ)

end A085465

/-! ## A085465.P5466223400172118702

`∑[∑[12*C(∑[n]+1, 2)+1]]`
-/

namespace A085465.P5466223400172118702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j + 1) 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085465.P5466223400172118702

namespace A085465

/-- `∑[∑[12*C(∑[n]+1, 2)+1]]` -/
def P5466223400172118702.Spec : Prop :=
  ∀ n, (P5466223400172118702.a n : ℤ) = A085465 (n + 1)

end A085465

/-! ## A085465.P3494446467324893840

`∑[∑[A143008(n)]]`
-/

namespace A085465.P3494446467324893840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085465.P3494446467324893840

namespace A085465

/-- `∑[∑[A143008(n)]]` -/
def P3494446467324893840.Spec : Prop :=
  ∀ n, P3494446467324893840.a n = A085465 (n + 1)

end A085465

/-! ## A085465.P551341678982780948

`A250015(n+1)/20`
-/

namespace A085465.P551341678982780948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250015 (n + 1) : ℚ) / 20

end

end A085465.P551341678982780948

namespace A085465

/-- `A250015(n+1)/20` -/
def P551341678982780948.Spec : Prop :=
  ∀ n, P551341678982780948.a n = (A085465 (n + 1) : ℚ)

theorem P551341678982780948.correct : P551341678982780948.Spec := by
  intro n
  simp only [A085465, Nat.add_sub_cancel, A085465.P551341678982780948.a, A085465.P13233482705594905145.a, A250015, A250015.P9062117842649995520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085465

/-! ## A085465.P28444421519287738

`A202785(n)+a(n-1)` with `a(0)=1`
-/

namespace A085465.P28444421519287738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A202785 n + a (n - 1)

end

end A085465.P28444421519287738

namespace A085465

/-- `A202785(n)+a(n-1)` -/
def P28444421519287738.Spec : Prop :=
  ∀ n, P28444421519287738.a n = A085465 (n + 1)

end A085465

/-! ## A085465.P18297855439293562785

`∑[∑[∑[20*A008530(n)]]]/20`
-/

namespace A085465.P18297855439293562785
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A008530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 20

end

end A085465.P18297855439293562785

namespace A085465

/-- `∑[∑[∑[20*A008530(n)]]]/20` -/
def P18297855439293562785.Spec : Prop :=
  ∀ n, P18297855439293562785.a n = (A085465 (n + 1) : ℚ)

end A085465

/-! ## A085465.P4360689080209441801

`∑[A202785(n+1)]+1-A202785(n+1)`
-/

namespace A085465.P4360689080209441801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A202785 (n + 1))

end

end A085465.P4360689080209441801

namespace A085465

/-- `∑[A202785(n+1)]+1-A202785(n+1)` -/
def P4360689080209441801.Spec : Prop :=
  ∀ n, P4360689080209441801.a n = A085465 (n + 1)

end A085465

/-! ## A085465.P10036306518023551752

`2*A083200(n+2)-A085464(n+1)`
-/

namespace A085465.P10036306518023551752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083200 (n + 2) - A085464 (n + 1)

end

end A085465.P10036306518023551752

namespace A085465

/-- `2*A083200(n+2)-A085464(n+1)` -/
def P10036306518023551752.Spec : Prop :=
  ∀ n, P10036306518023551752.a n = A085465 (n + 1)

end A085465

/-! ## A085465.P15833975365553530137

`A048395(∑[n+1])/5`
-/

namespace A085465.P15833975365553530137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048395 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A085465.P15833975365553530137

namespace A085465

/-- `A048395(∑[n+1])/5` -/
def P15833975365553530137.Spec : Prop :=
  ∀ n, P15833975365553530137.a n = (A085465 (n + 1) : ℚ)

end A085465

/-!
# A085466: a(n) is the denominator of the polynomial in e^2 giving the (2n)-th du Bois Reymond constant.

The programs for A085466, there is no canonical definition to state claims against.
-/

/-! ## A085466.P1394886836340533799

`lcm(A004171(n), A343206(n))`
-/

namespace A085466.P1394886836340533799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004171 n) (A343206 n)

end

end A085466.P1394886836340533799

/-! ## A085466.P4815903477760994946

`Δ[A007583(n)]*A248592(n+1)`
-/

namespace A085466.P4815903477760994946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A248592 (n + 1)

end

end A085466.P4815903477760994946

/-! ## A085466.P11782805148414561006

`2*A248592(n+1)*A000079(n)²`
-/

namespace A085466.P11782805148414561006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248592 (n + 1) * A000079 n ^ 2

end

end A085466.P11782805148414561006

/-! ## A085466.P13196992022006760138

`2*lcm(A000079(n)², A092043(n+1))`
-/

namespace A085466.P13196992022006760138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A000079 n ^ 2) (A092043 (n + 1))

end

end A085466.P13196992022006760138

/-! ## A085466.P12878074273439063941

`A000079(A005408(n))*A248592(n+1)`
-/

namespace A085466.P12878074273439063941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005408 n).toNat * A248592 (n + 1)

end

end A085466.P12878074273439063941

/-!
# A085468: Odd numbers m such that there is at least one k dividing (m-1)!-1 (m <= k <= 2*m).

The programs for A085468, there is no canonical definition to state claims against.
-/

/-! ## A085468.P9420320766603015392

`∩[2*n+1, A085477(n+1)]`
-/

namespace A085468.P9420320766603015392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085468.P9420320766603015392

/-! ## A085468.P1958456093829849642

`record[A093178(A085477(n+1))]`
-/

namespace A085468.P1958456093829849642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A085477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085468.P1958456093829849642

/-! ## A085468.P6200953708361547718

`∩[A085477(n+1), A004273(n)]`
-/

namespace A085468.P6200953708361547718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085468.P6200953708361547718

/-! ## A085468.P11896034497984085721

`∩[A085477(n+1), A060747(n)]`
-/

namespace A085468.P11896034497984085721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085468.P11896034497984085721

/-! ## A085468.P7358837983642713212

`filter[A085477(n+1), A000035(#)]`
-/

namespace A085468.P7358837983642713212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A085468.P7358837983642713212

/-!
# A085473: a(n) = 6*n^2 + 3*n + 1.

The programs for A085473, the canonical program `A085473.P10681717492594671342` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085473 has offset 0).

The definition of A085473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+3*n+1` (program `A085473.P10681717492594671342`, by `A085473.P10681717492594671342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085473.P10681717492594671342

`6*n²+3*n+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085473

/-- `6*n²+3*n+1` -/
def P10681717492594671342.Spec : Prop :=
  ∀ n, (P10681717492594671342.a n : ℤ) = A085473 n

theorem P10681717492594671342.correct : P10681717492594671342.Spec := by
  intro n
  simp only [A085473]

end A085473

/-! ## A085473.P8003708641728089844

`∑[a(n-1)+12]` with `a(0)=1, a(1)=9`
-/

namespace A085473.P8003708641728089844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085473.P8003708641728089844

namespace A085473

/-- `∑[a(n-1)+12]` -/
def P8003708641728089844.Spec : Prop :=
  ∀ n, (P8003708641728089844.a n : ℤ) = A085473 n

end A085473

/-! ## A085473.P7587332896244333182

`∑[ogf((1+7x+4x^2)/(1-2x+x^2))]`
-/

namespace A085473.P7587332896244333182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085473.P7587332896244333182

namespace A085473

/-- `∑[ogf((1+7x+4x^2)/(1-2x+x^2))]` -/
def P7587332896244333182.Spec : Prop :=
  ∀ n, P7587332896244333182.a n = A085473 n

end A085473

/-! ## A085473.P16261277712848225610

`ogf((1+7x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A085473.P16261277712848225610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 4] [1, -3, 3, -1] n

end

end A085473.P16261277712848225610

namespace A085473

/-- `ogf((1+7x+4x^2)/(1-3x+3x^2-x^3))` -/
def P16261277712848225610.Spec : Prop :=
  ∀ n, P16261277712848225610.a n = A085473 n

end A085473

/-! ## A085473.P11763732880120897191

`(C(6*n+2, 2)+2)/3`
-/

namespace A085473.P11763732880120897191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n + 2) 2 + 2 : ℚ) / 3

end

end A085473.P11763732880120897191

namespace A085473

/-- `(C(6*n+2, 2)+2)/3` -/
def P11763732880120897191.Spec : Prop :=
  ∀ n, P11763732880120897191.a n = (A085473 n : ℚ)

theorem P11763732880120897191.correct : P11763732880120897191.Spec := by
  intro n
  simp only [A085473, Nat.add_sub_cancel, A085473.P11763732880120897191.a, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085473

/-! ## A085473.P17835394761734474563

`ceil((2*n+1)/acot(3*n))`
-/

namespace A085473.P17835394761734474563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (3 * n : ℝ)⌉

end

end A085473.P17835394761734474563

namespace A085473

/-- `ceil((2*n+1)/acot(3*n))` -/
def P17835394761734474563.Spec : Prop :=
  ∀ n, P17835394761734474563.a n = A085473 n

end A085473

/-! ## A085473.P13734329852958196359

`record[(n+1)²-lcm(n, n+3)]`
-/

namespace A085473.P13734329852958196359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.lcm n (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085473.P13734329852958196359

namespace A085473

/-- `record[(n+1)²-lcm(n, n+3)]` -/
def P13734329852958196359.Spec : Prop :=
  ∀ n, P13734329852958196359.a n = A085473 n

end A085473

/-! ## A085473.P3459209087620253921

`abs(3-(a(n-1)+12*n))` with `a(0)=1`
-/

namespace A085473.P3459209087620253921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |3 - (a (n - 1) + (12 * n : ℤ))|

end

end A085473.P3459209087620253921

namespace A085473

/-- `abs(3-(a(n-1)+12*n))` -/
def P3459209087620253921.Spec : Prop :=
  ∀ n, P3459209087620253921.a n = A085473 n

end A085473

/-! ## A085473.P7854941134577020111

`record[(3*C(n, 2)+1)^(n%2)]`
-/

namespace A085473.P7854941134577020111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 2 + 1) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085473.P7854941134577020111

namespace A085473

/-- `record[(3*C(n, 2)+1)^(n%2)]` -/
def P7854941134577020111.Spec : Prop :=
  ∀ n, (P7854941134577020111.a n : ℤ) = A085473 n

end A085473

/-! ## A085473.P12050363476473414138

`Δ[(4*n+1)*C(n, 2)+n]`
-/

namespace A085473.P12050363476473414138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A085473.P12050363476473414138

namespace A085473

/-- `Δ[(4*n+1)*C(n, 2)+n]` -/
def P12050363476473414138.Spec : Prop :=
  ∀ n, P12050363476473414138.a n = A085473 n

theorem P12050363476473414138.correct : P12050363476473414138.Spec := by
  intro n
  simp only [A085473, Nat.add_sub_cancel, A085473.P12050363476473414138.f1, A085473.P12050363476473414138.a, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085473

/-! ## A085473.P7507306766123374011

`abs(2-3*(C(2*n+1, 2)+1))`
-/

namespace A085473.P7507306766123374011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (3 * (Nat.choose (2 * n + 1) 2 + 1) : ℤ)|

end

end A085473.P7507306766123374011

namespace A085473

/-- `abs(2-3*(C(2*n+1, 2)+1))` -/
def P7507306766123374011.Spec : Prop :=
  ∀ n, P7507306766123374011.a n = A085473 n

end A085473

/-! ## A085473.P11333603016290114002

`floor(a(n-1)-3*(1-4*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A085473.P11333603016290114002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 3 * (1 - (4 * n : ℤ))

end

end A085473.P11333603016290114002

namespace A085473

/-- `floor(a(n-1)-3*(1-4*n))` -/
def P11333603016290114002.Spec : Prop :=
  ∀ n, P11333603016290114002.a n = A085473 n

theorem P11333603016290114002.correct : P11333603016290114002.Spec := by
  intro n
  induction n with
  | zero => simp [A085473, A085473.P11333603016290114002.a, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A085473, Nat.add_sub_cancel, A085473.P11333603016290114002.a, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A085473

/-! ## A085473.P8385565462764844314

`abs(lcm(2*n+1, 2*n+1+n)-2*n)`
-/

namespace A085473.P8385565462764844314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (2 * n + 1 + n) : ℤ) - (2 * n : ℤ)|

end

end A085473.P8385565462764844314

namespace A085473

/-- `abs(lcm(2*n+1, 2*n+1+n)-2*n)` -/
def P8385565462764844314.Spec : Prop :=
  ∀ n, P8385565462764844314.a n = A085473 n

end A085473

/-! ## A085473.P11661328958740077701

`ceil(sqrt(A027628(n)))`
-/

namespace A085473.P11661328958740077701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027628 n : ℝ)⌉

end

end A085473.P11661328958740077701

namespace A085473

/-- `ceil(sqrt(A027628(n)))` -/
def P11661328958740077701.Spec : Prop :=
  ∀ n, P11661328958740077701.a n = A085473 n

end A085473

/-! ## A085473.P12399852218366238084

`(A272399(n+1)+2)/3`
-/

namespace A085473.P12399852218366238084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272399 (n + 1) + 2 : ℚ) / 3

end

end A085473.P12399852218366238084

namespace A085473

/-- `(A272399(n+1)+2)/3` -/
def P12399852218366238084.Spec : Prop :=
  ∀ n, P12399852218366238084.a n = (A085473 n : ℚ)

theorem P12399852218366238084.correct : P12399852218366238084.Spec := by
  intro n
  simp only [A085473, Nat.add_sub_cancel, A085473.P12399852218366238084.a, A085473.P10681717492594671342.a, A272399, A272399.P2318681285467334701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085473

/-! ## A085473.P10386913263451922371

`A169711(n+1)/(n+1)`
-/

namespace A085473.P10386913263451922371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169711 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A085473.P10386913263451922371

namespace A085473

/-- `A169711(n+1)/(n+1)` -/
def P10386913263451922371.Spec : Prop :=
  ∀ n, P10386913263451922371.a n = (A085473 n : ℚ)

theorem P10386913263451922371.correct : P10386913263451922371.Spec := by
  intro n
  simp only [A085473, Nat.add_sub_cancel, A085473.P10386913263451922371.a, A085473.P10681717492594671342.a, A169711, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085473

/-! ## A085473.P4493591328315506566

`∑[A160912(n+1)+2*n]`
-/

namespace A085473.P4493591328315506566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085473.P4493591328315506566

namespace A085473

/-- `∑[A160912(n+1)+2*n]` -/
def P4493591328315506566.Spec : Prop :=
  ∀ n, P4493591328315506566.a n = A085473 n

end A085473

/-! ## A085473.P2186251118446805418

`abs(n-(n*A016957(n)+1))`
-/

namespace A085473.P2186251118446805418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ((n : ℤ) * A016957 n + 1)|

end

end A085473.P2186251118446805418

namespace A085473

/-- `abs(n-(n*A016957(n)+1))` -/
def P2186251118446805418.Spec : Prop :=
  ∀ n, P2186251118446805418.a n = A085473 n

end A085473

/-! ## A085473.P10498369858629083813

`ceil((2*n*A016945(n)+1)/2)`
-/

namespace A085473.P10498369858629083813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((n : ℤ) * A016945 n) + 1 : ℚ) / 2⌉

end

end A085473.P10498369858629083813

namespace A085473

/-- `ceil((2*n*A016945(n)+1)/2)` -/
def P10498369858629083813.Spec : Prop :=
  ∀ n, P10498369858629083813.a n = A085473 n

end A085473

/-! ## A085473.P10926887082994506062

`A079588(n)%A108099(n)`
-/

namespace A085473.P10926887082994506062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079588 n) (A108099 n)

end

end A085473.P10926887082994506062

namespace A085473

/-- `A079588(n)%A108099(n)` -/
def P10926887082994506062.Spec : Prop :=
  ∀ n, P10926887082994506062.a n = A085473 n

end A085473

/-!
# A085474: a(n) = binomial(2*n+4,4) - binomial(2*n,4).

The programs for A085474, the canonical program `A085474.P13009969362069391226` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085474 has offset 0).

The definition of A085474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+4, 4)-C(2*n, 4)` (program `A085474.P13009969362069391226`, by `A085474.P13009969362069391226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085474.P13009969362069391226

`C(2*n+4, 4)-C(2*n, 4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085474

/-- `C(2*n+4, 4)-C(2*n, 4)` -/
def P13009969362069391226.Spec : Prop :=
  ∀ n, P13009969362069391226.a n = A085474 n

theorem P13009969362069391226.correct : P13009969362069391226.Spec := by
  intro n
  simp only [A085474]

end A085474

/-! ## A085474.P1933973139555466322

`(16*n^3+12*n²+14*n+3)/3`
-/

namespace A085474.P1933973139555466322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * n ^ 3 + 12 * n ^ 2 + 14 * n + 3 : ℚ) / 3

end

end A085474.P1933973139555466322

namespace A085474

/-- `(16*n^3+12*n²+14*n+3)/3` -/
def P1933973139555466322.Spec : Prop :=
  ∀ n, P1933973139555466322.a n = (A085474 n : ℚ)

theorem P1933973139555466322.correct : P1933973139555466322.Spec := by
  intro n
  simp only [A085474, Nat.add_sub_cancel, A085474.P1933973139555466322.a, A085474.P13009969362069391226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085474

/-! ## A085474.P6169684819628151128

`Δ[n^4]+C(2*n, 3)`
-/

namespace A085474.P6169684819628151128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (2 * n) 3 : ℤ)

end

end A085474.P6169684819628151128

namespace A085474

/-- `Δ[n^4]+C(2*n, 3)` -/
def P6169684819628151128.Spec : Prop :=
  ∀ n, P6169684819628151128.a n = A085474 n

theorem P6169684819628151128.correct : P6169684819628151128.Spec := by
  intro n
  simp only [A085474, Nat.add_sub_cancel, A085474.P6169684819628151128.f1, A085474.P6169684819628151128.a, A085474.P13009969362069391226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085474

/-! ## A085474.P8937589558473997729

`A063496(n+1)-(2*n)²`
-/

namespace A085474.P8937589558473997729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) - ((2 * n) ^ 2 : ℤ)

end

end A085474.P8937589558473997729

namespace A085474

/-- `A063496(n+1)-(2*n)²` -/
def P8937589558473997729.Spec : Prop :=
  ∀ n, P8937589558473997729.a n = A085474 n

end A085474

/-! ## A085474.P11158445296275354212

`∑[(4*n)²+2]-1-A016742(n)`
-/

namespace A085474.P11158445296275354212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A016742 n

end

end A085474.P11158445296275354212

namespace A085474

/-- `∑[(4*n)²+2]-1-A016742(n)` -/
def P11158445296275354212.Spec : Prop :=
  ∀ n, P11158445296275354212.a n = A085474 n

end A085474

/-! ## A085474.P12757460445211848019

`A051673(n)+A005915(n)`
-/

namespace A085474.P12757460445211848019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 n + A005915 n

end

end A085474.P12757460445211848019

namespace A085474

/-- `A051673(n)+A005915(n)` -/
def P12757460445211848019.Spec : Prop :=
  ∀ n, P12757460445211848019.a n = A085474 n

end A085474

/-! ## A085474.P15358968127017790355

`A137931(n)+A001844(n)`
-/

namespace A085474.P15358968127017790355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137931 n + A001844 n

end

end A085474.P15358968127017790355

namespace A085474

/-- `A137931(n)+A001844(n)` -/
def P15358968127017790355.Spec : Prop :=
  ∀ n, P15358968127017790355.a n = A085474 n

end A085474

/-! ## A085474.P1552292200474510931

`A299646(n)+A005945(n)`
-/

namespace A085474.P1552292200474510931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n + A005945 n

end

end A085474.P1552292200474510931

namespace A085474

/-- `A299646(n)+A005945(n)` -/
def P1552292200474510931.Spec : Prop :=
  ∀ n, P1552292200474510931.a n = A085474 n

end A085474

/-! ## A085474.P13562017444962698901

`A273316(n)+A061804(n)`
-/

namespace A085474.P13562017444962698901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n + A061804 n

end

end A085474.P13562017444962698901

namespace A085474

/-- `A273316(n)+A061804(n)` -/
def P13562017444962698901.Spec : Prop :=
  ∀ n, P13562017444962698901.a n = A085474 n

end A085474

/-! ## A085474.P9866053128178376359

`A258617(n)+A161703(n)`
-/

namespace A085474.P9866053128178376359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258617 n + A161703 n

end

end A085474.P9866053128178376359

namespace A085474

/-- `A258617(n)+A161703(n)` -/
def P9866053128178376359.Spec : Prop :=
  ∀ n, P9866053128178376359.a n = A085474 n

end A085474

/-! ## A085474.P11667379657779712887

`A300758(n)+A161712(n)`
-/

namespace A085474.P11667379657779712887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A161712 n

end

end A085474.P11667379657779712887

namespace A085474

/-- `A300758(n)+A161712(n)` -/
def P11667379657779712887.Spec : Prop :=
  ∀ n, P11667379657779712887.a n = A085474 n

end A085474

/-! ## A085474.P11819948247670818917

`A114254(n)-A202804(n)`
-/

namespace A085474.P11819948247670818917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n - A202804 n

end

end A085474.P11819948247670818917

namespace A085474

/-- `A114254(n)-A202804(n)` -/
def P11819948247670818917.Spec : Prop :=
  ∀ n, P11819948247670818917.a n = A085474 n

end A085474

/-! ## A085474.P5121685331193213717

`A034720(n+1)+A015238(n)`
-/

namespace A085474.P5121685331193213717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) + A015238 n

end

end A085474.P5121685331193213717

namespace A085474

/-- `A034720(n+1)+A015238(n)` -/
def P5121685331193213717.Spec : Prop :=
  ∀ n, P5121685331193213717.a n = A085474 n

end A085474

/-! ## A085474.P14194688444641470846

`A100174(n+1)+A059722(n)`
-/

namespace A085474.P14194688444641470846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + A059722 n

end

end A085474.P14194688444641470846

namespace A085474

/-- `A100174(n+1)+A059722(n)` -/
def P14194688444641470846.Spec : Prop :=
  ∀ n, P14194688444641470846.a n = A085474 n

end A085474

/-! ## A085474.P16204471765949058721

`A024381(n+1)-A139276(n)`
-/

namespace A085474.P16204471765949058721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024381 (n + 1) - A139276 n

end

end A085474.P16204471765949058721

namespace A085474

/-- `A024381(n+1)-A139276(n)` -/
def P16204471765949058721.Spec : Prop :=
  ∀ n, P16204471765949058721.a n = A085474 n

end A085474

/-! ## A085474.P1528017127944072170

`A057813(n)+A171272(n)-1`
-/

namespace A085474.P1528017127944072170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n + (A171272 n - 1)

end

end A085474.P1528017127944072170

namespace A085474

/-- `A057813(n)+A171272(n)-1` -/
def P1528017127944072170.Spec : Prop :=
  ∀ n, P1528017127944072170.a n = A085474 n

end A085474

/-! ## A085474.P14738455977691848475

`A213839(n+1)-A033429(n)`
-/

namespace A085474.P14738455977691848475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) - A033429 n

end

end A085474.P14738455977691848475

namespace A085474

/-- `A213839(n+1)-A033429(n)` -/
def P14738455977691848475.Spec : Prop :=
  ∀ n, P14738455977691848475.a n = A085474 n

end A085474

/-! ## A085474.P14626905018402394466

`A200431(n+1)-A140811(n)`
-/

namespace A085474.P14626905018402394466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) - A140811 n

end

end A085474.P14626905018402394466

namespace A085474

/-- `A200431(n+1)-A140811(n)` -/
def P14626905018402394466.Spec : Prop :=
  ∀ n, P14626905018402394466.a n = A085474 n

end A085474

/-! ## A085474.P13293923266181738801

`A016813(n)+2*A258582(n)`
-/

namespace A085474.P13293923266181738801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 2 * A258582 n

end

end A085474.P13293923266181738801

namespace A085474

/-- `A016813(n)+2*A258582(n)` -/
def P13293923266181738801.Spec : Prop :=
  ∀ n, P13293923266181738801.a n = A085474 n

end A085474

/-! ## A085474.P18081412904461841976

`A005902(n)+A015237(n)+n`
-/

namespace A085474.P18081412904461841976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + (A015237 n + (n : ℤ))

end

end A085474.P18081412904461841976

namespace A085474

/-- `A005902(n)+A015237(n)+n` -/
def P18081412904461841976.Spec : Prop :=
  ∀ n, P18081412904461841976.a n = A085474 n

end A085474

/-!
# A085475: Square array read by antidiagonals: T(n,k) = binomial(2*n+k, k) - binomial(2*n, k).

The programs for A085475, the canonical program `A085475.P15127605243071687092` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085475 has offset 0).

The definition of A085475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085475.P15127605243071687092

`A085478(n)-A116088(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085475

/-- `A085478(n)-A116088(n)` -/
def P15127605243071687092.Spec : Prop :=
  ∀ n, P15127605243071687092.a n = A085475 n

theorem P15127605243071687092.correct : P15127605243071687092.Spec := by
  intro n
  simp only [A085475]

end A085475

/-! ## A085475.P15241917707747855670

`A085478(n)-abs(A109970(n))`
-/

namespace A085475.P15241917707747855670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - |A109970 n|

end

end A085475.P15241917707747855670

namespace A085475

/-- `A085478(n)-abs(A109970(n))` -/
def P15241917707747855670.Spec : Prop :=
  ∀ n, P15241917707747855670.a n = A085475 n

end A085475

/-! ## A085475.P14759614889152051630

`abs(A109970(n)-A129818(n))`
-/

namespace A085475.P14759614889152051630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109970 n - A129818 n|

end

end A085475.P14759614889152051630

namespace A085475

/-- `abs(A109970(n)-A129818(n))` -/
def P14759614889152051630.Spec : Prop :=
  ∀ n, P14759614889152051630.a n = A085475 n

end A085475

/-! ## A085475.P9400754518745612233

`abs(A129818(n))-A116088(n)`
-/

namespace A085475.P9400754518745612233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 n| - A116088 n

end

end A085475.P9400754518745612233

namespace A085475

/-- `abs(A129818(n))-A116088(n)` -/
def P9400754518745612233.Spec : Prop :=
  ∀ n, P9400754518745612233.a n = A085475 n

end A085475

/-! ## A085475.P9486755043600132179

`A054142(A061579(n))-A116088(n)`
-/

namespace A085475.P9486755043600132179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A061579 n).toNat - A116088 n

end

end A085475.P9486755043600132179

namespace A085475

/-- `A054142(A061579(n))-A116088(n)` -/
def P9486755043600132179.Spec : Prop :=
  ∀ n, P9486755043600132179.a n = A085475 n

end A085475

/-! ## A085475.P9556268614193448940

`sqrt((A109970(n)-A129818(n))^A020639(2*(n+1)))`
-/

namespace A085475.P9556268614193448940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A109970 n - A129818 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A085475.P9556268614193448940

namespace A085475

/-- `sqrt((A109970(n)-A129818(n))^A020639(2*(n+1)))` -/
def P9556268614193448940.Spec : Prop :=
  ∀ n, P9556268614193448940.a n = (A085475 n : ℝ)

end A085475

/-! ## A085475.P10881501241523115090

`A085478(n)-∑{d}[A109970(n), A000010(#)]`
-/

namespace A085475.P10881501241523115090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085475.P10881501241523115090

namespace A085475

/-- `A085478(n)-∑{d}[A109970(n), A000010(#)]` -/
def P10881501241523115090.Spec : Prop :=
  ∀ n, P10881501241523115090.a n = A085475 n

end A085475

/-!
# A085476: Periodic Pascal array, read by upward antidiagonals.

The programs for A085476, the canonical program `A085476.P10158605893369981195` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085476 has offset 0).

The definition of A085476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085476.P1299565944467934247

`C(A025581(n), A051777(n+1))`
-/

namespace A085476.P1299565944467934247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A051777 (n + 1)).toNat

end

end A085476.P1299565944467934247

namespace A085476

/-- `C(A025581(n), A051777(n+1))` -/
def P1299565944467934247.Spec : Prop :=
  ∀ n, (P1299565944467934247.a n : ℤ) = A085476 n

end A085476

/-! ## A085476.P2456855985260437739

`C(A004736(n+1)-1, A051777(n+1))`
-/

namespace A085476.P2456855985260437739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) - 1).toNat (A051777 (n + 1)).toNat

end

end A085476.P2456855985260437739

namespace A085476

/-- `C(A004736(n+1)-1, A051777(n+1))` -/
def P2456855985260437739.Spec : Prop :=
  ∀ n, (P2456855985260437739.a n : ℤ) = A085476 n

end A085476

/-! ## A085476.P11252597200121882550

`C(A025581(n), A048158(A038722(n+1)))`
-/

namespace A085476.P11252597200121882550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A048158 (A038722 (n + 1)).toNat).toNat

end

end A085476.P11252597200121882550

namespace A085476

/-- `C(A025581(n), A048158(A038722(n+1)))` -/
def P11252597200121882550.Spec : Prop :=
  ∀ n, (P11252597200121882550.a n : ℤ) = A085476 n

end A085476

/-! ## A085476.P7945406957329398946

`C(A004736(A122797(n+1)), A051777(n+1))`
-/

namespace A085476.P7945406957329398946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (A122797 (n + 1)).toNat).toNat (A051777 (n + 1)).toNat

end

end A085476.P7945406957329398946

namespace A085476

/-- `C(A004736(A122797(n+1)), A051777(n+1))` -/
def P7945406957329398946.Spec : Prop :=
  ∀ n, (P7945406957329398946.a n : ℤ) = A085476 n

end A085476

/-! ## A085476.P10158605893369981195

`C(A025581(n), A002262(n)%A004736(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085476

/-- `C(A025581(n), A002262(n)%A004736(n+1))` -/
def P10158605893369981195.Spec : Prop :=
  ∀ n, (P10158605893369981195.a n : ℤ) = A085476 n

theorem P10158605893369981195.correct : P10158605893369981195.Spec := by
  intro n
  simp only [A085476]

end A085476

/-! ## A085476.P10739259687055631064

`C(A002262(A061579(n)), A051777(n+1))`
-/

namespace A085476.P10739259687055631064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A061579 n).toNat).toNat (A051777 (n + 1)).toNat

end

end A085476.P10739259687055631064

namespace A085476

/-- `C(A002262(A061579(n)), A051777(n+1))` -/
def P10739259687055631064.Spec : Prop :=
  ∀ n, (P10739259687055631064.a n : ℤ) = A085476 n

end A085476

/-!
# A085477: Numbers m such that there is at least one k dividing (m-1)!-1 (m<=k<=2m).

The programs for A085477, there is no canonical definition to state claims against.
-/

/-! ## A085477.P17980535247326187074

`eq[2, A077066(A305534(n+1))]`
-/

namespace A085477.P17980535247326187074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (A305534 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085477.P17980535247326187074

/-! ## A085477.P15243752514967837615

`lt[A329365(n+1), A329373(A329396(n+3))]`
-/

namespace A085477.P15243752514967837615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329373 (A329396 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085477.P15243752514967837615

/-! ## A085477.P6414845149079724864

`lt[A130859(A130827(2*n+1)), A130858(3*n+4)]`
-/

namespace A085477.P6414845149079724864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130859 (A130827 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130858 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085477.P6414845149079724864

/-! ## A085477.P7551443692155755979

`record[A000010(2*n+1)-A326683(n)]`
-/

namespace A085477.P7551443692155755979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - A326683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085477.P7551443692155755979

/-! ## A085477.P2913404163922398760

`record[A000040(n+1)-A147112(n+1)]`
-/

namespace A085477.P2913404163922398760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A147112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085477.P2913404163922398760

/-!
# A085478: Triangle read by rows: T(n, k) = binomial(n + k, 2*k).

The programs for A085478, the canonical program `A085478.P12258921806039720689` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085478 has offset 0).

The definition of A085478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085478.P15663248593175821451

`abs(A123970(n))`
-/

namespace A085478.P15663248593175821451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123970 n|

end

end A085478.P15663248593175821451

namespace A085478

/-- `abs(A123970(n))` -/
def P15663248593175821451.Spec : Prop :=
  ∀ n, P15663248593175821451.a n = A085478 n

end A085478

/-! ## A085478.P17470408347396148577

`abs(A129818(n))`
-/

namespace A085478.P17470408347396148577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 n|

end

end A085478.P17470408347396148577

namespace A085478

/-- `abs(A129818(n))` -/
def P17470408347396148577.Spec : Prop :=
  ∀ n, P17470408347396148577.a n = A085478 n

end A085478

/-! ## A085478.P12258921806039720689

`abs(A076756(A061579(n)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085478

/-- `abs(A076756(A061579(n)))` -/
def P12258921806039720689.Spec : Prop :=
  ∀ n, P12258921806039720689.a n = A085478 n

theorem P12258921806039720689.correct : P12258921806039720689.Spec := by
  intro n
  simp only [A085478]

end A085478

/-! ## A085478.P17122403691167291284

`A258993(A122797(n+1))`
-/

namespace A085478.P17122403691167291284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (A122797 (n + 1)).toNat

end

end A085478.P17122403691167291284

namespace A085478

/-- `A258993(A122797(n+1))` -/
def P17122403691167291284.Spec : Prop :=
  ∀ n, P17122403691167291284.a n = A085478 n

end A085478

/-! ## A085478.P15437767191710685772

`A116088(n)+A085475(n)`
-/

namespace A085478.P15437767191710685772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116088 n + A085475 n

end

end A085478.P15437767191710685772

namespace A085478

/-- `A116088(n)+A085475(n)` -/
def P15437767191710685772.Spec : Prop :=
  ∀ n, P15437767191710685772.a n = A085478 n

theorem P15437767191710685772.correct : P15437767191710685772.Spec := by
  intro n
  simp only [A085478, Nat.add_sub_cancel, A085478.P15437767191710685772.a, A085478.P12258921806039720689.a, A061579, A061579.P7462537595056690109.a, A076756, A076756.P16032784192735833623.a, A085475, A085475.P15127605243071687092.a, A116088, A116088.P545449340874699905.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A033999, A033999.P17703899380244199787.a, A054142, A054142.P6369338685803904687.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A085478

/-! ## A085478.P3935069223348066432

`A097807(n)*A129818(n)`
-/

namespace A085478.P3935069223348066432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A129818 n

end

end A085478.P3935069223348066432

namespace A085478

/-- `A097807(n)*A129818(n)` -/
def P3935069223348066432.Spec : Prop :=
  ∀ n, P3935069223348066432.a n = A085478 n

end A085478

/-! ## A085478.P1147356866449368737

`A123519(n)/A059268(n)`
-/

namespace A085478.P1147356866449368737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n : ℚ) / (A059268 n : ℚ)

end

end A085478.P1147356866449368737

namespace A085478

/-- `A123519(n)/A059268(n)` -/
def P1147356866449368737.Spec : Prop :=
  ∀ n, P1147356866449368737.a n = (A085478 n : ℚ)

end A085478

/-! ## A085478.P3069813491025748153

`A114192(n)/A130321(n)`
-/

namespace A085478.P3069813491025748153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114192 n : ℚ) / (A130321 n : ℚ)

end

end A085478.P3069813491025748153

namespace A085478

/-- `A114192(n)/A130321(n)` -/
def P3069813491025748153.Spec : Prop :=
  ∀ n, P3069813491025748153.a n = (A085478 n : ℚ)

end A085478

/-! ## A085478.P275610914841576233

`A211955(n)/A232089(n)`
-/

namespace A085478.P275610914841576233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211955 n : ℚ) / (A232089 n : ℚ)

end

end A085478.P275610914841576233

namespace A085478

/-- `A211955(n)/A232089(n)` -/
def P275610914841576233.Spec : Prop :=
  ∀ n, P275610914841576233.a n = (A085478 n : ℚ)

end A085478

/-! ## A085478.P6008776983732902757

`gcd(A000038(n), A123970(n))`
-/

namespace A085478.P6008776983732902757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123970 n)

end

end A085478.P6008776983732902757

namespace A085478

/-- `gcd(A000038(n), A123970(n))` -/
def P6008776983732902757.Spec : Prop :=
  ∀ n, (P6008776983732902757.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P7870014092590684371

`gcd(A010816(n), A129818(n))`
-/

namespace A085478.P7870014092590684371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A129818 n)

end

end A085478.P7870014092590684371

namespace A085478

/-- `gcd(A010816(n), A129818(n))` -/
def P7870014092590684371.Spec : Prop :=
  ∀ n, (P7870014092590684371.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P10880076696382703170

`lcm(A020985(n), A123970(n))`
-/

namespace A085478.P10880076696382703170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A123970 n)

end

end A085478.P10880076696382703170

namespace A085478

/-- `lcm(A020985(n), A123970(n))` -/
def P10880076696382703170.Spec : Prop :=
  ∀ n, (P10880076696382703170.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P13796317549394611628

`lcm(A033999(n), A129818(n))`
-/

namespace A085478.P13796317549394611628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A129818 n)

end

end A085478.P13796317549394611628

namespace A085478

/-- `lcm(A033999(n), A129818(n))` -/
def P13796317549394611628.Spec : Prop :=
  ∀ n, (P13796317549394611628.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P16579113807570410015

`C(A051162(n), A025581(n))`
-/

namespace A085478.P16579113807570410015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A025581 n).toNat

end

end A085478.P16579113807570410015

namespace A085478

/-- `C(A051162(n), A025581(n))` -/
def P16579113807570410015.Spec : Prop :=
  ∀ n, (P16579113807570410015.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P17802326344403895060

`C(A134478(n), A025581(n))`
-/

namespace A085478.P17802326344403895060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n).toNat (A025581 n).toNat

end

end A085478.P17802326344403895060

namespace A085478

/-- `C(A134478(n), A025581(n))` -/
def P17802326344403895060.Spec : Prop :=
  ∀ n, (P17802326344403895060.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P8273612531481440812

`abs(A076756(A114327(n)+n))`
-/

namespace A085478.P8273612531481440812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076756 (A114327 n + (n : ℤ)).toNat|

end

end A085478.P8273612531481440812

namespace A085478

/-- `abs(A076756(A114327(n)+n))` -/
def P8273612531481440812.Spec : Prop :=
  ∀ n, P8273612531481440812.a n = A085478 n

end A085478

/-! ## A085478.P3015094153878024858

`A156717(n+1)-A054142(n)`
-/

namespace A085478.P3015094153878024858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156717 (n + 1) - A054142 n

end

end A085478.P3015094153878024858

namespace A085478

/-- `A156717(n+1)-A054142(n)` -/
def P3015094153878024858.Spec : Prop :=
  ∀ n, P3015094153878024858.a n = A085478 n

theorem P3015094153878024858.correct : P3015094153878024858.Spec := by
  intro n
  simp only [A085478, Nat.add_sub_cancel, A085478.P3015094153878024858.a, A085478.P12258921806039720689.a, A054142, A054142.P6369338685803904687.a, A061579, A061579.P7462537595056690109.a, A076756, A076756.P16032784192735833623.a, A156717, A156717.P8230165376730895281.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A033999, A033999.P17703899380244199787.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A085478

/-! ## A085478.P15229851915484530330

`2*A078812(n)-A111125(n)`
-/

namespace A085478.P15229851915484530330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078812 n - A111125 n

end

end A085478.P15229851915484530330

namespace A085478

/-- `2*A078812(n)-A111125(n)` -/
def P15229851915484530330.Spec : Prop :=
  ∀ n, P15229851915484530330.a n = A085478 n

theorem P15229851915484530330.correct : P15229851915484530330.Spec := by
  intro n
  simp only [A085478, Nat.add_sub_cancel, A085478.P15229851915484530330.a, A085478.P12258921806039720689.a, A061579, A061579.P7462537595056690109.a, A076756, A076756.P16032784192735833623.a, A078812, A078812.P8860937503474670981.a, A111125, A111125.P15460410316412066346.a, A025581, A025581.P420762180635059694.a, A033999, A033999.P17703899380244199787.a, A051162, A051162.P14261216125704105833.a, A054142, A054142.P6369338685803904687.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A085478

/-! ## A085478.P18181687908407772439

`C(A051162(n), 2*A002262(n))`
-/

namespace A085478.P18181687908407772439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (2 * A002262 n).toNat

end

end A085478.P18181687908407772439

namespace A085478

/-- `C(A051162(n), 2*A002262(n))` -/
def P18181687908407772439.Spec : Prop :=
  ∀ n, (P18181687908407772439.a n : ℤ) = A085478 n

end A085478

/-! ## A085478.P18069170447640239643

`C(A134478(n), 2*A002262(n))`
-/

namespace A085478.P18069170447640239643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n).toNat (2 * A002262 n).toNat

end

end A085478.P18069170447640239643

namespace A085478

/-- `C(A134478(n), 2*A002262(n))` -/
def P18069170447640239643.Spec : Prop :=
  ∀ n, (P18069170447640239643.a n : ℤ) = A085478 n

end A085478

/-!
# A085479: Product of three solutions of the Diophantine equation x^3 - y^3 = z^2.

The programs for A085479, the canonical program `A085479.P2611141790237626875` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085479 has offset 1).

The definition of A085479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085479.P2611141790237626875

`728*(n+1)^7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085479

/-- `728*(n+1)^7` -/
def P2611141790237626875.Spec : Prop :=
  ∀ n, (P2611141790237626875.a n : ℤ) = A085479 (n + 1)

theorem P2611141790237626875.correct : P2611141790237626875.Spec := by
  intro n
  simp only [A085479, Nat.add_sub_cancel]

end A085479

/-! ## A085479.P2903101813858103644

`A016771(n+1)/3-A001015(n+1)`
-/

namespace A085479.P2903101813858103644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016771 (n + 1) : ℚ) / 3 - (A001015 (n + 1) : ℚ)

end

end A085479.P2903101813858103644

namespace A085479

/-- `A016771(n+1)/3-A001015(n+1)` -/
def P2903101813858103644.Spec : Prop :=
  ∀ n, P2903101813858103644.a n = (A085479 (n + 1) : ℚ)

theorem P2903101813858103644.correct : P2903101813858103644.Spec := by
  intro n
  simp only [A085479, Nat.add_sub_cancel, A085479.P2903101813858103644.a, A085479.P2611141790237626875.a, A001015, A001015.P16876498052081657174.a, A016771, A016771.P7538791312467411803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085479

/-!
# A085480: Expansion of 3*x*(1+2*x)/(1-3*x-3*x^2).

The programs for A085480, the canonical program `A085480.P8656273625897962890` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085480 has offset 1).

The definition of A085480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+6x^2)/(1-3x-3x^2))` (program `A085480.P8656273625897962890`, by `A085480.P8656273625897962890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085480.P8656273625897962890

`ogf((3x+6x^2)/(1-3x-3x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085480

/-- `ogf((3x+6x^2)/(1-3x-3x^2))` -/
def P8656273625897962890.Spec : Prop :=
  ∀ n, P8656273625897962890.a n = A085480 (n + 1)

theorem P8656273625897962890.correct : P8656273625897962890.Spec := by
  intro n
  simp only [A085480, Nat.add_sub_cancel]

end A085480

/-! ## A085480.P10273660593716669328

`3*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=3, a(2)=15`
-/

namespace A085480.P10273660593716669328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 15] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2)

end

end A085480.P10273660593716669328

namespace A085480

/-- `3*a(n-1)+3*a(n-2)` -/
def P10273660593716669328.Spec : Prop :=
  ∀ n, (P10273660593716669328.a n : ℤ) = A085480 (n + 1)

end A085480

/-! ## A085480.P11070631115252665443

`3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=3, a(2)=15`
-/

namespace A085480.P11070631115252665443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 15] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A085480.P11070631115252665443

namespace A085480

/-- `3*(a(n-1)+a(n-2))` -/
def P11070631115252665443.Spec : Prop :=
  ∀ n, (P11070631115252665443.a n : ℤ) = A085480 (n + 1)

end A085480

/-! ## A085480.P14476823347075886729

`A172012(n)-A000038(n)`
-/

namespace A085480.P14476823347075886729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 n - A000038 n

end

end A085480.P14476823347075886729

namespace A085480

/-- `A172012(n)-A000038(n)` -/
def P14476823347075886729.Spec : Prop :=
  ∀ n, P14476823347075886729.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P7958450772941356980

`A057427(n)*A172012(n)`
-/

namespace A085480.P7958450772941356980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A172012 n

end

end A085480.P7958450772941356980

namespace A085480

/-- `A057427(n)*A172012(n)` -/
def P7958450772941356980.Spec : Prop :=
  ∀ n, P7958450772941356980.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P6475395472241348650

`and(A057428(n), A172012(n))`
-/

namespace A085480.P6475395472241348650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A172012 n)

end

end A085480.P6475395472241348650

namespace A085480

/-- `and(A057428(n), A172012(n))` -/
def P6475395472241348650.Spec : Prop :=
  ∀ n, P6475395472241348650.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P12297822493580339935

`A106435(n+1)%A108306(n)`
-/

namespace A085480.P12297822493580339935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106435 (n + 1)) (A108306 n)

end

end A085480.P12297822493580339935

namespace A085480

/-- `A106435(n+1)%A108306(n)` -/
def P12297822493580339935.Spec : Prop :=
  ∀ n, P12297822493580339935.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P10443835547478040678

`and(A153881(n+1), A172012(n))`
-/

namespace A085480.P10443835547478040678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A172012 n)

end

end A085480.P10443835547478040678

namespace A085480

/-- `and(A153881(n+1), A172012(n))` -/
def P10443835547478040678.Spec : Prop :=
  ∀ n, P10443835547478040678.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P7412072263765323672

`char[A172002(n+1)]*A172012(n)`
-/

namespace A085480.P7412072263765323672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A172012 n

end

end A085480.P7412072263765323672

namespace A085480

/-- `char[A172002(n+1)]*A172012(n)` -/
def P7412072263765323672.Spec : Prop :=
  ∀ n, P7412072263765323672.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P9266115761097308611

`(3*A030195(n+1))%A108306(n)`
-/

namespace A085480.P9266115761097308611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A030195 (n + 1)) (A108306 n)

end

end A085480.P9266115761097308611

namespace A085480

/-- `(3*A030195(n+1))%A108306(n)` -/
def P9266115761097308611.Spec : Prop :=
  ∀ n, P9266115761097308611.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P7960775474071929685

`A125145(n+1)%A108306(n)`
-/

namespace A085480.P7960775474071929685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125145 (n + 1)) (A108306 n)

end

end A085480.P7960775474071929685

namespace A085480

/-- `A125145(n+1)%A108306(n)` -/
def P7960775474071929685.Spec : Prop :=
  ∀ n, P7960775474071929685.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P2655470788135025055

`A172012(n)%A000302(n)`
-/

namespace A085480.P2655470788135025055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172012 n) (A000302 n)

end

end A085480.P2655470788135025055

namespace A085480

/-- `A172012(n)%A000302(n)` -/
def P2655470788135025055.Spec : Prop :=
  ∀ n, P2655470788135025055.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P2181602283677282018

`and(A024036(n), A172012(n))`
-/

namespace A085480.P2181602283677282018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A172012 n)

end

end A085480.P2181602283677282018

namespace A085480

/-- `and(A024036(n), A172012(n))` -/
def P2181602283677282018.Spec : Prop :=
  ∀ n, P2181602283677282018.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P6394866962949806477

`and(A103454(n), A172012(n))`
-/

namespace A085480.P6394866962949806477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103454 n) (A172012 n)

end

end A085480.P6394866962949806477

namespace A085480

/-- `and(A103454(n), A172012(n))` -/
def P6394866962949806477.Spec : Prop :=
  ∀ n, P6394866962949806477.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P14634337363659729349

`and(A083420(n), A172012(n))`
-/

namespace A085480.P14634337363659729349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A172012 n)

end

end A085480.P14634337363659729349

namespace A085480

/-- `and(A083420(n), A172012(n))` -/
def P14634337363659729349.Spec : Prop :=
  ∀ n, P14634337363659729349.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P3198382120254300349

`and(A172012(n), A267941(n))`
-/

namespace A085480.P3198382120254300349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172012 n) (A267941 n)

end

end A085480.P3198382120254300349

namespace A085480

/-- `and(A172012(n), A267941(n))` -/
def P3198382120254300349.Spec : Prop :=
  ∀ n, P3198382120254300349.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P17189769999259431401

`and(A114569(n), A172012(n))`
-/

namespace A085480.P17189769999259431401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114569 n) (A172012 n)

end

end A085480.P17189769999259431401

namespace A085480

/-- `and(A114569(n), A172012(n))` -/
def P17189769999259431401.Spec : Prop :=
  ∀ n, P17189769999259431401.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P10269944174327354179

`and(A140529(n), A172012(n))`
-/

namespace A085480.P10269944174327354179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140529 n) (A172012 n)

end

end A085480.P10269944174327354179

namespace A085480

/-- `and(A140529(n), A172012(n))` -/
def P10269944174327354179.Spec : Prop :=
  ∀ n, P10269944174327354179.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P7475702795787129419

`and(A156760(n), A172012(n))`
-/

namespace A085480.P7475702795787129419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156760 n) (A172012 n)

end

end A085480.P7475702795787129419

namespace A085480

/-- `and(A156760(n), A172012(n))` -/
def P7475702795787129419.Spec : Prop :=
  ∀ n, P7475702795787129419.a n = A085480 (n + 1)

end A085480

/-! ## A085480.P637703878496444043

`and(A172012(n), A206372(n))`
-/

namespace A085480.P637703878496444043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172012 n) (A206372 n)

end

end A085480.P637703878496444043

namespace A085480

/-- `and(A172012(n), A206372(n))` -/
def P637703878496444043.Spec : Prop :=
  ∀ n, P637703878496444043.a n = A085480 (n + 1)

end A085480

/-!
# A085482: Product of three solutions of the Diophantine equation x^2 - y^2 = z^3.

The programs for A085482, the canonical program `A085482.P12125861187408768371` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085482 has offset 1).

The definition of A085482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085482.P12125861187408768371

`54*(n+1)^8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085482

/-- `54*(n+1)^8` -/
def P12125861187408768371.Spec : Prop :=
  ∀ n, (P12125861187408768371.a n : ℤ) = A085482 (n + 1)

theorem P12125861187408768371.correct : P12125861187408768371.Spec := by
  intro n
  simp only [A085482, Nat.add_sub_cancel]

end A085482

/-! ## A085482.P15127956927308048477

`lcm(2, 54*(n+1)²²²)`
-/

namespace A085482.P15127956927308048477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (54 * (((n + 1) ^ 2) ^ 2) ^ 2)

end

end A085482.P15127956927308048477

namespace A085482

/-- `lcm(2, 54*(n+1)²²²)` -/
def P15127956927308048477.Spec : Prop :=
  ∀ n, (P15127956927308048477.a n : ℤ) = A085482 (n + 1)

end A085482

/-! ## A085482.P10669800345623191056

`∑[54*A022524(n)]`
-/

namespace A085482.P10669800345623191056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A022524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085482.P10669800345623191056

namespace A085482

/-- `∑[54*A022524(n)]` -/
def P10669800345623191056.Spec : Prop :=
  ∀ n, P10669800345623191056.a n = A085482 (n + 1)

end A085482

/-! ## A085482.P15983336630383228896

`Δ[54*A000542(n)]`
-/

namespace A085482.P15983336630383228896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A000542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085482.P15983336630383228896

namespace A085482

/-- `Δ[54*A000542(n)]` -/
def P15983336630383228896.Spec : Prop :=
  ∀ n, P15983336630383228896.a n = A085482 (n + 1)

end A085482

/-! ## A085482.P9418094669627472092

`55*A001016(n+1)-A001016(n+1)`
-/

namespace A085482.P9418094669627472092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  55 * A001016 (n + 1) - A001016 (n + 1)

end

end A085482.P9418094669627472092

namespace A085482

/-- `55*A001016(n+1)-A001016(n+1)` -/
def P9418094669627472092.Spec : Prop :=
  ∀ n, P9418094669627472092.a n = A085482 (n + 1)

theorem P9418094669627472092.correct : P9418094669627472092.Spec := by
  intro n
  simp only [A085482, Nat.add_sub_cancel, A085482.P9418094669627472092.a, A085482.P12125861187408768371.a, A001016, A001016.P10257285112668202493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085482

/-!
# A085483: Triangle read by rows: S_B(n,k) = "Type B" Stirling numbers of the second kind.

The programs for A085483, there is no canonical definition to state claims against.
-/

/-! ## A085483.P8229897699143330159

`A005425(A002260(n+1))*A008277(n+1)`
-/

namespace A085483.P8229897699143330159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A085483.P8229897699143330159

/-! ## A085483.P13799323664404846669

`abs(A005425(A002260(n+1))*A080417(n+1))`
-/

namespace A085483.P13799323664404846669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005425 (A002260 (n + 1)).toNat * A080417 (n + 1)|

end

end A085483.P13799323664404846669

/-! ## A085483.P13989760795803216959

`A005425(A002260(n+1))*A008278(A038722(n+1))`
-/

namespace A085483.P13989760795803216959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A002260 (n + 1)).toNat * A008278 (A038722 (n + 1)).toNat

end

end A085483.P13989760795803216959

/-! ## A085483.P13076855937412163227

`A005425(A002260(n+1))*A048993(A014132(n+1))`
-/

namespace A085483.P13076855937412163227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A002260 (n + 1)).toNat * A048993 (A014132 (n + 1)).toNat

end

end A085483.P13076855937412163227

/-! ## A085483.P16364270809213876668

`A005425(A002262(n)+1)*A048993(A014132(n+1))`
-/

namespace A085483.P16364270809213876668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A002262 n + 1).toNat * A048993 (A014132 (n + 1)).toNat

end

end A085483.P16364270809213876668

/-! ## A085483.P15094625895515023517

`A005425(A002260(n+1))*A285012(A064801(n+1))`
-/

namespace A085483.P15094625895515023517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A002260 (n + 1)).toNat * A285012 (A064801 (n + 1)).toNat

end

end A085483.P15094625895515023517

/-!
# A085484: Symmetric square array, read by antidiagonals: T(k, k) = T(0, k + 1) = Sum_{m = 0..k} C(k, m)*T(m, k - m) for k >= 0; T(0, 0) = 1; T(n, k) = T(n - 1, k) + T(n, k - 1) for n, k >= 1.

The programs for A085484, there is no canonical definition to state claims against.
-/

/-! ## A085484.P10395059463611994970

`ceil(A110141(A219106(n+1))/3)`
-/

namespace A085484.P10395059463611994970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110141 (A219106 (n + 1)).toNat : ℚ) / 3⌉

end

end A085484.P10395059463611994970

/-! ## A085484.P9918953223031270272

`ceil(A110141(A219985(n+1))/3)`
-/

namespace A085484.P9918953223031270272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110141 (A219985 (n + 1)).toNat : ℚ) / 3⌉

end

end A085484.P9918953223031270272

/-! ## A085484.P16093628921522629506

`A005864(A298230(n+1)+A097992(n))`
-/

namespace A085484.P16093628921522629506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005864 (A298230 (n + 1) + A097992 n).toNat

end

end A085484.P16093628921522629506

/-! ## A085484.P2858235705642322651

`gcd(A000045(A034386(n)), A221438(n+1))`
-/

namespace A085484.P2858235705642322651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A034386 n).toNat) (A221438 (n + 1))

end

end A085484.P2858235705642322651

/-! ## A085484.P12842361765435192363

`A000005(floor(A083886(n)/A017449(n))+1)`
-/

namespace A085484.P12842361765435192363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌊(A083886 n : ℚ) / (A017449 n : ℚ)⌋ + 1).toNat

end

end A085484.P12842361765435192363

/-!
# A085485: First row of symmetric square table A085484, in which the main diagonal is equal to the first row shift left.

The programs for A085485, there is no canonical definition to state claims against.
-/

/-! ## A085485.P7866556078307476569

`A085484(∑[n])`
-/

namespace A085485.P7866556078307476569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085485.P7866556078307476569

/-! ## A085485.P14351048593999126292

`and(-1, A085484(A000217(n)))`
-/

namespace A085485.P14351048593999126292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A085484 (A000217 n).toNat)

end

end A085485.P14351048593999126292

/-!
# A085486: Antidiagonal sums of symmetric square table A085484, in which the main diagonal is equal to the first row shift left.

The programs for A085486, there is no canonical definition to state claims against.
-/

/-! ## A085486.P93278252976301925

`A152347(n+1)-A035930(A353119(n))`
-/

namespace A085486.P93278252976301925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152347 (n + 1) - A035930 (A353119 n).toNat

end

end A085486.P93278252976301925

/-!
# A085487: a(n) = p^n + q^n, p = (1 + sqrt(21))/2, q = (1 - sqrt(21))/2.

The programs for A085487, the canonical program `A085487.P9979178201713285078` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085487 has offset 1).

The definition of A085487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085487.P9979178201713285078

`a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085487

/-- `a(n-1)+5*a(n-2)` -/
def P9979178201713285078.Spec : Prop :=
  ∀ n, (P9979178201713285078.a n : ℤ) = A085487 (n + 1)

theorem P9979178201713285078.correct : P9979178201713285078.Spec := by
  intro n
  simp only [A085487, Nat.add_sub_cancel]

end A085487

/-! ## A085487.P4738704216024184396

`ogf((1+10x)/(1-x-5x^2))`
-/

namespace A085487.P4738704216024184396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -1, -5] n

end

end A085487.P4738704216024184396

namespace A085487

/-- `ogf((1+10x)/(1-x-5x^2))` -/
def P4738704216024184396.Spec : Prop :=
  ∀ n, P4738704216024184396.a n = A085487 (n + 1)

end A085487

/-! ## A085487.P8503390589568766351

`a(n-1)+lcm(5, a(n-2))` with `a(0)=1, a(1)=11`
-/

namespace A085487.P8503390589568766351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 2))

end

end A085487.P8503390589568766351

namespace A085487

/-- `a(n-1)+lcm(5, a(n-2))` -/
def P8503390589568766351.Spec : Prop :=
  ∀ n, (P8503390589568766351.a n : ℤ) = A085487 (n + 1)

end A085487

/-! ## A085487.P11577145694683047038

`A015440(n+1)+Δ[A015440(n)]`
-/

namespace A085487.P11577145694683047038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015440 (n + 1) + (f1 (n + 1) - f1 n)

end

end A085487.P11577145694683047038

namespace A085487

/-- `A015440(n+1)+Δ[A015440(n)]` -/
def P11577145694683047038.Spec : Prop :=
  ∀ n, P11577145694683047038.a n = A085487 (n + 1)

end A085487

/-! ## A085487.P1931828247952000956

`A365824(n+1)+A015440(n+1)`
-/

namespace A085487.P1931828247952000956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365824 (n + 1) + A015440 (n + 1)

end

end A085487.P1931828247952000956

namespace A085487

/-- `A365824(n+1)+A015440(n+1)` -/
def P1931828247952000956.Spec : Prop :=
  ∀ n, P1931828247952000956.a n = A085487 (n + 1)

end A085487

/-! ## A085487.P5944967414027861153

`A075117(A000217(n+8)-8-2*(n+1))`
-/

namespace A085487.P5944967414027861153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075117 (A000217 (n + 8) - 8 - (2 * (n + 1) : ℤ)).toNat

end

end A085487.P5944967414027861153

namespace A085487

/-- `A075117(A000217(n+8)-8-2*(n+1))` -/
def P5944967414027861153.Spec : Prop :=
  ∀ n, P5944967414027861153.a n = A085487 (n + 1)

end A085487

/-! ## A085487.P11901637024998122520

`A015440(Δ[n²])/A015440(n)`
-/

namespace A085487.P11901637024998122520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015440 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A015440 n : ℚ)

end

end A085487.P11901637024998122520

namespace A085487

/-- `A015440(Δ[n²])/A015440(n)` -/
def P11901637024998122520.Spec : Prop :=
  ∀ n, P11901637024998122520.a n = (A085487 (n + 1) : ℚ)

end A085487

/-! ## A085487.P7776318295500188963

`floor(A015440(2*n+1)/A015440(n))`
-/

namespace A085487.P7776318295500188963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015440 (2 * n + 1) : ℚ) / (A015440 n : ℚ)⌋

end

end A085487.P7776318295500188963

namespace A085487

/-- `floor(A015440(2*n+1)/A015440(n))` -/
def P7776318295500188963.Spec : Prop :=
  ∀ n, P7776318295500188963.a n = A085487 (n + 1)

end A085487

/-!
# A085489: a(n) is the number of subsets of {1,...,n} containing no solutions to x+y=z with x and y distinct (one version of "sum-free subsets").

The programs for A085489, there is no canonical definition to state claims against.
-/

/-! ## A085489.P91364581247871160

`2^n-A088809(n)`
-/

namespace A085489.P91364581247871160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088809 n

end

end A085489.P91364581247871160

/-! ## A085489.P3935244534335295019

`∑[A364755(n)]+1`
-/

namespace A085489.P3935244534335295019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085489.P3935244534335295019

/-! ## A085489.P15783389843647402573

`∑[A364755(A028310(n))]`
-/

namespace A085489.P15783389843647402573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364755 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085489.P15783389843647402573

/-! ## A085489.P3625094862692789603

`A088811(n)+A007865(n)`
-/

namespace A085489.P3625094862692789603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088811 n + A007865 n

end

end A085489.P3625094862692789603

/-! ## A085489.P5388485493680235289

`A088813(n)-A088810(n)`
-/

namespace A085489.P5388485493680235289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088813 n - A088810 n

end

end A085489.P5388485493680235289

/-! ## A085489.P4946613517516721546

`∑[A364755(or(n, A000007(n)))]`
-/

namespace A085489.P4946613517516721546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364755 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085489.P4946613517516721546

/-! ## A085489.P340689538824994219

`A052548(n)-(A088809(n)+2)`
-/

namespace A085489.P340689538824994219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A088809 n + 2)

end

end A085489.P340689538824994219

/-! ## A085489.P4252268252105233605

`A088811(n)+∑[A288728(round(acot(n)+n))]`
-/

namespace A085489.P4252268252105233605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288728 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088811 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085489.P4252268252105233605

/-! ## A085489.P3424927291920616799

`A088811(n)+∑[A288728(C(2, 2*n+1)+n)]`
-/

namespace A085489.P3424927291920616799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288728 (Nat.choose 2 (2 * n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088811 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085489.P3424927291920616799

/-! ## A085489.P13756538162981352914

`A007865(n)+A088813(n)-A050291(n)`
-/

namespace A085489.P13756538162981352914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n + (A088813 n - A050291 n)

end

end A085489.P13756538162981352914

/-!
# A085490: Number of pairs with two different elements which can be obtained by selecting unique elements from two sets with n+1 and n^2 elements respectively and n common elements.

The programs for A085490, the canonical program `A085490.P10919642999791457831` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085490 has offset 0).

The definition of A085490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085490.P10919642999791457831

`n^3+n²-n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085490

/-- `n^3+n²-n` -/
def P10919642999791457831.Spec : Prop :=
  ∀ n, P10919642999791457831.a n = A085490 n

theorem P10919642999791457831.correct : P10919642999791457831.Spec := by
  intro n
  simp only [A085490]

end A085490

/-! ## A085490.P8571704855732321843

`lcm(n, 1-(n²+n))`
-/

namespace A085490.P8571704855732321843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n ^ 2 + n : ℤ))

end

end A085490.P8571704855732321843

namespace A085490

/-- `lcm(n, 1-(n²+n))` -/
def P8571704855732321843.Spec : Prop :=
  ∀ n, (P8571704855732321843.a n : ℤ) = A085490 n

end A085490

/-! ## A085490.P6096960922823583348

`-(n*or(1, ∑[-(2*n)]))`
-/

namespace A085490.P6096960922823583348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A085490.P6096960922823583348

namespace A085490

/-- `-(n*or(1, ∑[-(2*n)]))` -/
def P6096960922823583348.Spec : Prop :=
  ∀ n, P6096960922823583348.a n = A085490 n

end A085490

/-! ## A085490.P11394254982256935463

`-(n*xor(1, ∑[-(2*n)]))`
-/

namespace A085490.P11394254982256935463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A085490.P11394254982256935463

namespace A085490

/-- `-(n*xor(1, ∑[-(2*n)]))` -/
def P11394254982256935463.Spec : Prop :=
  ∀ n, P11394254982256935463.a n = A085490 n

end A085490

/-! ## A085490.P14799287256088024532

`floor((n+1-acot(n))*n²)`
-/

namespace A085490.P14799287256088024532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) * (n ^ 2 : ℝ)⌋

end

end A085490.P14799287256088024532

namespace A085490

/-- `floor((n+1-acot(n))*n²)` -/
def P14799287256088024532.Spec : Prop :=
  ∀ n, P14799287256088024532.a n = A085490 n

end A085490

/-! ## A085490.P10903430119518950813

`floor((n+1)/acot(n²)-n)`
-/

namespace A085490.P10903430119518950813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) - (n : ℝ)⌋

end

end A085490.P10903430119518950813

namespace A085490

/-- `floor((n+1)/acot(n²)-n)` -/
def P10903430119518950813.Spec : Prop :=
  ∀ n, P10903430119518950813.a n = A085490 n

end A085490

/-! ## A085490.P8635203666873012247

`round((n+1-acot(n))*n²)`
-/

namespace A085490.P8635203666873012247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) * (n ^ 2 : ℝ))

end

end A085490.P8635203666873012247

namespace A085490

/-- `round((n+1-acot(n))*n²)` -/
def P8635203666873012247.Spec : Prop :=
  ∀ n, P8635203666873012247.a n = A085490 n

end A085490

/-! ## A085490.P935553049481380043

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A085490.P935553049481380043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085490.P935553049481380043

namespace A085490

/-- `∑[∑[a(n-1)+6]]` -/
def P935553049481380043.Spec : Prop :=
  ∀ n, (P935553049481380043.a n : ℤ) = A085490 n

end A085490

/-! ## A085490.P5729978187915495699

`2*C(∑[2*n], 2)/(n+1)`
-/

namespace A085490.P5729978187915495699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / (n + 1 : ℚ)

end

end A085490.P5729978187915495699

namespace A085490

/-- `2*C(∑[2*n], 2)/(n+1)` -/
def P5729978187915495699.Spec : Prop :=
  ∀ n, P5729978187915495699.a n = (A085490 n : ℚ)

end A085490

/-! ## A085490.P17715642245893000925

`abs(n*or(1, (n+2)*(n-1)))`
-/

namespace A085490.P17715642245893000925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))|

end

end A085490.P17715642245893000925

namespace A085490

/-- `abs(n*or(1, (n+2)*(n-1)))` -/
def P17715642245893000925.Spec : Prop :=
  ∀ n, P17715642245893000925.a n = A085490 n

end A085490

/-! ## A085490.P6515807625678220892

`abs(n*xor(1, (n+2)*(n-1)))`
-/

namespace A085490.P6515807625678220892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))|

end

end A085490.P6515807625678220892

namespace A085490

/-- `abs(n*xor(1, (n+2)*(n-1)))` -/
def P6515807625678220892.Spec : Prop :=
  ∀ n, P6515807625678220892.a n = A085490 n

end A085490

/-! ## A085490.P3063275150124199980

`(n*(n+2))²%((n+1)^3)`
-/

namespace A085490.P3063275150124199980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2)) ^ 2 % (n + 1) ^ 3

end

end A085490.P3063275150124199980

namespace A085490

/-- `(n*(n+2))²%((n+1)^3)` -/
def P3063275150124199980.Spec : Prop :=
  ∀ n, (P3063275150124199980.a n : ℤ) = A085490 n

end A085490

/-! ## A085490.P3529575686956255362

`ceil((n+1)/acot(n²)-(n+1))`
-/

namespace A085490.P3529575686956255362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) - (n + 1 : ℝ)⌉

end

end A085490.P3529575686956255362

namespace A085490

/-- `ceil((n+1)/acot(n²)-(n+1))` -/
def P3529575686956255362.Spec : Prop :=
  ∀ n, P3529575686956255362.a n = A085490 n

end A085490

/-! ## A085490.P12287685423129340889

`n*A165900(n+1)`
-/

namespace A085490.P12287685423129340889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165900 (n + 1)

end

end A085490.P12287685423129340889

namespace A085490

/-- `n*A165900(n+1)` -/
def P12287685423129340889.Spec : Prop :=
  ∀ n, P12287685423129340889.a n = A085490 n

theorem P12287685423129340889.correct : P12287685423129340889.Spec := by
  intro n
  simp only [A085490, Nat.add_sub_cancel, A085490.P12287685423129340889.a, A085490.P10919642999791457831.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085490

/-! ## A085490.P1269819562947968583

`n*(A002378(n)-1)`
-/

namespace A085490.P1269819562947968583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002378 n - 1)

end

end A085490.P1269819562947968583

namespace A085490

/-- `n*(A002378(n)-1)` -/
def P1269819562947968583.Spec : Prop :=
  ∀ n, P1269819562947968583.a n = A085490 n

theorem P1269819562947968583.correct : P1269819562947968583.Spec := by
  intro n
  simp only [A085490, Nat.add_sub_cancel, A085490.P1269819562947968583.a, A085490.P10919642999791457831.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085490

/-! ## A085490.P13244969750946865327

`n*(A014206(n)-3)`
-/

namespace A085490.P13244969750946865327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014206 n - 3)

end

end A085490.P13244969750946865327

namespace A085490

/-- `n*(A014206(n)-3)` -/
def P13244969750946865327.Spec : Prop :=
  ∀ n, P13244969750946865327.a n = A085490 n

theorem P13244969750946865327.correct : P13244969750946865327.Spec := by
  intro n
  simp only [A085490, Nat.add_sub_cancel, A085490.P13244969750946865327.a, A085490.P10919642999791457831.a, A014206, A014206.P11460808999648819084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085490

/-! ## A085490.P17830382516926982501

`n*(A027688(n)-4)`
-/

namespace A085490.P17830382516926982501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027688 n - 4)

end

end A085490.P17830382516926982501

namespace A085490

/-- `n*(A027688(n)-4)` -/
def P17830382516926982501.Spec : Prop :=
  ∀ n, P17830382516926982501.a n = A085490 n

theorem P17830382516926982501.correct : P17830382516926982501.Spec := by
  intro n
  simp only [A085490, Nat.add_sub_cancel, A085490.P17830382516926982501.a, A085490.P10919642999791457831.a, A027688, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085490

/-! ## A085490.P12821244067307560816

`n*(A027689(n)-5)`
-/

namespace A085490.P12821244067307560816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027689 n - 5)

end

end A085490.P12821244067307560816

namespace A085490

/-- `n*(A027689(n)-5)` -/
def P12821244067307560816.Spec : Prop :=
  ∀ n, P12821244067307560816.a n = A085490 n

theorem P12821244067307560816.correct : P12821244067307560816.Spec := by
  intro n
  simp only [A085490, Nat.add_sub_cancel, A085490.P12821244067307560816.a, A085490.P10919642999791457831.a, A027689, A027689.P1842390006618827741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085490

/-! ## A085490.P17440180702870550034

`n/3*A211441(n)`
-/

namespace A085490.P17440180702870550034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A211441 n : ℚ)

end

end A085490.P17440180702870550034

namespace A085490

/-- `n/3*A211441(n)` -/
def P17440180702870550034.Spec : Prop :=
  ∀ n, P17440180702870550034.a n = (A085490 n : ℚ)

end A085490

/-! ## A085490.P4898072880140472239

`n*(n-A258837(n))`
-/

namespace A085490.P4898072880140472239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A258837 n)

end

end A085490.P4898072880140472239

namespace A085490

/-- `n*(n-A258837(n))` -/
def P4898072880140472239.Spec : Prop :=
  ∀ n, P4898072880140472239.a n = A085490 n

theorem P4898072880140472239.correct : P4898072880140472239.Spec := by
  intro n
  simp only [A085490, Nat.add_sub_cancel, A085490.P4898072880140472239.a, A085490.P10919642999791457831.a, A258837, A258837.P16350684666179390251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085490

/-!
# A085491: Number of ways to write n as sum of distinct divisors of n+1.

The programs for A085491, there is no canonical definition to state claims against.
-/

/-! ## A085491.P3751945185793462721

`floor(A100577(n+1)/A243903(n+1))`
-/

namespace A085491.P3751945185793462721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100577 (n + 1) : ℚ) / (A243903 (n + 1) : ℚ)⌋

end

end A085491.P3751945185793462721

/-! ## A085491.P7048150827922904622

`floor(A061142(A332461(n+1))/(n+1))`
-/

namespace A085491.P7048150827922904622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061142 (A332461 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A085491.P7048150827922904622

/-! ## A085491.P8590708010407075496

`floor(A018818(n+1)/A000005(A002182(n+1)))`
-/

namespace A085491.P8590708010407075496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018818 (n + 1) : ℚ) / (A000005 (A002182 (n + 1)).toNat : ℚ)⌋

end

end A085491.P8590708010407075496

/-! ## A085491.P8000722212845111029

`A330665(A243057(n+1))-A001222(A079068(n+1))`
-/

namespace A085491.P8000722212845111029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330665 (A243057 (n + 1)).toNat - A001222 (A079068 (n + 1)).toNat

end

end A085491.P8000722212845111029

/-! ## A085491.P2366155153627771499

`A060128(C(A001065(n+1), n))`
-/

namespace A085491.P2366155153627771499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (Nat.choose (A001065 (n + 1)).toNat n)

end

end A085491.P2366155153627771499

/-!
# A085492: Numbers n having no partition into distinct divisors of n+1.

The programs for A085492, there is no canonical definition to state claims against.
-/

/-! ## A085492.P11962776108032325101

`eq[0, A085491(n)]`
-/

namespace A085492.P11962776108032325101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085492.P11962776108032325101

/-! ## A085492.P13633803551918705281

`comp[A125225(n+1)-1]`
-/

namespace A085492.P13633803551918705281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A085492.P13633803551918705281

/-! ## A085492.P10762609147128075216

`lt[A046523(A000982(n+1)), A066077(n+1)]`
-/

namespace A085492.P10762609147128075216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000982 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P10762609147128075216

/-! ## A085492.P13318150592895543286

`lt[A360069(A339564(n+1)), A000720(n+1)]`
-/

namespace A085492.P13318150592895543286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360069 (A339564 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P13318150592895543286

/-! ## A085492.P16537902237455904135

`lt[sqrt(A088314(n)), A237289(n+1)]`
-/

namespace A085492.P16537902237455904135
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088314 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A085492.P16537902237455904135

/-! ## A085492.P14185079654081399123

`lt[A137579(n)+1, A324546(n+1)]`
-/

namespace A085492.P14185079654081399123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P14185079654081399123

/-! ## A085492.P10403579379022072234

`lt[A022306(A137579(n)), A324546(n+1)]`
-/

namespace A085492.P10403579379022072234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022306 (A137579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P10403579379022072234

/-! ## A085492.P2274773594368462879

`lt[A006022(A356471(n+1)), A033879(n+1)]`
-/

namespace A085492.P2274773594368462879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (A356471 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P2274773594368462879

/-! ## A085492.P15660362917313401543

`lt[A324497(A324537(n+1)), A324546(n+1)]`
-/

namespace A085492.P15660362917313401543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324497 (A324537 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P15660362917313401543

/-! ## A085492.P576610726811817713

`lt[A001221(A053607(n+3)), A033879(n+1)]`
-/

namespace A085492.P576610726811817713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053607 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085492.P576610726811817713

/-!
# A085493: Numbers k having partitions into distinct divisors of k + 1.

The programs for A085493, there is no canonical definition to state claims against.
-/

/-! ## A085493.P2665082693461197078

`lt[acot(n), A085491(n)]`
-/

namespace A085493.P2665082693461197078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A085493.P2665082693461197078

/-! ## A085493.P1002166212099289388

`lt[0, A085491(n+1)]+1`
-/

namespace A085493.P1002166212099289388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085493.P1002166212099289388

/-! ## A085493.P4186032538743971002

`lt[A000007(n), A085491(n)]`
-/

namespace A085493.P4186032538743971002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085493.P4186032538743971002

/-! ## A085493.P11905395660554145188

`lt[A088917(n), A085491(n)]`
-/

namespace A085493.P11905395660554145188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085493.P11905395660554145188

/-! ## A085493.P82820795575072375

`lt[A085491(n+1), A085491(n)]`
-/

namespace A085493.P82820795575072375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085493.P82820795575072375

/-! ## A085493.P11677617925897623387

`A125225(n+2)-1`
-/

namespace A085493.P11677617925897623387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 2) - 1

end

end A085493.P11677617925897623387

/-! ## A085493.P6438775148913348251

`∑[abs(Δ[A125225(n+1)])]`
-/

namespace A085493.P6438775148913348251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085493.P6438775148913348251

/-! ## A085493.P17532144083160710743

`∑[A000027(Δ[A125225(n+1)])]`
-/

namespace A085493.P17532144083160710743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085493.P17532144083160710743

/-! ## A085493.P12295121965406854984

`∑[Δ[A125225(n+1)]%A000040(n+1)]`
-/

namespace A085493.P12295121965406854984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085493.P12295121965406854984

/-!
# A085494: Numbers k having exactly one partition into distinct divisors of k+1.

The programs for A085494, there is no canonical definition to state claims against.
-/

/-! ## A085494.P16159571288809671023

`eq[1, A085491(n+1)]+1`
-/

namespace A085494.P16159571288809671023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085494.P16159571288809671023

/-! ## A085494.P976482288465085175

`eq[A010180(n), A085491(n)]`
-/

namespace A085494.P976482288465085175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085494.P976482288465085175

/-! ## A085494.P35868367254403799

`eq[A010194(n), A085491(n)]`
-/

namespace A085494.P35868367254403799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085494.P35868367254403799

/-! ## A085494.P7215673724053969083

`eq[A052552(n), A085491(n)]`
-/

namespace A085494.P7215673724053969083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085494.P7215673724053969083

/-! ## A085494.P3084250693988676105

`eq[A085491(n), A333599(n)]`
-/

namespace A085494.P3084250693988676105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085494.P3084250693988676105

/-!
# A085495: Maximal order of a finite subgroup of the group GL(n,Q).

The programs for A085495, there is no canonical definition to state claims against.
-/

/-! ## A085495.P8318671996704735026

`A119457(n+1)*A161824(A023394(n+1))`
-/

namespace A085495.P8318671996704735026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119457 (n + 1) * A161824 (A023394 (n + 1)).toNat

end

end A085495.P8318671996704735026

/-!
# A085496: Number of ways to write prime(n) as sum of distinct divisors of prime(n)+1.

The programs for A085496, there is no canonical definition to state claims against.
-/

/-! ## A085496.P16802241179074402906

`A085491(Δ[A007504(n)])`
-/

namespace A085496.P16802241179074402906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (f1 (n + 1) - f1 n).toNat

end

end A085496.P16802241179074402906

/-! ## A085496.P16131521271352878970

`A085491(A000040(n+1))`
-/

namespace A085496.P16131521271352878970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A000040 (n + 1)).toNat

end

end A085496.P16131521271352878970

/-! ## A085496.P14037351808627558378

`A085491(A161847(n+1))`
-/

namespace A085496.P14037351808627558378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A161847 (n + 1)).toNat

end

end A085496.P14037351808627558378

/-! ## A085496.P8260224355053854907

`A085491(A008578(n+2))`
-/

namespace A085496.P8260224355053854907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A008578 (n + 2)).toNat

end

end A085496.P8260224355053854907

/-! ## A085496.P17002675668580561685

`A085491(A182986(n+2))`
-/

namespace A085496.P17002675668580561685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A182986 (n + 2)).toNat

end

end A085496.P17002675668580561685

/-! ## A085496.P6830623899324412272

`A085491(eq[0, A007920(n)])`
-/

namespace A085496.P6830623899324412272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P6830623899324412272

/-! ## A085496.P13515566965781990522

`A085491(eq[1, A003415(n)])`
-/

namespace A085496.P13515566965781990522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P13515566965781990522

/-! ## A085496.P13714805454329547096

`A085491(eq[1, A018783(n)])`
-/

namespace A085496.P13714805454329547096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P13714805454329547096

/-! ## A085496.P3151706010217078021

`A085491(eq[1, A175126(n)])`
-/

namespace A085496.P3151706010217078021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P3151706010217078021

/-! ## A085496.P18053653436104806910

`A085491(eq[1, A302055(n)])`
-/

namespace A085496.P18053653436104806910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P18053653436104806910

/-! ## A085496.P6221699622241821651

`A085491(eq[1, A328847(n)])`
-/

namespace A085496.P6221699622241821651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P6221699622241821651

/-! ## A085496.P2388096824162115674

`A085491(record[A006530(n+2)])`
-/

namespace A085496.P2388096824162115674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085496.P2388096824162115674

/-! ## A085496.P5523335832512804780

`A085491(record[A014963(n+2)])`
-/

namespace A085496.P5523335832512804780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085496.P5523335832512804780

/-! ## A085496.P13013488643021400858

`A085491(record[A020639(n+2)])`
-/

namespace A085496.P13013488643021400858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085496.P13013488643021400858

/-! ## A085496.P3809673531217386567

`A085491(A006093(n+1)+1)`
-/

namespace A085496.P3809673531217386567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A006093 (n + 1) + 1).toNat

end

end A085496.P3809673531217386567

/-! ## A085496.P12341501408846660163

`A085491(A001747(n+2)/2)`
-/

namespace A085496.P12341501408846660163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A085496.P12341501408846660163

/-! ## A085496.P14566920358076757041

`A085491(eq[1, A053989(n+1)])`
-/

namespace A085496.P14566920358076757041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P14566920358076757041

/-! ## A085496.P17750243383782408264

`A085491(eq[1, A231820(n+1)])`
-/

namespace A085496.P17750243383782408264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P17750243383782408264

/-! ## A085496.P17151240511667019288

`A085491(eq[0, A295335(n)])`
-/

namespace A085496.P17151240511667019288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P17151240511667019288

/-! ## A085496.P12510604818859131283

`A085491(eq[1, A117545(n+1)])`
-/

namespace A085496.P12510604818859131283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085496.P12510604818859131283

/-!
# A085497: Primes p having no partition into distinct divisors of p+1.

The programs for A085497, there is no canonical definition to state claims against.
-/

/-! ## A085497.P4423818320922892392

`p?[gcd(A000040(n+1), A085496(n+1))]`
-/

namespace A085497.P4423818320922892392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A085496 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A085497.P4423818320922892392

/-! ## A085497.P3734701613691225356

`A000040(eq[1, A085496(n+1)+1]+1)`
-/

namespace A085497.P3734701613691225356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085496 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085497.P3734701613691225356

/-! ## A085497.P3316866257597479452

`p?[n*(1-A085491(n))]`
-/

namespace A085497.P3316866257597479452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A085491 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085497.P3316866257597479452

/-! ## A085497.P3503443191210510352

`eq[A085491(n), A277894(n)]`
-/

namespace A085497.P3503443191210510352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085497.P3503443191210510352

/-! ## A085497.P14923865661592033849

`p?[eq[A007920(n), A085491(n)]]`
-/

namespace A085497.P14923865661592033849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A085497.P14923865661592033849

/-! ## A085497.P8260236412751576703

`eq[A085491(n)+1, A003415(n)]`
-/

namespace A085497.P8260236412751576703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085497.P8260236412751576703

/-! ## A085497.P6288114807859151989

`eq[A085491(n)+1, A018783(n)]`
-/

namespace A085497.P6288114807859151989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085497.P6288114807859151989

/-! ## A085497.P3888749173095305311

`eq[A085491(n)+1, A175126(n)]`
-/

namespace A085497.P3888749173095305311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085497.P3888749173095305311

/-! ## A085497.P16643256767077847025

`eq[A085491(n)+1, A302055(n)]`
-/

namespace A085497.P16643256767077847025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085497.P16643256767077847025

/-! ## A085497.P3595367137380194298

`eq[1, A085491(n)+A053989(n+1)]`
-/

namespace A085497.P3595367137380194298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n + A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085497.P3595367137380194298

/-! ## A085497.P6957209414008811797

`eq[1, A231820(n+1)+A085491(n)]`
-/

namespace A085497.P6957209414008811797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) + A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085497.P6957209414008811797

/-! ## A085497.P16859177503651115000

`eq[1, A117545(n+1)+A085491(n)]`
-/

namespace A085497.P16859177503651115000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) + A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085497.P16859177503651115000

/-! ## A085497.P17890157753047800693

`eq[A085491(n), A340732(n)]`
-/

namespace A085497.P17890157753047800693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085497.P17890157753047800693

/-!
# A085498: Primes p having at least one partition into distinct divisors of p + 1.

The programs for A085498, there is no canonical definition to state claims against.
-/

/-! ## A085498.P9285158176536458553

`p?[A085493(n+1)]`
-/

namespace A085498.P9285158176536458553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085498.P9285158176536458553

/-! ## A085498.P10716393740856509033

`record[A006530(A085493(n+2))]`
-/

namespace A085498.P10716393740856509033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085493 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085498.P10716393740856509033

/-! ## A085498.P2163386976443336553

`filter[A085493(n+1), A010051(#)]`
-/

namespace A085498.P2163386976443336553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A085498.P2163386976443336553

/-! ## A085498.P7776289195290964033

`filter[A085493(n+1), A323153(#)]`
-/

namespace A085498.P7776289195290964033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A085498.P7776289195290964033

/-! ## A085498.P1100095597613214483

`filter[A085493(n+1), A327861(#)]`
-/

namespace A085498.P1100095597613214483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A085498.P1100095597613214483

/-! ## A085498.P12808744971319416691

`∩[A000040(n+1), A085493(n+1)]`
-/

namespace A085498.P12808744971319416691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P12808744971319416691

/-! ## A085498.P7195452945878820884

`∩[A051948(n+1), A085493(n+1)]`
-/

namespace A085498.P7195452945878820884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P7195452945878820884

/-! ## A085498.P9459217000726649088

`∩[A053577(n+1), A085493(n+1)]`
-/

namespace A085498.P9459217000726649088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P9459217000726649088

/-! ## A085498.P4073313970966009583

`∩[A053813(n+1), A085493(n+1)]`
-/

namespace A085498.P4073313970966009583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P4073313970966009583

/-! ## A085498.P15994966053386270474

`∩[A065091(n+1), A085493(n+1)]`
-/

namespace A085498.P15994966053386270474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P15994966053386270474

/-! ## A085498.P16774849016066093425

`∩[A066191(n+1), A085493(n+1)]`
-/

namespace A085498.P16774849016066093425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P16774849016066093425

/-! ## A085498.P17662807998158447116

`∩[A066542(n+1), A085493(n+1)]`
-/

namespace A085498.P17662807998158447116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P17662807998158447116

/-! ## A085498.P11760779280733108037

`∩[A082378(n+1), A085493(n+1)]`
-/

namespace A085498.P11760779280733108037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P11760779280733108037

/-! ## A085498.P4039549833195629459

`∩[A085493(n+1), A115919(n+1)]`
-/

namespace A085498.P4039549833195629459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P4039549833195629459

/-! ## A085498.P5231255484076034598

`∩[A140826(n+1), A085493(n+1)]`
-/

namespace A085498.P5231255484076034598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P5231255484076034598

/-! ## A085498.P15022135309965514876

`∩[A085493(n+1), A161346(n+1)]`
-/

namespace A085498.P15022135309965514876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P15022135309965514876

/-! ## A085498.P12949981783460136241

`∩[A085493(n+1), A301987(n+1)]`
-/

namespace A085498.P12949981783460136241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085498.P12949981783460136241

/-! ## A085498.P3103084536182188174

`p?[n%(A085491(n)+n)]`
-/

namespace A085498.P3103084536182188174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A085491 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085498.P3103084536182188174

/-! ## A085498.P14207962616874431424

`p?[A125225(n+1)-1]`
-/

namespace A085498.P14207962616874431424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085498.P14207962616874431424

/-! ## A085498.P664134928719825303

`p?[A143051(A125225(n+1))]`
-/

namespace A085498.P664134928719825303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A125225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085498.P664134928719825303

/-!
# A085499: Primes p having exactly one partition into distinct divisors of p+1.

The programs for A085499, there is no canonical definition to state claims against.
-/

/-! ## A085499.P2231067686112807050

`p?[A085494(n+1)]`
-/

namespace A085499.P2231067686112807050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085499.P2231067686112807050

/-! ## A085499.P18008348298130858203

`∩[A085494(n+1), A164319(n+1)]`
-/

namespace A085499.P18008348298130858203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085499.P18008348298130858203

/-! ## A085499.P13319966033264435673

`∩[A009087(n+1), A085494(n+1)]`
-/

namespace A085499.P13319966033264435673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085499.P13319966033264435673

/-! ## A085499.P16838012043842458842

`∩[A085494(n+1), A325143(n+1)]`
-/

namespace A085499.P16838012043842458842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085499.P16838012043842458842

/-! ## A085499.P6216467000548768643

`filter[A085494(n+1), A010051(#)]`
-/

namespace A085499.P6216467000548768643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A085499.P6216467000548768643

/-! ## A085499.P4217776969295434154

`filter[A085494(n+2), A355937(#)]`
-/

namespace A085499.P4217776969295434154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A085499.P4217776969295434154

/-! ## A085499.P6723871444390362987

`filter[A085494(n+2), A380467(#)]`
-/

namespace A085499.P6723871444390362987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A085499.P6723871444390362987

/-! ## A085499.P16252202381609803619

`∩[A000040(n+1), A085494(n+1)]`
-/

namespace A085499.P16252202381609803619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085499.P16252202381609803619

/-! ## A085499.P10583368274535774614

`∩[A000430(n+1), A085494(n+1)]`
-/

namespace A085499.P10583368274535774614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085499.P10583368274535774614

/-! ## A085499.P7002690322490779086

`∩[A049561(n+1), A085494(n+1)]`
-/

namespace A085499.P7002690322490779086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085499.P7002690322490779086

