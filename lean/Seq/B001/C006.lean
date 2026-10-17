import SequenceMachineLib
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A200220.P13235699375585790056

`A000045(n+1)*A000931(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200220.P13235699375585790056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000931 (n + 5)

end

end A200220.P13235699375585790056

noncomputable section

/-- A200220: Product of Fibonacci and Padovan numbers: a(n) = A000045(n+1)*A000931(n+5).

Offset 0, canonical program `A200220.P13235699375585790056`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000931(n+5)` (program `A200220.P13235699375585790056`, by `A200220.P13235699375585790056.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200220 (n : ℕ) : ℤ :=
  A200220.P13235699375585790056.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000931(n+5)` (program `A200220.P13235699375585790056`, by `A200220.P13235699375585790056.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200220.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A200541.P7698192799478556186

`A000045(n+1)*A000073(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200541.P7698192799478556186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000073 (n + 2)

end

end A200541.P7698192799478556186

noncomputable section

/-- A200541: Product of Fibonacci and tribonacci numbers: a(n) = A000045(n+1)*A000073(n+2).

Offset 0, canonical program `A200541.P7698192799478556186`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000073(n+2)` (program `A200541.P7698192799478556186`, by `A200541.P7698192799478556186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200541 (n : ℕ) : ℤ :=
  A200541.P7698192799478556186.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000073(n+2)` (program `A200541.P7698192799478556186`, by `A200541.P7698192799478556186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200541.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A200543.P8602703479413101474

`A000073(n+2)*A000213(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200543.P8602703479413101474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A000213 n

end

end A200543.P8602703479413101474

noncomputable section

/-- A200543: Product of tribonacci numbers: a(n) = A000073(n+2)*A000213(n).

Offset 0, canonical program `A200543.P8602703479413101474`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n+2)*A000213(n)` (program `A200543.P8602703479413101474`, by `A200543.P8602703479413101474.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200543 (n : ℕ) : ℤ :=
  A200543.P8602703479413101474.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n+2)*A000213(n)` (program `A200543.P8602703479413101474`, by `A200543.P8602703479413101474.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200543.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A209971.P2063977723074773376

`A000129(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209971.P2063977723074773376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (n : ℤ)

end

end A209971.P2063977723074773376

noncomputable section

/-- A209971: a(n) = A000129(n) + n.

Offset 0, canonical program `A209971.P2063977723074773376`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+n` (program `A209971.P2063977723074773376`, by `A209971.P2063977723074773376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A209971 (n : ℕ) : ℤ :=
  A209971.P2063977723074773376.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+n` (program `A209971.P2063977723074773376`, by `A209971.P2063977723074773376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A209971.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A218439.P6141881023382895010

`A001609(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218439.P6141881023382895010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 1) ^ 2

end

end A218439.P6141881023382895010

noncomputable section

/-- A218439: a(n) = A001609(n)^2, where g.f. of A001609 is x*(1+3*x^2)/(1-x-x^3).

Offset 1, canonical program `A218439.P6141881023382895010`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001609(n+1)²` (program `A218439.P6141881023382895010`, by `A218439.P6141881023382895010.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A218439 (n : ℕ) : ℤ :=
  A218439.P6141881023382895010.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001609(n+1)²` (program `A218439.P6141881023382895010`, by `A218439.P6141881023382895010.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A218439.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A184337.P6368528835179303585

`A059482(n)*A002283(n)`
-/

namespace A184337.P6368528835179303585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n * A002283 n

end

end A184337.P6368528835179303585

noncomputable section

/-- A184337: a(n) is the integer whose decimal representation consists of n 8's followed by n 1's.

Offset 0, canonical program `A184337.P6368528835179303585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184337 (n : ℕ) : ℤ :=
  A184337.P6368528835179303585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184387.P7123974566523732080

`A000217(A000203(n+1))`
-/

namespace A184387.P7123974566523732080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat

end

end A184387.P7123974566523732080

noncomputable section

/-- A184387: a(n) = sum of numbers from 1 to sigma(n), where sigma(n) = A000203(n).

Offset 1, canonical program `A184387.P7123974566523732080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184387 (n : ℕ) : ℤ :=
  A184387.P7123974566523732080.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184388.P14157118067265196798

`A000203(n+1)!`
-/

namespace A184388.P14157118067265196798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000203 (n + 1)).toNat

end

end A184388.P14157118067265196798

noncomputable section

/-- A184388: a(n) = product of numbers from 1 to sigma(n), where sigma(n) = A000203(n).

Offset 1, canonical program `A184388.P14157118067265196798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184388 (n : ℕ) : ℤ :=
  (A184388.P14157118067265196798.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184617.P6500714334577552436

`A178729(n)/2`
-/

namespace A184617.P6500714334577552436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178729 n : ℚ) / 2

end

end A184617.P6500714334577552436

noncomputable section

/-- A184617: With nonadjacent forms: A184615(n) + A184616(n).

Offset 0, canonical program `A184617.P6500714334577552436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184617.P6500714334577552436.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185010.P938023634184564924

`A000108(n)*A015518(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185010.P938023634184564924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A015518 (n + 1)

end

end A185010.P938023634184564924

noncomputable section

/-- A185010: a(n) = A000108(n)*A015518(n+1), where A000108 are the Catalan numbers and A015518(n) = 2*A015518(n-1) + 3*A015518(n-2).

Offset 0, canonical program `A185010.P938023634184564924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185010 (n : ℕ) : ℤ :=
  A185010.P938023634184564924.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185020.P3515777986495691671

`A000108(n)*A002605(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185020.P3515777986495691671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002605 (n + 1)

end

end A185020.P3515777986495691671

noncomputable section

/-- A185020: a(n) = A000108(n)*A002605(n+1), where A000108 are the Catalan numbers.

Offset 0, canonical program `A185020.P3515777986495691671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185020 (n : ℕ) : ℤ :=
  A185020.P3515777986495691671.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185970.P13347069573920601442

`2^C(n, 2)*A001710(n+2)`
-/

namespace A185970.P13347069573920601442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) * A001710 (n + 2)

end

end A185970.P13347069573920601442

noncomputable section

/-- A185970: a(n) = 2^((n^2-n-2)/2)*(n+2)!

Offset 0, canonical program `A185970.P13347069573920601442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185970 (n : ℕ) : ℤ :=
  A185970.P13347069573920601442.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185995.P979104805758151756

`2^A000330(n)`
-/

namespace A185995.P979104805758151756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000330 n : ℤ)

end

end A185995.P979104805758151756

noncomputable section

/-- A185995: a(n) = 2^(binomial(2*n+2,3)/4).

Offset 0, canonical program `A185995.P979104805758151756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185995.P979104805758151756.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186194.P201725492431003808

`A002275(n)*(A002275(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186194.P201725492431003808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * (A002275 n + 1)

end

end A186194.P201725492431003808

noncomputable section

/-- A186194: a(n) = A002275(n) * (A002275(n)+1).

Offset 0, canonical program `A186194.P201725492431003808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186194 (n : ℕ) : ℤ :=
  A186194.P201725492431003808.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186196.P14794759112543715371

`(-1)^n*(-2)^C(n, 2)*A001045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186196.P14794759112543715371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (-2) ^ Nat.choose n 2 * A001045 (n + 1)

end

end A186196.P14794759112543715371

noncomputable section

/-- A186196: a(n)=(-1)^n*(-2)^C(n,2)*A001045(n+1).

Offset 0, canonical program `A186196.P14794759112543715371`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(-2)^C(n, 2)*A001045(n+1)` (program `A186196.P14794759112543715371`, by `A186196.P14794759112543715371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A186196 (n : ℕ) : ℤ :=
  A186196.P14794759112543715371.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(-2)^C(n, 2)*A001045(n+1)` (program `A186196.P14794759112543715371`, by `A186196.P14794759112543715371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A186196.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A186244.P14326985804142618526

`3^n-A028859(n)`
-/

namespace A186244.P14326985804142618526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A028859 n

end

end A186244.P14326985804142618526

noncomputable section

/-- A186244: Number of ternary strings of length n containing 00.

Offset 0, canonical program `A186244.P14326985804142618526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186244 (n : ℕ) : ℤ :=
  A186244.P14326985804142618526.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186266.P11045191122564432352

`3*A000108(n)*A000108(n+1)*(n+1)/(n+3)`
-/

namespace A186266.P11045191122564432352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000108 n * A000108 (n + 1) : ℚ) * ((n + 1 : ℚ) / (n + 3 : ℚ))

end

end A186266.P11045191122564432352

noncomputable section

/-- A186266: Expansion of 2F1( 1/2, 3/2; 4; 16*x ).

Offset 0, canonical program `A186266.P11045191122564432352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186266.P11045191122564432352.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186314.P17552666734171357615

`3^n-A001906(n+1)`
-/

namespace A186314.P17552666734171357615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A001906 (n + 1)

end

end A186314.P17552666734171357615

noncomputable section

/-- A186314: Number of ternary strings of length n which contain 01.

Offset 0, canonical program `A186314.P17552666734171357615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186314 (n : ℕ) : ℤ :=
  A186314.P17552666734171357615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186340.P3689441549172991547

`2^A001840(n)`
-/

namespace A186340.P3689441549172991547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001840 n : ℤ)

end

end A186340.P3689441549172991547

noncomputable section

/-- A186340: a(n) = 2^A001840(n).

Offset 0, canonical program `A186340.P3689441549172991547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186340.P3689441549172991547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186422.P9834622977751955722

`A186421(n+1)-A186421(n)`
-/

namespace A186422.P9834622977751955722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (n + 1) - A186421 n

end

end A186422.P9834622977751955722

noncomputable section

/-- A186422: First differences of A186421.

Offset 0, canonical program `A186422.P9834622977751955722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186422 (n : ℕ) : ℤ :=
  A186422.P9834622977751955722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186763.P4441082643897295989

`(A000522(n)-A000166(n))/2`
-/

namespace A186763.P4441082643897295989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n - A000166 n : ℚ) / 2

end

end A186763.P4441082643897295989

noncomputable section

/-- A186763: Number of increasing odd cycles in all permutations of {1,2,...,n}.

Offset 0, canonical program `A186763.P4441082643897295989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186763.P4441082643897295989.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187044.P16714071663709978981

`A193361(n+2)`
-/

namespace A187044.P16714071663709978981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2)

end

end A187044.P16714071663709978981

noncomputable section

/-- A187044: Row sums of number triangle A070895.

Offset 0, canonical program `A187044.P16714071663709978981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187044 (n : ℕ) : ℤ :=
  A187044.P16714071663709978981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187284.P2001770761397353711

`round(log(A003418(n)))-n`
-/

namespace A187284.P2001770761397353711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A003418 n : ℝ)) - (n : ℤ)

end

end A187284.P2001770761397353711

noncomputable section

/-- A187284: a(n) = round(log(lcm(1,...,n))) - n.

Offset 0, canonical program `A187284.P2001770761397353711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187284 (n : ℕ) : ℤ :=
  A187284.P2001770761397353711.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187357.P2278032874893619399

`A000108(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187357.P2278032874893619399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (3 * n)

end

end A187357.P2278032874893619399

noncomputable section

/-- A187357: Catalan trisection: A000108(3*n), n >= 0.

Offset 0, canonical program `A187357.P2278032874893619399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187357 (n : ℕ) : ℤ :=
  A187357.P2278032874893619399.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187358.P4431220509580705304

`A000108(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187358.P4431220509580705304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (3 * n + 1)

end

end A187358.P4431220509580705304

noncomputable section

/-- A187358: Catalan trisection: A000108(3*n+1), n>=0.

Offset 0, canonical program `A187358.P4431220509580705304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187358 (n : ℕ) : ℤ :=
  A187358.P4431220509580705304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187359.P1936867484030985609

`A000108(3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187359.P1936867484030985609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (3 * n + 2) : ℚ) / 2

end

end A187359.P1936867484030985609

noncomputable section

/-- A187359: Catalan trisection: A000108(3*n + 2)/2, n>=0.

Offset 0, canonical program `A187359.P1936867484030985609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187359.P1936867484030985609.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188050.P2437867071037647755

`A016755(n)-A001845(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188050.P2437867071037647755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A001845 n

end

end A188050.P2437867071037647755

noncomputable section

/-- A188050: a(n) = A016755(n) - A001845(n).

Offset 0, canonical program `A188050.P2437867071037647755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188050 (n : ℕ) : ℤ :=
  A188050.P2437867071037647755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188378.P151460169206964493

`A002878(n)+1`
-/

namespace A188378.P151460169206964493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + 1

end

end A188378.P151460169206964493

noncomputable section

/-- A188378: Partial sums of A005248.

Offset 0, canonical program `A188378.P151460169206964493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188378 (n : ℕ) : ℤ :=
  A188378.P151460169206964493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188438.P14117179169218268139

`A188012(n+2)`
-/

namespace A188438.P14117179169218268139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 2)

end

end A188438.P14117179169218268139

noncomputable section

/-- A188438: Positions of 1 in A188436; complement of A188437.

Offset 1, canonical program `A188438.P14117179169218268139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188438 (n : ℕ) : ℤ :=
  A188438.P14117179169218268139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188475.P10141490287828620120

`A006331(n)+1`
-/

namespace A188475.P10141490287828620120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + 1

end

end A188475.P10141490287828620120

noncomputable section

/-- A188475: a(n) = (2*n^3 + 3*n^2 + n + 3)/3.

Offset 0, canonical program `A188475.P10141490287828620120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188475 (n : ℕ) : ℤ :=
  A188475.P10141490287828620120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188805.P8005763696363257235

`(-1)^(n+1)*n!*A001906(n+1)`
-/

namespace A188805.P8005763696363257235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (Nat.factorial n : ℤ) * A001906 (n + 1)

end

end A188805.P8005763696363257235

noncomputable section

/-- A188805: The n-th derivative of 1/(1-x-x^2), evaluated at x=1.

Offset 0, canonical program `A188805.P8005763696363257235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188805 (n : ℕ) : ℤ :=
  A188805.P8005763696363257235.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188947.P3483537737604660022

`1+A053698(n)`
-/

namespace A188947.P3483537737604660022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053698 n

end

end A188947.P3483537737604660022

noncomputable section

/-- A188947: a(n) = n^3 - 2*n^2 + 2*n + 1.

Offset 1, canonical program `A188947.P3483537737604660022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188947 (n : ℕ) : ℤ :=
  A188947.P3483537737604660022.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A189442.P5614315760736136417

`A140230(n+1)/A016116(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189442.P5614315760736136417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140230 (n + 1) : ℚ) / (A016116 n : ℚ)

end

end A189442.P5614315760736136417

noncomputable section

/-- A189442: a(n) = A140230(n) / A016116(n-1).

Offset 1, canonical program `A189442.P5614315760736136417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189442.P5614315760736136417.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190512.P2810430431470207677

`A052980(n+1)`
-/

namespace A190512.P2810430431470207677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1)

end

end A190512.P2810430431470207677

noncomputable section

/-- A190512: Number of one-sided n-step prudent walks, avoiding single west step only, i.e., two or more consecutive west steps are permitted.

Offset 0, canonical program `A190512.P2810430431470207677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190512 (n : ℕ) : ℤ :=
  A190512.P2810430431470207677.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190621.P6562268488037318602

`n*A166486(n)`
-/

namespace A190621.P6562268488037318602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166486 n

end

end A190621.P6562268488037318602

noncomputable section

/-- A190621: a(n) = n if n is not divisible by 4, otherwise 0.

Offset 0, canonical program `A190621.P6562268488037318602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190621 (n : ℕ) : ℤ :=
  A190621.P6562268488037318602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190914.P3011523766713469507

`A061084(n+1)+A001644(n)`
-/

namespace A190914.P3011523766713469507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A001644 n

end

end A190914.P3011523766713469507

noncomputable section

/-- A190914: Expansion of ( 5-9*x^2-2*x^3 ) / ( (1+x-x^2)*(1-x-x^2-x^3) ).

Offset 0, canonical program `A190914.P3011523766713469507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190914 (n : ℕ) : ℤ :=
  A190914.P3011523766713469507.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191007.P14348734800263367869

`3*A045883(n+1)`
-/

namespace A191007.P14348734800263367869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045883 (n + 1)

end

end A191007.P14348734800263367869

noncomputable section

/-- A191007: a(n) = n*2^(n+1) + (2^(n+3)+(-1)^n)/3.

Offset 0, canonical program `A191007.P14348734800263367869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191007 (n : ℕ) : ℤ :=
  A191007.P14348734800263367869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191106.P14318960782642290276

`2*A005836(n+1)+1`
-/

namespace A191106.P14318960782642290276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1) + 1

end

end A191106.P14318960782642290276

noncomputable section

/-- A191106: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 3x are in a.

Offset 1, canonical program `A191106.P14318960782642290276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191106 (n : ℕ) : ℤ :=
  A191106.P14318960782642290276.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191363.P16502874192890773683

`A007582(2^n)`
-/

namespace A191363.P16502874192890773683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (2 ^ n)

end

end A191363.P16502874192890773683

noncomputable section

/-- A191363: Numbers m whose deficiency is 2: sigma(m) - 2*m = -2.

Offset 1, canonical program `A191363.P16502874192890773683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191363 (n : ℕ) : ℤ :=
  A191363.P16502874192890773683.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191830.P18056037667756881714

`a(n-1)+a(n-2)+A000045(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=4`
-/

namespace A191830.P18056037667756881714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 1, 4] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 5)

end

end A191830.P18056037667756881714

noncomputable section

/-- A191830: Expansion of x^2*(2-3*x)/(1-x-x^2)^2.

Offset 0, canonical program `A191830.P18056037667756881714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191830 (n : ℕ) : ℤ :=
  A191830.P18056037667756881714.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191967.P17717380817675792771

`A000326(n)-A142150(n)`
-/

namespace A191967.P17717380817675792771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A142150 n

end

end A191967.P17717380817675792771

noncomputable section

/-- A191967: n * (numbers that are not divisible by 3).

Offset 0, canonical program `A191967.P17717380817675792771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191967 (n : ℕ) : ℤ :=
  A191967.P17717380817675792771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192080.P17363585931112725373

`(2^(n+5)+A057079(n+2)-27*A057681(n+1))/6`
-/

namespace A192080.P17363585931112725373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 5) : ℤ) + A057079 (n + 2) - 27 * A057681 (n + 1) : ℚ) / 6

end

end A192080.P17363585931112725373

noncomputable section

/-- A192080: Expansion of 1/((1-x)^6 - x^6).

Offset 0, canonical program `A192080.P17363585931112725373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192080.P17363585931112725373.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192080.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192222.P11342052387966784639

`A000045(2^n+1)`
-/

namespace A192222.P11342052387966784639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 ^ n + 1)

end

end A192222.P11342052387966784639

noncomputable section

/-- A192222: a(n) = Fibonacci(2^n + 1).

Offset 0, canonical program `A192222.P11342052387966784639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192222 (n : ℕ) : ℤ :=
  A192222.P11342052387966784639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192223.P13999089944796610971

`A000032(2^n+1)`
-/

namespace A192223.P13999089944796610971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 ^ n + 1)

end

end A192223.P13999089944796610971

noncomputable section

/-- A192223: a(n) = Lucas(2^n + 1).

Offset 0, canonical program `A192223.P13999089944796610971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192223 (n : ℕ) : ℤ :=
  A192223.P13999089944796610971.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192491.P7165813623652142385

`24*A050509(n)`
-/

namespace A192491.P7165813623652142385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A050509 n

end

end A192491.P7165813623652142385

noncomputable section

/-- A192491: Molecular topological indices of the complete tripartite graphs K_{n,n,n}.

Offset 1, canonical program `A192491.P7165813623652142385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192491 (n : ℕ) : ℤ :=
  A192491.P7165813623652142385.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192654.P3211416494590440823

`floor(sqrt(A000108(n)))-a(n-1)` with `a(0)=1`
-/

namespace A192654.P3211416494590440823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.sqrt (A000108 n) - a (n - 1)

end

end A192654.P3211416494590440823

noncomputable section

/-- A192654: Alternating partial sums of the Floor-Sqrt transform of Catalan numbers.

Offset 0, canonical program `A192654.P3211416494590440823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192654 (n : ℕ) : ℤ :=
  A192654.P3211416494590440823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192677.P58504723841023189

`floor(sqrt(A000085(n)))`
-/

namespace A192677.P58504723841023189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000085 n)

end

end A192677.P58504723841023189

noncomputable section

/-- A192677: Floor-Sqrt transform of involution numbers (A000085).

Offset 0, canonical program `A192677.P58504723841023189`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192677 (n : ℕ) : ℤ :=
  A192677.P58504723841023189.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192680.P5857449859250772801

`floor(sqrt(A002801(n)))`
-/

namespace A192680.P5857449859250772801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002801 n)

end

end A192680.P5857449859250772801

noncomputable section

/-- A192680: Floor-Sqrt transform of Sylvester continuants (A002801).

Offset 0, canonical program `A192680.P5857449859250772801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192680 (n : ℕ) : ℤ :=
  A192680.P5857449859250772801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192681.P6283969779794791219

`floor(sqrt(A000262(n)))`
-/

namespace A192681.P6283969779794791219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000262 n)

end

end A192681.P6283969779794791219

noncomputable section

/-- A192681: Floor-sqrt transform of Lah partition numbers (A000262).

Offset 0, canonical program `A192681.P6283969779794791219`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192681 (n : ℕ) : ℤ :=
  A192681.P6283969779794791219.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192727.P9848706558009423676

`A000045(n+1)+A000035(n)-A016116(n+1)`
-/

namespace A192727.P9848706558009423676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000035 n - A016116 (n + 1)

end

end A192727.P9848706558009423676

noncomputable section

/-- A192727: a(n) = Fibonacci(n-2) + 2*a(n-2) - (n mod 2).

Offset 0, canonical program `A192727.P9848706558009423676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192727 (n : ℕ) : ℤ :=
  A192727.P9848706558009423676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192793.P13602527591702543703

`36*A047667(n+1)`
-/

namespace A192793.P13602527591702543703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A047667 (n + 1)

end

end A192793.P13602527591702543703

noncomputable section

/-- A192793: Molecular topological indices of the crossed prism graphs.

Offset 1, canonical program `A192793.P13602527591702543703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192793 (n : ℕ) : ℤ :=
  A192793.P13602527591702543703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192832.P7975933789096230242

`48*A004302(n)`
-/

namespace A192832.P7975933789096230242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * A004302 n

end

end A192832.P7975933789096230242

noncomputable section

/-- A192832: Molecular topological indices of the lattice graphs.

Offset 1, canonical program `A192832.P7975933789096230242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192832 (n : ℕ) : ℤ :=
  A192832.P7975933789096230242.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192845.P10036743651103174878

`4*A090197(n)`
-/

namespace A192845.P10036743651103174878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A090197 n

end

end A192845.P10036743651103174878

noncomputable section

/-- A192845: Molecular topological indices of the sun graphs.

Offset 1, canonical program `A192845.P10036743651103174878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192845 (n : ℕ) : ℤ :=
  A192845.P10036743651103174878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192932.P17271397866938834624

`A001608(n)²`
-/

namespace A192932.P17271397866938834624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n ^ 2

end

end A192932.P17271397866938834624

noncomputable section

/-- A192932: Squares of numbers in Perrin sequence.

Offset 0, canonical program `A192932.P17271397866938834624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192932 (n : ℕ) : ℤ :=
  A192932.P17271397866938834624.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192951.P17679009694418664798

`A000285(n+2)-3*n-5`
-/

namespace A192951.P17679009694418664798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 2) - (3 * n : ℤ) - 5

end

end A192951.P17679009694418664798

noncomputable section

/-- A192951: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A192951.P17679009694418664798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192951 (n : ℕ) : ℤ :=
  A192951.P17679009694418664798.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192953.P17417309066290700007

`A131300(n)-1`
-/

namespace A192953.P17417309066290700007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n - 1

end

end A192953.P17417309066290700007

noncomputable section

/-- A192953: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A192953.P17417309066290700007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192953 (n : ℕ) : ℤ :=
  A192953.P17417309066290700007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193282.P14628151566617801030

`A081125(n)²`
-/

namespace A193282.P14628151566617801030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 n ^ 2

end

end A193282.P14628151566617801030

noncomputable section

/-- A193282: a(n) = (n!/floor(n/2)!)^2.

Offset 0, canonical program `A193282.P14628151566617801030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193282 (n : ℕ) : ℤ :=
  A193282.P14628151566617801030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193433.P11352703702187817550

`A000203(A002522(n))`
-/

namespace A193433.P11352703702187817550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002522 n).toNat

end

end A193433.P11352703702187817550

noncomputable section

/-- A193433: Sum of the divisors of n^2+1.

Offset 0, canonical program `A193433.P11352703702187817550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193433 (n : ℕ) : ℤ :=
  A193433.P11352703702187817550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193465.P11340921606981764370

`A002467(n+2)-(n+1)!`
-/

namespace A193465.P11340921606981764370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 2) - (Nat.factorial (n + 1) : ℤ)

end

end A193465.P11340921606981764370

noncomputable section

/-- A193465: Row sums of triangle A061312.

Offset 0, canonical program `A193465.P11340921606981764370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193465 (n : ℕ) : ℤ :=
  A193465.P11340921606981764370.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193494.P4992485085862482001

`(A006046(n+1)-1)/2`
-/

namespace A193494.P4992485085862482001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006046 (n + 1) - 1 : ℚ) / 2

end

end A193494.P4992485085862482001

noncomputable section

/-- A193494: Worst case of an unbalanced recursive algorithm over all n-node binary trees.

Offset 0, canonical program `A193494.P4992485085862482001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193494 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193494.P4992485085862482001.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193867.P15975463476327367108

`1+A014494(n)`
-/

namespace A193867.P15975463476327367108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A014494 n

end

end A193867.P15975463476327367108

noncomputable section

/-- A193867: Odd central polygonal numbers.

Offset 1, canonical program `A193867.P15975463476327367108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193867 (n : ℕ) : ℤ :=
  A193867.P15975463476327367108.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193868.P775809306706313697

`1+A014493(n+1)`
-/

namespace A193868.P775809306706313697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A014493 (n + 1)

end

end A193868.P775809306706313697

noncomputable section

/-- A193868: Even central polygonal numbers.

Offset 1, canonical program `A193868.P775809306706313697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193868 (n : ℕ) : ℤ :=
  A193868.P775809306706313697.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194590.P17962312816026059699

`(-1)^n*(A056040(n+1)*A152271(n)-2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194590.P17962312816026059699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) * ((A056040 (n + 1) * A152271 n - (2 ^ n : ℤ) : ℚ) / 2)

end

end A194590.P17962312816026059699

noncomputable section

/-- A194590: a(n) = (-1)^n*(A056040(n+1)*A152271(n)-2^n)/2.

Offset 0, canonical program `A194590.P17962312816026059699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194590 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194590.P17962312816026059699.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194767.P17340196967710499818

`(n+1)*A051176(n+2)`
-/

namespace A194767.P17340196967710499818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051176 (n + 2)

end

end A194767.P17340196967710499818

noncomputable section

/-- A194767: Denominator of the fourth increasing diagonal of the autosequence of second kind from (-1)^n / (n+1).

Offset 0, canonical program `A194767.P17340196967710499818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194767 (n : ℕ) : ℤ :=
  A194767.P17340196967710499818.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195047.P7507849109192638865

`A151978(A061925(n))`
-/

namespace A195047.P7507849109192638865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (A061925 n).toNat

end

end A195047.P7507849109192638865

noncomputable section

/-- A195047: Concentric 17-gonal numbers.

Offset 0, canonical program `A195047.P7507849109192638865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195047 (n : ℕ) : ℤ :=
  A195047.P7507849109192638865.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195084.P3958675108645787129

`2-A001057(n)`
-/

namespace A195084.P3958675108645787129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001057 n

end

end A195084.P3958675108645787129

noncomputable section

/-- A195084: a(2n-1) = 2-n, a(2n) = 2+n.

Offset 0, canonical program `A195084.P3958675108645787129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195084 (n : ℕ) : ℤ :=
  A195084.P3958675108645787129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195181.P17617609807910786818

`A195120(3*n)`
-/

namespace A195181.P17617609807910786818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (3 * n)

end

end A195181.P17617609807910786818

noncomputable section

/-- A195181: a(n) = 6*n - floor(3*n*sqrt(3)).

Offset 0, canonical program `A195181.P17617609807910786818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195181 (n : ℕ) : ℤ :=
  A195181.P17617609807910786818.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195605.P1051201154411484577

`A047524(A000982(n+1))`
-/

namespace A195605.P1051201154411484577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (A000982 (n + 1)).toNat

end

end A195605.P1051201154411484577

noncomputable section

/-- A195605: a(n) = (4*n*(n+2)+(-1)^n+1)/2 + 1.

Offset 0, canonical program `A195605.P1051201154411484577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195605 (n : ℕ) : ℤ :=
  A195605.P1051201154411484577.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195917.P12614339357049223843

`A161852(n+1)²-1`
-/

namespace A195917.P12614339357049223843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161852 (n + 1) ^ 2 - 1

end

end A195917.P12614339357049223843

noncomputable section

/-- A195917: Numbers k such that both k+1 and 7k+1 are squares.

Offset 1, canonical program `A195917.P12614339357049223843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195917 (n : ℕ) : ℤ :=
  A195917.P12614339357049223843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A197424.P17565426757181894432

`A001654(n+2)²`
-/

namespace A197424.P17565426757181894432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) ^ 2

end

end A197424.P17565426757181894432

noncomputable section

/-- A197424: Number of subsets of {1, 2, ..., 4*n + 2} which do not contain two numbers whose difference is 4.

Offset 0, canonical program `A197424.P17565426757181894432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197424 (n : ℕ) : ℤ :=
  A197424.P17565426757181894432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A198954.P2690440958221023727

`A053187(2*n+1)-A053187(2*n)`
-/

namespace A198954.P2690440958221023727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (2 * n + 1) - A053187 (2 * n)

end

end A198954.P2690440958221023727

noncomputable section

/-- A198954: Expansion of the rotational partition function for a heteronuclear diatomic molecule.

Offset 0, canonical program `A198954.P2690440958221023727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A198954 (n : ℕ) : ℤ :=
  A198954.P2690440958221023727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A198954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A199804.P15884299299135542991

`(-1)^n*A000930(n)`
-/

namespace A199804.P15884299299135542991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000930 n

end

end A199804.P15884299299135542991

noncomputable section

/-- A199804: G.f.: 1/(1+x+x^3).

Offset 0, canonical program `A199804.P15884299299135542991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A199804 (n : ℕ) : ℤ :=
  A199804.P15884299299135542991.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A199804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200312.P4261502179475721494

`A000108(n)*A006130(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200312.P4261502179475721494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006130 n

end

end A200312.P4261502179475721494

noncomputable section

/-- A200312: a(n) = A000108(n)*A006130(n), where A000108 is the Catalan numbers and A006130(n) = A006130(n-1) + 3*A006130(n-2).

Offset 0, canonical program `A200312.P4261502179475721494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200312 (n : ℕ) : ℤ :=
  A200312.P4261502179475721494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200375.P9225317840720584011

`A000108(n)*A001045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200375.P9225317840720584011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001045 (n + 1)

end

end A200375.P9225317840720584011

noncomputable section

/-- A200375: Product of Catalan and Jacobsthal numbers: a(n) = A000108(n)*A001045(n+1).

Offset 0, canonical program `A200375.P9225317840720584011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200375 (n : ℕ) : ℤ :=
  A200375.P9225317840720584011.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200538.P6567491309627245380

`A001045(n+1)*A001006(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200538.P6567491309627245380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A001006 n

end

end A200538.P6567491309627245380

noncomputable section

/-- A200538: Product of Jacobsthal and Motzkin numbers: a(n) = A001045(n+1)*A001006(n).

Offset 0, canonical program `A200538.P6567491309627245380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200538 (n : ℕ) : ℤ :=
  A200538.P6567491309627245380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200539.P3878912618294695387

`A000045(n+1)*A001006(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200539.P3878912618294695387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001006 n

end

end A200539.P3878912618294695387

noncomputable section

/-- A200539: Product of Fibonacci and Motzkin numbers: a(n) = A000045(n+1)*A001006(n).

Offset 0, canonical program `A200539.P3878912618294695387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200539 (n : ℕ) : ℤ :=
  A200539.P3878912618294695387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200540.P5517971388681877837

`A000129(n+1)*A001006(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200540.P5517971388681877837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A001006 n

end

end A200540.P5517971388681877837

noncomputable section

/-- A200540: Product of Pell and Motzkin numbers: a(n) = A000129(n+1)*A001006(n).

Offset 0, canonical program `A200540.P5517971388681877837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200540 (n : ℕ) : ℤ :=
  A200540.P5517971388681877837.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A201629.P2149105021995043293

`2*A004524(n+1)`
-/

namespace A201629.P2149105021995043293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004524 (n + 1)

end

end A201629.P2149105021995043293

noncomputable section

/-- A201629: a(n) = n if n is even and otherwise its nearest multiple of 4.

Offset 0, canonical program `A201629.P2149105021995043293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201629 (n : ℕ) : ℤ :=
  A201629.P2149105021995043293.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202107.P8836218848276096274

`2*A059977(n)`
-/

namespace A202107.P8836218848276096274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059977 n

end

end A202107.P8836218848276096274

noncomputable section

/-- A202107: a(n) = n^4*(n+1)^4/8.

Offset 1, canonical program `A202107.P8836218848276096274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202107 (n : ℕ) : ℤ :=
  A202107.P8836218848276096274.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202827.P12679412167005264867

`A005425(n)²`
-/

namespace A202827.P12679412167005264867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n ^ 2

end

end A202827.P12679412167005264867

noncomputable section

/-- A202827: Expansion of e.g.f.: exp(4*x/(1-x)) / sqrt(1-x^2).

Offset 0, canonical program `A202827.P12679412167005264867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202827 (n : ℕ) : ℤ :=
  A202827.P12679412167005264867.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202828.P9482979765000296979

`A000898(n)²`
-/

namespace A202828.P9482979765000296979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000898 n ^ 2

end

end A202828.P9482979765000296979

noncomputable section

/-- A202828: Expansion of e.g.f.: exp(4*x/(1-2*x)) / sqrt(1-4*x^2).

Offset 0, canonical program `A202828.P9482979765000296979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202828 (n : ℕ) : ℤ :=
  A202828.P9482979765000296979.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202835.P8532111327738719648

`A083886(n)²`
-/

namespace A202835.P8532111327738719648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083886 n ^ 2

end

end A202835.P8532111327738719648

noncomputable section

/-- A202835: Expansion of e.g.f.: exp(9*x/(1-2*x)) / sqrt(1-4*x^2).

Offset 0, canonical program `A202835.P8532111327738719648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202835 (n : ℕ) : ℤ :=
  A202835.P8532111327738719648.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203243.P12770153209051435861

`3*A006100(n+2)`
-/

namespace A203243.P12770153209051435861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006100 (n + 2)

end

end A203243.P12770153209051435861

noncomputable section

/-- A203243: Second elementary symmetric function of the first n terms of (1,3,9,27,81,...).

Offset 2, canonical program `A203243.P12770153209051435861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203243 (n : ℕ) : ℤ :=
  A203243.P12770153209051435861.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203244.P16822674462860900209

`4*A006105(n+2)`
-/

namespace A203244.P16822674462860900209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006105 (n + 2)

end

end A203244.P16822674462860900209

noncomputable section

/-- A203244: Second elementary symmetric function of the first n terms of (1,4,16,64,256,...).

Offset 2, canonical program `A203244.P16822674462860900209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203244 (n : ℕ) : ℤ :=
  A203244.P16822674462860900209.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203552.P4562677630354076209

`4*A000125(n)+2*A000125(n+1)-A000125(n+3)`
-/

namespace A203552.P4562677630354076209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000125 n + 2 * A000125 (n + 1) - A000125 (n + 3)

end

end A203552.P4562677630354076209

noncomputable section

/-- A203552: a(n) = n*(5*n^2 - 3*n + 4) / 6.

Offset 0, canonical program `A203552.P4562677630354076209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203552 (n : ℕ) : ℤ :=
  A203552.P4562677630354076209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203579.P360852745112911251

`5*A014335(n)+2`
-/

namespace A203579.P360852745112911251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014335 n + 2

end

end A203579.P360852745112911251

noncomputable section

/-- A203579: Exponential (or binomial) convolution of A000032 (Lucas) with itself, divided by 2.

Offset 0, canonical program `A203579.P360852745112911251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203579 (n : ℕ) : ℤ :=
  A203579.P360852745112911251.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203925.P5511358836583225429

`A100731(n)-A050923(n)`
-/

namespace A203925.P5511358836583225429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100731 n - A050923 n

end

end A203925.P5511358836583225429

noncomputable section

/-- A203925: 3^n! - 2^n!.

Offset 0, canonical program `A203925.P5511358836583225429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203925 (n : ℕ) : ℤ :=
  A203925.P5511358836583225429.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204090.P18152268944840387246

`A204089(n+1)-2^(n+1)+2`
-/

namespace A204090.P18152268944840387246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) - (2 ^ (n + 1) : ℤ) + 2

end

end A204090.P18152268944840387246

noncomputable section

/-- A204090: The number of 1 X n Haunted Mirror Maze puzzles with a unique solution where mirror orientation is fixed.

Offset 0, canonical program `A204090.P18152268944840387246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204090 (n : ℕ) : ℤ :=
  A204090.P18152268944840387246.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204468.P927918885716742926

`1/9*(2*A102283(n)+n*(16*n²-18*n+9))`
-/

namespace A204468.P927918885716742926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (2 * A102283 n + (n : ℤ) * ((16 * n ^ 2 : ℤ) - (18 * n : ℤ) + 9) : ℚ)

end

end A204468.P927918885716742926

noncomputable section

/-- A204468: Number of 4-element subsets that can be chosen from {1,2,...,4*n} having element sum 8*n+2.

Offset 0, canonical program `A204468.P927918885716742926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204468.P927918885716742926.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204687.P14046039806429045827

`A204321(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204687.P14046039806429045827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204321 (n + 1) : ℚ) / 4

end

end A204687.P14046039806429045827

noncomputable section

/-- A204687: a(n) = A204321(n)/4.

Offset 1, canonical program `A204687.P14046039806429045827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204687.P14046039806429045827.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204841.P11177951287398531469

`A010050(n)-A000165(n)`
-/

namespace A204841.P11177951287398531469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A000165 n

end

end A204841.P11177951287398531469

noncomputable section

/-- A204841: (2n)! - 2^n*n!.

Offset 0, canonical program `A204841.P11177951287398531469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204841 (n : ℕ) : ℤ :=
  A204841.P11177951287398531469.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A205744.P9071350796322645306

`A005318(A083920(n))`
-/

namespace A205744.P9071350796322645306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A083920 n).toNat

end

end A205744.P9071350796322645306

noncomputable section

/-- A205744: The sequence "u_{n-r}" used by Conway and Guy in the construction of A005318 and A096858.

Offset 1, canonical program `A205744.P9071350796322645306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205744 (n : ℕ) : ℤ :=
  A205744.P9071350796322645306.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206840.P4228612901965651321

`A206839(n)²`
-/

namespace A206840.P4228612901965651321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206839 n ^ 2

end

end A206840.P4228612901965651321

noncomputable section

/-- A206840: Number of 2 X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

Offset 0, canonical program `A206840.P4228612901965651321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206840 (n : ℕ) : ℤ :=
  A206840.P4228612901965651321.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A207361.P3173497940838539738

`a(n-1)+n*A000330(n)` with `a(0)=0`
-/

namespace A207361.P3173497940838539738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A000330 n

end

end A207361.P3173497940838539738

noncomputable section

/-- A207361: Displacement under constant discrete unit surge.

Offset 0, canonical program `A207361.P3173497940838539738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A207361 (n : ℕ) : ℤ :=
  A207361.P3173497940838539738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A207361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208355.P6360215552861429744

`A000108(floor((n+1)/2))`
-/

namespace A208355.P6360215552861429744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A208355.P6360215552861429744

noncomputable section

/-- A208355: Right edge of the triangle in A208101.

Offset 0, canonical program `A208355.P6360215552861429744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208355 (n : ℕ) : ℤ :=
  A208355.P6360215552861429744.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208737.P2602793139901619243

`A124292(n+1)-A124302(n)`
-/

namespace A208737.P2602793139901619243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) - A124302 n

end

end A208737.P2602793139901619243

noncomputable section

/-- A208737: Number of nonisomorphic graded posets with 0 and 1 and non-uniform Hasse graph of rank n, with no 3-element antichain.

Offset 0, canonical program `A208737.P2602793139901619243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208737 (n : ℕ) : ℤ :=
  A208737.P2602793139901619243.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208976.P11107744502091880902

`A001405(n)+A001405(n+1)-1`
-/

namespace A208976.P11107744502091880902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A001405 (n + 1) - 1

end

end A208976.P11107744502091880902

noncomputable section

/-- A208976: Row sums of the triangle in A208101.

Offset 0, canonical program `A208976.P11107744502091880902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208976 (n : ℕ) : ℤ :=
  A208976.P11107744502091880902.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209398.P6254359366101448643

`2^n-A006498(n+2)`
-/

namespace A209398.P6254359366101448643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006498 (n + 2)

end

end A209398.P6254359366101448643

noncomputable section

/-- A209398: Number of subsets of {1,...,n} containing two elements whose difference is 2.

Offset 0, canonical program `A209398.P6254359366101448643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209398 (n : ℕ) : ℤ :=
  A209398.P6254359366101448643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209400.P11197854543313356138

`2^n-A164387(n)`
-/

namespace A209400.P11197854543313356138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A164387 n

end

end A209400.P11197854543313356138

noncomputable section

/-- A209400: Number of subsets of {1,...,n} containing a subset of the form {k,k+1,k+3} for some k.

Offset 0, canonical program `A209400.P11197854543313356138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209400 (n : ℕ) : ℤ :=
  A209400.P11197854543313356138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209916.P14108694191549009848

`A047656(n)*2^A000332(n)-1`
-/

namespace A209916.P14108694191549009848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047656 n : ℚ) * (2 : ℚ) ^ (A000332 n : ℤ) - 1

end

end A209916.P14108694191549009848

noncomputable section

/-- A209916: Kolmogorov's button, 2-color generic convex polygon version.

Offset 0, canonical program `A209916.P14108694191549009848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A209916.P14108694191549009848.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211412.P4980430095211675000

`A001844(n)*A001844(n+1)`
-/

namespace A211412.P4980430095211675000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * A001844 (n + 1)

end

end A211412.P4980430095211675000

noncomputable section

/-- A211412: a(n) = 4*n^4 + 1.

Offset 1, canonical program `A211412.P4980430095211675000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211412 (n : ℕ) : ℤ :=
  A211412.P4980430095211675000.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212156.P13956114168249349899

`((6*A023000(n))^3+1)/7^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212156.P13956114168249349899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * A023000 n) ^ 3 + 1 : ℚ) / (7 ^ n : ℚ)

end

end A212156.P13956114168249349899

noncomputable section

/-- A212156: a(n) = ((6*A023000(n))^3 + 1)/7^n, n >= 0.

Offset 0, canonical program `A212156.P13956114168249349899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212156 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A212156.P13956114168249349899.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212338.P2339282621296650043

`a(n-1)+a(n-2)+A067331(n)` with `a(0)=2, a(1)=7`
-/

namespace A212338.P2339282621296650043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) + a (n - 2) + A067331 n

end

end A212338.P2339282621296650043

noncomputable section

/-- A212338: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(0,0,2,0)(x).

Offset 3, canonical program `A212338.P2339282621296650043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212338 (n : ℕ) : ℤ :=
  A212338.P2339282621296650043.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212697.P5536382438406760018

`2*A027471(n+2)`
-/

namespace A212697.P5536382438406760018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027471 (n + 2)

end

end A212697.P5536382438406760018

noncomputable section

/-- A212697: a(n) = 2*n*3^(n-1).

Offset 1, canonical program `A212697.P5536382438406760018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212697 (n : ℕ) : ℤ :=
  A212697.P5536382438406760018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212704.P12310081658456825462

`9*A053541(n+1)`
-/

namespace A212704.P12310081658456825462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A053541 (n + 1)

end

end A212704.P12310081658456825462

noncomputable section

/-- A212704: a(n) = 9*n*10^(n-1).

Offset 1, canonical program `A212704.P12310081658456825462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212704 (n : ℕ) : ℤ :=
  A212704.P12310081658456825462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212892.P6946032153325960698

`2*A030179(n)`
-/

namespace A212892.P6946032153325960698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030179 n

end

end A212892.P6946032153325960698

noncomputable section

/-- A212892: a(n) = n^4/8 if n is even, a(n) = (n^2-1)^2/8 if n is odd.

Offset 0, canonical program `A212892.P6946032153325960698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212892 (n : ℕ) : ℤ :=
  A212892.P6946032153325960698.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213396.P5198982363724161357

`3*A060999(n)`
-/

namespace A213396.P5198982363724161357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060999 n

end

end A213396.P5198982363724161357

noncomputable section

/-- A213396: Number of (w,x,y) with all terms in {0,...,n} and 2*w < |x+y-w|.

Offset 0, canonical program `A213396.P5198982363724161357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213396 (n : ℕ) : ℤ :=
  A213396.P5198982363724161357.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213455.P3433512461555367053

`90*A002451(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213455.P3433512461555367053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  90 * A002451 n

end

end A213455.P3433512461555367053

noncomputable section

/-- A213455: 90*A002451(n).

Offset 0, canonical program `A213455.P3433512461555367053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213455 (n : ℕ) : ℤ :=
  A213455.P3433512461555367053.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213472.P14633443362313727190

`A010879(A005448(n+1))`
-/

namespace A213472.P14633443362313727190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A005448 (n + 1)).toNat

end

end A213472.P14633443362313727190

noncomputable section

/-- A213472: Period 20, repeat [1, 4, 0, 9, 1, 6, 4, 5, 9, 6, 6, 9, 5, 4, 6, 1, 9, 0, 4, 1].

Offset 0, canonical program `A213472.P14633443362313727190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213472 (n : ℕ) : ℤ :=
  A213472.P14633443362313727190.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213483.P829591484306914810

`A213479(n)+A006918(n)`
-/

namespace A213483.P829591484306914810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + A006918 n

end

end A213483.P829591484306914810

noncomputable section

/-- A213483: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| >= w+x+y.

Offset 0, canonical program `A213483.P829591484306914810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213483 (n : ℕ) : ℤ :=
  A213483.P829591484306914810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213491.P5074121872333072312

`(n+1)^3-A213490(n)`
-/

namespace A213491.P5074121872333072312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213490 n

end

end A213491.P5074121872333072312

noncomputable section

/-- A213491: Number of (w,x,y) with all terms in {0,...,n} and the numbers w,x,y,|w-x|,|x-y| not distinct.

Offset 0, canonical program `A213491.P5074121872333072312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213491 (n : ℕ) : ℤ :=
  A213491.P5074121872333072312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213496.P2399231074337002066

`(n+1)^3-A213399(n)`
-/

namespace A213496.P2399231074337002066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213399 n

end

end A213496.P2399231074337002066

noncomputable section

/-- A213496: Number of (w,x,y) with all terms in {0,...,n} and x != max(|w-x|,|x-y|).

Offset 0, canonical program `A213496.P2399231074337002066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213496 (n : ℕ) : ℤ :=
  A213496.P2399231074337002066.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213499.P9188218732491846836

`(n+1)^3-A213497(n)`
-/

namespace A213499.P9188218732491846836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213497 n

end

end A213499.P9188218732491846836

noncomputable section

/-- A213499: Number of (w,x,y) with all terms in {0,...,n} and w != min(|w-x|, |x-y|).

Offset 0, canonical program `A213499.P9188218732491846836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213499 (n : ℕ) : ℤ :=
  A213499.P9188218732491846836.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213501.P17593753589577986138

`(n+1)^3-A213395(n)`
-/

namespace A213501.P17593753589577986138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213395 n

end

end A213501.P17593753589577986138

noncomputable section

/-- A213501: Number of (w,x,y) with all terms in {0,...,n} and w != max(|w-x|, |x-y|).

Offset 0, canonical program `A213501.P17593753589577986138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213501 (n : ℕ) : ℤ :=
  A213501.P17593753589577986138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213680.P15146379615030054354

`3*A002812(n)`
-/

namespace A213680.P15146379615030054354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002812 n

end

end A213680.P15146379615030054354

noncomputable section

/-- A213680: a(n) = 2*a(n-1)^2/3-3 with a(0)=6.

Offset 0, canonical program `A213680.P15146379615030054354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213680 (n : ℕ) : ℤ :=
  A213680.P15146379615030054354.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213937.P14672044274802373282

`1+A002627(n)`
-/

namespace A213937.P14672044274802373282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002627 n

end

end A213937.P14672044274802373282

noncomputable section

/-- A213937: Row sums a(n) of triangle A213936: number of representative necklaces with n beads (C_N symmetry) corresponding to all color signatures given by the partitions [1^n], [2,1^(n-2)], ..., [n-1,1], [n].

Offset 1, canonical program `A213937.P14672044274802373282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213937 (n : ℕ) : ℤ :=
  A213937.P14672044274802373282.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214206.P17982102642528008045

`A003056(14*n)`
-/

namespace A214206.P17982102642528008045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (14 * n)

end

end A214206.P17982102642528008045

noncomputable section

/-- A214206: a(n) = largest m such that m*(m+1)/2 <= 14*n.

Offset 0, canonical program `A214206.P17982102642528008045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214206 (n : ℕ) : ℤ :=
  A214206.P17982102642528008045.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214206.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214221.P7223737203354158173

`A000032(A000578(n))`
-/

namespace A214221.P7223737203354158173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000578 n).toNat

end

end A214221.P7223737203354158173

noncomputable section

/-- A214221: (n^3)-th Lucas number (beginning at 2).

Offset 0, canonical program `A214221.P7223737203354158173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214221 (n : ℕ) : ℤ :=
  A214221.P7223737203354158173.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214260.P4849006558465402343

`A052980(n+1)-A052980(n)`
-/

namespace A214260.P4849006558465402343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) - A052980 n

end

end A214260.P4849006558465402343

noncomputable section

/-- A214260: First differences of A052980.

Offset 0, canonical program `A214260.P4849006558465402343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214260 (n : ℕ) : ℤ :=
  A214260.P4849006558465402343.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214441.P16344468953018238025

`A000108(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214441.P16344468953018238025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n ^ 2)

end

end A214441.P16344468953018238025

noncomputable section

/-- A214441: Catalan numbers at square positions: a(n) = A000108(n^2).

Offset 0, canonical program `A214441.P16344468953018238025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214441 (n : ℕ) : ℤ :=
  A214441.P16344468953018238025.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214729.P16955039997608405851

`A001654(n+3)-2*(2+(-1)^n)`
-/

namespace A214729.P16955039997608405851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 3) - 2 * (2 + (-1) ^ n)

end

end A214729.P16955039997608405851

noncomputable section

/-- A214729: Member m=6 of the m-family of sums b(m,n) = Sum_{k=0..n} F(k+m)*F(k), m >= 0, n >= 0, with the Fibonacci numbers F.

Offset 0, canonical program `A214729.P16955039997608405851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214729 (n : ℕ) : ℤ :=
  A214729.P16955039997608405851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214855.P6881747230350802381

`A000045(15*n)`
-/

namespace A214855.P6881747230350802381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (15 * n)

end

end A214855.P6881747230350802381

noncomputable section

/-- A214855: Fibonacci numbers divisible by 10.

Offset 1, canonical program `A214855.P6881747230350802381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214855 (n : ℕ) : ℤ :=
  A214855.P6881747230350802381.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214936.P8604888565439129316

`a(n-1)*A070939(n)` with `a(0)=1`
-/

namespace A214936.P8604888565439129316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A070939 n

end

end A214936.P8604888565439129316

noncomputable section

/-- A214936: a(0) = 1, a(n) = a(n - 1) * (length of binary representation of n).

Offset 0, canonical program `A214936.P8604888565439129316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214936 (n : ℕ) : ℤ :=
  A214936.P8604888565439129316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215602.P476152105316514316

`A002878(n)+(-1)^n`
-/

namespace A215602.P476152105316514316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + (-1) ^ n

end

end A215602.P476152105316514316

noncomputable section

/-- A215602: a(n) = L(n)*L(n+1), where L = A000032 (Lucas numbers).

Offset 0, canonical program `A215602.P476152105316514316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215602 (n : ℕ) : ℤ :=
  A215602.P476152105316514316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215931.P4877088421483359908

`A000045(2*n+2)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215931.P4877088421483359908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 2) * A000108 n

end

end A215931.P4877088421483359908

noncomputable section

/-- A215931: Product of Fibonacci and Catalan numbers: a(n) = A000045(2*n+2)*A000108(n).

Offset 0, canonical program `A215931.P4877088421483359908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215931 (n : ℕ) : ℤ :=
  A215931.P4877088421483359908.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216541.P15065327928894304431

`A000032(n+1)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216541.P15065327928894304431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000108 n

end

end A216541.P15065327928894304431

noncomputable section

/-- A216541: Product of Lucas and Catalan numbers: a(n) = A000032(n+1)*A000108(n).

Offset 0, canonical program `A216541.P15065327928894304431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216541 (n : ℕ) : ℤ :=
  A216541.P15065327928894304431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216779.P8327685950018764789

`(A000166(n)+n-1)/2`
-/

namespace A216779.P8327685950018764789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n + ((n : ℤ) - 1) : ℚ) / 2

end

end A216779.P8327685950018764789

noncomputable section

/-- A216779: Number of derangements on n elements with an odd number of cycles.

Offset 0, canonical program `A216779.P8327685950018764789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216779.P8327685950018764789.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217238.P316597164882732273

`A000142(n)*A007489(n)`
-/

namespace A217238.P316597164882732273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A007489 n

end

end A217238.P316597164882732273

noncomputable section

/-- A217238: a(n) = n! * Sum_{k=1..n} k!.

Offset 0, canonical program `A217238.P316597164882732273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217238 (n : ℕ) : ℤ :=
  A217238.P316597164882732273.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217360.P18313722497906122328

`8^n*A060706(n)/A100089(n)`
-/

namespace A217360.P18313722497906122328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) * A060706 n : ℚ) / (A100089 n : ℚ)

end

end A217360.P18313722497906122328

noncomputable section

/-- A217360: a(n) = 2^n*binomial(4*n, n)/(3*n+1).

Offset 0, canonical program `A217360.P18313722497906122328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217360.P18313722497906122328.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217562.P6984103525710680428

`2*A047201(n+1)`
-/

namespace A217562.P6984103525710680428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047201 (n + 1)

end

end A217562.P6984103525710680428

noncomputable section

/-- A217562: Even numbers not divisible by 5.

Offset 1, canonical program `A217562.P6984103525710680428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217562 (n : ℕ) : ℤ :=
  A217562.P6984103525710680428.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217758.P12814183908713255576

`(A075841(n+1)²-5)/4`
-/

namespace A217758.P12814183908713255576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075841 (n + 1) ^ 2 - 5 : ℚ) / 4

end

end A217758.P12814183908713255576

noncomputable section

/-- A217758: Triangular numbers of the form k^2 + k - 1.

Offset 1, canonical program `A217758.P12814183908713255576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217758 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217758.P12814183908713255576.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217778.P6469927789928852257

`A081567(n)-A094865(n)`
-/

namespace A217778.P6469927789928852257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n - A094865 n

end

end A217778.P6469927789928852257

noncomputable section

/-- A217778: Expansion of (1-x)^2*(1-3*x)/((1-3*x+x^2)*(1-5*x+5*x^2)).

Offset 0, canonical program `A217778.P6469927789928852257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217778 (n : ℕ) : ℤ :=
  A217778.P6469927789928852257.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218441.P17376313493192679053

`A000108(n)*A001764(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218441.P17376313493192679053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001764 n

end

end A218441.P17376313493192679053

noncomputable section

/-- A218441: a(n) = A000108(n)*A001764(n).

Offset 0, canonical program `A218441.P17376313493192679053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218441 (n : ℕ) : ℤ :=
  A218441.P17376313493192679053.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184676.P9844443019436980311

`A198442(n+3)-1`
-/

namespace A184676.P9844443019436980311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 3) - 1

end

end A184676.P9844443019436980311

noncomputable section

/-- A184676: a(n) = n + floor((n/2-1/(4*n))^2); complement of A183867.

Offset 1, canonical program `A184676.P9844443019436980311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184676 (n : ℕ) : ℤ :=
  A184676.P9844443019436980311.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186339.P16662494727419453789

`2^A320259(n)`
-/

namespace A186339.P16662494727419453789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A320259 n : ℤ)

end

end A186339.P16662494727419453789

noncomputable section

/-- A186339: a(n) = A006125(n+1) * 2^A001840(n).

Offset 0, canonical program `A186339.P16662494727419453789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186339.P16662494727419453789.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188538.P3370076872275120356

`n+3+A264147(n+1)-A000032(n+1)`
-/

namespace A188538.P3370076872275120356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (3 + A264147 (n + 1)) - A000032 (n + 1)

end

end A188538.P3370076872275120356

noncomputable section

/-- A188538: Row sums of triangle A156070.

Offset 0, canonical program `A188538.P3370076872275120356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188538 (n : ℕ) : ℤ :=
  A188538.P3370076872275120356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193053.P13125292467675758331

`A195020(n)+n+1`
-/

namespace A193053.P13125292467675758331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 n + (n + 1 : ℤ)

end

end A193053.P13125292467675758331

noncomputable section

/-- A193053: a(n) = (14*n*(n+3) + (2*n-5)*(-1)^n + 21)/16.

Offset 0, canonical program `A193053.P13125292467675758331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193053 (n : ℕ) : ℤ :=
  A193053.P13125292467675758331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202829.P12629825750650194539

`A202830(n)²`
-/

namespace A202829.P12629825750650194539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202830 n ^ 2

end

end A202829.P12629825750650194539

noncomputable section

/-- A202829: Expansion of e.g.f.: exp(4*x/(1-3*x)) / sqrt(1-9*x^2).

Offset 0, canonical program `A202829.P12629825750650194539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202829 (n : ℕ) : ℤ :=
  A202829.P12629825750650194539.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202831.P1022623184322391386

`A202832(n)²`
-/

namespace A202831.P1022623184322391386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202832 n ^ 2

end

end A202831.P1022623184322391386

noncomputable section

/-- A202831: Expansion of e.g.f.: exp(4*x/(1-5*x)) / sqrt(1-25*x^2).

Offset 0, canonical program `A202831.P1022623184322391386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202831 (n : ℕ) : ℤ :=
  A202831.P1022623184322391386.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202833.P8485159581819150188

`A202834(n)²`
-/

namespace A202833.P8485159581819150188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202834 n ^ 2

end

end A202833.P8485159581819150188

noncomputable section

/-- A202833: Expansion of e.g.f.: exp(9*x/(1-x)) / sqrt(1-x^2).

Offset 0, canonical program `A202833.P8485159581819150188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202833 (n : ℕ) : ℤ :=
  A202833.P8485159581819150188.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202836.P5610617411441892324

`A202837(n)²`
-/

namespace A202836.P5610617411441892324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202837 n ^ 2

end

end A202836.P5610617411441892324

noncomputable section

/-- A202836: Expansion of e.g.f.: exp(9*x/(1-4*x)) / sqrt(1-16*x^2).

Offset 0, canonical program `A202836.P5610617411441892324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202836 (n : ℕ) : ℤ :=
  A202836.P5610617411441892324.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A202878.P2254645665031397715

`A202879(n)²`
-/

namespace A202878.P2254645665031397715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202879 n ^ 2

end

end A202878.P2254645665031397715

noncomputable section

/-- A202878: Expansion of e.g.f.: exp(16*x/(1-x)) / sqrt(1-x^2).

Offset 0, canonical program `A202878.P2254645665031397715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202878 (n : ℕ) : ℤ :=
  A202878.P2254645665031397715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A202878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216431.P5274582083580161709

`A233272(a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A216431.P5274582083580161709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A233272 (a (n - 1)).toNat

end

end A216431.P5274582083580161709

noncomputable section

/-- A216431: a(0)=0; thereafter a(n+1) = a(n) + 1 + number of 0's in binary representation of a(n), counted with A023416.

Offset 0, canonical program `A216431.P5274582083580161709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216431 (n : ℕ) : ℤ :=
  A216431.P5274582083580161709.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184042.P2967297191868889764

`A183981(n+3)+5`
-/

namespace A184042.P2967297191868889764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 3) + 5

end

end A184042.P2967297191868889764

noncomputable section

/-- A184042: 1/9 the number of (n+1) X 4 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184042.P2967297191868889764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184042 (n : ℕ) : ℤ :=
  A184042.P2967297191868889764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184043.P4071349188653570990

`A183983(n+3)-5`
-/

namespace A184043.P4071349188653570990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 3) - 5

end

end A184043.P4071349188653570990

noncomputable section

/-- A184043: 1/9 the number of (n+1) X 5 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184043.P4071349188653570990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184043 (n : ℕ) : ℤ :=
  A184043.P4071349188653570990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184118.P8522173854330713538

`∑[abs(Δ[A001954(n)])]`
-/

namespace A184118.P8522173854330713538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P8522173854330713538

noncomputable section

/-- A184118: Upper s(n)-Wythoff sequence, where s(n) = 2n + 1.

Offset 1, canonical program `A184118.P8522173854330713538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184118 (n : ℕ) : ℤ :=
  A184118.P8522173854330713538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184119.P9188677157218110840

`A001954(n)+1`
-/

namespace A184119.P9188677157218110840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n + 1

end

end A184119.P9188677157218110840

noncomputable section

/-- A184119: Upper s(n)-Wythoff sequence, where s(n) = 2n - 1; complement of A136119.

Offset 1, canonical program `A184119.P9188677157218110840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184119 (n : ℕ) : ℤ :=
  A184119.P9188677157218110840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184138.P16659584735667142756

`A145129(n+1)-∑[∑[A000124(n)]]`
-/

namespace A184138.P16659584735667142756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184138.P16659584735667142756

noncomputable section

/-- A184138: Number of n X 3 binary arrays with rows and columns in nondecreasing order.

Offset 1, canonical program `A184138.P16659584735667142756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A184138 (n : ℕ) : ℤ :=
  A184138.P16659584735667142756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A184138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184480.P6499280255303279041

`A080600(n+1)-(2*n+3)`
-/

namespace A184480.P6499280255303279041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 1) - (2 * n + 3 : ℤ)

end

end A184480.P6499280255303279041

noncomputable section

/-- A184480: Lower s-Wythoff sequence, where s(n)=3n. Complement of A001956.

Offset 1, canonical program `A184480.P6499280255303279041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184480 (n : ℕ) : ℤ :=
  A184480.P6499280255303279041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184515.P9567241075721048045

`A184514(n+1)+A004767(n)`
-/

namespace A184515.P9567241075721048045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184514 (n + 1) + A004767 n

end

end A184515.P9567241075721048045

noncomputable section

/-- A184515: Upper s-Wythoff sequence, where s=4n-1. Complement of A184514.

Offset 1, canonical program `A184515.P9567241075721048045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184515 (n : ℕ) : ℤ :=
  A184515.P9567241075721048045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184589.P13295183854008059946

`abs(1-A022843(n+1))`
-/

namespace A184589.P13295183854008059946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A022843 (n + 1)|

end

end A184589.P13295183854008059946

noncomputable section

/-- A184589: floor(n*e-1); complement of A184590.

Offset 1, canonical program `A184589.P13295183854008059946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184589 (n : ℕ) : ℤ :=
  A184589.P13295183854008059946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184590.P14854168015249472107

`comp[A022843(n)-2]+1`
-/

namespace A184590.P14854168015249472107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184590.P14854168015249472107

noncomputable section

/-- A184590: floor[(n*e+1)/(e-1)]; complement of A184589.

Offset 1, canonical program `A184590.P14854168015249472107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184590 (n : ℕ) : ℤ :=
  (A184590.P14854168015249472107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184591.P8380921458551687494

`abs(A022844(n+1)-(n+2))`
-/

namespace A184591.P8380921458551687494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022844 (n + 1) - (n + 2 : ℤ)|

end

end A184591.P8380921458551687494

noncomputable section

/-- A184591: a(n) = floor(n*(Pi-1)-1); complement of A184592.

Offset 1, canonical program `A184591.P8380921458551687494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184591 (n : ℕ) : ℤ :=
  A184591.P8380921458551687494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184626.P17588970043243414211

`A004526(A198268(n+1))`
-/

namespace A184626.P17588970043243414211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198268 (n + 1)).toNat

end

end A184626.P17588970043243414211

noncomputable section

/-- A184626: floor(nr+h), where r=sqrt(3), h=1/4; complement of A184627.

Offset 1, canonical program `A184626.P17588970043243414211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2886 terms. -/
def A184626 (n : ℕ) : ℤ :=
  A184626.P17588970043243414211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2886 terms. -/
def A184626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184638.P10162494678616007917

`abs(1-A022847(n+1))`
-/

namespace A184638.P10162494678616007917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A022847 (n + 1)|

end

end A184638.P10162494678616007917

noncomputable section

/-- A184638: floor(nr+h), where r=sqrt(3), h=-1/2; complement of A184653.

Offset 1, canonical program `A184638.P10162494678616007917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184638 (n : ℕ) : ℤ :=
  A184638.P10162494678616007917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184653.P5190902005474955621

`ceil(A180124(n+1)/2)+n+1`
-/

namespace A184653.P5190902005474955621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180124 (n + 1) : ℚ) / 2⌉ + (n + 1 : ℤ)

end

end A184653.P5190902005474955621

noncomputable section

/-- A184653: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/2; complement of A184638.

Offset 1, canonical program `A184653.P5190902005474955621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184653 (n : ℕ) : ℤ :=
  A184653.P5190902005474955621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184675.P10600082908365965051

`A183869(n)+1`
-/

namespace A184675.P10600082908365965051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n + 1

end

end A184675.P10600082908365965051

noncomputable section

/-- A184675: a(n) = n + floor(sqrt(n) + sqrt(n+1)); complement of A184674.

Offset 1, canonical program `A184675.P10600082908365965051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184675 (n : ℕ) : ℤ :=
  A184675.P10600082908365965051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184736.P3648179815715570266

`A022851(n+1)-(n+2)`
-/

namespace A184736.P3648179815715570266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022851 (n + 1) - (n + 2 : ℤ)

end

end A184736.P3648179815715570266

noncomputable section

/-- A184736: floor(nr+h), where r=-1+2^(3/2), h=-1/2; complement of A184735.

Offset 1, canonical program `A184736.P3648179815715570266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184736 (n : ℕ) : ℤ :=
  A184736.P3648179815715570266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184738.P12317671310958345823

`∑[Δ[A022848(n)]-1]`
-/

namespace A184738.P12317671310958345823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184738.P12317671310958345823

noncomputable section

/-- A184738: floor(nr+h), where r=-1+sqrt(5), h=1/2; complement of A184735.

Offset 1, canonical program `A184738.P12317671310958345823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184738 (n : ℕ) : ℤ :=
  A184738.P12317671310958345823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184739.P7836081269569052161

`A184586(n+1)+3*n+2`
-/

namespace A184739.P7836081269569052161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1) + (3 * n + 2 : ℤ)

end

end A184739.P7836081269569052161

noncomputable section

/-- A184739: floor(n*s+h-h*s), where s=3+sqrt(5), h=1/2; complement of A184738.

Offset 1, canonical program `A184739.P7836081269569052161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184739 (n : ℕ) : ℤ :=
  A184739.P7836081269569052161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184745.P12485344530230035149

`A060644(n)+1+n`
-/

namespace A184745.P12485344530230035149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 n + 1 + (n : ℤ)

end

end A184745.P12485344530230035149

noncomputable section

/-- A184745: floor(n*(e-1/2)+1/2); complement of A184744.

Offset 1, canonical program `A184745.P12485344530230035149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184745 (n : ℕ) : ℤ :=
  A184745.P12485344530230035149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184747.P12092686040311310565

`A184586(n+1)+1+n`
-/

namespace A184747.P12092686040311310565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1) + 1 + (n : ℤ)

end

end A184747.P12092686040311310565

noncomputable section

/-- A184747: a(n) = floor(n*s+h-h*s), where s=1+sqrt(5), h=1/2; complement of A184746.

Offset 1, canonical program `A184747.P12092686040311310565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184747 (n : ℕ) : ℤ :=
  A184747.P12092686040311310565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184748.P35318513119021768

`(4*n+3)%A022848(n+1)`
-/

namespace A184748.P35318513119021768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n + 3 : ℤ) (A022848 (n + 1))

end

end A184748.P35318513119021768

noncomputable section

/-- A184748: a(n) = floor(n*r + h), where r = 4 - sqrt(5), h = -1/2. Also, complement of A184749.

Offset 1, canonical program `A184748.P35318513119021768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184748 (n : ℕ) : ℤ :=
  A184748.P35318513119021768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184808.P9868829150126178100

`A171974(n+1)+1+n`
-/

namespace A184808.P9868829150126178100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + 1 + (n : ℤ)

end

end A184808.P9868829150126178100

noncomputable section

/-- A184808: n + floor(r*n), where r = sqrt(2/3); complement of A184809.

Offset 1, canonical program `A184808.P9868829150126178100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184808 (n : ℕ) : ℤ :=
  A184808.P9868829150126178100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184884.P3036636223459627772

`A079972(2*n)`
-/

namespace A184884.P3036636223459627772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079972 (2 * n)

end

end A184884.P3036636223459627772

noncomputable section

/-- A184884: Diagonal sums of number triangle A184883.

Offset 0, canonical program `A184884.P3036636223459627772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184884 (n : ℕ) : ℤ :=
  A184884.P3036636223459627772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184939.P17998620125503061143

`eq[1, A083375(n+1)%2]+1`
-/

namespace A184939.P17998620125503061143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083375 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184939.P17998620125503061143

noncomputable section

/-- A184939: From the base sequence of the positive integers, keep the first two, remove the next three, keep the next five, remove the next seven, ..., block lengths determined by the prime numbers.

Offset 1, canonical program `A184939.P17998620125503061143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184939 (n : ℕ) : ℤ :=
  (A184939.P17998620125503061143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184976.P5743174411028907580

`-∑[∑[-Δ[A022843(n)]]]`
-/

namespace A184976.P5743174411028907580
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184976.P5743174411028907580

noncomputable section

/-- A184976: a(n) = [e]+[2*e]+...+[n*e], where []=floor.

Offset 1, canonical program `A184976.P5743174411028907580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184976 (n : ℕ) : ℤ :=
  A184976.P5743174411028907580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185021.P7780383072814977479

`a(A004526(n))*A056040(n)` with `a(0)=1`
-/

namespace A185021.P7780383072814977479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A056040 n

end

end A185021.P7780383072814977479

noncomputable section

/-- A185021: a(n) = h(1)*h(2)*...*h(n), where h(i) = i/[g(i/2)*g(i/4)*g(i/8)*...] and g(x) = x if x is an integer and g(x) = 1 otherwise.

Offset 0, canonical program `A185021.P7780383072814977479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A185021 (n : ℕ) : ℤ :=
  A185021.P7780383072814977479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A185021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185047.P18180775153408804782

`A155579(n+1)/3`
-/

namespace A185047.P18180775153408804782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155579 (n + 1) : ℚ) / 3

end

end A185047.P18180775153408804782

noncomputable section

/-- A185047: Expansion of 2F1( [1, 4/3]; [3]; 9*x).

Offset 0, canonical program `A185047.P18180775153408804782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A185047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185047.P18180775153408804782.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A185047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185252.P13578347679694665257

`n*A027306((2*n)%(n+1))`
-/

namespace A185252.P13578347679694665257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027306 (2 * n % (n + 1))

end

end A185252.P13578347679694665257

noncomputable section

/-- A185252: a(n) = Sum_{k=0..ceiling(n/2)} k*binomial(n,k).

Offset 0, canonical program `A185252.P13578347679694665257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185252 (n : ℕ) : ℤ :=
  A185252.P13578347679694665257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185302.P10911868235339170465

`∑{d}[n+1, #*A000203((n+1)/#)^#]`
-/

namespace A185302.P10911868235339170465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A185302.P10911868235339170465

noncomputable section

/-- A185302: a(n) = Sum_{d|n} d*sigma(n/d)^d.

Offset 1, canonical program `A185302.P10911868235339170465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A185302 (n : ℕ) : ℤ :=
  A185302.P10911868235339170465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A185302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185353.P9660579593036902322

`∑[A056849(n+1)]%10`
-/

namespace A185353.P9660579593036902322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A185353.P9660579593036902322

noncomputable section

/-- A185353: a(n) = (1^1 + 2^2 . . . + n^n) mod 10.

Offset 1, canonical program `A185353.P9660579593036902322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185353 (n : ℕ) : ℤ :=
  A185353.P9660579593036902322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185381.P9864076903114994448

`A103609(A130568(n))`
-/

namespace A185381.P9864076903114994448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A130568 n).toNat

end

end A185381.P9864076903114994448

noncomputable section

/-- A185381: a(n) = Fibonacci(k) where k = floor( n*(1+sqrt(5))/2 ).

Offset 0, canonical program `A185381.P9864076903114994448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A185381 (n : ℕ) : ℤ :=
  A185381.P9864076903114994448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A185381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185395.P13652728076347247808

`A005899(n)-A299272(n)`
-/

namespace A185395.P13652728076347247808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A299272 n

end

end A185395.P13652728076347247808

noncomputable section

/-- A185395: a(3n) = n^2, a(3n+1) = a(3n+2) = 3*n*(n+1)/2.

Offset 0, canonical program `A185395.P13652728076347247808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185395 (n : ℕ) : ℤ :=
  A185395.P13652728076347247808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185542.P16826996703818466053

`A000217(A155013(n+1))`
-/

namespace A185542.P16826996703818466053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A155013 (n + 1)).toNat

end

end A185542.P16826996703818466053

noncomputable section

/-- A185542: a(n) = m*(m+1)/2, where m = floor(n^(5/2)).

Offset 1, canonical program `A185542.P16826996703818466053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185542 (n : ℕ) : ℤ :=
  A185542.P16826996703818466053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185590.P1060238962198747214

`A006369(a(n-1))` with `a(0)=44`
-/

namespace A185590.P1060238962198747214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [44] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A185590.P1060238962198747214

noncomputable section

/-- A185590: Iterate the map in A006369 starting at 44.

Offset 1, canonical program `A185590.P1060238962198747214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185590 (n : ℕ) : ℤ :=
  A185590.P1060238962198747214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185593.P777315029682498235

`A000217(A077121(n+1))-1`
-/

namespace A185593.P777315029682498235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077121 (n + 1)).toNat - 1

end

end A185593.P777315029682498235

noncomputable section

/-- A185593: a(n) = floor(n^(3/2))*floor(3+n^(3/2))/2.

Offset 1, canonical program `A185593.P777315029682498235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 965 terms. -/
def A185593 (n : ℕ) : ℤ :=
  A185593.P777315029682498235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 965 terms. -/
def A185593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185594.P14557115003407917742

`∑[A016789(n)]-A008621(A065033(n))`
-/

namespace A185594.P14557115003407917742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008621 (A065033 n).toNat

end

end A185594.P14557115003407917742

noncomputable section

/-- A185594: a(n) = floor((n^2+n)^(3/2)-n^3).

Offset 1, canonical program `A185594.P14557115003407917742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185594 (n : ℕ) : ℤ :=
  A185594.P14557115003407917742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185597.P3479585361684791551

`floor(sqrt(A011379(n)))%(∑[n+3]+1)`
-/

namespace A185597.P3479585361684791551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A011379 n)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A185597.P3479585361684791551

noncomputable section

/-- A185597: a(n) = floor(n^(3/2) - n^(1/2)); complement of A185598.

Offset 1, canonical program `A185597.P3479585361684791551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185597 (n : ℕ) : ℤ :=
  A185597.P3479585361684791551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185715.P10679573485318822552

`∑[A185709(n+1)]`
-/

namespace A185715.P10679573485318822552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P10679573485318822552

noncomputable section

/-- A185715: a(n) = number of primes <= n that end in 9.

Offset 1, canonical program `A185715.P10679573485318822552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185715 (n : ℕ) : ℤ :=
  A185715.P10679573485318822552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185727.P3313924342085274439

`A106610(A007494(n))`
-/

namespace A185727.P3313924342085274439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A007494 n).toNat

end

end A185727.P3313924342085274439

noncomputable section

/-- A185727: Integers of the form A145911(k)/(k+1) sorted along increasing k.

Offset 0, canonical program `A185727.P3313924342085274439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185727 (n : ℕ) : ℤ :=
  A185727.P3313924342085274439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185869.P6524959697424845596

`abs(Δ[n²]+A002024(n+1)²)`
-/

namespace A185869.P6524959697424845596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + A002024 (n + 1) ^ 2|

end

end A185869.P6524959697424845596

noncomputable section

/-- A185869: (Odd,even)-polka dot array in the natural number array A000027; read by antidiagonals.

Offset 1, canonical program `A185869.P6524959697424845596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185869 (n : ℕ) : ℤ :=
  A185869.P6524959697424845596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185963.P16951610829913740184

`A233581(n)+∑[A233581(n)]-1`
-/

namespace A185963.P16951610829913740184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233581 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A185963.P16951610829913740184

noncomputable section

/-- A185963: Row sums of number triangle A185962.

Offset 0, canonical program `A185963.P16951610829913740184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. -/
def A185963 (n : ℕ) : ℤ :=
  A185963.P16951610829913740184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. -/
def A185963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186038.P6899057204950467925

`val(A002426(n), 3)`
-/

namespace A186038.P6899057204950467925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002426 n).toNat 3

end

end A186038.P6899057204950467925

noncomputable section

/-- A186038: a(n) = log_3(A002426(n)/numerator(A002426(n)/3^n)).

Offset 0, canonical program `A186038.P6899057204950467925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A186038 (n : ℕ) : ℤ :=
  (A186038.P6899057204950467925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A186038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186042.P1830360839014229339

`comp[A007775(n+1)-7]`
-/

namespace A186042.P1830360839014229339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186042.P1830360839014229339

noncomputable section

/-- A186042: Numbers of the form 2*k + 1, 3*k + 2, or 5*k + 3.

Offset 1, canonical program `A186042.P1830360839014229339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186042 (n : ℕ) : ℤ :=
  (A186042.P1830360839014229339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186098.P11267662135029825083

`p?[A095116(n+1)]`
-/

namespace A186098.P11267662135029825083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P11267662135029825083

noncomputable section

/-- A186098: Primes removed by sieve generating A095117.

Offset 1, canonical program `A186098.P11267662135029825083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A186098 (n : ℕ) : ℤ :=
  A186098.P11267662135029825083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A186098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186147.P17166969586232662891

`∑[A144968(n)]+n`
-/

namespace A186147.P17166969586232662891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186147.P17166969586232662891

noncomputable section

/-- A186147: Rank of n^3 when {i^2: i>=1} and {j^3: j>=1} are jointly ranked with i^2 after j^3 when i^2=j^3. Complement of A135674.

Offset 1, canonical program `A186147.P17166969586232662891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186147 (n : ℕ) : ℤ :=
  A186147.P17166969586232662891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186148.P14977839059481851237

`ceil(∑[A144968(n)/2])+n`
-/

namespace A186148.P14977839059481851237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144968 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + (n : ℤ)

end

end A186148.P14977839059481851237

noncomputable section

/-- A186148: Rank of (1/4)n^3 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 before j^2 when (1/4)i^3=j^2. Complement of A186149.

Offset 1, canonical program `A186148.P14977839059481851237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186148 (n : ℕ) : ℤ :=
  A186148.P14977839059481851237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186150.P950085431451964586

`floor(∑[A035936(n)+2]/2)`
-/

namespace A186150.P950085431451964586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A186150.P950085431451964586

noncomputable section

/-- A186150: Rank of (1/4)n^3 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 after j^2 when (1/4)i^3=j^2. Complement of A186151.

Offset 1, canonical program `A186150.P950085431451964586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186150 (n : ℕ) : ℤ :=
  A186150.P950085431451964586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186155.P11739038206239790895

`A186153(n+1)-A010057(n+1)`
-/

namespace A186155.P11739038206239790895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186153 (n + 1) - A010057 (n + 1)

end

end A186155.P11739038206239790895

noncomputable section

/-- A186155: Rank of n^2 when {(1/8)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/8)i^3 after j^2 when (1/8)i^3=j^2. Complement of A186154.

Offset 1, canonical program `A186155.P11739038206239790895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186155 (n : ℕ) : ℤ :=
  A186155.P11739038206239790895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186220.P16755767740802634993

`A214857(n+1)+n`
-/

namespace A186220.P16755767740802634993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 1) + (n : ℤ)

end

end A186220.P16755767740802634993

noncomputable section

/-- A186220: Adjusted joint rank sequence of (g(i)) and (f(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186219.

Offset 1, canonical program `A186220.P16755767740802634993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186220 (n : ℕ) : ℤ :=
  A186220.P16755767740802634993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186221.P2103133722126973970

`A061288(n+1)+1+n`
-/

namespace A186221.P2103133722126973970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (n + 1) + 1 + (n : ℤ)

end

end A186221.P2103133722126973970

noncomputable section

/-- A186221: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186222.

Offset 1, canonical program `A186221.P2103133722126973970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186221 (n : ℕ) : ℤ :=
  A186221.P2103133722126973970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186225.P9074722489243742899

`A008620(A180124(n+1)-n)+n`
-/

namespace A186225.P9074722489243742899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A180124 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A186225.P9074722489243742899

noncomputable section

/-- A186225: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and pentagonal numbers. Complement of A186226.

Offset 1, canonical program `A186225.P9074722489243742899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186225 (n : ℕ) : ℤ :=
  A186225.P9074722489243742899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186288.P8673100312429212378

`comp[floor(sqrt(A000326(n))+n)]`
-/

namespace A186288.P8673100312429212378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000326 n : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186288.P8673100312429212378

noncomputable section

/-- A186288: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186289.

Offset 1, canonical program `A186288.P8673100312429212378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186288 (n : ℕ) : ℤ :=
  (A186288.P8673100312429212378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186289.P4937028171788868200

`floor(sqrt(A000326(n+1)))+n+1`
-/

namespace A186289.P4937028171788868200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000326 (n + 1)) + (n + 1 : ℤ)

end

end A186289.P4937028171788868200

noncomputable section

/-- A186289: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186288.

Offset 1, canonical program `A186289.P4937028171788868200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186289 (n : ℕ) : ℤ :=
  A186289.P4937028171788868200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186293.P900579189785350023

`(A007519(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186293.P900579189785350023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007519 (n + 1) - 1 : ℚ) / 2

end

end A186293.P900579189785350023

noncomputable section

/-- A186293: a(n) = (A007519(n)-1)/2.

Offset 1, canonical program `A186293.P900579189785350023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186293.P900579189785350023.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186294.P1128626915274176743

`(A007519(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186294.P1128626915274176743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007519 (n + 1) + 1 : ℚ) / 2

end

end A186294.P1128626915274176743

noncomputable section

/-- A186294: (A007519(n)+1)/2.

Offset 1, canonical program `A186294.P1128626915274176743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186294.P1128626915274176743.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186295.P16210222267034878699

`A007519(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186295.P16210222267034878699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) - 2

end

end A186295.P16210222267034878699

noncomputable section

/-- A186295: A007519(n)-2.

Offset 1, canonical program `A186295.P16210222267034878699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186295 (n : ℕ) : ℤ :=
  A186295.P16210222267034878699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186296.P12004062648873151931

`(A007520(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186296.P12004062648873151931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007520 (n + 1) + 1 : ℚ) / 2

end

end A186296.P12004062648873151931

noncomputable section

/-- A186296: ( A007520(n)+1 )/2.

Offset 1, canonical program `A186296.P12004062648873151931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186296.P12004062648873151931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186298.P971007839183561830

`A007520(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186298.P971007839183561830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1) - 2

end

end A186298.P971007839183561830

noncomputable section

/-- A186298: A007520(n)-2.

Offset 1, canonical program `A186298.P971007839183561830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186298 (n : ℕ) : ℤ :=
  A186298.P971007839183561830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186299.P12069743824327385336

`(A007521(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186299.P12069743824327385336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007521 (n + 1) - 1 : ℚ) / 2

end

end A186299.P12069743824327385336

noncomputable section

/-- A186299: (A007521(n)-1)/2.

Offset 1, canonical program `A186299.P12069743824327385336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186299.P12069743824327385336.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186301.P7683703900443366685

`A007521(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186301.P7683703900443366685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1) - 2

end

end A186301.P7683703900443366685

noncomputable section

/-- A186301: a(n) = A007521(n) - 2.

Offset 1, canonical program `A186301.P7683703900443366685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186301 (n : ℕ) : ℤ :=
  A186301.P7683703900443366685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186316.P1630878402730518717

`A184580(n+1)+1+n`
-/

namespace A186316.P1630878402730518717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184580 (n + 1) + 1 + (n : ℤ)

end

end A186316.P1630878402730518717

noncomputable section

/-- A186316: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186315.

Offset 1, canonical program `A186316.P1630878402730518717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186316 (n : ℕ) : ℤ :=
  A186316.P1630878402730518717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186320.P11072949175102014407

`comp[floor(sqrt(A000566(n))+n)]`
-/

namespace A186320.P11072949175102014407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000566 n : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186320.P11072949175102014407

noncomputable section

/-- A186320: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186321.

Offset 1, canonical program `A186320.P11072949175102014407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186320 (n : ℕ) : ℤ :=
  (A186320.P11072949175102014407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186325.P1608070430125445151

`floor(sqrt(∑[A016921(n)]))+1+n`
-/

namespace A186325.P1608070430125445151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A186325.P1608070430125445151

noncomputable section

/-- A186325: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186324.

Offset 1, canonical program `A186325.P1608070430125445151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186325 (n : ℕ) : ℤ :=
  A186325.P1608070430125445151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186328.P11830136122439441989

`A008619(A144077(n+1))+n`
-/

namespace A186328.P11830136122439441989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144077 (n + 1)).toNat + (n : ℤ)

end

end A186328.P11830136122439441989

noncomputable section

/-- A186328: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186329.

Offset 1, canonical program `A186328.P11830136122439441989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186328 (n : ℕ) : ℤ :=
  A186328.P11830136122439441989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186330.P4637361622243978588

`ceil((A186224(n+1)+n+1)/2)`
-/

namespace A186330.P4637361622243978588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186224 (n + 1) + (n : ℤ) + 1 : ℚ) / 2⌉

end

end A186330.P4637361622243978588

noncomputable section

/-- A186330: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186331.

Offset 1, canonical program `A186330.P4637361622243978588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186330 (n : ℕ) : ℤ :=
  A186330.P4637361622243978588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186331.P6947879650581704107

`A186223(Δ[n²])-n`
-/

namespace A186331.P6947879650581704107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A186331.P6947879650581704107

noncomputable section

/-- A186331: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186330.

Offset 1, canonical program `A186331.P6947879650581704107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186331 (n : ℕ) : ℤ :=
  A186331.P6947879650581704107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186354.P1694336808375307866

`A073188(n)+2+n`
-/

namespace A186354.P1694336808375307866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 n + 2 + (n : ℤ)

end

end A186354.P1694336808375307866

noncomputable section

/-- A186354: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186355.

Offset 1, canonical program `A186354.P1694336808375307866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186354 (n : ℕ) : ℤ :=
  A186354.P1694336808375307866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186389.P13848014347458583741

`∑[Δ[A000934(n)]+1]`
-/

namespace A186389.P13848014347458583741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P13848014347458583741

noncomputable section

/-- A186389: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=6i and g(j)=j(j+1)/2 (triangular number). Complement of A186390.

Offset 1, canonical program `A186389.P13848014347458583741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186389 (n : ℕ) : ℤ :=
  A186389.P13848014347458583741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186497.P7946603808634787494

`A000703(n)-3+n`
-/

namespace A186497.P7946603808634787494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n - 3 + (n : ℤ)

end

end A186497.P7946603808634787494

noncomputable section

/-- A186497: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i-2 and g(j)=j-th triangular number. Complement of A186498.

Offset 1, canonical program `A186497.P7946603808634787494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186497 (n : ℕ) : ℤ :=
  A186497.P7946603808634787494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186499.P2988238181767478112

`ceil(sqrt(A008812(n))+n)`
-/

namespace A186499.P2988238181767478112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008812 n : ℝ) + (n : ℝ)⌉

end

end A186499.P2988238181767478112

noncomputable section

/-- A186499: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186500.

Offset 1, canonical program `A186499.P2988238181767478112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186499 (n : ℕ) : ℤ :=
  A186499.P2988238181767478112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186511.P1562707888761301908

`floor(sqrt(∑[A130497(n)]))+n+1`
-/

namespace A186511.P1562707888761301908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A186511.P1562707888761301908

noncomputable section

/-- A186511: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186512.

Offset 1, canonical program `A186511.P1562707888761301908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186511 (n : ℕ) : ℤ :=
  A186511.P1562707888761301908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186515.P18183641407450854378

`2*n+1-A005378(A005206(a(n-1)))` with `a(0)=1`
-/

namespace A186515.P18183641407450854378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) - A005378 (A005206 (a (n - 1)).toNat).toNat

end

end A186515.P18183641407450854378

noncomputable section

/-- A186515: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186516.

Offset 1, canonical program `A186515.P18183641407450854378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186515 (n : ℕ) : ℤ :=
  A186515.P18183641407450854378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186539.P12101156852209407091

`∑[3-Δ[A195129(n)]]`
-/

namespace A186539.P12101156852209407091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186539.P12101156852209407091

noncomputable section

/-- A186539: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-2+3j^2. Complement of A186540.

Offset 1, canonical program `A186539.P12101156852209407091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186539 (n : ℕ) : ℤ :=
  A186539.P12101156852209407091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186541.P14767087300224336466

`floor(sqrt(A008810(n+1)))+1+n`
-/

namespace A186541.P14767087300224336466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008810 (n + 1)) + 1 + (n : ℤ)

end

end A186541.P14767087300224336466

noncomputable section

/-- A186541: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-2+3j^2. Complement of A186542.

Offset 1, canonical program `A186541.P14767087300224336466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186541 (n : ℕ) : ℤ :=
  A186541.P14767087300224336466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186542.P7026835988977880732

`floor(sqrt(3*A005563(n)))+1+n`
-/

namespace A186542.P7026835988977880732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A005563 n) + 1 + (n : ℤ)

end

end A186542.P7026835988977880732

noncomputable section

/-- A186542: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-2+3j^2. Complement of A186541.

Offset 1, canonical program `A186542.P7026835988977880732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186542 (n : ℕ) : ℤ :=
  A186542.P7026835988977880732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186546.P4788402888265503125

`floor(sqrt(A000108(n)))`
-/

namespace A186546.P4788402888265503125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000108 n)

end

end A186546.P4788402888265503125

noncomputable section

/-- A186546: Floor-Sqrt transform of Catalan numbers (A000108).

Offset 0, canonical program `A186546.P4788402888265503125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A186546 (n : ℕ) : ℤ :=
  A186546.P4788402888265503125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A186546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186679.P16230820520944405747

`A116697(n+1)-A116697(n)`
-/

namespace A186679.P16230820520944405747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 (n + 1) - A116697 n

end

end A186679.P16230820520944405747

noncomputable section

/-- A186679: First differences of A116697.

Offset 0, canonical program `A186679.P16230820520944405747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186679 (n : ℕ) : ℤ :=
  A186679.P16230820520944405747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186723.P8199349779263166728

`(n^gcd(4, A016116(n)))%10`
-/

namespace A186723.P8199349779263166728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 4 (A016116 n) % 10

end

end A186723.P8199349779263166728

noncomputable section

/-- A186723: a(n) = n^n! (mod 10).

Offset 0, canonical program `A186723.P8199349779263166728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A186723 (n : ℕ) : ℤ :=
  (A186723.P8199349779263166728.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A186723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186813.P16316920745608396461

`A134172(n)+A134172(n+1)`
-/

namespace A186813.P16316920745608396461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 n + A134172 (n + 1)

end

end A186813.P16316920745608396461

noncomputable section

/-- A186813: a(n) = n if n odd, a(2n) = 3n if n odd, a(4n) = 2n.

Offset 0, canonical program `A186813.P16316920745608396461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134172, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186813 (n : ℕ) : ℤ :=
  A186813.P16316920745608396461.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134172, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186852.P18054438384369363332

`A022144(4*n+2)²%A054275(4*n+2)`
-/

namespace A186852.P18054438384369363332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (4 * n + 2) ^ 2) (A054275 (4 * n + 2))

end

end A186852.P18054438384369363332

noncomputable section

/-- A186852: Number of 3-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

Offset 1, canonical program `A186852.P18054438384369363332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A186852 (n : ℕ) : ℤ :=
  A186852.P18054438384369363332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A186852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187036.P6676794968930008292

`(A036987(n+1)-A036987(A042968(n+2)))^(n+1)`
-/

namespace A187036.P6676794968930008292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036987 (n + 1) - A036987 (A042968 (n + 2)).toNat) ^ (n + 1)

end

end A187036.P6676794968930008292

noncomputable section

/-- A187036: An eigensequence of A187034.

Offset 0, canonical program `A187036.P6676794968930008292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A187036 (n : ℕ) : ℤ :=
  A187036.P6676794968930008292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A187036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187164.P6841462791461600436

`(A007742(n)+n²-A087156(n+1))*6*(n+1)`
-/

namespace A187164.P6841462791461600436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007742 n + (n ^ 2 : ℤ) - A087156 (n + 1)) * (6 * (n + 1) : ℤ)

end

end A187164.P6841462791461600436

noncomputable section

/-- A187164: Number of 3-step self-avoiding walks on an n X n X n cube summed over all starting positions.

Offset 1, canonical program `A187164.P6841462791461600436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187164 (n : ℕ) : ℤ :=
  A187164.P6841462791461600436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187173.P1490319691721797313

`A004275(n)*A004275(A004275(A004275(n))-n)`
-/

namespace A187173.P1490319691721797313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n * A004275 (A004275 (A004275 n).toNat - (n : ℤ)).toNat

end

end A187173.P1490319691721797313

noncomputable section

/-- A187173: Number of 3-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

Offset 1, canonical program `A187173.P1490319691721797313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A187173 (n : ℕ) : ℤ :=
  A187173.P1490319691721797313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A187173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187191.P14870004376443903265

`(A260260(n)+A000217(n))*(n+1)²`
-/

namespace A187191.P14870004376443903265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260260 n + A000217 n) * ((n + 1) ^ 2 : ℤ)

end

end A187191.P14870004376443903265

noncomputable section

/-- A187191: Number of 4-turn rook's tours on an n X n board summed over all starting positions.

Offset 1, canonical program `A187191.P14870004376443903265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187191 (n : ℕ) : ℤ :=
  A187191.P14870004376443903265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187339.P13951668606527233466

`floor(A276855(n+1)/2)`
-/

namespace A187339.P13951668606527233466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276855 (n + 1) : ℚ) / 2⌋

end

end A187339.P13951668606527233466

noncomputable section

/-- A187339: a(n) = floor((7+sqrt(5))*n/4); complement of A187330.

Offset 1, canonical program `A187339.P13951668606527233466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187339 (n : ℕ) : ℤ :=
  A187339.P13951668606527233466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187341.P18313065574773033440

`A195173(n+1)+n`
-/

namespace A187341.P18313065574773033440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 (n + 1) + (n : ℤ)

end

end A187341.P18313065574773033440

noncomputable section

/-- A187341: Floor((5-sqrt(5))n); complement of A187342.

Offset 1, canonical program `A187341.P18313065574773033440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187341 (n : ℕ) : ℤ :=
  A187341.P18313065574773033440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187385.P14020500850514887259

`A110117(n+1)+1+n`
-/

namespace A187385.P14020500850514887259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) + 1 + (n : ℤ)

end

end A187385.P14020500850514887259

noncomputable section

/-- A187385: a(n) = floor(r*n), where r=1+sqrt(3)+sqrt(2); complement of A187386.

Offset 1, canonical program `A187385.P14020500850514887259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187385 (n : ℕ) : ℤ :=
  A187385.P14020500850514887259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187386.P14251864714821769795

`∑[char[A110117(n+1)]+1]`
-/

namespace A187386.P14251864714821769795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187386.P14251864714821769795

noncomputable section

/-- A187386: a(n) = floor(s*n), where s=1+sqrt(3)-sqrt(2); complement of A187385.

Offset 1, canonical program `A187386.P14251864714821769795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187386 (n : ℕ) : ℤ :=
  (A187386.P14251864714821769795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187387.P5808425786983979277

`∑[Δ[A228177(n)]+1]`
-/

namespace A187387.P5808425786983979277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P5808425786983979277

noncomputable section

/-- A187387: Floor(r*n), where r=1+sqrt(6)+sqrt(5); complement of A187388.

Offset 1, canonical program `A187387.P5808425786983979277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A187387 (n : ℕ) : ℤ :=
  A187387.P5808425786983979277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A187387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187388.P12675393244022700110

`comp[A228177(n)+n]`
-/

namespace A187388.P12675393244022700110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187388.P12675393244022700110

noncomputable section

/-- A187388: Floor(s*n), where s=1+sqrt(6)-sqrt(5); complement of A187387.

Offset 1, canonical program `A187388.P12675393244022700110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187388 (n : ℕ) : ℤ :=
  (A187388.P12675393244022700110.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187389.P17181131781947967530

`floor(A158231(n+1)/42)`
-/

namespace A187389.P17181131781947967530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158231 (n + 1) : ℚ) / 42⌋

end

end A187389.P17181131781947967530

noncomputable section

/-- A187389: a(n) = floor(r*n), where r = 1 + sqrt(7) + sqrt(6); complement of A187390.

Offset 1, canonical program `A187389.P17181131781947967530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187389 (n : ℕ) : ℤ :=
  A187389.P17181131781947967530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187394.P1454778377318748232

`A195178(n+1)-1`
-/

namespace A187394.P1454778377318748232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (n + 1) - 1

end

end A187394.P1454778377318748232

noncomputable section

/-- A187394: a(n) = floor(s*n), where s = 4 - sqrt(8); complement of A187393.

Offset 1, canonical program `A187394.P1454778377318748232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187394 (n : ℕ) : ℤ :=
  A187394.P1454778377318748232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187395.P1363540998234301676

`∑[A081168(n)+4]`
-/

namespace A187395.P1363540998234301676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187395.P1363540998234301676

noncomputable section

/-- A187395: a(n) = floor(r*n), where r = 4 + sqrt(10); complement of A187396.

Offset 1, canonical program `A187395.P1363540998234301676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187395 (n : ℕ) : ℤ :=
  A187395.P1363540998234301676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187396.P13224673495148614598

`∑[A081168(n)-2]`
-/

namespace A187396.P13224673495148614598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187396.P13224673495148614598

noncomputable section

/-- A187396: a(n) = floor(s*n), where s =-2 + sqrt(10); complement of A187395.

Offset 1, canonical program `A187396.P13224673495148614598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187396 (n : ℕ) : ℤ :=
  A187396.P13224673495148614598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187442.P4593768658188443726

`A001405(3*n)`
-/

namespace A187442.P4593768658188443726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (3 * n)

end

end A187442.P4593768658188443726

noncomputable section

/-- A187442: A trisection of A001405 (central binomial coefficients): binomial(3*n,floor(3*n/2)), n >= 0.

Offset 0, canonical program `A187442.P4593768658188443726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A187442 (n : ℕ) : ℤ :=
  A187442.P4593768658188443726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A187442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187443.P6693625183942779513

`A001405(3*n+1)`
-/

namespace A187443.P6693625183942779513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (3 * n + 1)

end

end A187443.P6693625183942779513

noncomputable section

/-- A187443: A trisection of A001405 (central binomial coefficients): binomial(3n+1,floor((3n+1)/2)), n >= 0.

Offset 0, canonical program `A187443.P6693625183942779513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A187443 (n : ℕ) : ℤ :=
  A187443.P6693625183942779513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A187443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187499.P9877960000477458818

`A187501(n-3%(n+1))`
-/

namespace A187499.P9877960000477458818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (n - 3 % (n + 1))

end

end A187499.P9877960000477458818

noncomputable section

/-- A187499: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=1. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,1,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

Offset 0, canonical program `A187499.P9877960000477458818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A187499 (n : ℕ) : ℤ :=
  A187499.P9877960000477458818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A187499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187571.P5003095769329786883

`3*A187570(n+1)+n+1`
-/

namespace A187571.P5003095769329786883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187570 (n + 1) + (n + 1 : ℤ)

end

end A187571.P5003095769329786883

noncomputable section

/-- A187571: Complement of A187570.

Offset 1, canonical program `A187571.P5003095769329786883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187571 (n : ℕ) : ℤ :=
  A187571.P5003095769329786883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187573.P17768076224200419782

`3*A187572(n+1)+2+n`
-/

namespace A187573.P17768076224200419782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187572 (n + 1) + 2 + (n : ℤ)

end

end A187573.P17768076224200419782

noncomputable section

/-- A187573: Complement of A187572.

Offset 1, canonical program `A187573.P17768076224200419782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187573 (n : ℕ) : ℤ :=
  A187573.P17768076224200419782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187607.P7809169353720146712

`(C(2, n)-A139544(n+1))²`
-/

namespace A187607.P7809169353720146712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 n : ℤ) - A139544 (n + 1)) ^ 2

end

end A187607.P7809169353720146712

noncomputable section

/-- A187607: Number of 3-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

Offset 1, canonical program `A187607.P7809169353720146712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187607 (n : ℕ) : ℤ :=
  A187607.P7809169353720146712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187680.P13544893128640517715

`∏{d}[n+1, #]%A000203(n+1)`
-/

namespace A187680.P13544893128640517715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A000203 (n + 1))

end

end A187680.P13544893128640517715

noncomputable section

/-- A187680: a(n) = (product of divisors of n) mod (sum of divisors of n).

Offset 1, canonical program `A187680.P13544893128640517715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A187680 (n : ℕ) : ℤ :=
  A187680.P13544893128640517715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A187680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187689.P16838789493905865231

`∑[gcd(2, ∑[n])]-A106665(n)`
-/

namespace A187689.P16838789493905865231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A106665 n

end

end A187689.P16838789493905865231

noncomputable section

/-- A187689: Rank transform of the sequence round(3n/4); complement of A187690.

Offset 1, canonical program `A187689.P16838789493905865231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187689 (n : ℕ) : ℤ :=
  A187689.P16838789493905865231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187690.P14255351328814757455

`3*(n+1)-A106665(n)`
-/

namespace A187690.P14255351328814757455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A106665 n

end

end A187690.P14255351328814757455

noncomputable section

/-- A187690: Complement of A187689.

Offset 1, canonical program `A187690.P14255351328814757455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187690 (n : ℕ) : ℤ :=
  A187690.P14255351328814757455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187811.P10596766044350093657

`lt[A091379(n+1), 1]+1`
-/

namespace A187811.P10596766044350093657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187811.P10596766044350093657

noncomputable section

/-- A187811: Numbers having at least one prime factor of form 4*k+3.

Offset 1, canonical program `A187811.P10596766044350093657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187811 (n : ℕ) : ℤ :=
  (A187811.P10596766044350093657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187953.P13392832314913242653

`A163801(A004396(n))+1+n`
-/

namespace A187953.P13392832314913242653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (A004396 n).toNat + 1 + (n : ℤ)

end

end A187953.P13392832314913242653

noncomputable section

/-- A187953: Positions of 1 in A187948; complement of A187949.

Offset 1, canonical program `A187953.P13392832314913242653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187953 (n : ℕ) : ℤ :=
  A187953.P13392832314913242653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187967.P10014398144128110312

`abs(Δ[A159684(n)])`
-/

namespace A187967.P10014398144128110312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187967.P10014398144128110312

noncomputable section

/-- A187967: a(n) = floor((n+k)*r) - floor(n*r) - floor(k*r), where r=sqrt(2), k=2.

Offset 1, canonical program `A187967.P10014398144128110312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187967 (n : ℕ) : ℤ :=
  A187967.P10014398144128110312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188009.P134641851213232026

`A096270(n-A078588(n))`
-/

namespace A188009.P134641851213232026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n : ℤ) - A078588 n).toNat

end

end A188009.P134641851213232026

noncomputable section

/-- A188009: a(n) = [nr] - [nr-kr] - [kr], where r=(1+sqrt(5))/2, k=2, [ ]=floor.

Offset 1, canonical program `A188009.P134641851213232026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188009 (n : ℕ) : ℤ :=
  A188009.P134641851213232026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188017.P1836281172235948211

`char[Δ[6*A060144(n)]+n]`
-/

namespace A188017.P1836281172235948211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188017.P1836281172235948211

noncomputable section

/-- A188017: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=6, [ ]=floor.

Offset 1, canonical program `A188017.P1836281172235948211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188017 (n : ℕ) : ℤ :=
  (A188017.P1836281172235948211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188041.P15409242099086241299

`A188037(n+1-2*A188037(n+1))`
-/

namespace A188041.P15409242099086241299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 ((n + 1 : ℤ) - 2 * A188037 (n + 1)).toNat

end

end A188041.P15409242099086241299

noncomputable section

/-- A188041: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A188041.P15409242099086241299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188041 (n : ℕ) : ℤ :=
  A188041.P15409242099086241299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188072.P9285876619016988220

`A172475(A052928(n))+1+n`
-/

namespace A188072.P9285876619016988220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A052928 n).toNat + 1 + (n : ℤ)

end

end A188072.P9285876619016988220

noncomputable section

/-- A188072: Positions of 0 in A188071; complement of A188073.

Offset 1, canonical program `A188072.P9285876619016988220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188072 (n : ℕ) : ℤ :=
  A188072.P9285876619016988220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188084.P3866804258431948867

`A198081(∑[(n+1)%2])+n`
-/

namespace A188084.P3866804258431948867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A188084.P3866804258431948867

noncomputable section

/-- A188084: Positions of 0 in A188083; complement of A188084.

Offset 1, canonical program `A188084.P3866804258431948867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188084 (n : ℕ) : ℤ :=
  A188084.P3866804258431948867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188085.P18175226881759273036

`A188073(n+1)-2`
-/

namespace A188085.P18175226881759273036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (n + 1) - 2

end

end A188085.P18175226881759273036

noncomputable section

/-- A188085: Positions of 1 in A188083; complement of A188084.

Offset 1, canonical program `A188085.P18175226881759273036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188085 (n : ℕ) : ℤ :=
  A188085.P18175226881759273036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188086.P10127461063612971264

`Δ[A195120(n)-A195120(A195120(n))]`
-/

namespace A188086.P10127461063612971264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n - A195120 (A195120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188086.P10127461063612971264

noncomputable section

/-- A188086: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=3, [ ]=floor.

Offset 1, canonical program `A188086.P10127461063612971264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188086 (n : ℕ) : ℤ :=
  A188086.P10127461063612971264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188087.P14776229008693783147

`A215781(A008620(n))+n`
-/

namespace A188087.P14776229008693783147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A008620 n).toNat + (n : ℤ)

end

end A188087.P14776229008693783147

noncomputable section

/-- A188087: Positions of 0 in A188086; complement of A188088.

Offset 1, canonical program `A188087.P14776229008693783147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188087 (n : ℕ) : ℤ :=
  A188087.P14776229008693783147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188169.P9022130587462569637

`∑{d}[n+1, A253513(#-1)]`
-/

namespace A188169.P9022130587462569637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253513 (d - 1)

end

end A188169.P9022130587462569637

noncomputable section

/-- A188169: The number of divisors d of n of the form d == 1 (mod 8).

Offset 1, canonical program `A188169.P9022130587462569637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188169 (n : ℕ) : ℤ :=
  A188169.P9022130587462569637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188170.P7143844993511574485

`∑{d}[n+1, and(1, #*A122046(#))]`
-/

namespace A188170.P7143844993511574485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 ((d : ℤ) * A122046 d)

end

end A188170.P7143844993511574485

noncomputable section

/-- A188170: The number of divisors d of n of the form d == 3 (mod 8).

Offset 1, canonical program `A188170.P7143844993511574485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188170 (n : ℕ) : ℤ :=
  A188170.P7143844993511574485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188187.P4964063636311275739

`A081147(n)-2`
-/

namespace A188187.P4964063636311275739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n - 2

end

end A188187.P4964063636311275739

noncomputable section

/-- A188187: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=1, [ ]=floor.

Offset 1, canonical program `A188187.P4964063636311275739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188187 (n : ℕ) : ℤ :=
  A188187.P4964063636311275739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188188.P12443416094707849401

`ceil(A026352(n)/2)`
-/

namespace A188188.P12443416094707849401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026352 n : ℚ) / 2⌉

end

end A188188.P12443416094707849401

noncomputable section

/-- A188188: Positions of 0 in A188187; complement of A004958.

Offset 1, canonical program `A188188.P12443416094707849401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188188 (n : ℕ) : ℤ :=
  A188188.P12443416094707849401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188191.P14924021026053288212

`A198082(ceil(n/2))+n+1`
-/

namespace A188191.P14924021026053288212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 ⌈(n : ℚ) / 2⌉.toNat + (n + 1 : ℤ)

end

end A188191.P14924021026053288212

noncomputable section

/-- A188191: Positions of 1 in A188189; complement of A188190.

Offset 1, canonical program `A188191.P14924021026053288212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188191 (n : ℕ) : ℤ :=
  A188191.P14924021026053288212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188220.P14087564465006756477

`∑[(char[A276854(n)]+2)²]`
-/

namespace A188220.P14087564465006756477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188220.P14087564465006756477

noncomputable section

/-- A188220: Positions of 1 in the zero-one sequence [n*r]-[5*r]-[n*r-5*r], where r=sqrt(5), n>=1.

Offset 1, canonical program `A188220.P14087564465006756477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188220 (n : ℕ) : ℤ :=
  (A188220.P14087564465006756477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188221.P599899064614246343

`A081147(n+1)-2`
-/

namespace A188221.P599899064614246343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 (n + 1) - 2

end

end A188221.P599899064614246343

noncomputable section

/-- A188221: a(n) = [n*r + k*r]-[n*r]-[k*r], where r=sqrt(5), k=1, [ ]=floor.

Offset 1, canonical program `A188221.P599899064614246343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188221 (n : ℕ) : ℤ :=
  A188221.P599899064614246343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188259.P10728208177163434814

`A198082(A008619(n))+n`
-/

namespace A188259.P10728208177163434814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (A008619 n).toNat + (n : ℤ)

end

end A188259.P10728208177163434814

noncomputable section

/-- A188259: Positions of 1 in A188257; complement of A188258.

Offset 1, canonical program `A188259.P10728208177163434814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188259 (n : ℕ) : ℤ :=
  A188259.P10728208177163434814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188261.P2245808689908223847

`∑[(3-Δ[A195122(n)])²]`
-/

namespace A188261.P2245808689908223847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188261.P2245808689908223847

noncomputable section

/-- A188261: Positions of 0 in A188260; complement of A188262.

Offset 1, canonical program `A188261.P2245808689908223847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188261 (n : ℕ) : ℤ :=
  A188261.P2245808689908223847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188262.P9598590524912280923

`A005206(Δ[ceil(n²/3)])+n+1`
-/

namespace A188262.P9598590524912280923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (n + 1) - f1 n).toNat + (n + 1 : ℤ)

end

end A188262.P9598590524912280923

noncomputable section

/-- A188262: Positions of 1 in A188260; complement of A188261.

Offset 1, canonical program `A188262.P9598590524912280923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188262 (n : ℕ) : ℤ :=
  A188262.P9598590524912280923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188292.P16402380727570553525

`comp[A004976(comp[A004976(n+1)])]`
-/

namespace A188292.P16402380727570553525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188292.P16402380727570553525

noncomputable section

/-- A188292: Positions of 0 in A188291; complement of A188293.

Offset 1, canonical program `A188292.P16402380727570553525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188292 (n : ℕ) : ℤ :=
  (A188292.P16402380727570553525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188295.P14649549337933512404

`2-Δ[A195128(n)]`
-/

namespace A188295.P14649549337933512404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A188295.P14649549337933512404

noncomputable section

/-- A188295: a(n) = [n*r]-[n*r-r], where r=1/sqrt(2), [ ]=floor.

Offset 1, canonical program `A188295.P14649549337933512404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188295 (n : ℕ) : ℤ :=
  A188295.P14649549337933512404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188374.P8612799017787756249

`A080764(a(n-1)+n)` with `a(0)=1`
-/

namespace A188374.P8612799017787756249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080764 (a (n - 1) + (n : ℤ)).toNat

end

end A188374.P8612799017787756249

noncomputable section

/-- A188374: [nr+kr]-[nr]-[kr], where r=1/sqrt(2), k=2, [ ]=floor.

Offset 1, canonical program `A188374.P8612799017787756249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188374 (n : ℕ) : ℤ :=
  A188374.P8612799017787756249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188383.P4134087850535835169

`3*A003151(n+1)+n+1`
-/

namespace A188383.P4134087850535835169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003151 (n + 1) + (n + 1 : ℤ)

end

end A188383.P4134087850535835169

noncomputable section

/-- A188383: Positions of 1 in the zero-one sequence [nr+3r]-[nr]-[3r], where r=1/sqrt(2).

Offset 1, canonical program `A188383.P4134087850535835169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188383 (n : ℕ) : ℤ :=
  A188383.P4134087850535835169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188385.P13993310545779248869

`(n+1)*A051903(n+1)`
-/

namespace A188385.P13993310545779248869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051903 (n + 1)

end

end A188385.P13993310545779248869

noncomputable section

/-- A188385: Highest exponent in the prime factorization of n^n.

Offset 1, canonical program `A188385.P13993310545779248869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188385 (n : ℕ) : ℤ :=
  A188385.P13993310545779248869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188386.P8827838525092299534

`lcm(2, ∑[A007310(n+2)])+1`
-/

namespace A188386.P8827838525092299534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A188386.P8827838525092299534

noncomputable section

/-- A188386: a(n) = numerator(H(n+2)-H(n-1)), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A188386.P8827838525092299534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188386 (n : ℕ) : ℤ :=
  (A188386.P8827838525092299534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188434.P14872401721499474557

`A130568(n)+1+n`
-/

namespace A188434.P14872401721499474557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n + 1 + (n : ℤ)

end

end A188434.P14872401721499474557

noncomputable section

/-- A188434: Positions of 0 in A188433; complement of A188435.

Offset 1, canonical program `A188434.P14872401721499474557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188434 (n : ℕ) : ℤ :=
  A188434.P14872401721499474557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188525.P16091832531877469937

`A007947(A078615(n+1)+1)`
-/

namespace A188525.P16091832531877469937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078615 (n + 1) + 1).toNat

end

end A188525.P16091832531877469937

noncomputable section

/-- A188525: a(n) = rad(rad(n)^2+1), where rad = A007947.

Offset 1, canonical program `A188525.P16091832531877469937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A078615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A188525 (n : ℕ) : ℤ :=
  A188525.P16091832531877469937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A078615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A188525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188551.P4475223279371525590

`A130519(A286716(n+1)+A004526(n))+1+n`
-/

namespace A188551.P4475223279371525590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A286716 (n + 1) + A004526 n).toNat + 1 + (n : ℤ)

end

end A188551.P4475223279371525590

noncomputable section

/-- A188551: Numbers located at angle turns in a pentagonal spiral.

Offset 1, canonical program `A188551.P4475223279371525590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188551 (n : ℕ) : ℤ :=
  A188551.P4475223279371525590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188556.P2471542906957635104

`∑[A188555(n)]+5`
-/

namespace A188556.P2471542906957635104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A188556.P2471542906957635104

noncomputable section

/-- A188556: Number of 5 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188556.P2471542906957635104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188556 (n : ℕ) : ℤ :=
  A188556.P2471542906957635104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188578.P7903964599926438323

`A057078(n)*A105368(n)`
-/

namespace A188578.P7903964599926438323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A105368 n

end

end A188578.P7903964599926438323

noncomputable section

/-- A188578: Expansion of (1 - x^3) * (1 - x^5) * (1 - x^6) / (1 - x^15) in powers of x.

Offset 0, canonical program `A188578.P7903964599926438323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188578 (n : ℕ) : ℤ :=
  A188578.P7903964599926438323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188622.P4482994152773459908

`Δ[A323230(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A188622.P4482994152773459908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A188622.P4482994152773459908

noncomputable section

/-- A188622: Row sums of the Riordan matrix (1/sqrt(1-4*x), x/(1-x)) (A187888).

Offset 0, canonical program `A188622.P4482994152773459908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A188622 (n : ℕ) : ℤ :=
  A188622.P4482994152773459908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A188622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188626.P2150097777931811468

`∑[Δ[A139756(n)]+1]`
-/

namespace A188626.P2150097777931811468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188626.P2150097777931811468

noncomputable section

/-- A188626: a(n) = n + (n-1)*2^(n-2).

Offset 1, canonical program `A188626.P2150097777931811468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A188626 (n : ℕ) : ℤ :=
  A188626.P2150097777931811468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A188626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188641.P10949182267148863194

`A000007(A070635(n+1))`
-/

namespace A188641.P10949182267148863194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070635 (n + 1)).toNat

end

end A188641.P10949182267148863194

noncomputable section

/-- A188641: Characteristic function of Niven (or Harshad) numbers.

Offset 1, canonical program `A188641.P10949182267148863194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188641 (n : ℕ) : ℤ :=
  A188641.P10949182267148863194.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188652.P6970778430024566218

`A000463(n+2)-A000463(n+1)`
-/

namespace A188652.P6970778430024566218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 2) - A000463 (n + 1)

end

end A188652.P6970778430024566218

noncomputable section

/-- A188652: First differences of A000463.

Offset 1, canonical program `A188652.P6970778430024566218`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188652 (n : ℕ) : ℤ :=
  A188652.P6970778430024566218.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188669.P10304674415100469588

`ceil((2*n+1)/(n+1)*A000108(n))`
-/

namespace A188669.P10304674415100469588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (n + 1 : ℚ) * (A000108 n : ℚ)⌉

end

end A188669.P10304674415100469588

noncomputable section

/-- A188669: a(n) = ceiling(binomial(2*n-1,n-1)/n).

Offset 1, canonical program `A188669.P10304674415100469588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A188669 (n : ℕ) : ℤ :=
  A188669.P10304674415100469588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A188669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188714.P3766287319146465303

`floor(4*A077828(n)/3)`
-/

namespace A188714.P3766287319146465303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A077828 n : ℚ) / 3)⌋

end

end A188714.P3766287319146465303

noncomputable section

/-- A188714: G.f.: (1+x+x^2+x^3)/(1-3*x-3*x^2-3*x^3).

Offset 0, canonical program `A188714.P3766287319146465303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A188714 (n : ℕ) : ℤ :=
  A188714.P3766287319146465303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A188714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188802.P4892562344809786416

`A101497(n)-Δ[Δ[A101497(n)]]`
-/

namespace A188802.P4892562344809786416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101497 n - (f1 (n + 1) - f1 n)

end

end A188802.P4892562344809786416

noncomputable section

/-- A188802: Expansion of (x^2+1)/(x^4+2*x^3-2*x+1).

Offset 0, canonical program `A188802.P4892562344809786416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A188802 (n : ℕ) : ℤ :=
  A188802.P4892562344809786416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A188802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188821.P16295408872994340486

`(A270545(n)+10*n+7)²`
-/

namespace A188821.P16295408872994340486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A270545 n + (10 * n + 7 : ℤ)) ^ 2

end

end A188821.P16295408872994340486

noncomputable section

/-- A188821: Number of n X 6 binary arrays without the pattern 0 1 diagonally or antidiagonally.

Offset 1, canonical program `A188821.P16295408872994340486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188821 (n : ℕ) : ℤ :=
  A188821.P16295408872994340486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188899.P2617420717906096146

`A005178(Δ[n²])`
-/

namespace A188899.P2617420717906096146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188899.P2617420717906096146

noncomputable section

/-- A188899: Third row of array in A187617.

Offset 0, canonical program `A188899.P2617420717906096146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A188899 (n : ℕ) : ℤ :=
  A188899.P2617420717906096146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A188899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188902.P4940289484515000086

`A030065(A131089(n+2))`
-/

namespace A188902.P4940289484515000086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A131089 (n + 2)).toNat

end

end A188902.P4940289484515000086

noncomputable section

/-- A188902: Numerator of the base n logarithm of the product of the divisors of n.

Offset 2, canonical program `A188902.P4940289484515000086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188902 (n : ℕ) : ℤ :=
  A188902.P4940289484515000086.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188917.P11121832098210832002

`ceil(A017910(n)+n/2)`
-/

namespace A188917.P11121832098210832002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017910 n : ℚ) + (n : ℚ) / 2⌉

end

end A188917.P11121832098210832002

noncomputable section

/-- A188917: Where powers of 2 occur in the union of squares and powers of 2.

Offset 0, canonical program `A188917.P11121832098210832002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A188917 (n : ℕ) : ℤ :=
  A188917.P11121832098210832002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A188917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189020.P16584928462865797515

`A061202(10^n)`
-/

namespace A189020.P16584928462865797515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061202 (10 ^ n)

end

end A189020.P16584928462865797515

noncomputable section

/-- A189020: a(n) = Sum_{k=1..10^n} tau_4(k), where tau_4 is the number of ordered factorizations into 4 factors (A007426).

Offset 0, canonical program `A189020.P16584928462865797515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189020 (n : ℕ) : ℤ :=
  A189020.P16584928462865797515.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189021.P12232973685281309927

`∏{e}[n+1, A154955(#)]`
-/

namespace A189021.P12232973685281309927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A154955 (Nat.factorization (f1 n) p)

end

end A189021.P12232973685281309927

noncomputable section

/-- A189021: Apostol's second order Möbius (or Moebius) function mu_2(n).

Offset 1, canonical program `A189021.P12232973685281309927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189021 (n : ℕ) : ℤ :=
  A189021.P12232973685281309927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189046.P15357273902442149095

`gcd(A000579(n+3)*A000579(n+7), A000579(n+5))`
-/

namespace A189046.P15357273902442149095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000579 (n + 3) * A000579 (n + 7)) (A000579 (n + 5))

end

end A189046.P15357273902442149095

noncomputable section

/-- A189046: a(n) = lcm(n,n+1,n+2,n+3,n+4,n+5)/60.

Offset 0, canonical program `A189046.P15357273902442149095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A189046 (n : ℕ) : ℤ :=
  (A189046.P15357273902442149095.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A189046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189120.P13109880559421340591

`A001157(n+1)-A005063(n+1)`
-/

namespace A189120.P13109880559421340591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A005063 (n + 1)

end

end A189120.P13109880559421340591

noncomputable section

/-- A189120: Sum of squares of nonprime divisors of n.

Offset 1, canonical program `A189120.P13109880559421340591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A005063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189120 (n : ℕ) : ℤ :=
  A189120.P13109880559421340591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A005063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189145.P15214286756269133986

`and(-3, A006498(n+1)²)`
-/

namespace A189145.P15214286756269133986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A006498 (n + 1) ^ 2)

end

end A189145.P15214286756269133986

noncomputable section

/-- A189145: Number of n X 2 array permutations with each element making zero or one knight moves.

Offset 1, canonical program `A189145.P15214286756269133986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A189145 (n : ℕ) : ℤ :=
  A189145.P15214286756269133986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A189145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189155.P15027599354572143011

`A008937(n+2)^3`
-/

namespace A189155.P15027599354572143011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 2) ^ 3

end

end A189155.P15027599354572143011

noncomputable section

/-- A189155: Number of nX3 binary arrays without the pattern 0 0 1 1 diagonally, vertically or horizontally.

Offset 1, canonical program `A189155.P15027599354572143011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A189155 (n : ℕ) : ℤ :=
  A189155.P15027599354572143011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A189155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189176.P2914353405765729826

`floor((n+3)/2*A000108(n))`
-/

namespace A189176.P2914353405765729826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 2 * (A000108 n : ℚ)⌋

end

end A189176.P2914353405765729826

noncomputable section

/-- A189176: Row sums of the Riordan matrix (1+x/sqrt(1-4*x),(1-sqrt(1-4*x))/2) (A189175).

Offset 0, canonical program `A189176.P2914353405765729826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A189176 (n : ℕ) : ℤ :=
  A189176.P2914353405765729826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A189176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189337.P16748108321966298711

`A049864(n+3)^3`
-/

namespace A189337.P16748108321966298711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 3) ^ 3

end

end A189337.P16748108321966298711

noncomputable section

/-- A189337: Number of nX3 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A189337.P16748108321966298711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A189337 (n : ℕ) : ℤ :=
  A189337.P16748108321966298711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A189337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189377.P501354726350902764

`A004526(n)+or(A000035(n), A000201(n+1))`
-/

namespace A189377.P501354726350902764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + Int.lor (A000035 n) (A000201 (n + 1))

end

end A189377.P501354726350902764

noncomputable section

/-- A189377: a(n) = n + floor(ns/r) + floor(nt/r) with r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

Offset 1, canonical program `A189377.P501354726350902764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189377 (n : ℕ) : ℤ :=
  A189377.P501354726350902764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189382.P1008884588832843290

`∑[3-Δ[A022846(n)]]-1`
-/

namespace A189382.P1008884588832843290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189382.P1008884588832843290

noncomputable section

/-- A189382: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=-1+sqrt(2), t=1+sqrt(2).

Offset 1, canonical program `A189382.P1008884588832843290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189382 (n : ℕ) : ℤ :=
  A189382.P1008884588832843290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189384.P17768416561206798456

`A171974(n+1)+A003151(n+1)`
-/

namespace A189384.P17768416561206798456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + A003151 (n + 1)

end

end A189384.P17768416561206798456

noncomputable section

/-- A189384: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1/sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189384.P17768416561206798456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189384 (n : ℕ) : ℤ :=
  A189384.P17768416561206798456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189400.P10890290905004216933

`A061402(n+1)+comp[A061402(n)+n]`
-/

namespace A189400.P10890290905004216933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A189400.P10890290905004216933

noncomputable section

/-- A189400: n+[nr/s]+[nt/s]; r=1, s=sqrt(e), t=e.

Offset 1, canonical program `A189400.P10890290905004216933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A189400 (n : ℕ) : ℤ :=
  A189400.P10890290905004216933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A189400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189402.P8311304485526110853

`A182767(n+1)+A022843(n+1)`
-/

namespace A189402.P8311304485526110853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182767 (n + 1) + A022843 (n + 1)

end

end A189402.P8311304485526110853

noncomputable section

/-- A189402: n+[ns/r]+[nt/r]; r=1, s=e, t=e^2.

Offset 1, canonical program `A189402.P8311304485526110853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189402 (n : ℕ) : ℤ :=
  A189402.P8311304485526110853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189404.P4406585851978852284

`A182768(n+1)+A032634(n+1)`
-/

namespace A189404.P4406585851978852284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182768 (n + 1) + A032634 (n + 1)

end

end A189404.P4406585851978852284

noncomputable section

/-- A189404: n+[nr/t]+[ns/t]; r=1, s=e, t=e^2.

Offset 1, canonical program `A189404.P4406585851978852284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189404 (n : ℕ) : ℤ :=
  A189404.P4406585851978852284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189407.P16182445017687967578

`A014245(n+1)+n`
-/

namespace A189407.P16182445017687967578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (n + 1) + (n : ℤ)

end

end A189407.P16182445017687967578

noncomputable section

/-- A189407: n+[nr/t]+[ns/t]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

Offset 1, canonical program `A189407.P16182445017687967578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189407 (n : ℕ) : ℤ :=
  A189407.P16182445017687967578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189458.P4277958912873092355

`∑[Δ[A091087(n)]+2]`
-/

namespace A189458.P4277958912873092355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189458.P4277958912873092355

noncomputable section

/-- A189458: a(n) = n+[nr/s]+[nt/s]; r=2, s=sqrt(2), t=1+sqrt(2).

Offset 1, canonical program `A189458.P4277958912873092355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189458 (n : ℕ) : ℤ :=
  A189458.P4277958912873092355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189461.P9547068110749333866

`A188258(n+1)+A184746(n+1)`
-/

namespace A189461.P9547068110749333866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188258 (n + 1) + A184746 (n + 1)

end

end A189461.P9547068110749333866

noncomputable section

/-- A189461: n+[nr/s]+[nt/s]; r=2, s=sqrt(5), t=1+sqrt(5).

Offset 1, canonical program `A189461.P9547068110749333866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189461 (n : ℕ) : ℤ :=
  A189461.P9547068110749333866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189464.P18164366256384428897

`record[n*a(A189463(n))]` with `a(0)=1, a(1)=0`
-/

namespace A189464.P18164366256384428897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  n * f1 (A189463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189464.P18164366256384428897

noncomputable section

/-- A189464: Positions of 0 in A189463.

Offset 1, canonical program `A189464.P18164366256384428897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A189464 (n : ℕ) : ℤ :=
  (A189464.P18164366256384428897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A189464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189465.P12803094612992992419

`eq[1, A189463(n+1)]+1`
-/

namespace A189465.P12803094612992992419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189465.P12803094612992992419

noncomputable section

/-- A189465: Positions of 1 in A189463.

Offset 1, canonical program `A189465.P12803094612992992419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A189465 (n : ℕ) : ℤ :=
  (A189465.P12803094612992992419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A189465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189467.P17279184280172551763

`ceil(A003151(n+1)/2+n)`
-/

namespace A189467.P17279184280172551763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003151 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A189467.P17279184280172551763

noncomputable section

/-- A189467: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1+sqrt(2), t=1/2+sqrt(2).

Offset 1, canonical program `A189467.P17279184280172551763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189467 (n : ℕ) : ℤ :=
  A189467.P17279184280172551763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189515.P7426926543418875644

`A140758(n+1)+comp[A140758(n)+n]`
-/

namespace A189515.P7426926543418875644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A189515.P7426926543418875644

noncomputable section

/-- A189515: a(n) = n + [ns] + [nt]; s=Pi/2, t=2/Pi.

Offset 1, canonical program `A189515.P7426926543418875644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189515 (n : ℕ) : ℤ :=
  A189515.P7426926543418875644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189530.P1009789247220490105

`A182773(n+1)+∑[A081117(n)]`
-/

namespace A189530.P1009789247220490105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182773 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189530.P1009789247220490105

noncomputable section

/-- A189530: n+[ns/r]+[nt/r]; r=1, s=2^(1/3), t=2^(2/3).

Offset 1, canonical program `A189530.P1009789247220490105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189530 (n : ℕ) : ℤ :=
  A189530.P1009789247220490105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189600.P5523603604027758349

`A079960(n+1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A189600.P5523603604027758349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079960 (n + 1) - a (n - 2)

end

end A189600.P5523603604027758349

noncomputable section

/-- A189600: Number of permutations of 1..n with displacements restricted to {-7,-6,-5,-4,-3,-2,0,1}.

Offset 1, canonical program `A189600.P5523603604027758349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A189600 (n : ℕ) : ℤ :=
  A189600.P5523603604027758349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A189600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189630.P2663930822857088844

`3*(n+1)-A189628(n+1)`
-/

namespace A189630.P2663930822857088844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A189628 (n + 1)

end

end A189630.P2663930822857088844

noncomputable section

/-- A189630: Positions of 1 in A189628; complement of A189629.

Offset 1, canonical program `A189630.P2663930822857088844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189630 (n : ℕ) : ℤ :=
  A189630.P2663930822857088844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189631.P3192199941926722783

`∑[A189628(n+1)]`
-/

namespace A189631.P3192199941926722783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189631.P3192199941926722783

noncomputable section

/-- A189631: Partial sums of A189628.

Offset 1, canonical program `A189631.P3192199941926722783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189631 (n : ℕ) : ℤ :=
  A189631.P3192199941926722783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189633.P179509301148812189

`A008619(n)+A189632(A008619(n))+n`
-/

namespace A189633.P179509301148812189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A189632 (A008619 n).toNat + (n : ℤ))

end

end A189633.P179509301148812189

noncomputable section

/-- A189633: Positions of 0 in A189632; complement of A189634.

Offset 1, canonical program `A189633.P179509301148812189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189633 (n : ℕ) : ℤ :=
  A189633.P179509301148812189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189635.P9372128624568086310

`∑[A189632(n+1)]`
-/

namespace A189635.P9372128624568086310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189635.P9372128624568086310

noncomputable section

/-- A189635: Partial sums of A189632.

Offset 1, canonical program `A189635.P9372128624568086310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189635 (n : ℕ) : ℤ :=
  A189635.P9372128624568086310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189636.P992378438989201092

`A138670(n)+1`
-/

namespace A189636.P992378438989201092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n + 1

end

end A189636.P992378438989201092

noncomputable section

/-- A189636: Positions of 0 in A116178; complement of A189637.

Offset 1, canonical program `A189636.P992378438989201092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189636 (n : ℕ) : ℤ :=
  A189636.P992378438989201092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189637.P3446270201682603484

`A138671(n)+1`
-/

namespace A189637.P3446270201682603484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n + 1

end

end A189637.P3446270201682603484

noncomputable section

/-- A189637: Positions of 1 in A116178; complement of A189636.

Offset 1, canonical program `A189637.P3446270201682603484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189637 (n : ℕ) : ℤ :=
  A189637.P3446270201682603484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189638.P15037763071711005940

`∑[A116178(n)]`
-/

namespace A189638.P15037763071711005940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189638.P15037763071711005940

noncomputable section

/-- A189638: Partial sums of A116178.

Offset 1, canonical program `A189638.P15037763071711005940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189638 (n : ℕ) : ℤ :=
  A189638.P15037763071711005940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189642.P401202128290837100

`A165676(n+1)/gcd(A165676(n+1), A165677(n+1))`
-/

namespace A189642.P401202128290837100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165676 (n + 1) : ℚ) / (Int.gcd (A165676 (n + 1)) (A165677 (n + 1)) : ℚ)

end

end A189642.P401202128290837100

noncomputable section

/-- A189642: Numerator of H(n+4) - H(n), where H(n) = Sum_{k=1..n} 1/k.

Offset 0, canonical program `A189642.P401202128290837100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189642 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189642.P401202128290837100.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189660.P4547749914452871862

`∑[A064990(n)]`
-/

namespace A189660.P4547749914452871862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189660.P4547749914452871862

noncomputable section

/-- A189660: Partial sums of A064990.

Offset 1, canonical program `A189660.P4547749914452871862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189660 (n : ℕ) : ℤ :=
  A189660.P4547749914452871862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189661.P11079895270296849068

`A003849(abs(2-n))`
-/

namespace A189661.P11079895270296849068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 |2 - (n : ℤ)|.toNat

end

end A189661.P11079895270296849068

noncomputable section

/-- A189661: Fixed point of the morphism 0->010, 1->10 starting with 0.

Offset 1, canonical program `A189661.P11079895270296849068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189661 (n : ℕ) : ℤ :=
  A189661.P11079895270296849068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189666.P17606521251761540997

`3*n+2+A189664(n+1)`
-/

namespace A189666.P17606521251761540997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) + A189664 (n + 1)

end

end A189666.P17606521251761540997

noncomputable section

/-- A189666: Positions of 1 in A189664; complement of A189665.

Offset 1, canonical program `A189666.P17606521251761540997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189666 (n : ℕ) : ℤ :=
  A189666.P17606521251761540997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189670.P13812974504116450926

`3*n+2-A189668(n+1)`
-/

namespace A189670.P13812974504116450926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - A189668 (n + 1))

end

end A189670.P13812974504116450926

noncomputable section

/-- A189670: Positions of 1 in A189668; complement of A189669.

Offset 1, canonical program `A189670.P13812974504116450926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189670 (n : ℕ) : ℤ :=
  A189670.P13812974504116450926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189671.P2708170551583323192

`∑[A189668(n+1)]`
-/

namespace A189671.P2708170551583323192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189671.P2708170551583323192

noncomputable section

/-- A189671: Partial sums of A189668.

Offset 1, canonical program `A189671.P2708170551583323192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189671 (n : ℕ) : ℤ :=
  A189671.P2708170551583323192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189688.P13233593620070041608

`∑[2-Δ[A001953(n)]]`
-/

namespace A189688.P13233593620070041608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189688.P13233593620070041608

noncomputable section

/-- A189688: Partial sums of A189687.

Offset 1, canonical program `A189688.P13233593620070041608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189688 (n : ℕ) : ℤ :=
  A189688.P13233593620070041608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189719.P15456910898771424589

`eq[0, A189718(n)]+1`
-/

namespace A189719.P15456910898771424589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189719.P15456910898771424589

noncomputable section

/-- A189719: Positions of 0 in A189718; complement of A189720.

Offset 1, canonical program `A189719.P15456910898771424589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A189719 (n : ℕ) : ℤ :=
  (A189719.P15456910898771424589.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A189719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189721.P12776135164093552095

`∑[A189718(n)]`
-/

namespace A189721.P12776135164093552095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P12776135164093552095

noncomputable section

/-- A189721: Partial sums of A189718.

Offset 1, canonical program `A189721.P12776135164093552095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189721 (n : ℕ) : ℤ :=
  A189721.P12776135164093552095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189724.P13620854690515914303

`A189723(n+1)+3*n+1`
-/

namespace A189724.P13620854690515914303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1) + (3 * n + 1 : ℤ)

end

end A189724.P13620854690515914303

noncomputable section

/-- A189724: Positions of 0 in A189723; complement of A189725.

Offset 1, canonical program `A189724.P13620854690515914303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189724 (n : ℕ) : ℤ :=
  A189724.P13620854690515914303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189726.P12332784523187162366

`∑[A189723(n+1)]`
-/

namespace A189726.P12332784523187162366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P12332784523187162366

noncomputable section

/-- A189726: Partial sums of A189723.

Offset 1, canonical program `A189726.P12332784523187162366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189726 (n : ℕ) : ℤ :=
  A189726.P12332784523187162366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189730.P8400185696208639322

`∑[A189727(n+1)]`
-/

namespace A189730.P8400185696208639322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P8400185696208639322

noncomputable section

/-- A189730: Partial sums of A189727.

Offset 1, canonical program `A189730.P8400185696208639322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189730 (n : ℕ) : ℤ :=
  A189730.P8400185696208639322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189731.P16100471784912095812

`A001610(n)/gcd(A000027(n+1), A001610(n))`
-/

namespace A189731.P16100471784912095812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001610 n : ℚ) / (Int.gcd (A000027 (n + 1)) (A001610 n) : ℚ)

end

end A189731.P16100471784912095812

noncomputable section

/-- A189731: a(n) = numerator of B(0,n) where B(n,n) = 0, B(n-1,n) = 1/n, and B(m,n) = B(m-1,n+1) - B(m-1,n).

Offset 0, canonical program `A189731.P16100471784912095812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A189731 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189731.P16100471784912095812.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A189731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189733.P13977796338572445448

`(n+1)/gcd(xor(1, n), A100219(n+1))`
-/

namespace A189733.P13977796338572445448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (Nat.xor 1 n : ℤ) (A100219 (n + 1)) : ℚ)

end

end A189733.P13977796338572445448

noncomputable section

/-- A189733: Denominator of B(0,n) where B(n,n)=0, B(n-1,n) = (-1)^(n+1)/n, and B(m,n) = B(m+1,n-1) + B(m,n-1), n >= 0, m >= 0, is an array of fractions.

Offset 0, canonical program `A189733.P13977796338572445448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189733.P13977796338572445448.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189786.P10687679129082034515

`∑[A069705(C(n, 2)+1)]`
-/

namespace A189786.P10687679129082034515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P10687679129082034515

noncomputable section

/-- A189786: a(n) = n + [nr/t] + [ns/t]; r=Pi/2, s=arcsin(5/13), t=arcsin(12/13).

Offset 1, canonical program `A189786.P10687679129082034515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A189786 (n : ℕ) : ℤ :=
  A189786.P10687679129082034515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A189786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189797.P2961117547633744631

`A189794(2*(n+1))+A189794(n+1)`
-/

namespace A189797.P2961117547633744631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189794 (2 * (n + 1)) + A189794 (n + 1)

end

end A189797.P2961117547633744631

noncomputable section

/-- A189797: n+[nr/s]+[nt/s]; r=2, s=(sin(1))^2, t=(cos(1))^2.

Offset 1, canonical program `A189797.P2961117547633744631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189797 (n : ℕ) : ℤ :=
  A189797.P2961117547633744631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189798.P14132621846478620636

`A189795(2*(n+1))+A189795(n+1)`
-/

namespace A189798.P14132621846478620636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189795 (2 * (n + 1)) + A189795 (n + 1)

end

end A189798.P14132621846478620636

noncomputable section

/-- A189798: n+[nr/t]+[ns/t]; r=2, s=(sin(1))^2, t=(cos(1))^2.

Offset 1, canonical program `A189798.P14132621846478620636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189798 (n : ℕ) : ℤ :=
  A189798.P14132621846478620636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189822.P9995875126507270326

`A074940(n+1)+1`
-/

namespace A189822.P9995875126507270326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1) + 1

end

end A189822.P9995875126507270326

noncomputable section

/-- A189822: Positions of 1 in A189820; complement of A003278.

Offset 1, canonical program `A189822.P9995875126507270326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189822 (n : ℕ) : ℤ :=
  A189822.P9995875126507270326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189824.P12664580951343748584

`A018141(A016873(n))%10`
-/

namespace A189824.P12664580951343748584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018141 (A016873 n).toNat) 10

end

end A189824.P12664580951343748584

noncomputable section

/-- A189824: Decimal expansion of Pogson's ratio 100^(1/5).

Offset 1, canonical program `A189824.P12664580951343748584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A189824 (n : ℕ) : ℤ :=
  A189824.P12664580951343748584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A189824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189826.P17490329199625897937

`A000079(n+1)+n*(A001047(n+1)-(n+1))`
-/

namespace A189826.P17490329199625897937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (n : ℤ) * (A001047 (n + 1) - (n + 1 : ℤ))

end

end A189826.P17490329199625897937

noncomputable section

/-- A189826: a(n) = (3^n-n)*(n-1) - 2^n*(n-2).

Offset 1, canonical program `A189826.P17490329199625897937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A189826 (n : ℕ) : ℤ :=
  A189826.P17490329199625897937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A189826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189894.P18078749706703020444

`∑[∑[∑[A000035(n)+33*n+4]]]`
-/

namespace A189894.P18078749706703020444
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (33 * n + 4 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189894.P18078749706703020444

noncomputable section

/-- A189894: Number of isosceles right triangles on a 2n X (n+1) grid.

Offset 1, canonical program `A189894.P18078749706703020444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189894 (n : ℕ) : ℤ :=
  A189894.P18078749706703020444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189934.P11056086717028341864

`A189932(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189934.P11056086717028341864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189932 (n + 1) : ℚ) / 2

end

end A189934.P11056086717028341864

noncomputable section

/-- A189934: a(n) = A189932(n)/2.

Offset 1, canonical program `A189934.P11056086717028341864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189934.P11056086717028341864.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189935.P15750498102443247818

`A189933(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189935.P15750498102443247818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189933 (n + 1) : ℚ) / 2

end

end A189935.P15750498102443247818

noncomputable section

/-- A189935: a(n) = A189933(n)/2.

Offset 1, canonical program `A189935.P15750498102443247818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189935 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189935.P15750498102443247818.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189998.P3726811178440266367

`A165677(n+1)/gcd(A165677(n+1), A165678(n+1))`
-/

namespace A189998.P3726811178440266367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165677 (n + 1) : ℚ) / (Int.gcd (A165677 (n + 1)) (A165678 (n + 1)) : ℚ)

end

end A189998.P3726811178440266367

noncomputable section

/-- A189998: Numerator of h(n+5) - h(n) where h(n) = Sum_{k=1..n} (1/k) are the Harmonic numbers.

Offset 0, canonical program `A189998.P3726811178440266367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189998 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189998.P3726811178440266367.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190004.P133149234790667692

`A014682(A190002(n+1))`
-/

namespace A190004.P133149234790667692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A190002 (n + 1)).toNat

end

end A190004.P133149234790667692

noncomputable section

/-- A190004: A190002/2.

Offset 1, canonical program `A190004.P133149234790667692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190004 (n : ℕ) : ℤ :=
  A190004.P133149234790667692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190050.P12020446222210226935

`A268586(n+1)+2^n`
-/

namespace A190050.P12020446222210226935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + (2 ^ n : ℤ)

end

end A190050.P12020446222210226935

noncomputable section

/-- A190050: Expansion of ((1-x)*(3*x^2-3*x+1))/(1-2*x)^3.

Offset 0, canonical program `A190050.P12020446222210226935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A190050 (n : ℕ) : ℤ :=
  A190050.P12020446222210226935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A190050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190062.P16595495950276087387

`A045925(n)-A000071(n+1)`
-/

namespace A190062.P16595495950276087387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - A000071 (n + 1)

end

end A190062.P16595495950276087387

noncomputable section

/-- A190062: a(n) = n*Fibonacci(n) - Sum_{i=0..n-1} Fibonacci(i).

Offset 0, canonical program `A190062.P16595495950276087387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045925, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190062 (n : ℕ) : ℤ :=
  A190062.P16595495950276087387.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045925, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190080.P842041411863546678

`∑[5-Δ[A022848(n)]]+n`
-/

namespace A190080.P842041411863546678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A190080.P842041411863546678

noncomputable section

/-- A190080: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=cos(Pi/5), t=sec(Pi/5).

Offset 1, canonical program `A190080.P842041411863546678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190080 (n : ℕ) : ℤ :=
  A190080.P842041411863546678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190105.P11754340986500372395

`(3*A002145(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A190105.P11754340986500372395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A002145 (n + 1) - 1 : ℚ) / 4

end

end A190105.P11754340986500372395

noncomputable section

/-- A190105: a(n) = (3*A002145(n) - 1)/4.

Offset 1, canonical program `A190105.P11754340986500372395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190105.P11754340986500372395.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190158.P6937184412483478574

`eq[2, A189463(n+1)]+1`
-/

namespace A190158.P6937184412483478574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190158.P6937184412483478574

noncomputable section

/-- A190158: Positions of 2 in A189463.

Offset 1, canonical program `A190158.P6937184412483478574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190158 (n : ℕ) : ℤ :=
  (A190158.P6937184412483478574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190225.P3534641279878422546

`lt[A190224(n+1), 1]+1`
-/

namespace A190225.P3534641279878422546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190225.P3534641279878422546

noncomputable section

/-- A190225: Positions of 0 in A190224; complement of A190226.

Offset 1, canonical program `A190225.P3534641279878422546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7498 terms. -/
def A190225 (n : ℕ) : ℤ :=
  (A190225.P3534641279878422546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7498 terms. -/
def A190225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190226.P16953417745290274440

`filter[n+1, A190224(#)]`
-/

namespace A190226.P16953417745290274440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190224 (f1 j) = 1) n)

end

end A190226.P16953417745290274440

noncomputable section

/-- A190226: Positions of 1 in A190224; complement of A190225.

Offset 1, canonical program `A190226.P16953417745290274440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190226 (n : ℕ) : ℤ :=
  (A190226.P16953417745290274440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190237.P4863808216702038747

`∪[A005653(n+1), A020739(n)]`
-/

namespace A190237.P4863808216702038747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190237.P4863808216702038747

noncomputable section

/-- A190237: Positions of 0 in A190236; complement of A190238.

Offset 1, canonical program `A190237.P4863808216702038747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190237 (n : ℕ) : ℤ :=
  (A190237.P4863808216702038747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190250.P8306592236915081193

`eq[2, and(2, A195175(n))]`
-/

namespace A190250.P8306592236915081193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A195175 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190250.P8306592236915081193

noncomputable section

/-- A190250: Positions of 1 in A190248.

Offset 1, canonical program `A190250.P8306592236915081193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190250 (n : ℕ) : ℤ :=
  (A190250.P8306592236915081193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190328.P11754275294601882874

`A047253(n+1)+∑[A168185(A195142(n))]`
-/

namespace A190328.P11754275294601882874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A195142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190328.P11754275294601882874

noncomputable section

/-- A190328: a(n) = n + [n*r/t] + [n*s/t]; r=1/2, s=sinh(Pi/2), t=cosh(Pi/2).

Offset 1, canonical program `A190328.P11754275294601882874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A190328 (n : ℕ) : ℤ :=
  A190328.P11754275294601882874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A190328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190329.P9937040958972047982

`∑[Δ[A091087(n)]+1]`
-/

namespace A190329.P9937040958972047982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190329.P9937040958972047982

noncomputable section

/-- A190329: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190329.P9937040958972047982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190329 (n : ℕ) : ℤ :=
  A190329.P9937040958972047982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190330.P13399196452592527420

`ceil(∑[Δ[A049472(n)]+1]+n/2)`
-/

namespace A190330.P13399196452592527420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n : ℚ) / 2⌉

end

end A190330.P13399196452592527420

noncomputable section

/-- A190330: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190330.P13399196452592527420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190330 (n : ℕ) : ℤ :=
  A190330.P13399196452592527420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190346.P5329104009492791436

`A047276(n+1)+A008619(∑[A081168(n)])`
-/

namespace A190346.P5329104009492791436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (n + 1) + A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190346.P5329104009492791436

noncomputable section

/-- A190346: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(5/2), t=sqrt(2/5).

Offset 1, canonical program `A190346.P5329104009492791436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A190346 (n : ℕ) : ℤ :=
  A190346.P5329104009492791436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A190346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190363.P14592023543737543621

`A058066(n+1)+∑[A177704(n)]`
-/

namespace A190363.P14592023543737543621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190363.P14592023543737543621

noncomputable section

/-- A190363: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(5/4), t=sqrt(4/5).

Offset 1, canonical program `A190363.P14592023543737543621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A190363 (n : ℕ) : ℤ :=
  A190363.P14592023543737543621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A190363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190431.P13255837954524087978

`A005206(3*(n+1))-3*A005206(n)`
-/

namespace A190431.P13255837954524087978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (3 * (n + 1)) - 3 * A005206 n

end

end A190431.P13255837954524087978

noncomputable section

/-- A190431: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(golden ratio,3,1) and []=floor.

Offset 1, canonical program `A190431.P13255837954524087978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190431 (n : ℕ) : ℤ :=
  A190431.P13255837954524087978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190436.P2932239580418806414

`A005206(A016777(n+1))-A016777(A005206(n))`
-/

namespace A190436.P2932239580418806414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A016777 (n + 1)).toNat - A016777 (A005206 n).toNat

end

end A190436.P2932239580418806414

noncomputable section

/-- A190436: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(golden ratio,3,2) and []=floor.

Offset 1, canonical program `A190436.P2932239580418806414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190436 (n : ℕ) : ℤ :=
  A190436.P2932239580418806414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190439.P7080352960554149212

`eq[3, gcd(3, A005206(2*n+1+n))]`
-/

namespace A190439.P7080352960554149212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A005206 (2 * n + 1 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190439.P7080352960554149212

noncomputable section

/-- A190439: Positions of 2 in A190436.

Offset 1, canonical program `A190439.P7080352960554149212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A190439 (n : ℕ) : ℤ :=
  (A190439.P7080352960554149212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A190439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190489.P3317402646554252033

`eq[1, A190487(n+1)]+1`
-/

namespace A190489.P3317402646554252033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190489.P3317402646554252033

noncomputable section

/-- A190489: Positions of 1 in A190487.

Offset 1, canonical program `A190489.P3317402646554252033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190489 (n : ℕ) : ℤ :=
  (A190489.P3317402646554252033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190531.P15208319234935532465

`A027471(n+1)+A048493(n)+1`
-/

namespace A190531.P15208319234935532465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A048493 n + 1)

end

end A190531.P15208319234935532465

noncomputable section

/-- A190531: Number of idempotents in Identity Difference Partial Transformation semigroup.

Offset 1, canonical program `A190531.P15208319234935532465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A190531 (n : ℕ) : ℤ :=
  A190531.P15208319234935532465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A190531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190544.P18295826170075016649

`floor((A004767(n)+1)*sqrt(2))%4`
-/

namespace A190544.P18295826170075016649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A004767 n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ 4

end

end A190544.P18295826170075016649

noncomputable section

/-- A190544: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,0) and []=floor.

Offset 1, canonical program `A190544.P18295826170075016649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190544 (n : ℕ) : ℤ :=
  A190544.P18295826170075016649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190636.P13007990672937327187

`A052460(n+1)+n*A168351(n+1)`
-/

namespace A190636.P13007990672937327187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052460 (n + 1) + (n : ℤ) * A168351 (n + 1)

end

end A190636.P13007990672937327187

noncomputable section

/-- A190636: a(n) = (n^3 + 3*n^7)/4.

Offset 1, canonical program `A190636.P13007990672937327187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190636 (n : ℕ) : ℤ :=
  A190636.P13007990672937327187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190660.P7356408199009343106

`A057048(n)%A057048(abs(A023443(n)))`
-/

namespace A190660.P7356408199009343106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057048 n) (A057048 |A023443 n|.toNat)

end

end A190660.P7356408199009343106

noncomputable section

/-- A190660: Number of triangular numbers T(k) between powers of 2, 2^(n-1) < T(k) <= 2^n.

Offset 0, canonical program `A190660.P7356408199009343106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A190660 (n : ℕ) : ℤ :=
  A190660.P7356408199009343106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A190660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190669.P12367758705987530288

`val(A022847(n+1), A198081(n+1))`
-/

namespace A190669.P12367758705987530288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022847 (n + 1)).toNat (A198081 (n + 1)).toNat

end

end A190669.P12367758705987530288

noncomputable section

/-- A190669: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(sqrt(3),2,0) and [ ] = floor.

Offset 1, canonical program `A190669.P12367758705987530288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190669 (n : ℕ) : ℤ :=
  (A190669.P12367758705987530288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190694.P15947102220208234512

`eq[1, xor(A198268(n), A198269(n))]`
-/

namespace A190694.P15947102220208234512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198268 n) (A198269 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190694.P15947102220208234512

noncomputable section

/-- A190694: Positions of 0 in A190693.

Offset 1, canonical program `A190694.P15947102220208234512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190694 (n : ℕ) : ℤ :=
  (A190694.P15947102220208234512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190695.P12868016274228505227

`eq[1, A190693(n+1)]+1`
-/

namespace A190695.P12868016274228505227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190695.P12868016274228505227

noncomputable section

/-- A190695: Positions of 1's in A190693.

Offset 1, canonical program `A190695.P12868016274228505227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190695 (n : ℕ) : ℤ :=
  (A190695.P12868016274228505227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190696.P2091379119421115800

`eq[2, A190693(n+1)]+1`
-/

namespace A190696.P2091379119421115800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190696.P2091379119421115800

noncomputable section

/-- A190696: Positions of 2 in A190693.

Offset 1, canonical program `A190696.P2091379119421115800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190696 (n : ℕ) : ℤ :=
  (A190696.P2091379119421115800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190697.P17780005310990267503

`eq[3, A190693(n+1)]+1`
-/

namespace A190697.P17780005310990267503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190697.P17780005310990267503

noncomputable section

/-- A190697: Positions of 3 in A190693.

Offset 1, canonical program `A190697.P17780005310990267503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190697 (n : ℕ) : ℤ :=
  (A190697.P17780005310990267503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190708.P26932379981093847

`eq[3, and(3, A198269(2*n+1))]`
-/

namespace A190708.P26932379981093847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A198269 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P26932379981093847

noncomputable section

/-- A190708: Positions of 3 in A190704.

Offset 1, canonical program `A190708.P26932379981093847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190708 (n : ℕ) : ℤ :=
  (A190708.P26932379981093847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190767.P1307513798706752112

`∩[A120752(n+1), A184578(n+1)]`
-/

namespace A190767.P1307513798706752112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P1307513798706752112

noncomputable section

/-- A190767: Positions of 0 in A190766.

Offset 1, canonical program `A190767.P1307513798706752112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4713 terms. -/
def A190767 (n : ℕ) : ℤ :=
  (A190767.P1307513798706752112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4713 terms. -/
def A190767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190768.P8267790902087232996

`eq[1, A049472(3*n)%3]`
-/

namespace A190768.P8267790902087232996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (3 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190768.P8267790902087232996

noncomputable section

/-- A190768: Positions of 1 in A190766.

Offset 1, canonical program `A190768.P8267790902087232996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A190768 (n : ℕ) : ℤ :=
  (A190768.P8267790902087232996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A190768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190798.P17083894840847535071

`A004396(n)²*∑[A022003(n)]`
-/

namespace A190798.P17083894840847535071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190798.P17083894840847535071

noncomputable section

/-- A190798: Maximum value of k^2 * (n-k).

Offset 0, canonical program `A190798.P17083894840847535071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190798 (n : ℕ) : ℤ :=
  A190798.P17083894840847535071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190843.P14248419695484844249

`A276853(n+1)-2*A022843(n+1)`
-/

namespace A190843.P14248419695484844249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1) - 2 * A022843 (n + 1)

end

end A190843.P14248419695484844249

noncomputable section

/-- A190843: a(n) = [2*n*e] - 2*[n*e], where [ ] = floor and e is the natural logarithm base.

Offset 1, canonical program `A190843.P14248419695484844249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190843 (n : ℕ) : ℤ :=
  A190843.P14248419695484844249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190883.P7184940836937768074

`eq[1, A189480(n+1)]+1`
-/

namespace A190883.P7184940836937768074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190883.P7184940836937768074

noncomputable section

/-- A190883: Positions of 1 in A189480.

Offset 1, canonical program `A190883.P7184940836937768074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190883 (n : ℕ) : ℤ :=
  (A190883.P7184940836937768074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190884.P11547895291054951977

`eq[2, A189480(n+1)]+1`
-/

namespace A190884.P11547895291054951977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190884.P11547895291054951977

noncomputable section

/-- A190884: Positions of 2 in A189480.

Offset 1, canonical program `A190884.P11547895291054951977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190884 (n : ℕ) : ℤ :=
  (A190884.P11547895291054951977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190885.P14204974834777005053

`lt[2, A189480(n+1)]+1`
-/

namespace A190885.P14204974834777005053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190885.P14204974834777005053

noncomputable section

/-- A190885: Positions of 3 in A189480.

Offset 1, canonical program `A190885.P14204974834777005053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190885 (n : ℕ) : ℤ :=
  (A190885.P14204974834777005053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190887.P9338951253753426506

`eq[0, A190886(n+1)]+1`
-/

namespace A190887.P9338951253753426506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190887.P9338951253753426506

noncomputable section

/-- A190887: Positions of 0 in A190886.

Offset 1, canonical program `A190887.P9338951253753426506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A190887 (n : ℕ) : ℤ :=
  (A190887.P9338951253753426506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A190887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190888.P515211656017772921

`eq[1, A190886(n+1)]+1`
-/

namespace A190888.P515211656017772921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190888.P515211656017772921

noncomputable section

/-- A190888: Positions of 1 in A190886.

Offset 1, canonical program `A190888.P515211656017772921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A190888 (n : ℕ) : ℤ :=
  (A190888.P515211656017772921.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A190888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190889.P3985624384271459733

`eq[2, A190886(n+1)]+1`
-/

namespace A190889.P3985624384271459733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190889.P3985624384271459733

noncomputable section

/-- A190889: Positions of 2 in A190886.

Offset 1, canonical program `A190889.P3985624384271459733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A190889 (n : ℕ) : ℤ :=
  (A190889.P3985624384271459733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A190889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190890.P13703875353801391040

`eq[3, A190886(n+1)]+1`
-/

namespace A190890.P13703875353801391040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190890.P13703875353801391040

noncomputable section

/-- A190890: Positions of 3 in A190886.

Offset 1, canonical program `A190890.P13703875353801391040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A190890 (n : ℕ) : ℤ :=
  (A190890.P13703875353801391040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A190890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190891.P7111368209134081131

`eq[4, A190886(n+1)]+1`
-/

namespace A190891.P7111368209134081131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190891.P7111368209134081131

noncomputable section

/-- A190891: Positions of 4 in A190886.

Offset 1, canonical program `A190891.P7111368209134081131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. -/
def A190891 (n : ℕ) : ℤ :=
  (A190891.P7111368209134081131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. -/
def A190891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190997.P14174213423803526934

`∏{d}[n+1, abs(A187844(#))]`
-/

namespace A190997.P14174213423803526934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), |A187844 d|

end

end A190997.P14174213423803526934

noncomputable section

/-- A190997: Product of digits of all the divisors of n.

Offset 1, canonical program `A190997.P14174213423803526934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190997 (n : ℕ) : ℤ :=
  A190997.P14174213423803526934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191059.P2301529256744788492

`p?[A074229(n+1)-6]`
-/

namespace A191059.P2301529256744788492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074229 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P2301529256744788492

noncomputable section

/-- A191059: Primes p that have Kronecker symbol (p|6) = -1.

Offset 1, canonical program `A191059.P2301529256744788492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3048 terms. -/
def A191059 (n : ℕ) : ℤ :=
  A191059.P2301529256744788492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3048 terms. -/
def A191059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191060.P4493238980681511032

`p?[A267541(n)]`
-/

namespace A191060.P4493238980681511032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191060.P4493238980681511032

noncomputable section

/-- A191060: Primes that are not squares mod 11.

Offset 1, canonical program `A191060.P4493238980681511032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A191060 (n : ℕ) : ℤ :=
  A191060.P4493238980681511032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. -/
def A191060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191103.P12099556813805402838

`eq[0, A190893(n+1)]+1`
-/

namespace A191103.P12099556813805402838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191103.P12099556813805402838

noncomputable section

/-- A191103: Positions of 0 in A190893.

Offset 1, canonical program `A191103.P12099556813805402838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A191103 (n : ℕ) : ℤ :=
  (A191103.P12099556813805402838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A191103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191104.P2192319559702728483

`eq[1, A190893(n+1)]+1`
-/

namespace A191104.P2192319559702728483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191104.P2192319559702728483

noncomputable section

/-- A191104: Positions of 1 in A190893.

Offset 1, canonical program `A191104.P2192319559702728483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A191104 (n : ℕ) : ℤ :=
  (A191104.P2192319559702728483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A191104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191105.P5073806058281641988

`lt[1, A190893(n+1)]+1`
-/

namespace A191105.P5073806058281641988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191105.P5073806058281641988

noncomputable section

/-- A191105: Positions of 2 in A190893.

Offset 1, canonical program `A191105.P5073806058281641988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A191105 (n : ℕ) : ℤ :=
  (A191105.P5073806058281641988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A191105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191176.P8814893022521999597

`filter[n+1, A191156(#)]`
-/

namespace A191176.P8814893022521999597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191156 (f1 j) = 1) n)

end

end A191176.P8814893022521999597

noncomputable section

/-- A191176: Positions of 1 in A191156; complement of A191160.

Offset 1, canonical program `A191176.P8814893022521999597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A191176 (n : ℕ) : ℤ :=
  (A191176.P8814893022521999597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A191176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191202.P17285865752956347945

`filter[n+1, A191188(#)]`
-/

namespace A191202.P17285865752956347945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191188 (f1 j) = 1) n)

end

end A191202.P17285865752956347945

noncomputable section

/-- A191202: Positions of 1 in A191188; complement of A191194.

Offset 1, canonical program `A191202.P17285865752956347945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A191202 (n : ℕ) : ℤ :=
  (A191202.P17285865752956347945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A191202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191215.P11746746193308624950

`filter[n+1, A191162(#)]`
-/

namespace A191215.P11746746193308624950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191162 (f1 j) = 1) n)

end

end A191215.P11746746193308624950

noncomputable section

/-- A191215: Positions of 1 in A191162; complement of A191214.

Offset 1, canonical program `A191215.P11746746193308624950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A191215 (n : ℕ) : ℤ :=
  (A191215.P11746746193308624950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A191215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191230.P13694247197576503895

`eq[1, A019426(A195182(2*n))]`
-/

namespace A191230.P13694247197576503895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191230.P13694247197576503895

noncomputable section

/-- A191230: Positions of 0 in A191152; complement of A191231.

Offset 1, canonical program `A191230.P13694247197576503895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A191230 (n : ℕ) : ℤ :=
  (A191230.P13694247197576503895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A191230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191231.P1577848690134281578

`filter[n+1, A191152(#)]`
-/

namespace A191231.P1577848690134281578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191152 (f1 j) = 1) n)

end

end A191231.P1577848690134281578

noncomputable section

/-- A191231: Positions of 1 in A191152; complement of A191230.

Offset 1, canonical program `A191231.P1577848690134281578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191231 (n : ℕ) : ℤ :=
  (A191231.P1577848690134281578.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191386.P5013181058466511668

`A000034(n)*A258431(A004526(n))`
-/

namespace A191386.P5013181058466511668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A258431 (A004526 n).toNat

end

end A191386.P5013181058466511668

noncomputable section

/-- A191386: Number of ascents of length 1 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights). An ascent is a maximal sequence of consecutive (1,1)-steps.

Offset 0, canonical program `A191386.P5013181058466511668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191386 (n : ℕ) : ℤ :=
  A191386.P5013181058466511668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191402.P12423475413836324740

`A026352(n)+A005206(n)`
-/

namespace A191402.P12423475413836324740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + A005206 n

end

end A191402.P12423475413836324740

noncomputable section

/-- A191402: a(n) = A000201(n) + A000201(n+1).

Offset 0, canonical program `A191402.P12423475413836324740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191402 (n : ℕ) : ℤ :=
  A191402.P12423475413836324740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191529.P15028808747650929508

`Δ[Δ[A001405(abs(2-n))]]`
-/

namespace A191529.P15028808747650929508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191529.P15028808747650929508

noncomputable section

/-- A191529: Number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights) with no initial and no final (1,0)-steps.

Offset 0, canonical program `A191529.P15028808747650929508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A191529 (n : ℕ) : ℤ :=
  A191529.P15028808747650929508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A191529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191531.P12400038727558931515

`∑[A063886(n)-1]`
-/

namespace A191531.P12400038727558931515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P12400038727558931515

noncomputable section

/-- A191531: Sum of lengths of initial and final horizontal segments over all dispersed Dyck paths of semilength n (i.e., over all Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191531.P12400038727558931515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191531 (n : ℕ) : ℤ :=
  A191531.P12400038727558931515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191584.P8429936160232263859

`A000045(n-1)+3*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A191584.P8429936160232263859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000045 (n - 1) + 3 * a (n - 2)

end

end A191584.P8429936160232263859

noncomputable section

/-- A191584: Diagonal sums of the Riordan matrix (1/(1-3*x^2),x/(1-x)) (A191582).

Offset 0, canonical program `A191584.P8429936160232263859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A191584 (n : ℕ) : ℤ :=
  A191584.P8429936160232263859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A191584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191629.P5021553449215211800

`floor(A001045(n+1)/(2/3+n))`
-/

namespace A191629.P5021553449215211800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001045 (n + 1) : ℚ) / ((2 : ℚ) / 3 + (n : ℚ))⌋

end

end A191629.P5021553449215211800

noncomputable section

/-- A191629: a(n) = floor((2^n)/(3*n - 1)).

Offset 1, canonical program `A191629.P5021553449215211800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191629 (n : ℕ) : ℤ :=
  A191629.P5021553449215211800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191633.P14455339056132900001

`floor(A000051(n+1)/(2*n+3))`
-/

namespace A191633.P14455339056132900001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 (n + 1) : ℚ) / (2 * n + 3 : ℚ)⌋

end

end A191633.P14455339056132900001

noncomputable section

/-- A191633: a(n) = floor((1 + 2^n)/(1 + 2*n)).

Offset 1, canonical program `A191633.P14455339056132900001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191633 (n : ℕ) : ℤ :=
  A191633.P14455339056132900001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191634.P6081177274669715148

`floor(A007051(n+1)/(3*n/2+2))`
-/

namespace A191634.P6081177274669715148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007051 (n + 1) : ℚ) / (3 * ((n : ℚ) / 2) + 2)⌋

end

end A191634.P6081177274669715148

noncomputable section

/-- A191634: a(n) = floor((1 + 3^n)/(1 + 3*n)).

Offset 1, canonical program `A191634.P6081177274669715148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A191634 (n : ℕ) : ℤ :=
  A191634.P6081177274669715148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A191634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191636.P18257518018724697665

`A053639(Δ[n²])-1`
-/

namespace A191636.P18257518018724697665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A191636.P18257518018724697665

noncomputable section

/-- A191636: a(n) = floor((-1 + 4^n)/(-1 + 2*n)).

Offset 1, canonical program `A191636.P18257518018724697665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191636 (n : ℕ) : ℤ :=
  A191636.P18257518018724697665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191640.P8273976003024264994

`A191631(2*(n+1))`
-/

namespace A191640.P8273976003024264994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191631 (2 * (n + 1))

end

end A191640.P8273976003024264994

noncomputable section

/-- A191640: a(n) = floor((-1 + 4^n)/(-1 + 4*n)).

Offset 1, canonical program `A191640.P8273976003024264994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191640 (n : ℕ) : ℤ :=
  A191640.P8273976003024264994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A191640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191695.P11693114996485204166

`floor(A000351(n+1)/A001047(n+1))`
-/

namespace A191695.P11693114996485204166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000351 (n + 1) : ℚ) / (A001047 (n + 1) : ℚ)⌋

end

end A191695.P11693114996485204166

noncomputable section

/-- A191695: a(n) = floor((5^n)/(3^n - 2^n)).

Offset 1, canonical program `A191695.P11693114996485204166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A191695 (n : ℕ) : ℤ :=
  A191695.P11693114996485204166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A191695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191696.P13932945780243084106

`floor(A000351(n+1)/A007689(n+1))`
-/

namespace A191696.P13932945780243084106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000351 (n + 1) : ℚ) / (A007689 (n + 1) : ℚ)⌋

end

end A191696.P13932945780243084106

noncomputable section

/-- A191696: a(n) = floor((5^n)/(3^n + 2^n)).

Offset 1, canonical program `A191696.P13932945780243084106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A191696 (n : ℕ) : ℤ :=
  A191696.P13932945780243084106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A191696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191797.P14054922042291415525

`A056014(n)-a(n-1)` with `a(0)=0`
-/

namespace A191797.P14054922042291415525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056014 n - a (n - 1)

end

end A191797.P14054922042291415525

noncomputable section

/-- A191797: a(n) = binomial(F(n), 2) where F(n) = A000045(n).

Offset 0, canonical program `A191797.P14054922042291415525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A191797 (n : ℕ) : ℤ :=
  A191797.P14054922042291415525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A191797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191906.P16831451749657423421

`A066729(n+2)%A001065(n+2)`
-/

namespace A191906.P16831451749657423421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066729 (n + 2)) (A001065 (n + 2))

end

end A191906.P16831451749657423421

noncomputable section

/-- A191906: The remainder of (product of proper divisors of n) mod (sum of proper divisors of n).

Offset 2, canonical program `A191906.P16831451749657423421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5038 terms. -/
def A191906 (n : ℕ) : ℤ :=
  A191906.P16831451749657423421.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5038 terms. -/
def A191906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192069.P1951905682487218386

`∑[C(n+4, 4)/5*A000045(n)]`
-/

namespace A192069.P1951905682487218386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℚ) / 5 * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192069.P1951905682487218386

noncomputable section

/-- A192069: (A192249)/5.

Offset 1, canonical program `A192069.P1951905682487218386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A192069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192069.P1951905682487218386.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A192069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192070.P14429528532449134624

`∑[C(2*n, n)/2*A000045(n)]`
-/

namespace A192070.P14429528532449134624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / 2 * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192070.P14429528532449134624

noncomputable section

/-- A192070: (A192251)/2.

Offset 1, canonical program `A192070.P14429528532449134624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A192070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192070.P14429528532449134624.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A192070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192143.P13813246361059917877

`∑[Δ[n²]*A006490(n+1)]`
-/

namespace A192143.P13813246361059917877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A006490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192143.P13813246361059917877

noncomputable section

/-- A192143: 0-sequence of reduction of hexagonal numbers sequence by x^2 -> x+1.

Offset 1, canonical program `A192143.P13813246361059917877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192143 (n : ℕ) : ℤ :=
  A192143.P13813246361059917877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192145.P15687414144948949849

`∑[Δ[n*∑[n]]*Δ[A000045(n)]]`
-/

namespace A192145.P15687414144948949849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * (f4 (n + 1) - f4 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192145.P15687414144948949849

noncomputable section

/-- A192145: 0-sequence of reduction of pentagonal numbers sequence by x^2 -> x+1.

Offset 1, canonical program `A192145.P15687414144948949849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192145 (n : ℕ) : ℤ :=
  A192145.P15687414144948949849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192232.P9148846508517543057

`∑[A112576(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A192232.P9148846508517543057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A112576 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192232.P9148846508517543057

noncomputable section

/-- A192232: Constant term of the reduction of n-th Fibonacci polynomial by x^2 -> x+1. (See Comments.)

Offset 1, canonical program `A192232.P9148846508517543057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A192232 (n : ℕ) : ℤ :=
  A192232.P9148846508517543057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A192232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192244.P14465842331784357705

`∑[∑[n+1]*Δ[A000045(n)]]`
-/

namespace A192244.P14465842331784357705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192244.P14465842331784357705

noncomputable section

/-- A192244: 0-sequence of reduction of triangular number sequence by x^2 -> x+1.

Offset 1, canonical program `A192244.P14465842331784357705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A192244 (n : ℕ) : ℤ :=
  A192244.P14465842331784357705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A192244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192245.P7575187329844493871

`abs(∑[(A001611(n)-1)*∑[n+1]])`
-/

namespace A192245.P7575187329844493871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192245.P7575187329844493871

noncomputable section

/-- A192245: 1-sequence of reduction of triangular number sequence by x^2 -> x+1.

Offset 1, canonical program `A192245.P7575187329844493871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A192245 (n : ℕ) : ℤ :=
  A192245.P7575187329844493871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A192245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192246.P7079708184768822987

`∑[C(n+3, 3)*Δ[A000045(n)]]`
-/

namespace A192246.P7079708184768822987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192246.P7079708184768822987

noncomputable section

/-- A192246: 0-sequence of reduction of tetrahedral number sequence by x^2 -> x+1.

Offset 1, canonical program `A192246.P7079708184768822987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A192246 (n : ℕ) : ℤ :=
  A192246.P7079708184768822987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A192246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192247.P8336674393211516399

`∑[C(n+3, 3)*A000045(n)]`
-/

namespace A192247.P8336674393211516399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192247.P8336674393211516399

noncomputable section

/-- A192247: 1-sequence of reduction of tetrahedral number sequence by x^2 -> x+1.

Offset 1, canonical program `A192247.P8336674393211516399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 444 terms. -/
def A192247 (n : ℕ) : ℤ :=
  A192247.P8336674393211516399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 444 terms. -/
def A192247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192248.P9724838278687975576

`∑[C(n+4, 4)*Δ[A000045(n)]]`
-/

namespace A192248.P9724838278687975576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192248.P9724838278687975576

noncomputable section

/-- A192248: 0-sequence of reduction of binomial coefficient sequence B(n,4)=A000332 by x^2 -> x+1.

Offset 1, canonical program `A192248.P9724838278687975576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A192248 (n : ℕ) : ℤ :=
  A192248.P9724838278687975576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A192248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192254.P12313021086416489678

`a(n-1)+(n+1)²*A000045(n-1)` with `a(0)=1`
-/

namespace A192254.P12313021086416489678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 : ℤ) * A000045 (n - 1)

end

end A192254.P12313021086416489678

noncomputable section

/-- A192254: 0-sequence of reduction of (n^2) by x^2 -> x+1.

Offset 1, canonical program `A192254.P12313021086416489678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A192254 (n : ℕ) : ℤ :=
  A192254.P12313021086416489678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A192254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192256.P1968022842526090405

`∑[(n+1)²*A006490(n+1)]`
-/

namespace A192256.P1968022842526090405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A006490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192256.P1968022842526090405

noncomputable section

/-- A192256: 0-sequence of reduction of (n^3) by x^2 -> x+1.

Offset 1, canonical program `A192256.P1968022842526090405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A192256 (n : ℕ) : ℤ :=
  A192256.P1968022842526090405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A192256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192257.P6952243731285704318

`abs(∑[(A157725(n)-2)*(n+1)^3])`
-/

namespace A192257.P6952243731285704318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192257.P6952243731285704318

noncomputable section

/-- A192257: 1-sequence of reduction of (n^3) by x^2 -> x+1.

Offset 1, canonical program `A192257.P6952243731285704318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A192257 (n : ℕ) : ℤ :=
  A192257.P6952243731285704318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A192257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192299.P12572402272600155914

`∑[(∑[2*n]+1)*Δ[A000045(n)]]`
-/

namespace A192299.P12572402272600155914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192299.P12572402272600155914

noncomputable section

/-- A192299: 0-sequence of reduction of (n^2+n+1) by x^2 -> x+1.

Offset 1, canonical program `A192299.P12572402272600155914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A192299 (n : ℕ) : ℤ :=
  A192299.P12572402272600155914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A192299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192304.P14413540038402998518

`∑[Δ[n²]*Δ[A000045(n)]]`
-/

namespace A192304.P14413540038402998518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192304.P14413540038402998518

noncomputable section

/-- A192304: 0-sequence of reduction of (2n-1) by x^2 -> x+1.

Offset 1, canonical program `A192304.P14413540038402998518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192304 (n : ℕ) : ℤ :=
  A192304.P14413540038402998518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192305.P8579878406479377738

`2*(A178521(n)+1)`
-/

namespace A192305.P8579878406479377738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178521 n + 1)

end

end A192305.P8579878406479377738

noncomputable section

/-- A192305: 0-sequence of reduction of (2n) by x^2 -> x+1.

Offset 1, canonical program `A192305.P8579878406479377738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192305 (n : ℕ) : ℤ :=
  A192305.P8579878406479377738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192309.P6707960768985448213

`∑[(3*n+2)*Δ[A000045(n)]]`
-/

namespace A192309.P6707960768985448213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192309.P6707960768985448213

noncomputable section

/-- A192309: 0-sequence of reduction of (3n-1) by x^2 -> x+1.

Offset 1, canonical program `A192309.P6707960768985448213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192309 (n : ℕ) : ℤ :=
  A192309.P6707960768985448213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192311.P6894955715271037330

`∑[(3*n+1)*Δ[A000045(n)]]`
-/

namespace A192311.P6894955715271037330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192311.P6894955715271037330

noncomputable section

/-- A192311: 0-sequence of reduction of (3n-2) by x^2 -> x+1.

Offset 1, canonical program `A192311.P6894955715271037330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192311 (n : ℕ) : ℤ :=
  A192311.P6894955715271037330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A192311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192327.P1946610714250374120

`A000040(n+1)%(2*(n+1))`
-/

namespace A192327.P1946610714250374120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (2 * (n + 1) : ℤ)

end

end A192327.P1946610714250374120

noncomputable section

/-- A192327: a(n) = prime(n) mod 2*n.

Offset 1, canonical program `A192327.P1946610714250374120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192327 (n : ℕ) : ℤ :=
  A192327.P1946610714250374120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192339.P17649155680946184549

`A192338(n+1)-A001333(n)`
-/

namespace A192339.P17649155680946184549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192338 (n + 1) - A001333 n

end

end A192339.P17649155680946184549

noncomputable section

/-- A192339: Coefficient of x in the reduction of n-th polynomial at A157751 by x^2->x+2.

Offset 1, canonical program `A192339.P17649155680946184549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A192339 (n : ℕ) : ℤ :=
  A192339.P17649155680946184549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A192339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192350.P9743539187543881562

`2^(n-1)*A192421(n)`
-/

namespace A192350.P9743539187543881562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A192421 n : ℚ)

end

end A192350.P9743539187543881562

noncomputable section

/-- A192350: Constant term of the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

Offset 1, canonical program `A192350.P9743539187543881562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A192350 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192350.P9743539187543881562.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A192350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192352.P11838568185263052743

`A106511(2*n)+A106511(n+2)`
-/

namespace A192352.P11838568185263052743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * n) + A106511 (n + 2)

end

end A192352.P11838568185263052743

noncomputable section

/-- A192352: Constant term of the reduction of the polynomial p(n,x)=(1/2)((x+1)^n+(x-1)^n) by x^2->x+1.

Offset 1, canonical program `A192352.P11838568185263052743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A192352 (n : ℕ) : ℤ :=
  A192352.P11838568185263052743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A192352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192356.P14565496258539747722

`A087433(n)-A007051(A052928(n))`
-/

namespace A192356.P14565496258539747722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A007051 (A052928 n).toNat

end

end A192356.P14565496258539747722

noncomputable section

/-- A192356: Coefficients of x in the reduction of the polynomial p(n,x) = ((x+2)^n + (x-2)^n)/2 by x^2->x+2.

Offset 1, canonical program `A192356.P14565496258539747722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A192356 (n : ℕ) : ℤ :=
  A192356.P14565496258539747722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A192356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192381.P8158394945412087484

`A192380(n+1)/2`
-/

namespace A192381.P8158394945412087484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192380 (n + 1) : ℚ) / 2

end

end A192381.P8158394945412087484

noncomputable section

/-- A192381: (A192380)/2.

Offset 1, canonical program `A192381.P8158394945412087484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A192381 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192381.P8158394945412087484.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A192381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192468.P11035647322540598328

`A052533(2*(n+1))+A052533(n+1)+1`
-/

namespace A192468.P11035647322540598328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (2 * (n + 1)) + (A052533 (n + 1) + 1)

end

end A192468.P11035647322540598328

noncomputable section

/-- A192468: Constant term of the reduction by x^2->x+3 of the polynomial p(n,x)=1+x^n+x^(2n).

Offset 1, canonical program `A192468.P11035647322540598328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192468 (n : ℕ) : ℤ :=
  A192468.P11035647322540598328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192469.P13478001871904545668

`A099459(n)+A006130(n)`
-/

namespace A192469.P13478001871904545668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099459 n + A006130 n

end

end A192469.P13478001871904545668

noncomputable section

/-- A192469: Coefficient of x in the reduction by x^2->x+3 of the polynomial p(n,x)=1+x^n+x^(2n).

Offset 1, canonical program `A192469.P13478001871904545668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192469 (n : ℕ) : ℤ :=
  A192469.P13478001871904545668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192474.P12190973900447907118

`A001519(n+1)+∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=2, a(1)=1`
-/

namespace A192474.P12190973900447907118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A192474.P12190973900447907118

noncomputable section

/-- A192474: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^(n+1)+x^(2n).

Offset 1, canonical program `A192474.P12190973900447907118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192474 (n : ℕ) : ℤ :=
  A192474.P12190973900447907118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192543.P5385280127348229963

`A034887(n)-A000007(n)`
-/

namespace A192543.P5385280127348229963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A000007 n

end

end A192543.P5385280127348229963

noncomputable section

/-- A192543: Let r be the largest real zero of x^n - x^(n-1) - x^(n-2) - ... - 1 = 0. Then a(n) is the value of k which satisfies the equation 0.5/10^k < 2 - r < 5/10^k.

Offset 1, canonical program `A192543.P5385280127348229963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192543 (n : ℕ) : ℤ :=
  A192543.P5385280127348229963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192665.P16797719466534219078

`floor(sqrt(A001764(n)))`
-/

namespace A192665.P16797719466534219078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001764 n)

end

end A192665.P16797719466534219078

noncomputable section

/-- A192665: Floor-Sqrt transform of the numbers binomial(3*n,n)/(2*n+1) (A001764).

Offset 0, canonical program `A192665.P16797719466534219078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A192665 (n : ℕ) : ℤ :=
  A192665.P16797719466534219078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A192665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192669.P5846418315393625833

`floor(sqrt(A001006(n)))`
-/

namespace A192669.P5846418315393625833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001006 n)

end

end A192669.P5846418315393625833

noncomputable section

/-- A192669: Floor-Sqrt transform of Motzkin numbers (A001006).

Offset 0, canonical program `A192669.P5846418315393625833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A192669 (n : ℕ) : ℤ :=
  A192669.P5846418315393625833.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A192669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192670.P15151433657181621169

`floor(sqrt(A002426(n)))`
-/

namespace A192670.P15151433657181621169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002426 n)

end

end A192670.P15151433657181621169

noncomputable section

/-- A192670: Floor-Sqrt transform of central trinomial coefficients (A002426).

Offset 0, canonical program `A192670.P15151433657181621169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A192670 (n : ℕ) : ℤ :=
  A192670.P15151433657181621169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A192670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192674.P1098481128355414171

`floor(sqrt(A001850(n)))`
-/

namespace A192674.P1098481128355414171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001850 n)

end

end A192674.P1098481128355414171

noncomputable section

/-- A192674: Floor-Sqrt transform of large central Delannoy numbers (A001850).

Offset 0, canonical program `A192674.P1098481128355414171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A192674 (n : ℕ) : ℤ :=
  A192674.P1098481128355414171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A192674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192675.P9034443192618425155

`floor(sqrt(A000957(n)))`
-/

namespace A192675.P9034443192618425155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000957 n)

end

end A192675.P9034443192618425155

noncomputable section

/-- A192675: Floor-Sqrt transform of large Fine numbers (A000957).

Offset 0, canonical program `A192675.P9034443192618425155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A192675 (n : ℕ) : ℤ :=
  A192675.P9034443192618425155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A192675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192687.P8625485423685987352

`A005378(n)-A005379(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192687.P8625485423685987352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n - A005379 n

end

end A192687.P8625485423685987352

noncomputable section

/-- A192687: Male-female differences: a(n) = A005378(n) - A005379(n).

Offset 0, canonical program `A192687.P8625485423685987352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005378, A005379, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192687 (n : ℕ) : ℤ :=
  A192687.P8625485423685987352.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005378, A005379, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192812.P9142334217640746212

`A000931(2*n)+A000931(n)+1`
-/

namespace A192812.P9142334217640746212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) + (A000931 n + 1)

end

end A192812.P9142334217640746212

noncomputable section

/-- A192812: Constant term in the reduction of the polynomial x^(2*n) + x^n + 1 by x^3 -> x + 1. See Comments.

Offset 0, canonical program `A192812.P9142334217640746212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 413 terms. -/
def A192812 (n : ℕ) : ℤ :=
  A192812.P9142334217640746212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 413 terms. -/
def A192812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192831.P4865477445328640064

`(n+1)²*A028403(n+1)`
-/

namespace A192831.P4865477445328640064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A028403 (n + 1)

end

end A192831.P4865477445328640064

noncomputable section

/-- A192831: Molecular topological indices of the hypercube graphs.

Offset 1, canonical program `A192831.P4865477445328640064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A192831 (n : ℕ) : ℤ :=
  A192831.P4865477445328640064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A192831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192833.P3009315826709062459

`∑[12*(A014255(n)+1)]`
-/

namespace A192833.P3009315826709062459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A014255 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192833.P3009315826709062459

noncomputable section

/-- A192833: Molecular topological indices of the Moebius ladders.

Offset 1, canonical program `A192833.P3009315826709062459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192833 (n : ℕ) : ℤ :=
  A192833.P3009315826709062459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192834.P13094885623892816327

`(A154251(n)+A083329(n))*A122695(n+1)`
-/

namespace A192834.P13094885623892816327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154251 n + A083329 n) * A122695 (n + 1)

end

end A192834.P13094885623892816327

noncomputable section

/-- A192834: Molecular topological indices of the Mycielski graphs.

Offset 1, canonical program `A192834.P13094885623892816327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A192834 (n : ℕ) : ℤ :=
  A192834.P13094885623892816327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A192834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192836.P14392981005046667610

`A074149(n+3)-(A000217(2*n+1)+n)`
-/

namespace A192836.P14392981005046667610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - (A000217 (2 * n + 1) + (n : ℤ))

end

end A192836.P14392981005046667610

noncomputable section

/-- A192836: Molecular topological indices of the pan graphs.

Offset 1, canonical program `A192836.P14392981005046667610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A192836 (n : ℕ) : ℤ :=
  A192836.P14392981005046667610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A192836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192861.P8332335553101968689

`eq[4, A071327(2*(n+1))]`
-/

namespace A192861.P8332335553101968689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P8332335553101968689

noncomputable section

/-- A192861: Flat numbers: odd n such that n+1 is a squarefree number times a power of two.

Offset 1, canonical program `A192861.P8332335553101968689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192861 (n : ℕ) : ℤ :=
  (A192861.P8332335553101968689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192911.P3795806156725299792

`(A081172(n)-A001590(n))*A000045(n+1)`
-/

namespace A192911.P3795806156725299792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081172 n - A001590 n) * A000045 (n + 1)

end

end A192911.P3795806156725299792

noncomputable section

/-- A192911: Constant term in the reduction by (x^3 -> x + 1) of the polynomial F(n+1)*x^n, where F(n)=A000045 (Fibonacci sequence).

Offset 0, canonical program `A192911.P3795806156725299792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A192911 (n : ℕ) : ℤ :=
  A192911.P3795806156725299792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A192911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192912.P15720691915727451411

`A000045(n+1)*A001590(n)`
-/

namespace A192912.P15720691915727451411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001590 n

end

end A192912.P15720691915727451411

noncomputable section

/-- A192912: Coefficient of x in the reduction by (x^3 -> x + 1) of the polynomial F(n+1)*x^n, where F(n)=A000045 (Fibonacci sequence).

Offset 0, canonical program `A192912.P15720691915727451411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A192912 (n : ℕ) : ℤ :=
  A192912.P15720691915727451411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A192912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192913.P624377410006801110

`record[A053602(n)]*A000073(n)`
-/

namespace A192913.P624377410006801110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000073 n

end

end A192913.P624377410006801110

noncomputable section

/-- A192913: Coefficient of x^2 in the reduction by (x^3 -> x + 1) of the polynomial F(n+1)*x^n, where F(n)=A000045 (Fibonacci sequence).

Offset 0, canonical program `A192913.P624377410006801110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A192913 (n : ℕ) : ℤ :=
  A192913.P624377410006801110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A192913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193007.P7217741966688429233

`∑[A193006(abs(1-n))]`
-/

namespace A193007.P7217741966688429233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193006 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193007.P7217741966688429233

noncomputable section

/-- A193007: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A193007.P7217741966688429233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A193007 (n : ℕ) : ℤ :=
  A193007.P7217741966688429233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A193007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193041.P11284727698982766000

`A193005(n)+A000071(n+1)`
-/

namespace A193041.P11284727698982766000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 n + A000071 (n + 1)

end

end A193041.P11284727698982766000

noncomputable section

/-- A193041: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A193041.P11284727698982766000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A193041 (n : ℕ) : ℤ :=
  A193041.P11284727698982766000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A193041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193045.P2827464153145323467

`∑[A193044(abs(1-n))]`
-/

namespace A193045.P2827464153145323467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193045.P2827464153145323467

noncomputable section

/-- A193045: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A193045.P2827464153145323467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A193045 (n : ℕ) : ℤ :=
  A193045.P2827464153145323467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A193045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193048.P11747303590426001134

`A179992(n+1)-C(n+4, 4)`
-/

namespace A193048.P11747303590426001134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179992 (n + 1) - (Nat.choose (n + 4) 4 : ℤ)

end

end A193048.P11747303590426001134

noncomputable section

/-- A193048: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

Offset 0, canonical program `A193048.P11747303590426001134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A193048 (n : ℕ) : ℤ :=
  A193048.P11747303590426001134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A193048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193056.P6449544040074946363

`A100995(n+1)-A157658(n+1)`
-/

namespace A193056.P6449544040074946363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1) - A157658 (n + 1)

end

end A193056.P6449544040074946363

noncomputable section

/-- A193056: Reciprocals are the complement to logarithm of Riemann zeta. a(1)=0, for n>1: a(n) = A008683(n) + A100995(n).

Offset 1, canonical program `A193056.P6449544040074946363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193056 (n : ℕ) : ℤ :=
  A193056.P6449544040074946363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193218.P12613432133183371224

`A063496(n+1)+A006331(n)`
-/

namespace A193218.P12613432133183371224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) + A006331 n

end

end A193218.P12613432133183371224

noncomputable section

/-- A193218: Number of vertices in truncated tetrahedron with faces that are centered polygons.

Offset 1, canonical program `A193218.P12613432133183371224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193218 (n : ℕ) : ℤ :=
  A193218.P12613432133183371224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063496, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193218.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193334.P12064804272131131743

`∑{d}[A000203(n+1), (#+1)%2]`
-/

namespace A193334.P12064804272131131743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1) % 2

end

end A193334.P12064804272131131743

noncomputable section

/-- A193334: Number of even divisors of sigma(n).

Offset 1, canonical program `A193334.P12064804272131131743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193334 (n : ℕ) : ℤ :=
  (A193334.P12064804272131131743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193390.P5751766643514219834

`∑[2*(A063496(n+2)+2)]-n`
-/

namespace A193390.P5751766643514219834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063496 (n + 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A193390.P5751766643514219834

noncomputable section

/-- A193390: The hyper-Wiener index of a benzenoid consisting of a straight-line chain of n hexagons (s=2; see the Gutman et al. reference).

Offset 1, canonical program `A193390.P5751766643514219834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193390 (n : ℕ) : ℤ :=
  A193390.P5751766643514219834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193391.P789620291130935872

`A143938(n+1)-A007290(2*n)`
-/

namespace A193391.P789620291130935872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143938 (n + 1) - A007290 (2 * n)

end

end A193391.P789620291130935872

noncomputable section

/-- A193391: Wiener index of a benzenoid consisting of a spiral chain of n hexagons (s=1; see the Gutman et al. reference).

Offset 1, canonical program `A193391.P789620291130935872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193391 (n : ℕ) : ℤ :=
  A193391.P789620291130935872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193418.P5838120293856149076

`ceil(∑[A006342(n+1)/2])`
-/

namespace A193418.P5838120293856149076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006342 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A193418.P5838120293856149076

noncomputable section

/-- A193418: Expansion of x*(x^2+x-1)/(3*x^6-4*x^5+x^4-3*x^2+4*x-1).

Offset 1, canonical program `A193418.P5838120293856149076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A193418 (n : ℕ) : ℤ :=
  A193418.P5838120293856149076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A193418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193526.P4700897298278670448

`∑{d}[∑{p}[n+1, #], #*A059841(#)]`
-/

namespace A193526.P4700897298278670448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059841 d

end

end A193526.P4700897298278670448

noncomputable section

/-- A193526: Sum of even divisors of sopf(n).

Offset 1, canonical program `A193526.P4700897298278670448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193526 (n : ℕ) : ℤ :=
  A193526.P4700897298278670448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193530.P10420957842725818021

`(A171842(n)+A135153(n+2))/2`
-/

namespace A193530.P10420957842725818021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171842 n + A135153 (n + 2) : ℚ) / 2

end

end A193530.P10420957842725818021

noncomputable section

/-- A193530: Expansion of (1 - 2*x - 2*x^2 + 3*x^3 + x^5)/((1-x)*(1-2*x-x^2)*(1-2*x^2-x^4)).

Offset 0, canonical program `A193530.P10420957842725818021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A193530 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193530.P10420957842725818021.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A193530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193618.P1773305954526124744

`A033999(n)*A104565(record[A006369(n)])`
-/

namespace A193618.P1773305954526124744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A193618.P1773305954526124744

noncomputable section

/-- A193618: G.f. A(x) satisfies: A(x)^2 + A(-x)^2 = 2 and A(x)^-2 - A(-x)^-2 = -8*x.

Offset 0, canonical program `A193618.P1773305954526124744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A193618 (n : ℕ) : ℤ :=
  A193618.P1773305954526124744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A193618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193686.P2606559707504305533

`A000032(n+1)%(70/7)²`
-/

namespace A193686.P2606559707504305533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (n + 1)) (SequenceMachineLib.roundAway (((70 : ℚ) / 7) ^ 2))

end

end A193686.P2606559707504305533

noncomputable section

/-- A193686: Lucas numbers (mod 100).

Offset 1, canonical program `A193686.P2606559707504305533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A193686 (n : ℕ) : ℤ :=
  A193686.P2606559707504305533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A193686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193711.P17544858097457569638

`∑[A005214(n+1)]`
-/

namespace A193711.P17544858097457569638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193711.P17544858097457569638

noncomputable section

/-- A193711: Partial sums of the union of squares and triangular numbers.

Offset 1, canonical program `A193711.P17544858097457569638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193711 (n : ℕ) : ℤ :=
  A193711.P17544858097457569638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193732.P11178483245691745026

`2*(n+1)-A083375(n+1)`
-/

namespace A193732.P11178483245691745026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A083375 (n + 1)

end

end A193732.P11178483245691745026

noncomputable section

/-- A193732: Connell-like sequence.

Offset 1, canonical program `A193732.P11178483245691745026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193732 (n : ℕ) : ℤ :=
  A193732.P11178483245691745026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193941.P11198956561188241237

`A017900(n+3)+A005708(n)`
-/

namespace A193941.P11198956561188241237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 3) + A005708 n

end

end A193941.P11198956561188241237

noncomputable section

/-- A193941: G.f.: (1+x^3)/(1-x-x^6).

Offset 0, canonical program `A193941.P11198956561188241237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. -/
def A193941 (n : ℕ) : ℤ :=
  A193941.P11198956561188241237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. -/
def A193941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193942.P3135368118033031365

`A017902(n+4)+A005710(n)`
-/

namespace A193942.P3135368118033031365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (n + 4) + A005710 n

end

end A193942.P3135368118033031365

noncomputable section

/-- A193942: G.f.: (1+x^4)/(1-x-x^8).

Offset 0, canonical program `A193942.P3135368118033031365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1106 terms. -/
def A193942 (n : ℕ) : ℤ :=
  A193942.P3135368118033031365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1106 terms. -/
def A193942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193981.P9503583681536881760

`A019298(n)+A053526(n)-n²`
-/

namespace A193981.P9503583681536881760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n + (A053526 n - (n ^ 2 : ℤ))

end

end A193981.P9503583681536881760

noncomputable section

/-- A193981: Number of ways to arrange 3 nonattacking triangular rooks on an nXnXn triangular grid.

Offset 1, canonical program `A193981.P9503583681536881760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193981 (n : ℕ) : ℤ :=
  A193981.P9503583681536881760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194028.P3681008862063760381

`A198269(n+1)-1`
-/

namespace A194028.P3681008862063760381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 (n + 1) - 1

end

end A194028.P3681008862063760381

noncomputable section

/-- A194028: Beatty sequence for sqrt(12).

Offset 1, canonical program `A194028.P3681008862063760381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194028 (n : ℕ) : ℤ :=
  A194028.P3681008862063760381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194111.P2916237642784981807

`abs(∑[A198084(n+1)-1])`
-/

namespace A194111.P2916237642784981807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194111.P2916237642784981807

noncomputable section

/-- A194111: Sum{floor(j*sqrt(7)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(7).

Offset 1, canonical program `A194111.P2916237642784981807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194111 (n : ℕ) : ℤ :=
  A194111.P2916237642784981807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194113.P6583360892013188664

`∑[A198265(n+1)]-(n+1)`
-/

namespace A194113.P6583360892013188664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194113.P6583360892013188664

noncomputable section

/-- A194113: a(n) = Sum_{j=1..n} floor(j*sqrt(10)); n-th partial sum of Beatty sequence for sqrt(10).

Offset 1, canonical program `A194113.P6583360892013188664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194113 (n : ℕ) : ℤ :=
  A194113.P6583360892013188664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194114.P14564231074961159820

`∑[A198266(n+1)]-(n+1)`
-/

namespace A194114.P14564231074961159820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194114.P14564231074961159820

noncomputable section

/-- A194114: Sum{floor(j*sqrt(11)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(11).

Offset 1, canonical program `A194114.P14564231074961159820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194114 (n : ℕ) : ℤ :=
  A194114.P14564231074961159820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194115.P9006159922561375502

`abs(∑[A198269(n+1)-1])`
-/

namespace A194115.P9006159922561375502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194115.P9006159922561375502

noncomputable section

/-- A194115: Sum{floor(j*sqrt(12)) : 1<=j<=n}; n-th partial sum of Beatty sequence for sqrt(12).

Offset 1, canonical program `A194115.P9006159922561375502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194115 (n : ℕ) : ℤ :=
  A194115.P9006159922561375502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194116.P15459040552535540256

`∑[A198270(n+1)]-(n+1)`
-/

namespace A194116.P15459040552535540256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194116.P15459040552535540256

noncomputable section

/-- A194116: a(n) = Sum_{j=1..n} floor(j*sqrt(13)); n-th partial sum of Beatty sequence for sqrt(13).

Offset 1, canonical program `A194116.P15459040552535540256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194116 (n : ℕ) : ℤ :=
  A194116.P15459040552535540256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194137.P4172174883832530821

`abs(∑[1-A198083(n+1)])`
-/

namespace A194137.P4172174883832530821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A198083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194137.P4172174883832530821

noncomputable section

/-- A194137: a(n) = Sum_{j=1..n} floor(j*sqrt(6)); n-th partial sum of Beatty sequence for sqrt(6).

Offset 1, canonical program `A194137.P4172174883832530821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194137 (n : ℕ) : ℤ :=
  A194137.P4172174883832530821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194142.P2157525427764519074

`∑[A195120(n+1)]+∑[n]`
-/

namespace A194142.P2157525427764519074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194142.P2157525427764519074

noncomputable section

/-- A194142: a(n) = Sum_{j=1..n} floor(j*(3-sqrt(3))); n-th partial sum of Beatty sequence for 3-sqrt(3).

Offset 1, canonical program `A194142.P2157525427764519074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194142 (n : ℕ) : ℤ :=
  A194142.P2157525427764519074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194165.P9655520461940932840

`floor(∑[∑[ϕ-A001468(n)]])`
-/

namespace A194165.P9655520461940932840
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194165.P9655520461940932840

noncomputable section

/-- A194165: a(n) = [Sum_{k=1..n} (k*r)], where [ ]=floor, ( )=fractional part, and r = (1+sqrt(5))/2, the golden ratio.

Offset 1, canonical program `A194165.P9655520461940932840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A194165 (n : ℕ) : ℤ :=
  A194165.P9655520461940932840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A194165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194237.P9083077701294337056

`floor(∑[(A053742(n+1)+n)%8/8])`
-/

namespace A194237.P9083077701294337056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A053742 (n + 1) + (n : ℤ)) 8 : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194237.P9083077701294337056

noncomputable section

/-- A194237: a(n) = [Sum_{k=1..n} (3k/8)], where [ ]=floor, ( )=fractional part.

Offset 1, canonical program `A194237.P9083077701294337056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194237 (n : ℕ) : ℤ :=
  A194237.P9083077701294337056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194388.P17628058412744009852

`∑[gcd(9, A000196((2-n)²))+1]`
-/

namespace A194388.P17628058412744009852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A000196 ((2 - (n : ℤ)) ^ 2).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194388.P17628058412744009852

noncomputable section

/-- A194388: Numbers m such that Sum_{k=1..m} ( - ) = 0, where r=sqrt(11) and < > denotes fractional part.

Offset 1, canonical program `A194388.P17628058412744009852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A194388 (n : ℕ) : ℤ :=
  (A194388.P17628058412744009852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A194388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194401.P3706950676726943440

`record[(n+1)%A005653(A008619(n))]`
-/

namespace A194401.P3706950676726943440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A005653 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194401.P3706950676726943440

noncomputable section

/-- A194401: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

Offset 1, canonical program `A194401.P3706950676726943440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A194401 (n : ℕ) : ℤ :=
  A194401.P3706950676726943440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A194401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194460.P2113824758349702533

`(n-1)*A000108(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A194460.P2113824758349702533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) * A000108 n + 4 * a (n - 1)

end

end A194460.P2113824758349702533

noncomputable section

/-- A194460: a(n) is the number of basic ideals in the standard Borel subalgebra of the untwisted affine Lie algebra sl_n.

Offset 1, canonical program `A194460.P2113824758349702533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A194460 (n : ℕ) : ℤ :=
  A194460.P2113824758349702533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A194460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194481.P9351670830363814715

`A000332(∑[n+1])-∑[A050534(n)]`
-/

namespace A194481.P9351670830363814715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194481.P9351670830363814715

noncomputable section

/-- A194481: Number of ways to arrange 4 indistinguishable points on an n X n X n triangular grid so that no four points are in the same row or diagonal.

Offset 1, canonical program `A194481.P9351670830363814715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A194481 (n : ℕ) : ℤ :=
  A194481.P9351670830363814715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A194481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194486.P15304985710096564444

`A211911(n+1)+record[A266222(n)]+n`
-/

namespace A194486.P15304985710096564444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A194486.P15304985710096564444

noncomputable section

/-- A194486: Number of ways to arrange 2 nonattacking knights on the lower triangle of an n X n board.

Offset 1, canonical program `A194486.P15304985710096564444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A194486 (n : ℕ) : ℤ :=
  A194486.P15304985710096564444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A194486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194519.P11190354211098778104

`∑[A131713(A081597(n))]`
-/

namespace A194519.P11190354211098778104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A081597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P11190354211098778104

noncomputable section

/-- A194519: Second coordinate of (3,7)-Lagrange pair for n.

Offset 1, canonical program `A194519.P11190354211098778104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194519 (n : ℕ) : ℤ :=
  A194519.P11190354211098778104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194699.P13133240351280273879

`A194698(A000040(n+1)+1)`
-/

namespace A194699.P13133240351280273879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A000040 (n + 1) + 1).toNat

end

end A194699.P13133240351280273879

noncomputable section

/-- A194699: a(n) = floor((p - 1)/12) - floor((p^2 - 1)/(24*p)), where p = prime(n).

Offset 1, canonical program `A194699.P13133240351280273879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A194698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194699 (n : ℕ) : ℤ :=
  A194699.P13133240351280273879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A194698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A194699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194738.P10040233235958943936

`∑[2*A198081(n+1)]%(n+2)+1`
-/

namespace A194738.P10040233235958943936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ) + 1

end

end A194738.P10040233235958943936

noncomputable section

/-- A194738: Number of k such that {k*sqrt(3)} < {n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194738.P10040233235958943936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194738 (n : ℕ) : ℤ :=
  A194738.P10040233235958943936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194750.P9373428447892605913

`n-(n*∑[A022843(n+1)])%(n+2)+1`
-/

namespace A194750.P9373428447892605913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ) + 1

end

end A194750.P9373428447892605913

noncomputable section

/-- A194750: Number of k such that {k*e} < {n*e}, where { } = fractional part.

Offset 1, canonical program `A194750.P9373428447892605913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194750 (n : ℕ) : ℤ :=
  A194750.P9373428447892605913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194772.P10562854013703021002

`or(1, A073371(n+2))`
-/

namespace A194772.P10562854013703021002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073371 (n + 2))

end

end A194772.P10562854013703021002

noncomputable section

/-- A194772: Number of lower triangles of an (n+2) X (n+2) 0..2 array with new values introduced in row major order 0..2 and no element unequal to more than one horizontal or vertical neighbor.

Offset 1, canonical program `A194772.P10562854013703021002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A194772 (n : ℕ) : ℤ :=
  A194772.P10562854013703021002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A194772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194882.P5730675765094386744

`dr(A127321(n)+3)`
-/

namespace A194882.P5730675765094386744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127321 n + 3)

end

end A194882.P5730675765094386744

noncomputable section

/-- A194882: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives i values.

Offset 0, canonical program `A194882.P5730675765094386744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194882 (n : ℕ) : ℤ :=
  (A194882.P5730675765094386744.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194986.P11879444513191672628

`A008619(A171974(n+1))`
-/

namespace A194986.P11879444513191672628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A171974 (n + 1)).toNat

end

end A194986.P11879444513191672628

noncomputable section

/-- A194986: a(n) = 1 + floor(n/sqrt(6)).

Offset 1, canonical program `A194986.P11879444513191672628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194986 (n : ℕ) : ℤ :=
  A194986.P11879444513191672628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194990.P2509885675336948499

`round(A049474(n+1)/2)`
-/

namespace A194990.P2509885675336948499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049474 (n + 1) : ℚ) / 2)

end

end A194990.P2509885675336948499

noncomputable section

/-- A194990: a(n) = 1+ floor(n/sqrt(8)).

Offset 1, canonical program `A194990.P2509885675336948499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194990 (n : ℕ) : ℤ :=
  A194990.P2509885675336948499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195060.P5046823339252525732

`∪[A001840(n), A032528(n)]`
-/

namespace A195060.P5046823339252525732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195060.P5046823339252525732

noncomputable section

/-- A195060: Numbers on the main diagonals and on the axes (x,y) in the square spiral whose vertices are the generalized pentagonal numbers A001318.

Offset 0, canonical program `A195060.P5046823339252525732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195060 (n : ℕ) : ℤ :=
  (A195060.P5046823339252525732.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195072.P3461818773488738428

`∑[Δ[A195129(n)]-1]`
-/

namespace A195072.P3461818773488738428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195072.P3461818773488738428

noncomputable section

/-- A195072: a(n) = n - floor(n/sqrt(3)).

Offset 1, canonical program `A195072.P3461818773488738428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195072 (n : ℕ) : ℤ :=
  A195072.P3461818773488738428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195238.P15351824491001559001

`filter[A075658(n+1), A086299(#)]`
-/

namespace A195238.P15351824491001559001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A195238.P15351824491001559001

noncomputable section

/-- A195238: Numbers with at least 2 and not more than 3 distinct prime factors not greater than 7 that are multiples of 7 or of 15.

Offset 1, canonical program `A195238.P15351824491001559001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A195238 (n : ℕ) : ℤ :=
  A195238.P15351824491001559001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A195238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195241.P18134945524630449483

`A000217(A004280(A004280(n+1)))-A004273(n)`
-/

namespace A195241.P18134945524630449483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004280 (A004280 (n + 1)).toNat).toNat - A004273 n

end

end A195241.P18134945524630449483

noncomputable section

/-- A195241: Expansion of (1-x+19*x^3-3*x^4)/(1-x)^3.

Offset 0, canonical program `A195241.P18134945524630449483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A195241 (n : ℕ) : ℤ :=
  A195241.P18134945524630449483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A195241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195279.P4298696130975354631

`(2*n+3)²*A063496(n+2)`
-/

namespace A195279.P4298696130975354631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * A063496 (n + 2)

end

end A195279.P4298696130975354631

noncomputable section

/-- A195279: Number of lower triangles of a 3 X 3 integer array with each element differing from all of its vertical and horizontal neighbors by n or less and triangles differing by a constant counted only once.

Offset 1, canonical program `A195279.P4298696130975354631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A195279 (n : ℕ) : ℤ :=
  A195279.P4298696130975354631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A195279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195437.P1577430008667448515

`∑[A073424(n)+2]`
-/

namespace A195437.P1577430008667448515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P1577430008667448515

noncomputable section

/-- A195437: Triangle formed by: 1 even, 2 odd, 3 even, 4 odd... starting with 2.

Offset 0, canonical program `A195437.P1577430008667448515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A195437 (n : ℕ) : ℤ :=
  A195437.P1577430008667448515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A195437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195459.P676028519467690481

`∑{d}[n+1, #*A156277((n+1)/#)]`
-/

namespace A195459.P676028519467690481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P676028519467690481

noncomputable section

/-- A195459: a(n) = phi(3*n)/2.

Offset 1, canonical program `A195459.P676028519467690481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195459 (n : ℕ) : ℤ :=
  A195459.P676028519467690481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195547.P10842416328423530270

`Δ[A064831(n)]*A130196(n)`
-/

namespace A195547.P10842416328423530270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130196 n

end

end A195547.P10842416328423530270

noncomputable section

/-- A195547: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 1/2.

Offset 1, canonical program `A195547.P10842416328423530270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A195547 (n : ℕ) : ℤ :=
  A195547.P10842416328423530270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A195547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195558.P16219263023274103274

`∑[A078469(Δ[A208994(n)])]`
-/

namespace A195558.P16219263023274103274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078469 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195558.P16219263023274103274

noncomputable section

/-- A195558: Hypotenuses of primitive Pythagorean triples in A195556 and A195557.

Offset 1, canonical program `A195558.P16219263023274103274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A195558 (n : ℕ) : ℤ :=
  A195558.P16219263023274103274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A195558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195603.P9917894924404432145

`A011545(n)/gcd(A011545(n), A011557(n))`
-/

namespace A195603.P9917894924404432145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011545 n : ℚ) / (Int.gcd (A011545 n) (A011557 n) : ℚ)

end

end A195603.P9917894924404432145

noncomputable section

/-- A195603: Numerator of floor(Pi*10^n)/10^n.

Offset 0, canonical program `A195603.P9917894924404432145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A195603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195603.P9917894924404432145.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A195603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195604.P16326018069930801950

`A011543(n)/gcd(A011543(n), A011557(n))`
-/

namespace A195604.P16326018069930801950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011543 n : ℚ) / (Int.gcd (A011543 n) (A011557 n) : ℚ)

end

end A195604.P16326018069930801950

noncomputable section

/-- A195604: Numerator of floor(e*10^n)/10^n, where e = exp(1) = A001113.

Offset 0, canonical program `A195604.P16326018069930801950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A195604 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195604.P16326018069930801950.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A195604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195911.P13077335767756037234

`A037448(n+1)+1`
-/

namespace A195911.P13077335767756037234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037448 (n + 1) + 1

end

end A195911.P13077335767756037234

noncomputable section

/-- A195911: a(n) = ceiling(cot(n)).

Offset 1, canonical program `A195911.P13077335767756037234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195911 (n : ℕ) : ℤ :=
  A195911.P13077335767756037234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195993.P13917457703843380278

`(A142326(n+1)-73)/90`
-/

namespace A195993.P13917457703843380278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142326 (n + 1) - 73 : ℚ) / 90

end

end A195993.P13917457703843380278

noncomputable section

/-- A195993: Numbers n such that 90n + 73 is prime.

Offset 1, canonical program `A195993.P13917457703843380278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195993 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195993.P13917457703843380278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A196000.P13118945799157782311

`(A142322(n+1)-19)/90`
-/

namespace A196000.P13118945799157782311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142322 (n + 1) - 19 : ℚ) / 90

end

end A196000.P13118945799157782311

noncomputable section

/-- A196000: Numbers k such that 90*k + 19 is prime.

Offset 1, canonical program `A196000.P13118945799157782311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A196000.P13118945799157782311.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A196007.P11010049429409812533

`(A142332(n+1)-83)/90`
-/

namespace A196007.P11010049429409812533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142332 (n + 1) - 83 : ℚ) / 90

end

end A196007.P11010049429409812533

noncomputable section

/-- A196007: Numbers n such that 90n + 83 is prime.

Offset 1, canonical program `A196007.P11010049429409812533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196007 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A196007.P11010049429409812533.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196007.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A196421.P2858914047252022982

`∑[n+1]*A000040(n+1)`
-/

namespace A196421.P2858914047252022982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000040 (n + 1)

end

end A196421.P2858914047252022982

noncomputable section

/-- A196421: a(n) = prime(n)*T(n), where T = A000217.

Offset 1, canonical program `A196421.P2858914047252022982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196421 (n : ℕ) : ℤ :=
  A196421.P2858914047252022982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196593.P14958004235451331553

`∑[∑[∑[A283592(n)]]-n²]`
-/

namespace A196593.P14958004235451331553
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196593.P14958004235451331553

noncomputable section

/-- A196593: Number of fixed tree-like convex polyominoes.

Offset 1, canonical program `A196593.P14958004235451331553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A196593 (n : ℕ) : ℤ :=
  A196593.P14958004235451331553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A196593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196836.P16171095460455693863

`ceil(A074526(n)/2)`
-/

namespace A196836.P16171095460455693863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074526 n : ℚ) / 2⌉

end

end A196836.P16171095460455693863

noncomputable section

/-- A196836: a(n) = (1^n + 2^n +3^n + 4^n)/2.

Offset 0, canonical program `A196836.P16171095460455693863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A196836 (n : ℕ) : ℤ :=
  A196836.P16171095460455693863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A196836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196880.P17409898485460963205

`A000123(floor(n²/2))`
-/

namespace A196880.P17409898485460963205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A196880.P17409898485460963205

noncomputable section

/-- A196880: Number of partitions of n^2 into powers of 2.

Offset 0, canonical program `A196880.P17409898485460963205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A196880 (n : ℕ) : ℤ :=
  A196880.P17409898485460963205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A196880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197039.P17477955772829590761

`eq[1, A053186(A055012(n)+1)]`
-/

namespace A197039.P17477955772829590761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A055012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197039.P17477955772829590761

noncomputable section

/-- A197039: Numbers such that sum of the cube of decimal digits is a perfect square.

Offset 1, canonical program `A197039.P17477955772829590761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A197039 (n : ℕ) : ℤ :=
  (A197039.P17477955772829590761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A197039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197193.P9274031137738815043

`7^n*A001287(n)`
-/

namespace A197193.P9274031137738815043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A001287 (n + 10)

end

end A197193.P9274031137738815043

noncomputable section

/-- A197193: a(n) = binomial(n+10, 10)*7^n.

Offset 0, canonical program `A197193.P9274031137738815043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A197193 (n : ℕ) : ℤ :=
  A197193.P9274031137738815043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A197193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197354.P7277282282197432070

`2*n-∑[A088705(n)²]`
-/

namespace A197354.P7277282282197432070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197354.P7277282282197432070

noncomputable section

/-- A197354: a(n) = Sum_{k>=0} A030308(n,k)*(2k+1).

Offset 0, canonical program `A197354.P7277282282197432070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A197354 (n : ℕ) : ℤ :=
  A197354.P7277282282197432070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A197354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198302.P14349708433526407538

`∑{d}[n+1, #*A087909(#)]`
-/

namespace A198302.P14349708433526407538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A087909 d

end

end A198302.P14349708433526407538

noncomputable section

/-- A198302: a(n) = Sum_{d|n} d * sigma(n/d, d).

Offset 1, canonical program `A198302.P14349708433526407538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A198302 (n : ℕ) : ℤ :=
  A198302.P14349708433526407538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A198302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198382.P15472479039550738745

`(A142331(n+1)-37)/90`
-/

namespace A198382.P15472479039550738745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142331 (n + 1) - 37 : ℚ) / 90

end

end A198382.P15472479039550738745

noncomputable section

/-- A198382: Numbers n such that 90n + 37 is prime.

Offset 1, canonical program `A198382.P15472479039550738745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198382 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A198382.P15472479039550738745.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198447.P7389581142126309332

`∑[A102446(2*n)]+1`
-/

namespace A198447.P7389581142126309332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198447.P7389581142126309332

noncomputable section

/-- A198447: Number of 2n X 2 0..2 arrays with values 0..2 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

Offset 1, canonical program `A198447.P7389581142126309332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A198447 (n : ℕ) : ℤ :=
  A198447.P7389581142126309332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A198447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198474.P2041243130398523462

`Δ[A193649(2*n)]`
-/

namespace A198474.P2041243130398523462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193649 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198474.P2041243130398523462

noncomputable section

/-- A198474: Number of 2n X 2 0..2 arrays with values 0..2 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

Offset 1, canonical program `A198474.P2041243130398523462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A198474 (n : ℕ) : ℤ :=
  A198474.P2041243130398523462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A198474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198629.P6597753305066142366

`(A074533(n)-A074507(n))/3`
-/

namespace A198629.P6597753305066142366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074533 n - A074507 n : ℚ) / 3

end

end A198629.P6597753305066142366

noncomputable section

/-- A198629: Alternating sums of powers of 1,2,...,6, divided by 3.

Offset 0, canonical program `A198629.P6597753305066142366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A198629 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A198629.P6597753305066142366.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A198629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198680.P3356943258958153729

`3*A079498(n+1)`
-/

namespace A198680.P3356943258958153729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A079498 (n + 1)

end

end A198680.P3356943258958153729

noncomputable section

/-- A198680: Multiples of 3 whose sum of base-3 digits are also multiples of 3.

Offset 1, canonical program `A198680.P3356943258958153729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198680 (n : ℕ) : ℤ :=
  A198680.P3356943258958153729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198943.P14839835237173230297

`2*A341895(n+1)+1`
-/

namespace A198943.P14839835237173230297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341895 (n + 1) + 1

end

end A198943.P14839835237173230297

noncomputable section

/-- A198943: y-values in the solution to 10*x^2-9 = y^2.

Offset 1, canonical program `A198943.P14839835237173230297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A198943 (n : ℕ) : ℤ :=
  A198943.P14839835237173230297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A198943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199336.P457817059588834037

`2*A105076(n+1)+1`
-/

namespace A199336.P457817059588834037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105076 (n + 1) + 1

end

end A199336.P457817059588834037

noncomputable section

/-- A199336: x-values in the solution to 15*x^2 - 14 = y^2.

Offset 1, canonical program `A199336.P457817059588834037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A199336 (n : ℕ) : ℤ :=
  A199336.P457817059588834037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A199336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199404.P5689658067500872064

`A249579(A047468(n+2))`
-/

namespace A199404.P5689658067500872064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A047468 (n + 2)).toNat

end

end A199404.P5689658067500872064

noncomputable section

/-- A199404: x-values in the solution to 13*x^2 - 12 = y^2.

Offset 1, canonical program `A199404.P5689658067500872064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A199404 (n : ℕ) : ℤ :=
  A199404.P5689658067500872064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A199404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199405.P4656372193440413382

`abs(Δ[A006497(n)*A057077(n)])`
-/

namespace A199405.P4656372193440413382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A199405.P4656372193440413382

noncomputable section

/-- A199405: y-values in the solution to 13*x^2 - 12 = y^2.

Offset 1, canonical program `A199405.P4656372193440413382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A199405 (n : ℕ) : ℤ :=
  A199405.P4656372193440413382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A199405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199514.P11177618966910493986

`(A066779(n+2)-A066779(n+1))/A009195(n+2)`
-/

namespace A199514.P11177618966910493986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066779 (n + 2) - A066779 (n + 1) : ℚ) / (A009195 (n + 2) : ℚ)

end

end A199514.P11177618966910493986

noncomputable section

/-- A199514: Numerators of zeros to a symmetric polynomial. Numerators of mu(n)^2*(n/(n - phi(n))).

Offset 2, canonical program `A199514.P11177618966910493986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199514.P11177618966910493986.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199532.P5440063926983290812

`A083669(n+1)-A003215(2*(n+1))`
-/

namespace A199532.P5440063926983290812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083669 (n + 1) - A003215 (2 * (n + 1))

end

end A199532.P5440063926983290812

noncomputable section

/-- A199532: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no two consecutive zero elements.

Offset 1, canonical program `A199532.P5440063926983290812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A199532 (n : ℕ) : ℤ :=
  A199532.P5440063926983290812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A199532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199641.P16294578546181588555

`ceil(A185552(n+1)/2)`
-/

namespace A199641.P16294578546181588555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185552 (n + 1) : ℚ) / 2⌉

end

end A199641.P16294578546181588555

noncomputable section

/-- A199641: Number of n X 2 0..2 arrays with values 0..2 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

Offset 1, canonical program `A199641.P16294578546181588555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A199641 (n : ℕ) : ℤ :=
  A199641.P16294578546181588555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A199641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199803.P16637969931051842274

`∑[(-1)^n*∑[A101496(n)]]`
-/

namespace A199803.P16637969931051842274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199803.P16637969931051842274

noncomputable section

/-- A199803: G.f.: 1/(1 + x - x^2 - x^3 + x^4).

Offset 0, canonical program `A199803.P16637969931051842274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 847 terms. -/
def A199803 (n : ℕ) : ℤ :=
  A199803.P16637969931051842274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 847 terms. -/
def A199803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199848.P5739663787728369875

`A188182(n+2)-1`
-/

namespace A199848.P5739663787728369875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188182 (n + 2) - 1

end

end A199848.P5739663787728369875

noncomputable section

/-- A199848: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no element more than one greater than the previous.

Offset 1, canonical program `A199848.P5739663787728369875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199848 (n : ℕ) : ℤ :=
  A199848.P5739663787728369875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199927.P13812750077016360841

`(-1)^n*A101496(A016789(n))`
-/

namespace A199927.P13812750077016360841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A101496 (A016789 n).toNat

end

end A199927.P13812750077016360841

noncomputable section

/-- A199927: Trisection 0 of A199802.

Offset 0, canonical program `A199927.P13812750077016360841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199927 (n : ℕ) : ℤ :=
  A199927.P13812750077016360841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199933.P14759041773295632807

`A199744(3*n)`
-/

namespace A199933.P14759041773295632807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199744 (3 * n)

end

end A199933.P14759041773295632807

noncomputable section

/-- A199933: Trisection 0 of A199744.

Offset 0, canonical program `A199933.P14759041773295632807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199933 (n : ℕ) : ℤ :=
  A199933.P14759041773295632807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A199933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200047.P2011833773881079819

`A000045(n)-Δ[A000930(n)]`
-/

namespace A200047.P2011833773881079819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A200047.P2011833773881079819

noncomputable section

/-- A200047: Number of compositions of n having smallest part equal to 2.

Offset 1, canonical program `A200047.P2011833773881079819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A200047 (n : ℕ) : ℤ :=
  A200047.P2011833773881079819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A200047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200050.P8139159985617875123

`abs(C(A156037(n+2), 2)-A156037(n+2))`
-/

namespace A200050.P8139159985617875123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A156037 (n + 2)).toNat 2 : ℤ) - A156037 (n + 2)|

end

end A200050.P8139159985617875123

noncomputable section

/-- A200050: a(2) = 1, then (p-1)*(p-4)/2, with p = prime(n), n > 2.

Offset 2, canonical program `A200050.P8139159985617875123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200050 (n : ℕ) : ℤ :=
  A200050.P8139159985617875123.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200058.P1204123493912984667

`∑[2*(A194275(Δ[n²])+1)]`
-/

namespace A200058.P1204123493912984667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194275 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200058.P1204123493912984667

noncomputable section

/-- A200058: Number of -n..n arrays x(0..3) of 4 elements with zero sum and elements alternately strictly increasing and strictly decreasing.

Offset 1, canonical program `A200058.P1204123493912984667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A200058 (n : ℕ) : ℤ :=
  A200058.P1204123493912984667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A200058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200155.P17517134346537014741

`∑[A080827(A042965(n+1)+2)]+1`
-/

namespace A200155.P17517134346537014741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (A042965 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200155.P17517134346537014741

noncomputable section

/-- A200155: Number of 0..n arrays x(0..3) of 4 elements with zero 3rd differences.

Offset 1, canonical program `A200155.P17517134346537014741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A200155 (n : ℕ) : ℤ :=
  A200155.P17517134346537014741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A200155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200193.P8106888667498212295

`∑[2*(A194275(2*n)+1)]`
-/

namespace A200193.P8106888667498212295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194275 (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200193.P8106888667498212295

noncomputable section

/-- A200193: Number of -n..n arrays x(0..3) of 4 elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

Offset 1, canonical program `A200193.P8106888667498212295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A200193 (n : ℕ) : ℤ :=
  A200193.P8106888667498212295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A200193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200221.P18071779547883620232

`∑{d}[n+1, A070824(#)]-A070824(n+1)`
-/

namespace A200221.P18071779547883620232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070824 d - A070824 (n + 1)

end

end A200221.P18071779547883620232

noncomputable section

/-- A200221: Ordered factorizations of n with 3 parts.

Offset 1, canonical program `A200221.P18071779547883620232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200221 (n : ℕ) : ℤ :=
  A200221.P18071779547883620232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200316.P8428093091446701407

`∑[A006012(n)-A004275(n)]`
-/

namespace A200316.P8428093091446701407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200316.P8428093091446701407

noncomputable section

/-- A200316: Number of permutations of [1..n] that can be drawn on a circle.

Offset 1, canonical program `A200316.P8428093091446701407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A200316 (n : ℕ) : ℤ :=
  A200316.P8428093091446701407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A200316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200324.P2863043177810328631

`floor(10*(sqrt(A000040(n+2))-sqrt(A000040(n+1))))`
-/

namespace A200324.P2863043177810328631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (Real.sqrt (A000040 (n + 2) : ℝ) - Real.sqrt (A000040 (n + 1) : ℝ))⌋

end

end A200324.P2863043177810328631

noncomputable section

/-- A200324: a(n) = floor(10*(sqrt(prime(n+1)) - sqrt(prime(n)))).

Offset 1, canonical program `A200324.P2863043177810328631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200324 (n : ℕ) : ℤ :=
  A200324.P2863043177810328631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A200561.P17690770698609296088

`Δ[A077876(n)²-A077876(n)]`
-/

namespace A200561.P17690770698609296088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 n ^ 2 - A077876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200561.P17690770698609296088

noncomputable section

/-- A200561: Expansion of -2*x / ( (2*x-1)*(4*x^2+3*x+1) ).

Offset 1, canonical program `A200561.P17690770698609296088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A200561 (n : ℕ) : ℤ :=
  A200561.P17690770698609296088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A200561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200562.P7016874393703999627

`A001607(n+1)*A169998(n)`
-/

namespace A200562.P7016874393703999627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) * A169998 n

end

end A200562.P7016874393703999627

noncomputable section

/-- A200562: Expansion of 1 / ((1 - 2*x) * (1 + 3*x + 4*x^2)) in powers of x.

Offset 0, canonical program `A200562.P7016874393703999627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A200562 (n : ℕ) : ℤ :=
  A200562.P7016874393703999627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A200562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200786.P7101918056082239765

`A250141(n+1)+A051744(n+1)`
-/

namespace A200786.P7101918056082239765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250141 (n + 1) + A051744 (n + 1)

end

end A200786.P7101918056082239765

noncomputable section

/-- A200786: Number of 0..n arrays x(0..3) of 4 elements without any two consecutive increases.

Offset 1, canonical program `A200786.P7101918056082239765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200786 (n : ℕ) : ℤ :=
  A200786.P7101918056082239765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200833.P13525192815732206839

`2*A049864(2*n+7)`
-/

namespace A200833.P13525192815732206839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049864 (2 * n + 7)

end

end A200833.P13525192815732206839

noncomputable section

/-- A200833: Number of 0..3 arrays x(0..n+1) of n+2 elements without any two consecutive increases or two consecutive decreases.

Offset 1, canonical program `A200833.P13525192815732206839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A200833 (n : ℕ) : ℤ :=
  A200833.P13525192815732206839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A200833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201043.P8807924448343491481

`A219086(n+1)+A005891(n+1)²`
-/

namespace A201043.P8807924448343491481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 (n + 1) + A005891 (n + 1) ^ 2

end

end A201043.P8807924448343491481

noncomputable section

/-- A201043: Number of -n..n arrays of 4 elements with adjacent element differences also in -n..n.

Offset 1, canonical program `A201043.P8807924448343491481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A201043 (n : ℕ) : ℤ :=
  A201043.P8807924448343491481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A201043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201053.P12620429159992071055

`A048763(n-A074989(n))`
-/

namespace A201053.P12620429159992071055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 ((n : ℤ) - A074989 n).toNat

end

end A201053.P12620429159992071055

noncomputable section

/-- A201053: Nearest cube.

Offset 0, canonical program `A201053.P12620429159992071055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201053 (n : ℕ) : ℤ :=
  A201053.P12620429159992071055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201124.P2513225879219707153

`A017913(4*n+2)-A017913(2*n+1)²`
-/

namespace A201124.P2513225879219707153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (4 * n + 2) - A017913 (2 * n + 1) ^ 2

end

end A201124.P2513225879219707153

noncomputable section

/-- A201124: Differences between odd powers of 3 and the next smaller square.

Offset 1, canonical program `A201124.P2513225879219707153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A201124 (n : ℕ) : ℤ :=
  A201124.P2513225879219707153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A201124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201206.P12616535689427552080

`-Δ[-floor(sqrt(A219085(n)))]`
-/

namespace A201206.P12616535689427552080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.sqrt (A219085 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A201206.P12616535689427552080

noncomputable section

/-- A201206: Number of successive decreasing values of round(n^(2/3))^3 - n^2.

Offset 1, canonical program `A201206.P12616535689427552080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201206 (n : ℕ) : ℤ :=
  A201206.P12616535689427552080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201217.P11583434772116086358

`lt[0, A010057(round(sqrt(n)))]`
-/

namespace A201217.P11583434772116086358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201217.P11583434772116086358

noncomputable section

/-- A201217: Numbers such that (closest square) = (closest cube).

Offset 1, canonical program `A201217.P11583434772116086358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. -/
def A201217 (n : ℕ) : ℤ :=
  (A201217.P11583434772116086358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. -/
def A201217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201612.P142028785547822355

`record[A201474(n+1)%or(2, A201474(n+1))]`
-/

namespace A201612.P142028785547822355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201474 (n + 1)) (Int.lor 2 (A201474 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201612.P142028785547822355

noncomputable section

/-- A201612: Primes of the form 8n^2 + 5.

Offset 1, canonical program `A201612.P142028785547822355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A201612 (n : ℕ) : ℤ :=
  A201612.P142028785547822355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A201612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201739.P6931800238278113142

`(A142327(n+1)-29)/90`
-/

namespace A201739.P6931800238278113142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142327 (n + 1) - 29 : ℚ) / 90

end

end A201739.P6931800238278113142

noncomputable section

/-- A201739: Numbers n such that 90*n + 29 is prime.

Offset 1, canonical program `A201739.P6931800238278113142`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201739.P6931800238278113142.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201739.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A201804.P10857497428624378326

`floor(A142317(n+1)/90)`
-/

namespace A201804.P10857497428624378326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142317 (n + 1) : ℚ) / 90⌋

end

end A201804.P10857497428624378326

noncomputable section

/-- A201804: Numbers k such that 90*k + 11 is prime.

Offset 1, canonical program `A201804.P10857497428624378326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A201804 (n : ℕ) : ℤ :=
  A201804.P10857497428624378326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A201804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201813.P10692270127958153688

`Δ[5*A072025(n)]+1`
-/

namespace A201813.P10692270127958153688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A072025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A201813.P10692270127958153688

noncomputable section

/-- A201813: Number of arrays of 5 integers in -n..n with sum zero and equal numbers of elements greater than zero and less than zero.

Offset 1, canonical program `A201813.P10692270127958153688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201813 (n : ℕ) : ℤ :=
  A201813.P10692270127958153688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201817.P18228911640526075353

`floor(A142323(n+1)/90)`
-/

namespace A201817.P18228911640526075353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142323 (n + 1) : ℚ) / 90⌋

end

end A201817.P18228911640526075353

noncomputable section

/-- A201817: Numbers k such that 90*k + 67 is prime.

Offset 1, canonical program `A201817.P18228911640526075353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201817 (n : ℕ) : ℤ :=
  A201817.P18228911640526075353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201818.P17452297210576869253

`floor(A142314(n+1)/90)`
-/

namespace A201818.P17452297210576869253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142314 (n + 1) : ℚ) / 90⌋

end

end A201818.P17452297210576869253

noncomputable section

/-- A201818: Numbers k such that 90*k + 49 is prime.

Offset 1, canonical program `A201818.P17452297210576869253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201818 (n : ℕ) : ℤ :=
  A201818.P17452297210576869253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201819.P477483135611943729

`floor(A142328(n+1)/90)`
-/

namespace A201819.P477483135611943729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142328 (n + 1) : ℚ) / 90⌋

end

end A201819.P477483135611943729

noncomputable section

/-- A201819: Numbers n such that 90*n + 31 is prime.

Offset 1, canonical program `A201819.P477483135611943729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201819 (n : ℕ) : ℤ :=
  A201819.P477483135611943729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201820.P18179661777038436501

`(A142324(n+1)-23)/90`
-/

namespace A201820.P18179661777038436501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142324 (n + 1) - 23 : ℚ) / 90

end

end A201820.P18179661777038436501

noncomputable section

/-- A201820: Numbers k such that 90*k + 23 is prime.

Offset 1, canonical program `A201820.P18179661777038436501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201820 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201820.P18179661777038436501.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A201822.P3004927883000444934

`(A142329(n+1)-77)/90`
-/

namespace A201822.P3004927883000444934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142329 (n + 1) - 77 : ℚ) / 90

end

end A201822.P3004927883000444934

noncomputable section

/-- A201822: Numbers k such that 90*k + 77 is prime.

Offset 1, canonical program `A201822.P3004927883000444934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201822 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201822.P3004927883000444934.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A201822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A201856.P17992878745208772629

`record[A201712(n+1)%xor(2, A201712(n+1))]`
-/

namespace A201856.P17992878745208772629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201712 (n + 1)) (Int.xor 2 (A201712 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201856.P17992878745208772629

noncomputable section

/-- A201856: Primes of the form 8n^2 - 3.

Offset 1, canonical program `A201856.P17992878745208772629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A201856 (n : ℕ) : ℤ :=
  A201856.P17992878745208772629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A201856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201859.P14595472453482322595

`∩[A153037(2*n), A155702(n+1)]`
-/

namespace A201859.P14595472453482322595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201859.P14595472453482322595

noncomputable section

/-- A201859: Primes of the form 8n^2 - 9.

Offset 1, canonical program `A201859.P14595472453482322595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A201859 (n : ℕ) : ℤ :=
  (A201859.P14595472453482322595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A201859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202014.P8622893897429034250

`record[Δ[(n+1)*A063882(n+1)]]-n`
-/

namespace A202014.P8622893897429034250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A202014.P8622893897429034250

noncomputable section

/-- A202014: Smallest m such that A063882(m) = n.

Offset 1, canonical program `A202014.P8622893897429034250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A202014 (n : ℕ) : ℤ :=
  A202014.P8622893897429034250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A202014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202094.P3198667217819748171

`(A038163(n+3)-A038163(n))²`
-/

namespace A202094.P3198667217819748171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038163 (n + 3) - A038163 n) ^ 2

end

end A202094.P3198667217819748171

noncomputable section

/-- A202094: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202094.P3198667217819748171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202094 (n : ℕ) : ℤ :=
  A202094.P3198667217819748171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202104.P3754480420212537836

`floor(A142333(n+1)/90)`
-/

namespace A202104.P3754480420212537836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142333 (n + 1) : ℚ) / 90⌋

end

end A202104.P3754480420212537836

noncomputable section

/-- A202104: Numbers k such that 90*k + 41 is prime.

Offset 1, canonical program `A202104.P3754480420212537836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202104 (n : ℕ) : ℤ :=
  A202104.P3754480420212537836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202105.P10023659515143201674

`floor(A142334(n+1)/90)`
-/

namespace A202105.P10023659515143201674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142334 (n + 1) : ℚ) / 90⌋

end

end A202105.P10023659515143201674

noncomputable section

/-- A202105: Numbers k such that 90*k + 43 is prime.

Offset 1, canonical program `A202105.P10023659515143201674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202105 (n : ℕ) : ℤ :=
  A202105.P10023659515143201674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202110.P17317322307668240700

`floor(A142315(n+1)/90)`
-/

namespace A202110.P17317322307668240700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142315 (n + 1) : ℚ) / 90⌋

end

end A202110.P17317322307668240700

noncomputable section

/-- A202110: Numbers k such that 90*k + 7 is prime.

Offset 1, canonical program `A202110.P17317322307668240700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202110 (n : ℕ) : ℤ :=
  A202110.P17317322307668240700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202112.P1337866002295131903

`floor(A142330(n+1)/90)`
-/

namespace A202112.P1337866002295131903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142330 (n + 1) : ℚ) / 90⌋

end

end A202112.P1337866002295131903

noncomputable section

/-- A202112: Numbers k such that 90*k + 79 is prime.

Offset 1, canonical program `A202112.P1337866002295131903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202112 (n : ℕ) : ℤ :=
  A202112.P1337866002295131903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202113.P10902379365128054035

`floor(A142320(n+1)/90)`
-/

namespace A202113.P10902379365128054035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142320 (n + 1) : ℚ) / 90⌋

end

end A202113.P10902379365128054035

noncomputable section

/-- A202113: Numbers k such that 90*k + 61 is prime.

Offset 1, canonical program `A202113.P10902379365128054035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202113 (n : ℕ) : ℤ :=
  A202113.P10902379365128054035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202114.P14110043031951327687

`floor(A142316(n+1)/90)`
-/

namespace A202114.P14110043031951327687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142316 (n + 1) : ℚ) / 90⌋

end

end A202114.P14110043031951327687

noncomputable section

/-- A202114: Numbers k such that 90*k + 53 is prime.

Offset 1, canonical program `A202114.P14110043031951327687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202114 (n : ℕ) : ℤ :=
  A202114.P14110043031951327687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202115.P1964812021349568403

`floor(A142321(n+1)/90)`
-/

namespace A202115.P1964812021349568403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142321 (n + 1) : ℚ) / 90⌋

end

end A202115.P1964812021349568403

noncomputable section

/-- A202115: Numbers k such that 90*k + 17 is prime.

Offset 1, canonical program `A202115.P1964812021349568403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202115 (n : ℕ) : ℤ :=
  A202115.P1964812021349568403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202129.P16202127655736939832

`floor(A142325(n+1)/90)`
-/

namespace A202129.P16202127655736939832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142325 (n + 1) : ℚ) / 90⌋

end

end A202129.P16202127655736939832

noncomputable section

/-- A202129: Numbers n such that 90n + 71 is prime.

Offset 1, canonical program `A202129.P16202127655736939832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202129 (n : ℕ) : ℤ :=
  A202129.P16202127655736939832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202196.P1441446916735778807

`Δ[8*A034263(n+1)]`
-/

namespace A202196.P1441446916735778807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A034263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202196.P1441446916735778807

noncomputable section

/-- A202196: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 101 in rows and columns.

Offset 1, canonical program `A202196.P1441446916735778807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202196 (n : ℕ) : ℤ :=
  A202196.P1441446916735778807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202197.P10791236047166563724

`10*A027800(n+2)`
-/

namespace A202197.P10791236047166563724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A027800 (n + 2)

end

end A202197.P10791236047166563724

noncomputable section

/-- A202197: Number of (n+2) X 5 binary arrays avoiding patterns 001 and 101 in rows and columns.

Offset 1, canonical program `A202197.P10791236047166563724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202197 (n : ℕ) : ℤ :=
  A202197.P10791236047166563724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202198.P17190488682123380629

`12*A027810(n+2)`
-/

namespace A202198.P17190488682123380629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A027810 (n + 2)

end

end A202198.P17190488682123380629

noncomputable section

/-- A202198: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 101 in rows and columns.

Offset 1, canonical program `A202198.P17190488682123380629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202198 (n : ℕ) : ℤ :=
  A202198.P17190488682123380629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202199.P10785434287540727926

`14*A027818(n+2)`
-/

namespace A202199.P10785434287540727926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A027818 (n + 2)

end

end A202199.P10785434287540727926

noncomputable section

/-- A202199: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 101 in rows and columns.

Offset 1, canonical program `A202199.P10785434287540727926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202199 (n : ℕ) : ℤ :=
  A202199.P10785434287540727926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202200.P17504709831509419711

`16*A056001(n+2)`
-/

namespace A202200.P17504709831509419711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A056001 (n + 2)

end

end A202200.P17504709831509419711

noncomputable section

/-- A202200: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 101 in rows and columns.

Offset 1, canonical program `A202200.P17504709831509419711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202200 (n : ℕ) : ℤ :=
  A202200.P17504709831509419711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202201.P3456671405789778067

`18*A056003(n+2)`
-/

namespace A202201.P3456671405789778067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A056003 (n + 2)

end

end A202201.P3456671405789778067

noncomputable section

/-- A202201: Number of (n+2) X 9 binary arrays avoiding patterns 001 and 101 in rows and columns.

Offset 1, canonical program `A202201.P3456671405789778067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202201 (n : ℕ) : ℤ :=
  A202201.P3456671405789778067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202331.P4481714851461192435

`A005583(n+2)+A005583(n+3)+2`
-/

namespace A202331.P4481714851461192435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 2) + (A005583 (n + 3) + 2)

end

end A202331.P4481714851461192435

noncomputable section

/-- A202331: Number of (n+1) X 5 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202331.P4481714851461192435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202331 (n : ℕ) : ℤ :=
  A202331.P4481714851461192435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202332.P936961628327573372

`A005584(n+2)+A005584(n+3)+2`
-/

namespace A202332.P936961628327573372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 2) + (A005584 (n + 3) + 2)

end

end A202332.P936961628327573372

noncomputable section

/-- A202332: Number of (n+1) X 6 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202332.P936961628327573372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202332 (n : ℕ) : ℤ :=
  A202332.P936961628327573372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A202332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202333.P13249908490991948429

`A050486(n+3)+2-A005585(n+4)`
-/

namespace A202333.P13249908490991948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (n + 3) + (2 - A005585 (n + 4))

end

end A202333.P13249908490991948429

noncomputable section

/-- A202333: Number of (n+1) X 7 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202333.P13249908490991948429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333 (n : ℕ) : ℤ :=
  A202333.P13249908490991948429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202400.P3943635139202331291

`or(1, A048739(n+3))²`
-/

namespace A202400.P3943635139202331291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048739 (n + 3)) ^ 2

end

end A202400.P3943635139202331291

noncomputable section

/-- A202400: Number of (n+2) X 4 binary arrays avoiding patterns 000 and 010 in rows and columns.

Offset 1, canonical program `A202400.P3943635139202331291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A202400 (n : ℕ) : ℤ :=
  A202400.P3943635139202331291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A202400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202554.P7186050484114814012

`∑[∑[A027306(n+1)]+1]+1`
-/

namespace A202554.P7186050484114814012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A202554.P7186050484114814012

noncomputable section

/-- A202554: Number of nX2 0,1 arrays with the row and column sums nondecreasing.

Offset 1, canonical program `A202554.P7186050484114814012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A202554 (n : ℕ) : ℤ :=
  A202554.P7186050484114814012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A202554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202807.P102181140856324346

`∑[A033455(n+1)+1-(n+1)²]`
-/

namespace A202807.P102181140856324346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + (1 - ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202807.P102181140856324346

noncomputable section

/-- A202807: Number of n X 3 nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

Offset 1, canonical program `A202807.P102181140856324346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202807 (n : ℕ) : ℤ :=
  A202807.P102181140856324346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202964.P9492632001918835898

`A114254(n)+or(3, A131452(n+1))`
-/

namespace A202964.P9492632001918835898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n + Int.lor 3 (A131452 (n + 1))

end

end A202964.P9492632001918835898

noncomputable section

/-- A202964: Number of arrays of 4 integers in -n..n with sum zero and adjacent elements differing in absolute value.

Offset 1, canonical program `A202964.P9492632001918835898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202964 (n : ℕ) : ℤ :=
  A202964.P9492632001918835898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203150.P12141885695883165690

`A016116(n)+a(n-1)*A000034(n)` with `a(0)=1`
-/

namespace A203150.P12141885695883165690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016116 n + a (n - 1) * A000034 n

end

end A203150.P12141885695883165690

noncomputable section

/-- A203150: (n-1)-st elementary symmetric function of the first n terms of (1,2,1,2,1,2,1,2,1,2,...)=A000034.

Offset 1, canonical program `A203150.P12141885695883165690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A203150 (n : ℕ) : ℤ :=
  A203150.P12141885695883165690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A203150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203160.P14825863557280747946

`A203162(n+2)-∏[A010882(n+1)]`
-/

namespace A203160.P14825863557280747946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203162 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203160.P14825863557280747946

noncomputable section

/-- A203160: (n-1)-st elementary symmetric function of the first n terms of (2,3,1,2,3,1,2,3,1,...)=A010882.

Offset 1, canonical program `A203160.P14825863557280747946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A203160 (n : ℕ) : ℤ :=
  A203160.P14825863557280747946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A203160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203167.P17485948460614624916

`record[abs((n+1)*A138380(n))]`
-/

namespace A203167.P17485948460614624916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A138380 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203167.P17485948460614624916

noncomputable section

/-- A203167: (n-1)-st elementary symmetric function of the first n terms of (2,2,1,2,2,1,2,2,1,...)=(A130196 for n>0).

Offset 1, canonical program `A203167.P17485948460614624916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A203167 (n : ℕ) : ℤ :=
  A203167.P17485948460614624916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A203167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203230.P8905345843891824624

`A038754(n)+n*Δ[A068911(n)]`
-/

namespace A203230.P8905345843891824624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A203230.P8905345843891824624

noncomputable section

/-- A203230: (n-1)-st elementary symmetric function of the first n terms of A010684.

Offset 1, canonical program `A203230.P8905345843891824624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A203230 (n : ℕ) : ℤ :=
  A203230.P8905345843891824624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A203230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203231.P2100730177118112889

`(A014601(n)+1)*A108411(n)`
-/

namespace A203231.P2100730177118112889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014601 n + 1) * A108411 n

end

end A203231.P2100730177118112889

noncomputable section

/-- A203231: (n-1)-st elementary symmetric function of the first n terms of the periodic sequence (3,1,3,1,3,1,3,1,...).

Offset 1, canonical program `A203231.P2100730177118112889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A203231 (n : ℕ) : ℤ :=
  A203231.P2100730177118112889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A203231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203242.P17057204554275008722

`∑[∑[A126646(n)]*A126646(n+1)]`
-/

namespace A203242.P17057204554275008722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A126646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203242.P17057204554275008722

noncomputable section

/-- A203242: Second elementary symmetric function of the first n terms of (1, 3, 7, 15, 31, ...).

Offset 2, canonical program `A203242.P17057204554275008722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A203242 (n : ℕ) : ℤ :=
  A203242.P17057204554275008722.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A203242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203245.P2063800879592085872

`∑[A001911(n+1)*A020695(n)]`
-/

namespace A203245.P2063800879592085872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) * A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203245.P2063800879592085872

noncomputable section

/-- A203245: Second elementary symmetric function of the first n terms of (1,2,3,5,8,...).

Offset 1, canonical program `A203245.P2063800879592085872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A203245 (n : ℕ) : ℤ :=
  A203245.P2063800879592085872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A203245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203246.P15187326274312400021

`abs(a(n-1)-∑[A199771(n+1)])` with `a(0)=1`
-/

namespace A203246.P15187326274312400021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A203246.P15187326274312400021

noncomputable section

/-- A203246: Second elementary symmetric function of the first n terms of (1,1,2,2,3,3,4,4,...).

Offset 2, canonical program `A203246.P15187326274312400021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203246 (n : ℕ) : ℤ :=
  A203246.P15187326274312400021.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203298.P17869188344315097601

`∑[(A008619(n)+1)*∑[A080513(n)]]`
-/

namespace A203298.P17869188344315097601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203298.P17869188344315097601

noncomputable section

/-- A203298: Second elementary symmetric function of the first n terms of (1,2,2,3,3,4,4,5,5...).

Offset 2, canonical program `A203298.P17869188344315097601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203298 (n : ℕ) : ℤ :=
  A203298.P17869188344315097601.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203319.P11102254697709365866

`∑{d}[n+1, A045925(n+1)/A045925(#)]`
-/

namespace A203319.P11102254697709365866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A045925 (n + 1) : ℚ) / (A045925 d : ℚ)

end

end A203319.P11102254697709365866

noncomputable section

/-- A203319: a(n) = n*Fibonacci(n) * Sum_{d|n} 1/(d*Fibonacci(d)).

Offset 1, canonical program `A203319.P11102254697709365866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A203319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203319.P11102254697709365866.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A203319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203797.P11887690551799651749

`∑{d}[n+1, A000129(n+1)/A000129(#)]`
-/

namespace A203797.P11887690551799651749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000129 (n + 1) : ℚ) / (A000129 d : ℚ)

end

end A203797.P11887690551799651749

noncomputable section

/-- A203797: a(n) = Pell(n) * Sum_{d|n} 1/Pell(d), where Pell(n) = A000129(n).

Offset 1, canonical program `A203797.P11887690551799651749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A203797 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203797.P11887690551799651749.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A203797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203838.P15003564038394344304

`∑{d}[n+1, #^3*A000045(n+1)]`
-/

namespace A203838.P15003564038394344304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 3 : ℤ) * A000045 (n + 1)

end

end A203838.P15003564038394344304

noncomputable section

/-- A203838: a(n) = sigma_3(n)*Fibonacci(n), where sigma_3(n) = A001158(n), the sum of cubes of divisors of n.

Offset 1, canonical program `A203838.P15003564038394344304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A203838 (n : ℕ) : ℤ :=
  A203838.P15003564038394344304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A203838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203847.P6728679573787343477

`∑{d}[n+1, A000045(lcm(#, n+1))]`
-/

namespace A203847.P6728679573787343477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (Nat.lcm d (n + 1))

end

end A203847.P6728679573787343477

noncomputable section

/-- A203847: a(n) = tau(n)*Fibonacci(n), where tau(n) = A000005(n), the number of divisors of n.

Offset 1, canonical program `A203847.P6728679573787343477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A203847 (n : ℕ) : ℤ :=
  A203847.P6728679573787343477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A203847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203848.P12497917067231302424

`∑{d}[n+1, #*A000045(n+1)]`
-/

namespace A203848.P12497917067231302424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000045 (n + 1)

end

end A203848.P12497917067231302424

noncomputable section

/-- A203848: a(n) = sigma(n)*Fibonacci(n), where sigma(n) = A000203(n), the sum of divisors of n.

Offset 1, canonical program `A203848.P12497917067231302424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A203848 (n : ℕ) : ℤ :=
  A203848.P12497917067231302424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A203848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203849.P16862153804249314924

`∑{d}[n+1, #²*A000045(n+1)]`
-/

namespace A203849.P16862153804249314924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A000045 (n + 1)

end

end A203849.P16862153804249314924

noncomputable section

/-- A203849: a(n) = sigma_2(n)*Fibonacci(n), where sigma_2(n) = A001157(n), the sum of squares of divisors of n.

Offset 1, canonical program `A203849.P16862153804249314924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A203849 (n : ℕ) : ℤ :=
  A203849.P16862153804249314924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A203849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203916.P2501060195601350991

`4*A184606(n+2)`
-/

namespace A203916.P2501060195601350991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A184606 (n + 2)

end

end A203916.P2501060195601350991

noncomputable section

/-- A203916: Number of (n+2) X 3 0..1 arrays with every 3 X 3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..1 introduced in row major order.

Offset 1, canonical program `A203916.P2501060195601350991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A203916 (n : ℕ) : ℤ :=
  A203916.P2501060195601350991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A203916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203967.P466578750780201089

`∑[C(2, A010553(n+1))%2]`
-/

namespace A203967.P466578750780201089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A010553 (n + 1)).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203967.P466578750780201089

noncomputable section

/-- A203967: The number of positive integers <= n that have a prime number of divisors.

Offset 1, canonical program `A203967.P466578750780201089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203967 (n : ℕ) : ℤ :=
  (A203967.P466578750780201089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204032.P5197991310784737255

`A125128(A008619(n+3))*A125128(A008619(n)+1)`
-/

namespace A204032.P5197991310784737255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (A008619 (n + 3)).toNat * A125128 (A008619 n + 1).toNat

end

end A204032.P5197991310784737255

noncomputable section

/-- A204032: Number of (n+1) X 2 0..1 arrays with the sums of 2 X 2 subblocks nondecreasing rightwards and downwards.

Offset 1, canonical program `A204032.P5197991310784737255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A204032 (n : ℕ) : ℤ :=
  A204032.P5197991310784737255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A204032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204060.P7267899911717568045

`A000045((n+1)*Δ[floor(sqrt(n))])`
-/

namespace A204060.P7267899911717568045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A204060.P7267899911717568045

noncomputable section

/-- A204060: G.f.: Sum_{n>=1} Fibonacci(n^2)*x^(n^2).

Offset 1, canonical program `A204060.P7267899911717568045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A204060 (n : ℕ) : ℤ :=
  A204060.P7267899911717568045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A204060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204062.P5526810278388238729

`A084158(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A204062.P5526810278388238729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084158 (n + 1) - a (n - 1)

end

end A204062.P5526810278388238729

noncomputable section

/-- A204062: Expansion of g.f.: exp( Sum_{n>=1} A002203(n)^2 * x^n/n ) where A002203 are the companion Pell numbers.

Offset 0, canonical program `A204062.P5526810278388238729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A204062 (n : ℕ) : ℤ :=
  A204062.P5526810278388238729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A204062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204078.P4825604268406451473

`A152732(n+2)²`
-/

namespace A204078.P4825604268406451473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (n + 2) ^ 2

end

end A204078.P4825604268406451473

noncomputable section

/-- A204078: Number of nX2 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1.

Offset 1, canonical program `A204078.P4825604268406451473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A204078 (n : ℕ) : ℤ :=
  A204078.P4825604268406451473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A204078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204129.P10554218136035911169

`A000032(A204125(n+1))`
-/

namespace A204129.P10554218136035911169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A204125 (n + 1)).toNat

end

end A204129.P10554218136035911169

noncomputable section

/-- A204129: Symmetric matrix based on f(i,j)=(L(i) if i=j and 1 otherwise), where L=A000032 (Lucas numbers), by antidiagonals.

Offset 1, canonical program `A204129.P10554218136035911169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204129 (n : ℕ) : ℤ :=
  A204129.P10554218136035911169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204160.P16759806520326084290

`3*A204125(n+1)-2`
-/

namespace A204160.P16759806520326084290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A204125 (n + 1) - 2

end

end A204160.P16759806520326084290

noncomputable section

/-- A204160: Symmetric matrix based on f(i,j)=(3i-2 if i=j and = 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204160.P16759806520326084290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204160 (n : ℕ) : ℤ :=
  A204160.P16759806520326084290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204162.P9133944286812361789

`ceil(A204131(n+1)/4)`
-/

namespace A204162.P9133944286812361789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204131 (n + 1) : ℚ) / 4⌉

end

end A204162.P9133944286812361789

noncomputable section

/-- A204162: Symmetric matrix based on f(i,j) = (floor((i+1)/2) if i=j and = 1 otherwise), by antidiagonals.

Offset 1, canonical program `A204162.P9133944286812361789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204162 (n : ℕ) : ℤ :=
  A204162.P9133944286812361789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204255.P9177356554640057393

`(((A003056(n)+1)%4+1)%4+1)%10`
-/

namespace A204255.P9177356554640057393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (A003056 n + 1) 4 + 1) 4 + 1) 10

end

end A204255.P9177356554640057393

noncomputable section

/-- A204255: Symmetric matrix given by f(i,j)=1+[(i+j) mod 4].

Offset 1, canonical program `A204255.P9177356554640057393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204255 (n : ℕ) : ℤ :=
  A204255.P9177356554640057393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204269.P5173295850797786783

`A133872(A003056(n))`
-/

namespace A204269.P5173295850797786783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A003056 n).toNat

end

end A204269.P5173295850797786783

noncomputable section

/-- A204269: Symmetric matrix: f(i,j)=floor[(i+j+2)/4]-floor[(i+j)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204269.P5173295850797786783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204269 (n : ℕ) : ℤ :=
  A204269.P5173295850797786783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204271.P11283443685406951891

`∑{d}[n+1, #*A000129(n+1)]`
-/

namespace A204271.P11283443685406951891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000129 (n + 1)

end

end A204271.P11283443685406951891

noncomputable section

/-- A204271: a(n) = sigma(n)*Pell(n), where sigma(n) = A000203(n), the sum of divisors of n.

Offset 1, canonical program `A204271.P11283443685406951891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A204271 (n : ℕ) : ℤ :=
  A204271.P11283443685406951891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A204271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204272.P13524161059662794718

`∑[A001333(n)]*∑{d}[n+1, #²]`
-/

namespace A204272.P13524161059662794718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A204272.P13524161059662794718

noncomputable section

/-- A204272: a(n) = sigma_2(n)*Pell(n), where sigma_2(n) = A001157(n), the sum of squares of divisors of n.

Offset 1, canonical program `A204272.P13524161059662794718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A204272 (n : ℕ) : ℤ :=
  A204272.P13524161059662794718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A204272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204273.P1803749618269786851

`∑[A001333(n)]*A001158(n+1)`
-/

namespace A204273.P1803749618269786851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001158 (n + 1)

end

end A204273.P1803749618269786851

noncomputable section

/-- A204273: a(n) = sigma_3(n)*Pell(n), where sigma_3(n) = A001158(n), the sum of cubes of divisors of n.

Offset 1, canonical program `A204273.P1803749618269786851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A204273 (n : ℕ) : ℤ :=
  A204273.P1803749618269786851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A204273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204274.P6003204237064035270

`A000129((n+1)*char[n²-1])`
-/

namespace A204274.P6003204237064035270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ((n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A204274.P6003204237064035270

noncomputable section

/-- A204274: G.f.: Sum_{n>=1} Pell(n^2)*x^(n^2).

Offset 1, canonical program `A204274.P6003204237064035270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A204274 (n : ℕ) : ℤ :=
  A204274.P6003204237064035270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A204274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204421.P13358004304107927410

`C(2, a(A056943(n))²)` with `a(0)=1`
-/

namespace A204421.P13358004304107927410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (a (A056943 n).toNat ^ 2)

end

end A204421.P13358004304107927410

noncomputable section

/-- A204421: Symmetric matrix: f(i,j)=(i+j+2 mod 3), by antidiagonals.

Offset 1, canonical program `A204421.P13358004304107927410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204421 (n : ℕ) : ℤ :=
  (A204421.P13358004304107927410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204447.P198229542086877322

`floor(sqrt(and(3, A003056(n))))`
-/

namespace A204447.P198229542086877322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.land 3 (A003056 n))

end

end A204447.P198229542086877322

noncomputable section

/-- A204447: Symmetric matrix: f(i,j)=floor[(i+j+5)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204447.P198229542086877322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204447 (n : ℕ) : ℤ :=
  A204447.P198229542086877322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204458.P12506777859032292670

`A083219(A129756(A129756(n)))+2*n`
-/

namespace A204458.P12506777859032292670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A129756 (A129756 n).toNat).toNat + (2 * n : ℤ)

end

end A204458.P12506777859032292670

noncomputable section

/-- A204458: Odd numbers not divisible by 17.

Offset 1, canonical program `A204458.P12506777859032292670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204458 (n : ℕ) : ℤ :=
  A204458.P12506777859032292670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204503.P9073994523406149665

`A204502(n+1)²`
-/

namespace A204503.P9073994523406149665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1) ^ 2

end

end A204503.P9073994523406149665

noncomputable section

/-- A204503: Squares n^2 such that floor(n^2/9) is again a square.

Offset 1, canonical program `A204503.P9073994523406149665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204503 (n : ℕ) : ℤ :=
  A204503.P9073994523406149665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204551.P10284403586376407793

`A008621(A003056(n))`
-/

namespace A204551.P10284403586376407793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A003056 n).toNat

end

end A204551.P10284403586376407793

noncomputable section

/-- A204551: Symmetric matrix: f(i,j)=floor[(2i+2j+1)/4]-floor[(i+j)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204551.P10284403586376407793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204551 (n : ℕ) : ℤ :=
  A204551.P10284403586376407793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204553.P16200001914618220885

`round((A002024(n+1)+2)/4)`
-/

namespace A204553.P16200001914618220885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002024 (n + 1) + 2 : ℚ) / 4)

end

end A204553.P16200001914618220885

noncomputable section

/-- A204553: Symmetric matrix: f(i,j)=floor[(2i+2j+2)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204553.P16200001914618220885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204553 (n : ℕ) : ℤ :=
  A204553.P16200001914618220885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204555.P11126028987313475902

`A000125(n)-C(A004526(n), 3)`
-/

namespace A204555.P11126028987313475902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - (Nat.choose (A004526 n).toNat 3 : ℤ)

end

end A204555.P11126028987313475902

noncomputable section

/-- A204555: The number of subsets of the numbers {1,2,3...,n} consisting of at most 3 elements and at most two of those are even.

Offset 0, canonical program `A204555.P11126028987313475902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204555 (n : ℕ) : ℤ :=
  A204555.P11126028987313475902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204695.P11128389482933440744

`A189510(n)%9`
-/

namespace A204695.P11128389482933440744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189510 n) 9

end

end A204695.P11128389482933440744

noncomputable section

/-- A204695: a(n) = n^n (mod 9).

Offset 0, canonical program `A204695.P11128389482933440744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204695 (n : ℕ) : ℤ :=
  A204695.P11128389482933440744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204699.P2186860894411587563

`ceil((3*A028859(n))²/6)`
-/

namespace A204699.P2186860894411587563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * A028859 n) ^ 2 : ℚ) / 6⌉

end

end A204699.P2186860894411587563

noncomputable section

/-- A204699: Number of n X 2 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

Offset 1, canonical program `A204699.P2186860894411587563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A204699 (n : ℕ) : ℤ :=
  A204699.P2186860894411587563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A204699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204707.P5650591119854460917

`A183682(n+1)+1`
-/

namespace A204707.P5650591119854460917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183682 (n + 1) + 1

end

end A204707.P5650591119854460917

noncomputable section

/-- A204707: Number of (n+1) X 3 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

Offset 1, canonical program `A204707.P5650591119854460917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A204707 (n : ℕ) : ℤ :=
  A204707.P5650591119854460917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A204707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204709.P3193264368587489793

`A183683(n+1)+1`
-/

namespace A204709.P3193264368587489793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183683 (n + 1) + 1

end

end A204709.P3193264368587489793

noncomputable section

/-- A204709: Number of (n+1) X 5 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

Offset 1, canonical program `A204709.P3193264368587489793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A204709 (n : ℕ) : ℤ :=
  A204709.P3193264368587489793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A204709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204746.P17176570300952066759

`a(n-1)+2*A000045(n+2)` with `a(0)=40, a(1)=46, a(2)=22`
-/

namespace A204746.P17176570300952066759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40, 46, 22] fun n a =>
  a (n - 1) + 2 * A000045 (n + 2)

end

end A204746.P17176570300952066759

noncomputable section

/-- A204746: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

Offset 1, canonical program `A204746.P17176570300952066759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A204746 (n : ℕ) : ℤ :=
  A204746.P17176570300952066759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A204746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204829.P4225986207751981540

`eq[2, floor(A000203(n+1)/(n+1))]+1`
-/

namespace A204829.P4225986207751981540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A204829.P4225986207751981540

noncomputable section

/-- A204829: Numbers k with abundancy 2 <= sigma(k)/k < 3.

Offset 1, canonical program `A204829.P4225986207751981540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204829 (n : ℕ) : ℤ :=
  (A204829.P4225986207751981540.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204854.P9665984981395968068

`(2-A001650(n+1))*A033999(n)`
-/

namespace A204854.P9665984981395968068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001650 (n + 1)) * A033999 n

end

end A204854.P9665984981395968068

noncomputable section

/-- A204854: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 - x^k) / (1 + x^k).

Offset 0, canonical program `A204854.P9665984981395968068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204854 (n : ℕ) : ℤ :=
  A204854.P9665984981395968068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204896.P7465343658140665975

`(n+1)*ceil(ratio[A033271(n+2)])`
-/

namespace A204896.P7465343658140665975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A204896.P7465343658140665975

noncomputable section

/-- A204896: p(n)-q(n), where (p(n), q(n)) is the least pair of primes (ordered as in A204890) for which n divides p(n)-q(n).

Offset 1, canonical program `A204896.P7465343658140665975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A204896 (n : ℕ) : ℤ :=
  A204896.P7465343658140665975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A204896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205343.P8334896380693558968

`∑[∑[A010013(n)]]-A064808(n)`
-/

namespace A205343.P8334896380693558968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064808 n

end

end A205343.P8334896380693558968

noncomputable section

/-- A205343: Number of length 6 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than n.

Offset 1, canonical program `A205343.P8334896380693558968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205343 (n : ℕ) : ℤ :=
  A205343.P8334896380693558968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205579.P9526870637845310586

`floor(A054405(2*n+1)/A054405(n+1))`
-/

namespace A205579.P9526870637845310586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054405 (2 * n + 1) : ℚ) / (A054405 (n + 1) : ℚ)⌋

end

end A205579.P9526870637845310586

noncomputable section

/-- A205579: a(n) = round(r^n) where r is the smallest Pisot number (real root r=1.3247179.. of x^3-x-1).

Offset 0, canonical program `A205579.P9526870637845310586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A205579 (n : ℕ) : ℤ :=
  A205579.P9526870637845310586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A205579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205633.P2551251633334733944

`∑{d}[1-A016873(n), #]%2`
-/

namespace A205633.P2551251633334733944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A016873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) % 2

end

end A205633.P2551251633334733944

noncomputable section

/-- A205633: Expansion of f(x^3, x^7) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A205633.P2551251633334733944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205633 (n : ℕ) : ℤ :=
  (A205633.P2551251633334733944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205650.P6988856271426545041

`dr(∑[A156637(2*n+1)])`
-/

namespace A205650.P6988856271426545041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156637 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205650.P6988856271426545041

noncomputable section

/-- A205650: Period 12: repeat (1, 6, 8, 6, 1, 9, 8, 3, 1, 3, 8, 9).

Offset 1, canonical program `A205650.P6988856271426545041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A205650 (n : ℕ) : ℤ :=
  (A205650.P6988856271426545041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A205650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205770.P4417614791216105302

`A018142(2*n)`
-/

namespace A205770.P4417614791216105302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018142 (2 * n)

end

end A205770.P4417614791216105302

noncomputable section

/-- A205770: Powers of fifth root of 100, rounded to the nearest integer.

Offset 0, canonical program `A205770.P4417614791216105302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A205770 (n : ℕ) : ℤ :=
  A205770.P4417614791216105302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A205770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205837.P9311824850182704817

`∑[char[∑[A009947(n)]]]+2`
-/

namespace A205837.P9311824850182704817
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A205837.P9311824850182704817

noncomputable section

/-- A205837: Numbers k for which 2 divides s(k)-s(j) for some j

Offset 1, canonical program `A205837.P9311824850182704817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205837 (n : ℕ) : ℤ :=
  (A205837.P9311824850182704817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205965.P16527723628671375637

`A000045(n+1)*∑{d}[n+1, #%2]`
-/

namespace A205965.P16527723628671375637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A205965.P16527723628671375637

noncomputable section

/-- A205965: a(n) = Fibonacci(n)*A001227(n) for n>=1, where A001227(n) is the number of odd divisors of n.

Offset 1, canonical program `A205965.P16527723628671375637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A205965 (n : ℕ) : ℤ :=
  A205965.P16527723628671375637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A205965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206032.P15818663996432524408

`∏{d}[n+1, A001065(#)+#]`
-/

namespace A206032.P15818663996432524408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A001065 d + (d : ℤ))

end

end A206032.P15818663996432524408

noncomputable section

/-- A206032: a(n) = Product_{d|n} sigma(d) where sigma = A000203.

Offset 1, canonical program `A206032.P15818663996432524408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A206032 (n : ℕ) : ℤ :=
  A206032.P15818663996432524408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A206032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206144.P9351163376155616945

`6*(A020698(n+1)+A000007(n))`
-/

namespace A206144.P9351163376155616945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020698 (n + 1) + A000007 n)

end

end A206144.P9351163376155616945

noncomputable section

/-- A206144: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

Offset 1, canonical program `A206144.P9351163376155616945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A206144 (n : ℕ) : ℤ :=
  A206144.P9351163376155616945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A206144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206245.P3707207278545082165

`∑[1-A011582(n²)]`
-/

namespace A206245.P3707207278545082165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011582 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206245.P3707207278545082165

noncomputable section

/-- A206245: Number of partitions of n into repunit powers, cf. A083278.

Offset 0, canonical program `A206245.P3707207278545082165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A206245 (n : ℕ) : ℤ :=
  A206245.P3707207278545082165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A206245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206332.P9847070516523007032

`A004755(n+1)-1`
-/

namespace A206332.P9847070516523007032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1) - 1

end

end A206332.P9847070516523007032

noncomputable section

/-- A206332: Complement of A092754.

Offset 1, canonical program `A206332.P9847070516523007032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206332 (n : ℕ) : ℤ :=
  A206332.P9847070516523007032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206544.P1936267423562286217

`A271832(n+1)+A271832(n)`
-/

namespace A206544.P1936267423562286217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271832 (n + 1) + A271832 n

end

end A206544.P1936267423562286217

noncomputable section

/-- A206544: Period 12: repeat 1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1.

Offset 1, canonical program `A206544.P1936267423562286217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206544 (n : ℕ) : ℤ :=
  A206544.P1936267423562286217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206723.P13222012397116607497

`∑[7*A002878(n)]`
-/

namespace A206723.P13222012397116607497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P13222012397116607497

noncomputable section

/-- A206723: a(n) = 7*( ((3 + sqrt(5))/2)^n + ((3 - sqrt(5))/2)^n - 2 ).

Offset 1, canonical program `A206723.P13222012397116607497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A206723 (n : ℕ) : ℤ :=
  A206723.P13222012397116607497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A206723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206728.P13422394027231331753

`A206727(n+1)²`
-/

namespace A206728.P13422394027231331753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206727 (n + 1) ^ 2

end

end A206728.P13422394027231331753

noncomputable section

/-- A206728: Number of n X 2 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

Offset 1, canonical program `A206728.P13422394027231331753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206727, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206728 (n : ℕ) : ℤ :=
  A206728.P13422394027231331753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206727, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206773.P1039150232301474807

`A001065(n+1)-A105221(n+1)`
-/

namespace A206773.P1039150232301474807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A105221 (n + 1)

end

end A206773.P1039150232301474807

noncomputable section

/-- A206773: Sum of the nonprime proper divisors (or nonprime aliquot parts) of n.

Offset 1, canonical program `A206773.P1039150232301474807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206773 (n : ℕ) : ℤ :=
  A206773.P1039150232301474807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206787.P5835391057460083436

`A048250(n+1)/A010684(n)`
-/

namespace A206787.P5835391057460083436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A206787.P5835391057460083436

noncomputable section

/-- A206787: Sum of the odd squarefree divisors of n.

Offset 1, canonical program `A206787.P5835391057460083436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206787 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A206787.P5835391057460083436.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206791.P11088321705880561275

`A206790(n+1)²`
-/

namespace A206791.P11088321705880561275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206790 (n + 1) ^ 2

end

end A206791.P11088321705880561275

noncomputable section

/-- A206791: Number of n X 2 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

Offset 1, canonical program `A206791.P11088321705880561275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206790, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206791 (n : ℕ) : ℤ :=
  A206791.P11088321705880561275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206790, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206807.P5148675627728402586

`∑[A022921(n)+1]`
-/

namespace A206807.P5148675627728402586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206807.P5148675627728402586

noncomputable section

/-- A206807: Position of 3^n when {2^j} and {3^k} are jointly ranked; complement of A206805.

Offset 1, canonical program `A206807.P5148675627728402586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206807 (n : ℕ) : ℤ :=
  A206807.P5148675627728402586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206824.P14274703909039369394

`A091954(∏{p}[n+2, #])`
-/

namespace A206824.P14274703909039369394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206824.P14274703909039369394

noncomputable section

/-- A206824: Number of solutions (n,k) of s(k) = s(n) (mod n), where 1 <= k < n and s(k) = k(k+1)/2.

Offset 2, canonical program `A206824.P14274703909039369394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206824 (n : ℕ) : ℤ :=
  A206824.P14274703909039369394.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206857.P6550092540875611181

`A098182(n+2)²`
-/

namespace A206857.P6550092540875611181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 (n + 2) ^ 2

end

end A206857.P6550092540875611181

noncomputable section

/-- A206857: Number of n X 2 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

Offset 1, canonical program `A206857.P6550092540875611181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A206857 (n : ℕ) : ℤ :=
  A206857.P6550092540875611181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A206857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206905.P3002875133624114019

`Δ[A001844(n)]+floor((n+1)*sqrt(27))`
-/

namespace A206905.P3002875133624114019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊(n + 1 : ℝ) * Real.sqrt (27 : ℝ)⌋

end

end A206905.P3002875133624114019

noncomputable section

/-- A206905: n+[nr/t]+[ns/t], where []=floor, r=3, s=sqrt(3), t=1/s.

Offset 1, canonical program `A206905.P3002875133624114019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206905 (n : ℕ) : ℤ :=
  A206905.P3002875133624114019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206908.P3140970404298958884

`∑[6-Δ[A195129(n)]]`
-/

namespace A206908.P3140970404298958884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206908.P3140970404298958884

noncomputable section

/-- A206908: a(n) = 4*n + floor(n/sqrt(3)).

Offset 1, canonical program `A206908.P3140970404298958884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206908 (n : ℕ) : ℤ :=
  A206908.P3140970404298958884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206948.P10848531966811191809

`Δ[A094433(n)]-A012781(n)`
-/

namespace A206948.P10848531966811191809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A012781 n

end

end A206948.P10848531966811191809

noncomputable section

/-- A206948: Number of nonisomorphic graded posets with 0 and non-uniform Hasse graph of rank n, with exactly 2 elements of each rank level above 0.

Offset 0, canonical program `A206948.P10848531966811191809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A206948 (n : ℕ) : ℤ :=
  A206948.P10848531966811191809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A206948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206950.P8868437174735002888

`A206901(n)-A206902(n)`
-/

namespace A206950.P8868437174735002888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206901 n - A206902 n

end

end A206950.P8868437174735002888

noncomputable section

/-- A206950: Number of nonisomorphic graded posets with 0 and non-uniform Hasse graph of rank n, with no 3-element antichain.

Offset 0, canonical program `A206950.P8868437174735002888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A206950 (n : ℕ) : ℤ :=
  A206950.P8868437174735002888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A206950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207009.P2091392009472730723

`A207008(n+1)²`
-/

namespace A207009.P2091392009472730723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207008 (n + 1) ^ 2

end

end A207009.P2091392009472730723

noncomputable section

/-- A207009: Number of n X 2 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

Offset 1, canonical program `A207009.P2091392009472730723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A207008, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207009 (n : ℕ) : ℤ :=
  A207009.P2091392009472730723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A207008, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207036.P14090468834582870259

`eq[0, A000203(n+2)%24]+2`
-/

namespace A207036.P14090468834582870259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A207036.P14090468834582870259

noncomputable section

/-- A207036: Numbers k such that the sum of divisors of k is a multiple of 24.

Offset 1, canonical program `A207036.P14090468834582870259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207036 (n : ℕ) : ℤ :=
  (A207036.P14090468834582870259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207255.P3870769650535886976

`∑[10*(∑[A028563(n)]+1)]`
-/

namespace A207255.P3870769650535886976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207255.P3870769650535886976

noncomputable section

/-- A207255: Number of 4 X n 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207255.P3870769650535886976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207255 (n : ℕ) : ℤ :=
  A207255.P3870769650535886976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207277.P9988503482366594588

`A207276(n+1)²`
-/

namespace A207277.P9988503482366594588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207276 (n + 1) ^ 2

end

end A207277.P9988503482366594588

noncomputable section

/-- A207277: Number of n X 2 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

Offset 1, canonical program `A207277.P9988503482366594588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A207276, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207277 (n : ℕ) : ℤ :=
  A207277.P9988503482366594588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A207276, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207400.P14434467165464985475

`A166830(n+1)*A181510(n+1)`
-/

namespace A207400.P14434467165464985475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) * A181510 (n + 1)

end

end A207400.P14434467165464985475

noncomputable section

/-- A207400: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A207400.P14434467165464985475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207400 (n : ℕ) : ℤ :=
  A207400.P14434467165464985475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207402.P8667676243857557291

`A086114(n+1)/A016742(n+1)*A086115(n+1)`
-/

namespace A207402.P8667676243857557291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086114 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A086115 (n + 1) : ℚ)

end

end A207402.P8667676243857557291

noncomputable section

/-- A207402: Number of n X 7 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A207402.P8667676243857557291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207402.P8667676243857557291.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207452.P3212778044511231629

`(14*n+7)*Δ[6*A062392(n)]`
-/

namespace A207452.P3212778044511231629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A062392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n + 7 : ℤ) * (f1 (n + 1) - f1 n)

end

end A207452.P3212778044511231629

noncomputable section

/-- A207452: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A207452.P3212778044511231629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207452 (n : ℕ) : ℤ :=
  A207452.P3212778044511231629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207598.P4866717690251908741

`(12*n+4)*A207449(n+1)`
-/

namespace A207598.P4866717690251908741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 4 : ℤ) * A207449 (n + 1)

end

end A207598.P4866717690251908741

noncomputable section

/-- A207598: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A207598.P4866717690251908741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207598 (n : ℕ) : ℤ :=
  A207598.P4866717690251908741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207701.P6815164230583372356

`(1-∑[2*A028878(n)])²`
-/

namespace A207701.P6815164230583372356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207701.P6815164230583372356

noncomputable section

/-- A207701: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A207701.P6815164230583372356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207701 (n : ℕ) : ℤ :=
  A207701.P6815164230583372356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207737.P443957960658006542

`record[(A189050(n+2)+2)²]`
-/

namespace A207737.P443957960658006542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189050 (n + 2) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207737.P443957960658006542

noncomputable section

/-- A207737: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

Offset 1, canonical program `A207737.P443957960658006542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A207737 (n : ℕ) : ℤ :=
  A207737.P443957960658006542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A207737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207854.P17334441881505106195

`(A200865(n+2)-Δ[A200865(n+2)])²`
-/

namespace A207854.P17334441881505106195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A200865 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A207854.P17334441881505106195

noncomputable section

/-- A207854: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207854.P17334441881505106195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A207854 (n : ℕ) : ℤ :=
  A207854.P17334441881505106195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A207854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207924.P6343395138758694004

`(A248959(n+2)/3)²`
-/

namespace A207924.P6343395138758694004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A248959 (n + 2) : ℚ) / 3) ^ 2

end

end A207924.P6343395138758694004

noncomputable section

/-- A207924: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

Offset 1, canonical program `A207924.P6343395138758694004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A207924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207924.P6343395138758694004.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A207924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208035.P3629682806518854192

`A000213(A266977(2*n)+2)²`
-/

namespace A208035.P3629682806518854192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (A266977 (2 * n) + 2).toNat ^ 2

end

end A208035.P3629682806518854192

noncomputable section

/-- A208035: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 0 1 vertically.

Offset 1, canonical program `A208035.P3629682806518854192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A208035 (n : ℕ) : ℤ :=
  A208035.P3629682806518854192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A208035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208087.P8234314849387391565

`3*A208086(n+1)`
-/

namespace A208087.P8234314849387391565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A208086 (n + 1)

end

end A208087.P8234314849387391565

noncomputable section

/-- A208087: Number of 6 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

Offset 1, canonical program `A208087.P8234314849387391565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A208087 (n : ℕ) : ℤ :=
  A208087.P8234314849387391565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A208087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208119.P18306426128629227262

`A138495(n+4)²`
-/

namespace A208119.P18306426128629227262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (n + 4) ^ 2

end

end A208119.P18306426128629227262

noncomputable section

/-- A208119: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208119.P18306426128629227262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A208119 (n : ℕ) : ℤ :=
  A208119.P18306426128629227262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A208119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208144.P897647981440989581

`A027800(A008619(n))*A027800(A110654(n))`
-/

namespace A208144.P897647981440989581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 (A008619 n).toNat * A027800 (A110654 n).toNat

end

end A208144.P897647981440989581

noncomputable section

/-- A208144: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A208144.P897647981440989581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208144 (n : ℕ) : ℤ :=
  A208144.P897647981440989581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208146.P17569854038189943159

`A027818(A008619(n))*A027818(A110654(n))`
-/

namespace A208146.P17569854038189943159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 (A008619 n).toNat * A027818 (A110654 n).toNat

end

end A208146.P17569854038189943159

noncomputable section

/-- A208146: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A208146.P17569854038189943159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208146 (n : ℕ) : ℤ :=
  A208146.P17569854038189943159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208251.P10196813765732907531

`∑[A000007(A054008(n+1))]`
-/

namespace A208251.P10196813765732907531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054008 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P10196813765732907531

noncomputable section

/-- A208251: Number of refactorable numbers less than or equal to n.

Offset 1, canonical program `A208251.P10196813765732907531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208251 (n : ℕ) : ℤ :=
  A208251.P10196813765732907531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208296.P13607806792442396004

`A249916(p?[2*n+5])`
-/

namespace A208296.P13607806792442396004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A208296.P13607806792442396004

noncomputable section

/-- A208296: Smallest positive nontrivial odd solution of the congruence x^2 == 1 (mod A001748(n+2)), n >= 1.

Offset 1, canonical program `A208296.P13607806792442396004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208296 (n : ℕ) : ℤ :=
  A208296.P13607806792442396004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208326.P11922390768727645525

`A005206(n)+A004920(n+1)`
-/

namespace A208326.P11922390768727645525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + A004920 (n + 1)

end

end A208326.P11922390768727645525

noncomputable section

/-- A208326: n + [nr/t] + [ns/t], where []=floor, r=5, s=(1+sqrt(5))/2, t=1/s.

Offset 1, canonical program `A208326.P11922390768727645525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208326 (n : ℕ) : ℤ :=
  A208326.P11922390768727645525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208327.P4465603911308166971

`A014681(A185392(n+1))`
-/

namespace A208327.P4465603911308166971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A185392 (n + 1)).toNat

end

end A208327.P4465603911308166971

noncomputable section

/-- A208327: Position of f(n) when the numbers f(j) and g(k) are jointly ranked, where f(j)=j + |cos j | and g(k)=k + |sin k|.

Offset 1, canonical program `A208327.P4465603911308166971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208327 (n : ℕ) : ℤ :=
  A208327.P4465603911308166971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208354.P2789889032872413544

`a(n-1)+A000045(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A208354.P2789889032872413544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A000045 (n - 2) + a (n - 2))

end

end A208354.P2789889032872413544

noncomputable section

/-- A208354: Number of compositions of n with at most one even part.

Offset 0, canonical program `A208354.P2789889032872413544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A208354 (n : ℕ) : ℤ :=
  A208354.P2789889032872413544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A208354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208375.P8810107549542680136

`10*(A033537(n)+A008486(n))`
-/

namespace A208375.P8810107549542680136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A033537 n + A008486 n)

end

end A208375.P8810107549542680136

noncomputable section

/-- A208375: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A208375.P8810107549542680136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208375 (n : ℕ) : ℤ :=
  A208375.P8810107549542680136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208376.P1036309167228574095

`16*(A033580(n)+A022144(n))`
-/

namespace A208376.P1036309167228574095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A033580 n + A022144 n)

end

end A208376.P1036309167228574095

noncomputable section

/-- A208376: Number of n X 5 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A208376.P1036309167228574095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208376 (n : ℕ) : ℤ :=
  A208376.P1036309167228574095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208377.P8421643164173758022

`26*(record[xor(1, n)*xor(2, n)]-A005893(n))`
-/

namespace A208377.P8421643164173758022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A005893 n)

end

end A208377.P8421643164173758022

noncomputable section

/-- A208377: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A208377.P8421643164173758022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208377 (n : ℕ) : ℤ :=
  A208377.P8421643164173758022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208393.P11557354444144396826

`ceil(3/2*A254657(n))`
-/

namespace A208393.P11557354444144396826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A254657 n : ℚ)⌉

end

end A208393.P11557354444144396826

noncomputable section

/-- A208393: Number of 2 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

Offset 1, canonical program `A208393.P11557354444144396826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A208393 (n : ℕ) : ℤ :=
  A208393.P11557354444144396826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A208393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208537.P2411920523292556856

`6*A030180(n)`
-/

namespace A208537.P2411920523292556856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A030180 n

end

end A208537.P2411920523292556856

noncomputable section

/-- A208537: Number of 7-bead necklaces of n colors not allowing reversal, with no adjacent beads having the same color.

Offset 1, canonical program `A208537.P2411920523292556856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208537 (n : ℕ) : ℤ :=
  A208537.P2411920523292556856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208551.P8544895162570105866

`A081437(floor(n/2)+1)*A081437(A110654(n))`
-/

namespace A208551.P8544895162570105866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 (⌊(n : ℚ) / 2⌋ + 1).toNat * A081437 (A110654 n).toNat

end

end A208551.P8544895162570105866

noncomputable section

/-- A208551: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208551.P8544895162570105866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208551 (n : ℕ) : ℤ :=
  A208551.P8544895162570105866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208552.P1317976317445560117

`A100176(A008619(n+1))*A100176(A008619(n)+1)`
-/

namespace A208552.P1317976317445560117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100176 (A008619 (n + 1)).toNat * A100176 (A008619 n + 1).toNat

end

end A208552.P1317976317445560117

noncomputable section

/-- A208552: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208552.P1317976317445560117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208552 (n : ℕ) : ℤ :=
  A208552.P1317976317445560117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208599.P12743837169727898204

`ceil(A083669(n+1)/5)`
-/

namespace A208599.P12743837169727898204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083669 (n + 1) : ℚ) / 5⌉

end

end A208599.P12743837169727898204

noncomputable section

/-- A208599: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero.

Offset 1, canonical program `A208599.P12743837169727898204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208599 (n : ℕ) : ℤ :=
  A208599.P12743837169727898204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209116.P3351996664689731237

`A208946(n+1)-∑[and(2, n%3)]`
-/

namespace A209116.P3351996664689731237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A209116.P3351996664689731237

noncomputable section

/-- A209116: Number of 4-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

Offset 1, canonical program `A209116.P3351996664689731237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209116 (n : ℕ) : ℤ :=
  A209116.P3351996664689731237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209230.P7984411256712672077

`Δ[floor(A100132(n)/2)]`
-/

namespace A209230.P7984411256712672077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100132 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209230.P7984411256712672077

noncomputable section

/-- A209230: Number of set partitions of [n] that avoid 1231 and 1121.

Offset 0, canonical program `A209230.P7984411256712672077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A209230 (n : ℕ) : ℤ :=
  A209230.P7984411256712672077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A209230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209301.P14437856871989843362

`A053615(n)+2-A118175(n)`
-/

namespace A209301.P14437856871989843362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + (2 - A118175 n)

end

end A209301.P14437856871989843362

noncomputable section

/-- A209301: Table T(n,k) n, k > 0, T(n,k)=n-k+1, if n>=k, T(n,k)=k-n+2, if n < k. Table read by sides of squares from T(1,n) to T(n,n), then from T(n,n) to T(n,1).

Offset 1, canonical program `A209301.P14437856871989843362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209301 (n : ℕ) : ℤ :=
  A209301.P14437856871989843362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209302.P16164252374650155125

`∑[1-2*A023969(n)]`
-/

namespace A209302.P16164252374650155125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209302.P16164252374650155125

noncomputable section

/-- A209302: Table T(n,k) = max{n+k-1, n+k-1} n, k > 0, read by sides of squares from T(1,n) to T(n,n), then from T(n,n) to T(n,1).

Offset 1, canonical program `A209302.P16164252374650155125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209302 (n : ℕ) : ℤ :=
  A209302.P16164252374650155125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209445.P14006898795704528035

`∑{d}[n+1, A000129((n+1)*#%2)]`
-/

namespace A209445.P14006898795704528035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 ((n + 1) * (d % 2))

end

end A209445.P14006898795704528035

noncomputable section

/-- A209445: a(n) = Pell(n)*A001227(n) for n >= 1, where A001227(n) is the number of odd divisors of n.

Offset 1, canonical program `A209445.P14006898795704528035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A209445 (n : ℕ) : ℤ :=
  A209445.P14006898795704528035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A209445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209531.P7059025710424165999

`A029744(5*(n+2))+1`
-/

namespace A209531.P7059025710424165999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (5 * (n + 2)) + 1

end

end A209531.P7059025710424165999

noncomputable section

/-- A209531: Half the number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

Offset 1, canonical program `A209531.P7059025710424165999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A209531 (n : ℕ) : ℤ :=
  A209531.P7059025710424165999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A209531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209546.P6236227493662315964

`A184189(n+1)+1`
-/

namespace A209546.P6236227493662315964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184189 (n + 1) + 1

end

end A209546.P6236227493662315964

noncomputable section

/-- A209546: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having exactly two distinct clockwise edge differences.

Offset 1, canonical program `A209546.P6236227493662315964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A209546 (n : ℕ) : ℤ :=
  A209546.P6236227493662315964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A209546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209596.P326114067510044642

`(n+2)^13*A016756(n+1)`
-/

namespace A209596.P326114067510044642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 13 : ℤ) * A016756 (n + 1)

end

end A209596.P326114067510044642

noncomputable section

/-- A209596: Number of 5X5 0..n arrays with every element equal to a diagonal or antidiagonal reflection.

Offset 1, canonical program `A209596.P326114067510044642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209596 (n : ℕ) : ℤ :=
  A209596.P326114067510044642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209615.P8843447964390947707

`2*A106665(n)-1`
-/

namespace A209615.P8843447964390947707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106665 n - 1

end

end A209615.P8843447964390947707

noncomputable section

/-- A209615: Completely multiplicative with a(p^e) = 1 if p == 1 (mod 4), a(p^e) = (-1)^e otherwise.

Offset 1, canonical program `A209615.P8843447964390947707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209615 (n : ℕ) : ℤ :=
  A209615.P8843447964390947707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209639.P14677286529692214251

`A004524(n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` with `a(0)=1`
-/

namespace A209639.P14677286529692214251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004524 (((n % 2 : ℕ) : ℤ) + ((3 - (-1) ^ n) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n))).toNat

end

end A209639.P14677286529692214251

noncomputable section

/-- A209639: Bisection of A209859.

Offset 0, canonical program `A209639.P14677286529692214251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A209639 (n : ℕ) : ℤ :=
  A209639.P14677286529692214251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A209639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209647.P12943074749366819267

`14*(6*A005582(n)+n+1)`
-/

namespace A209647.P12943074749366819267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (6 * A005582 n + (n + 1 : ℤ))

end

end A209647.P12943074749366819267

noncomputable section

/-- A209647: Number of n X 5 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A209647.P12943074749366819267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209647 (n : ℕ) : ℤ :=
  A209647.P12943074749366819267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209648.P2682337550862870673

`∑[(A001844(n)+2*n)*11*(4*n+2)]`
-/

namespace A209648.P2682337550862870673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 n + (2 * n : ℤ)) * (11 * (4 * n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209648.P2682337550862870673

noncomputable section

/-- A209648: Number of n X 6 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

Offset 1, canonical program `A209648.P2682337550862870673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209648 (n : ℕ) : ℤ :=
  A209648.P2682337550862870673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209685.P316227035087521433

`A010879(n)+A010879(A059995(n))`
-/

namespace A209685.P316227035087521433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + A010879 (A059995 n).toNat

end

end A209685.P316227035087521433

noncomputable section

/-- A209685: Sum of last two digits of n.

Offset 0, canonical program `A209685.P316227035087521433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209685 (n : ℕ) : ℤ :=
  A209685.P316227035087521433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209901.P4568091037261450195

`A016169(A000040(n+1))-2`
-/

namespace A209901.P4568091037261450195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016169 (A000040 (n + 1)).toNat - 2

end

end A209901.P4568091037261450195

noncomputable section

/-- A209901: 7^p - 6^p - 2 with p = prime(n).

Offset 1, canonical program `A209901.P4568091037261450195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209901 (n : ℕ) : ℤ :=
  A209901.P4568091037261450195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209938.P2233423185230258877

`A108245(n+3)%6+3`
-/

namespace A209938.P2233423185230258877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108245 (n + 3)) 6 + 3

end

end A209938.P2233423185230258877

noncomputable section

/-- A209938: Number of groups of order prime(n)^5 with nontrivial unramified Brauer groups.

Offset 3, canonical program `A209938.P2233423185230258877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A209938 (n : ℕ) : ℤ :=
  A209938.P2233423185230258877.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A209938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210032.P11148988425945671977

`1+A158411(n)`
-/

namespace A210032.P11148988425945671977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A158411 n

end

end A210032.P11148988425945671977

noncomputable section

/-- A210032: a(n)=n for n=1,2,3 and 4; a(n)=5 for n >= 5.

Offset 1, canonical program `A210032.P11148988425945671977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210032 (n : ℕ) : ℤ :=
  A210032.P11148988425945671977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210054.P10732365589404489648

`A094286(2*(n+2))`
-/

namespace A210054.P10732365589404489648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094286 (2 * (n + 2))

end

end A210054.P10732365589404489648

noncomputable section

/-- A210054: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

Offset 1, canonical program `A210054.P10732365589404489648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210054 (n : ℕ) : ℤ :=
  A210054.P10732365589404489648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210112.P12265869878700565938

`floor(A055775(n+2)/A000217(n+1))`
-/

namespace A210112.P12265869878700565938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055775 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A210112.P12265869878700565938

noncomputable section

/-- A210112: Floor of the expected value of number of trials until exactly one cell is empty in a random distribution of n balls in n cells.

Offset 2, canonical program `A210112.P12265869878700565938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A210112 (n : ℕ) : ℤ :=
  A210112.P12265869878700565938.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A210112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210167.P12712980395571066904

`A210118(n+1)-A209890(n+1)`
-/

namespace A210167.P12712980395571066904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210118 (n + 1) - A209890 (n + 1)

end

end A210167.P12712980395571066904

noncomputable section

/-- A210167: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

Offset 1, canonical program `A210167.P12712980395571066904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A210167 (n : ℕ) : ℤ :=
  A210167.P12712980395571066904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A210167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210369.P2119082031624037123

`A014255(n)²+A110654(n)²²`
-/

namespace A210369.P2119082031624037123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n ^ 2 + (A110654 n ^ 2) ^ 2

end

end A210369.P2119082031624037123

noncomputable section

/-- A210369: Number of 2 X 2 matrices with all terms in {0,1,...,n} and even determinant.

Offset 0, canonical program `A210369.P2119082031624037123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210369 (n : ℕ) : ℤ :=
  A210369.P2119082031624037123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210434.P2865302785751446395

`∑[char[floor((A067497(n)+1)/2)]]`
-/

namespace A210434.P2865302785751446395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067497 n + 1 : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210434.P2865302785751446395

noncomputable section

/-- A210434: Number of digits in 4^n.

Offset 0, canonical program `A210434.P2865302785751446395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210434 (n : ℕ) : ℤ :=
  (A210434.P2865302785751446395.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210436.P6534242684051334087

`∑[2-A131534(∑[ceil(n/3)])]`
-/

namespace A210436.P6534242684051334087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131534 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P6534242684051334087

noncomputable section

/-- A210436: Number of digits in 6^n.

Offset 0, canonical program `A210436.P6534242684051334087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A210436 (n : ℕ) : ℤ :=
  A210436.P6534242684051334087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A210436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210460.P2253434950895115909

`A363958(Δ[n²])`
-/

namespace A210460.P2253434950895115909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363958 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210460.P2253434950895115909

noncomputable section

/-- A210460: Expansion of x*(1+x)/(1-x-2*x^2-2*x^3-x^4).

Offset 1, canonical program `A210460.P2253434950895115909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A210460 (n : ℕ) : ℤ :=
  A210460.P2253434950895115909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A210460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210521.P9001767955616639743

`A005408(n)-A266440(A003056(n))`
-/

namespace A210521.P9001767955616639743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A266440 (A003056 n).toNat

end

end A210521.P9001767955616639743

noncomputable section

/-- A210521: Array read by downward antidiagonals: T(n,k) = (n+k-1)*(n+k-2) + n + floor((n+k)/2)*(1-2*floor((n+k)/2)), for n, k > 0.

Offset 1, canonical program `A210521.P9001767955616639743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210521 (n : ℕ) : ℤ :=
  A210521.P9001767955616639743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210522.P1764428426793375343

`A018072(4*n+3)%10`
-/

namespace A210522.P1764428426793375343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018072 (4 * n + 3)) 10

end

end A210522.P1764428426793375343

noncomputable section

/-- A210522: Decimal expansion of 10^(3/4).

Offset 1, canonical program `A210522.P1764428426793375343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A210522 (n : ℕ) : ℤ :=
  A210522.P1764428426793375343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A210522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210736.P1250447749793702526

`A001405(abs(1-n))`
-/

namespace A210736.P1250447749793702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 |1 - (n : ℤ)|.toNat

end

end A210736.P1250447749793702526

noncomputable section

/-- A210736: Expansion of (1 + sqrt( (1 + 2*x) / (1 - 2*x))) / 2 in powers of x.

Offset 0, canonical program `A210736.P1250447749793702526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A210736 (n : ℕ) : ℤ :=
  A210736.P1250447749793702526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A210736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210758.P479195184108449843

`p?[A004151(n+99)]`
-/

namespace A210758.P479195184108449843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 99)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210758.P479195184108449843

noncomputable section

/-- A210758: Primes less than 1000 sorted lexicographically in decimal representation.

Offset 1, canonical program `A210758.P479195184108449843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A210758 (n : ℕ) : ℤ :=
  A210758.P479195184108449843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A210758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210999.P457972312276480137

`filter[A005451(n+1), A131378(#)]`
-/

namespace A210999.P457972312276480137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P457972312276480137

noncomputable section

/-- A210999: Composite numbers that are in the gap between an odd-indexed prime and an even-indexed prime.

Offset 1, canonical program `A210999.P457972312276480137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210999 (n : ℕ) : ℤ :=
  A210999.P457972312276480137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211064.P13014287104965376940

`A212893(n)+A210370(n)`
-/

namespace A211064.P13014287104965376940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n + A210370 n

end

end A211064.P13014287104965376940

noncomputable section

/-- A211064: Number of 2 X 2 matrices having all terms in {1,...,n} and even determinant.

Offset 1, canonical program `A211064.P13014287104965376940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211064 (n : ℕ) : ℤ :=
  A211064.P13014287104965376940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211068.P11930798809199669660

`A211065(n+1)/2`
-/

namespace A211068.P11930798809199669660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211065 (n + 1) : ℚ) / 2

end

end A211068.P11930798809199669660

noncomputable section

/-- A211068: Number of 2 X 2 matrices having all terms in {1,...,n} and positive odd determinant.

Offset 1, canonical program `A211068.P11930798809199669660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A211068.P11930798809199669660.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211154.P10033703333360363186

`(2*n+1)²²-A211155(n)`
-/

namespace A211154.P10033703333360363186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2) ^ 2 : ℤ) - A211155 n

end

end A211154.P10033703333360363186

noncomputable section

/-- A211154: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and even determinant.

Offset 0, canonical program `A211154.P10033703333360363186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211154 (n : ℕ) : ℤ :=
  A211154.P10033703333360363186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211158.P13465480893837456583

`∑[A008574(n+1)]*A036498(n+2)`
-/

namespace A211158.P13465480893837456583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A036498 (n + 2)

end

end A211158.P13465480893837456583

noncomputable section

/-- A211158: Number of 2 X 2 matrices having all terms in {-n,...,0,..,n} and positive odd determinant.

Offset 1, canonical program `A211158.P13465480893837456583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A211158 (n : ℕ) : ℤ :=
  A211158.P13465480893837456583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A211158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211159.P13436548848108563631

`A200213(n+2)/2`
-/

namespace A211159.P13436548848108563631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200213 (n + 2) : ℚ) / 2

end

end A211159.P13436548848108563631

noncomputable section

/-- A211159: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211159.P13436548848108563631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A211159.P13436548848108563631.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211216.P7015302740571336049

`2*A224514(n)-A216710(n)`
-/

namespace A211216.P7015302740571336049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224514 n - A216710 n

end

end A211216.P7015302740571336049

noncomputable section

/-- A211216: Expansion of (1-8*x+21*x^2-20*x^3+5*x^4)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

Offset 0, canonical program `A211216.P7015302740571336049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A211216 (n : ℕ) : ℤ :=
  A211216.P7015302740571336049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A211216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211278.P4317320324057331909

`∑[A383527(n)]`
-/

namespace A211278.P4317320324057331909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211278.P4317320324057331909

noncomputable section

/-- A211278: a(n) is the number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1] as of [2, 3].

Offset 0, canonical program `A211278.P4317320324057331909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A211278 (n : ℕ) : ℤ :=
  A211278.P4317320324057331909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A211278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211288.P15666308228399164925

`A002426(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A211288.P15666308228399164925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002426 n + 2 * a (n - 1)

end

end A211288.P15666308228399164925

noncomputable section

/-- A211288: a(n) = number of n-lettered words in the alphabet {1, 2, 3} with as many occurrences of the substring (consecutive subword) [1, 1, 2] as of [1, 1, 3].

Offset 0, canonical program `A211288.P15666308228399164925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A211288 (n : ℕ) : ℤ :=
  A211288.P15666308228399164925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A211288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211323.P2379812421555598708

`A211322(n+1)+∑[a(n-1)+a(n-1)]` with `a(0)=3`
-/

namespace A211323.P2379812421555598708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211322 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211323.P2379812421555598708

noncomputable section

/-- A211323: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and three distinct values.

Offset 1, canonical program `A211323.P2379812421555598708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A211323 (n : ℕ) : ℤ :=
  A211323.P2379812421555598708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A211323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211380.P10347912893481084075

`A176145(n+3)-A211379(n+3)`
-/

namespace A211380.P10347912893481084075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) - A211379 (n + 3)

end

end A211380.P10347912893481084075

noncomputable section

/-- A211380: Number of pairs of intersecting diagonals in the interior and exterior of a regular n-gon.

Offset 3, canonical program `A211380.P10347912893481084075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211380 (n : ℕ) : ℤ :=
  A211380.P10347912893481084075.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211422.P3375844337516987615

`A017077(∑[A064727(A008574(n))])`
-/

namespace A211422.P3375844337516987615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P3375844337516987615

noncomputable section

/-- A211422: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + x*y = 0.

Offset 0, canonical program `A211422.P3375844337516987615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A211422 (n : ℕ) : ℤ :=
  A211422.P3375844337516987615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A211422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211436.P6099652789672682729

`A194275(n)+A000982(A028242(n))`
-/

namespace A211436.P6099652789672682729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n + A000982 (A028242 n).toNat

end

end A211436.P6099652789672682729

noncomputable section

/-- A211436: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and 2w+3x+4y=0.

Offset 0, canonical program `A211436.P6099652789672682729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 579 terms. -/
def A211436 (n : ℕ) : ℤ :=
  A211436.P6099652789672682729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 579 terms. -/
def A211436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211437.P3946924361183422050

`A103517(∑{d}[n, A131089(#)])`
-/

namespace A211437.P3946924361183422050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (∑ d ∈ Nat.divisors (f1 n), A131089 d).toNat

end

end A211437.P3946924361183422050

noncomputable section

/-- A211437: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w*x*y=n.

Offset 0, canonical program `A211437.P3946924361183422050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A211437 (n : ℕ) : ℤ :=
  A211437.P3946924361183422050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A211437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211438.P11166465702707779407

`or(1, 2*A118277(n))`
-/

namespace A211438.P11166465702707779407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A118277 n)

end

end A211438.P11166465702707779407

noncomputable section

/-- A211438: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w+2x+2y=0.

Offset 0, canonical program `A211438.P11166465702707779407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A211438 (n : ℕ) : ℤ :=
  A211438.P11166465702707779407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A211438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211479.P11464434019036712485

`A175658(n+2)-2^(n+1)`
-/

namespace A211479.P11464434019036712485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A211479.P11464434019036712485

noncomputable section

/-- A211479: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having two, three or four distinct values for every i<=n and j<=n.

Offset 1, canonical program `A211479.P11464434019036712485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211479 (n : ℕ) : ℤ :=
  A211479.P11464434019036712485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211483.P4718632316147835224

`A022554(2*n)+Δ[n²]`
-/

namespace A211483.P4718632316147835224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (2 * n) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A211483.P4718632316147835224

noncomputable section

/-- A211483: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and (w+n)^2=x+y.

Offset 0, canonical program `A211483.P4718632316147835224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. -/
def A211483 (n : ℕ) : ℤ :=
  A211483.P4718632316147835224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. -/
def A211483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211516.P14176206433691756358

`A022554(2*n)-2*A022554(n)`
-/

namespace A211516.P14176206433691756358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (2 * n) - 2 * A022554 n

end

end A211516.P14176206433691756358

noncomputable section

/-- A211516: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2=x+y.

Offset 0, canonical program `A211516.P14176206433691756358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A211516 (n : ℕ) : ℤ :=
  A211516.P14176206433691756358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A211516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211520.P1575783996224756379

`∑[n-A226107(n+1)]-n`
-/

namespace A211520.P1575783996224756379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A226107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211520.P1575783996224756379

noncomputable section

/-- A211520: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w + 4y = 2x.

Offset 0, canonical program `A211520.P1575783996224756379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211520 (n : ℕ) : ℤ :=
  A211520.P1575783996224756379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211525.P1490740995944717665

`A183978(n+3)-1`
-/

namespace A211525.P1490740995944717665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 3) - 1

end

end A211525.P1490740995944717665

noncomputable section

/-- A211525: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two or four distinct values for every i,j,k<=n.

Offset 1, canonical program `A211525.P1490740995944717665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211525 (n : ℕ) : ℤ :=
  A211525.P1490740995944717665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211526.P11396501206578348479

`A095121(n+1)+A061776(n+2)`
-/

namespace A211526.P11396501206578348479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + A061776 (n + 2)

end

end A211526.P11396501206578348479

noncomputable section

/-- A211526: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or five distinct values for every i,j,k<=n.

Offset 1, canonical program `A211526.P11396501206578348479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211526 (n : ℕ) : ℤ :=
  A211526.P11396501206578348479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211533.P6081768175336036254

`A001840(n)+Δ[A011858(n)]-n`
-/

namespace A211533.P6081768175336036254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + (f1 (n + 1) - f1 n - (n : ℤ))

end

end A211533.P6081768175336036254

noncomputable section

/-- A211533: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w=3x-5y.

Offset 0, canonical program `A211533.P6081768175336036254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211533 (n : ℕ) : ℤ :=
  A211533.P6081768175336036254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211541.P6364008902973407762

`A211521(n)-A069905(n)`
-/

namespace A211541.P6364008902973407762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 n - A069905 n

end

end A211541.P6364008902973407762

noncomputable section

/-- A211541: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=3x-4y.

Offset 0, canonical program `A211541.P6364008902973407762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211541 (n : ℕ) : ℤ :=
  A211541.P6364008902973407762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211544.P17142035383738019160

`∑[A047560(n+1)%A042968(n+1)]`
-/

namespace A211544.P17142035383738019160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047560 (n + 1)) (A042968 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211544.P17142035383738019160

noncomputable section

/-- A211544: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=3x-5y.

Offset 0, canonical program `A211544.P17142035383738019160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211544 (n : ℕ) : ℤ :=
  A211544.P17142035383738019160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211628.P10410439621426040313

`A211621(n)+A110654(n)`
-/

namespace A211628.P10410439621426040313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211621 n + A110654 n

end

end A211628.P10410439621426040313

noncomputable section

/-- A211628: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and 3w+x+y>0.

Offset 0, canonical program `A211628.P10410439621426040313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211628 (n : ℕ) : ℤ :=
  A211628.P10410439621426040313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211773.P11947353139444891531

`∑[A023479(n)+n]+A023478(n)²`
-/

namespace A211773.P11947353139444891531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023479 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023478 n ^ 2

end

end A211773.P11947353139444891531

noncomputable section

/-- A211773: Prime-generating polynomial: a(n) = 2*n^2 - 108*n + 1259.

Offset 0, canonical program `A211773.P11947353139444891531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211773 (n : ℕ) : ℤ :=
  A211773.P11947353139444891531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211838.P8340850666101725983

`A001297(n+3)+A002817(n+3)+A000292(n+5)`
-/

namespace A211838.P8340850666101725983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 (n + 3) + (A002817 (n + 3) + A000292 (n + 5))

end

end A211838.P8340850666101725983

noncomputable section

/-- A211838: Number of nonnegative integer arrays of length n+5 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value n+1.

Offset 1, canonical program `A211838.P8340850666101725983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A211838 (n : ℕ) : ℤ :=
  A211838.P8340850666101725983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A211838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211872.P2233114170905546091

`∑[A000217(∏{e}[n+1, #+1])*A101605(n+1)]`
-/

namespace A211872.P2233114170905546091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) * A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211872.P2233114170905546091

noncomputable section

/-- A211872: For each triprime (A014612) less than or equal to n, sum the positive integers less than or equal to the number of divisors of the triprime.

Offset 1, canonical program `A211872.P2233114170905546091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211872 (n : ℕ) : ℤ :=
  A211872.P2233114170905546091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211995.P18341842710887128832

`A094970(n)%(2^n)`
-/

namespace A211995.P18341842710887128832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094970 n) (2 ^ n : ℤ)

end

end A211995.P18341842710887128832

noncomputable section

/-- A211995: a(n) = floor(7^n / 2^n) mod 2^n.

Offset 0, canonical program `A211995.P18341842710887128832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A211995 (n : ℕ) : ℤ :=
  A211995.P18341842710887128832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A211995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211996.P16059164976447169302

`∑{d}[n+1, A010052((n+1)/#+#)]`
-/

namespace A211996.P16059164976447169302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat

end

end A211996.P16059164976447169302

noncomputable section

/-- A211996: Number of ordered pairs (i,j) such that i*j=n and i+j is a square.

Offset 1, canonical program `A211996.P16059164976447169302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A211996 (n : ℕ) : ℤ :=
  A211996.P16059164976447169302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A211996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212060.P8765471735473838760

`A007425(n+2)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A212060.P8765471735473838760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  A007425 (n + 2) + a (n - 1)

end

end A212060.P8765471735473838760

noncomputable section

/-- A212060: Number of (w,x,y,z) with all terms in {1,...,n} and w=x*y*z-2.

Offset 0, canonical program `A212060.P8765471735473838760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212060 (n : ℕ) : ℤ :=
  A212060.P8765471735473838760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212257.P12934607272291784643

`A230074(n+1)+∑[A212960(n)]`
-/

namespace A212257.P12934607272291784643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212257.P12934607272291784643

noncomputable section

/-- A212257: Number of (v,w,x,y,z) with all terms in {0,1,...,n} and v=average(w,x,y,z).

Offset 0, canonical program `A212257.P12934607272291784643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212257 (n : ℕ) : ℤ :=
  A212257.P12934607272291784643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212272.P10461449749987544172

`n^3+A000045(n)`
-/

namespace A212272.P10461449749987544172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + A000045 n

end

end A212272.P10461449749987544172

noncomputable section

/-- A212272: a(n) = Fibonacci(n) + n^3.

Offset 0, canonical program `A212272.P10461449749987544172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A212272 (n : ℕ) : ℤ :=
  A212272.P10461449749987544172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A212272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212307.P15860954367604951489

`A000142(n)/A060828(n)`
-/

namespace A212307.P15860954367604951489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A060828 n : ℚ)

end

end A212307.P15860954367604951489

noncomputable section

/-- A212307: Numerator of n!/3^n.

Offset 0, canonical program `A212307.P15860954367604951489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A212307.P15860954367604951489.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212323.P14148052127696294858

`3^n-A000045(n)`
-/

namespace A212323.P14148052127696294858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A000045 n

end

end A212323.P14148052127696294858

noncomputable section

/-- A212323: a(n) = 3^n - Fibonacci(n).

Offset 0, canonical program `A212323.P14148052127696294858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A212323 (n : ℕ) : ℤ :=
  A212323.P14148052127696294858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A212323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212403.P8335326655319848486

`4*a(n-1)-A000108(n)` with `a(0)=5`
-/

namespace A212403.P8335326655319848486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) - A000108 n

end

end A212403.P8335326655319848486

noncomputable section

/-- A212403: Number of binary arrays of length 2*n+1 with no more than n ones in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212403.P8335326655319848486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A212403 (n : ℕ) : ℤ :=
  A212403.P8335326655319848486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A212403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212445.P8816650629302892090

`A000195(n+1)+1+n`
-/

namespace A212445.P8816650629302892090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) + 1 + (n : ℤ)

end

end A212445.P8816650629302892090

noncomputable section

/-- A212445: a(n) = floor( n + log(n) ).

Offset 1, canonical program `A212445.P8816650629302892090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212445 (n : ℕ) : ℤ :=
  A212445.P8816650629302892090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212448.P6192098966990214422

`A212446(2*(n+1))`
-/

namespace A212448.P6192098966990214422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212446 (2 * (n + 1))

end

end A212448.P6192098966990214422

noncomputable section

/-- A212448: Floor(4n + log(4n)).

Offset 1, canonical program `A212448.P6192098966990214422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A212448 (n : ℕ) : ℤ :=
  A212448.P6192098966990214422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A212448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212451.P17951170727321837431

`(A212446(n+1)+1)%∑[n+24]`
-/

namespace A212451.P17951170727321837431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212446 (n + 1) + 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212451.P17951170727321837431

noncomputable section

/-- A212451: Ceiling(2n + log(2n)).

Offset 1, canonical program `A212451.P17951170727321837431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212451 (n : ℕ) : ℤ :=
  A212451.P17951170727321837431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212452.P15869866917005079232

`A212447(n+1)+1`
-/

namespace A212452.P15869866917005079232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212447 (n + 1) + 1

end

end A212452.P15869866917005079232

noncomputable section

/-- A212452: Ceiling(3n + log(3n)).

Offset 1, canonical program `A212452.P15869866917005079232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212452 (n : ℕ) : ℤ :=
  A212452.P15869866917005079232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212454.P8652161716271463981

`ceil(A008587(n+1)+log(A008587(n+1)))`
-/

namespace A212454.P8652161716271463981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008587 (n + 1) : ℝ) + Real.log (A008587 (n + 1) : ℝ)⌉

end

end A212454.P8652161716271463981

noncomputable section

/-- A212454: Ceiling(5n + log(5n)).

Offset 1, canonical program `A212454.P8652161716271463981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212454 (n : ℕ) : ℤ :=
  A212454.P8652161716271463981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212457.P13505284369150068571

`A212455(2*(n+1))`
-/

namespace A212457.P13505284369150068571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (2 * (n + 1))

end

end A212457.P13505284369150068571

noncomputable section

/-- A212457: a(n) = floor(4n*log(4n)).

Offset 1, canonical program `A212457.P13505284369150068571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A212457 (n : ℕ) : ℤ :=
  A212457.P13505284369150068571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A212457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212459.P15152110680736874365

`A212455(n+1)+1`
-/

namespace A212459.P15152110680736874365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1) + 1

end

end A212459.P15152110680736874365

noncomputable section

/-- A212459: a(n) = ceiling(2n*log(2n)).

Offset 1, canonical program `A212459.P15152110680736874365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212459 (n : ℕ) : ℤ :=
  A212459.P15152110680736874365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212460.P15144579946911291460

`A000027(A212456(n+1)+1)`
-/

namespace A212460.P15144579946911291460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A212456 (n + 1) + 1).toNat

end

end A212460.P15144579946911291460

noncomputable section

/-- A212460: a(n) = ceiling(3n*log(3n)).

Offset 1, canonical program `A212460.P15144579946911291460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212460 (n : ℕ) : ℤ :=
  A212460.P15144579946911291460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212462.P16988898249827218375

`ceil(log(A008587(n+1))*A008587(n+1))`
-/

namespace A212462.P16988898249827218375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A008587 (n + 1) : ℝ) * (A008587 (n + 1) : ℝ)⌉

end

end A212462.P16988898249827218375

noncomputable section

/-- A212462: a(n) = ceiling(5n*log(5n)).

Offset 1, canonical program `A212462.P16988898249827218375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212462 (n : ℕ) : ℤ :=
  A212462.P16988898249827218375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212464.P8922990978344617064

`A212463(n+1)-1`
-/

namespace A212464.P8922990978344617064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212463 (n + 1) - 1

end

end A212464.P8922990978344617064

noncomputable section

/-- A212464: a(n) = floor( Pi^(n/3) ).

Offset 1, canonical program `A212464.P8922990978344617064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A212464 (n : ℕ) : ℤ :=
  A212464.P8922990978344617064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A212464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212512.P2827929840228850799

`(A211540(n)+A006578(n))*A006578(n)`
-/

namespace A212512.P2827929840228850799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 n + A006578 n) * A006578 n

end

end A212512.P2827929840228850799

noncomputable section

/-- A212512: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y

Offset 0, canonical program `A212512.P2827929840228850799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512 (n : ℕ) : ℤ :=
  A212512.P2827929840228850799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212513.P9978081440259541698

`A006578(n)*A397972(n)`
-/

namespace A212513.P9978081440259541698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A397972 n

end

end A212513.P9978081440259541698

noncomputable section

/-- A212513: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y<=3z.

Offset 0, canonical program `A212513.P9978081440259541698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212513 (n : ℕ) : ℤ :=
  A212513.P9978081440259541698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212514.P3714945399054877261

`(A001840(n)-n)*A006578(n)`
-/

namespace A212514.P3714945399054877261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A006578 n

end

end A212514.P3714945399054877261

noncomputable section

/-- A212514: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y>3z.

Offset 0, canonical program `A212514.P3714945399054877261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514 (n : ℕ) : ℤ :=
  A212514.P3714945399054877261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212516.P2497087682161663960

`A212515(n)+n²*A211540(n)`
-/

namespace A212516.P2497087682161663960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212515 n + (n ^ 2 : ℤ) * A211540 n

end

end A212516.P2497087682161663960

noncomputable section

/-- A212516: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y

Offset 0, canonical program `A212516.P2497087682161663960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212516 (n : ℕ) : ℤ :=
  A212516.P2497087682161663960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212517.P9130843482353071563

`(n²-A006578(n))*A397972(n)`
-/

namespace A212517.P9130843482353071563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A006578 n) * A397972 n

end

end A212517.P9130843482353071563

noncomputable section

/-- A212517: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y<=3z.

Offset 0, canonical program `A212517.P9130843482353071563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517 (n : ℕ) : ℤ :=
  A212517.P9130843482353071563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212518.P17660951834491083763

`(A001840(n)-n)*∑[A140106(n+1)]`
-/

namespace A212518.P17660951834491083763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212518.P17660951834491083763

noncomputable section

/-- A212518: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>3z.

Offset 0, canonical program `A212518.P17660951834491083763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518 (n : ℕ) : ℤ :=
  A212518.P17660951834491083763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212519.P16552761711127633602

`∑[A140106(n+1)]*∑[A002264(n)]`
-/

namespace A212519.P16552761711127633602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212519.P16552761711127633602

noncomputable section

/-- A212519: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>=3z.

Offset 0, canonical program `A212519.P16552761711127633602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519 (n : ℕ) : ℤ :=
  A212519.P16552761711127633602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212520.P3269239495127639660

`(n²-∑[A002264(n)])*A002620(n)`
-/

namespace A212520.P3269239495127639660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * A002620 n

end

end A212520.P3269239495127639660

noncomputable section

/-- A212520: Number of (w,x,y,z) with all terms in {1,...,n} and w>=2x and y

Offset 0, canonical program `A212520.P3269239495127639660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212520 (n : ℕ) : ℤ :=
  A212520.P3269239495127639660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212522.P318812473851255918

`(∑[ceil(n/3)-1]+1)*A002620(n)`
-/

namespace A212522.P318812473851255918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A002620 n

end

end A212522.P318812473851255918

noncomputable section

/-- A212522: Number of (w,x,y,z) with all terms in {1,...,n} and w>=2x and y>3z.

Offset 0, canonical program `A212522.P318812473851255918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212522 (n : ℕ) : ℤ :=
  A212522.P318812473851255918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212565.P5070263067435568383

`∑[A212969(n)-C(n, 2)]`
-/

namespace A212565.P5070263067435568383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212969 n - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212565.P5070263067435568383

noncomputable section

/-- A212565: Number of (w,x,y,z) with all terms in {1,...,n} and w+x>=2y+2z.

Offset 0, canonical program `A212565.P5070263067435568383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212565 (n : ℕ) : ℤ :=
  A212565.P5070263067435568383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212566.P3077984912247403167

`A061263(n)-A007590(A004396(n))`
-/

namespace A212566.P3077984912247403167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061263 n - A007590 (A004396 n).toNat

end

end A212566.P3077984912247403167

noncomputable section

/-- A212566: Number of (w,x,y,z) with all terms in {1,...,n} and w+x=3y+3z.

Offset 0, canonical program `A212566.P3077984912247403167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212566 (n : ℕ) : ℤ :=
  A212566.P3077984912247403167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212574.P17770869569289382826

`∑[A212570(n)]+C(n, 2)`
-/

namespace A212574.P17770869569289382826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℤ)

end

end A212574.P17770869569289382826

noncomputable section

/-- A212574: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|>=|x-y|+|y-z|.

Offset 0, canonical program `A212574.P17770869569289382826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212574 (n : ℕ) : ℤ :=
  A212574.P17770869569289382826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212578.P4747266205791069516

`A006527(n)+∑[2*C(ceil(n/2), 2)]`
-/

namespace A212578.P4747266205791069516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212578.P4747266205791069516

noncomputable section

/-- A212578: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| = 2*|x-y| - |y-z|.

Offset 0, canonical program `A212578.P4747266205791069516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212578 (n : ℕ) : ℤ :=
  A212578.P4747266205791069516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212598.P13917646882631558070

`1-A048764(n+1)+n`
-/

namespace A212598.P13917646882631558070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048764 (n + 1) + (n : ℤ)

end

end A212598.P13917646882631558070

noncomputable section

/-- A212598: a(n) = n - m!, where m is the largest number such that m! <= n.

Offset 1, canonical program `A212598.P13917646882631558070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212598 (n : ℕ) : ℤ :=
  A212598.P13917646882631558070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212688.P5874699807576936125

`A212714(n)+∑[2*A008794(n)]`
-/

namespace A212688.P5874699807576936125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212688.P5874699807576936125

noncomputable section

/-- A212688: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|>=n+|y-z|.

Offset 0, canonical program `A212688.P5874699807576936125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212688 (n : ℕ) : ℤ :=
  A212688.P5874699807576936125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212691.P13624024582917438686

`2*(A129371(n)-n²)`
-/

namespace A212691.P13624024582917438686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A129371 n - (n ^ 2 : ℤ))

end

end A212691.P13624024582917438686

noncomputable section

/-- A212691: Number of (w,x,y,z) with all terms in {1,...,n} and w+|x-y|<=|x-z|+|y-z|.

Offset 0, canonical program `A212691.P13624024582917438686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212691 (n : ℕ) : ℤ :=
  A212691.P13624024582917438686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212741.P3519736066296721544

`(n+1)²²-A212740(n)`
-/

namespace A212741.P3519736066296721544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212740 n

end

end A212741.P3519736066296721544

noncomputable section

/-- A212741: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}>=2*min{w,x,y,z}.

Offset 0, canonical program `A212741.P3519736066296721544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212741 (n : ℕ) : ℤ :=
  A212741.P3519736066296721544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212742.P6615112859734438105

`A212740(n+1)`
-/

namespace A212742.P6615112859734438105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 (n + 1)

end

end A212742.P6615112859734438105

noncomputable section

/-- A212742: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}<=2*min{w,x,y,z}.

Offset 0, canonical program `A212742.P6615112859734438105`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212742 (n : ℕ) : ℤ :=
  A212742.P6615112859734438105.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212744.P9754335344093697482

`∑[A005897(n)]-ceil(n/2)^3`
-/

namespace A212744.P9754335344093697482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 2⌉ ^ 3

end

end A212744.P9754335344093697482

noncomputable section

/-- A212744: Number of (w,x,y,z) with all terms in {0,...,n} and w=max{w,x,y,z}-min{w,x,y,z}; i.e., the range of (w,x,y,z) is its first term.

Offset 0, canonical program `A212744.P9754335344093697482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212744 (n : ℕ) : ℤ :=
  A212744.P9754335344093697482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212745.P2569398194912916099

`A005898(n)-A000578(∑[n²%3])`
-/

namespace A212745.P2569398194912916099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A000578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212745.P2569398194912916099

noncomputable section

/-- A212745: Number of (w,x,y,z) with all terms in {0,...,n} and w=max{w,x,y,z}-2*min{w,x,y,z}.

Offset 0, canonical program `A212745.P2569398194912916099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212745 (n : ℕ) : ℤ :=
  A212745.P2569398194912916099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212749.P10900213257716783544

`∑[A007202(n)-A000578(A004526(n))]`
-/

namespace A212749.P10900213257716783544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n - A000578 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212749.P10900213257716783544

noncomputable section

/-- A212749: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: w=R, x

Offset 0, canonical program `A212749.P10900213257716783544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212749 (n : ℕ) : ℤ :=
  A212749.P10900213257716783544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212752.P3210203071305994442

`∑[A005917(n+1)-A000578(A008619(n))]`
-/

namespace A212752.P3210203071305994442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - A000578 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212752.P3210203071305994442

noncomputable section

/-- A212752: Number of (w,x,y,z) with all terms in {0,...,n} and at least one of these conditions holds: wR, where R=max{w,x,y,z}-min{w,x,y,z}.

Offset 0, canonical program `A212752.P3210203071305994442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212752 (n : ℕ) : ℤ :=
  A212752.P3210203071305994442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212764.P8724147019687589347

`abs(∑[∑[n]*A152032(n)])`
-/

namespace A212764.P8724147019687589347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A152032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A212764.P8724147019687589347

noncomputable section

/-- A212764: Number of (w,x,y,z) with all terms in {0,...,n}, w, x and y odd, and z odd.

Offset 0, canonical program `A212764.P8724147019687589347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212764 (n : ℕ) : ℤ :=
  A212764.P8724147019687589347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212797.P8262427844591531937

`(n+1)*A082639(n+2)`
-/

namespace A212797.P8262427844591531937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082639 (n + 2)

end

end A212797.P8262427844591531937

noncomputable section

/-- A212797: Number of spanning trees in C_2 X C_n.

Offset 1, canonical program `A212797.P8262427844591531937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A212797 (n : ℕ) : ℤ :=
  A212797.P8262427844591531937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A212797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212889.P10405451188025400219

`∑[A007588(or(1, n))]`
-/

namespace A212889.P10405451188025400219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P10405451188025400219

noncomputable section

/-- A212889: Number of (w,x,y,z) with all terms in {0,...,n} and even range.

Offset 0, canonical program `A212889.P10405451188025400219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212889 (n : ℕ) : ℤ :=
  A212889.P10405451188025400219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212896.P104134062645944956

`(n+1)²²-A212897(n)`
-/

namespace A212896.P104134062645944956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212897 n

end

end A212896.P104134062645944956

noncomputable section

/-- A212896: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)

Offset 0, canonical program `A212896.P104134062645944956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212896 (n : ℕ) : ℤ :=
  A212896.P104134062645944956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212989.P11010340591035604090

`∑[A060819(∑[C(3, 2*n%4)])]`
-/

namespace A212989.P11010340591035604090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (2 * (n % 4))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P11010340591035604090

noncomputable section

/-- A212989: Number of (w,x,y) with all terms in {0,...,n} and 4*w = 4*x+y.

Offset 0, canonical program `A212989.P11010340591035604090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212989 (n : ℕ) : ℤ :=
  A212989.P11010340591035604090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213011.P2797359215973107043

`∪[(n+1)², ∑[A000040(n+1)]]`
-/

namespace A213011.P2797359215973107043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213011.P2797359215973107043

noncomputable section

/-- A213011: Union of positive squares and sums of first k primes.

Offset 1, canonical program `A213011.P2797359215973107043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213011 (n : ℕ) : ℤ :=
  (A213011.P2797359215973107043.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213040.P9843905526208867183

`∑[A053615(n)]+n+1`
-/

namespace A213040.P9843905526208867183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A213040.P9843905526208867183

noncomputable section

/-- A213040: Partial sums of A004738, leftmost column of the sequence of triangles defined in A206492.

Offset 0, canonical program `A213040.P9843905526208867183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213040 (n : ℕ) : ℤ :=
  A213040.P9843905526208867183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213044.P16913885275272728411

`A164397(n)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A213044.P16913885275272728411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A164397 n - (a (n - 2) + a (n - 1))

end

end A213044.P16913885275272728411

noncomputable section

/-- A213044: Convolution of Fibonacci numbers and positive integers repeated three times (A000045 and A008620).

Offset 0, canonical program `A213044.P16913885275272728411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A213044 (n : ℕ) : ℤ :=
  A213044.P16913885275272728411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A213044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213060.P766128900809524286

`abs(A075193(n)%(n+1))`
-/

namespace A213060.P766128900809524286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A075193 n) (n + 1 : ℤ)|

end

end A213060.P766128900809524286

noncomputable section

/-- A213060: Lucas(n) mod n, where Lucas = A000032.

Offset 1, canonical program `A213060.P766128900809524286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A213060 (n : ℕ) : ℤ :=
  A213060.P766128900809524286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A213060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213071.P15792046747175233008

`A131423(Δ[(3*n)²])`
-/

namespace A213071.P15792046747175233008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213071.P15792046747175233008

noncomputable section

/-- A213071: 3*n*(9n + 2)*(18n - 1), where n runs through the odd numbers 1, 3, 5,...

Offset 1, canonical program `A213071.P15792046747175233008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A213071 (n : ℕ) : ℤ :=
  A213071.P15792046747175233008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A213071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213083.P15258794415089713669

`A074279(n+1)²`
-/

namespace A213083.P15258794415089713669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) ^ 2

end

end A213083.P15258794415089713669

noncomputable section

/-- A213083: Each square n^2 appears n^2 number of times.

Offset 1, canonical program `A213083.P15258794415089713669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213083 (n : ℕ) : ℤ :=
  A213083.P15258794415089713669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213119.P13453498747740953722

`3*A000108(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A213119.P13453498747740953722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A000108 n + 4 * a (n - 1)

end

end A213119.P13453498747740953722

noncomputable section

/-- A213119: Number of binary arrays of length 2*n+1 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

Offset 1, canonical program `A213119.P13453498747740953722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A213119 (n : ℕ) : ℤ :=
  A213119.P13453498747740953722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A213119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213246.P7226918904436157969

`A126646(n)/gcd(9, A126646(n))`
-/

namespace A213246.P7226918904436157969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (Int.gcd 9 (A126646 n) : ℚ)

end

end A213246.P7226918904436157969

noncomputable section

/-- A213246: Number of nonzero elements in GF(2^n) that are 9th powers.

Offset 1, canonical program `A213246.P7226918904436157969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A213246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213246.P7226918904436157969.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A213246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213247.P11842205122896449942

`∑[A000079(n)]/gcd(11, (n+1)%10)`
-/

namespace A213247.P11842205122896449942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.gcd 11 ((n + 1) % 10) : ℚ)

end

end A213247.P11842205122896449942

noncomputable section

/-- A213247: Number of nonzero elements in GF(2^n) that are 11th powers.

Offset 1, canonical program `A213247.P11842205122896449942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A213247 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213247.P11842205122896449942.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A213247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213299.P7352330318747567761

`∑[A211681(n+1)]`
-/

namespace A213299.P7352330318747567761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213299.P7352330318747567761

noncomputable section

/-- A213299: Partial sums of A211681.

Offset 1, canonical program `A213299.P7352330318747567761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A213299 (n : ℕ) : ℤ :=
  A213299.P7352330318747567761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A213299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213381.P12560780173053572770

`(xor(1, n+2)*A000079(n))%(n+2)`
-/

namespace A213381.P12560780173053572770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 1 (n + 2) : ℤ) * A000079 n) (n + 2 : ℤ)

end

end A213381.P12560780173053572770

noncomputable section

/-- A213381: a(n) = n^n mod (n+2).

Offset 0, canonical program `A213381.P12560780173053572770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A213381 (n : ℕ) : ℤ :=
  A213381.P12560780173053572770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A213381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213391.P13424770339071447811

`∑[A092076(n)]-A092076(n)`
-/

namespace A213391.P13424770339071447811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092076 n

end

end A213391.P13424770339071447811

noncomputable section

/-- A213391: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) < 3*min(w,x,y).

Offset 0, canonical program `A213391.P13424770339071447811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213391 (n : ℕ) : ℤ :=
  A213391.P13424770339071447811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213445.P12591363612529024179

`A213444(n+1)²`
-/

namespace A213445.P12591363612529024179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213444 (n + 1) ^ 2

end

end A213445.P12591363612529024179

noncomputable section

/-- A213445: Squares containing a digit 2.

Offset 1, canonical program `A213445.P12591363612529024179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213445 (n : ℕ) : ℤ :=
  A213445.P12591363612529024179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213480.P7844553582656096342

`(n+1)^3-A213479(n)`
-/

namespace A213480.P7844553582656096342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213479 n

end

end A213480.P7844553582656096342

noncomputable section

/-- A213480: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| != w+x+y.

Offset 0, canonical program `A213480.P7844553582656096342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213480 (n : ℕ) : ℤ :=
  A213480.P7844553582656096342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213485.P7234076116848271960

`(n+1)^3-A213484(n)`
-/

namespace A213485.P7234076116848271960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213484 n

end

end A213485.P7234076116848271960

noncomputable section

/-- A213485: Number of (w,x,y) with all terms in {0,...,n} and |w-x|+|x-y|+|y-w| != w+x+y.

Offset 0, canonical program `A213485.P7234076116848271960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213485 (n : ℕ) : ℤ :=
  A213485.P7234076116848271960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213506.P17613136528562443467

`A001400(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A213506.P17613136528562443467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A001400 n + a (n - 3)

end

end A213506.P17613136528562443467

noncomputable section

/-- A213506: Number of nonisomorphic 2-generator p-groups of class at most 2 and order p^n.

Offset 0, canonical program `A213506.P17613136528562443467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213506 (n : ℕ) : ℤ :=
  A213506.P17613136528562443467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213510.P10486030267296121756

`A064099(n)+a(n-1)` with `a(0)=1`
-/

namespace A213510.P10486030267296121756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064099 n + a (n - 1)

end

end A213510.P10486030267296121756

noncomputable section

/-- A213510: The sequence N(n) arising in the enumeration of balanced ternary trees.

Offset 1, canonical program `A213510.P10486030267296121756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213510 (n : ℕ) : ℤ :=
  A213510.P10486030267296121756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213554.P16155794787376592371

`A133754(n+1)+∑[(n+1)^4+2*∑[n]²]`
-/

namespace A213554.P16155794787376592371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 + 2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213554.P16155794787376592371

noncomputable section

/-- A213554: Principal diagonal of the convolution array A213553.

Offset 1, canonical program `A213554.P16155794787376592371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213554 (n : ℕ) : ℤ :=
  A213554.P16155794787376592371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213557.P10793997535067726782

`∑[A213767(n+1)]`
-/

namespace A213557.P10793997535067726782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P10793997535067726782

noncomputable section

/-- A213557: Antidiagonal sums of the convolution array A213590.

Offset 1, canonical program `A213557.P10793997535067726782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A213557 (n : ℕ) : ℤ :=
  A213557.P10793997535067726782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A213557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213570.P18187397949338464835

`∑[∑[∑[A001060(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A213570.P18187397949338464835
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A001060 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213570.P18187397949338464835

noncomputable section

/-- A213570: Antidiagonal sums of the convolution array A213566.

Offset 1, canonical program `A213570.P18187397949338464835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A213570 (n : ℕ) : ℤ :=
  A213570.P18187397949338464835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A213570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213574.P11619995717019503395

`A017910(2*(n+1))*A059100(n+2)-A059100(2*n+3)`
-/

namespace A213574.P11619995717019503395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * (n + 1)) * A059100 (n + 2) - A059100 (2 * n + 3)

end

end A213574.P11619995717019503395

noncomputable section

/-- A213574: Principal diagonal of the convolution array A213573.

Offset 1, canonical program `A213574.P11619995717019503395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A213574 (n : ℕ) : ℤ :=
  A213574.P11619995717019503395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A213574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213580.P3442609799024385666

`A157728(n+5)+n*A001911(n)`
-/

namespace A213580.P3442609799024385666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 5) + (n : ℤ) * A001911 n

end

end A213580.P3442609799024385666

noncomputable section

/-- A213580: Principal diagonal of the convolution array A213579.

Offset 1, canonical program `A213580.P3442609799024385666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A213580 (n : ℕ) : ℤ :=
  A213580.P3442609799024385666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A213580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213585.P17385327160734707533

`∑[A061705(n+2)-4]`
-/

namespace A213585.P17385327160734707533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213585.P17385327160734707533

noncomputable section

/-- A213585: Principal diagonal of the convolution array A213584.

Offset 1, canonical program `A213585.P17385327160734707533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A213585 (n : ℕ) : ℤ :=
  A213585.P17385327160734707533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A213585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213604.P14326404384855386302

`∑[dr(A005891(A248375(n)))]`
-/

namespace A213604.P14326404384855386302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005891 (A248375 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213604.P14326404384855386302

noncomputable section

/-- A213604: Cumulative sums of digital roots of A005891(n).

Offset 0, canonical program `A213604.P14326404384855386302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A213604 (n : ℕ) : ℤ :=
  (A213604.P14326404384855386302.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A213604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213642.P2569835533399145467

`A000040((n+1)/(or(n, n+1)-n))`
-/

namespace A213642.P2569835533399145467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A213642.P2569835533399145467

noncomputable section

/-- A213642: a(n) = prime(odd part of n).

Offset 1, canonical program `A213642.P2569835533399145467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213642 (n : ℕ) : ℤ :=
  A213642.P2569835533399145467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213650.P4295961381760451156

`eq[2, A102862(n+1)]+1`
-/

namespace A213650.P4295961381760451156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213650.P4295961381760451156

noncomputable section

/-- A213650: Numbers k such that the sum of the first k primes is semiprime.

Offset 1, canonical program `A213650.P4295961381760451156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A213650 (n : ℕ) : ℤ :=
  (A213650.P4295961381760451156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A213650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213663.P2788337738524468034

`A000213(n+3)+2^(n+2)`
-/

namespace A213663.P2788337738524468034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 3) + (2 ^ (n + 2) : ℤ)

end

end A213663.P2788337738524468034

noncomputable section

/-- A213663: Number of dominating subsets of the graph G(n) obtained by joining each vertex of the path graph P_{n+1} on n+1 vertices with an additional vertex (the join of K_1 and P_{n+1}).

Offset 1, canonical program `A213663.P2788337738524468034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A213663 (n : ℕ) : ℤ :=
  A213663.P2788337738524468034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A213663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213741.P11773447692620937170

`eq[3, A102862(n+1)]+1`
-/

namespace A213741.P11773447692620937170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213741.P11773447692620937170

noncomputable section

/-- A213741: Numbers n such that the sum of the first n primes is divisible by exactly 3 prime powers (not including 1).

Offset 1, canonical program `A213741.P11773447692620937170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A213741 (n : ℕ) : ℤ :=
  (A213741.P11773447692620937170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A213741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213748.P12691812581179159646

`A000337(2*n+1)-∑[A000225(n)]`
-/

namespace A213748.P12691812581179159646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213748.P12691812581179159646

noncomputable section

/-- A213748: Principal diagonal of the convolution array A213747.

Offset 1, canonical program `A213748.P12691812581179159646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A213748 (n : ℕ) : ℤ :=
  A213748.P12691812581179159646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A213748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213749.P1313503808114137028

`∑[∑[n*A129954(n+1)+1]]`
-/

namespace A213749.P1313503808114137028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129954 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213749.P1313503808114137028

noncomputable section

/-- A213749: Antidiagonal sums of the convolution array A213747.

Offset 1, canonical program `A213749.P1313503808114137028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A213749 (n : ℕ) : ℤ :=
  A213749.P1313503808114137028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A213749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213754.P8480363023296275666

`Δ[A286778(n)-∑[n²]]`
-/

namespace A213754.P8480363023296275666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286778 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213754.P8480363023296275666

noncomputable section

/-- A213754: Principal diagonal of the convolution array A213753.

Offset 1, canonical program `A213754.P8480363023296275666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A213754 (n : ℕ) : ℤ :=
  A213754.P8480363023296275666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A213754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213755.P14938991153294945988

`∑[∑[A288038(n+1)-2*(n+1)]]`
-/

namespace A213755.P14938991153294945988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288038 (n + 1) - (2 * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213755.P14938991153294945988

noncomputable section

/-- A213755: Antidiagonal sums of the convolution array A213753.

Offset 1, canonical program `A213755.P14938991153294945988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A213755 (n : ℕ) : ℤ :=
  A213755.P14938991153294945988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A213755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213757.P16311074821919734922

`∑[∑[Δ[A128135(n+2)]-6]]`
-/

namespace A213757.P16311074821919734922
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213757.P16311074821919734922

noncomputable section

/-- A213757: Principal diagonal of the convolution array A213756.

Offset 1, canonical program `A213757.P16311074821919734922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A213757 (n : ℕ) : ℤ :=
  A213757.P16311074821919734922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A213757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213760.P5004262437479471162

`∑[∑[A093005(n+1)-A245288(n)]]`
-/

namespace A213760.P5004262437479471162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) - A245288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213760.P5004262437479471162

noncomputable section

/-- A213760: Antidiagonal sums of the convolution array A213783.

Offset 1, canonical program `A213760.P5004262437479471162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213760 (n : ℕ) : ℤ :=
  A213760.P5004262437479471162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214045.P5494443989804266643

`abs(xor(-1, A127032(n+1)))`
-/

namespace A214045.P5494443989804266643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A127032 (n + 1))|

end

end A214045.P5494443989804266643

noncomputable section

/-- A214045: Least m>0 such that n! <= 5^m.

Offset 1, canonical program `A214045.P5494443989804266643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214045 (n : ℕ) : ℤ :=
  A214045.P5494443989804266643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214077.P943174614484166143

`A214076(n+1)-1`
-/

namespace A214077.P943174614484166143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214076 (n + 1) - 1

end

end A214077.P943174614484166143

noncomputable section

/-- A214077: a(n) = floor(e^(n/3)).

Offset 1, canonical program `A214077.P943174614484166143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A214077 (n : ℕ) : ℤ :=
  A214077.P943174614484166143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A214077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214262.P18387822921673765359

`∑{d}[n+1, A049347(#-1)*A162395((n+1)/#)]`
-/

namespace A214262.P18387822921673765359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214262.P18387822921673765359

noncomputable section

/-- A214262: Expansion of eta(q)^5 * eta(q^3) * eta(q^6)^4 / eta(q^2)^4 in powers of q.

Offset 1, canonical program `A214262.P18387822921673765359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214262 (n : ℕ) : ℤ :=
  A214262.P18387822921673765359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214283.P6795879513502021104

`1-A006481(n+1)`
-/

namespace A214283.P6795879513502021104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006481 (n + 1)

end

end A214283.P6795879513502021104

noncomputable section

/-- A214283: Smallest Euler characteristic of a downset on an n-dimensional cube.

Offset 1, canonical program `A214283.P6795879513502021104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A214283 (n : ℕ) : ℤ :=
  A214283.P6795879513502021104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A214283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214286.P8849492895179717303

`(A000045(n)-A105870(n))/7`
-/

namespace A214286.P8849492895179717303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A105870 n : ℚ) / 7

end

end A214286.P8849492895179717303

noncomputable section

/-- A214286: a(n) = floor(Fibonacci(n)/7).

Offset 0, canonical program `A214286.P8849492895179717303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105870, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214286.P8849492895179717303.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105870, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214304.P9342972882783353441

`A000122(gcd(n, ∑[n]))`
-/

namespace A214304.P9342972882783353441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A214304.P9342972882783353441

noncomputable section

/-- A214304: Expansion of phi(q) + phi(q^2) - phi(q^4) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A214304.P9342972882783353441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214304 (n : ℕ) : ℤ :=
  A214304.P9342972882783353441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214408.P1183294702136454259

`lt[A009194(n+1), A033880(n+1)]+1`
-/

namespace A214408.P1183294702136454259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214408.P1183294702136454259

noncomputable section

/-- A214408: Abundant numbers for which the abundance is not a divisor.

Offset 1, canonical program `A214408.P1183294702136454259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. -/
def A214408 (n : ℕ) : ℤ :=
  (A214408.P1183294702136454259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2465 terms. -/
def A214408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214489.P13760201785312530605

`lt[A006257(n), A006257(2*A046699(n+1))]`
-/

namespace A214489.P13760201785312530605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * A046699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214489.P13760201785312530605

noncomputable section

/-- A214489: Numbers m such that A070939(m) = A070939(m + A070939(m)), A070939 = length of binary representation.

Offset 1, canonical program `A214489.P13760201785312530605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214489 (n : ℕ) : ℤ :=
  (A214489.P13760201785312530605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214507.P18341294682976944644

`(-1)^(n*(n+1)/2)*A093709(n)`
-/

namespace A214507.P18341294682976944644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ) * (A093709 n : ℝ)

end

end A214507.P18341294682976944644

noncomputable section

/-- A214507: a(n) = 1 if n is one or two times an even square, -1 if one or two times an odd square else 0.

Offset 0, canonical program `A214507.P18341294682976944644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214507.P18341294682976944644.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214546.P4922243182448489645

`Δ[A140472(n)]`
-/

namespace A214546.P4922243182448489645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214546.P4922243182448489645

noncomputable section

/-- A214546: First differences of A140472.

Offset 0, canonical program `A214546.P4922243182448489645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214546 (n : ℕ) : ℤ :=
  A214546.P4922243182448489645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214630.P3894340943052306860

`A214297(gcd(n, ∑[n]²))`
-/

namespace A214630.P3894340943052306860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2))

end

end A214630.P3894340943052306860

noncomputable section

/-- A214630: a(n) is the reduced numerator of 1/4 - 1/A109043(n)^2 = (1 - 1/A026741(n)^2)/4.

Offset 0, canonical program `A214630.P3894340943052306860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214630 (n : ℕ) : ℤ :=
  A214630.P3894340943052306860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214663.P15655296005708916293

`A232164(n+1)`
-/

namespace A214663.P15655296005708916293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 1)

end

end A214663.P15655296005708916293

noncomputable section

/-- A214663: Number of permutations of 1..n for which the partial sums of signed displacements do not exceed 2.

Offset 0, canonical program `A214663.P15655296005708916293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A214663 (n : ℕ) : ℤ :=
  A214663.P15655296005708916293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A214663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214683.P3746953086202527489

`(A028495(n)-A052547(n+2))*A033999(n)`
-/

namespace A214683.P3746953086202527489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028495 n - A052547 (n + 2)) * A033999 n

end

end A214683.P3746953086202527489

noncomputable section

/-- A214683: a(n+3) = -a(n+2) + 2a(n+1) + a(n) with a(0)=-1, a(1)=0, a(2)=-3.

Offset 0, canonical program `A214683.P3746953086202527489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A214683 (n : ℕ) : ℤ :=
  A214683.P3746953086202527489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A214683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214732.P15126367615606309258

`A158060(A202018(n))-(10*n+5)`
-/

namespace A214732.P15126367615606309258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (A202018 n).toNat - (10 * n + 5 : ℤ)

end

end A214732.P15126367615606309258

noncomputable section

/-- A214732: a(n) = 25*n^2 + 15*n + 1021.

Offset 0, canonical program `A214732.P15126367615606309258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214732 (n : ℕ) : ℤ :=
  A214732.P15126367615606309258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214848.P11097878260776207900

`A022846(n+1)-A022846(n)`
-/

namespace A214848.P11097878260776207900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1) - A022846 n

end

end A214848.P11097878260776207900

noncomputable section

/-- A214848: First difference of A022846.

Offset 0, canonical program `A214848.P11097878260776207900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214848 (n : ℕ) : ℤ :=
  A214848.P11097878260776207900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214860.P3460420051766909804

`A022847(n+1)-A022847(n)`
-/

namespace A214860.P3460420051766909804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (n + 1) - A022847 n

end

end A214860.P3460420051766909804

noncomputable section

/-- A214860: First differences of round(n*sqrt(3)) (A022847).

Offset 1, canonical program `A214860.P3460420051766909804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214860 (n : ℕ) : ℤ :=
  A214860.P3460420051766909804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214861.P940447429483379445

`abs(Δ[A022848(n)])`
-/

namespace A214861.P940447429483379445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A214861.P940447429483379445

noncomputable section

/-- A214861: First differences of round(n*sqrt(5)) (A022848).

Offset 1, canonical program `A214861.P940447429483379445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214861 (n : ℕ) : ℤ :=
  A214861.P940447429483379445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214889.P17095536773520948583

`∪[A100202(n+1), A141858(n+1)]`
-/

namespace A214889.P17095536773520948583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P17095536773520948583

noncomputable section

/-- A214889: Primes congruent to {2, 3} mod 13.

Offset 1, canonical program `A214889.P17095536773520948583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214889 (n : ℕ) : ℤ :=
  (A214889.P17095536773520948583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214890.P17674179342821707442

`∪[A092074(n+1), A140544(n+1)]`
-/

namespace A214890.P17674179342821707442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P17674179342821707442

noncomputable section

/-- A214890: Primes congruent to {2, 3} mod 17.

Offset 1, canonical program `A214890.P17674179342821707442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214890 (n : ℕ) : ℤ :=
  (A214890.P17674179342821707442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214945.P2334347710688580479

`(A196506(n)-n²)*∑[n+1]`
-/

namespace A214945.P2334347710688580479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A196506 n - (n ^ 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A214945.P2334347710688580479

noncomputable section

/-- A214945: Number of squarefree words of length 6 in an (n+1)-ary alphabet.

Offset 1, canonical program `A214945.P2334347710688580479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214945 (n : ℕ) : ℤ :=
  A214945.P2334347710688580479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214946.P7493096639732243063

`lcm(record[A242135(n)], A214944(n+1))`
-/

namespace A214946.P7493096639732243063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A214944 (n + 1))

end

end A214946.P7493096639732243063

noncomputable section

/-- A214946: Number of squarefree words of length 7 in an (n+1)-ary alphabet.

Offset 1, canonical program `A214946.P7493096639732243063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214946 (n : ℕ) : ℤ :=
  (A214946.P7493096639732243063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214971.P13234535604892032525

`A026352(n)+n`
-/

namespace A214971.P13234535604892032525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + (n : ℤ)

end

end A214971.P13234535604892032525

noncomputable section

/-- A214971: Integers k for which the base-phi representation of k includes 1.

Offset 1, canonical program `A214971.P13234535604892032525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A214971 (n : ℕ) : ℤ :=
  A214971.P13234535604892032525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A214971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215001.P14554116704608614748

`A215000(n+1)+1`
-/

namespace A215001.P14554116704608614748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1) + 1

end

end A215001.P14554116704608614748

noncomputable section

/-- A215001: a(n) = 1 + floor(e^(1 + 1/2 + 1/3 + ... + 1/n)).

Offset 1, canonical program `A215001.P14554116704608614748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215001 (n : ℕ) : ℤ :=
  A215001.P14554116704608614748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215038.P12631361175395959809

`∑[∑[A212804(n)]*A001654(n)]`
-/

namespace A215038.P12631361175395959809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215038.P12631361175395959809

noncomputable section

/-- A215038: Partial sums of A066259: a(n) = Sum_{k=0..n} F(k+1)^2*F(k), n>=0, with the Fibonacci numbers F=A000045.

Offset 0, canonical program `A215038.P12631361175395959809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A215038 (n : ℕ) : ℤ :=
  A215038.P12631361175395959809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A215038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215088.P13202333273910067831

`A010874(n)+2*a(A002266(n))` with `a(0)=0`
-/

namespace A215088.P13202333273910067831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010874 n + 2 * a (A002266 n).toNat

end

end A215088.P13202333273910067831

noncomputable section

/-- A215088: a(n)=Sum{d(i)*2^i: i=0,1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is the base 5 representation of n.

Offset 0, canonical program `A215088.P13202333273910067831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215088 (n : ℕ) : ℤ :=
  A215088.P13202333273910067831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215205.P17079009654100327279

`Δ[A316631(n)]-A001057(n)`
-/

namespace A215205.P17079009654100327279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001057 n

end

end A215205.P17079009654100327279

noncomputable section

/-- A215205: a(n) = (-1)^n * (A060819(n) + A060819(n+1)).

Offset 0, canonical program `A215205.P17079009654100327279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215205 (n : ℕ) : ℤ :=
  A215205.P17079009654100327279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215229.P8015716279270990829

`(2*A117642(n+1)-30*n)*A000292(n)`
-/

namespace A215229.P8015716279270990829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A117642 (n + 1) - (30 * n : ℤ)) * A000292 n

end

end A215229.P8015716279270990829

noncomputable section

/-- A215229: Number of length-6 0..k arrays connected end-around, with no sequence of L

Offset 1, canonical program `A215229.P8015716279270990829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215229 (n : ℕ) : ℤ :=
  A215229.P8015716279270990829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215339.P9790592980858161614

`A001608(n+1)%(n+1)`
-/

namespace A215339.P9790592980858161614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001608 (n + 1)) (n + 1 : ℤ)

end

end A215339.P9790592980858161614

noncomputable section

/-- A215339: a(n) = A001608(n) mod n.

Offset 1, canonical program `A215339.P9790592980858161614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A215339 (n : ℕ) : ℤ :=
  A215339.P9790592980858161614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A215339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215424.P12279259074454482005

`∪[A215215(n+1), A215276(n+1)]`
-/

namespace A215424.P12279259074454482005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215424.P12279259074454482005

noncomputable section

/-- A215424: Primes congruent to {0, 1, 2, 4, 5, 6} mod 13.

Offset 1, canonical program `A215424.P12279259074454482005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215424 (n : ℕ) : ℤ :=
  (A215424.P12279259074454482005.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215425.P11391704542697951119

`∪[A215273(n+1), A215277(n+1)]`
-/

namespace A215425.P11391704542697951119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215425.P11391704542697951119

noncomputable section

/-- A215425: Primes congruent to {0, 1, 2, 4, 5, 6} mod 17.

Offset 1, canonical program `A215425.P11391704542697951119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215425 (n : ℕ) : ℤ :=
  (A215425.P11391704542697951119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215426.P10195043611066381914

`∪[A215274(n+1), A215278(n+1)]`
-/

namespace A215426.P10195043611066381914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215426.P10195043611066381914

noncomputable section

/-- A215426: Primes congruent to {0, 1, 2, 4, 5, 6} mod 19.

Offset 1, canonical program `A215426.P10195043611066381914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215426 (n : ℕ) : ℤ :=
  (A215426.P10195043611066381914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215544.P10469390717346854608

`record[A266222(n)]*A100157(n+1)`
-/

namespace A215544.P10469390717346854608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A100157 (n + 1)

end

end A215544.P10469390717346854608

noncomputable section

/-- A215544: Number of standard Young tableaux of shape [4n,4].

Offset 0, canonical program `A215544.P10469390717346854608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A215544 (n : ℕ) : ℤ :=
  A215544.P10469390717346854608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A215544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215545.P11920796599783061454

`record[A000389(5*n)-A000332(5*n)]`
-/

namespace A215545.P11920796599783061454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (5 * n) - A000332 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215545.P11920796599783061454

noncomputable section

/-- A215545: Number of standard Young tableaux of shape [5n,5].

Offset 0, canonical program `A215545.P11920796599783061454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A215545 (n : ℕ) : ℤ :=
  A215545.P11920796599783061454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A215545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215634.P6487503925011111520

`3*(-1)^n*A124292(n+2)`
-/

namespace A215634.P6487503925011111520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * A124292 (n + 2)

end

end A215634.P6487503925011111520

noncomputable section

/-- A215634: a(n) = - 6*a(n-1) - 9*a(n-2) - 3*a(n-3) with a(0)=3, a(1)=-6, a(2)=18.

Offset 0, canonical program `A215634.P6487503925011111520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A215634 (n : ℕ) : ℤ :=
  A215634.P6487503925011111520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A215634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215675.P2158629537896342480

`a(lcm(2, n)/2-1)+a(A152271(n)-1)` with `a(0)=1`
-/

namespace A215675.P2158629537896342480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2 - 1)).toNat + a (A152271 n - 1).toNat

end

end A215675.P2158629537896342480

noncomputable section

/-- A215675: a(1) = 1, a(n) = 2 if 1

Offset 1, canonical program `A215675.P2158629537896342480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A215675 (n : ℕ) : ℤ :=
  (A215675.P2158629537896342480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A215675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215751.P5539135677145150358

`eq[A032741(4*n+2)+2, A032741(4*n)]`
-/

namespace A215751.P5539135677145150358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (4 * n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215751.P5539135677145150358

noncomputable section

/-- A215751: Numbers n such that tau(4n+2)=tau(4n)-2, where tau=A000005 gives the number of divisors.

Offset 1, canonical program `A215751.P5539135677145150358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A215751 (n : ℕ) : ℤ :=
  (A215751.P5539135677145150358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A215751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215848.P17068717743202425727

`A000040(n+3)`
-/

namespace A215848.P17068717743202425727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

end

end A215848.P17068717743202425727

noncomputable section

/-- A215848: Primes > 3.

Offset 1, canonical program `A215848.P17068717743202425727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215848 (n : ℕ) : ℤ :=
  A215848.P17068717743202425727.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215883.P14293418994661775014

`val(or(n, A004468(n))+1, 4)`
-/

namespace A215883.P14293418994661775014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor (n : ℤ) (A004468 n) + 1).toNat 4

end

end A215883.P14293418994661775014

noncomputable section

/-- A215883: When written in base 4, n ends in a(n) consecutive nonzero digits.

Offset 0, canonical program `A215883.P14293418994661775014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215883 (n : ℕ) : ℤ :=
  (A215883.P14293418994661775014.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215892.P10805814958823080764

`2^(n+2)-A060509(n+2)`
-/

namespace A215892.P10805814958823080764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A060509 (n + 2)

end

end A215892.P10805814958823080764

noncomputable section

/-- A215892: a(n) = 2^n - n^k, where k is the largest integer such that 2^n >= n^k.

Offset 2, canonical program `A215892.P10805814958823080764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A215892 (n : ℕ) : ℤ :=
  A215892.P10805814958823080764.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A215892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215942.P14635124153363941371

`A000203(6*(n+1))-12*(n+1)`
-/

namespace A215942.P14635124153363941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * (n + 1)) - (12 * (n + 1) : ℤ)

end

end A215942.P14635124153363941371

noncomputable section

/-- A215942: a(n) = sigma(6*n) - 12*n.

Offset 1, canonical program `A215942.P14635124153363941371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215942 (n : ℕ) : ℤ :=
  A215942.P14635124153363941371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216114.P413887874765268727

`(A268581(n)+2*n)*(A158128(n+1)-1)`
-/

namespace A216114.P413887874765268727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268581 n + (2 * n : ℤ)) * (A158128 (n + 1) - 1)

end

end A216114.P413887874765268727

noncomputable section

/-- A216114: The Wiener index of a link of n fullerenes C_{20} (see the Ghorbani and Hosseinzadeh reference).

Offset 1, canonical program `A216114.P413887874765268727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216114 (n : ℕ) : ℤ :=
  A216114.P413887874765268727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216130.P16550663694502347277

`A000420(n+1)%(20/2)²²`
-/

namespace A216130.P16550663694502347277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000420 (n + 1)) (SequenceMachineLib.roundAway ((((20 : ℚ) / 2) ^ 2) ^ 2))

end

end A216130.P16550663694502347277

noncomputable section

/-- A216130: 7^n mod 10000.

Offset 1, canonical program `A216130.P16550663694502347277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A216130 (n : ℕ) : ℤ :=
  A216130.P16550663694502347277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A216130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216162.P16698667562609771538

`floor(A266504(A080412(n))/2)`
-/

namespace A216162.P16698667562609771538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266504 (A080412 n).toNat : ℚ) / 2⌋

end

end A216162.P16698667562609771538

noncomputable section

/-- A216162: Sequences A006452 and A216134 interlaced.

Offset 0, canonical program `A216162.P16698667562609771538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A216162 (n : ℕ) : ℤ :=
  A216162.P16698667562609771538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A216162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216175.P3202071248840124972

`∑[∑[∑[A106252(n+1)]]]`
-/

namespace A216175.P3202071248840124972
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P3202071248840124972

noncomputable section

/-- A216175: Number of all polyhedra (tetrahedra of any orientation and octahedra) of any size, formed when intersecting a regular tetrahedron by planes parallel to its sides and dividing its edges into n equal parts.

Offset 1, canonical program `A216175.P3202071248840124972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216175 (n : ℕ) : ℤ :=
  A216175.P3202071248840124972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216223.P10131538684451385599

`ceil(sqrt(A000045(n)))²-A000045(n)`
-/

namespace A216223.P10131538684451385599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000045 n : ℝ)⌉ ^ 2 - A000045 n

end

end A216223.P10131538684451385599

noncomputable section

/-- A216223: Distance from Fibonacci(n) to the next perfect square.

Offset 0, canonical program `A216223.P10131538684451385599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A216223 (n : ℕ) : ℤ :=
  A216223.P10131538684451385599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A216223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216345.P281146645686861327

`a(n-1)+gcd(2, A156253(n))` with `a(0)=1`
-/

namespace A216345.P281146645686861327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd 2 (A156253 n)

end

end A216345.P281146645686861327

noncomputable section

/-- A216345: Position of the beginning of the n-th run in A000002.

Offset 1, canonical program `A216345.P281146645686861327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216345 (n : ℕ) : ℤ :=
  (A216345.P281146645686861327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216361.P16207929651444496318

`(A216315(n+1)-1)/118`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216361.P16207929651444496318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216315 (n + 1) - 1 : ℚ) / 118

end

end A216361.P16207929651444496318

noncomputable section

/-- A216361: a(n) = (A216315(n) - 1)/118.

Offset 1, canonical program `A216361.P16207929651444496318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216361 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216361.P16207929651444496318.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216430.P8321817838345624141

`A011584(A006047(n+1))`
-/

namespace A216430.P8321817838345624141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 (A006047 (n + 1)).toNat

end

end A216430.P8321817838345624141

noncomputable section

/-- A216430: (-1)^A081603(n), parity of the number of 2's in the ternary expansion of n.

Offset 1, canonical program `A216430.P8321817838345624141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216430 (n : ℕ) : ℤ :=
  A216430.P8321817838345624141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216495.P3012631399220531716

`A000040(floor(sqrt((n+1)*(n+11)))+1)`
-/

namespace A216495.P3012631399220531716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.sqrt ((n + 1) * (n + 11)) + 1)

end

end A216495.P3012631399220531716

noncomputable section

/-- A216495: Primes p with property that there exists a number d>0 such that numbers p-d, p-2*d are primes.

Offset 1, canonical program `A216495.P3012631399220531716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9617 terms. -/
def A216495 (n : ℕ) : ℤ :=
  A216495.P3012631399220531716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9617 terms. -/
def A216495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216655.P6308182779093505033

`Δ[A130084(2*n+1)+A019426(2*n)]`
-/

namespace A216655.P6308182779093505033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (2 * n + 1) + A019426 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216655.P6308182779093505033

noncomputable section

/-- A216655: Number of n-digit 5th powers.

Offset 1, canonical program `A216655.P6308182779093505033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A216655 (n : ℕ) : ℤ :=
  A216655.P6308182779093505033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A216655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216656.P2546391177797507173

`A000007(n)+Δ[A130080(n+1)]`
-/

namespace A216656.P2546391177797507173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A216656.P2546391177797507173

noncomputable section

/-- A216656: Number of n-digit 6th powers.

Offset 1, canonical program `A216656.P2546391177797507173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A216656 (n : ℕ) : ℤ :=
  A216656.P2546391177797507173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A216656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216657.P11584367721295558952

`A000007(n)+Δ[A130081(n+1)]`
-/

namespace A216657.P11584367721295558952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A216657.P11584367721295558952

noncomputable section

/-- A216657: Number of n-digit 7th powers.

Offset 1, canonical program `A216657.P11584367721295558952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A216657 (n : ℕ) : ℤ :=
  A216657.P11584367721295558952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A216657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216658.P3416862560913547511

`A000007(n)+Δ[A130082(n+1)]`
-/

namespace A216658.P3416862560913547511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A216658.P3416862560913547511

noncomputable section

/-- A216658: Number of n-digit 8th powers.

Offset 1, canonical program `A216658.P3416862560913547511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A216658 (n : ℕ) : ℤ :=
  A216658.P3416862560913547511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A216658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216731.P4716723728717069116

`p?[A134026(n+2)]`
-/

namespace A216731.P4716723728717069116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216731.P4716723728717069116

noncomputable section

/-- A216731: Primes p > 3 such that there is no power of 3 in the open interval (2p, 3p).

Offset 1, canonical program `A216731.P4716723728717069116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A216731 (n : ℕ) : ℤ :=
  A216731.P4716723728717069116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A216731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216781.P17850051630873400409

`record[A005843(n+1)/gcd(2, A017665(n+1))]`
-/

namespace A216781.P17850051630873400409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (Int.gcd 2 (A017665 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216781.P17850051630873400409

noncomputable section

/-- A216781: Numbers such that numerator(sigma(n)/n) is odd and denominator(sigma(n)/n) is even.

Offset 1, canonical program `A216781.P17850051630873400409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A216781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216781.P17850051630873400409.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A216781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216938.P8885445714276099875

`∑[∑[A033455(n+2)]+1]+1`
-/

namespace A216938.P8885445714276099875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216938.P8885445714276099875

noncomputable section

/-- A216938: Number of side-2 hexagonal 0..n arrays with values nondecreasing E, SW and SE.

Offset 1, canonical program `A216938.P8885445714276099875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A216938 (n : ℕ) : ℤ :=
  A216938.P8885445714276099875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A216938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216949.P18230438591423096068

`A052973(2*floor(n²/(n+1)))`
-/

namespace A216949.P18230438591423096068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (2 * ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A216949.P18230438591423096068

noncomputable section

/-- A216949: Expansion of g.f. (1-6*x+7*x^2)/(1-7*x+11*x^2-x^3).

Offset 0, canonical program `A216949.P18230438591423096068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A216949 (n : ℕ) : ℤ :=
  A216949.P18230438591423096068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A216949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217038.P18316143875162456827

`A112526(n)+a(n-1)` with `a(0)=0`
-/

namespace A217038.P18316143875162456827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A112526 n + a (n - 1)

end

end A217038.P18316143875162456827

noncomputable section

/-- A217038: Number of powerful numbers < n.

Offset 1, canonical program `A217038.P18316143875162456827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217038 (n : ℕ) : ℤ :=
  A217038.P18316143875162456827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217200.P17041435415871521454

`∑[A184537(n)+1]-4`
-/

namespace A217200.P17041435415871521454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184537 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A217200.P17041435415871521454

noncomputable section

/-- A217200: Number of permutations in S_{n+2} containing an increasing subsequence of length n.

Offset 0, canonical program `A217200.P17041435415871521454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217200 (n : ℕ) : ℤ :=
  A217200.P17041435415871521454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217323.P5893074591576963473

`A001006(n+3)-A001405(n+3)`
-/

namespace A217323.P5893074591576963473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 3) - A001405 (n + 3)

end

end A217323.P5893074591576963473

noncomputable section

/-- A217323: Number of self-inverse permutations in S_n with longest increasing subsequence of length 3.

Offset 3, canonical program `A217323.P5893074591576963473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A217323 (n : ℕ) : ℤ :=
  A217323.P5893074591576963473.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A217323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217367.P1904456362007884772

`ceil(lcm(2, A055999(n))/2)`
-/

namespace A217367.P1904456362007884772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm 2 (A055999 n) : ℚ) / 2⌉

end

end A217367.P1904456362007884772

noncomputable section

/-- A217367: a(n) = ((n+7) / gcd(n+7,4)) * (n / gcd(n,4)).

Offset 0, canonical program `A217367.P1904456362007884772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217367 (n : ℕ) : ℤ :=
  A217367.P1904456362007884772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217441.P1883656353977712437

`∑[n*(Δ[A042948(n)]+1)!]`
-/

namespace A217441.P1883656353977712437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217441.P1883656353977712437

noncomputable section

/-- A217441: Numbers k such that 26*k+1 is a square.

Offset 1, canonical program `A217441.P1883656353977712437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217441 (n : ℕ) : ℤ :=
  (A217441.P1883656353977712437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217467.P1457232228138321781

`val(A006882(abs(1-n)+2), abs(1-n)+2)`
-/

namespace A217467.P1457232228138321781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006882 (|1 - (n : ℤ)| + 2).toNat).toNat (|1 - (n : ℤ)| + 2).toNat

end

end A217467.P1457232228138321781

noncomputable section

/-- A217467: a(1) = 1; for n > 1, the maximum exponent k such that n^k divides the double factorial n!!.

Offset 1, canonical program `A217467.P1457232228138321781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A217467 (n : ℕ) : ℤ :=
  (A217467.P1457232228138321781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A217467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217588.P3017189928646110220

`∩[A142312(n+1), A142641(n+1)]`
-/

namespace A217588.P3017189928646110220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P3017189928646110220

noncomputable section

/-- A217588: Primes of the form 2520k + 1 for some k.

Offset 1, canonical program `A217588.P3017189928646110220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A217588 (n : ℕ) : ℤ :=
  (A217588.P3017189928646110220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A217588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217627.P16981509562900591611

`∑[A051801(n+1)]`
-/

namespace A217627.P16981509562900591611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P16981509562900591611

noncomputable section

/-- A217627: a(n) is the sum of the products of the nonzero digits of the numbers from 1 to n.

Offset 1, canonical program `A217627.P16981509562900591611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217627 (n : ℕ) : ℤ :=
  A217627.P16981509562900591611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217649.P16390829101275016253

`A006882(n)%A007661(n)`
-/

namespace A217649.P16390829101275016253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 n) (A007661 n)

end

end A217649.P16390829101275016253

noncomputable section

/-- A217649: a(n) = n!! mod n!!!

Offset 0, canonical program `A217649.P16390829101275016253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A217649 (n : ℕ) : ℤ :=
  A217649.P16390829101275016253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A217649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217657.P597514317876169782

`n%(10^A055642(n)/10)`
-/

namespace A217657.P597514317876169782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A055642 n : ℤ) / 10))

end

end A217657.P597514317876169782

noncomputable section

/-- A217657: Delete the initial digit in decimal representation of n.

Offset 0, canonical program `A217657.P597514317876169782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217657 (n : ℕ) : ℤ :=
  A217657.P597514317876169782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217663.P12322533064533179449

`A217662(n+3)/A217662(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217663.P12322533064533179449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217662 (n + 3) : ℚ) / (A217662 (n + 1) : ℚ) - 1

end

end A217663.P12322533064533179449

noncomputable section

/-- A217663: a(n) = A217662(n+2)/A217662(n) - 1, n > 0.

Offset 1, canonical program `A217663.P12322533064533179449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217663 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217663.P12322533064533179449.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217737.P14671918623670469399

`∑[A212804(n)]%∑[2*(n+1)]`
-/

namespace A217737.P14671918623670469399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A217737.P14671918623670469399

noncomputable section

/-- A217737: a(n) = Fibonacci(n) mod n*(n+1).

Offset 1, canonical program `A217737.P14671918623670469399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A217737 (n : ℕ) : ℤ :=
  A217737.P14671918623670469399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A217737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217871.P17885146011988318983

`2^ceil(A029837(n+1)/2)`
-/

namespace A217871.P17885146011988318983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(A029837 (n + 1) : ℚ) / 2⌉ : ℤ)

end

end A217871.P17885146011988318983

noncomputable section

/-- A217871: a(n)=b(n,1) where b(0,m)=m, b(n,m)=b(floor(n/4),m*2).

Offset 0, canonical program `A217871.P17885146011988318983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217871.P17885146011988318983.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218073.P7902754742167654911

`gcd(n, ∑[n])*A001405(n)`
-/

namespace A218073.P7902754742167654911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A001405 n

end

end A218073.P7902754742167654911

noncomputable section

/-- A218073: Number of profiles in domino tiling of a 2*n checkboard.

Offset 0, canonical program `A218073.P7902754742167654911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A218073 (n : ℕ) : ℤ :=
  A218073.P7902754742167654911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A218073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218172.P8365730826295416542

`A322462(eq[2, ∑{e}[A322462(n), #]])`
-/

namespace A218172.P8365730826295416542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218172.P8365730826295416542

noncomputable section

/-- A218172: Centered 12-gonal numbers which are semiprimes, intersection of A003154 and A001358.

Offset 1, canonical program `A218172.P8365730826295416542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A218172 (n : ℕ) : ℤ :=
  A218172.P8365730826295416542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A218172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218263.P8946944429989455353

`A000085(n+3)-A001405(n+3)`
-/

namespace A218263.P8946944429989455353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 3) - A001405 (n + 3)

end

end A218263.P8946944429989455353

noncomputable section

/-- A218263: Number of standard Young tableaux of n cells and height >= 3.

Offset 3, canonical program `A218263.P8946944429989455353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A218263 (n : ℕ) : ℤ :=
  A218263.P8946944429989455353.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A218263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218264.P18402228888344710293

`A000085(n+4)-A001006(n+4)`
-/

namespace A218264.P18402228888344710293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 4) - A001006 (n + 4)

end

end A218264.P18402228888344710293

noncomputable section

/-- A218264: Number of standard Young tableaux of n cells and height >= 4.

Offset 4, canonical program `A218264.P18402228888344710293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A218264 (n : ℕ) : ℤ :=
  A218264.P18402228888344710293.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A218264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218325.P7787996190507047253

`2*A015224(n+1)-A015220(n+1)`
-/

namespace A218325.P7787996190507047253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015224 (n + 1) - A015220 (n + 1)

end

end A218325.P7787996190507047253

noncomputable section

/-- A218325: Even heptagonal pyramidal numbers.

Offset 1, canonical program `A218325.P7787996190507047253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A218325 (n : ℕ) : ℤ :=
  A218325.P7787996190507047253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A218325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218329.P14084442383127146810

`A007584(A004772(n+2))`
-/

namespace A218329.P14084442383127146810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (A004772 (n + 2)).toNat

end

end A218329.P14084442383127146810

noncomputable section

/-- A218329: Even 9-gonal (nonagonal) pyramidal numbers.

Offset 1, canonical program `A218329.P14084442383127146810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A218329 (n : ℕ) : ℤ :=
  A218329.P14084442383127146810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A218329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218330.P182954802757501446

`A007585(or(1, n)+n)`
-/

namespace A218330.P182954802757501446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (Nat.lor 1 n + n)

end

end A218330.P182954802757501446

noncomputable section

/-- A218330: Odd decagonal pyramidal numbers.

Offset 1, canonical program `A218330.P182954802757501446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A218330 (n : ℕ) : ℤ :=
  A218330.P182954802757501446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A218330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218331.P7344082247993881640

`A007585(record[A092486(n)])`
-/

namespace A218331.P7344082247993881640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218331.P7344082247993881640

noncomputable section

/-- A218331: Even, nonzero decagonal pyramidal numbers.

Offset 1, canonical program `A218331.P7344082247993881640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218331 (n : ℕ) : ℤ :=
  A218331.P7344082247993881640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218394.P7522888270796541219

`A037453(Δ[n²])`
-/

namespace A218394.P7522888270796541219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218394.P7522888270796541219

noncomputable section

/-- A218394: Numbers such that sum(i<=n) binomial(n,i)*binomial(2*n-2*i, n-i) is not divisible by 5.

Offset 1, canonical program `A218394.P7522888270796541219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A218394 (n : ℕ) : ℤ :=
  A218394.P7522888270796541219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A218394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218516.P9593290001197156008

`A218051(2*(n+1))`
-/

namespace A218516.P9593290001197156008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (2 * (n + 1))

end

end A218516.P9593290001197156008

noncomputable section

/-- A218516: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random 0..3 n X 2 array.

Offset 1, canonical program `A218516.P9593290001197156008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A218516 (n : ℕ) : ℤ :=
  A218516.P9593290001197156008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A218516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218540.P16836144759603430934

`A025748(n)/A108411(n)`
-/

namespace A218540.P16836144759603430934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025748 n : ℚ) / (A108411 n : ℚ)

end

end A218540.P16836144759603430934

noncomputable section

/-- A218540: Reduced third-order Patalan numbers.

Offset 0, canonical program `A218540.P16836144759603430934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218540.P16836144759603430934.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219009.P4084313568037727888

`∑{d}[n+1, A007427(#)*A063775((n+1)/#)]`
-/

namespace A219009.P4084313568037727888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A063775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P4084313568037727888

noncomputable section

/-- A219009: Coefficients of the Dirichlet series for zeta(4s)/zeta(s).

Offset 1, canonical program `A219009.P4084313568037727888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009 (n : ℕ) : ℤ :=
  A219009.P4084313568037727888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219020.P3529369945446315530

`∑[A215466(n+1)]`
-/

namespace A219020.P3529369945446315530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219020.P3529369945446315530

noncomputable section

/-- A219020: Sum of the cubes of the first n even-indexed Fibonacci numbers divided by the sum of the first n terms.

Offset 1, canonical program `A219020.P3529369945446315530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A219020 (n : ℕ) : ℤ :=
  A219020.P3529369945446315530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A219020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219115.P3938868494519214556

`lt[A039966(round(and(-2, n²)/3)), 1]`
-/

namespace A219115.P3938868494519214556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (SequenceMachineLib.roundAway ((Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219115.P3938868494519214556

noncomputable section

/-- A219115: Numbers whose squares have at least one 1 and one 2 in ternary representation.

Offset 1, canonical program `A219115.P3938868494519214556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A219115 (n : ℕ) : ℤ :=
  (A219115.P3938868494519214556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A219115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184737.P17691551374496734365

`∑[p?[2-Δ[A327256(n)]]]`
-/

namespace A184737.P17691551374496734365
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184737.P17691551374496734365

noncomputable section

/-- A184737: a(n) = floor(n*s+h-h*s), where s=-1+2^(3/2), h=-1/2; complement of A184736.

Offset 1, canonical program `A184737.P17691551374496734365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A184737 (n : ℕ) : ℤ :=
  A184737.P17691551374496734365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A184737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184809.P18042801614621916409

`A277644(n+1)+1+n`
-/

namespace A184809.P18042801614621916409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + 1 + (n : ℤ)

end

end A184809.P18042801614621916409

noncomputable section

/-- A184809: a(n) = n + floor(sqrt(3/2)*n).

Offset 1, canonical program `A184809.P18042801614621916409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184809 (n : ℕ) : ℤ :=
  A184809.P18042801614621916409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185015.P8568089362200605037

`A185115(n)-A185116(n)`
-/

namespace A185015.P8568089362200605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 n - A185116 n

end

end A185015.P8568089362200605037

noncomputable section

/-- A185015: Characteristic function of 5.

Offset 0, canonical program `A185015.P8568089362200605037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, A185116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185015 (n : ℕ) : ℤ :=
  A185015.P8568089362200605037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, A185116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185016.P15635717452489970801

`A185116(n)-A185117(n)`
-/

namespace A185016.P15635717452489970801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 n - A185117 n

end

end A185016.P15635717452489970801

noncomputable section

/-- A185016: Characteristic function of 6.

Offset 0, canonical program `A185016.P15635717452489970801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185116, A185117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185016 (n : ℕ) : ℤ :=
  A185016.P15635717452489970801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185116, A185117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185017.P17290526473514130814

`A185117(n)-A185118(n)`
-/

namespace A185017.P17290526473514130814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n - A185118 n

end

end A185017.P17290526473514130814

noncomputable section

/-- A185017: Characteristic function of 7.

Offset 0, canonical program `A185017.P17290526473514130814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185117, A185118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185017 (n : ℕ) : ℤ :=
  A185017.P17290526473514130814.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185117, A185118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185017.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185138.P1014935391464103176

`3*A208950(n)/A109613(n)`
-/

namespace A185138.P1014935391464103176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A208950 n : ℚ) / (A109613 n : ℚ)

end

end A185138.P1014935391464103176

noncomputable section

/-- A185138: a(4*n) = n*(4*n-1); a(2*n+1) = n*(n+1)/2; a(4*n+2) = (2*n+1)*(4*n+1).

Offset 0, canonical program `A185138.P1014935391464103176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185138.P1014935391464103176.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186159.P16162331322285445235

`comp[A186274(n+1)-1]+1`
-/

namespace A186159.P16162331322285445235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186274 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186159.P16162331322285445235

noncomputable section

/-- A186159: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and octagonal numbers. Complement of A186274.

Offset 1, canonical program `A186159.P16162331322285445235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186159 (n : ℕ) : ℤ :=
  (A186159.P16162331322285445235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186237.P13313159862021497232

`comp[A186238(n+1)-1]+1`
-/

namespace A186237.P13313159862021497232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186238 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186237.P13313159862021497232

noncomputable section

/-- A186237: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers (A000217) and heptagonal numbers (A000566). Complement of A186238.

Offset 1, canonical program `A186237.P13313159862021497232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186237 (n : ℕ) : ℤ :=
  (A186237.P13313159862021497232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186322.P17281344190024078444

`comp[A186323(n+1)-1]+1`
-/

namespace A186322.P17281344190024078444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186323 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186322.P17281344190024078444

noncomputable section

/-- A186322: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186323.

Offset 1, canonical program `A186322.P17281344190024078444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186322 (n : ℕ) : ℤ :=
  (A186322.P17281344190024078444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186513.P11653591617409960415

`comp[A186514(n+1)-1]+1`
-/

namespace A186513.P11653591617409960415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186513.P11653591617409960415

noncomputable section

/-- A186513: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186514.

Offset 1, canonical program `A186513.P11653591617409960415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186513 (n : ℕ) : ℤ :=
  (A186513.P11653591617409960415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188212.P3002002980398510572

`A188334(n+1)+A188334(n+2)-A188182(n+2)`
-/

namespace A188212.P3002002980398510572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188334 (n + 1) + (A188334 (n + 2) - A188182 (n + 2))

end

end A188212.P3002002980398510572

noncomputable section

/-- A188212: Number of nondecreasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero.

Offset 1, canonical program `A188212.P3002002980398510572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188212 (n : ℕ) : ℤ :=
  A188212.P3002002980398510572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188382.P3659492333739796096

`A306362(n+2)`
-/

namespace A188382.P3659492333739796096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306362 (n + 2)

end

end A188382.P3659492333739796096

noncomputable section

/-- A188382: Primes of the form 8*n^2 + 2*n + 1.

Offset 1, canonical program `A188382.P3659492333739796096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188382 (n : ℕ) : ℤ :=
  A188382.P3659492333739796096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189024.P17478436434097569227

`A230980(n+1)-A230980(A028391(n))`
-/

namespace A189024.P17478436434097569227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A230980 (A028391 n).toNat

end

end A189024.P17478436434097569227

noncomputable section

/-- A189024: Number of primes in the range (n - sqrt(n), n].

Offset 1, canonical program `A189024.P17478436434097569227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A189024 (n : ℕ) : ℤ :=
  A189024.P17478436434097569227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A189024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189368.P13084635368093636743

`A277644(n+1)+A003151(n+1)`
-/

namespace A189368.P13084635368093636743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + A003151 (n + 1)

end

end A189368.P13084635368093636743

noncomputable section

/-- A189368: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189368.P13084635368093636743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189368 (n : ℕ) : ℤ :=
  A189368.P13084635368093636743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189532.P5408323124899786761

`A182774(n+1)+A004526(A347792(n+1))`
-/

namespace A189532.P5408323124899786761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (n + 1) + A004526 (A347792 (n + 1)).toNat

end

end A189532.P5408323124899786761

noncomputable section

/-- A189532: n+[nr/t]+[ns/t]; r=1, s=2^(1/3), t=2^(2/3).

Offset 1, canonical program `A189532.P5408323124899786761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A189532 (n : ℕ) : ℤ :=
  A189532.P5408323124899786761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A189532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189629.P4801279269901383408

`ceil(A284884(n+1)/2)`
-/

namespace A189629.P4801279269901383408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284884 (n + 1) : ℚ) / 2⌉

end

end A189629.P4801279269901383408

noncomputable section

/-- A189629: Positions of 0 in A189628; complement of A189630.

Offset 1, canonical program `A189629.P4801279269901383408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189629 (n : ℕ) : ℤ :=
  A189629.P4801279269901383408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189669.P962645693037667387

`comp[A285353(n+1)]+1`
-/

namespace A189669.P962645693037667387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189669.P962645693037667387

noncomputable section

/-- A189669: Positions of 0 in A189668; complement of A189679.

Offset 1, canonical program `A189669.P962645693037667387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189669 (n : ℕ) : ℤ :=
  (A189669.P962645693037667387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189676.P6179162907144615429

`2*A189681(n+1)`
-/

namespace A189676.P6179162907144615429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189681 (n + 1)

end

end A189676.P6179162907144615429

noncomputable section

/-- A189676: a(n) = n + [nr/s] + [nt/s]; r=Pi/2, s=arcsin(3/5), t=arcsin(4/5).

Offset 1, canonical program `A189676.P6179162907144615429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189676 (n : ℕ) : ℤ :=
  A189676.P6179162907144615429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189680.P3777239921965360716

`2*A189682(n+1)`
-/

namespace A189680.P3777239921965360716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189682 (n + 1)

end

end A189680.P3777239921965360716

noncomputable section

/-- A189680: a(n) = n + [nr/t] + [ns/t]; r=Pi/2, s=arcsin(3/5), t=arcsin(4/5).

Offset 1, canonical program `A189680.P3777239921965360716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189680 (n : ℕ) : ℤ :=
  A189680.P3777239921965360716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189706.P18258736543789234630

`xor(A116178(n), A356982(n+1))`
-/

namespace A189706.P18258736543789234630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116178 n) (A356982 (n + 1))

end

end A189706.P18258736543789234630

noncomputable section

/-- A189706: Fixed point of the morphism 0->011, 1->001.

Offset 1, canonical program `A189706.P18258736543789234630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189706 (n : ℕ) : ℤ :=
  A189706.P18258736543789234630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189715.P10799637755699722149

`record[(n+1)*xor(A189718(n+1), A189718(n))]`
-/

namespace A189715.P10799637755699722149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor (A189718 (n + 1)) (A189718 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189715.P10799637755699722149

noncomputable section

/-- A189715: Numbers k such that A156595(k-1) = 0; complement of A189716.

Offset 1, canonical program `A189715.P10799637755699722149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A189715 (n : ℕ) : ℤ :=
  A189715.P10799637755699722149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A189715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189785.P16525094477726922721

`2*A189787(n+1)`
-/

namespace A189785.P16525094477726922721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189787 (n + 1)

end

end A189785.P16525094477726922721

noncomputable section

/-- A189785: a(n) = n+floor(n*r/s)+floor(nt/s); r=Pi/2, s=arcsin(5/13), t=arcsin(12/13).

Offset 1, canonical program `A189785.P16525094477726922721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189785 (n : ℕ) : ℤ :=
  A189785.P16525094477726922721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190366.P10941599816658715013

`A277644(floor((n+1)/(3-sqrt(6))))+A002264(n+1)`
-/

namespace A190366.P10941599816658715013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋.toNat + A002264 (n + 1)

end

end A190366.P10941599816658715013

noncomputable section

/-- A190366: n + [n*r/t] + [n*s/t] + [n*u/t]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

Offset 1, canonical program `A190366.P10941599816658715013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A190366 (n : ℕ) : ℤ :=
  A190366.P10941599816658715013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A190366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190428.P8313817222985090579

`A190430(n+1)+A005653(n+1)`
-/

namespace A190428.P8313817222985090579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190430 (n + 1) + A005653 (n + 1)

end

end A190428.P8313817222985090579

noncomputable section

/-- A190428: Positions of 0 in A190427.

Offset 1, canonical program `A190428.P8313817222985090579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190428 (n : ℕ) : ℤ :=
  A190428.P8313817222985090579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190546.P18353312944459851782

`∩[A064437(n+1), A327258(n+1)]`
-/

namespace A190546.P18353312944459851782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P18353312944459851782

noncomputable section

/-- A190546: Positions of 1 in A190544.

Offset 1, canonical program `A190546.P18353312944459851782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190546 (n : ℕ) : ℤ :=
  (A190546.P18353312944459851782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190548.P15034322769941778833

`∩[A003151(n+1), A327258(n+1)]`
-/

namespace A190548.P15034322769941778833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P15034322769941778833

noncomputable section

/-- A190548: Positions of 3 in A190544.

Offset 1, canonical program `A190548.P15034322769941778833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A190548 (n : ℕ) : ℤ :=
  (A190548.P15034322769941778833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A190548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190623.P14402009872277269755

`(n+1)*((n+1)²-A195938(n+1)²)`
-/

namespace A190623.P14402009872277269755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) - A195938 (n + 1) ^ 2)

end

end A190623.P14402009872277269755

noncomputable section

/-- A190623: Mobius transform of A008457.

Offset 1, canonical program `A190623.P14402009872277269755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190623 (n : ℕ) : ℤ :=
  A190623.P14402009872277269755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190847.P16688717561457991775

`comp[A190860(n+1)-1]+1`
-/

namespace A190847.P16688717561457991775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190860 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190847.P16688717561457991775

noncomputable section

/-- A190847: Positions of 0 in A190843; complement of A190860.

Offset 1, canonical program `A190847.P16688717561457991775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190847 (n : ℕ) : ℤ :=
  (A190847.P16688717561457991775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191630.P7214703744448698648

`floor(A191631(n+2)/2)`
-/

namespace A191630.P7214703744448698648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191631 (n + 2) : ℚ) / 2⌋

end

end A191630.P7214703744448698648

noncomputable section

/-- A191630: a(n) = floor((-1 + 2^n)/(1 + 2*n)).

Offset 1, canonical program `A191630.P7214703744448698648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A191630 (n : ℕ) : ℤ :=
  A191630.P7214703744448698648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A191630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192355.P15537123112185287949

`A001045(record[abs(xor(1, n-2))])-A287479(2*n)`
-/

namespace A192355.P15537123112185287949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A287479 (2 * n)

end

end A192355.P15537123112185287949

noncomputable section

/-- A192355: Constant term of the reduction of the polynomial p(n,x)=(1/2)((x+2)^n+(x-2)^n) by x^2->x+2.

Offset 1, canonical program `A192355.P15537123112185287949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A192355 (n : ℕ) : ℤ :=
  A192355.P15537123112185287949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A192355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192846.P3220457710180547579

`A010694(n)*A295388(n+1)`
-/

namespace A192846.P3220457710180547579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n * A295388 (n + 1)

end

end A192846.P3220457710180547579

noncomputable section

/-- A192846: Molecular topological indices of the sunlet graphs.

Offset 1, canonical program `A192846.P3220457710180547579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192846 (n : ℕ) : ℤ :=
  A192846.P3220457710180547579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193238.P10325099849022998101

`∑{digits}[n, A302048(#²)]`
-/

namespace A193238.P10325099849022998101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A302048 (x ^ 2)).sum

end

end A193238.P10325099849022998101

noncomputable section

/-- A193238: Number of prime digits in decimal representation of n.

Offset 0, canonical program `A193238.P10325099849022998101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193238 (n : ℕ) : ℤ :=
  A193238.P10325099849022998101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193767.P5592351922628827648

`4*(n+1)-A193768(n+1)`
-/

namespace A193767.P5592351922628827648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A193768 (n + 1)

end

end A193767.P5592351922628827648

noncomputable section

/-- A193767: The number of dominoes in a largest saturated domino covering of the 4 by n board.

Offset 1, canonical program `A193767.P5592351922628827648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193767 (n : ℕ) : ℤ :=
  A193767.P5592351922628827648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194381.P1450577894410993002

`record[(n+1)%∑[2*A327256(n+1)]]`
-/

namespace A194381.P1450577894410993002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194381.P1450577894410993002

noncomputable section

/-- A194381: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(8) and < > denotes fractional part.

Offset 1, canonical program `A194381.P1450577894410993002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2131 terms. -/
def A194381 (n : ℕ) : ℤ :=
  A194381.P1450577894410993002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2131 terms. -/
def A194381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194650.P4895385161615893810

`A201236(n+1)-A004273(n)*(n+1)`
-/

namespace A194650.P4895385161615893810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201236 (n + 1) - A004273 n * (n + 1 : ℤ)

end

end A194650.P4895385161615893810

noncomputable section

/-- A194650: Number of ways to place 2 nonattacking kings on an n X n cylindrical chessboard.

Offset 1, canonical program `A194650.P4895385161615893810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194650 (n : ℕ) : ℤ :=
  A194650.P4895385161615893810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196368.P18374446714332484241

`C(A351868(n), n)`
-/

namespace A196368.P18374446714332484241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351868 n).toNat n

end

end A196368.P18374446714332484241

noncomputable section

/-- A196368: Characteristic function of numbers having in decimal representation only distinct adjacent digits.

Offset 0, canonical program `A196368.P18374446714332484241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196368 (n : ℕ) : ℤ :=
  (A196368.P18374446714332484241.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196563.P16420626303523653666

`A055642(n)-A196564(n)`
-/

namespace A196563.P16420626303523653666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A196564 n

end

end A196563.P16420626303523653666

noncomputable section

/-- A196563: Number of even digits in decimal representation of n.

Offset 0, canonical program `A196563.P16420626303523653666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A196563 (n : ℕ) : ℤ :=
  A196563.P16420626303523653666.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A196563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199094.P4555990867240067515

`ceil(A022916(A335129(n+4))/2)`
-/

namespace A199094.P4555990867240067515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022916 (A335129 (n + 4)).toNat : ℚ) / 2⌉

end

end A199094.P4555990867240067515

noncomputable section

/-- A199094: Number of nX1 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

Offset 1, canonical program `A199094.P4555990867240067515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A199094 (n : ℕ) : ℤ :=
  A199094.P4555990867240067515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A199094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199127.P12814231701045362921

`A022916(A335129(n+4))`
-/

namespace A199127.P12814231701045362921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022916 (A335129 (n + 4)).toNat

end

end A199127.P12814231701045362921

noncomputable section

/-- A199127: Number of n X 2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

Offset 1, canonical program `A199127.P12814231701045362921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A199127 (n : ℕ) : ℤ :=
  A199127.P12814231701045362921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A199127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199536.P8153872408465699561

`eq[1, A214211((2*n)%(n+2))]+n+1`
-/

namespace A199536.P8153872408465699561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 (2 * n % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A199536.P8153872408465699561

noncomputable section

/-- A199536: The first column in Clark Kimberling's even first column Stolarsky array (beginning column count at 1).

Offset 1, canonical program `A199536.P8153872408465699561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A199536 (n : ℕ) : ℤ :=
  (A199536.P8153872408465699561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A199536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199706.P16105507406723659083

`4*(A219054(n+1)+A002264(n+1))`
-/

namespace A199706.P16105507406723659083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A219054 (n + 1) + A002264 (n + 1))

end

end A199706.P16105507406723659083

noncomputable section

/-- A199706: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two neighbors equal.

Offset 1, canonical program `A199706.P16105507406723659083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199706 (n : ℕ) : ℤ :=
  A199706.P16105507406723659083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200866.P92281322605416657

`A218051(n+4)`
-/

namespace A200866.P92281322605416657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (n + 4)

end

end A200866.P92281322605416657

noncomputable section

/-- A200866: Number of 0..3 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

Offset 1, canonical program `A200866.P92281322605416657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A200866 (n : ℕ) : ℤ :=
  A200866.P92281322605416657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A200866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202785.P17274815764040657669

`A213556(n+1)+A093119(n+1)`
-/

namespace A202785.P17274815764040657669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) + A093119 (n + 1)

end

end A202785.P17274815764040657669

noncomputable section

/-- A202785: Number of 3 X 3 0..n arrays with row and column sums equal.

Offset 1, canonical program `A202785.P17274815764040657669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202785 (n : ℕ) : ℤ :=
  A202785.P17274815764040657669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203829.P4022856505637105064

`3*A223204(n+2)`
-/

namespace A203829.P4022856505637105064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223204 (n + 2)

end

end A203829.P4022856505637105064

noncomputable section

/-- A203829: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

Offset 1, canonical program `A203829.P4022856505637105064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A203829 (n : ℕ) : ℤ :=
  A203829.P4022856505637105064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A203829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204070.P10338910400716795253

`ceil(A223204(n+2)/2)`
-/

namespace A204070.P10338910400716795253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223204 (n + 2) : ℚ) / 2⌉

end

end A204070.P10338910400716795253

noncomputable section

/-- A204070: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

Offset 1, canonical program `A204070.P10338910400716795253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A204070 (n : ℕ) : ℤ :=
  A204070.P10338910400716795253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A204070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204504.P4243147778352618886

`A204512(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204504.P4243147778352618886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 1) ^ 2

end

end A204504.P4243147778352618886

noncomputable section

/-- A204504: A204512(n)^2 = floor[A055872(n)/8]: Squares such that appending some digit in base 8 yields another square.

Offset 1, canonical program `A204504.P4243147778352618886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204504 (n : ℕ) : ℤ :=
  A204504.P4243147778352618886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204696.P9995879390703459657

`8*floor(A007179(A289207(n))/2)`
-/

namespace A204696.P9995879390703459657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌊(A007179 (A289207 n).toNat : ℚ) / 2⌋

end

end A204696.P9995879390703459657

noncomputable section

/-- A204696: G.f.: (32*x^7/(1-2*x) + 16*x^5 + 24*x^6)/(1-2*x^2).

Offset 0, canonical program `A204696.P9995879390703459657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A204696 (n : ℕ) : ℤ :=
  A204696.P9995879390703459657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A204696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207724.P2247489829999310302

`sqrt(A207069(n+1))*sqrt(A207725(n+1))`
-/

namespace A207724.P2247489829999310302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) : ℝ) * Real.sqrt (A207725 (n + 1) : ℝ)

end

end A207724.P2247489829999310302

noncomputable section

/-- A207724: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

Offset 1, canonical program `A207724.P2247489829999310302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A207724 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207724.P2247489829999310302.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A207724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207947.P295523182385299301

`A218051(n+2)²`
-/

namespace A207947.P295523182385299301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (n + 2) ^ 2

end

end A207947.P295523182385299301

noncomputable section

/-- A207947: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207947.P295523182385299301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A207947 (n : ℕ) : ℤ :=
  A207947.P295523182385299301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A207947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208103.P14693043031936500014

`sqrt(A207436(n+1))*sqrt(A208104(n+1))`
-/

namespace A208103.P14693043031936500014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) : ℝ) * Real.sqrt (A208104 (n + 1) : ℝ)

end

end A208103.P14693043031936500014

noncomputable section

/-- A208103: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

Offset 1, canonical program `A208103.P14693043031936500014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A208103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208103.P14693043031936500014.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A208103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208347.P2115090520345899973

`Δ[A326339(2*n)+A130824(n)]`
-/

namespace A208347.P2115090520345899973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (2 * n) + A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208347.P2115090520345899973

noncomputable section

/-- A208347: Number of nX2 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

Offset 1, canonical program `A208347.P2115090520345899973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A208347 (n : ℕ) : ℤ :=
  A208347.P2115090520345899973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A208347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210302.P4480323240577882787

`A210397(n+1)-A210100(n+1)`
-/

namespace A210302.P4480323240577882787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210397 (n + 1) - A210100 (n + 1)

end

end A210302.P4480323240577882787

noncomputable section

/-- A210302: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

Offset 1, canonical program `A210302.P4480323240577882787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A210302 (n : ℕ) : ℤ :=
  A210302.P4480323240577882787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A210302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211114.P4923214750086786376

`A211476(n+1)+2`
-/

namespace A211114.P4923214750086786376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211476 (n + 1) + 2

end

end A211114.P4923214750086786376

noncomputable section

/-- A211114: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

Offset 1, canonical program `A211114.P4923214750086786376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211114 (n : ℕ) : ℤ :=
  A211114.P4923214750086786376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211275.P17918795795607819298

`A362059(n+1)-A181972(n+1)`
-/

namespace A211275.P17918795795607819298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1) - A181972 (n + 1)

end

end A211275.P17918795795607819298

noncomputable section

/-- A211275: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y <= floor(n/2).

Offset 1, canonical program `A211275.P17918795795607819298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211275 (n : ℕ) : ℤ :=
  A211275.P17918795795607819298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212838.P14930408340236803162

`round(sqrt(A212837(n+1)*A212839(n+1)))`
-/

namespace A212838.P14930408340236803162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A212837 (n + 1) * A212839 (n + 1) : ℝ))

end

end A212838.P14930408340236803162

noncomputable section

/-- A212838: Number of 0..n arrays of length 5 with 0 never adjacent to n.

Offset 1, canonical program `A212838.P14930408340236803162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212838 (n : ℕ) : ℤ :=
  A212838.P14930408340236803162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212971.P6573840531130706726

`A045991(n+1)-A212974(n)`
-/

namespace A212971.P6573840531130706726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (n + 1) - A212974 n

end

end A212971.P6573840531130706726

noncomputable section

/-- A212971: Number of triples (w,x,y) with all terms in {0,...,n} and w < floor((x+y)/3).

Offset 0, canonical program `A212971.P6573840531130706726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212971 (n : ℕ) : ℤ :=
  A212971.P6573840531130706726.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212973.P18418775507560985600

`(n+1)^3-A212974(n)`
-/

namespace A212973.P18418775507560985600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212974 n

end

end A212973.P18418775507560985600

noncomputable section

/-- A212973: Number of triples (w,x,y) with all terms in {0,...,n} and w <= floor((x+y)/3).

Offset 0, canonical program `A212973.P18418775507560985600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212973 (n : ℕ) : ℤ :=
  A212973.P18418775507560985600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213488.P16788360978038166980

`(n+1)^3-A213489(n)`
-/

namespace A213488.P16788360978038166980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213489 n

end

end A213488.P16788360978038166980

noncomputable section

/-- A213488: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| + |y-w| < w+x+y.

Offset 0, canonical program `A213488.P16788360978038166980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213489, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213488 (n : ℕ) : ℤ :=
  A213488.P16788360978038166980.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213489, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215281.P16017114585514079959

`A215360(A326178(n+1))`
-/

namespace A215281.P16017114585514079959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (A326178 (n + 1)).toNat

end

end A215281.P16017114585514079959

noncomputable section

/-- A215281: Primes congruent to {2, 3, 4} mod 17.

Offset 1, canonical program `A215281.P16017114585514079959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A215281 (n : ℕ) : ℤ :=
  A215281.P16017114585514079959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A215281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215371.P13171227302205384638

`∪[A215131(n+1), A215375(n+1)]`
-/

namespace A215371.P13171227302205384638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215371.P13171227302205384638

noncomputable section

/-- A215371: Primes congruent to {0, 2, 3, 5, 6} mod 13.

Offset 1, canonical program `A215371.P13171227302205384638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215371 (n : ℕ) : ℤ :=
  (A215371.P13171227302205384638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215372.P14661957278570695968

`∪[A215132(n+1), A215376(n+1)]`
-/

namespace A215372.P14661957278570695968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215372.P14661957278570695968

noncomputable section

/-- A215372: Primes congruent to {0, 2, 3, 5, 6} mod 17.

Offset 1, canonical program `A215372.P14661957278570695968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215372 (n : ℕ) : ℤ :=
  (A215372.P14661957278570695968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215373.P8247755041386393335

`∪[A215133(n+1), A215377(n+1)]`
-/

namespace A215373.P8247755041386393335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215373.P8247755041386393335

noncomputable section

/-- A215373: Primes congruent to {0, 2, 3, 5, 6} mod 19.

Offset 1, canonical program `A215373.P8247755041386393335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215373 (n : ℕ) : ℤ :=
  (A215373.P8247755041386393335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216099.P15034398000034203957

`A216164(n+2)`
-/

namespace A216099.P15034398000034203957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216164 (n + 2)

end

end A216099.P15034398000034203957

noncomputable section

/-- A216099: Period of powers of 3 mod 10^n.

Offset 1, canonical program `A216099.P15034398000034203957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216099 (n : ℕ) : ℤ :=
  A216099.P15034398000034203957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216884.P17864295657923968855

`A000040(A323048(n+1)+char[A323048(n+1)])`
-/

namespace A216884.P17864295657923968855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A323048 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A216884.P17864295657923968855

noncomputable section

/-- A216884: Primes p such that x^61 = 2 has a solution mod p.

Offset 1, canonical program `A216884.P17864295657923968855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A216884 (n : ℕ) : ℤ :=
  A216884.P17864295657923968855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A216884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218290.P1011226508361504062

`∩[A227793(n+1), A008706(n)]`
-/

namespace A218290.P1011226508361504062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218290.P1011226508361504062

noncomputable section

/-- A218290: Multiples of 5 such that the sum of their digits is also a multiple of 5.

Offset 1, canonical program `A218290.P1011226508361504062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A218290 (n : ℕ) : ℤ :=
  (A218290.P1011226508361504062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A218290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184390.P5275387814831515097

`A000217(A007955(n+1))`
-/

namespace A184390.P5275387814831515097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007955 (n + 1)).toNat

end

end A184390.P5275387814831515097

noncomputable section

/-- A184390: a(n) = sum of numbers from 1 to pi(n), where pi(n) = A007955(n).

Offset 1, canonical program `A184390.P5275387814831515097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184390 (n : ℕ) : ℤ :=
  A184390.P5275387814831515097.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184391.P2181629435017711796

`A007955(n+1)!`
-/

namespace A184391.P2181629435017711796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007955 (n + 1)).toNat

end

end A184391.P2181629435017711796

noncomputable section

/-- A184391: a(n) = product of numbers from 1 to A007955(n).

Offset 1, canonical program `A184391.P2181629435017711796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184391 (n : ℕ) : ℤ :=
  (A184391.P2181629435017711796.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184779.P1472640870444816487

`A000720(A184777(n+1))`
-/

namespace A184779.P1472640870444816487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184777 (n + 1)).toNat

end

end A184779.P1472640870444816487

noncomputable section

/-- A184779: Numbers m such that prime(m) is of the form 2k + floor(k*sqrt(2)); complement of A184776.

Offset 1, canonical program `A184779.P1472640870444816487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2852 terms. -/
def A184779 (n : ℕ) : ℤ :=
  A184779.P1472640870444816487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2852 terms. -/
def A184779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184793.P9825854891666558465

`A000720(A095280(n+1))`
-/

namespace A184793.P9825854891666558465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095280 (n + 1)).toNat

end

end A184793.P9825854891666558465

noncomputable section

/-- A184793: Numbers m such that prime(m) is of the form floor(k*r), where r=(1+sqrt(5))/2; complement of A180736.

Offset 1, canonical program `A184793.P9825854891666558465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A184793 (n : ℕ) : ℤ :=
  A184793.P9825854891666558465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A184793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184798.P13188937388461352414

`A000720(A184796(n+1))`
-/

namespace A184798.P13188937388461352414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184796 (n + 1)).toNat

end

end A184798.P13188937388461352414

noncomputable section

/-- A184798: Numbers m such that prime(m) is of the form floor(k*sqrt(3)); complement of A184801.

Offset 1, canonical program `A184798.P13188937388461352414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5514 terms. -/
def A184798 (n : ℕ) : ℤ :=
  A184798.P13188937388461352414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5514 terms. -/
def A184798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184855.P8976664609453704411

`A000720(A077545(n+1))`
-/

namespace A184855.P8976664609453704411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077545 (n + 1)).toNat

end

end A184855.P8976664609453704411

noncomputable section

/-- A184855: Numbers m such that prime(m) is of the form (k*e); complement of A184858.

Offset 1, canonical program `A184855.P8976664609453704411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3563 terms. -/
def A184855 (n : ℕ) : ℤ :=
  A184855.P8976664609453704411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3563 terms. -/
def A184855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184867.P12412138484424509341

`A000720(A184865(n+1))`
-/

namespace A184867.P12412138484424509341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184865 (n + 1)).toNat

end

end A184867.P12412138484424509341

noncomputable section

/-- A184867: Numbers m such that prime(m) is of the form floor(1/2+k*sqrt(2)). Complement of A184870.

Offset 1, canonical program `A184867.P12412138484424509341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6775 terms. -/
def A184867 (n : ℕ) : ℤ :=
  A184867.P12412138484424509341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6775 terms. -/
def A184867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186083.P13615355468121439967

`eq[1, char[A161903(n)]]`
-/

namespace A186083.P13615355468121439967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161903 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186083.P13615355468121439967

noncomputable section

/-- A186083: Values taken by A161903, sorted and duplicates removed.

Offset 1, canonical program `A186083.P13615355468121439967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A186083 (n : ℕ) : ℤ :=
  (A186083.P13615355468121439967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A186083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186302.P17475383867491687271

`(A007522(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186302.P17475383867491687271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) - 1 : ℚ) / 2

end

end A186302.P17475383867491687271

noncomputable section

/-- A186302: a(n) = ( A007522(n)-1 )/2.

Offset 1, canonical program `A186302.P17475383867491687271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186302 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186302.P17475383867491687271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186304.P15915226160515621966

`A007522(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186304.P15915226160515621966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) - 2

end

end A186304.P15915226160515621966

noncomputable section

/-- A186304: a(n) = A007522(n) - 2.

Offset 1, canonical program `A186304.P15915226160515621966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186304 (n : ℕ) : ℤ :=
  A186304.P15915226160515621966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189835.P10100538785749668856

`A001157(n+1)-A038040(n+1)`
-/

namespace A189835.P10100538785749668856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A038040 (n + 1)

end

end A189835.P10100538785749668856

noncomputable section

/-- A189835: Number of representations of n as a*b + b*c + c*d + d*e where a, b, d, e>0, c>=0 are integers.

Offset 1, canonical program `A189835.P10100538785749668856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A038040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189835 (n : ℕ) : ℤ :=
  A189835.P10100538785749668856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A038040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189835.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191257.P3519043626035016268

`A067368(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191257.P3519043626035016268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067368 (n + 1) : ℚ) / 2

end

end A191257.P3519043626035016268

noncomputable section

/-- A191257: a(n) = A067368(n)/2.

Offset 1, canonical program `A191257.P3519043626035016268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067368, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A191257.P3519043626035016268.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067368, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195155.P6480177575131545009

`1+A129308(n+1)`
-/

namespace A195155.P6480177575131545009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A129308 (n + 1)

end

end A195155.P6480177575131545009

noncomputable section

/-- A195155: Number of divisors d of n such that d-1 also divides n or d-1 = 0.

Offset 1, canonical program `A195155.P6480177575131545009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195155 (n : ℕ) : ℤ :=
  A195155.P6480177575131545009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195155.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199323.P1063649753707065066

`Δ[A000720((n+1)²+abs(1-n))]`
-/

namespace A199323.P1063649753707065066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((n + 1) ^ 2 : ℤ) + |1 - (n : ℤ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199323.P1063649753707065066

noncomputable section

/-- A199323: Number of primes of the form n*(n+1)+2*k-3 with k from 1 to n+1.

Offset 1, canonical program `A199323.P1063649753707065066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A199323 (n : ℕ) : ℤ :=
  A199323.P1063649753707065066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A199323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201816.P5067483426122242254

`lt[A001221(A082369(3*n+1)), 2]`
-/

namespace A201816.P5067483426122242254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A082369 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201816.P5067483426122242254

noncomputable section

/-- A201816: Numbers k such that 90*k + 13 is prime.

Offset 1, canonical program `A201816.P5067483426122242254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A201816 (n : ℕ) : ℤ :=
  (A201816.P5067483426122242254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A201816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204455.P9449319865665436464

`A099985(n+1)/2`
-/

namespace A204455.P9449319865665436464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 (n + 1) : ℚ) / 2

end

end A204455.P9449319865665436464

noncomputable section

/-- A204455: Squarefree product of all odd primes dividing n, and 1 if n is a power of 2: A099985/2.

Offset 1, canonical program `A204455.P9449319865665436464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204455.P9449319865665436464.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204557.P11085446517151074550

`A204556(n+1)+A045895(n+1)`
-/

namespace A204557.P11085446517151074550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204556 (n + 1) + A045895 (n + 1)

end

end A204557.P11085446517151074550

noncomputable section

/-- A204557: Right edge of the triangle A045975.

Offset 1, canonical program `A204557.P11085446517151074550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045895, A204556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A204557 (n : ℕ) : ℤ :=
  A204557.P11085446517151074550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045895, A204556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A204557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206424.P17237868033879064005

`A109168(A006047(n))`
-/

namespace A206424.P17237868033879064005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A006047 n).toNat

end

end A206424.P17237868033879064005

noncomputable section

/-- A206424: The number of 1's in row n of Pascal's Triangle (mod 3).

Offset 0, canonical program `A206424.P17237868033879064005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206424 (n : ℕ) : ℤ :=
  A206424.P17237868033879064005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207005.P8295083017489759373

`eq[A001221(n+1-A001221(n+1)), A001221(n+1)]+1`
-/

namespace A207005.P8295083017489759373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) - A001221 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207005.P8295083017489759373

noncomputable section

/-- A207005: Numbers k such that omega(k) = omega(k - omega(k)) where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A207005.P8295083017489759373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207005 (n : ℕ) : ℤ :=
  (A207005.P8295083017489759373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207006.P17524923869019092889

`eq[A001221(A001221(n+1)+n+1), A001221(n+1)]+1`
-/

namespace A207006.P17524923869019092889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001221 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207006.P17524923869019092889

noncomputable section

/-- A207006: Numbers n such that omega(n) = omega(n + omega(n)) where omega(n) is the number of distinct primes dividing n.

Offset 1, canonical program `A207006.P17524923869019092889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207006 (n : ℕ) : ℤ :=
  (A207006.P17524923869019092889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208902.P18424443065452397028

`A208900(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A208902.P18424443065452397028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A208900 n + 2 * a (n - 1)

end

end A208902.P18424443065452397028

noncomputable section

/-- A208902: The sum over all bitstrings b of length n of the number of runs in b not immediately followed by a longer run.

Offset 1, canonical program `A208902.P18424443065452397028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A208902 (n : ℕ) : ℤ :=
  A208902.P18424443065452397028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A208902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209628.P4452300889567289903

`A013928(n+2)-A000720(n+1)`
-/

namespace A209628.P4452300889567289903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A000720 (n + 1)

end

end A209628.P4452300889567289903

noncomputable section

/-- A209628: Number of squarefree numbers < n that are not prime.

Offset 1, canonical program `A209628.P4452300889567289903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A209628 (n : ℕ) : ℤ :=
  A209628.P4452300889567289903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A209628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210518.P1998245345614669449

`A000720(A018072(n))`
-/

namespace A210518.P1998245345614669449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018072 n).toNat

end

end A210518.P1998245345614669449

noncomputable section

/-- A210518: Number of primes up to 10^(n/4).

Offset 0, canonical program `A210518.P1998245345614669449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210518 (n : ℕ) : ℤ :=
  A210518.P1998245345614669449.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212014.P14698386297870251282

`2*A212013(n+1)`
-/

namespace A212014.P14698386297870251282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212013 (n + 1)

end

end A212014.P14698386297870251282

noncomputable section

/-- A212014: Total number of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

Offset 1, canonical program `A212014.P14698386297870251282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212014 (n : ℕ) : ℤ :=
  A212014.P14698386297870251282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212164.P17151163733821615941

`lt[A001221(n+1), A051903(n+1)]+1`
-/

namespace A212164.P17151163733821615941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212164.P17151163733821615941

noncomputable section

/-- A212164: Numbers k such that the maximum exponent in its prime factorization is greater than the number of positive exponents (A051903(k) > A001221(k)).

Offset 1, canonical program `A212164.P17151163733821615941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A212164 (n : ℕ) : ℤ :=
  (A212164.P17151163733821615941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A212164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212165.P325953888853094015

`lt[A001221(n+1)-A051903(n+1), 1]+1`
-/

namespace A212165.P325953888853094015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212165.P325953888853094015

noncomputable section

/-- A212165: Numbers k such that the maximum exponent in its prime factorization is not less than the number of positive exponents (A051903(k) >= A001221(k)).

Offset 1, canonical program `A212165.P325953888853094015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212165 (n : ℕ) : ℤ :=
  (A212165.P325953888853094015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212166.P9615223934233399891

`eq[A001221(n+1), A051903(n+1)]+1`
-/

namespace A212166.P9615223934233399891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212166.P9615223934233399891

noncomputable section

/-- A212166: Numbers k such that the maximum exponent in its prime factorization equals the number of positive exponents (A051903(k) = A001221(k)).

Offset 1, canonical program `A212166.P9615223934233399891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212166 (n : ℕ) : ℤ :=
  (A212166.P9615223934233399891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212168.P13428896127998377424

`lt[A051903(n+1), A001221(n+1)]+1`
-/

namespace A212168.P13428896127998377424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212168.P13428896127998377424

noncomputable section

/-- A212168: Numbers n such that the maximal exponent in its prime factorization is less than the number of positive exponents (A051903(n) < A001221(n)).

Offset 1, canonical program `A212168.P13428896127998377424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212168 (n : ℕ) : ℤ :=
  (A212168.P13428896127998377424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213258.P18308358314319043973

`2*A067368(n+1)`
-/

namespace A213258.P18308358314319043973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067368 (n + 1)

end

end A213258.P18308358314319043973

noncomputable section

/-- A213258: Positive integers that are not in A213257.

Offset 1, canonical program `A213258.P18308358314319043973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067368, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213258 (n : ℕ) : ℤ :=
  A213258.P18308358314319043973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067368, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213482.P5731546180902090339

`A213481(n)-A213479(n)`
-/

namespace A213482.P5731546180902090339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213481 n - A213479 n

end

end A213482.P5731546180902090339

noncomputable section

/-- A213482: Number of (w,x,y) with all terms in {0,...,n} and |w-x| + |x-y| > w+x+y.

Offset 0, canonical program `A213482.P5731546180902090339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213482 (n : ℕ) : ℤ :=
  A213482.P5731546180902090339.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213487.P15011572215243745023

`(n+1)^3-A213486(n)`
-/

namespace A213487.P15011572215243745023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213486 n

end

end A213487.P15011572215243745023

noncomputable section

/-- A213487: Number of (w,x,y) with all terms in {0,...,n} and |w-x|+|x-y|+|y-w| <= w+x+y.

Offset 0, canonical program `A213487.P15011572215243745023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213486, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213487 (n : ℕ) : ℤ :=
  A213487.P15011572215243745023.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213486, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216918.P12965838950278040036

`2*lt[2, A001221(2*n+1)]+1`
-/

namespace A216918.P12965838950278040036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216918.P12965838950278040036

noncomputable section

/-- A216918: Odd numbers with at least 3 distinct prime factors.

Offset 1, canonical program `A216918.P12965838950278040036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216918 (n : ℕ) : ℤ :=
  (A216918.P12965838950278040036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187793.P5149541496451924796

`∑{d}[n+1, #*A294934(#)]`
-/

namespace A187793.P5149541496451924796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A294934 d

end

end A187793.P5149541496451924796

noncomputable section

/-- A187793: Sum of the deficient divisors of n.

Offset 1, canonical program `A187793.P5149541496451924796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187793 (n : ℕ) : ℤ :=
  A187793.P5149541496451924796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195051.P18438885235450998814

`2*A195052(n+1)`
-/

namespace A195051.P18438885235450998814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195052 (n + 1)

end

end A195051.P18438885235450998814

noncomputable section

/-- A195051: Number of divisors of 24*n - 1.

Offset 1, canonical program `A195051.P18438885235450998814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195051 (n : ℕ) : ℤ :=
  A195051.P18438885235450998814.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204826.P13570114763670408631

`filter[A028982(n+1), A294934(#)]`
-/

namespace A204826.P13570114763670408631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A204826.P13570114763670408631

noncomputable section

/-- A204826: Deficient numbers with odd sum of divisors.

Offset 1, canonical program `A204826.P13570114763670408631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A204826 (n : ℕ) : ℤ :=
  A204826.P13570114763670408631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A204826.provenance : SequenceMachineLib.Provenance := .conjectured

