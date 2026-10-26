import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A319697.P10360673897274092248

`A048250(n+1)-A206787(n+1)`
-/

namespace A319697.P10360673897274092248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A206787 (n + 1)

end

end A319697.P10360673897274092248

noncomputable section

/-- A319697: Sum of even squarefree divisors of n.

Offset 1, canonical program `A319697.P10360673897274092248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319697 (n : ℕ) : ℤ :=
  A319697.P10360673897274092248.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324659.P451335093830536093

`A318468(n+1)/2`
-/

namespace A324659.P451335093830536093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318468 (n + 1) : ℚ) / 2

end

end A324659.P451335093830536093

noncomputable section

/-- A324659: a(n) = (1/2)*A318468(n), where A318468(n) is bitwise-AND of 2*n and sigma(n).

Offset 1, canonical program `A324659.P451335093830536093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324659.P451335093830536093.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326046.P12649065929944989809

`gcd(n+1-A326039(n+1), A326040(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326046.P12649065929944989809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A326039 (n + 1)) (A326040 (n + 1) - (n + 1 : ℤ))

end

end A326046.P12649065929944989809

noncomputable section

/-- A326046: a(n) = gcd(n-A326039(n), A326040(n)-n).

Offset 1, canonical program `A326046.P12649065929944989809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326046 (n : ℕ) : ℤ :=
  (A326046.P12649065929944989809.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326054.P11521875358712095530

`A326053(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326054.P11521875358712095530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326053 (n + 1) - (n + 1 : ℤ)

end

end A326054.P11521875358712095530

noncomputable section

/-- A326054: a(n) = A326053(n) - n, where A326053 gives the sum of all other divisors of n except the largest square divisor.

Offset 1, canonical program `A326054.P11521875358712095530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326054 (n : ℕ) : ℤ :=
  A326054.P11521875358712095530.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326129.P16648833890386583116

`gcd(A326127(n+1), A326128(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326129.P16648833890386583116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326127 (n + 1)) (A326128 (n + 1))

end

end A326129.P16648833890386583116

noncomputable section

/-- A326129: a(n) = gcd(A326127(n), A326128(n)).

Offset 1, canonical program `A326129.P16648833890386583116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326129 (n : ℕ) : ℤ :=
  (A326129.P16648833890386583116.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A328366.P4444315487186983068

`2*A299692(n+1)`
-/

namespace A328366.P4444315487186983068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299692 (n + 1)

end

end A328366.P4444315487186983068

noncomputable section

/-- A328366: a(n) is the surface area of the stepped pyramid with n levels described in A245092.

Offset 1, canonical program `A328366.P4444315487186983068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328366 (n : ℕ) : ℤ :=
  A328366.P4444315487186983068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334907.P12812039533966240543

`n!*A001790(2*n+1)/A060818(n)`
-/

namespace A334907.P12812039533966240543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A001790 (2 * n + 1) : ℚ) / (A060818 n : ℚ)

end

end A334907.P12812039533966240543

noncomputable section

/-- A334907: Comtet's expansion of the e.g.f. (sqrt(1 + sqrt(8*s)) - sqrt(1 - sqrt(8*s)))/ sqrt(8*s * (1 - 8*s)).

Offset 0, canonical program `A334907.P12812039533966240543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334907 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334907.P12812039533966240543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336564.P7523591857433776956

`n+1-A308135(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336564.P7523591857433776956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A308135 (n + 1)

end

end A336564.P7523591857433776956

noncomputable section

/-- A336564: a(n) = n - A308135(n), where A308135(n) is the sum of non-coreful divisors of n.

Offset 1, canonical program `A336564.P7523591857433776956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336564 (n : ℕ) : ℤ :=
  A336564.P7523591857433776956.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336566.P17857455138638732471

`gcd(A057723(n+1)-(n+1), n+1-A308135(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336566.P17857455138638732471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057723 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A308135 (n + 1))

end

end A336566.P17857455138638732471

noncomputable section

/-- A336566: a(n) = gcd(A336563(n), A336564(n)) = gcd(A057723(n)-n, n-A308135(n)).

Offset 1, canonical program `A336566.P17857455138638732471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336566 (n : ℕ) : ℤ :=
  (A336566.P17857455138638732471.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336646.P1396805071423227926

`n+1-A326144(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336646.P1396805071423227926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326144 (n + 1)

end

end A336646.P1396805071423227926

noncomputable section

/-- A336646: a(n) = n - A326144(n).

Offset 1, canonical program `A336646.P1396805071423227926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336646 (n : ℕ) : ℤ :=
  A336646.P1396805071423227926.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351864.P6848579617677032466

`2^A240883(n)`
-/

namespace A351864.P6848579617677032466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A240883 n : ℤ)

end

end A351864.P6848579617677032466

noncomputable section

/-- A351864: Numerator of zeta({6}_n)/Pi^(6n).

Offset 0, canonical program `A351864.P6848579617677032466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351864.P6848579617677032466.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356133.P5129533171813419768

`3*(n+1)-A001285(n)`
-/

namespace A356133.P5129533171813419768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A001285 n

end

end A356133.P5129533171813419768

noncomputable section

/-- A356133: Complement of A026430.

Offset 1, canonical program `A356133.P5129533171813419768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356133 (n : ℕ) : ℤ :=
  A356133.P5129533171813419768.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365337.P17860016322392539795

`A000203(A350390(n+1))`
-/

namespace A365337.P17860016322392539795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350390 (n + 1)).toNat

end

end A365337.P17860016322392539795

noncomputable section

/-- A365337: The sum of divisors of the largest exponentially odd number dividing n.

Offset 1, canonical program `A365337.P17860016322392539795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365337 (n : ℕ) : ℤ :=
  A365337.P17860016322392539795.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365346.P13037943139291011402

`A000203(A053143(n+1))`
-/

namespace A365346.P13037943139291011402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053143 (n + 1)).toNat

end

end A365346.P13037943139291011402

noncomputable section

/-- A365346: The sum of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365346.P13037943139291011402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365346 (n : ℕ) : ℤ :=
  A365346.P13037943139291011402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367991.P5779548576678775471

`A048250(n+1)/A367990(n+1)`
-/

namespace A367991.P5779548576678775471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A367990 (n + 1) : ℚ)

end

end A367991.P5779548576678775471

noncomputable section

/-- A367991: The sum of the divisors of the squarefree part of n.

Offset 1, canonical program `A367991.P5779548576678775471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367991.P5779548576678775471.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369717.P11411986062886320830

`A000203(A197863(n+1))`
-/

namespace A369717.P11411986062886320830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A197863 (n + 1)).toNat

end

end A369717.P11411986062886320830

noncomputable section

/-- A369717: The sum of divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369717.P11411986062886320830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369717 (n : ℕ) : ℤ :=
  A369717.P11411986062886320830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374348.P7186734061745376650

`2*A129195(n)-(n+1)`
-/

namespace A374348.P7186734061745376650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129195 n - (n + 1 : ℤ)

end

end A374348.P7186734061745376650

noncomputable section

/-- A374348: a(n) = k where wt(k) = n and k + wt(k) = a power of two, where wt(n) = A000120(n) = binary weight of n.

Offset 1, canonical program `A374348.P7186734061745376650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374348 (n : ℕ) : ℤ :=
  A374348.P7186734061745376650.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389447.P10658135204883957213

`A000203(n+1)/A389446(n+1)`
-/

namespace A389447.P10658135204883957213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P10658135204883957213

noncomputable section

/-- A389447: Numerator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389447.P10658135204883957213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389447.P10658135204883957213.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389448.P4992283218641598864

`A057723(n+1)/A389446(n+1)`
-/

namespace A389448.P4992283218641598864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P4992283218641598864

noncomputable section

/-- A389448: Denominator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389448.P4992283218641598864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389448.P4992283218641598864.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392168.P7882618173264057118

`A001615(A053143(n+1))`
-/

namespace A392168.P7882618173264057118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053143 (n + 1)).toNat

end

end A392168.P7882618173264057118

noncomputable section

/-- A392168: The Dedekind psi function value of the smallest square divisible by n.

Offset 1, canonical program `A392168.P7882618173264057118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392168 (n : ℕ) : ℤ :=
  A392168.P7882618173264057118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392170.P11667223152530943360

`A001615(A197863(n+1))`
-/

namespace A392170.P11667223152530943360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A197863 (n + 1)).toNat

end

end A392170.P11667223152530943360

noncomputable section

/-- A392170: The Dedekind psi function value of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A392170.P11667223152530943360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392170 (n : ℕ) : ℤ :=
  A392170.P11667223152530943360.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318467.P11021242539617747831

`A224880(n+1)-2*A318468(n+1)`
-/

namespace A318467.P11021242539617747831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - 2 * A318468 (n + 1)

end

end A318467.P11021242539617747831

noncomputable section

/-- A318467: a(n) = 2*n XOR A000203(n), where XOR is bitwise-xor (A003987) and A000203 = sum of divisors.

Offset 1, canonical program `A318467.P11021242539617747831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318467 (n : ℕ) : ℤ :=
  A318467.P11021242539617747831.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320228.P12443175590728770353

`A000040(n+1)*A034958(n+1)`
-/

namespace A320228.P12443175590728770353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A034958 (n + 1)

end

end A320228.P12443175590728770353

noncomputable section

/-- A320228: Distribute the primes into groups in ascending order, with the n-th group having prime(n) elements. Then a(n) is the sum of the numbers in the n-th group times the number of elements in the group.

Offset 1, canonical program `A320228.P12443175590728770353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320228 (n : ℕ) : ℤ :=
  A320228.P12443175590728770353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A321178.P14007840561554074392

`A109723(n)/2`
-/

namespace A321178.P14007840561554074392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109723 n : ℚ) / 2

end

end A321178.P14007840561554074392

noncomputable section

/-- A321178: One-half the sum of the first 2n + 1 primes.

Offset 0, canonical program `A321178.P14007840561554074392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321178 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A321178.P14007840561554074392.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326038.P7461773891542618718

`A000188(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326038.P7461773891542618718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000203 (n + 1)).toNat

end

end A326038.P7461773891542618718

noncomputable section

/-- A326038: Square root of the largest square dividing the sum of divisors of n: a(n) = A000188(sigma(n)).

Offset 1, canonical program `A326038.P7461773891542618718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326038 (n : ℕ) : ℤ :=
  A326038.P7461773891542618718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334051.P2829152517033935229

`1+A331677(n+1)`
-/

namespace A334051.P2829152517033935229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A331677 (n + 1)

end

end A334051.P2829152517033935229

noncomputable section

/-- A334051: The difference between the number of prime numbers in the ranges (1, p_n] and (p_n, 2*p_n], where p_n is the n-th prime.

Offset 1, canonical program `A334051.P2829152517033935229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334051 (n : ℕ) : ℤ :=
  A334051.P2829152517033935229.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335135.P17570870546430476822

`A053683(n+2)-A053683(n+1)`
-/

namespace A335135.P17570870546430476822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 2) - A053683 (n + 1)

end

end A335135.P17570870546430476822

noncomputable section

/-- A335135: Number of composite numbers between prime(n)^2 and prime(n + 1)^2 - 1.

Offset 1, canonical program `A335135.P17570870546430476822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335135 (n : ℕ) : ℤ :=
  A335135.P17570870546430476822.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343754.P7504119164661584635

`n-A174574(n)`
-/

namespace A343754.P7504119164661584635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A174574 n

end

end A343754.P7504119164661584635

noncomputable section

/-- A343754: a(n) = 0, and for any n > 0, a(n+1) = a(n) - A065363(n) + 1.

Offset 0, canonical program `A343754.P7504119164661584635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754 (n : ℕ) : ℤ :=
  A343754.P7504119164661584635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344137.P296871737562835172

`A048250(n+1)-A295295(n+1)`
-/

namespace A344137.P296871737562835172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A295295 (n + 1)

end

end A344137.P296871737562835172

noncomputable section

/-- A344137: Sum of the squarefree divisors of n whose square does not divide n.

Offset 1, canonical program `A344137.P296871737562835172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344137 (n : ℕ) : ℤ :=
  A344137.P296871737562835172.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355261.P9102816155030024956

`A000188(n+1)*A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355261.P9102816155030024956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A007947 (n + 1)

end

end A355261.P9102816155030024956

noncomputable section

/-- A355261: a(n) = largest-nth-power(n, 2) * radical(n) = A000188(n) * A007947(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355261.P9102816155030024956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355261 (n : ℕ) : ℤ :=
  A355261.P9102816155030024956.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355264.P11732837253981206670

`(n+1)*A000188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355264.P11732837253981206670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000188 (n + 1)

end

end A355264.P11732837253981206670

noncomputable section

/-- A355264: a(n) = n * largest-nth-power(n, 2) = n * A000188(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355264.P11732837253981206670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355264 (n : ℕ) : ℤ :=
  A355264.P11732837253981206670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355584.P17753018622683635004

`A000203(A355582(n+1))`
-/

namespace A355584.P17753018622683635004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A355582 (n + 1)).toNat

end

end A355584.P17753018622683635004

noncomputable section

/-- A355584: a(n) is the sum of the 5-smooth divisors of n.

Offset 1, canonical program `A355584.P17753018622683635004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355584 (n : ℕ) : ℤ :=
  A355584.P17753018622683635004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357251.P3468567000620855618

`A065762(n+1)/2`
-/

namespace A357251.P3468567000620855618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065762 (n + 1) : ℚ) / 2

end

end A357251.P3468567000620855618

noncomputable section

/-- A357251: a(n) = Sum_{1<=i<=j<=n} prime(i)*prime(j).

Offset 1, canonical program `A357251.P3468567000620855618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357251.P3468567000620855618.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359499.P4428695671887271465

`A219086(n)*A175110(n)*A359844(n)`
-/

namespace A359499.P4428695671887271465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A175110 n * A359844 n

end

end A359499.P4428695671887271465

noncomputable section

/-- A359499: a(n) = ((2*n+1)^16 - 1)/64.

Offset 0, canonical program `A359499.P4428695671887271465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499 (n : ℕ) : ℤ :=
  A359499.P4428695671887271465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370783.P9884989495501341942

`A332880(A057521(n+1))`
-/

namespace A370783.P9884989495501341942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A057521 (n + 1)).toNat

end

end A370783.P9884989495501341942

noncomputable section

/-- A370783: a(n) is the numerator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370783.P9884989495501341942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370783 (n : ℕ) : ℤ :=
  A370783.P9884989495501341942.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370784.P17196978018823182147

`A332881(A057521(n+1))`
-/

namespace A370784.P17196978018823182147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (A057521 (n + 1)).toNat

end

end A370784.P17196978018823182147

noncomputable section

/-- A370784: a(n) is the denominator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370784.P17196978018823182147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370784 (n : ℕ) : ℤ :=
  A370784.P17196978018823182147.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371240.P7897189969390004216

`A000203(A032924(n+1))`
-/

namespace A371240.P7897189969390004216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A032924 (n + 1)).toNat

end

end A371240.P7897189969390004216

noncomputable section

/-- A371240: The sum of divisors of the zeroless numbers in base 3 (A032924).

Offset 1, canonical program `A371240.P7897189969390004216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371240 (n : ℕ) : ℤ :=
  A371240.P7897189969390004216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372749.P13035462491583893748

`A202342(n+1)+A136496(n+1)+A381841(n+1)-2`
-/

namespace A372749.P13035462491583893748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + A381841 (n + 1) - 2

end

end A372749.P13035462491583893748

noncomputable section

/-- A372749: 4th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372749.P13035462491583893748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372749 (n : ℕ) : ℤ :=
  A372749.P13035462491583893748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372750.P11021400097773802461

`A202342(n+1)+A136496(n+1)+2*A381841(n+1)-3`
-/

namespace A372750.P11021400097773802461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + 2 * A381841 (n + 1) - 3

end

end A372750.P11021400097773802461

noncomputable section

/-- A372750: 5th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372750.P11021400097773802461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372750 (n : ℕ) : ℤ :=
  A372750.P11021400097773802461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372752.P5687007721040332012

`2*A202342(n+1)+A136496(n+1)+3*A381841(n+1)-4`
-/

namespace A372752.P5687007721040332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202342 (n + 1) + A136496 (n + 1) + 3 * A381841 (n + 1) - 4

end

end A372752.P5687007721040332012

noncomputable section

/-- A372752: 6th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372752.P5687007721040332012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372752 (n : ℕ) : ℤ :=
  A372752.P5687007721040332012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372756.P16576302570727181633

`3*A202342(n+1)+2*A136496(n+1)+4*A381841(n+1)-6`
-/

namespace A372756.P16576302570727181633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A202342 (n + 1) + 2 * A136496 (n + 1) + 4 * A381841 (n + 1) - 6

end

end A372756.P16576302570727181633

noncomputable section

/-- A372756: 7th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372756.P16576302570727181633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372756 (n : ℕ) : ℤ :=
  A372756.P16576302570727181633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372757.P4399208571086954249

`4*A202342(n+1)+3*A136496(n+1)+6*A381841(n+1)-9`
-/

namespace A372757.P4399208571086954249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A202342 (n + 1) + 3 * A136496 (n + 1) + 6 * A381841 (n + 1) - 9

end

end A372757.P4399208571086954249

noncomputable section

/-- A372757: 8th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372757.P4399208571086954249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372757 (n : ℕ) : ℤ :=
  A372757.P4399208571086954249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375240.P16828847594714467939

`A007913(n+1)*a(A000188(n+1)-1)` with `a(0)=1`
-/

namespace A375240.P16828847594714467939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (n + 1) * a (A000188 (n + 1) - 1).toNat

end

end A375240.P16828847594714467939

noncomputable section

/-- A375240: For squarefree j, a(j*k^2) = j * a(k), a(1) = 1.

Offset 1, canonical program `A375240.P16828847594714467939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375240 (n : ℕ) : ℤ :=
  A375240.P16828847594714467939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375970.P9061839122044189861

`A000188(A000330(n+1))`
-/

namespace A375970.P9061839122044189861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000330 (n + 1)).toNat

end

end A375970.P9061839122044189861

noncomputable section

/-- A375970: a(n) is the largest number k such that k^2 divides the square pyramidal number A000330(n).

Offset 1, canonical program `A375970.P9061839122044189861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375970 (n : ℕ) : ℤ :=
  A375970.P9061839122044189861.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377565.P6887549586258778470

`(n+1)*A097327(n+1)`
-/

namespace A377565.P6887549586258778470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097327 (n + 1)

end

end A377565.P6887549586258778470

noncomputable section

/-- A377565: a(n) is the least multiple of n with more decimal digits than n.

Offset 1, canonical program `A377565.P6887549586258778470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377565 (n : ℕ) : ℤ :=
  A377565.P6887549586258778470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379663.P16552720730699355066

`A060143(A000188(n+1))+1`
-/

namespace A379663.P16552720730699355066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000188 (n + 1)).toNat + 1

end

end A379663.P16552720730699355066

noncomputable section

/-- A379663: a(n) is the number of integer-sided triangles whose sides are in geometric progression with smallest side n.

Offset 1, canonical program `A379663.P16552720730699355066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379663 (n : ℕ) : ℤ :=
  A379663.P16552720730699355066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390582.P9712316944901875088

`A033879(n+1)/A009194(n+1)`
-/

namespace A390582.P9712316944901875088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A390582.P9712316944901875088

noncomputable section

/-- A390582: a(n) = (2*n - sigma(n))/gcd(n, sigma(n)).

Offset 1, canonical program `A390582.P9712316944901875088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390582.P9712316944901875088.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324469.P7402348818447187183

`2*A000989(n)+A000989(2*n)`
-/

namespace A324469.P7402348818447187183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000989 n + A000989 (2 * n)

end

end A324469.P7402348818447187183

noncomputable section

/-- A324469: Exponent of highest power of 3 that divides multinomial(4*n;n,n,n,n).

Offset 0, canonical program `A324469.P7402348818447187183`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324469 (n : ℕ) : ℤ :=
  A324469.P7402348818447187183.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326238.P2576865909490230932

`(n+1)*A002129(n+1)`
-/

namespace A326238.P2576865909490230932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002129 (n + 1)

end

end A326238.P2576865909490230932

noncomputable section

/-- A326238: Expansion of Sum_{k>=1} k * x^k * (1 - x^k) / (1 + x^k)^3.

Offset 1, canonical program `A326238.P2576865909490230932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326238 (n : ℕ) : ℤ :=
  A326238.P2576865909490230932.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326987.P399885579470220940

`(A001227(n+1)-1)*A001511(n+1)`
-/

namespace A326987.P399885579470220940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) - 1) * A001511 (n + 1)

end

end A326987.P399885579470220940

noncomputable section

/-- A326987: Number of nonpowers of 2 dividing n.

Offset 1, canonical program `A326987.P399885579470220940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326987 (n : ℕ) : ℤ :=
  A326987.P399885579470220940.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329009.P8846123619679108642

`2^(n-A001511(n+1))*(3^(n+1)-1)`
-/

namespace A329009.P8846123619679108642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A001511 (n + 1) : ℤ) * ((3 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A329009.P8846123619679108642

noncomputable section

/-- A329009: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3) as in A327321.

Offset 1, canonical program `A329009.P8846123619679108642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329009.P8846123619679108642.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348166.P10353981959448534269

`abs(A020338(n+1)-A338754(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348166.P10353981959448534269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020338 (n + 1) - A338754 (n + 1)|

end

end A348166.P10353981959448534269

noncomputable section

/-- A348166: a(n) = abs(A020338(n)-A338754(n)).

Offset 1, canonical program `A348166.P10353981959448534269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348166 (n : ℕ) : ℤ :=
  A348166.P10353981959448534269.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363598.P10065687439542942200

`(A002129(n+1)-A138503(n+1))/6`
-/

namespace A363598.P10065687439542942200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) - A138503 (n + 1) : ℚ) / 6

end

end A363598.P10065687439542942200

noncomputable section

/-- A363598: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^4.

Offset 1, canonical program `A363598.P10065687439542942200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363598 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363598.P10065687439542942200.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366839.P8593895561095689137

`2*A001511(n+1)`
-/

namespace A366839.P8593895561095689137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001511 (n + 1)

end

end A366839.P8593895561095689137

noncomputable section

/-- A366839: Sum of even prime factors of 2n, counted with multiplicity.

Offset 1, canonical program `A366839.P8593895561095689137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839 (n : ℕ) : ℤ :=
  A366839.P8593895561095689137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378887.P8856246218187554853

`gcd(n+1, A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378887.P8856246218187554853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001511 (n + 1))

end

end A378887.P8856246218187554853

noncomputable section

/-- A378887: a(n) = gcd(n, A001511(n)).

Offset 1, canonical program `A378887.P8856246218187554853`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A001511(n+1))` (program `A378887.P8856246218187554853`, by `A378887.P8856246218187554853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378887 (n : ℕ) : ℤ :=
  (A378887.P8856246218187554853.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A001511(n+1))` (program `A378887.P8856246218187554853`, by `A378887.P8856246218187554853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378887.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385148.P6659841522934302944

`A001065(A346878(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385148.P6659841522934302944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A346878 (n + 1)).toNat

end

end A385148.P6659841522934302944

noncomputable section

/-- A385148: a(n) = A001065(A346878(n)).

Offset 1, canonical program `A385148.P6659841522934302944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385148 (n : ℕ) : ℤ :=
  A385148.P6659841522934302944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386261.P786158884757430491

`A001511(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386261.P786158884757430491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (n + 1)).toNat

end

end A386261.P786158884757430491

noncomputable section

/-- A386261: a(n) = A001511(A001511(n)), where A001511 is the ruler function.

Offset 1, canonical program `A386261.P786158884757430491`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A001511(n+1))` (program `A386261.P786158884757430491`, by `A386261.P786158884757430491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386261 (n : ℕ) : ℤ :=
  A386261.P786158884757430491.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A001511(n+1))` (program `A386261.P786158884757430491`, by `A386261.P786158884757430491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386261.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394790.P4967719223950179716

`A000203(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394790.P4967719223950179716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001511 (n + 1)

end

end A394790.P4967719223950179716

noncomputable section

/-- A394790: Product of the sum of divisors of n with the exponent of the highest power of 2 dividing 2n: a(n) = A000203(n)*A001511(n).

Offset 1, canonical program `A394790.P4967719223950179716`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001511(n+1)` (program `A394790.P4967719223950179716`, by `A394790.P4967719223950179716.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394790 (n : ℕ) : ℤ :=
  A394790.P4967719223950179716.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001511(n+1)` (program `A394790.P4967719223950179716`, by `A394790.P4967719223950179716.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394790.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`
-/

namespace A396769.P5317963927150121089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) + (n : ℤ)

end

end A396769.P5317963927150121089

noncomputable section

/-- A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A396769.P5317963927150121089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769 (n : ℕ) : ℤ :=
  A396769.P5317963927150121089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373934.P2638291770601585293

`A373935(n+2)-A373935(n+1)`
-/

namespace A373934.P2638291770601585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373935 (n + 2) - A373935 (n + 1)

end

end A373934.P2638291770601585293

noncomputable section

/-- A373934: Number of compositions of 7*n-2 into parts 6 and 7.

Offset 1, canonical program `A373934.P2638291770601585293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373934 (n : ℕ) : ℤ :=
  A373934.P2638291770601585293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373961.P18328240497616127407

`A373962(n+2)-A373962(n+1)`
-/

namespace A373961.P18328240497616127407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373962 (n + 2) - A373962 (n + 1)

end

end A373961.P18328240497616127407

noncomputable section

/-- A373961: Number of compositions of 6*n-1 into parts 5 and 6.

Offset 1, canonical program `A373961.P18328240497616127407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373961 (n : ℕ) : ℤ :=
  A373961.P18328240497616127407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A312682.P2011729354850800503

`A312205(n)+Δ[A011861(n)]`
-/

namespace A312682.P2011729354850800503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + (f1 (n + 1) - f1 n)

end

end A312682.P2011729354850800503

noncomputable section

/-- A312682: Coordination sequence Gal.5.112.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312682.P2011729354850800503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A312682 (n : ℕ) : ℤ :=
  A312682.P2011729354850800503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A312682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313053.P8254110359425895258

`A312903(n)+A002266(n+2)`
-/

namespace A313053.P8254110359425895258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A002266 (n + 2)

end

end A313053.P8254110359425895258

noncomputable section

/-- A313053: Coordination sequence Gal.5.114.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313053.P8254110359425895258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A313053 (n : ℕ) : ℤ :=
  A313053.P8254110359425895258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A313053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313144.P17775273712726456344

`A312620(n)+A004525(A087509(n))`
-/

namespace A313144.P17775273712726456344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 (A087509 n).toNat

end

end A313144.P17775273712726456344

noncomputable section

/-- A313144: Coordination sequence Gal.5.219.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313144.P17775273712726456344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313144 (n : ℕ) : ℤ :=
  A313144.P17775273712726456344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313246.P15329026928054582960

`A312620(n)+A004525(n-A004396(n))`
-/

namespace A313246.P15329026928054582960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313246.P15329026928054582960

noncomputable section

/-- A313246: Coordination sequence Gal.6.264.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313246.P15329026928054582960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313246 (n : ℕ) : ℤ :=
  A313246.P15329026928054582960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313251.P8215173569806842908

`A312620(n)+A004396(n-A004525(n))`
-/

namespace A313251.P8215173569806842908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313251.P8215173569806842908

noncomputable section

/-- A313251: Coordination sequence Gal.6.203.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313251.P8215173569806842908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. -/
def A313251 (n : ℕ) : ℤ :=
  A313251.P8215173569806842908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. -/
def A313251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313255.P1594934984092539332

`A313116(n)+A002266(n+2)`
-/

namespace A313255.P1594934984092539332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A002266 (n + 2)

end

end A313255.P1594934984092539332

noncomputable section

/-- A313255: Coordination sequence Gal.5.87.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313255.P1594934984092539332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313255 (n : ℕ) : ℤ :=
  A313255.P1594934984092539332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313292.P15392932412953787641

`A312205(n)+∑[A021913(n)]`
-/

namespace A313292.P15392932412953787641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313292.P15392932412953787641

noncomputable section

/-- A313292: Coordination sequence Gal.4.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313292.P15392932412953787641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313292 (n : ℕ) : ℤ :=
  A313292.P15392932412953787641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313295.P668024408772330037

`A313154(n)+A002266(n+2)`
-/

namespace A313295.P668024408772330037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A002266 (n + 2)

end

end A313295.P668024408772330037

noncomputable section

/-- A313295: Coordination sequence Gal.5.90.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313295.P668024408772330037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A313295 (n : ℕ) : ℤ :=
  A313295.P668024408772330037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A313295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313476.P1237108097731061015

`A330025(n)+A312903(n)`
-/

namespace A313476.P1237108097731061015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312903 n

end

end A313476.P1237108097731061015

noncomputable section

/-- A313476: Coordination sequence Gal.5.53.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313476.P1237108097731061015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A313476 (n : ℕ) : ℤ :=
  A313476.P1237108097731061015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A313476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313782.P12193786850322098717

`A330025(n)+A313154(n)`
-/

namespace A313782.P12193786850322098717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313154 n

end

end A313782.P12193786850322098717

noncomputable section

/-- A313782: Coordination sequence Gal.5.289.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313782.P12193786850322098717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313782 (n : ℕ) : ℤ :=
  A313782.P12193786850322098717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313837.P17641795558428794836

`A313213(n)+A004396(A004525(n))`
-/

namespace A313837.P17641795558428794836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004396 (A004525 n).toNat

end

end A313837.P17641795558428794836

noncomputable section

/-- A313837: Coordination sequence Gal.6.618.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313837.P17641795558428794836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A313837 (n : ℕ) : ℤ :=
  A313837.P17641795558428794836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A313837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313891.P9038549751761829655

`A313213(n)+A004525(n)`
-/

namespace A313891.P9038549751761829655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004525 n

end

end A313891.P9038549751761829655

noncomputable section

/-- A313891: Coordination sequence Gal.4.142.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313891.P9038549751761829655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313891 (n : ℕ) : ℤ :=
  A313891.P9038549751761829655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313962.P258668997932417056

`A313835(n)+Δ[A011862(n)]`
-/

namespace A313962.P258668997932417056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 n + (f1 (n + 1) - f1 n)

end

end A313962.P258668997932417056

noncomputable section

/-- A313962: Coordination sequence Gal.3.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313962.P258668997932417056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A313962 (n : ℕ) : ℤ :=
  A313962.P258668997932417056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A313962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313979.P9481199202513523421

`A313894(n)+Δ[A011862(n)]`
-/

namespace A313979.P9481199202513523421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + (f1 (n + 1) - f1 n)

end

end A313979.P9481199202513523421

noncomputable section

/-- A313979: Coordination sequence Gal.6.654.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313979.P9481199202513523421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A313979 (n : ℕ) : ℤ :=
  A313979.P9481199202513523421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A313979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314097.P8368931035641708472

`A313510(n)+∑[A021913(n)]`
-/

namespace A314097.P8368931035641708472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314097.P8368931035641708472

noncomputable section

/-- A314097: Coordination sequence Gal.6.354.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314097.P8368931035641708472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A314097 (n : ℕ) : ℤ :=
  A314097.P8368931035641708472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A314097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314164.P3889961829732098224

`A313116(n)+A057354(2*n+1)`
-/

namespace A314164.P3889961829732098224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A057354 (2 * n + 1)

end

end A314164.P3889961829732098224

noncomputable section

/-- A314164: Coordination sequence Gal.5.302.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314164.P3889961829732098224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A314164 (n : ℕ) : ℤ :=
  A314164.P3889961829732098224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A314164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314189.P7331010239298869687

`A313829(n)+∑[A022003(n)]`
-/

namespace A314189.P7331010239298869687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314189.P7331010239298869687

noncomputable section

/-- A314189: Coordination sequence Gal.6.636.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314189.P7331010239298869687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314189 (n : ℕ) : ℤ :=
  A314189.P7331010239298869687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314205.P7191445224176703751

`A313860(n)+A004396(n-A004396(n))`
-/

namespace A314205.P7191445224176703751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314205.P7191445224176703751

noncomputable section

/-- A314205: Coordination sequence Gal.5.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314205.P7191445224176703751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A314205 (n : ℕ) : ℤ :=
  A314205.P7191445224176703751.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A314205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314208.P13024500297364737836

`A313872(n)+A004525(n-A004396(n))`
-/

namespace A314208.P13024500297364737836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314208.P13024500297364737836

noncomputable section

/-- A314208: Coordination sequence Gal.6.619.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314208.P13024500297364737836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314208 (n : ℕ) : ℤ :=
  A314208.P13024500297364737836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314216.P14114423026474714885

`round(A313872(n)+n/3)`
-/

namespace A314216.P14114423026474714885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313872 n : ℚ) + (n : ℚ) / 3)

end

end A314216.P14114423026474714885

noncomputable section

/-- A314216: Coordination sequence Gal.6.624.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314216.P14114423026474714885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A314216 (n : ℕ) : ℤ :=
  A314216.P14114423026474714885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A314216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314227.P16301604767465595439

`2*A314161(n)-A314068(n)`
-/

namespace A314227.P16301604767465595439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314161 n - A314068 n

end

end A314227.P16301604767465595439

noncomputable section

/-- A314227: Coordination sequence Gal.4.146.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314227.P16301604767465595439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A314227 (n : ℕ) : ℤ :=
  A314227.P16301604767465595439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A314227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314252.P9634804335758676249

`A313116(n)+n`
-/

namespace A314252.P9634804335758676249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + (n : ℤ)

end

end A314252.P9634804335758676249

noncomputable section

/-- A314252: Coordination sequence Gal.5.295.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314252.P9634804335758676249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314252 (n : ℕ) : ℤ :=
  A314252.P9634804335758676249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314841.P5099753023197914535

`A312620(n)+A128834(n)`
-/

namespace A314841.P5099753023197914535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A128834 n

end

end A314841.P5099753023197914535

noncomputable section

/-- A314841: Coordination sequence Gal.6.151.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314841.P5099753023197914535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314841 (n : ℕ) : ℤ :=
  A314841.P5099753023197914535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314972.P7314181398495225486

`abs(A008592(n)-A314087(n))`
-/

namespace A314972.P7314181398495225486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314087 n|

end

end A314972.P7314181398495225486

noncomputable section

/-- A314972: Coordination sequence Gal.5.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314972.P7314181398495225486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314972 (n : ℕ) : ℤ :=
  A314972.P7314181398495225486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315191.P3733796500025227034

`A313510(n)+A004396(lcm(n, A134667(n)))`
-/

namespace A315191.P3733796500025227034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A004396 (Int.lcm (n : ℤ) (A134667 n))

end

end A315191.P3733796500025227034

noncomputable section

/-- A315191: Coordination sequence Gal.5.186.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315191.P3733796500025227034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A315191 (n : ℕ) : ℤ :=
  A315191.P3733796500025227034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A315191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315215.P4888791960146051438

`A313154(n)+A253262(A253262(n)+n)`
-/

namespace A315215.P4888791960146051438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A253262 (A253262 n + (n : ℤ)).toNat

end

end A315215.P4888791960146051438

noncomputable section

/-- A315215: Coordination sequence Gal.6.352.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315215.P4888791960146051438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315215 (n : ℕ) : ℤ :=
  A315215.P4888791960146051438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315246.P15325396058034907963

`A315067(n)+A128834(n)`
-/

namespace A315246.P15325396058034907963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n + A128834 n

end

end A315246.P15325396058034907963

noncomputable section

/-- A315246: Coordination sequence Gal.6.203.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315246.P15325396058034907963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315246 (n : ℕ) : ℤ :=
  A315246.P15325396058034907963.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315247.P17209575023830611151

`abs(A008592(n)-A310469(n))`
-/

namespace A315247.P17209575023830611151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310469 n|

end

end A315247.P17209575023830611151

noncomputable section

/-- A315247: Coordination sequence Gal.5.87.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315247.P17209575023830611151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315247 (n : ℕ) : ℤ :=
  A315247.P17209575023830611151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315260.P11757777825462435444

`A314683(n)+A004396(n)`
-/

namespace A315260.P11757777825462435444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + A004396 n

end

end A315260.P11757777825462435444

noncomputable section

/-- A315260: Coordination sequence Gal.6.340.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315260.P11757777825462435444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315260 (n : ℕ) : ℤ :=
  A315260.P11757777825462435444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315265.P13761514949050069837

`A315198(n)+Δ[A011862(n)]`
-/

namespace A315265.P13761514949050069837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315198 n + (f1 (n + 1) - f1 n)

end

end A315265.P13761514949050069837

noncomputable section

/-- A315265: Coordination sequence Gal.5.132.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315265.P13761514949050069837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2112 terms. -/
def A315265 (n : ℕ) : ℤ :=
  A315265.P13761514949050069837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2112 terms. -/
def A315265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315271.P18267485139840011839

`A313778(n)+A128834(A128834(n)+n)`
-/

namespace A315271.P18267485139840011839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315271.P18267485139840011839

noncomputable section

/-- A315271: Coordination sequence Gal.6.345.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315271.P18267485139840011839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315271 (n : ℕ) : ℤ :=
  A315271.P18267485139840011839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315415.P4703822425570866206

`A313494(n)+A004525(n)`
-/

namespace A315415.P4703822425570866206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313494 n + A004525 n

end

end A315415.P4703822425570866206

noncomputable section

/-- A315415: Coordination sequence Gal.6.207.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315415.P4703822425570866206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315415 (n : ℕ) : ℤ :=
  A315415.P4703822425570866206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315416.P2094941697725940061

`abs(A008592(n)-A313241(n))`
-/

namespace A315416.P2094941697725940061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313241 n|

end

end A315416.P2094941697725940061

noncomputable section

/-- A315416: Coordination sequence Gal.5.142.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315416.P2094941697725940061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A315416 (n : ℕ) : ℤ :=
  A315416.P2094941697725940061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A315416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315417.P14288503187681228952

`A313510(n)+A004525(n)`
-/

namespace A315417.P14288503187681228952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A004525 n

end

end A315417.P14288503187681228952

noncomputable section

/-- A315417: Coordination sequence Gal.6.354.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315417.P14288503187681228952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315417 (n : ℕ) : ℤ :=
  A315417.P14288503187681228952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315425.P4836031059753264018

`abs(A008592(n)-A313213(n))`
-/

namespace A315425.P4836031059753264018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313213 n|

end

end A315425.P4836031059753264018

noncomputable section

/-- A315425: Coordination sequence Gal.6.341.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315425.P4836031059753264018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315425 (n : ℕ) : ℤ :=
  A315425.P4836031059753264018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315427.P10019411848564302205

`abs(A008592(n)-A313201(n))`
-/

namespace A315427.P10019411848564302205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313201 n|

end

end A315427.P10019411848564302205

noncomputable section

/-- A315427: Coordination sequence Gal.5.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315427.P10019411848564302205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315427 (n : ℕ) : ℤ :=
  A315427.P10019411848564302205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315463.P16900864329988193490

`A315256(n)+A004396(n-A004396(n))`
-/

namespace A315463.P16900864329988193490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315256 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315463.P16900864329988193490

noncomputable section

/-- A315463: Coordination sequence Gal.5.113.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315463.P16900864329988193490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315463 (n : ℕ) : ℤ :=
  A315463.P16900864329988193490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315476.P2170121001378105124

`A314683(n)+n`
-/

namespace A315476.P2170121001378105124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + (n : ℤ)

end

end A315476.P2170121001378105124

noncomputable section

/-- A315476: Coordination sequence Gal.6.619.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315476.P2170121001378105124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315476 (n : ℕ) : ℤ :=
  A315476.P2170121001378105124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315496.P12709107915748676081

`A315397(n)+n-A253262(n)`
-/

namespace A315496.P12709107915748676081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n + ((n : ℤ) - A253262 n)

end

end A315496.P12709107915748676081

noncomputable section

/-- A315496: Coordination sequence Gal.5.306.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315496.P12709107915748676081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315496 (n : ℕ) : ℤ :=
  A315496.P12709107915748676081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315539.P1091420804308675647

`2*n+A004396(A315340(n))`
-/

namespace A315539.P1091420804308675647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315340 n).toNat

end

end A315539.P1091420804308675647

noncomputable section

/-- A315539: Coordination sequence Gal.6.642.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315539.P1091420804308675647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A315539 (n : ℕ) : ℤ :=
  A315539.P1091420804308675647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A315539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315641.P11101292632011724698

`abs(A008592(n)-A312620(n))`
-/

namespace A315641.P11101292632011724698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312620 n|

end

end A315641.P11101292632011724698

noncomputable section

/-- A315641: Coordination sequence Gal.6.208.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315641.P11101292632011724698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A315641 (n : ℕ) : ℤ :=
  A315641.P11101292632011724698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A315641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315670.P4155248808049658205

`A315395(n)+∑[A021913(n)]`
-/

namespace A315670.P4155248808049658205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315395 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315670.P4155248808049658205

noncomputable section

/-- A315670: Coordination sequence Gal.6.262.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315670.P4155248808049658205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A315670 (n : ℕ) : ℤ :=
  A315670.P4155248808049658205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A315670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315671.P3317811173439516931

`abs(A008592(n)-A312205(n))`
-/

namespace A315671.P3317811173439516931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312205 n|

end

end A315671.P3317811173439516931

noncomputable section

/-- A315671: Coordination sequence Gal.4.56.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315671.P3317811173439516931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315671 (n : ℕ) : ℤ :=
  A315671.P3317811173439516931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315675.P17317459834281065460

`A315403(n)+∑[A021913(n)]`
-/

namespace A315675.P17317459834281065460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315675.P17317459834281065460

noncomputable section

/-- A315675: Coordination sequence Gal.6.356.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315675.P17317459834281065460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315675 (n : ℕ) : ℤ :=
  A315675.P17317459834281065460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315676.P8029250797834690021

`abs(A008592(n)-A312183(n))`
-/

namespace A315676.P8029250797834690021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312183 n|

end

end A315676.P8029250797834690021

noncomputable section

/-- A315676: Coordination sequence Gal.4.75.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315676.P8029250797834690021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2289 terms. -/
def A315676 (n : ℕ) : ℤ :=
  A315676.P8029250797834690021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2289 terms. -/
def A315676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315731.P13330025247901741464

`A315304(n)+A008612(A016813(n))`
-/

namespace A315731.P13330025247901741464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315304 n + A008612 (A016813 n).toNat

end

end A315731.P13330025247901741464

noncomputable section

/-- A315731: Coordination sequence Gal.5.301.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315731.P13330025247901741464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315731 (n : ℕ) : ℤ :=
  A315731.P13330025247901741464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316322.P16038970231065936341

`A167214(n+1)+A062020(n+1)`
-/

namespace A316322.P16038970231065936341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) + A062020 (n + 1)

end

end A316322.P16038970231065936341

noncomputable section

/-- A316322: Sum of piles of first n primes: a(n) = Sum(prime(i)*(2*i-1): 1<=i<=n).

Offset 1, canonical program `A316322.P16038970231065936341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A316322 (n : ℕ) : ℤ :=
  A316322.P16038970231065936341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A316322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316347.P10556341811783083383

`A000290(n)%(A178914(n)+n)`
-/

namespace A316347.P10556341811783083383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A178914 n + (n : ℤ))

end

end A316347.P10556341811783083383

noncomputable section

/-- A316347: a(n) = n^2 mod(10^m), where m is the number of digits in n (written in base 10).

Offset 0, canonical program `A316347.P10556341811783083383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316347 (n : ℕ) : ℤ :=
  A316347.P10556341811783083383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316385.P15918225833941816828

`A003817(n+1)-A025480((A035327(n+1)+A010078(n+2))/2)`
-/

namespace A316385.P15918225833941816828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A025480 (SequenceMachineLib.roundAway ((A035327 (n + 1) + A010078 (n + 2) : ℚ) / 2)).toNat

end

end A316385.P15918225833941816828

noncomputable section

/-- A316385: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, a(n) AND a(2*n) = a(n) (where AND denotes the binary AND operator).

Offset 1, canonical program `A316385.P15918225833941816828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316385 (n : ℕ) : ℤ :=
  A316385.P15918225833941816828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316826.P16423883963804976449

`A029884(n-2)+a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A316826.P16423883963804976449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A029884 (n - 2) + a (n - 1)

end

end A316826.P16423883963804976449

noncomputable section

/-- A316826: Image of 3 under repeated application of the morphism 3 -> 3,2, 2 -> 1,0,2,0,1,2, 1 -> 1,0,1,2, 0 -> 0,2.

Offset 0, canonical program `A316826.P16423883963804976449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316826 (n : ℕ) : ℤ :=
  A316826.P16423883963804976449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317198.P16178072195932306559

`1-(A317193(n+1)+17)%3`
-/

namespace A317198.P16178072195932306559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A317193 (n + 1) + 17) 3

end

end A317198.P16178072195932306559

noncomputable section

/-- A317198: Yet another version of the ternary tribonacci word: fixed point of the morphism 1 -> 1,0; 0 -> 1,-1; -1 -> 1; starting from a(0) = 1.

Offset 0, canonical program `A317198.P16178072195932306559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317198 (n : ℕ) : ℤ :=
  A317198.P16178072195932306559.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317294.P13825555864125349029

`∪[A000079(n), A052294(n+1)]`
-/

namespace A317294.P13825555864125349029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317294.P13825555864125349029

noncomputable section

/-- A317294: Numbers with a noncomposite number of 1's in their binary expansion.

Offset 1, canonical program `A317294.P13825555864125349029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317294 (n : ℕ) : ℤ :=
  (A317294.P13825555864125349029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317842.P17069676008697325351

`∑{d}[n+1, A284013(#)*A284013((n+1)/#)]`
-/

namespace A317842.P17069676008697325351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284013 d * A284013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317842.P17069676008697325351

noncomputable section

/-- A317842: Dirichlet convolution of A284013 (= n - A002487(n)) with itself, where A002487 is Stern's Diatomic sequence.

Offset 1, canonical program `A317842.P17069676008697325351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317842 (n : ℕ) : ℤ :=
  A317842.P17069676008697325351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318453.P807959455249756453

`A001790(val(n+1, 2))`
-/

namespace A318453.P807959455249756453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (SequenceMachineLib.valuation (n + 1) 2)

end

end A318453.P807959455249756453

noncomputable section

/-- A318453: Numerators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318453.P807959455249756453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318453 (n : ℕ) : ℤ :=
  A318453.P807959455249756453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319840.P10443051831769235735

`A318274(n)+A000523(A137688(n))`
-/

namespace A319840.P10443051831769235735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n + A000523 (A137688 n).toNat

end

end A319840.P10443051831769235735

noncomputable section

/-- A319840: Table read by antidiagonals: T(n, k) is the number of elements on the perimeter of an n X k matrix.

Offset 1, canonical program `A319840.P10443051831769235735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A319840 (n : ℕ) : ℤ :=
  A319840.P10443051831769235735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A319840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320283.P15640859263192477612

`n-and(A005843(n), A270106(n))`
-/

namespace A320283.P15640859263192477612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A005843 n) (A270106 n)

end

end A320283.P15640859263192477612

noncomputable section

/-- A320283: Lexicographical ordering of pure imaginary integers in the base (-1+i) numeral system.

Offset 0, canonical program `A320283.P15640859263192477612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A320283 (n : ℕ) : ℤ :=
  A320283.P15640859263192477612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A320283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320514.P1932751579605928193

`lt[∑{d}[∑{d}[n, #], #], A001969(n+1)]`
-/

namespace A320514.P1932751579605928193
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A320514.P1932751579605928193

noncomputable section

/-- A320514: Numbers k such that sigma(sigma(k)) < 2*k + 1.

Offset 1, canonical program `A320514.P1932751579605928193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A320514 (n : ℕ) : ℤ :=
  (A320514.P1932751579605928193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A320514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320926.P3058602061450553408

`A079979(A286692(n+1))`
-/

namespace A320926.P3058602061450553408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A286692 (n + 1)).toNat

end

end A320926.P3058602061450553408

noncomputable section

/-- A320926: Concatenation of successive segments generated by the morphism {0 -> {0, 0, 1}, 1 -> {0}}, starting with 0.

Offset 1, canonical program `A320926.P3058602061450553408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320926 (n : ℕ) : ℤ :=
  A320926.P3058602061450553408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322026.P9939505646475219061

`A071521(A065331(n+1))`
-/

namespace A322026.P9939505646475219061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A065331 (n + 1)).toNat

end

end A322026.P9939505646475219061

noncomputable section

/-- A322026: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(i) = A007814(j) and A007949(i) = A007949(j), for all i, j, where A007814 and A007949 give the 2- and 3-adic valuations of n.

Offset 1, canonical program `A322026.P9939505646475219061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322026 (n : ℕ) : ℤ :=
  A322026.P9939505646475219061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322756.P15132893621044649410

`2*A001790(n+1)`
-/

namespace A322756.P15132893621044649410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001790 (n + 1)

end

end A322756.P15132893621044649410

noncomputable section

/-- A322756: Denominator of expected payoff in the "Guessing Card Colors" game with a 2n-card deck, using an optimal strategy.

Offset 1, canonical program `A322756.P15132893621044649410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322756 (n : ℕ) : ℤ :=
  A322756.P15132893621044649410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325315.P8533943539929547782

`xor(abs(A325313(n+1)), abs(A325314(n+1)))`
-/

namespace A325315.P8533943539929547782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A325313 (n + 1)| |A325314 (n + 1)|

end

end A325315.P8533943539929547782

noncomputable section

/-- A325315: Bitwise-XOR of absolute values of (n - A048250(n)) and (n - A162296(n)).

Offset 1, canonical program `A325315.P8533943539929547782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325315 (n : ℕ) : ℤ :=
  A325315.P8533943539929547782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325318.P11183084377846561957

`A000203(n+1)-A325316(n+1)`
-/

namespace A325318.P11183084377846561957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325316 (n + 1)

end

end A325318.P11183084377846561957

noncomputable section

/-- A325318: a(n) = A048250(n) AND A162296(n), where AND is the bitwise-AND, A004198.

Offset 1, canonical program `A325318.P11183084377846561957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325318 (n : ℕ) : ℤ :=
  A325318.P11183084377846561957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326354.P10591338432418692922

`2*A206350(n+1)-1`
-/

namespace A326354.P10591338432418692922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206350 (n + 1) - 1

end

end A326354.P10591338432418692922

noncomputable section

/-- A326354: a(n) is the number of fractions reduced to lowest terms with numerator and denominator less than or equal to n in absolute value.

Offset 0, canonical program `A326354.P10591338432418692922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326354 (n : ℕ) : ℤ :=
  A326354.P10591338432418692922.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326729.P660711864705047236

`xor(n, ceil(A335063(n)/(n+1)))`
-/

namespace A326729.P660711864705047236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(A335063 n : ℚ) / (n + 1 : ℚ)⌉

end

end A326729.P660711864705047236

noncomputable section

/-- A326729: a(0) = 0; for n >= 1, a(n) is the result of inverting s-th bit (from right) in n, where s is the number of ones in the binary representation of n.

Offset 0, canonical program `A326729.P660711864705047236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326729 (n : ℕ) : ℤ :=
  A326729.P660711864705047236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327175.P4858780168493079708

`lt[A327174(n+1), 1]+1`
-/

namespace A327175.P4858780168493079708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327175.P4858780168493079708

noncomputable section

/-- A327175: Positions of 0's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327175.P4858780168493079708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175 (n : ℕ) : ℤ :=
  (A327175.P4858780168493079708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327176.P1040020970767484414

`lt[0, A327174(n)]`
-/

namespace A327176.P1040020970767484414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327176.P1040020970767484414

noncomputable section

/-- A327176: Positions of 1's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327176.P1040020970767484414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176 (n : ℕ) : ℤ :=
  (A327176.P1040020970767484414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327178.P10784989447855658781

`lt[n*A327177(n), n]`
-/

namespace A327178.P10784989447855658781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327177 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327178.P10784989447855658781

noncomputable section

/-- A327178: Positions of 0's in {A327177(n) : n > 0}.

Offset 1, canonical program `A327178.P10784989447855658781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A327178 (n : ℕ) : ℤ :=
  (A327178.P10784989447855658781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A327178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327179.P1020334519859577474

`lt[0, A327177(n)]`
-/

namespace A327179.P1020334519859577474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327179.P1020334519859577474

noncomputable section

/-- A327179: Positions of 1's in {A327177(n) : n > 0}.

Offset 1, canonical program `A327179.P1020334519859577474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327179 (n : ℕ) : ℤ :=
  (A327179.P1020334519859577474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327204.P13706687149448486667

`lt[0, A327202(n)]`
-/

namespace A327204.P13706687149448486667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327204.P13706687149448486667

noncomputable section

/-- A327204: Positions of 1's in {A327202(n) : n > 0}.

Offset 1, canonical program `A327204.P13706687149448486667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327204 (n : ℕ) : ℤ :=
  (A327204.P13706687149448486667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327207.P10451738580629158760

`lt[0, A327205(n)]`
-/

namespace A327207.P10451738580629158760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327207.P10451738580629158760

noncomputable section

/-- A327207: Positions of 1's in {A327205(n) : n > 0}.

Offset 1, canonical program `A327207.P10451738580629158760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327207 (n : ℕ) : ℤ :=
  (A327207.P10451738580629158760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327216.P5007103424748823424

`A327174(2*A327174(n+1)+n)`
-/

namespace A327216.P5007103424748823424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (2 * A327174 (n + 1) + (n : ℤ)).toNat

end

end A327216.P5007103424748823424

noncomputable section

/-- A327216: a(n) = [(2n+3)r] - [(n+3)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327216.P5007103424748823424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216 (n : ℕ) : ℤ :=
  A327216.P5007103424748823424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327305.P16405484816997818644

`(A327303(n+1)-A327303(n))/5^n`
-/

namespace A327305.P16405484816997818644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327303 (n + 1) - A327303 n : ℚ) / (5 ^ n : ℚ)

end

end A327305.P16405484816997818644

noncomputable section

/-- A327305: Digits of one of the two 5-adic integers sqrt(-9) that is related to A327303.

Offset 0, canonical program `A327305.P16405484816997818644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327305 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327305.P16405484816997818644.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327317.P17591906357367732011

`A059268(n)*A096035(n+1)`
-/

namespace A327317.P17591906357367732011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A096035 (n + 1)

end

end A327317.P17591906357367732011

noncomputable section

/-- A327317: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 2 and s = 1/2.

Offset 1, canonical program `A327317.P17591906357367732011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. -/
def A327317 (n : ℕ) : ℤ :=
  A327317.P17591906357367732011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. -/
def A327317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327434.P6965097301390461405

`A056221(A046868(n+1)-1)`
-/

namespace A327434.P6965097301390461405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (A046868 (n + 1) - 1).toNat

end

end A327434.P6965097301390461405

noncomputable section

/-- A327434: Prime(n)^2 - prime(n-1)*prime(n+1) for n in A046868.

Offset 1, canonical program `A327434.P6965097301390461405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A327434 (n : ℕ) : ℤ :=
  A327434.P6965097301390461405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A327434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328568.P3353613045222164027

`A003987(eq[n, A286099(n)])`
-/

namespace A328568.P3353613045222164027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328568.P3353613045222164027

noncomputable section

/-- A328568: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) XOR k, k = 0..n}, in ascending order (where XOR denotes the bitwise XOR operator).

Offset 0, canonical program `A328568.P3353613045222164027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A328568 (n : ℕ) : ℤ :=
  A328568.P3353613045222164027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A328568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329686.P15611330832861329198

`A126120(ceil(n/2))+A126120(A123108(n))`
-/

namespace A329686.P15611330832861329198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌈(n : ℚ) / 2⌉.toNat + A126120 (A123108 n).toNat

end

end A329686.P15611330832861329198

noncomputable section

/-- A329686: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, HU, HD and DH.

Offset 0, canonical program `A329686.P15611330832861329198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686 (n : ℕ) : ℤ :=
  A329686.P15611330832861329198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329687.P17295788275179189251

`A126120(floor(2*n/3))`
-/

namespace A329687.P17295788275179189251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A329687.P17295788275179189251

noncomputable section

/-- A329687: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, UD, HH and DH.

Offset 0, canonical program `A329687.P17295788275179189251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687 (n : ℕ) : ℤ :=
  A329687.P17295788275179189251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329696.P2445749868837722424

`A126120((2*n)%(n+1)+1)+1`
-/

namespace A329696.P2445749868837722424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n % (n + 1) + 1) + 1

end

end A329696.P2445749868837722424

noncomputable section

/-- A329696: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HU, HD and DH.

Offset 0, canonical program `A329696.P2445749868837722424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A329696 (n : ℕ) : ℤ :=
  A329696.P2445749868837722424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A329696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329779.P10369336807012279079

`∑[ceil(gcd(3, A315543(n))/ϕ)]`
-/

namespace A329779.P10369336807012279079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd 3 (A315543 n) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P10369336807012279079

noncomputable section

/-- A329779: Numbers that are either odd or are congruent to {+-4, +-6, +-8, +-10} (mod 32).

Offset 1, canonical program `A329779.P10369336807012279079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A329779 (n : ℕ) : ℤ :=
  A329779.P10369336807012279079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A329779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330179.P2494087960825005647

`floor(3*A292666(n+1)/2)`
-/

namespace A330179.P2494087960825005647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A292666 (n + 1) : ℚ) / 2)⌋

end

end A330179.P2494087960825005647

noncomputable section

/-- A330179: a(n) = n + floor(ns/r) + floor(nt/r), where r = e - 1, s = e, t = e + 1.

Offset 1, canonical program `A330179.P2494087960825005647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330179 (n : ℕ) : ℤ :=
  A330179.P2494087960825005647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330186.P13460853311327019796

`A350522(n)-A330175(n+1)`
-/

namespace A330186.P13460853311327019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n - A330175 (n + 1)

end

end A330186.P13460853311327019796

noncomputable section

/-- A330186: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = phi - 1/2, s = phi, t = phi + 1/2, phi = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A330186.P13460853311327019796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330186 (n : ℕ) : ℤ :=
  A330186.P13460853311327019796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330560.P6917697253061936391

`∑[A078444(n+1)%2]`
-/

namespace A330560.P6917697253061936391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078444 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P6917697253061936391

noncomputable section

/-- A330560: a(n) = number of primes p <= prime(n) with Delta(p) == 2 (mod 4), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330560.P6917697253061936391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330560 (n : ℕ) : ℤ :=
  A330560.P6917697253061936391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330932.P4071948875635423639

`∩[A330931(n+1)-1, A330931(n+1)]`
-/

namespace A330932.P4071948875635423639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330932.P4071948875635423639

noncomputable section

/-- A330932: Starts of runs of 3 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330932.P4071948875635423639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A330932 (n : ℕ) : ℤ :=
  (A330932.P4071948875635423639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A330932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332252.P10279896766399306977

`∑[A131852(1-A261366(n)+n)]`
-/

namespace A332252.P10279896766399306977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (1 - A261366 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332252.P10279896766399306977

noncomputable section

/-- A332252: a(n) is the imaginary part of f(n) defined by f(0) = 0 and f(n+1) = f(n) + i^A000120(n) (where i denotes the imaginary unit). Sequence A332251 gives real parts.

Offset 0, canonical program `A332252.P10279896766399306977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332252 (n : ℕ) : ℤ :=
  A332252.P10279896766399306977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332674.P11479518678889470787

`∩[A045453(n+1), A253970(n+1)]`
-/

namespace A332674.P11479518678889470787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P11479518678889470787

noncomputable section

/-- A332674: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 9 (mod 10).

Offset 1, canonical program `A332674.P11479518678889470787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332674 (n : ℕ) : ℤ :=
  (A332674.P11479518678889470787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332785.P15938896357927830426

`lt[gcd(n, A326186(n+1)), n]+1`
-/

namespace A332785.P15938896357927830426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A326186 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A332785.P15938896357927830426

noncomputable section

/-- A332785: Nonsquarefree numbers that are not squareful.

Offset 1, canonical program `A332785.P15938896357927830426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7574 terms. -/
def A332785 (n : ℕ) : ℤ :=
  (A332785.P15938896357927830426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7574 terms. -/
def A332785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333230.P5884877363582196228

`lt[A079054(n+2), 1]+1`
-/

namespace A333230.P5884877363582196228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333230.P5884877363582196228

noncomputable section

/-- A333230: Positions of weak ascents in the sequence of differences between primes.

Offset 1, canonical program `A333230.P5884877363582196228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333230 (n : ℕ) : ℤ :=
  (A333230.P5884877363582196228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333231.P6834028189182866023

`A046868(n+1)-1`
-/

namespace A333231.P6834028189182866023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1) - 1

end

end A333231.P6834028189182866023

noncomputable section

/-- A333231: Positions of weak descents in the sequence of differences between primes.

Offset 1, canonical program `A333231.P6834028189182866023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333231 (n : ℕ) : ℤ :=
  A333231.P6834028189182866023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333426.P8518684395099641354

`eq[0, (n+1)%A276150(n+1)]+1`
-/

namespace A333426.P8518684395099641354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333426.P8518684395099641354

noncomputable section

/-- A333426: Primorial base Niven numbers: numbers divisible by their sum of digits in primorial base (A276150).

Offset 1, canonical program `A333426.P8518684395099641354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A333426 (n : ℕ) : ℤ :=
  (A333426.P8518684395099641354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A333426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334009.P17908156774807028384

`A059268(n)²*A156308(n+1)`
-/

namespace A334009.P17908156774807028384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A156308 (n + 1)

end

end A334009.P17908156774807028384

noncomputable section

/-- A334009: Triangle read by rows: T(n, k) = binomial(n + k - 1, 2*k - 1) * 4^(k - 1) * n/k, 1 <= k <= n.

Offset 1, canonical program `A334009.P17908156774807028384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A334009 (n : ℕ) : ℤ :=
  A334009.P17908156774807028384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A334009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334218.P17970550717868276801

`A123125(A083920(n))*A318274(n)`
-/

namespace A334218.P17970550717868276801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A083920 n).toNat * A318274 n

end

end A334218.P17970550717868276801

noncomputable section

/-- A334218: Triangle read by rows: T(n,k) is the number of permutations of 1..n arranged in a circle with exactly k descents.

Offset 0, canonical program `A334218.P17970550717868276801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2586 terms. -/
def A334218 (n : ℕ) : ℤ :=
  A334218.P17970550717868276801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2586 terms. -/
def A334218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335587.P17858235810342075243

`A335063(A003817(n)-n)`
-/

namespace A335587.P17858235810342075243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (A003817 n - (n : ℤ)).toNat

end

end A335587.P17858235810342075243

noncomputable section

/-- A335587: a(n) is the sum of the numbers k such that 0 <= k <= n and n AND k = 0 (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A335587.P17858235810342075243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335587 (n : ℕ) : ℤ :=
  A335587.P17858235810342075243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335965.P14590338528508009539

`A048896(n)+abs(Δ[A048896(n)])`
-/

namespace A335965.P14590338528508009539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + |f1 (n + 1) - f1 n|

end

end A335965.P14590338528508009539

noncomputable section

/-- A335965: a(n) = number of odd numbers in the n-th row of the Narayana triangle A001263.

Offset 1, canonical program `A335965.P14590338528508009539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A335965 (n : ℕ) : ℤ :=
  A335965.P14590338528508009539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A335965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337277.P696928167752070774

`A020951(A062289(n+1))`
-/

namespace A337277.P696928167752070774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A062289 (n + 1)).toNat

end

end A337277.P696928167752070774

noncomputable section

/-- A337277: Stern's triangle read by rows.

Offset 0, canonical program `A337277.P696928167752070774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A337277 (n : ℕ) : ℤ :=
  A337277.P696928167752070774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A337277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338854.P6322233544526817225

`2^A160382(n)*3^A160383(n)`
-/

namespace A338854.P6322233544526817225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A160382 n : ℤ) * (3 : ℚ) ^ (A160383 n : ℤ)

end

end A338854.P6322233544526817225

noncomputable section

/-- A338854: Product of the nonzero digits of (n written in base 4).

Offset 0, canonical program `A338854.P6322233544526817225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338854.P6322233544526817225.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338971.P5507288159481919178

`A290255(2*lt[and(n, -n), n])%∑{d}[n+1, #]`
-/

namespace A338971.P5507288159481919178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290255 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A338971.P5507288159481919178

noncomputable section

/-- A338971: Linear representation of the complete labeled binary trees of all integer heights, where the nodes at level i, 0 <= i <= n, of a binary tree with height n are labeled with the number n-i.

Offset 0, canonical program `A338971.P5507288159481919178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A338971 (n : ℕ) : ℤ :=
  A338971.P5507288159481919178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A338971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339080.P13752444290317850624

`A045319(eq[A035103(n+1), A035103(n+2)])`
-/

namespace A339080.P13752444290317850624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339080.P13752444290317850624

noncomputable section

/-- A339080: Smaller members of binary Ormiston prime pairs: two consecutive primes whose binary representations are anagrams of each other.

Offset 1, canonical program `A339080.P13752444290317850624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A339080 (n : ℕ) : ℤ :=
  A339080.P13752444290317850624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A339080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339358.P3856827849411586667

`∑[A339356(A109613(n)+1)]`
-/

namespace A339358.P3856827849411586667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339356 (A109613 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339358.P3856827849411586667

noncomputable section

/-- A339358: Maximum number of copies of a 1234567 permutation pattern in an alternating (or zig-zag) permutation of length n + 11.

Offset 1, canonical program `A339358.P3856827849411586667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339358 (n : ℕ) : ℤ :=
  A339358.P3856827849411586667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340251.P9337903050879607244

`A153036(A142151(n))`
-/

namespace A340251.P9337903050879607244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A142151 n).toNat

end

end A340251.P9337903050879607244

noncomputable section

/-- A340251: a(n) is the index of the bit that was inverted in A340250(n) to get A340250(n+1).

Offset 0, canonical program `A340251.P9337903050879607244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A340251 (n : ℕ) : ℤ :=
  A340251.P9337903050879607244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A340251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341677.P7034296537446804868

`∑{e}[n+1, #]-A341593(n+1)`
-/

namespace A341677.P7034296537446804868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A341593 (n + 1)

end

end A341677.P7034296537446804868

noncomputable section

/-- A341677: Number of strictly inferior prime-power divisors of n.

Offset 1, canonical program `A341677.P7034296537446804868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341677 (n : ℕ) : ℤ :=
  A341677.P7034296537446804868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341781.P6122018093653235653

`eq[2, (2*(n+1))%A145154(n)]`
-/

namespace A341781.P6122018093653235653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A145154 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341781.P6122018093653235653

noncomputable section

/-- A341781: Refactorable numbers (or tau numbers, A033950) k such that k/tau(k) is even, where tau(k) = A000005(k).

Offset 1, canonical program `A341781.P6122018093653235653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A341781 (n : ℕ) : ℤ :=
  (A341781.P6122018093653235653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A341781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342882.P14357648193117281886

`A003987(A286098(n+1)-A003056(n+1))`
-/

namespace A342882.P14357648193117281886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286098 (n + 1) - A003056 (n + 1)).toNat

end

end A342882.P14357648193117281886

noncomputable section

/-- A342882: Array read by antidiagonals: Sprague Grundy values for two-dimensional Misère Nim game Gamma(P_{Mis}, C^2).

Offset 0, canonical program `A342882.P14357648193117281886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342882 (n : ℕ) : ℤ :=
  A342882.P14357648193117281886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343408.P1295939081408960791

`∑{d}[n+1, A127773(#)%(n+1)]`
-/

namespace A343408.P1295939081408960791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A127773 d) (n + 1 : ℤ)

end

end A343408.P1295939081408960791

noncomputable section

/-- A343408: Sum of proper divisors of n that are triangular numbers.

Offset 1, canonical program `A343408.P1295939081408960791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343408 (n : ℕ) : ℤ :=
  A343408.P1295939081408960791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344342.P1548768335190184719

`A344341(lt[Δ[A344341(n+1)], 2]+1)`
-/

namespace A344342.P1548768335190184719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344341 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344341 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A344342.P1548768335190184719

noncomputable section

/-- A344342: Numbers k such that k and k + 1 are both Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344342.P1548768335190184719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. -/
def A344342 (n : ℕ) : ℤ :=
  A344342.P1548768335190184719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. -/
def A344342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344438.P15929750037164641707

`char[A323505(n)-1]`
-/

namespace A344438.P15929750037164641707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A344438.P15929750037164641707

noncomputable section

/-- A344438: a(n) = 1 if n can be written as a product of factorials (A000142), 0 otherwise; Characteristic function of Jordan-Polya numbers (A001013).

Offset 1, canonical program `A344438.P15929750037164641707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344438 (n : ℕ) : ℤ :=
  (A344438.P15929750037164641707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344868.P11898745600634897145

`p?[A162345(n+2)+A034961(n+1)]`
-/

namespace A344868.P11898745600634897145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2) + A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P11898745600634897145

noncomputable section

/-- A344868: Primes p that are equal to (prime(k)+2*prime(k+1)+3*prime(k+2))/2 for some k.

Offset 1, canonical program `A344868.P11898745600634897145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A344868 (n : ℕ) : ℤ :=
  A344868.P11898745600634897145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A344868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344985.P13634796832414183033

`a(ceil(n/2)-1)+abs(A037861(n+1))` with `a(0)=1`
-/

namespace A344985.P13634796832414183033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + |A037861 (n + 1)|

end

end A344985.P13634796832414183033

noncomputable section

/-- A344985: Sum of imbalance of all initial subsequences of the binary representation of n.

Offset 1, canonical program `A344985.P13634796832414183033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344985 (n : ℕ) : ℤ :=
  A344985.P13634796832414183033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345099.P13746055854138142594

`p?[A114381(n+1)]`
-/

namespace A345099.P13746055854138142594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P13746055854138142594

noncomputable section

/-- A345099: Primes in A114381.

Offset 1, canonical program `A345099.P13746055854138142594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A345099 (n : ℕ) : ℤ :=
  A345099.P13746055854138142594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A345099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345281.P10556684959762605774

`∑{p}[n+1, A151800((n+1)/#)]`
-/

namespace A345281.P10556684959762605774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A345281.P10556684959762605774

noncomputable section

/-- A345281: a(n) = Sum_{p|n} nextprime(n/p), where nextprime(m) is the smallest prime > m.

Offset 1, canonical program `A345281.P10556684959762605774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345281 (n : ℕ) : ℤ :=
  A345281.P10556684959762605774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345867.P3810117440269639629

`A328659(n+1)-A095375(n+1)`
-/

namespace A345867.P3810117440269639629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 (n + 1) - A095375 (n + 1)

end

end A345867.P3810117440269639629

noncomputable section

/-- A345867: Total number of 0's in the binary expansions of the first n primes.

Offset 1, canonical program `A345867.P3810117440269639629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095375, A328659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345867 (n : ℕ) : ℤ :=
  A345867.P3810117440269639629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095375, A328659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347176.P15524223857312001555

`A002129(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A347176.P15524223857312001555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A347176.P15524223857312001555

noncomputable section

/-- A347176: G.f.: Sum_{k>=1} (-1)^(k+1) * k * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A347176.P15524223857312001555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347176 (n : ℕ) : ℤ :=
  A347176.P15524223857312001555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348119.P17000233484595236640

`∩[A328014(n+1)-1, A328014(n+1)]`
-/

namespace A348119.P17000233484595236640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348119.P17000233484595236640

noncomputable section

/-- A348119: Numbers k such that k and k+1 are both numbers whose powerful part is larger than their powerfree part (A328014).

Offset 1, canonical program `A348119.P17000233484595236640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A348119 (n : ℕ) : ℤ :=
  (A348119.P17000233484595236640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A348119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349258.P3621422876160068224

`∑{e}[n+1, A038573(#)]`
-/

namespace A349258.P3621422876160068224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A038573 (Nat.factorization (f1 n) p)

end

end A349258.P3621422876160068224

noncomputable section

/-- A349258: a(n) is the number of prime powers (not including 1) that are infinitary divisors of n.

Offset 1, canonical program `A349258.P3621422876160068224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349258 (n : ℕ) : ℤ :=
  A349258.P3621422876160068224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349297.P11630556186801154286

`A099375(n)%A065331(A050873(n+1))`
-/

namespace A349297.P11630556186801154286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n) (A065331 (A050873 (n + 1)).toNat)

end

end A349297.P11630556186801154286

noncomputable section

/-- A349297: Triangle T(n,k) = 1 if both n and k are even or if n and k are divisible by 3.

Offset 1, canonical program `A349297.P11630556186801154286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349297 (n : ℕ) : ℤ :=
  A349297.P11630556186801154286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349727.P7443163994713940348

`gcd(Δ[A100100(n)], A131427(n))`
-/

namespace A349727.P7443163994713940348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A131427 n)

end

end A349727.P7443163994713940348

noncomputable section

/-- A349727: Triangle read by rows, T(n, k) = [x^(n - k)] hypergeom([-n, -1 + n], [-n], x).

Offset 0, canonical program `A349727.P7443163994713940348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A349727 (n : ℕ) : ℤ :=
  (A349727.P7443163994713940348.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A349727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349847.P4438692081841496329

`2*A349835(n)-A000984(n)`
-/

namespace A349847.P4438692081841496329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349835 n - A000984 n

end

end A349847.P4438692081841496329

noncomputable section

/-- A349847: Expansion of (1 + 8*x) / sqrt(1 - 4*x).

Offset 0, canonical program `A349847.P4438692081841496329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349847 (n : ℕ) : ℤ :=
  A349847.P4438692081841496329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351140.P15868147787886378278

`A151800(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A351140.P15868147787886378278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A351140.P15868147787886378278

noncomputable section

/-- A351140: a(1) = 1, a(n) = smallest prime > a(n-1) + n.

Offset 1, canonical program `A351140.P15868147787886378278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140 (n : ℕ) : ℤ :=
  A351140.P15868147787886378278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351603.P15662806587639298420

`∑{d}[A000188(n+1), A000584((n+1)/#)]`
-/

namespace A351603.P15662806587639298420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351603.P15662806587639298420

noncomputable section

/-- A351603: a(n) = n^5 * Sum_{d^2|n} 1 / d^5.

Offset 1, canonical program `A351603.P15662806587639298420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351603 (n : ℕ) : ℤ :=
  A351603.P15662806587639298420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352785.P6519807018689113948

`A092391(A352776(n+1))`
-/

namespace A352785.P6519807018689113948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A352776 (n + 1)).toNat

end

end A352785.P6519807018689113948

noncomputable section

/-- A352785: Numbers k such that w(k - w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352785.P6519807018689113948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352785 (n : ℕ) : ℤ :=
  A352785.P6519807018689113948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353293.P9603685169671466923

`A002260(eq[0, A089885(n)])`
-/

namespace A353293.P9603685169671466923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353293.P9603685169671466923

noncomputable section

/-- A353293: Irregular table T(n, k), n > 0, k = 1..A353292(n), read by rows: the n-th row contains in ascending order the distinct positive integers k <= n that have at least one common 1-bit with n.

Offset 1, canonical program `A353293.P9603685169671466923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. -/
def A353293 (n : ℕ) : ℤ :=
  A353293.P9603685169671466923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. -/
def A353293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354037.P7194895652706141721

`A029430(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P7194895652706141721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P7194895652706141721

noncomputable section

/-- A354037: a(n) = 1 if sigma(n)-n is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354037.P7194895652706141721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037 (n : ℕ) : ℤ :=
  A354037.P7194895652706141721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354330.P1810111766731009996

`A053616(A000292(n))`
-/

namespace A354330.P1810111766731009996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A000292 n).toNat

end

end A354330.P1810111766731009996

noncomputable section

/-- A354330: Distance from the sum of the first n positive triangular numbers to the nearest triangular number.

Offset 0, canonical program `A354330.P1810111766731009996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354330 (n : ℕ) : ℤ :=
  A354330.P1810111766731009996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354968.P5289782423154033668

`A057103(n+2)/24`
-/

namespace A354968.P5289782423154033668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (n + 2) : ℚ) / 24

end

end A354968.P5289782423154033668

noncomputable section

/-- A354968: Triangle read by rows: T(n, k) = n*k*(n+k)*(n-k)/6.

Offset 2, canonical program `A354968.P5289782423154033668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354968.P5289782423154033668.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355342.P6242898558751605481

`A062157(A003056(n))*A355341(n)`
-/

namespace A355342.P6242898558751605481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A003056 n).toNat * A355341 n

end

end A355342.P6242898558751605481

noncomputable section

/-- A355342: G.f.: A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A355342.P6242898558751605481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355342 (n : ℕ) : ℤ :=
  A355342.P6242898558751605481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356360.P18222975235672550744

`or(1, A128059(∑[2-4/a(n-1)]))` with `a(0)=3, a(1)=1`
-/

namespace A356360.P18222975235672550744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128059 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A356360.P18222975235672550744

noncomputable section

/-- A356360: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(n+1))))).

Offset 3, canonical program `A356360.P18222975235672550744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5032 terms. -/
def A356360 (n : ℕ) : ℤ :=
  A356360.P18222975235672550744.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5032 terms. -/
def A356360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358135.P163929003100023159

`A001511(n+1)-A065120(n+1)`
-/

namespace A358135.P163929003100023159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A065120 (n + 1)

end

end A358135.P163929003100023159

noncomputable section

/-- A358135: Difference of first and last parts of the n-th composition in standard order.

Offset 1, canonical program `A358135.P163929003100023159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358135 (n : ℕ) : ℤ :=
  A358135.P163929003100023159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358529.P11632851717617367385

`A233671(n+1)+1`
-/

namespace A358529.P11632851717617367385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) + 1

end

end A358529.P11632851717617367385

noncomputable section

/-- A358529: Indices of the primes in A358528.

Offset 1, canonical program `A358529.P11632851717617367385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529 (n : ℕ) : ℤ :=
  A358529.P11632851717617367385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358977.P3842764694478648946

`eq[1, gcd(n, A276150(n))]`
-/

namespace A358977.P3842764694478648946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358977.P3842764694478648946

noncomputable section

/-- A358977: Numbers that are coprime to the sum of their primorial base digits (A276150).

Offset 1, canonical program `A358977.P3842764694478648946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977 (n : ℕ) : ℤ :=
  (A358977.P3842764694478648946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359352.P14078753108705027464

`A026430(1+A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359352.P14078753108705027464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (1 + A026430 (n + 1)).toNat

end

end A359352.P14078753108705027464

noncomputable section

/-- A359352: a(n) = A026430(1 + A026430(n)).

Offset 1, canonical program `A359352.P14078753108705027464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359352 (n : ℕ) : ℤ :=
  A359352.P14078753108705027464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359364.P6184962185695480939

`A007318(n)*A126120(A002262(n))`
-/

namespace A359364.P6184962185695480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (A002262 n).toNat

end

end A359364.P6184962185695480939

noncomputable section

/-- A359364: Triangle read by rows. The Motzkin triangle, the coefficients of the Motzkin polynomials. M(n, k) = binomial(n, k) * CatalanNumber(k/2) if k is even, otherwise 0.

Offset 0, canonical program `A359364.P6184962185695480939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364 (n : ℕ) : ℤ :=
  A359364.P6184962185695480939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359870.P1653634179700732458

`lt[A001414(n+1), A007913(A350390(n+1))]+1`
-/

namespace A359870.P1653634179700732458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A350390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P1653634179700732458

noncomputable section

/-- A359870: Numbers whose product of distinct prime factors is greater than the sum of its prime factors (with repetition).

Offset 1, canonical program `A359870.P1653634179700732458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870 (n : ℕ) : ℤ :=
  (A359870.P1653634179700732458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360136.P4184868371155148676

`1+A026430(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360136.P4184868371155148676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 (A026430 (n + 1)).toNat

end

end A360136.P4184868371155148676

noncomputable section

/-- A360136: a(n) = 1 + A026430(A026430(n)).

Offset 1, canonical program `A360136.P4184868371155148676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360136 (n : ℕ) : ℤ :=
  A360136.P4184868371155148676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360392.P6145566539357259399

`2+A026430(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360392.P6145566539357259399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A026430 (n + 1)

end

end A360392.P6145566539357259399

noncomputable section

/-- A360392: a(n) = 2 + A026430(n); complement of A360393.

Offset 1, canonical program `A360392.P6145566539357259399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360392 (n : ℕ) : ℤ :=
  A360392.P6145566539357259399.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360445.P439609881080055747

`∑[A178244(n)]-A178244(n)`
-/

namespace A360445.P439609881080055747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178244 n

end

end A360445.P439609881080055747

noncomputable section

/-- A360445: a(n) = Sum_{k=1..n} A178244(k-1).

Offset 0, canonical program `A360445.P439609881080055747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445 (n : ℕ) : ℤ :=
  A360445.P439609881080055747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361122.P3369539810080432684

`Δ[A053767(n)]²%3`
-/

namespace A361122.P3369539810080432684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A361122.P3369539810080432684

noncomputable section

/-- A361122: 0 if n-th composite number A002808(n) is divisible by 3, otherwise 1.

Offset 1, canonical program `A361122.P3369539810080432684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122 (n : ℕ) : ℤ :=
  A361122.P3369539810080432684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361145.P6887436568620065037

`A117973(n)-A048896(n)`
-/

namespace A361145.P6887436568620065037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n - A048896 n

end

end A361145.P6887436568620065037

noncomputable section

/-- A361145: Number of downwards peaks in row 2*n-1 of the Sierpinski triangle.

Offset 1, canonical program `A361145.P6887436568620065037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361145 (n : ℕ) : ℤ :=
  A361145.P6887436568620065037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361464.P557628188156379608

`lt[0, A361463(n+1)]+1`
-/

namespace A361464.P557628188156379608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361464.P557628188156379608

noncomputable section

/-- A361464: Numbers k such that A135504(k+1) / A135504(k) is a multiple of 4.

Offset 1, canonical program `A361464.P557628188156379608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464 (n : ℕ) : ℤ :=
  (A361464.P557628188156379608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362036.P11272790990554271734

`A000720(A362034(n))`
-/

namespace A362036.P11272790990554271734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A362034 n).toNat

end

end A362036.P11272790990554271734

noncomputable section

/-- A362036: The prime indices of A362034.

Offset 0, canonical program `A362036.P11272790990554271734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362036 (n : ℕ) : ℤ :=
  A362036.P11272790990554271734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362195.P3919212362460993078

`A008860(n)-n`
-/

namespace A362195.P3919212362460993078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n - (n : ℤ)

end

end A362195.P3919212362460993078

noncomputable section

/-- A362195: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 8 with exactly one descent.

Offset 0, canonical program `A362195.P3919212362460993078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362195 (n : ℕ) : ℤ :=
  A362195.P3919212362460993078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362595.P1441981575621675091

`A194590(A004275(n))+A126120(2*n)`
-/

namespace A362595.P1441981575621675091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + A126120 (2 * n)

end

end A362595.P1441981575621675091

noncomputable section

/-- A362595: Number of parking functions of size n avoiding the patterns 132 and 321.

Offset 0, canonical program `A362595.P1441981575621675091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595 (n : ℕ) : ℤ :=
  A362595.P1441981575621675091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362685.P6275879267292374181

`(A059268(n)-1)*A056942(n)`
-/

namespace A362685.P6275879267292374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n - 1) * A056942 n

end

end A362685.P6275879267292374181

noncomputable section

/-- A362685: Triangle of numbers read by rows, T(n, k) = (n*(n-1))*Stirling2(k, 2), for n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A362685.P6275879267292374181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685 (n : ℕ) : ℤ :=
  A362685.P6275879267292374181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362883.P10543237193728473399

`A055498(n)-A055500(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362883.P10543237193728473399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n - A055500 n

end

end A362883.P10543237193728473399

noncomputable section

/-- A362883: a(n) = A055498(n) - A055500(n).

Offset 0, canonical program `A362883.P10543237193728473399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362883 (n : ℕ) : ℤ :=
  A362883.P10543237193728473399.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363022.P8132570921243997596

`(A002129(n+1)-A321543(n+1))/2`
-/

namespace A363022.P8132570921243997596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) - A321543 (n + 1) : ℚ) / 2

end

end A363022.P8132570921243997596

noncomputable section

/-- A363022: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^3.

Offset 1, canonical program `A363022.P8132570921243997596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363022.P8132570921243997596.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363329.P11768281149440784561

`∏{e}[n+1, A038573(#)]`
-/

namespace A363329.P11768281149440784561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A038573 (Nat.factorization (f1 n) p)

end

end A363329.P11768281149440784561

noncomputable section

/-- A363329: a(n) is the number of divisors of n that are both coreful and infinitary.

Offset 1, canonical program `A363329.P11768281149440784561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363329 (n : ℕ) : ℤ :=
  A363329.P11768281149440784561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363828.P14035750330722355806

`A363827(A048671(n+1))`
-/

namespace A363828.P14035750330722355806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (A048671 (n + 1)).toNat

end

end A363828.P14035750330722355806

noncomputable section

/-- A363828: Highest power of 2 dividing n which is < sqrt(n), for n >= 2; a(1) = 1.

Offset 1, canonical program `A363828.P14035750330722355806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828 (n : ℕ) : ℤ :=
  A363828.P14035750330722355806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364067.P12319574783518078769

`A103627(A363891(n+1)+∑{d}[9*n+3, C(#, 2)%3])`
-/

namespace A364067.P12319574783518078769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 % 3 : ℕ) : ℤ)).toNat

end

end A364067.P12319574783518078769

noncomputable section

/-- A364067: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(3*k-1)).

Offset 1, canonical program `A364067.P12319574783518078769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067 (n : ℕ) : ℤ :=
  A364067.P12319574783518078769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365173.P512538171508930422

`∏{e}[n+1, A073425(#)]`
-/

namespace A365173.P512538171508930422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A073425 (Nat.factorization (f1 n) p)

end

end A365173.P512538171508930422

noncomputable section

/-- A365173: The number of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365173.P512538171508930422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365173 (n : ℕ) : ℤ :=
  A365173.P512538171508930422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365298.P12368512743649777483

`A356192(n+1)/(n+1)`
-/

namespace A365298.P12368512743649777483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356192 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A365298.P12368512743649777483

noncomputable section

/-- A365298: a(n) is the smallest number k such that k*n is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A365298.P12368512743649777483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365298.P12368512743649777483.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366902.P10509626406814896750

`∏{e}[A159481(2*n+1), A159481(#)]`
-/

namespace A366902.P10509626406814896750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A159481 (Nat.factorization (f1 n).natAbs p)

end

end A366902.P10509626406814896750

noncomputable section

/-- A366902: The number of exponentially evil divisors of n.

Offset 1, canonical program `A366902.P10509626406814896750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A366902 (n : ℕ) : ℤ :=
  A366902.P10509626406814896750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A366902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367515.P13637258747578568205

`2^A293439(n+1)`
-/

namespace A367515.P13637258747578568205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A293439 (n + 1) : ℤ)

end

end A367515.P13637258747578568205

noncomputable section

/-- A367515: The number of unitary divisors of n that are exponentially odious numbers (A270428).

Offset 1, canonical program `A367515.P13637258747578568205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367515.P13637258747578568205.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368234.P9995598727139784369

`2^n*A090317(n)`
-/

namespace A368234.P9995598727139784369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A090317 n

end

end A368234.P9995598727139784369

noncomputable section

/-- A368234: Number of nondeterministic Dyck excursions of length 2*n.

Offset 0, canonical program `A368234.P9995598727139784369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A368234 (n : ℕ) : ℤ :=
  A368234.P9995598727139784369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A368234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368405.P11135542014781809674

`∑[∏{e}[n+1, A106400(#)]]`
-/

namespace A368405.P11135542014781809674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A106400 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P11135542014781809674

noncomputable section

/-- A368405: Infinitary version of Mertens's function: a(n) = Sum_{k=1..n} A064179(k).

Offset 1, canonical program `A368405.P11135542014781809674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405 (n : ℕ) : ℤ :=
  A368405.P11135542014781809674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368827.P6800860820109245478

`eq[1, A368825(n+1)]+1`
-/

namespace A368827.P6800860820109245478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368827.P6800860820109245478

noncomputable section

/-- A368827: Indices k where A368825(k) = 1.

Offset 1, canonical program `A368827.P6800860820109245478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A368827 (n : ℕ) : ℤ :=
  (A368827.P6800860820109245478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A368827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369758.P236084488663508184

`A000203(A356192(n+1))`
-/

namespace A369758.P236084488663508184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356192 (n + 1)).toNat

end

end A369758.P236084488663508184

noncomputable section

/-- A369758: The sum of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369758.P236084488663508184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369758 (n : ℕ) : ℤ :=
  A369758.P236084488663508184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369936.P10217003281748854646

`sqrt(A369935(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369936.P10217003281748854646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A369935 (n + 1) : ℝ)

end

end A369936.P10217003281748854646

noncomputable section

/-- A369936: a(n) = sqrt(A369935(n)).

Offset 1, canonical program `A369936.P10217003281748854646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369936.P10217003281748854646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369965.P8685250262723553120

`A353558(A301293(n))`
-/

namespace A369965.P8685250262723553120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A301293 n).toNat

end

end A369965.P8685250262723553120

noncomputable section

/-- A369965: a(n) = 1 if n is of the form 4m+2 and it has an even number of prime factors with multiplicity, otherwise 0.

Offset 0, canonical program `A369965.P8685250262723553120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369965 (n : ℕ) : ℤ :=
  A369965.P8685250262723553120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370009.P11224753345839745758

`A151800(A001748(n+1))`
-/

namespace A370009.P11224753345839745758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001748 (n + 1)).toNat

end

end A370009.P11224753345839745758

noncomputable section

/-- A370009: a(n) is the least prime greater than 3*prime(n).

Offset 1, canonical program `A370009.P11224753345839745758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370009 (n : ℕ) : ℤ :=
  A370009.P11224753345839745758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372516.P8084116944890719171

`A014499(n+1)-A035103(n+1)`
-/

namespace A372516.P8084116944890719171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) - A035103 (n + 1)

end

end A372516.P8084116944890719171

noncomputable section

/-- A372516: Number of ones minus number of zeros in the binary expansion of the n-th prime number.

Offset 1, canonical program `A372516.P8084116944890719171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372516 (n : ℕ) : ℤ :=
  A372516.P8084116944890719171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372601.P13128133087775148390

`A051903(A350390(n+1))`
-/

namespace A372601.P13128133087775148390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350390 (n + 1)).toNat

end

end A372601.P13128133087775148390

noncomputable section

/-- A372601: The maximal exponent in the prime factorization of the largest exponentially odd divisor of n.

Offset 1, canonical program `A372601.P13128133087775148390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372601 (n : ℕ) : ℤ :=
  A372601.P13128133087775148390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372684.P14779655988470059317

`A000720(A104080(n+1))`
-/

namespace A372684.P14779655988470059317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104080 (n + 1)).toNat

end

end A372684.P14779655988470059317

noncomputable section

/-- A372684: Least k such that prime(k) >= 2^n.

Offset 1, canonical program `A372684.P14779655988470059317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372684 (n : ℕ) : ℤ :=
  A372684.P14779655988470059317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373187.P18015203837873108425

`∑{d}[n+1, A154269(#)*A338046((n+1)/#)]`
-/

namespace A373187.P18015203837873108425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373187.P18015203837873108425

noncomputable section

/-- A373187: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^4.

Offset 1, canonical program `A373187.P18015203837873108425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373187 (n : ℕ) : ℤ :=
  A373187.P18015203837873108425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373189.P2339985558679468875

`∑{d}[n+1, A023896(#)*A373188((n+1)/#)]`
-/

namespace A373189.P2339985558679468875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P2339985558679468875

noncomputable section

/-- A373189: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^3.

Offset 1, canonical program `A373189.P2339985558679468875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189 (n : ℕ) : ℤ :=
  A373189.P2339985558679468875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373347.P5073638856647458269

`comp[A335063(n)]`
-/

namespace A373347.P5073638856647458269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373347.P5073638856647458269

noncomputable section

/-- A373347: Positive integers k such that A000120(k) > A001511(k).

Offset 1, canonical program `A373347.P5073638856647458269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7582 terms. -/
def A373347 (n : ℕ) : ℤ :=
  (A373347.P5073638856647458269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7582 terms. -/
def A373347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373832.P1127002514526717850

`(n+1)%A276150(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373832.P1127002514526717850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

end

end A373832.P1127002514526717850

noncomputable section

/-- A373832: a(n) = n mod A276150(n), where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373832.P1127002514526717850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373832 (n : ℕ) : ℤ :=
  A373832.P1127002514526717850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373833.P1677573499582523216

`gcd(n, A276150(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373833.P1677573499582523216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

end

end A373833.P1677573499582523216

noncomputable section

/-- A373833: a(n) = gcd(n, A276150(n)), where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373833.P1677573499582523216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833 (n : ℕ) : ℤ :=
  (A373833.P1677573499582523216.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373840.P5142814624606687256

`A079978(A276150(n))`
-/

namespace A373840.P5142814624606687256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A276150 n).toNat

end

end A373840.P5142814624606687256

noncomputable section

/-- A373840: a(n) = 1 if A276150(n) is a multiple of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373840.P5142814624606687256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840 (n : ℕ) : ℤ :=
  A373840.P5142814624606687256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373990.P1245803868984221180

`char[A335063(n)-1]`
-/

namespace A373990.P1245803868984221180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373990.P1245803868984221180

noncomputable section

/-- A373990: a(n) = 1 if the binary weight of n is not greater than the 2-adic valuation of 2*n, otherwise 0.

Offset 1, canonical program `A373990.P1245803868984221180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A373990 (n : ℕ) : ℤ :=
  (A373990.P1245803868984221180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A373990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375106.P7559096786302579084

`A363851(n+1)-A363856(n+1)`
-/

namespace A375106.P7559096786302579084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363851 (n + 1) - A363856 (n + 1)

end

end A375106.P7559096786302579084

noncomputable section

/-- A375106: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+3)).

Offset 0, canonical program `A375106.P7559096786302579084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375106 (n : ℕ) : ℤ :=
  A375106.P7559096786302579084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375107.P16653102152346914502

`A363859(n+1)-A363860(n+1)`
-/

namespace A375107.P16653102152346914502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (n + 1) - A363860 (n + 1)

end

end A375107.P16653102152346914502

noncomputable section

/-- A375107: Expansion of Sum_{k in Z} x^(2*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375107.P16653102152346914502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375107 (n : ℕ) : ℤ :=
  A375107.P16653102152346914502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375108.P7246935247640333009

`A363887(n+2)-A363888(n+2)`
-/

namespace A375108.P7246935247640333009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (n + 2) - A363888 (n + 2)

end

end A375108.P7246935247640333009

noncomputable section

/-- A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375108.P7246935247640333009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108 (n : ℕ) : ℤ :=
  A375108.P7246935247640333009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375536.P10078658063554449520

`A051903(A355582(n+1))`
-/

namespace A375536.P10078658063554449520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A355582 (n + 1)).toNat

end

end A375536.P10078658063554449520

noncomputable section

/-- A375536: The maximum exponent in the prime factorization of the largest 5-smooth divisor of n.

Offset 1, canonical program `A375536.P10078658063554449520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375536 (n : ℕ) : ℤ :=
  A375536.P10078658063554449520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376286.P4544263140119506476

`A004154(n)%A151800(n)`
-/

namespace A376286.P4544263140119506476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004154 n) (A151800 n)

end

end A376286.P4544263140119506476

noncomputable section

/-- A376286: n! less trailing zeros (A004154) (mod nextprime(n)).

Offset 0, canonical program `A376286.P4544263140119506476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376286 (n : ℕ) : ℤ :=
  A376286.P4544263140119506476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376715.P17313450320270734925

`filter[A265640(n+1), A066247(#)]`
-/

namespace A376715.P17313450320270734925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376715.P17313450320270734925

noncomputable section

/-- A376715: Composite numbers in A265640.

Offset 1, canonical program `A376715.P17313450320270734925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715 (n : ℕ) : ℤ :=
  A376715.P17313450320270734925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376885.P9304065174401764500

`∑{e}[n+1, A276150(#)]`
-/

namespace A376885.P9304065174401764500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A276150 (Nat.factorization (f1 n) p)

end

end A376885.P9304065174401764500

noncomputable section

/-- A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376885.P9304065174401764500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885 (n : ℕ) : ℤ :=
  A376885.P9304065174401764500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378071.P4414927123568891139

`(2*n+3)*A001790(n)`
-/

namespace A378071.P4414927123568891139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A001790 n

end

end A378071.P4414927123568891139

noncomputable section

/-- A378071: a(n) = denominator((4^(2*n+1)*n!^2)/((2*n+3)*(2*n)!)).

Offset 0, canonical program `A378071.P4414927123568891139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071 (n : ℕ) : ℤ :=
  A378071.P4414927123568891139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378135.P14945920561631951396

`A151800(n*A151800(n))`
-/

namespace A378135.P14945920561631951396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * A151800 n).toNat

end

end A378135.P14945920561631951396

noncomputable section

/-- A378135: a(n) = p(n*p(n)), where p(x) = least prime > x.

Offset 0, canonical program `A378135.P14945920561631951396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135 (n : ℕ) : ℤ :=
  A378135.P14945920561631951396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378137.P1083240671086047846

`A151800(n²*A151800(n))`
-/

namespace A378137.P1083240671086047846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n ^ 2 : ℤ) * A151800 n).toNat

end

end A378137.P1083240671086047846

noncomputable section

/-- A378137: a(n) = p(n^2*p(n)), where p(x) is the least prime > x.

Offset 0, canonical program `A378137.P1083240671086047846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137 (n : ℕ) : ℤ :=
  A378137.P1083240671086047846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379405.P17696526180092176553

`A151800(A053024(n+1))`
-/

namespace A379405.P17696526180092176553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A053024 (n + 1)).toNat

end

end A379405.P17696526180092176553

noncomputable section

/-- A379405: a(n) = p((n+1)*p(n)), where p(x) = least prime > x; i.e., p = A151800.

Offset 0, canonical program `A379405.P17696526180092176553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405 (n : ℕ) : ℤ :=
  A379405.P17696526180092176553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379851.P2408517926029222728

`lt[2, A332881(n+1)]+1`
-/

namespace A379851.P2408517926029222728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379851.P2408517926029222728

noncomputable section

/-- A379851: Numbers k such that phi(k) does not divide k. Complement of A007694.

Offset 1, canonical program `A379851.P2408517926029222728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851 (n : ℕ) : ℤ :=
  (A379851.P2408517926029222728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380329.P8351164185332422839

`A151800((A028310(n)-1)*A151800(n))`
-/

namespace A380329.P8351164185332422839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((A028310 n - 1) * A151800 n).toNat

end

end A380329.P8351164185332422839

noncomputable section

/-- A380329: a(n) = A151800((n-1)*A151800(n)).

Offset 0, canonical program `A380329.P8351164185332422839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329 (n : ℕ) : ℤ :=
  A380329.P8351164185332422839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380330.P10363215935538864354

`A151800(A000040(n+1)*A151800(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380330.P10363215935538864354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) * A151800 (n + 1)).toNat

end

end A380330.P10363215935538864354

noncomputable section

/-- A380330: a(n) = A151800(prime(n)*A151800(n)).

Offset 1, canonical program `A380330.P10363215935538864354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380330 (n : ℕ) : ℤ :=
  A380330.P10363215935538864354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380804.P3432496646295256472

`2*A007064(n+1)-(n+1)`
-/

namespace A380804.P3432496646295256472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007064 (n + 1) - (n + 1 : ℤ)

end

end A380804.P3432496646295256472

noncomputable section

/-- A380804: a(n) = floor(A001622*A007064(n)).

Offset 1, canonical program `A380804.P3432496646295256472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804 (n : ℕ) : ℤ :=
  A380804.P3432496646295256472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382875.P1622387389709022091

`comp[A161790(n+1)]`
-/

namespace A382875.P1622387389709022091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382875.P1622387389709022091

noncomputable section

/-- A382875: Numbers which are a multiple of 2^k - 1 for some k > 1.

Offset 1, canonical program `A382875.P1622387389709022091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. -/
def A382875 (n : ℕ) : ℤ :=
  (A382875.P1622387389709022091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. -/
def A382875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382988.P3704890568810450556

`A298300(n+2)-A189912(n)`
-/

namespace A382988.P3704890568810450556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298300 (n + 2) - A189912 n

end

end A382988.P3704890568810450556

noncomputable section

/-- A382988: a(n) is the total sum of semiperimeters over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382988.P3704890568810450556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988 (n : ℕ) : ℤ :=
  A382988.P3704890568810450556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383427.P11284326733180387964

`comp[∪[A383425(n+1), A383426(n+1)]]`
-/

namespace A383427.P11284326733180387964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383425 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383427.P11284326733180387964

noncomputable section

/-- A383427: Indices k such that A003849(k) = A383422(k).

Offset 1, canonical program `A383427.P11284326733180387964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427 (n : ℕ) : ℤ :=
  (A383427.P11284326733180387964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384189.P11228189298359388274

`comp[A030130(n+1)]`
-/

namespace A384189.P11228189298359388274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384189.P11228189298359388274

noncomputable section

/-- A384189: Numbers whose number of zeros in their binary representation is not equal to 1.

Offset 1, canonical program `A384189.P11228189298359388274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189 (n : ℕ) : ℤ :=
  (A384189.P11228189298359388274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385072.P12514858410014300209

`A360010(∑[n]+1)`
-/

namespace A385072.P12514858410014300209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A385072.P12514858410014300209

noncomputable section

/-- A385072: a(n) = number of tetrahedral numbers <= n-th triangular number.

Offset 0, canonical program `A385072.P12514858410014300209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072 (n : ℕ) : ℤ :=
  A385072.P12514858410014300209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385865.P12036821787748699265

`A003057(n+2)-A233558(n+2)`
-/

namespace A385865.P12036821787748699265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A233558 (n + 2)

end

end A385865.P12036821787748699265

noncomputable section

/-- A385865: Triangle read by rows where T(n,k), for 1 <= k < n, is the column number where (n-k)^2 occurs in an n X n grid filled rowwise with the numbers 1 to n^2.

Offset 2, canonical program `A385865.P12036821787748699265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A385865 (n : ℕ) : ℤ :=
  A385865.P12036821787748699265.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A385865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386260.P6511394381099978900

`A051903(A001511(n+1)+1)`
-/

namespace A386260.P6511394381099978900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001511 (n + 1) + 1).toNat

end

end A386260.P6511394381099978900

noncomputable section

/-- A386260: Maximum exponent in the prime factorization of the exponent of the highest power of 2 dividing 4*n.

Offset 1, canonical program `A386260.P6511394381099978900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260 (n : ℕ) : ℤ :=
  A386260.P6511394381099978900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`
-/

namespace A387348.P10737065631606712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A327174 n

end

end A387348.P10737065631606712067

noncomputable section

/-- A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

Offset 1, canonical program `A387348.P10737065631606712067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348 (n : ℕ) : ℤ :=
  A387348.P10737065631606712067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387728.P1733724163278442984

`lt[A387726(n+1), n+1]+1`
-/

namespace A387728.P1733724163278442984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P1733724163278442984

noncomputable section

/-- A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

Offset 1, canonical program `A387728.P1733724163278442984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728 (n : ℕ) : ℤ :=
  (A387728.P1733724163278442984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388067.P9453088931527127366

`∑{d}[n+1, A369308(#)]`
-/

namespace A388067.P9453088931527127366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369308 d

end

end A388067.P9453088931527127366

noncomputable section

/-- A388067: Multiplicative sequence a(n) with a(p^e) = (1+floor(e/2)) * (2+floor(e/2)) / 2 for prime p and e >= 0.

Offset 1, canonical program `A388067.P9453088931527127366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067 (n : ℕ) : ℤ :=
  A388067.P9453088931527127366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388974.P5470956650158130436

`log2(A388973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388974.P5470956650158130436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A388973 (n + 1) : ℝ)

end

end A388974.P5470956650158130436

noncomputable section

/-- A388974: a(n) = log_2(A388973(n)).

Offset 1, canonical program `A388974.P5470956650158130436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388974.P5470956650158130436.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390252.P10563885878935831131

`∪[A280076(n+1), A386637(n+1)]`
-/

namespace A390252.P10563885878935831131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390252.P10563885878935831131

noncomputable section

/-- A390252: Numbers k such that sigma(k) = psi(k) + omega(k)^3.

Offset 1, canonical program `A390252.P10563885878935831131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252 (n : ℕ) : ℤ :=
  (A390252.P10563885878935831131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391575.P15759118219380588408

`eq[A286576(n), A293162(n)]`
-/

namespace A391575.P15759118219380588408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P15759118219380588408

noncomputable section

/-- A391575: Numbers k such that 3*k = A048720(3,m) for some m > k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391575.P15759118219380588408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575 (n : ℕ) : ℤ :=
  (A391575.P15759118219380588408.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391577.P11927412629419877182

`eq[A284574(n), A286576(n)]`
-/

namespace A391577.P11927412629419877182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P11927412629419877182

noncomputable section

/-- A391577: Numbers k such that A048720(3,k) = 3*m for some m < k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391577.P11927412629419877182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577 (n : ℕ) : ℤ :=
  (A391577.P11927412629419877182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391658.P1593916310506347255

`A233671(n+1)-A046868(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391658.P1593916310506347255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - A046868 (n + 1)

end

end A391658.P1593916310506347255

noncomputable section

/-- A391658: a(n) = A233671(n) - A046868(n).

Offset 1, canonical program `A391658.P1593916310506347255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658 (n : ℕ) : ℤ :=
  A391658.P1593916310506347255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391804.P2522922692948596025

`A151800(A006094(n+1))`
-/

namespace A391804.P2522922692948596025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006094 (n + 1)).toNat

end

end A391804.P2522922692948596025

noncomputable section

/-- A391804: a(n) = least prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A391804.P2522922692948596025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391804 (n : ℕ) : ℤ :=
  A391804.P2522922692948596025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391990.P7637229657384781661

`A163865(n)-A372342(n)`
-/

namespace A391990.P7637229657384781661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 n - A372342 n

end

end A391990.P7637229657384781661

noncomputable section

/-- A391990: a(n) = Sum_{k=0..floor(n/2)} (k+1) * binomial(n,k) * binomial(n-k,k).

Offset 0, canonical program `A391990.P7637229657384781661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A391990 (n : ℕ) : ℤ :=
  A391990.P7637229657384781661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A391990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392111.P4220090756127954583

`∪[A002001(n), A268328(n+1)]`
-/

namespace A392111.P4220090756127954583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392111.P4220090756127954583

noncomputable section

/-- A392111: Numbers k such that 5*k - (greatest prime < 5*k) = (least prime > 5*k) - 5*k.

Offset 1, canonical program `A392111.P4220090756127954583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111 (n : ℕ) : ℤ :=
  (A392111.P4220090756127954583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392114.P11332587441482956445

`A072570(n+2)/6`
-/

namespace A392114.P11332587441482956445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072570 (n + 2) : ℚ) / 6

end

end A392114.P11332587441482956445

noncomputable section

/-- A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392114.P11332587441482956445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392114.P11332587441482956445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392598.P12361947951948516843

`A268357(n+1)*A392597(n+1)`
-/

namespace A392598.P12361947951948516843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268357 (n + 1) * A392597 (n + 1)

end

end A392598.P12361947951948516843

noncomputable section

/-- A392598: The largest 11-smooth divisor of n.

Offset 1, canonical program `A392598.P12361947951948516843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598 (n : ℕ) : ℤ :=
  A392598.P12361947951948516843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392632.P13925357405564602898

`eq[1, A392630(n+1)]+1`
-/

namespace A392632.P13925357405564602898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392632.P13925357405564602898

noncomputable section

/-- A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

Offset 1, canonical program `A392632.P13925357405564602898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632 (n : ℕ) : ℤ :=
  (A392632.P13925357405564602898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392841.P10420342193856586966

`val(A165404(n+1), 2)`
-/

namespace A392841.P10420342193856586966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165404 (n + 1)).toNat 2

end

end A392841.P10420342193856586966

noncomputable section

/-- A392841: Number of trailing zeros in a type of Zeckendorf expansion based on the Fibonacci numbers of odd index.

Offset 1, canonical program `A392841.P10420342193856586966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841 (n : ℕ) : ℤ :=
  (A392841.P10420342193856586966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393924.P12806141696084150267

`record[gcd(n, A326186(n+1))+1]`
-/

namespace A393924.P12806141696084150267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A326186 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393924.P12806141696084150267

noncomputable section

/-- A393924: Numbers that are either squarefree or squareful.

Offset 1, canonical program `A393924.P12806141696084150267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924 (n : ℕ) : ℤ :=
  (A393924.P12806141696084150267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395253.P18042258813510098844

`Δ[A395251(n+1)]`
-/

namespace A395253.P18042258813510098844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395253.P18042258813510098844

noncomputable section

/-- A395253: Differences of A395251.

Offset 1, canonical program `A395253.P18042258813510098844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253 (n : ℕ) : ℤ :=
  A395253.P18042258813510098844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395542.P7948443198613962418

`eq[A000120(n), A276134(n)]`
-/

namespace A395542.P7948443198613962418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395542.P7948443198613962418

noncomputable section

/-- A395542: Numbers whose number of nonzero digits is identical in base 2 and 5.

Offset 1, canonical program `A395542.P7948443198613962418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542 (n : ℕ) : ℤ :=
  (A395542.P7948443198613962418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395853.P3335866657025949553

`comp[A354626(n+1)]`
-/

namespace A395853.P3335866657025949553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395853.P3335866657025949553

noncomputable section

/-- A395853: Numbers that can be written as the sum of a Fibonacci number and the square of a Fibonacci number.

Offset 1, canonical program `A395853.P3335866657025949553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A395853 (n : ℕ) : ℤ :=
  (A395853.P3335866657025949553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A395853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396348.P3604061063505832311

`A060176(A278818(n))`
-/

namespace A396348.P3604061063505832311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060176 (A278818 n).toNat

end

end A396348.P3604061063505832311

noncomputable section

/-- A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

Offset 1, canonical program `A396348.P3604061063505832311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396348 (n : ℕ) : ℤ :=
  A396348.P3604061063505832311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312184.P16435784878311802560

`A004772(A312123(n)-n)+1`
-/

namespace A312184.P16435784878311802560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A312123 n - (n : ℤ)).toNat + 1

end

end A312184.P16435784878311802560

noncomputable section

/-- A312184: Coordination sequence Gal.6.155.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312184.P16435784878311802560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312184 (n : ℕ) : ℤ :=
  A312184.P16435784878311802560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312555.P10974015177557321906

`A311993(n)+Δ[A011862(n)]`
-/

namespace A312555.P10974015177557321906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + (f1 (n + 1) - f1 n)

end

end A312555.P10974015177557321906

noncomputable section

/-- A312555: Coordination sequence Gal.5.110.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312555.P10974015177557321906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312555 (n : ℕ) : ℤ :=
  A312555.P10974015177557321906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312669.P16662175868118744166

`2*A312100(n)-A008574(n)`
-/

namespace A312669.P16662175868118744166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312100 n - A008574 n

end

end A312669.P16662175868118744166

noncomputable section

/-- A312669: Coordination sequence Gal.5.111.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312669.P16662175868118744166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A312669 (n : ℕ) : ℤ :=
  A312669.P16662175868118744166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A312669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312935.P3936906225367747265

`abs(A008592(n)-A315521(n))`
-/

namespace A312935.P3936906225367747265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315521 n|

end

end A312935.P3936906225367747265

noncomputable section

/-- A312935: Coordination sequence Gal.4.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312935.P3936906225367747265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A312935 (n : ℕ) : ℤ :=
  A312935.P3936906225367747265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A312935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313025.P18246201174359200645

`A301724(n)-(A330033(n)+n)`
-/

namespace A313025.P18246201174359200645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - (A330033 n + (n : ℤ))

end

end A313025.P18246201174359200645

noncomputable section

/-- A313025: Coordination sequence Gal.5.65.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313025.P18246201174359200645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313025 (n : ℕ) : ℤ :=
  A313025.P18246201174359200645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313064.P10281981631680228567

`A311312(n)+∑[A021913(n)]`
-/

namespace A313064.P10281981631680228567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313064.P10281981631680228567

noncomputable section

/-- A313064: Coordination sequence Gal.6.195.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313064.P10281981631680228567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A313064 (n : ℕ) : ℤ :=
  A313064.P10281981631680228567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A313064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313117.P16447127706921561156

`A312123(n)+A004396(n-A004525(n))`
-/

namespace A313117.P16447127706921561156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313117.P16447127706921561156

noncomputable section

/-- A313117: Coordination sequence Gal.6.134.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313117.P16447127706921561156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313117 (n : ℕ) : ℤ :=
  A313117.P16447127706921561156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313262.P4986091702170886326

`A312144(n)+∑[A021913(n)]`
-/

namespace A313262.P4986091702170886326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313262.P4986091702170886326

noncomputable section

/-- A313262: Coordination sequence Gal.6.205.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313262.P4986091702170886326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313262 (n : ℕ) : ℤ :=
  A313262.P4986091702170886326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313283.P1676533140886781686

`abs(10*n-A315403(n))`
-/

namespace A313283.P1676533140886781686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315403 n|

end

end A313283.P1676533140886781686

noncomputable section

/-- A313283: Coordination sequence Gal.6.207.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313283.P1676533140886781686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313283 (n : ℕ) : ℤ :=
  A313283.P1676533140886781686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313293.P9420717771788987788

`A313894(n)-A128834(A004396(n))`
-/

namespace A313293.P9420717771788987788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A128834 (A004396 n).toNat

end

end A313293.P9420717771788987788

noncomputable section

/-- A313293: Coordination sequence Gal.5.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313293.P9420717771788987788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313293 (n : ℕ) : ℤ :=
  A313293.P9420717771788987788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313297.P8971349673296799465

`abs(A008592(n)-A315395(n))`
-/

namespace A313297.P8971349673296799465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315395 n|

end

end A313297.P8971349673296799465

noncomputable section

/-- A313297: Coordination sequence Gal.6.210.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313297.P8971349673296799465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313297 (n : ℕ) : ℤ :=
  A313297.P8971349673296799465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313611.P14084562864274338654

`A004525(n)+A313540(n)-A004396(A004525(n))`
-/

namespace A313611.P14084562864274338654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313540 n - A004396 (A004525 n).toNat)

end

end A313611.P14084562864274338654

noncomputable section

/-- A313611: Coordination sequence Gal.6.337.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313611.P14084562864274338654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313611 (n : ℕ) : ℤ :=
  A313611.P14084562864274338654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313619.P4479225662466088296

`A004525(n)+A313540(n)-A004525(A004396(n))`
-/

namespace A313619.P4479225662466088296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313540 n - A004525 (A004396 n).toNat)

end

end A313619.P4479225662466088296

noncomputable section

/-- A313619: Coordination sequence Gal.6.260.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313619.P4479225662466088296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313619 (n : ℕ) : ℤ :=
  A313619.P4479225662466088296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313623.P10903003669249707041

`abs(A008592(n)-A313827(n))`
-/

namespace A313623.P10903003669249707041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313827 n|

end

end A313623.P10903003669249707041

noncomputable section

/-- A313623: Coordination sequence Gal.5.87.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313623.P10903003669249707041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313623 (n : ℕ) : ℤ :=
  A313623.P10903003669249707041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313704.P6800385676171828535

`A313560(n)+Δ[A011864(n)]`
-/

namespace A313704.P6800385676171828535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 n + (f1 (n + 1) - f1 n)

end

end A313704.P6800385676171828535

noncomputable section

/-- A313704: Coordination sequence Gal.6.323.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313704.P6800385676171828535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313704 (n : ℕ) : ℤ :=
  A313704.P6800385676171828535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313717.P15469880172162145756

`abs(9*n-A311312(n))`
-/

namespace A313717.P15469880172162145756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311312 n|

end

end A313717.P15469880172162145756

noncomputable section

/-- A313717: Coordination sequence Gal.6.151.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313717.P15469880172162145756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A313717 (n : ℕ) : ℤ :=
  A313717.P15469880172162145756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A313717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313719.P4530197353488080189

`A312195(n)+A253262(n)`
-/

namespace A313719.P4530197353488080189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312195 n + A253262 n

end

end A313719.P4530197353488080189

noncomputable section

/-- A313719: Coordination sequence Gal.5.116.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313719.P4530197353488080189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A313719 (n : ℕ) : ℤ :=
  A313719.P4530197353488080189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A313719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313768.P5164488227941106115

`abs(A008592(n)-A313711(n))`
-/

namespace A313768.P5164488227941106115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313711 n|

end

end A313768.P5164488227941106115

noncomputable section

/-- A313768: Coordination sequence Gal.6.261.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313768.P5164488227941106115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313768 (n : ℕ) : ℤ :=
  A313768.P5164488227941106115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313794.P6065180597494154832

`abs(10*n-A313684(n))`
-/

namespace A313794.P6065180597494154832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313684 n|

end

end A313794.P6065180597494154832

noncomputable section

/-- A313794: Coordination sequence Gal.6.619.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313794.P6065180597494154832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313794 (n : ℕ) : ℤ :=
  A313794.P6065180597494154832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313799.P9233664221489644288

`abs(A008592(n)-A313683(n))`
-/

namespace A313799.P9233664221489644288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313683 n|

end

end A313799.P9233664221489644288

noncomputable section

/-- A313799: Coordination sequence Gal.3.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313799.P9233664221489644288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A313799 (n : ℕ) : ℤ :=
  A313799.P9233664221489644288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A313799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313876.P7091103484459184855

`abs(A008592(n)-A313560(n))`
-/

namespace A313876.P7091103484459184855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313560 n|

end

end A313876.P7091103484459184855

noncomputable section

/-- A313876: Coordination sequence Gal.6.342.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313876.P7091103484459184855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313876 (n : ℕ) : ℤ :=
  A313876.P7091103484459184855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313895.P8605907711539961465

`A313873(n)+A313926(n)-A313916(n)`
-/

namespace A313895.P8605907711539961465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + (A313926 n - A313916 n)

end

end A313895.P8605907711539961465

noncomputable section

/-- A313895: Coordination sequence Gal.6.647.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313895.P8605907711539961465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313895 (n : ℕ) : ℤ :=
  A313895.P8605907711539961465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313915.P8871065517544398615

`A008486(2*n)+A312140(n)-A313752(n)`
-/

namespace A313915.P8871065517544398615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A312140 n - A313752 n)

end

end A313915.P8871065517544398615

noncomputable section

/-- A313915: Coordination sequence Gal.6.647.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313915.P8871065517544398615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A313915 (n : ℕ) : ℤ :=
  A313915.P8871065517544398615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A313915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313932.P4222521981908948703

`A315344(n)-A134667(n)`
-/

namespace A313932.P4222521981908948703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315344 n - A134667 n

end

end A313932.P4222521981908948703

noncomputable section

/-- A313932: Coordination sequence Gal.6.370.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313932.P4222521981908948703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A313932 (n : ℕ) : ℤ :=
  A313932.P4222521981908948703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A313932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313966.P14662508330527286566

`A028310(A313957(2*n)-A314123(n))`
-/

namespace A313966.P14662508330527286566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313957 (2 * n) - A314123 n).toNat

end

end A313966.P14662508330527286566

noncomputable section

/-- A313966: Coordination sequence Gal.5.310.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313966.P14662508330527286566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A313966 (n : ℕ) : ℤ :=
  A313966.P14662508330527286566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A313966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314029.P11928005688573589694

`abs(8*n-A004396(A312472(n)))`
-/

namespace A314029.P11928005688573589694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A004396 (A312472 n).toNat|

end

end A314029.P11928005688573589694

noncomputable section

/-- A314029: Coordination sequence Gal.6.328.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314029.P11928005688573589694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314029 (n : ℕ) : ℤ :=
  A314029.P11928005688573589694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314038.P12633839293519020832

`abs(A008592(n)-A315034(n))`
-/

namespace A314038.P12633839293519020832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315034 n|

end

end A314038.P12633839293519020832

noncomputable section

/-- A314038: Coordination sequence Gal.6.616.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314038.P12633839293519020832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314038 (n : ℕ) : ℤ :=
  A314038.P12633839293519020832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314054.P9922859689794149841

`A313754(n)+A128834(A142150(n))`
-/

namespace A314054.P9922859689794149841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n + A128834 (A142150 n).toNat

end

end A314054.P9922859689794149841

noncomputable section

/-- A314054: Coordination sequence Gal.4.142.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314054.P9922859689794149841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A314054 (n : ℕ) : ℤ :=
  A314054.P9922859689794149841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A314054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314057.P17750692989560915075

`A004396(A313620(n))+2*n`
-/

namespace A314057.P17750692989560915075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313620 n).toNat + (2 * n : ℤ)

end

end A314057.P17750692989560915075

noncomputable section

/-- A314057: Coordination sequence Gal.6.635.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314057.P17750692989560915075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314057 (n : ℕ) : ℤ :=
  A314057.P17750692989560915075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314066.P16209138057789803329

`2*A314043(n)-A314022(n)`
-/

namespace A314066.P16209138057789803329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314043 n - A314022 n

end

end A314066.P16209138057789803329

noncomputable section

/-- A314066: Coordination sequence Gal.4.144.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314066.P16209138057789803329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A314066 (n : ℕ) : ℤ :=
  A314066.P16209138057789803329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A314066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314088.P4296014599447221606

`A042965(A313683(n)+1-n)`
-/

namespace A314088.P4296014599447221606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A313683 n + (1 - (n : ℤ))).toNat

end

end A314088.P4296014599447221606

noncomputable section

/-- A314088: Coordination sequence Gal.5.111.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314088.P4296014599447221606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A314088 (n : ℕ) : ℤ :=
  A314088.P4296014599447221606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A314088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314121.P12858251584792299681

`abs(A134667(n)-A038608(A315475(n)))`
-/

namespace A314121.P12858251584792299681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134667 n - A038608 (A315475 n).toNat|

end

end A314121.P12858251584792299681

noncomputable section

/-- A314121: Coordination sequence Gal.6.657.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314121.P12858251584792299681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A314121 (n : ℕ) : ℤ :=
  A314121.P12858251584792299681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A314121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314133.P10587469180771269075

`A314052(n)+Δ[A011864(n)]`
-/

namespace A314133.P10587469180771269075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314052 n + (f1 (n + 1) - f1 n)

end

end A314133.P10587469180771269075

noncomputable section

/-- A314133: Coordination sequence Gal.6.623.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314133.P10587469180771269075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314133 (n : ℕ) : ℤ :=
  A314133.P10587469180771269075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314159.P9267206370846563594

`A310457(n)+A004525(n)`
-/

namespace A314159.P9267206370846563594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A004525 n

end

end A314159.P9267206370846563594

noncomputable section

/-- A314159: Coordination sequence Gal.6.624.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314159.P9267206370846563594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A314159 (n : ℕ) : ℤ :=
  A314159.P9267206370846563594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A314159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314234.P3486160622524508479

`A004396(2*(A313869(n)-n))`
-/

namespace A314234.P3486160622524508479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313869 n - (n : ℤ))).toNat

end

end A314234.P3486160622524508479

noncomputable section

/-- A314234: Coordination sequence Gal.6.332.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314234.P3486160622524508479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A314234 (n : ℕ) : ℤ :=
  A314234.P3486160622524508479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A314234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314263.P7199020950879472314

`A315732(n)-A128834(n)`
-/

namespace A314263.P7199020950879472314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315732 n - A128834 n

end

end A314263.P7199020950879472314

noncomputable section

/-- A314263: Coordination sequence Gal.6.662.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314263.P7199020950879472314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314263 (n : ℕ) : ℤ :=
  A314263.P7199020950879472314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314364.P3264614006262536072

`A315943(n)-A006368(A004396(n))`
-/

namespace A314364.P3264614006262536072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n - A006368 (A004396 n).toNat

end

end A314364.P3264614006262536072

noncomputable section

/-- A314364: Coordination sequence Gal.5.91.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314364.P3264614006262536072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314364 (n : ℕ) : ℤ :=
  A314364.P3264614006262536072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314671.P7548887448611647947

`A008458(n)+A008576(n)-A312100(n)`
-/

namespace A314671.P7548887448611647947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A312100 n)

end

end A314671.P7548887448611647947

noncomputable section

/-- A314671: Coordination sequence Gal.5.95.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314671.P7548887448611647947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A314671 (n : ℕ) : ℤ :=
  A314671.P7548887448611647947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A314671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314691.P8896103277328395044

`A311312(n)+A004525(A004396(n))`
-/

namespace A314691.P8896103277328395044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A004525 (A004396 n).toNat

end

end A314691.P8896103277328395044

noncomputable section

/-- A314691: Coordination sequence Gal.6.256.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314691.P8896103277328395044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A314691 (n : ℕ) : ℤ :=
  A314691.P8896103277328395044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A314691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314708.P15864941767784630642

`A315171(n)-A330025(A330025(n)+n)`
-/

namespace A314708.P15864941767784630642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A314708.P15864941767784630642

noncomputable section

/-- A314708: Coordination sequence Gal.5.65.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314708.P15864941767784630642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. -/
def A314708 (n : ℕ) : ℤ :=
  A314708.P15864941767784630642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. -/
def A314708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314737.P17028861215793571548

`A313583(n)-A004525(n-A004396(n))`
-/

namespace A314737.P17028861215793571548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314737.P17028861215793571548

noncomputable section

/-- A314737: Coordination sequence Gal.6.260.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314737.P17028861215793571548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314737 (n : ℕ) : ℤ :=
  A314737.P17028861215793571548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315039.P14949474118116711109

`A314922(n)+A008615(A019425(n))`
-/

namespace A315039.P14949474118116711109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n + A008615 (A019425 n).toNat

end

end A315039.P14949474118116711109

noncomputable section

/-- A315039: Coordination sequence Gal.3.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315039.P14949474118116711109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A315039 (n : ℕ) : ℤ :=
  A315039.P14949474118116711109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A315039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315068.P4253477378695981415

`A311993(n)+A004396(n)`
-/

namespace A315068.P4253477378695981415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + A004396 n

end

end A315068.P4253477378695981415

noncomputable section

/-- A315068: Coordination sequence Gal.5.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315068.P4253477378695981415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315068 (n : ℕ) : ℤ :=
  A315068.P4253477378695981415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315185.P5138845310423041581

`A313683(n)+A102283(A006369(n))`
-/

namespace A315185.P5138845310423041581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A102283 (A006369 n).toNat

end

end A315185.P5138845310423041581

noncomputable section

/-- A315185: Coordination sequence Gal.5.115.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315185.P5138845310423041581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A315185 (n : ℕ) : ℤ :=
  A315185.P5138845310423041581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A315185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315213.P4408684047996262783

`A008574(n)+A250120(n)-A310252(n)`
-/

namespace A315213.P4408684047996262783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A250120 n - A310252 n)

end

end A315213.P4408684047996262783

noncomputable section

/-- A315213: Coordination sequence Gal.6.453.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315213.P4408684047996262783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315213 (n : ℕ) : ℤ :=
  A315213.P4408684047996262783.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315214.P13359799671460808905

`abs(A008592(n)-A310493(n))`
-/

namespace A315214.P13359799671460808905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310493 n|

end

end A315214.P13359799671460808905

noncomputable section

/-- A315214: Coordination sequence Gal.5.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315214.P13359799671460808905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A315214 (n : ℕ) : ℤ :=
  A315214.P13359799671460808905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A315214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315242.P2454074657046270504

`A314851(n)+A046978(n)`
-/

namespace A315242.P2454074657046270504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314851 n + A046978 n

end

end A315242.P2454074657046270504

noncomputable section

/-- A315242: Coordination sequence Gal.6.36.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315242.P2454074657046270504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A315242 (n : ℕ) : ℤ :=
  A315242.P2454074657046270504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A315242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315261.P9856986548447563779

`A315208(n)+Δ[A011864(n)]`
-/

namespace A315261.P9856986548447563779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 n + (f1 (n + 1) - f1 n)

end

end A315261.P9856986548447563779

noncomputable section

/-- A315261: Coordination sequence Gal.6.204.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315261.P9856986548447563779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315261 (n : ℕ) : ℤ :=
  A315261.P9856986548447563779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315305.P7723534029147284216

`A315208(2*n)+A310413(n+1)-A310413(2*n+1)`
-/

namespace A315305.P7723534029147284216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 (2 * n) + (A310413 (n + 1) - A310413 (2 * n + 1))

end

end A315305.P7723534029147284216

noncomputable section

/-- A315305: Coordination sequence Gal.6.338.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315305.P7723534029147284216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A315305 (n : ℕ) : ℤ :=
  A315305.P7723534029147284216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A315305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315398.P956186230154904565

`A313683(n)+A134667(A004396(n))`
-/

namespace A315398.P956186230154904565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A134667 (A004396 n).toNat

end

end A315398.P956186230154904565

noncomputable section

/-- A315398: Coordination sequence Gal.5.100.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315398.P956186230154904565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A315398 (n : ℕ) : ℤ :=
  A315398.P956186230154904565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A315398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315426.P10794003030174514312

`abs(A008592(n)-A313212(n))`
-/

namespace A315426.P10794003030174514312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313212 n|

end

end A315426.P10794003030174514312

noncomputable section

/-- A315426: Coordination sequence Gal.6.331.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315426.P10794003030174514312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A315426 (n : ℕ) : ℤ :=
  A315426.P10794003030174514312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A315426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315467.P13448828790190736749

`A313684(n)+A004525(n)`
-/

namespace A315467.P13448828790190736749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313684 n + A004525 n

end

end A315467.P13448828790190736749

noncomputable section

/-- A315467: Coordination sequence Gal.6.159.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315467.P13448828790190736749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A315467 (n : ℕ) : ℤ :=
  A315467.P13448828790190736749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A315467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315650.P2311187658339544642

`2*A313560(n)-A008574(n)`
-/

namespace A315650.P2311187658339544642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313560 n - A008574 n

end

end A315650.P2311187658339544642

noncomputable section

/-- A315650: Coordination sequence Gal.6.623.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315650.P2311187658339544642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A315650 (n : ℕ) : ℤ :=
  A315650.P2311187658339544642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A315650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315669.P3322575996641601745

`2*A313683(n)-A311816(n)`
-/

namespace A315669.P3322575996641601745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A311816 n

end

end A315669.P3322575996641601745

noncomputable section

/-- A315669: Coordination sequence Gal.5.113.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315669.P3322575996641601745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315669 (n : ℕ) : ℤ :=
  A315669.P3322575996641601745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315672.P4140044369733124398

`abs(A008592(n)-A312195(n))`
-/

namespace A315672.P4140044369733124398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312195 n|

end

end A315672.P4140044369733124398

noncomputable section

/-- A315672: Coordination sequence Gal.5.139.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315672.P4140044369733124398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315672 (n : ℕ) : ℤ :=
  A315672.P4140044369733124398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315808.P6560214606252712380

`A004277(A315187(2*n))-A313583(3*n)`
-/

namespace A315808.P6560214606252712380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315187 (2 * n)).toNat - A313583 (3 * n)

end

end A315808.P6560214606252712380

noncomputable section

/-- A315808: Coordination sequence Gal.4.19.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315808.P6560214606252712380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 794 terms. -/
def A315808 (n : ℕ) : ℤ :=
  A315808.P6560214606252712380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 794 terms. -/
def A315808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315828.P14903365613760459994

`A008486(A250120(n)-A310252(n))`
-/

namespace A315828.P14903365613760459994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A250120 n - A310252 n).toNat

end

end A315828.P14903365613760459994

noncomputable section

/-- A315828: Coordination sequence Gal.3.6.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315828.P14903365613760459994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2768 terms. -/
def A315828 (n : ℕ) : ℤ :=
  A315828.P14903365613760459994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2768 terms. -/
def A315828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317048.P2477783459153018181

`A005100(A317045(n+1))`
-/

namespace A317048.P2477783459153018181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A317045 (n + 1)).toNat

end

end A317048.P2477783459153018181

noncomputable section

/-- A317048: Numbers k such that both k and k + 2 are consecutive deficient numbers.

Offset 1, canonical program `A317048.P2477783459153018181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317048 (n : ℕ) : ℤ :=
  A317048.P2477783459153018181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317407.P2584308412122888384

`record[A258746(n+1)]`
-/

namespace A317407.P2584308412122888384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317407.P2584308412122888384

noncomputable section

/-- A317407: The "OOPS" numbers -- numbers with ones in all odd-numbered positions of the binary representation of n.

Offset 1, canonical program `A317407.P2584308412122888384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A317407 (n : ℕ) : ℤ :=
  A317407.P2584308412122888384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A317407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318461.P3813051560236741660

`A000203(n+1)-A318463(n+1)`
-/

namespace A318461.P3813051560236741660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318463 (n + 1)

end

end A318461.P3813051560236741660

noncomputable section

/-- A318461: a(n) = Sum_{d|n, d <= n/d} (d OR n/d), where OR is bitwise-or (A003986).

Offset 1, canonical program `A318461.P3813051560236741660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318461 (n : ℕ) : ℤ :=
  A318461.P3813051560236741660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320528.P16363146703979691685

`A056329(n+1)-A304975(n+1)`
-/

namespace A320528.P16363146703979691685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056329 (n + 1) - A304975 (n + 1)

end

end A320528.P16363146703979691685

noncomputable section

/-- A320528: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 5 colors (subsets).

Offset 1, canonical program `A320528.P16363146703979691685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056329, A304975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320528 (n : ℕ) : ℤ :=
  A320528.P16363146703979691685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056329, A304975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320965.P2267012518773111815

`A060687(n+1)²`
-/

namespace A320965.P2267012518773111815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1) ^ 2

end

end A320965.P2267012518773111815

noncomputable section

/-- A320965: Squares divisible by a single cube > 1.

Offset 1, canonical program `A320965.P2267012518773111815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320965 (n : ℕ) : ℤ :=
  A320965.P2267012518773111815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321032.P17473703788572947665

`A047099(n+2)-1`
-/

namespace A321032.P17473703788572947665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047099 (n + 2) - 1

end

end A321032.P17473703788572947665

noncomputable section

/-- A321032: Number of words of length 3n such that all letters of the binary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples into the initially empty word.

Offset 2, canonical program `A321032.P17473703788572947665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A321032 (n : ℕ) : ℤ :=
  A321032.P17473703788572947665.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A321032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321126.P14066431078596286200

`A049581(n)+A004280(A003983(n+1))`
-/

namespace A321126.P14066431078596286200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + A004280 (A003983 (n + 1)).toNat

end

end A321126.P14066431078596286200

noncomputable section

/-- A321126: T(n,k) = max(n + k - 1, n + 1, k + 1), square array read by antidiagonals (n >= 0, k >= 0).

Offset 0, canonical program `A321126.P14066431078596286200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321126 (n : ℕ) : ℤ :=
  A321126.P14066431078596286200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322671.P6670530733806521760

`∑{d}[n+1, A007956(#)]`
-/

namespace A322671.P6670530733806521760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007956 d

end

end A322671.P6670530733806521760

noncomputable section

/-- A322671: a(n) = Sum_{d|n} (pod(d)/d), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A322671.P6670530733806521760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A322671 (n : ℕ) : ℤ :=
  A322671.P6670530733806521760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A322671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322672.P7673391804805302006

`∏{d}[n+1, A007956(#)]`
-/

namespace A322672.P7673391804805302006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007956 d

end

end A322672.P7673391804805302006

noncomputable section

/-- A322672: a(n) = Product_{d|n} (pod(d)/d) where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A322672.P7673391804805302006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A322672 (n : ℕ) : ℤ :=
  A322672.P7673391804805302006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A322672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322744.P7428208251532424710

`2*A334923(n+1)-A003991(n+1)`
-/

namespace A322744.P7428208251532424710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334923 (n + 1) - A003991 (n + 1)

end

end A322744.P7428208251532424710

noncomputable section

/-- A322744: Array T(n,k) = (3*n*k - A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A322744.P7428208251532424710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A322744 (n : ℕ) : ℤ :=
  A322744.P7428208251532424710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A322744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322966.P13519530522843253695

`A007947(n+1)/A008473(n+1)*A322965(n+1)`
-/

namespace A322966.P13519530522843253695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A008473 (n + 1) : ℚ) * (A322965 (n + 1) : ℚ)

end

end A322966.P13519530522843253695

noncomputable section

/-- A322966: Denominator of Sum_{d | n} 1/rad(d) where rad = A007947.

Offset 1, canonical program `A322966.P13519530522843253695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322966 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322966.P13519530522843253695.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322977.P5017233657723959374

`∑{d}[n+1, A000035(#-1)*A101264((n+1)/#-1)]`
-/

namespace A322977.P5017233657723959374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (d - 1) * A101264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A322977.P5017233657723959374

noncomputable section

/-- A322977: Number of even divisors d of n such that d-1 is prime.

Offset 1, canonical program `A322977.P5017233657723959374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322977 (n : ℕ) : ℤ :=
  A322977.P5017233657723959374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323326.P17752008137620841632

`2*A208251(n+1)-∑[A010051(n+1)]`
-/

namespace A323326.P17752008137620841632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208251 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323326.P17752008137620841632

noncomputable section

/-- A323326: a(n) = 2*T(n) - pi(n), where T(n) (A208251) is the number of refactorable/tau numbers (A033950) <= n and pi(n) (A000720) is the number of primes <= n.

Offset 1, canonical program `A323326.P17752008137620841632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A323326 (n : ℕ) : ℤ :=
  A323326.P17752008137620841632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A323326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323641.P1592555987281222169

`A323651(n+3)/4`
-/

namespace A323641.P1592555987281222169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323651 (n + 3) : ℚ) / 4

end

end A323641.P1592555987281222169

noncomputable section

/-- A323641: Triangle read by rows in which row n lists the first 2^n terms of A323642, n >= 1.

Offset 1, canonical program `A323641.P1592555987281222169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323641.P1592555987281222169.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323650.P9549203786306784903

`A323651(n)+a(n-1)` with `a(0)=0`
-/

namespace A323650.P9549203786306784903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323651 n + a (n - 1)

end

end A323650.P9549203786306784903

noncomputable section

/-- A323650: Flower garden sequence (see Comments for precise definition).

Offset 0, canonical program `A323650.P9549203786306784903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323650 (n : ℕ) : ℤ :=
  A323650.P9549203786306784903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324122.P6437590254037711062

`A000203(n+1)-A324121(n+1)`
-/

namespace A324122.P6437590254037711062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A324121 (n + 1)

end

end A324122.P6437590254037711062

noncomputable section

/-- A324122: a(n) = sigma(n) - gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A324122.P6437590254037711062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324122 (n : ℕ) : ℤ :=
  A324122.P6437590254037711062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324505.P18122971594184600049

`∑{d}[n+1, A007956(n+1)/A007956(#)]`
-/

namespace A324505.P18122971594184600049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007956 (n + 1) : ℚ) / (A007956 d : ℚ)

end

end A324505.P18122971594184600049

noncomputable section

/-- A324505: a(n) = numerator of Sum_{d|n} (d/pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324505.P18122971594184600049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324505.P18122971594184600049.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324528.P13642510436435348081

`lcm((n+1)*A007956(n+1), ∑{d}[n+1, lcm(#, n+1)-n])`
-/

namespace A324528.P13642510436435348081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * A007956 (n + 1)) (∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm d (n + 1) : ℤ) - (n : ℤ)))

end

end A324528.P13642510436435348081

noncomputable section

/-- A324528: a(n) = lcm(tau(n), pod(n)) where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A324528.P13642510436435348081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324528 (n : ℕ) : ℤ :=
  (A324528.P13642510436435348081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324987.P8516522238142221185

`A211776(n+1)*A206032(n+1)`
-/

namespace A324987.P8516522238142221185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A206032 (n + 1)

end

end A324987.P8516522238142221185

noncomputable section

/-- A324987: a(n) = Product_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324987.P8516522238142221185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324987 (n : ℕ) : ℤ :=
  A324987.P8516522238142221185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325307.P4090948377986325988

`A036844(n+1)/A001414(A036844(n+1))`
-/

namespace A325307.P4090948377986325988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036844 (n + 1) : ℚ) / (A001414 (A036844 (n + 1)).toNat : ℚ)

end

end A325307.P4090948377986325988

noncomputable section

/-- A325307: a(n) = k / (sum of prime factors of k, counted with multiplicity) where k is the n-th number for which the ratio is an integer.

Offset 1, canonical program `A325307.P4090948377986325988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325307.P4090948377986325988.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325401.P9378557464177393728

`(A055944(n)-abs(A055945(n)))/2`
-/

namespace A325401.P9378557464177393728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 n - |A055945 n| : ℚ) / 2

end

end A325401.P9378557464177393728

noncomputable section

/-- A325401: minflip(n) = min(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325401.P9378557464177393728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325401.P9378557464177393728.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326049.P12761554379503345949

`A326050(n+1)+A033879(n+1)`
-/

namespace A326049.P12761554379503345949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326050 (n + 1) + A033879 (n + 1)

end

end A326049.P12761554379503345949

noncomputable section

/-- A326049: a(n) = n - A050449(n), where A050449 is the sum of divisors of the form 4k+1.

Offset 1, canonical program `A326049.P12761554379503345949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326049 (n : ℕ) : ℤ :=
  A326049.P12761554379503345949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326059.P8887039783102292576

`A285309(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326059.P8887039783102292576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) - (n + 1 : ℤ)

end

end A326059.P8887039783102292576

noncomputable section

/-- A326059: a(n) = A285309(n) - n, where A285309 gives the sum of nonsquare divisors of n.

Offset 1, canonical program `A326059.P8887039783102292576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326059 (n : ℕ) : ℤ :=
  A326059.P8887039783102292576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326060.P14530929947081439242

`gcd(n+1-A035316(n+1), A285309(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326060.P14530929947081439242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A035316 (n + 1)) (A285309 (n + 1) - (n + 1 : ℤ))

end

end A326060.P14530929947081439242

noncomputable section

/-- A326060: a(n) = gcd(n-A035316(n), A285309(n)-n), where A035316 and A285309 give respectively the sums of square and nonsquare divisors of n.

Offset 1, canonical program `A326060.P14530929947081439242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A285309, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326060 (n : ℕ) : ℤ :=
  (A326060.P14530929947081439242.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A285309, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327210.P13644412801249598343

`A190671(n+1)+A005087(Δ[A190671(n+1)])`
-/

namespace A327210.P13644412801249598343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A005087 (f1 (n + 1) - f1 n).toNat

end

end A327210.P13644412801249598343

noncomputable section

/-- A327210: Positions of 1's in {A327208(n) : n > 0}.

Offset 1, canonical program `A327210.P13644412801249598343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327210 (n : ℕ) : ℤ :=
  A327210.P13644412801249598343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327220.P13650656345071813810

`lt[n*A327219(n), n]`
-/

namespace A327220.P13650656345071813810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327219 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327220.P13650656345071813810

noncomputable section

/-- A327220: Positions of 0's in {A327219(k) : n > 0}.

Offset 1, canonical program `A327220.P13650656345071813810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327220 (n : ℕ) : ℤ :=
  (A327220.P13650656345071813810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327260.P5995801857761508768

`record[gcd(n+1, A050460(2*n+1))]`
-/

namespace A327260.P5995801857761508768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A050460 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P5995801857761508768

noncomputable section

/-- A327260: Odd numbers not of the form 2*n*k - n - k + 1 where n and k are odd numbers > 1.

Offset 1, canonical program `A327260.P5995801857761508768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. -/
def A327260 (n : ℕ) : ℤ :=
  (A327260.P5995801857761508768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. -/
def A327260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327277.P14093476909524946840

`p?[A037126(n+1)*A143536(n+1)]`
-/

namespace A327277.P14093476909524946840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327277.P14093476909524946840

noncomputable section

/-- A327277: Irregular triangle read by rows in which row n lists the first prime(n) primes.

Offset 1, canonical program `A327277.P14093476909524946840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A327277 (n : ℕ) : ℤ :=
  A327277.P14093476909524946840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A327277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327703.P3882927055980842099

`A001405(n+4)/A328202(n+4)`
-/

namespace A327703.P3882927055980842099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 4) : ℚ) / (A328202 (n + 4) : ℚ)

end

end A327703.P3882927055980842099

noncomputable section

/-- A327703: a(n) = (binomial(n,floor(n/2)))/(greatest common divisor of all numbers in n-th row of Pascal's triangle excluding 1 and n).

Offset 4, canonical program `A327703.P3882927055980842099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327703 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327703.P3882927055980842099.a (n - 4))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327703.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327910.P12789396816941937980

`A101264(col(n))+A101264(row(n)-col(n))`
-/

namespace A327910.P12789396816941937980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (SequenceMachineLib.triCol n) + A101264 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A327910.P12789396816941937980

noncomputable section

/-- A327910: This is the reduced A317745, with primes -> 1 and prime + prime -> 2.

Offset 1, canonical program `A327910.P12789396816941937980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327910 (n : ℕ) : ℤ :=
  A327910.P12789396816941937980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327953.P9054110330457496942

`A327952(n+1)-2*(n+1)`
-/

namespace A327953.P9054110330457496942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1) - (2 * (n + 1) : ℤ)

end

end A327953.P9054110330457496942

noncomputable section

/-- A327953: a(n) is the number of positive integers k such that some nontrivial multiple of sqrt(k) falls strictly between n and n+1.

Offset 1, canonical program `A327953.P9054110330457496942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327953 (n : ℕ) : ℤ :=
  A327953.P9054110330457496942.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328337.P9415464741654577557

`and(-2, A247146(n+1))`
-/

namespace A328337.P9415464741654577557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A247146 (n + 1))

end

end A328337.P9415464741654577557

noncomputable section

/-- A328337: The number whose binary indices are the nontrivial divisors of n (greater than 1 and less than n).

Offset 1, canonical program `A328337.P9415464741654577557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A328337 (n : ℕ) : ℤ :=
  A328337.P9415464741654577557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A328337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328652.P14425637367599864737

`A003082(n+1)-A001399(n+1)`
-/

namespace A328652.P14425637367599864737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 (n + 1) - A001399 (n + 1)

end

end A328652.P14425637367599864737

noncomputable section

/-- A328652: Number of unlabeled loopless multigraphs with n edges covering four vertices.

Offset 1, canonical program `A328652.P14425637367599864737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328652 (n : ℕ) : ℤ :=
  A328652.P14425637367599864737.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328901.P982208090738083972

`A059481(n)/gcd(A003056(n), A059481(n))`
-/

namespace A328901.P982208090738083972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059481 n : ℚ) / (Int.gcd (A003056 n) (A059481 n) : ℚ)

end

end A328901.P982208090738083972

noncomputable section

/-- A328901: Triangle T(n, k) read by rows: T(n, k) is the numerator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for n > 0 and T(0, 0) = 1.

Offset 0, canonical program `A328901.P982208090738083972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328901.P982208090738083972.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329106.P17407900006589501392

`p?[A118951(n+1)]`
-/

namespace A329106.P17407900006589501392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329106.P17407900006589501392

noncomputable section

/-- A329106: Primes containing at least one of the following digits: 4, 6, 8, or 9.

Offset 1, canonical program `A329106.P17407900006589501392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A329106 (n : ℕ) : ℤ :=
  A329106.P17407900006589501392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A329106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329472.P13152310064433774783

`∑[A013929(n+1)]`
-/

namespace A329472.P13152310064433774783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P13152310064433774783

noncomputable section

/-- A329472: Partial sums of numbers that are not squarefree.

Offset 1, canonical program `A329472.P13152310064433774783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329472 (n : ℕ) : ℤ :=
  A329472.P13152310064433774783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330321.P10903654926725134196

`A330320(n+1)/2`
-/

namespace A330321.P10903654926725134196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330320 (n + 1) : ℚ) / 2

end

end A330321.P10903654926725134196

noncomputable section

/-- A330321: a(n) = Sum_{i=1..n} tau(i)*tau(i+1)/2, where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A330321.P10903654926725134196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A330320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A330321.P10903654926725134196.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A330320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330415.P2332703762766219287

`∑{d}[n+1, A049084(#)*A355939((n+1)/#)]`
-/

namespace A330415.P2332703762766219287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049084 d * A355939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330415.P2332703762766219287

noncomputable section

/-- A330415: Coefficient of h(y) in Sum_{k > 0, i > 0} x_i^k = p(1) + p(2) + p(3) + ..., where h is the basis of homogeneous symmetric functions, p is the basis of power-sum symmetric functions, and y is the integer partition with Heinz number n.

Offset 1, canonical program `A330415.P2332703762766219287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330415 (n : ℕ) : ℤ :=
  A330415.P2332703762766219287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330556.P13468609858281030865

`A330559(∑[A101264(n)]+1)`
-/

namespace A330556.P13468609858281030865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A330556.P13468609858281030865

noncomputable section

/-- A330556: a(n) = (number of primes p <= 2*n+1 with Delta(p) == 2 mod 4) - (number of primes p <= 2*n+1 with Delta(p) == 0 mod 4), where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330556.P13468609858281030865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330556 (n : ℕ) : ℤ :=
  A330556.P13468609858281030865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330578.P12262846410611221760

`A053767(n)%A002808(n+1)`
-/

namespace A330578.P12262846410611221760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 n) (A002808 (n + 1))

end

end A330578.P12262846410611221760

noncomputable section

/-- A330578: a(n) is the remainder when the sum of the first n composite numbers is divided by the n-th composite number.

Offset 1, canonical program `A330578.P12262846410611221760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A053767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330578 (n : ℕ) : ℤ :=
  A330578.P12262846410611221760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A053767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331133.P4944719196915576697

`A331132(n+1)/2`
-/

namespace A331133.P4944719196915576697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331132 (n + 1) : ℚ) / 2

end

end A331133.P4944719196915576697

noncomputable section

/-- A331133: a(n) = Sum_{i=1..n} d(i)^2*d(i+1)/2, where d(n) = A000005(n).

Offset 1, canonical program `A331133.P4944719196915576697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331133.P4944719196915576697.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331999.P3156831626282684287

`(n+1)*A067563(n+1)`
-/

namespace A331999.P3156831626282684287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067563 (n + 1)

end

end A331999.P3156831626282684287

noncomputable section

/-- A331999: a(n) is the product of n, the n-th prime and the n-th composite number.

Offset 1, canonical program `A331999.P3156831626282684287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331999 (n : ℕ) : ℤ :=
  A331999.P3156831626282684287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332220.P2393649498383612153

`A332219(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A332220.P2393649498383612153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A332219 (n + 1) + a (n - 1)

end

end A332220.P2393649498383612153

noncomputable section

/-- A332220: a(n) is the number of Mersenne exponents (terms of A000043) <= n.

Offset 1, canonical program `A332220.P2393649498383612153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332220 (n : ℕ) : ℤ :=
  A332220.P2393649498383612153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332219, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332730.P8572861949830629075

`∑{d}[n+1, A322483(#)]`
-/

namespace A332730.P8572861949830629075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322483 d

end

end A332730.P8572861949830629075

noncomputable section

/-- A332730: a(n) = Sum_{d|n} tau(d/gcd(d, n/d)), where tau = A000005.

Offset 1, canonical program `A332730.P8572861949830629075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332730 (n : ℕ) : ℤ :=
  A332730.P8572861949830629075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332754.P10825314309462176498

`A191790(n)+A000035(n)`
-/

namespace A332754.P10825314309462176498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A000035 n

end

end A332754.P10825314309462176498

noncomputable section

/-- A332754: a(n) = Sum_{k=1..n-1} ((-1)^(k+n+1)*binomial(k,floor(k/2))).

Offset 1, canonical program `A332754.P10825314309462176498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A332754 (n : ℕ) : ℤ :=
  A332754.P10825314309462176498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A332754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333168.P11188141478812584799

`∑[A333167(n)]`
-/

namespace A333168.P11188141478812584799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P11188141478812584799

noncomputable section

/-- A333168: a(n) = Sum_{k=0..n} r_2(k^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333168.P11188141478812584799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333168 (n : ℕ) : ℤ :=
  A333168.P11188141478812584799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333171.P4309938117730159280

`∑[A333167(n)/A105397(n)]`
-/

namespace A333171.P4309938117730159280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333167 n : ℚ) / (A105397 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P4309938117730159280

noncomputable section

/-- A333171: a(n) = Sum_{k=0..n} d(k^2 + 1), where d(k) is the number of divisors of k (A000005).

Offset 0, canonical program `A333171.P4309938117730159280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333171.P4309938117730159280.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333748.P1056566153908479740

`ceil(∏{e}[n+1, #+1]/2)-A063962(n+1)`
-/

namespace A333748.P1056566153908479740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉ - A063962 (n + 1)

end

end A333748.P1056566153908479740

noncomputable section

/-- A333748: Number of nonprime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333748.P1056566153908479740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333748 (n : ℕ) : ℤ :=
  A333748.P1056566153908479740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333806.P3114427543706526191

`A063962(A048671(n+1))`
-/

namespace A333806.P3114427543706526191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A048671 (n + 1)).toNat

end

end A333806.P3114427543706526191

noncomputable section

/-- A333806: Number of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A333806.P3114427543706526191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806 (n : ℕ) : ℤ :=
  A333806.P3114427543706526191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334470.P14237330415455119872

`A253139(n+1)^A000005(n+1)/A211776(n+1)`
-/

namespace A334470.P14237330415455119872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253139 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) / (A211776 (n + 1) : ℚ)

end

end A334470.P14237330415455119872

noncomputable section

/-- A334470: a(n) = Product_{d|n} (A253139(n) / tau(d)) where A253139(n) = lcm_{d|n} tau(d).

Offset 1, canonical program `A334470.P14237330415455119872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334470.P14237330415455119872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335064.P7866728032869003709

`A002378(A024619(n+1))`
-/

namespace A335064.P7866728032869003709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A024619 (n + 1)).toNat

end

end A335064.P7866728032869003709

noncomputable section

/-- A335064: Let m = d*q + r be the Euclidean division of m by d. The terms m of this sequence satisfy that q, r, d are consecutive positive integer terms in a geometric progression with a noninteger common ratio > 1.

Offset 1, canonical program `A335064.P7866728032869003709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335064 (n : ℕ) : ℤ :=
  A335064.P7866728032869003709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335294.P7381510664905925885

`1-Δ[A335660(C(n, n²)+n)]`
-/

namespace A335294.P7381510664905925885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (Nat.choose n (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A335294.P7381510664905925885

noncomputable section

/-- A335294: a(n) = pi(n) - pi(Sum_{k=1..n-1} a(k)) with a(1) = 1, where pi() is the prime counting function A000720.

Offset 1, canonical program `A335294.P7381510664905925885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335294 (n : ℕ) : ℤ :=
  A335294.P7381510664905925885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336318.P2686538755063264344

`A000188(A038040(n+1))`
-/

namespace A336318.P2686538755063264344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A038040 (n + 1)).toNat

end

end A336318.P2686538755063264344

noncomputable section

/-- A336318: Square root of the largest square dividing n*d(n), where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A336318.P2686538755063264344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336318 (n : ℕ) : ℤ :=
  A336318.P2686538755063264344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336375.P132868949489915150

`comp[A336374(n+1)-1]+1`
-/

namespace A336375.P132868949489915150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336375.P132868949489915150

noncomputable section

/-- A336375: Numbers k such that gcd(k, prime(k) + prime(k+2)) > 1.

Offset 1, canonical program `A336375.P132868949489915150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336375 (n : ℕ) : ℤ :=
  (A336375.P132868949489915150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336376.P9608865408552650573

`A000040(A336374(n+1))`
-/

namespace A336376.P9608865408552650573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336374 (n + 1)).toNat

end

end A336376.P9608865408552650573

noncomputable section

/-- A336376: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) = 1.

Offset 1, canonical program `A336376.P9608865408552650573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336376 (n : ℕ) : ℤ :=
  A336376.P9608865408552650573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336381.P12343124691346730794

`A000040(A336379(n+1))`
-/

namespace A336381.P12343124691346730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336379 (n + 1)).toNat

end

end A336381.P12343124691346730794

noncomputable section

/-- A336381: Primes p(n) such that gcd(n, prime(n-1)+prime(n+1)) > 1.

Offset 1, canonical program `A336381.P12343124691346730794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336381 (n : ℕ) : ℤ :=
  A336381.P12343124691346730794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336530.P12884130564443516063

`A000292(A070824(n+1))-A086165(n+1)`
-/

namespace A336530.P12884130564443516063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A070824 (n + 1)).toNat - A086165 (n + 1)

end

end A336530.P12884130564443516063

noncomputable section

/-- A336530: Number of triples of divisors d_i < d_j < d_k of n such that gcd(d_i, d_j, d_k) > 1.

Offset 1, canonical program `A336530.P12884130564443516063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336530 (n : ℕ) : ℤ :=
  A336530.P12884130564443516063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336963.P15058899882861974710

`A057889(A336962(A057889(n)))`
-/

namespace A336963.P15058899882861974710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A336962 (A057889 n).toNat).toNat

end

end A336963.P15058899882861974710

noncomputable section

/-- A336963: Left-rotate run-lengths of consecutive equal digits in binary representation of n.

Offset 0, canonical program `A336963.P15058899882861974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963 (n : ℕ) : ℤ :=
  A336963.P15058899882861974710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337106.P11641309545225411868

`A153823(n)-A157928(n)`
-/

namespace A337106.P11641309545225411868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n - A157928 n

end

end A337106.P11641309545225411868

noncomputable section

/-- A337106: Number of nontrivial divisors of n!.

Offset 0, canonical program `A337106.P11641309545225411868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337106 (n : ℕ) : ℤ :=
  A337106.P11641309545225411868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337257.P14876870470645707118

`A027423(n)-A336940(n)`
-/

namespace A337257.P14876870470645707118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A336940 n

end

end A337257.P14876870470645707118

noncomputable section

/-- A337257: Number of even divisors of n!.

Offset 0, canonical program `A337257.P14876870470645707118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337257 (n : ℕ) : ℤ :=
  A337257.P14876870470645707118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337323.P11801849729673822037

`gcd(∑{d}[n+1, #], A303781(n+1))`
-/

namespace A337323.P11801849729673822037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A303781 (n + 1))

end

end A337323.P11801849729673822037

noncomputable section

/-- A337323: a(n) = gcd(n, tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A337323.P11801849729673822037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337323 (n : ℕ) : ℤ :=
  (A337323.P11801849729673822037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337480.P8362700632099792972

`eq[1, A075743(2*n+1)+A075743(4*n+1)]`
-/

namespace A337480.P8362700632099792972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1) + A075743 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337480.P8362700632099792972

noncomputable section

/-- A337480: Numbers k such that exactly one of 6*k + 5 and 12*k + 5 is prime.

Offset 1, canonical program `A337480.P8362700632099792972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A337480 (n : ℕ) : ℤ :=
  (A337480.P8362700632099792972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A337480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337491.P12360132993066818082

`eq[1, A101264(2*n+1)+A101264(n+1)]`
-/

namespace A337491.P12360132993066818082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1) + A101264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337491.P12360132993066818082

noncomputable section

/-- A337491: Numbers k such that exactly one of 2*k + 3 and 4*k + 3 is prime.

Offset 1, canonical program `A337491.P12360132993066818082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337491 (n : ℕ) : ℤ :=
  (A337491.P12360132993066818082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338062.P2458723429357841651

`A143731(A107759(2*(n+2)))+A014601(n)`
-/

namespace A338062.P2458723429357841651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A107759 (2 * (n + 2))).toNat + A014601 n

end

end A338062.P2458723429357841651

noncomputable section

/-- A338062: Numbers k such that the Enots Wolley sequence A336957(k) is odd.

Offset 1, canonical program `A338062.P2458723429357841651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A338062 (n : ℕ) : ℤ :=
  A338062.P2458723429357841651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A338062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338170.P13165122864049220146

`∑{d}[n+1, A245656(#)]`
-/

namespace A338170.P13165122864049220146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245656 d

end

end A338170.P13165122864049220146

noncomputable section

/-- A338170: a(n) is the number of divisors d of n such that tau(d) divides sigma(d).

Offset 1, canonical program `A338170.P13165122864049220146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338170 (n : ℕ) : ℤ :=
  A338170.P13165122864049220146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338171.P10783673245365028615

`∑{d}[n+1, #*A245656(#)]`
-/

namespace A338171.P10783673245365028615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A245656 d

end

end A338171.P10783673245365028615

noncomputable section

/-- A338171: a(n) is the sum of those divisors d of n such that tau(d) divides sigma(d).

Offset 1, canonical program `A338171.P10783673245365028615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338171 (n : ℕ) : ℤ :=
  A338171.P10783673245365028615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339308.P326742767543931294

`∑[A007956(n+1)]`
-/

namespace A339308.P326742767543931294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P326742767543931294

noncomputable section

/-- A339308: Partial sums of products of proper divisors of n (A007956).

Offset 1, canonical program `A339308.P326742767543931294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A339308 (n : ℕ) : ℤ :=
  A339308.P326742767543931294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A339308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339558.P13443226626530005965

`∑{d}[n+1, A101264(#-A101264(#))]`
-/

namespace A339558.P13443226626530005965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 ((d : ℤ) - A101264 d).toNat

end

end A339558.P13443226626530005965

noncomputable section

/-- A339558: Number of divisors of 2n that are the average of a pair of twin primes.

Offset 1, canonical program `A339558.P13443226626530005965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339558 (n : ℕ) : ℤ :=
  A339558.P13443226626530005965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339919.P1107239849684330774

`A339918(n)-3*A006218(n)`
-/

namespace A339919.P1107239849684330774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 n - 3 * A006218 n

end

end A339919.P1107239849684330774

noncomputable section

/-- A339919: a(n) = Sum_{k=1..n} (floor(3*n/k) - 3*floor(n/k)).

Offset 0, canonical program `A339919.P1107239849684330774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339919 (n : ℕ) : ℤ :=
  A339919.P1107239849684330774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340674.P16491084588076078124

`∩[A062770(n+1), A138302(n+1)]²`
-/

namespace A340674.P16491084588076078124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340674.P16491084588076078124

noncomputable section

/-- A340674: Numbers of the form s^(2^e), where s is a squarefree number, and e >= 1.

Offset 1, canonical program `A340674.P16491084588076078124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674 (n : ℕ) : ℤ :=
  (A340674.P16491084588076078124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341099.P7728834317984338606

`lt[2, A072627(n+1)]+1`
-/

namespace A341099.P7728834317984338606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341099.P7728834317984338606

noncomputable section

/-- A341099: Numbers divisible by at least three terms of A008864.

Offset 1, canonical program `A341099.P7728834317984338606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A341099 (n : ℕ) : ℤ :=
  (A341099.P7728834317984338606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A341099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342187.P2134452923969992005

`∩[A072587(n+1)-1, A072587(n+1)]`
-/

namespace A342187.P2134452923969992005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342187.P2134452923969992005

noncomputable section

/-- A342187: Numbers k such that both k and k+1 are not exponentially odd numbers.

Offset 1, canonical program `A342187.P2134452923969992005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A342187 (n : ℕ) : ℤ :=
  (A342187.P2134452923969992005.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A342187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343109.P14668972200541254521

`lt[A188171(n+1), 1]+1`
-/

namespace A343109.P14668972200541254521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343109.P14668972200541254521

noncomputable section

/-- A343109: Numbers having no divisor of the form 8*k + 5.

Offset 1, canonical program `A343109.P14668972200541254521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. -/
def A343109 (n : ℕ) : ℤ :=
  (A343109.P14668972200541254521.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. -/
def A343109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343113.P7654673107795558321

`eq[1, A188171(n+1)]+1`
-/

namespace A343113.P7654673107795558321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343113.P7654673107795558321

noncomputable section

/-- A343113: Numbers having exactly 1 divisor of the form 8*k + 5.

Offset 1, canonical program `A343113.P7654673107795558321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. -/
def A343113 (n : ℕ) : ℤ :=
  (A343113.P7654673107795558321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. -/
def A343113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343809.P11687227892759460159

`A114327(eq[1, A143536(n+1)])+1+n`
-/

namespace A343809.P11687227892759460159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1 + (n : ℤ)

end

end A343809.P11687227892759460159

noncomputable section

/-- A343809: Divide the positive integers into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

Offset 1, canonical program `A343809.P11687227892759460159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A343809 (n : ℕ) : ℤ :=
  A343809.P11687227892759460159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A343809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344314.P13255996641734891554

`eq[A048105(n+1), A048105(n+2)]+1`
-/

namespace A344314.P13255996641734891554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344314.P13255996641734891554

noncomputable section

/-- A344314: Number k such that k and k+1 have the same number of nonunitary divisors (A048105).

Offset 1, canonical program `A344314.P13255996641734891554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314 (n : ℕ) : ℤ :=
  (A344314.P13255996641734891554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344687.P14717226967310331617

`floor(∑[A038024(n+1)/2])`
-/

namespace A344687.P14717226967310331617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038024 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A344687.P14717226967310331617

noncomputable section

/-- A344687: a(n) is the lowest nonnegative exponent k such that n!^k is the product of the divisors of n!.

Offset 1, canonical program `A344687.P14717226967310331617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687 (n : ℕ) : ℤ :=
  A344687.P14717226967310331617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345282.P3924199475300037871

`∑{d}[n+1, A061397(#)*A151800((n+1)/#)]`
-/

namespace A345282.P3924199475300037871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345282.P3924199475300037871

noncomputable section

/-- A345282: a(n) = Sum_{p|n, p prime} p * nextprime(n/p).

Offset 1, canonical program `A345282.P3924199475300037871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345282 (n : ℕ) : ℤ :=
  A345282.P3924199475300037871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345371.P15943345332420559631

`A034444(n+1)-A323308(n+1)`
-/

namespace A345371.P15943345332420559631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A323308 (n + 1)

end

end A345371.P15943345332420559631

noncomputable section

/-- A345371: Number of squarefree divisors of n whose square does not divide n.

Offset 1, canonical program `A345371.P15943345332420559631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A323308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345371 (n : ℕ) : ℤ :=
  A345371.P15943345332420559631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A323308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345401.P14238453183397205627

`A145341(A337909(n+1))`
-/

namespace A345401.P14238453183397205627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A337909 (n + 1)).toNat

end

end A345401.P14238453183397205627

noncomputable section

/-- A345401: a(n) is the unique odd number h such that BCR(h*2^m-1) = 2n (except for BCR(0) = 1) where BCR is bit complement and reverse per A036044.

Offset 0, canonical program `A345401.P14238453183397205627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345401 (n : ℕ) : ℤ :=
  A345401.P14238453183397205627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345927.P11668894418822586614

`(-1)^(A070939(n)-1)*A065359(n)`
-/

namespace A345927.P11668894418822586614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A070939 n - 1 : ℤ) * (A065359 n : ℚ)

end

end A345927.P11668894418822586614

noncomputable section

/-- A345927: Alternating sum of the binary expansion of n (row n of A030190). Replace 2^k with (-1)^(A070939(n)-k) in the binary expansion of n (compare to the definition of A065359).

Offset 0, canonical program `A345927.P11668894418822586614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345927.P11668894418822586614.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346180.P6210635577582370619

`A000040(n+1)+A061397(n+1)`
-/

namespace A346180.P6210635577582370619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A061397 (n + 1)

end

end A346180.P6210635577582370619

noncomputable section

/-- A346180: a(n) = prime(n) + n if n is prime, a(n) = prime(n) otherwise.

Offset 1, canonical program `A346180.P6210635577582370619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346180 (n : ℕ) : ℤ :=
  A346180.P6210635577582370619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347103.P14813398538784636058

`∑{d}[n+1, A033999(#-1)*A049084((n+1)/#)]`
-/

namespace A347103.P14813398538784636058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A049084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347103.P14813398538784636058

noncomputable section

/-- A347103: G.f.: Sum_{k>=1} k * x^prime(k) / (1 + x^prime(k)).

Offset 1, canonical program `A347103.P14813398538784636058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347103 (n : ℕ) : ℤ :=
  A347103.P14813398538784636058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348182.P6934266589233988519

`1+a(A057022(n+1)-1)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348182.P6934266589233988519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 + a (A057022 (n + 1) - 1).toNat

end

end A348182.P6934266589233988519

noncomputable section

/-- A348182: a(1) = 1; for n >= 2, a(n) = 1 + a(A057022(n)).

Offset 1, canonical program `A348182.P6934266589233988519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348182 (n : ℕ) : ℤ :=
  (A348182.P6934266589233988519.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348665.P3571881152255844530

`C(A076984(n+1), 2)`
-/

namespace A348665.P3571881152255844530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076984 (n + 1)).toNat 2

end

end A348665.P3571881152255844530

noncomputable section

/-- A348665: Number of partitions of n into 3 parts whose smallest and middle parts divide n.

Offset 1, canonical program `A348665.P3571881152255844530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348665 (n : ℕ) : ℤ :=
  (A348665.P3571881152255844530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348915.P13373623292540873174

`A000593(n+1)+A183063(n+1)`
-/

namespace A348915.P13373623292540873174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A183063 (n + 1)

end

end A348915.P13373623292540873174

noncomputable section

/-- A348915: a(n) = Sum_{d|n} d^(d mod 2).

Offset 1, canonical program `A348915.P13373623292540873174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348915 (n : ℕ) : ℤ :=
  A348915.P13373623292540873174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349360.P4810529674749984531

`A184389(n+1)+A335567(n+1)`
-/

namespace A349360.P4810529674749984531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + A335567 (n + 1)

end

end A349360.P4810529674749984531

noncomputable section

/-- A349360: Number of positive integer pairs (s,t), with s,t <= n and s <= t such that either both s and t divide n or both do not.

Offset 1, canonical program `A349360.P4810529674749984531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349360 (n : ℕ) : ℤ :=
  A349360.P4810529674749984531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351417.P10622450361574635402

`A048105(n+1)+A001221(n+1)`
-/

namespace A351417.P10622450361574635402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A001221 (n + 1)

end

end A351417.P10622450361574635402

noncomputable section

/-- A351417: Number of divisors of n that are either prime or have at least one square divisor > 1.

Offset 1, canonical program `A351417.P10622450361574635402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351417 (n : ℕ) : ℤ :=
  A351417.P10622450361574635402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351528.P8807216159401882128

`p?[ceil(A145341(n+1)/2)]`
-/

namespace A351528.P8807216159401882128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145341 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P8807216159401882128

noncomputable section

/-- A351528: Prime numbers ordered by their binary reversal.

Offset 1, canonical program `A351528.P8807216159401882128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528 (n : ℕ) : ℤ :=
  A351528.P8807216159401882128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352167.P833396178534285227

`A001414(n+1)-A061397(n+1)`
-/

namespace A352167.P833396178534285227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A061397 (n + 1)

end

end A352167.P833396178534285227

noncomputable section

/-- A352167: a(n) is the sum of the prime factors of n (with multiplicity) that are less than n.

Offset 1, canonical program `A352167.P833396178534285227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352167 (n : ℕ) : ℤ :=
  A352167.P833396178534285227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352754.P7186785389553064570

`A000720(n+1)*A073837(n+1)`
-/

namespace A352754.P7186785389553064570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A073837 (n + 1)

end

end A352754.P7186785389553064570

noncomputable section

/-- A352754: a(n) = pi(n) * Sum_{n <= q < 2n, q prime} q.

Offset 1, canonical program `A352754.P7186785389553064570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352754 (n : ℕ) : ℤ :=
  A352754.P7186785389553064570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352777.P13491865834472496179

`∑[∑{p}[n+1, C(#, n)]]*A073837(n+1)`
-/

namespace A352777.P13491865834472496179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073837 (n + 1)

end

end A352777.P13491865834472496179

noncomputable section

/-- A352777: a(n) = Sum_{p <= n <= q < 2n, p,q prime} (p * q).

Offset 1, canonical program `A352777.P13491865834472496179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A352777 (n : ℕ) : ℤ :=
  A352777.P13491865834472496179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A352777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353464.P7528674575556997429

`A353463(A065164(n+1))`
-/

namespace A353464.P7528674575556997429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A065164 (n + 1)).toNat

end

end A353464.P7528674575556997429

noncomputable section

/-- A353464: Characteristic function of greater twin primes: a(n) = 1 if both n and n-2 are primes, otherwise 0.

Offset 1, canonical program `A353464.P7528674575556997429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464 (n : ℕ) : ℤ :=
  A353464.P7528674575556997429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353612.P5678627208239049230

`A061397(A108872(n+1))`
-/

namespace A353612.P5678627208239049230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A108872 (n + 1)).toNat

end

end A353612.P5678627208239049230

noncomputable section

/-- A353612: Triangle read by rows: T(n,k) = (n + k) if (n + k) is a prime number, otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A353612.P5678627208239049230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353612 (n : ℕ) : ℤ :=
  A353612.P5678627208239049230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354713.P17399075421712042557

`A000005(A000188((n+2)²-1))`
-/

namespace A354713.P17399075421712042557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 ((n + 2) ^ 2 - 1)).toNat

end

end A354713.P17399075421712042557

noncomputable section

/-- A354713: Number of solutions (n, D) for Pell equation n^2 - D*y^2 = 1 with fixed n.

Offset 2, canonical program `A354713.P17399075421712042557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354713 (n : ℕ) : ℤ :=
  A354713.P17399075421712042557.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355643.P7908360887346496092

`lt[0, A282849(n+1)]+1`
-/

namespace A355643.P7908360887346496092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355643.P7908360887346496092

noncomputable section

/-- A355643: Numbers k having a divisor d such that d+k/d is prime.

Offset 1, canonical program `A355643.P7908360887346496092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A355643 (n : ℕ) : ℤ :=
  (A355643.P7908360887346496092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A355643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355816.P18014603131133608948

`A143731(n+1)*A325964(n+1)`
-/

namespace A355816.P18014603131133608948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A325964 (n + 1)

end

end A355816.P18014603131133608948

noncomputable section

/-- A355816: a(n) = 1 if n and sigma(n) are relatively prime, and n has at least two distinct prime factors, otherwise 0.

Offset 1, canonical program `A355816.P18014603131133608948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143731, A325964, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355816 (n : ℕ) : ℤ :=
  A355816.P18014603131133608948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143731, A325964, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356018.P4624671268453047338

`A000005(n+1)-A227872(n+1)`
-/

namespace A356018.P4624671268453047338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A227872 (n + 1)

end

end A356018.P4624671268453047338

noncomputable section

/-- A356018: a(n) is the number of evil divisors (A001969) of n.

Offset 1, canonical program `A356018.P4624671268453047338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356018 (n : ℕ) : ℤ :=
  A356018.P4624671268453047338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356382.P3347831406250475257

`filter[A088827(n+1), A325964(#)]`
-/

namespace A356382.P3347831406250475257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P3347831406250475257

noncomputable section

/-- A356382: Even terms in A014567.

Offset 1, canonical program `A356382.P3347831406250475257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382 (n : ℕ) : ℤ :=
  A356382.P3347831406250475257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357695.P9882906667997209006

`eq[A050361(n+1), A082551(n+1)]+1`
-/

namespace A357695.P9882906667997209006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P9882906667997209006

noncomputable section

/-- A357695: Cubefree abundant numbers.

Offset 1, canonical program `A357695.P9882906667997209006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. -/
def A357695 (n : ℕ) : ℤ :=
  (A357695.P9882906667997209006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. -/
def A357695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357698.P16927008949739962515

`A073185(n+1)-A212793(n+1)*(n+1)`
-/

namespace A357698.P16927008949739962515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (n + 1) - A212793 (n + 1) * (n + 1 : ℤ)

end

end A357698.P16927008949739962515

noncomputable section

/-- A357698: a(n) is the sum of the aliquot divisors of n that are cubefree.

Offset 1, canonical program `A357698.P16927008949739962515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357698 (n : ℕ) : ℤ :=
  A357698.P16927008949739962515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359249.P8196808652904358102

`∑{d}[n+1, A010051(#)*A295405((n+1)/#)]`
-/

namespace A359249.P8196808652904358102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A295405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359249.P8196808652904358102

noncomputable section

/-- A359249: a(n) is the number of primes p such that (n/p)^2 + 1 is prime.

Offset 1, canonical program `A359249.P8196808652904358102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A359249 (n : ℕ) : ℤ :=
  A359249.P8196808652904358102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A359249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359580.P9567122532987640095

`filter[A096033(n+1), A212793(#)]`
-/

namespace A359580.P9567122532987640095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A359580.P9567122532987640095

noncomputable section

/-- A359580: Numbers that are either (an odd squarefree number squared) or twice such a number.

Offset 1, canonical program `A359580.P9567122532987640095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359580 (n : ℕ) : ℤ :=
  A359580.P9567122532987640095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359821.P15316925035218251936

`∪[A046337(n+1), A016825(n)]`
-/

namespace A359821.P15316925035218251936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P15316925035218251936

noncomputable section

/-- A359821: Numbers k whose arithmetic derivative, A003415(k), has the opposite parity to k.

Offset 1, canonical program `A359821.P15316925035218251936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359821 (n : ℕ) : ℤ :=
  (A359821.P15316925035218251936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360567.P16353749552312502386

`p?[∑[2-Δ[A143536(n+1)]]+2]`
-/

namespace A360567.P16353749552312502386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360567.P16353749552312502386

noncomputable section

/-- A360567: Primes p such that the nearest integer to sqrt(p) is also prime.

Offset 1, canonical program `A360567.P16353749552312502386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A360567 (n : ℕ) : ℤ :=
  A360567.P16353749552312502386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A360567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361022.P13909982394743935794

`A000007(Δ[A054519(n+1)]%∏{e}[n+1, #+1])`
-/

namespace A361022.P13909982394743935794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (f1 (n + 1) - f1 n) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)).toNat

end

end A361022.P13909982394743935794

noncomputable section

/-- A361022: a(n) = 1 if d(n) divides d(n+1), otherwise 0, where d(n) is number of positive divisors of n.

Offset 1, canonical program `A361022.P13909982394743935794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361022 (n : ℕ) : ℤ :=
  A361022.P13909982394743935794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361267.P7495545048524852458

`eq[6, A075527(n)]`
-/

namespace A361267.P7495545048524852458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P7495545048524852458

noncomputable section

/-- A361267: Numbers k such that prime(k+2) - prime(k) = 6.

Offset 1, canonical program `A361267.P7495545048524852458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267 (n : ℕ) : ℤ :=
  (A361267.P7495545048524852458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361338.P12830044282010602030

`A122856(C(floor(n/2), 56))`
-/

namespace A361338.P12830044282010602030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)

end

end A361338.P12830044282010602030

noncomputable section

/-- A361338: Number of different single-digit numbers that can be reached from n by any permissible sequence of split-and-multiply operations.

Offset 0, canonical program `A361338.P12830044282010602030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338 (n : ℕ) : ℤ :=
  A361338.P12830044282010602030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361743.P17164138405407850184

`A028310(n)*A123164(n)`
-/

namespace A361743.P17164138405407850184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A123164 n

end

end A361743.P17164138405407850184

noncomputable section

/-- A361743: Central circular Delannoy numbers: a(n) is the number of Delannoy loops on an n X n toroidal grid.

Offset 0, canonical program `A361743.P17164138405407850184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A361743 (n : ℕ) : ℤ :=
  A361743.P17164138405407850184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A361743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362625.P11895608257886230771

`A161680(n+1)-A094471(n+1)`
-/

namespace A362625.P11895608257886230771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) - A094471 (n + 1)

end

end A362625.P11895608257886230771

noncomputable section

/-- A362625: a(n) = Sum_{k not divides n - k, 0 <= k < n} k.

Offset 1, canonical program `A362625.P11895608257886230771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362625 (n : ℕ) : ℤ :=
  A362625.P11895608257886230771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362852.P3005074600133069083

`∏{e}[n+1, A076984(#)]`
-/

namespace A362852.P3005074600133069083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A076984 (Nat.factorization (f1 n) p)

end

end A362852.P3005074600133069083

noncomputable section

/-- A362852: The number of divisors of n that are both bi-unitary and exponential.

Offset 1, canonical program `A362852.P3005074600133069083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362852 (n : ℕ) : ℤ :=
  A362852.P3005074600133069083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`
-/

namespace A363037.P17593486041959232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A188171 (n + 1)

end

end A363037.P17593486041959232839

noncomputable section

/-- A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

Offset 1, canonical program `A363037.P17593486041959232839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037 (n : ℕ) : ℤ :=
  A363037.P17593486041959232839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363101.P6678338457450784001

`∩[A013929(n+1), A177712(n+1)]`
-/

namespace A363101.P6678338457450784001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P6678338457450784001

noncomputable section

/-- A363101: Even numbers that are neither prime powers nor squarefree.

Offset 1, canonical program `A363101.P6678338457450784001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363101 (n : ℕ) : ℤ :=
  (A363101.P6678338457450784001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364104.P2487504402797724395

`A363929(5*n+4)`
-/

namespace A364104.P2487504402797724395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (5 * n + 4)

end

end A364104.P2487504402797724395

noncomputable section

/-- A364104: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-1)).

Offset 1, canonical program `A364104.P2487504402797724395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104 (n : ℕ) : ℤ :=
  A364104.P2487504402797724395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364105.P2405935194596214916

`A363929(A016885(n))`
-/

namespace A364105.P2405935194596214916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (A016885 n).toNat

end

end A364105.P2405935194596214916

noncomputable section

/-- A364105: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364105.P2405935194596214916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105 (n : ℕ) : ℤ :=
  A364105.P2405935194596214916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364106.P16744151301019870473

`A363929(5*n+2)`
-/

namespace A364106.P16744151301019870473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (5 * n + 2)

end

end A364106.P16744151301019870473

noncomputable section

/-- A364106: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364106.P16744151301019870473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106 (n : ℕ) : ℤ :=
  A364106.P16744151301019870473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364107.P1517337436535911303

`A363929(5*n+1)`
-/

namespace A364107.P1517337436535911303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (5 * n + 1)

end

end A364107.P1517337436535911303

noncomputable section

/-- A364107: Expansion of Sum_{k>0} k * x^(4*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364107.P1517337436535911303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107 (n : ℕ) : ℤ :=
  A364107.P1517337436535911303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364834.P5622700448256645935

`∑[(n+1)%A370566(n+1)]`
-/

namespace A364834.P5622700448256645935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A370566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P5622700448256645935

noncomputable section

/-- A364834: Sum of positive integers <= n which are multiples of 2 or 5.

Offset 1, canonical program `A364834.P5622700448256645935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834 (n : ℕ) : ℤ :=
  A364834.P5622700448256645935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365208.P1092856368353075175

`A000005(A065331(n+1))*A034444(A065330(n+1))`
-/

namespace A365208.P1092856368353075175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065331 (n + 1)).toNat * A034444 (A065330 (n + 1)).toNat

end

end A365208.P1092856368353075175

noncomputable section

/-- A365208: The number of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

Offset 1, canonical program `A365208.P1092856368353075175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365208 (n : ℕ) : ℤ :=
  A365208.P1092856368353075175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365208.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365210.P7966765262049614878

`A000005(A065330(n+1))*A034444(A065331(n+1))`
-/

namespace A365210.P7966765262049614878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065330 (n + 1)).toNat * A034444 (A065331 (n + 1)).toNat

end

end A365210.P7966765262049614878

noncomputable section

/-- A365210: The number of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

Offset 1, canonical program `A365210.P7966765262049614878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365210 (n : ℕ) : ℤ :=
  A365210.P7966765262049614878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365334.P7348562216077771551

`A033634(A008833(n+1))`
-/

namespace A365334.P7348562216077771551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A008833 (n + 1)).toNat

end

end A365334.P7348562216077771551

noncomputable section

/-- A365334: The sum of exponentially odd divisors of the largest square dividing n.

Offset 1, canonical program `A365334.P7348562216077771551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365334 (n : ℕ) : ℤ :=
  A365334.P7348562216077771551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365336.P7053891073090803951

`A033634(A000188(n+1))`
-/

namespace A365336.P7053891073090803951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A000188 (n + 1)).toNat

end

end A365336.P7053891073090803951

noncomputable section

/-- A365336: The sum of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365336.P7053891073090803951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365336 (n : ℕ) : ℤ :=
  A365336.P7053891073090803951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365345.P13783101688852051196

`A000005(A053143(n+1))`
-/

namespace A365345.P13783101688852051196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053143 (n + 1)).toNat

end

end A365345.P13783101688852051196

noncomputable section

/-- A365345: The number of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365345.P13783101688852051196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365345 (n : ℕ) : ℤ :=
  A365345.P13783101688852051196.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365549.P7046597874236443597

`A322483(A000188(n+1))`
-/

namespace A365549.P7046597874236443597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A000188 (n + 1)).toNat

end

end A365549.P7046597874236443597

noncomputable section

/-- A365549: The number of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365549.P7046597874236443597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365549 (n : ℕ) : ℤ :=
  A365549.P7046597874236443597.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365551.P16217230584168280310

`A322483(A356191(n+1))`
-/

namespace A365551.P16217230584168280310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A356191 (n + 1)).toNat

end

end A365551.P16217230584168280310

noncomputable section

/-- A365551: The number of exponentially odd divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365551.P16217230584168280310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365551 (n : ℕ) : ℤ :=
  A365551.P16217230584168280310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366274.P11829202406764329078

`A000720(A076273(n+2))-(n+1)`
-/

namespace A366274.P11829202406764329078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076273 (n + 2)).toNat - (n + 1 : ℤ)

end

end A366274.P11829202406764329078

noncomputable section

/-- A366274: a(n) is the least k such that prime(n+1+k) >= prime(n)+prime(n+1).

Offset 1, canonical program `A366274.P11829202406764329078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366274 (n : ℕ) : ℤ :=
  A366274.P11829202406764329078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366378.P2407206345280088483

`eq[A010872(n), A010872(A057889(n))]`
-/

namespace A366378.P2407206345280088483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P2407206345280088483

noncomputable section

/-- A366378: Numbers k such that A057889(k) == k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366378.P2407206345280088483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378 (n : ℕ) : ℤ :=
  (A366378.P2407206345280088483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366403.P15389599088929656846

`A099323(n)+A057427(n)`
-/

namespace A366403.P15389599088929656846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + A057427 n

end

end A366403.P15389599088929656846

noncomputable section

/-- A366403: G.f. A(x) satisfies A(x) = (1 + x / sqrt(A(x))) / (1 - x).

Offset 0, canonical program `A366403.P15389599088929656846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403 (n : ℕ) : ℤ :=
  A366403.P15389599088929656846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366990.P7446816452467653986

`∑{d}[n+1, #*A293449(#)]`
-/

namespace A366990.P7446816452467653986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A293449 d

end

end A366990.P7446816452467653986

noncomputable section

/-- A366990: The sum of divisors of n that are terms of A056166.

Offset 1, canonical program `A366990.P7446816452467653986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990 (n : ℕ) : ℤ :=
  A366990.P7446816452467653986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367512.P6814161711481593875

`A001221(n+1)-A293439(n+1)`
-/

namespace A367512.P6814161711481593875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A293439 (n + 1)

end

end A367512.P6814161711481593875

noncomputable section

/-- A367512: Number of evil exponents in the prime factorization of n.

Offset 1, canonical program `A367512.P6814161711481593875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367512 (n : ℕ) : ℤ :=
  A367512.P6814161711481593875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368039.P7754328615677109513

`A005361(A013929(n+1))`
-/

namespace A368039.P7754328615677109513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A013929 (n + 1)).toNat

end

end A368039.P7754328615677109513

noncomputable section

/-- A368039: The product of exponents of prime factorization of the nonsquarefree numbers.

Offset 1, canonical program `A368039.P7754328615677109513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368039 (n : ℕ) : ℤ :=
  A368039.P7754328615677109513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368040.P1470060828506314969

`A057521(A013929(n+1))`
-/

namespace A368040.P1470060828506314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A013929 (n + 1)).toNat

end

end A368040.P1470060828506314969

noncomputable section

/-- A368040: The powerful part of the nonsquarefree numbers.

Offset 1, canonical program `A368040.P1470060828506314969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368040 (n : ℕ) : ℤ :=
  A368040.P1470060828506314969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368541.P15025148590720608101

`A049419(A013929(n+1))`
-/

namespace A368541.P15025148590720608101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A013929 (n + 1)).toNat

end

end A368541.P15025148590720608101

noncomputable section

/-- A368541: The number of exponential divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368541.P15025148590720608101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368541 (n : ℕ) : ℤ :=
  A368541.P15025148590720608101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368641.P10387616186859536638

`A368616(n+1)-A048865(n+1)`
-/

namespace A368641.P10387616186859536638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) - A048865 (n + 1)

end

end A368641.P10387616186859536638

noncomputable section

/-- A368641: a(n) = Sum_{k=2..n} pi(k-1) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368641.P10387616186859536638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A368616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368641 (n : ℕ) : ℤ :=
  A368641.P10387616186859536638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A368616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368713.P8093218634620274143

`A051903(A013929(n+1))`
-/

namespace A368713.P8093218634620274143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A013929 (n + 1)).toNat

end

end A368713.P8093218634620274143

noncomputable section

/-- A368713: The maximal exponent in the prime factorization of the nonsquarefree numbers.

Offset 1, canonical program `A368713.P8093218634620274143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368713 (n : ℕ) : ℤ :=
  A368713.P8093218634620274143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368980.P9473977594289059310

`∏{e}[n+1, A183063(#)]`
-/

namespace A368980.P9473977594289059310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A183063 (Nat.factorization (f1 n) p)

end

end A368980.P9473977594289059310

noncomputable section

/-- A368980: The number of exponential divisors of n that are squares (A000290).

Offset 1, canonical program `A368980.P9473977594289059310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980 (n : ℕ) : ℤ :=
  A368980.P9473977594289059310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369306.P7838133556568546041

`∑{d}[n+1, A212793(#)*A212793((n+1)/#)]`
-/

namespace A369306.P7838133556568546041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212793 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P7838133556568546041

noncomputable section

/-- A369306: The number of cubefree divisors d of n such that n/d is also cubefree.

Offset 1, canonical program `A369306.P7838133556568546041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369306 (n : ℕ) : ℤ :=
  A369306.P7838133556568546041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369307.P4586267227378045470

`∑{d}[n+1, A295316(#)*A295316((n+1)/#)]`
-/

namespace A369307.P4586267227378045470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369307.P4586267227378045470

noncomputable section

/-- A369307: The number of exponentially odd divisors d of n such that n/d is also exponentially odd.

Offset 1, canonical program `A369307.P4586267227378045470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369307 (n : ℕ) : ℤ :=
  A369307.P4586267227378045470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369716.P4935667274442389698

`A000005(A197863(n+1))`
-/

namespace A369716.P4935667274442389698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A197863 (n + 1)).toNat

end

end A369716.P4935667274442389698

noncomputable section

/-- A369716: The number of divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369716.P4935667274442389698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369716 (n : ℕ) : ℤ :=
  A369716.P4935667274442389698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369749.P2966338414670891840

`∑{d}[n+1, A000040(#)*A061397((n+1)/#)]`
-/

namespace A369749.P2966338414670891840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369749.P2966338414670891840

noncomputable section

/-- A369749: a(n) = Sum_{p|n, p prime} p * prime(n/p).

Offset 1, canonical program `A369749.P2966338414670891840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749 (n : ℕ) : ℤ :=
  A369749.P2966338414670891840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369757.P5287777437790964755

`A000005(A356192(n+1))`
-/

namespace A369757.P5287777437790964755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356192 (n + 1)).toNat

end

end A369757.P5287777437790964755

noncomputable section

/-- A369757: The number of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369757.P5287777437790964755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369757 (n : ℕ) : ℤ :=
  A369757.P5287777437790964755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369934.P13862989399101401455

`log2(A369933(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369934.P13862989399101401455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A369933 (n + 2) : ℝ)

end

end A369934.P13862989399101401455

noncomputable section

/-- A369934: a(n) = log_2(A369933(n)).

Offset 2, canonical program `A369934.P13862989399101401455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369934.P13862989399101401455.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370498.P12293528714486297196

`ceil(2/3*A138462(n))`
-/

namespace A370498.P12293528714486297196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A138462 n : ℚ)⌉

end

end A370498.P12293528714486297196

noncomputable section

/-- A370498: Number of paths from (0, 0) to (2n, 2n) in an n X n grid using only steps north, northeast and east (i.e., steps (1, 0), (1, 1), and (0, 1)) and that do not pass through diagonal points with odd coordinates.

Offset 0, canonical program `A370498.P12293528714486297196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370498 (n : ℕ) : ℤ :=
  A370498.P12293528714486297196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370706.P10819961141183438908

`A008279(n)*A059481(n)`
-/

namespace A370706.P10819961141183438908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A059481 n

end

end A370706.P10819961141183438908

noncomputable section

/-- A370706: Triangle read by rows: T(n, k) = binomial(n, k) * Pochhammer(n, k).

Offset 0, canonical program `A370706.P10819961141183438908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706 (n : ℕ) : ℤ :=
  A370706.P10819961141183438908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371188.P16600339561144693768

`lt[A368712(n+1), 2]+1`
-/

namespace A371188.P16600339561144693768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P16600339561144693768

noncomputable section

/-- A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

Offset 1, canonical program `A371188.P16600339561144693768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188 (n : ℕ) : ℤ :=
  (A371188.P16600339561144693768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372023.P3112973141915195590

`A036453(n+1)*A099323(n)`
-/

namespace A372023.P3112973141915195590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A099323 n

end

end A372023.P3112973141915195590

noncomputable section

/-- A372023: Expansion of ( (1 + 3*x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372023.P3112973141915195590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023 (n : ℕ) : ℤ :=
  A372023.P3112973141915195590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372035.P12237478044521497006

`A036453(n+1)*A371888(n)`
-/

namespace A372035.P12237478044521497006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A371888 n

end

end A372035.P12237478044521497006

noncomputable section

/-- A372035: G.f. A(x) satisfies A(x) = ( 1 + 4*x*A(x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372035.P12237478044521497006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035 (n : ℕ) : ℤ :=
  A372035.P12237478044521497006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372209.P616246694490321131

`A008578(A046868(n+1))`
-/

namespace A372209.P616246694490321131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046868 (n + 1)).toNat

end

end A372209.P616246694490321131

noncomputable section

/-- A372209: Primes p_1 where products m of k = 3 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

Offset 1, canonical program `A372209.P616246694490321131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209 (n : ℕ) : ℤ :=
  A372209.P616246694490321131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372505.P10493546541746876935

`log2(A368473(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372505.P10493546541746876935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368473 (n + 1) : ℝ)

end

end A372505.P10493546541746876935

noncomputable section

/-- A372505: a(n) = log_2(A368473(n)).

Offset 1, canonical program `A372505.P10493546541746876935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372505.P10493546541746876935.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372573.P2519904625794954656

`1-A234045(A065331(n+1))²`
-/

namespace A372573.P2519904625794954656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A234045 (A065331 (n + 1)).toNat ^ 2

end

end A372573.P2519904625794954656

noncomputable section

/-- A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A372573.P2519904625794954656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573 (n : ℕ) : ℤ :=
  A372573.P2519904625794954656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373153.P13043252029439132361

`A234045(A065331(n+1))`
-/

namespace A373153.P13043252029439132361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A065331 (n + 1)).toNat

end

end A373153.P13043252029439132361

noncomputable section

/-- A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373153.P13043252029439132361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153 (n : ℕ) : ℤ :=
  A373153.P13043252029439132361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373575.P9664136363461684318

`record[A048671(A024619(n+1)+1)]`
-/

namespace A373575.P9664136363461684318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A024619 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373575.P9664136363461684318

noncomputable section

/-- A373575: Numbers k such that k and k-1 both have at least two distinct prime factors. First element of the n-th maximal antirun of non-prime-powers.

Offset 1, canonical program `A373575.P9664136363461684318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A373575 (n : ℕ) : ℤ :=
  A373575.P9664136363461684318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A373575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374052.P16324426234516621321

`lt[0, A374051(n+1)]+1`
-/

namespace A374052.P16324426234516621321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374052.P16324426234516621321

noncomputable section

/-- A374052: Numbers k for which A113177(k) is a multiple of 3, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374052.P16324426234516621321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052 (n : ℕ) : ℤ :=
  (A374052.P16324426234516621321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374093.P11725955277954229124

`C(A035187(A008574(n)), 2)`
-/

namespace A374093.P11725955277954229124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A008574 n).toNat).toNat 2

end

end A374093.P11725955277954229124

noncomputable section

/-- A374093: Number of solutions to n = x^2 + 3*x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374093.P11725955277954229124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093 (n : ℕ) : ℤ :=
  (A374093.P11725955277954229124.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374135.P13347825855800962703

`filter[A202822(n+1), A070563(#)]`
-/

namespace A374135.P13347825855800962703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P13347825855800962703

noncomputable section

/-- A374135: Nonmultiples of 3 whose sum of divisors is also a nonmultiple of 3.

Offset 1, canonical program `A374135.P13347825855800962703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9598 terms. -/
def A374135 (n : ℕ) : ℤ :=
  A374135.P13347825855800962703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9598 terms. -/
def A374135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374151.P5800413158960378192

`A132090(2^n)`
-/

namespace A374151.P5800413158960378192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (2 ^ n)

end

end A374151.P5800413158960378192

noncomputable section

/-- A374151: The number of prime-indexed primes below 2^n.

Offset 0, canonical program `A374151.P5800413158960378192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151 (n : ℕ) : ℤ :=
  A374151.P5800413158960378192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374534.P17728637451671606639

`∑[A111938(n+1)]-A111938(n+1)`
-/

namespace A374534.P17728637451671606639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111938 (n + 1)

end

end A374534.P17728637451671606639

noncomputable section

/-- A374534: Expansion of (x/(4 * (1-x))) * d/dx(theta_3(x)^2).

Offset 0, canonical program `A374534.P17728637451671606639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534 (n : ℕ) : ℤ :=
  A374534.P17728637451671606639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374812.P12842280590014895668

`A013929(10^n)`
-/

namespace A374812.P12842280590014895668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (10 ^ n)

end

end A374812.P12842280590014895668

noncomputable section

/-- A374812: 10^n-th nonsquarefree number.

Offset 0, canonical program `A374812.P12842280590014895668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374812 (n : ℕ) : ℤ :=
  A374812.P12842280590014895668.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375087.P8456723521891746720

`A075526(n)-A036263(n+1)`
-/

namespace A375087.P8456723521891746720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A036263 (n + 1)

end

end A375087.P8456723521891746720

noncomputable section

/-- A375087: Numbers added to cumulative correction term in order for prime numbers to resemble a recursive sequence.

Offset 1, canonical program `A375087.P8456723521891746720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087 (n : ℕ) : ℤ :=
  A375087.P8456723521891746720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375708.P8231475400569183047

`A024619(n+1)-A361102(n+1)`
-/

namespace A375708.P8231475400569183047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) - A361102 (n + 1)

end

end A375708.P8231475400569183047

noncomputable section

/-- A375708: First differences of non-prime-powers (exclusive, so 1 is not a prime-power).

Offset 1, canonical program `A375708.P8231475400569183047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708 (n : ℕ) : ℤ :=
  A375708.P8231475400569183047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375927.P3509821031608274898

`comp[A013929(n+1)-(n+2)]+1`
-/

namespace A375927.P3509821031608274898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375927.P3509821031608274898

noncomputable section

/-- A375927: Numbers k such that A005117(k+1) - A005117(k) = 1. In other words, the k-th squarefree number is 1 less than the next.

Offset 1, canonical program `A375927.P3509821031608274898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375927 (n : ℕ) : ℤ :=
  (A375927.P3509821031608274898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375932.P15622445158983307868

`(n+1)/A375931(n+1)`
-/

namespace A375932.P15622445158983307868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A375931 (n + 1) : ℚ)

end

end A375932.P15622445158983307868

noncomputable section

/-- A375932: The largest unitary k-free divisor of n where k = A051903(n) is the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A375932.P15622445158983307868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375932.P15622445158983307868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375962.P14051908958568052838

`∩[A018252(n+1), comp[A375960(n+1)]]`
-/

namespace A375962.P14051908958568052838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A375962.P14051908958568052838

noncomputable section

/-- A375962: Numbers whose product of proper divisors is not a cube.

Offset 1, canonical program `A375962.P14051908958568052838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375962 (n : ℕ) : ℤ :=
  (A375962.P14051908958568052838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376142.P17307456728762235189

`filter[A013929(n+1), A381955(#)]`
-/

namespace A376142.P17307456728762235189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P17307456728762235189

noncomputable section

/-- A376142: Nonsquarefree numbers whose prime factorization has a maximum exponent that is odd.

Offset 1, canonical program `A376142.P17307456728762235189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142 (n : ℕ) : ℤ :=
  A376142.P17307456728762235189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376603.P13156490468514965856

`eq[2, A073784(n+1)+A065310(n+1)]`
-/

namespace A376603.P13156490468514965856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1) + A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376603.P13156490468514965856

noncomputable section

/-- A376603: Points of nonzero curvature in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376603.P13156490468514965856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376603 (n : ℕ) : ℤ :=
  (A376603.P13156490468514965856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377817.P402920297205935675

`lt[1, A162641(n+1)]+1`
-/

namespace A377817.P402920297205935675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377817.P402920297205935675

noncomputable section

/-- A377817: Numbers that have more than one even exponent in their prime factorization.

Offset 1, canonical program `A377817.P402920297205935675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817 (n : ℕ) : ℤ :=
  (A377817.P402920297205935675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378123.P719144829619954669

`A001221(A071148(n+1))`
-/

namespace A378123.P719144829619954669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A071148 (n + 1)).toNat

end

end A378123.P719144829619954669

noncomputable section

/-- A378123: a(n) = number of prime divisors of the sum of the first n odd primes.

Offset 1, canonical program `A378123.P719144829619954669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378123 (n : ℕ) : ℤ :=
  A378123.P719144829619954669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378689.P1510602258272592055

`A007955(n+1)/A308360(n+1)`
-/

namespace A378689.P1510602258272592055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A308360 (n + 1) : ℚ)

end

end A378689.P1510602258272592055

noncomputable section

/-- A378689: a(n) = product of divisors d of n that are not coreful.

Offset 1, canonical program `A378689.P1510602258272592055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378689.P1510602258272592055.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378814.P9140415008619509841

`round((n+1)/(A000005(A071904(n+1))-2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378814.P9140415008619509841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000005 (A071904 (n + 1)).toNat - 2 : ℚ))

end

end A378814.P9140415008619509841

noncomputable section

/-- A378814: a(n) = round(n/(A000005(A071904(n))-2)).

Offset 1, canonical program `A378814.P9140415008619509841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378814 (n : ℕ) : ℤ :=
  A378814.P9140415008619509841.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379226.P6425558838148186179

`eq[1, A379227(n+1)]+1`
-/

namespace A379226.P6425558838148186179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379226.P6425558838148186179

noncomputable section

/-- A379226: Numbers k for which A113177(k) is a multiple of 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379226.P6425558838148186179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226 (n : ℕ) : ℤ :=
  (A379226.P6425558838148186179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379444.P1698995234905750944

`(A007491(n+3)-A053001(n+2))/2`
-/

namespace A379444.P1698995234905750944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 3) - A053001 (n + 2) : ℚ) / 2

end

end A379444.P1698995234905750944

noncomputable section

/-- A379444: a(n) is the difference between the least prime > (n+1)^2 and the largest prime < n^2, divided by 2.

Offset 2, canonical program `A379444.P1698995234905750944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379444.P1698995234905750944.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379590.P15538976678021605459

`∑{d}[n+1, A332219(#)]`
-/

namespace A379590.P15538976678021605459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332219 d

end

end A379590.P15538976678021605459

noncomputable section

/-- A379590: a(n) is the number of prime divisors d of n such that 2^d - 1 is prime.

Offset 1, canonical program `A379590.P15538976678021605459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379590 (n : ℕ) : ℤ :=
  A379590.P15538976678021605459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379655.P8370440045132566259

`∩[A002191(n+1), ∑[A083531(n+1)]]`
-/

namespace A379655.P8370440045132566259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379655.P8370440045132566259

noncomputable section

/-- A379655: Numbers k such that k and k+1 are both possible values of the sum of divisors function (A000203).

Offset 1, canonical program `A379655.P8370440045132566259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A379655 (n : ℕ) : ℤ :=
  (A379655.P8370440045132566259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A379655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380322.P10413619903168285691

`A033634((n+1)²)`
-/

namespace A380322.P10413619903168285691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 ((n + 1) ^ 2)

end

end A380322.P10413619903168285691

noncomputable section

/-- A380322: a(n) is the sum of exponentially odd divisors of n^2.

Offset 1, canonical program `A380322.P10413619903168285691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380322 (n : ℕ) : ℤ :=
  A380322.P10413619903168285691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380550.P7718080083690173409

`eq[A079978(n), A095808(n+1)]`
-/

namespace A380550.P7718080083690173409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380550.P7718080083690173409

noncomputable section

/-- A380550: List of numbers not of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380550.P7718080083690173409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A380550 (n : ℕ) : ℤ :=
  (A380550.P7718080083690173409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A380550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381822.P13589790418829358810

`filter[2*n+1, A212793(#)]`
-/

namespace A381822.P13589790418829358810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j) = 1) n)

end

end A381822.P13589790418829358810

noncomputable section

/-- A381822: Odd cubefree numbers: odd numbers that are not divisible by any cube greater than 1.

Offset 1, canonical program `A381822.P13589790418829358810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381822 (n : ℕ) : ℤ :=
  (A381822.P13589790418829358810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382415.P7885958803409723842

`comp[A023721(n+1)]`
-/

namespace A382415.P7885958803409723842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382415.P7885958803409723842

noncomputable section

/-- A382415: Numbers with at least one zero in their base-5 representation.

Offset 1, canonical program `A382415.P7885958803409723842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415 (n : ℕ) : ℤ :=
  (A382415.P7885958803409723842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382489.P8206433590181445063

`A034444(A355582(n+1))`
-/

namespace A382489.P8206433590181445063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A355582 (n + 1)).toNat

end

end A382489.P8206433590181445063

noncomputable section

/-- A382489: The number of unitary 5-smooth divisors of n.

Offset 1, canonical program `A382489.P8206433590181445063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382489 (n : ℕ) : ℤ :=
  A382489.P8206433590181445063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382889.P8393808026600234868

`(A004709(n+1)/A382888(n+1))²`
-/

namespace A382889.P8393808026600234868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004709 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ)) ^ 2

end

end A382889.P8393808026600234868

noncomputable section

/-- A382889: The largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382889.P8393808026600234868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382889.P8393808026600234868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382906.P11250018393502254710

`A046100(n+1)/A382905(n+1)`
-/

namespace A382906.P11250018393502254710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382906.P11250018393502254710

noncomputable section

/-- A382906: The powerful part of the n-th biquadratefree number.

Offset 1, canonical program `A382906.P11250018393502254710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382906.P11250018393502254710.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382983.P16864973918105220280

`A004525(A282849(n+1))`
-/

namespace A382983.P16864973918105220280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A282849 (n + 1)).toNat

end

end A382983.P16864973918105220280

noncomputable section

/-- A382983: a(n) is the number of solutions to n = x*y in positive integers x <= y where x + y is prime.

Offset 1, canonical program `A382983.P16864973918105220280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983 (n : ℕ) : ℤ :=
  A382983.P16864973918105220280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383278.P11664526587919339867

`∑[A383277(n+1)]`
-/

namespace A383278.P11664526587919339867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383278.P11664526587919339867

noncomputable section

/-- A383278: The number of integers k such that A034444(k) * k <= n.

Offset 1, canonical program `A383278.P11664526587919339867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278 (n : ℕ) : ℤ :=
  A383278.P11664526587919339867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383785.P9174165813630133873

`comp[A383784(n+1)]`
-/

namespace A383785.P9174165813630133873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383785.P9174165813630133873

noncomputable section

/-- A383785: Numbers not occurring as norms of vectors in any regular planar lattice.

Offset 1, canonical program `A383785.P9174165813630133873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383785 (n : ℕ) : ℤ :=
  (A383785.P9174165813630133873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384210.P9000503329095324649

`∑[A358769(n+1)]`
-/

namespace A384210.P9000503329095324649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P9000503329095324649

noncomputable section

/-- A384210: Number of numbers <= n of the form p * m^2, where p is a prime and m is an integer >= 1.

Offset 1, canonical program `A384210.P9000503329095324649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384210 (n : ℕ) : ℤ :=
  A384210.P9000503329095324649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`
-/

namespace A384517.P2524242939913956237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1) ^ 2

end

end A384517.P2524242939913956237

noncomputable section

/-- A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

Offset 1, canonical program `A384517.P2524242939913956237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517 (n : ℕ) : ℤ :=
  A384517.P2524242939913956237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385135.P2610461928447885844

`∑{d}[n+1, #*A295316((n+1)/#)]`
-/

namespace A385135.P2610461928447885844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P2610461928447885844

noncomputable section

/-- A385135: The sum of divisors d of n such that n/d is an exponentially odd number (A268335).

Offset 1, canonical program `A385135.P2610461928447885844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385135 (n : ℕ) : ℤ :=
  A385135.P2610461928447885844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385186.P4786045568556836293

`2*A147846(n+1)`
-/

namespace A385186.P4786045568556836293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147846 (n + 1)

end

end A385186.P4786045568556836293

noncomputable section

/-- A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

Offset 1, canonical program `A385186.P4786045568556836293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186 (n : ℕ) : ℤ :=
  A385186.P4786045568556836293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385349.P6182123105730510131

`gcd(A007956(n+1), A136655(n+1))`
-/

namespace A385349.P6182123105730510131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007956 (n + 1)) (A136655 (n + 1))

end

end A385349.P6182123105730510131

noncomputable section

/-- A385349: Product of odd proper divisors of n.

Offset 1, canonical program `A385349.P6182123105730510131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A385349 (n : ℕ) : ℤ :=
  (A385349.P6182123105730510131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A385349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387335.P18233147024188934057

`∪[A024619(n+1), A000123(n)]`
-/

namespace A387335.P18233147024188934057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P18233147024188934057

noncomputable section

/-- A387335: 1, 2, 4, along with numbers divisible by at least two distinct primes.

Offset 1, canonical program `A387335.P18233147024188934057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335 (n : ℕ) : ℤ :=
  (A387335.P18233147024188934057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389462.P16419255327458964044

`∪[A013929(n+1), A023196(n+1)]`
-/

namespace A389462.P16419255327458964044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P16419255327458964044

noncomputable section

/-- A389462: Numbers whose sum of proper divisors (A001065) is equal to or greater than their squarefree kernel (A007947).

Offset 1, canonical program `A389462.P16419255327458964044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389462 (n : ℕ) : ℤ :=
  (A389462.P16419255327458964044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389836.P17345097124898425646

`log2(A278908(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389836.P17345097124898425646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A278908 (n + 1) : ℝ)

end

end A389836.P17345097124898425646

noncomputable section

/-- A389836: a(n) = log_2(A278908(n)).

Offset 1, canonical program `A389836.P17345097124898425646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389836.P17345097124898425646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390289.P3249589091214432495

`∩[A004709(n+1), A024619(n+1)]`
-/

namespace A390289.P3249589091214432495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P3249589091214432495

noncomputable section

/-- A390289: Cubefree numbers that are not prime powers.

Offset 1, canonical program `A390289.P3249589091214432495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289 (n : ℕ) : ℤ :=
  (A390289.P3249589091214432495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390440.P2827321994001143984

`filter[A390437(n+1), A295316(#)]`
-/

namespace A390440.P2827321994001143984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A390440.P2827321994001143984

noncomputable section

/-- A390440: Exponentially 5-rough numbers: numbers whose prime factorization exponents are all coprime to 6.

Offset 1, canonical program `A390440.P2827321994001143984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6998 terms. -/
def A390440 (n : ℕ) : ℤ :=
  A390440.P2827321994001143984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6998 terms. -/
def A390440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391408.P396316861093903294

`A114495(n+3)-A389115(n+1)`
-/

namespace A391408.P396316861093903294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114495 (n + 3) - A389115 (n + 1)

end

end A391408.P396316861093903294

noncomputable section

/-- A391408: Expansion of g^5/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391408.P396316861093903294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A391408 (n : ℕ) : ℤ :=
  A391408.P396316861093903294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A391408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391733.P1683383338998513801

`eq[1, A005590(n)]`
-/

namespace A391733.P1683383338998513801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P1683383338998513801

noncomputable section

/-- A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other run of 1-bits are of an even length (or absent).

Offset 1, canonical program `A391733.P1683383338998513801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733 (n : ℕ) : ℤ :=
  (A391733.P1683383338998513801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392014.P1818538271184462039

`A278908(A138302(n+1))`
-/

namespace A392014.P1818538271184462039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A138302 (n + 1)).toNat

end

end A392014.P1818538271184462039

noncomputable section

/-- A392014: The number of exponential unitary divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392014.P1818538271184462039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392014 (n : ℕ) : ℤ :=
  A392014.P1818538271184462039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394056.P3416054200138163262

`∑[A354927(n+1)]-1`
-/

namespace A394056.P3416054200138163262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A394056.P3416054200138163262

noncomputable section

/-- A394056: Number of positive integers <= n with 4 divisors.

Offset 1, canonical program `A394056.P3416054200138163262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394056 (n : ℕ) : ℤ :=
  A394056.P3416054200138163262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394470.P12281335905416762997

`(n+1)*A000005(n+1)-n*A056169(n+1)`
-/

namespace A394470.P12281335905416762997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A056169 (n + 1)

end

end A394470.P12281335905416762997

noncomputable section

/-- A394470: a(n) = n*tau(n) - (n-1)*Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

Offset 1, canonical program `A394470.P12281335905416762997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394470 (n : ℕ) : ℤ :=
  A394470.P12281335905416762997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395114.P18219317400035454050

`A005590(A103354(n+2))`
-/

namespace A395114.P18219317400035454050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A103354 (n + 2)).toNat

end

end A395114.P18219317400035454050

noncomputable section

/-- A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

Offset 1, canonical program `A395114.P18219317400035454050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114 (n : ℕ) : ℤ :=
  A395114.P18219317400035454050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395491.P9780452655082946417

`A000005(n+1)+n*A056169(n+1)`
-/

namespace A395491.P9780452655082946417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A056169 (n + 1)

end

end A395491.P9780452655082946417

noncomputable section

/-- A395491: a(n) = tau(n) + (n-1) * Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

Offset 1, canonical program `A395491.P9780452655082946417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395491 (n : ℕ) : ℤ :=
  A395491.P9780452655082946417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395817.P11063103629399214891

`A135210(n+1)+1`
-/

namespace A395817.P11063103629399214891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1) + 1

end

end A395817.P11063103629399214891

noncomputable section

/-- A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

Offset 1, canonical program `A395817.P11063103629399214891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817 (n : ℕ) : ℤ :=
  A395817.P11063103629399214891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396548.P9291011898899936861

`A005361(n+1)-A278908(n+1)`
-/

namespace A396548.P9291011898899936861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A278908 (n + 1)

end

end A396548.P9291011898899936861

noncomputable section

/-- A396548: The number of coreful divisors of n that are not exponential unitary divisors of n.

Offset 1, canonical program `A396548.P9291011898899936861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396548 (n : ℕ) : ℤ :=
  A396548.P9291011898899936861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396571.P6988239857056960462

`(A071904(n+1)+A071904(n+2))/2`
-/

namespace A396571.P6988239857056960462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + A071904 (n + 2) : ℚ) / 2

end

end A396571.P6988239857056960462

noncomputable section

/-- A396571: Averages of adjacent odd composite numbers.

Offset 1, canonical program `A396571.P6988239857056960462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396571.P6988239857056960462.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`
-/

namespace A397645.P309890179960751511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358380 d

end

end A397645.P309890179960751511

noncomputable section

/-- A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

Offset 1, canonical program `A397645.P309890179960751511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397754.P18151342160138794166

`∩[A209932(n+1), A259315(n+1)]`
-/

namespace A397754.P18151342160138794166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397754.P18151342160138794166

noncomputable section

/-- A397754: Numbers that don't contain digit 0 but have a divisor that does.

Offset 1, canonical program `A397754.P18151342160138794166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754 (n : ℕ) : ℤ :=
  (A397754.P18151342160138794166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398167.P15155754403201331677

`filter[A340152(n+1), A295316(#)]`
-/

namespace A398167.P15155754403201331677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A398167.P15155754403201331677

noncomputable section

/-- A398167: Squarefree numbers k such that k+1 is cubefree.

Offset 1, canonical program `A398167.P15155754403201331677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167 (n : ℕ) : ℤ :=
  A398167.P15155754403201331677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311687.P12525606551040496369

`A004396(n)+A313057(n)-A047588(n+1)`
-/

namespace A311687.P12525606551040496369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n - A047588 (n + 1))

end

end A311687.P12525606551040496369

noncomputable section

/-- A311687: Coordination sequence Gal.6.125.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311687.P12525606551040496369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A311687 (n : ℕ) : ℤ :=
  A311687.P12525606551040496369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A311687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312436.P6318237834392598981

`2*A313683(n)-A315634(n)`
-/

namespace A312436.P6318237834392598981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A315634 n

end

end A312436.P6318237834392598981

noncomputable section

/-- A312436: Coordination sequence Gal.4.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312436.P6318237834392598981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A312436 (n : ℕ) : ℤ :=
  A312436.P6318237834392598981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A312436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312902.P9477729746775064079

`(A310378(n)+A008574(n))/2`
-/

namespace A312902.P9477729746775064079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310378 n + A008574 n : ℚ) / 2

end

end A312902.P9477729746775064079

noncomputable section

/-- A312902: Coordination sequence Gal.6.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312902.P9477729746775064079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A312902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A312902.P9477729746775064079.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A312902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312926.P704849189180626292

`A313540(n)-A004525(A004396(n))`
-/

namespace A312926.P704849189180626292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A004525 (A004396 n).toNat

end

end A312926.P704849189180626292

noncomputable section

/-- A312926: Coordination sequence Gal.6.118.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312926.P704849189180626292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A312926 (n : ℕ) : ℤ :=
  A312926.P704849189180626292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A312926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313136.P11916403924351243439

`A313540(n)-A128834(n)`
-/

namespace A313136.P11916403924351243439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A128834 n

end

end A313136.P11916403924351243439

noncomputable section

/-- A313136: Coordination sequence Gal.6.256.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313136.P11916403924351243439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313136 (n : ℕ) : ℤ :=
  A313136.P11916403924351243439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313477.P9239923112402886863

`A313683(n)-Δ[A011862(n)]`
-/

namespace A313477.P9239923112402886863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - (f1 (n + 1) - f1 n)

end

end A313477.P9239923112402886863

noncomputable section

/-- A313477: Coordination sequence Gal.5.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313477.P9239923112402886863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313477 (n : ℕ) : ℤ :=
  A313477.P9239923112402886863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313537.P8184197836610671294

`A330025(n-A330025(n))+A314725(n)`
-/

namespace A313537.P8184197836610671294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A314725 n

end

end A313537.P8184197836610671294

noncomputable section

/-- A313537: Coordination sequence Gal.5.66.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313537.P8184197836610671294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A313537 (n : ℕ) : ℤ :=
  A313537.P8184197836610671294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A313537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313615.P7259322333454390986

`(A315208(n)+A310413(n))/2`
-/

namespace A313615.P7259322333454390986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315208 n + A310413 n : ℚ) / 2

end

end A313615.P7259322333454390986

noncomputable section

/-- A313615: Coordination sequence Gal.6.323.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313615.P7259322333454390986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A313615.P7259322333454390986.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313846.P7134346169744339600

`A315033(n)+∑[A022003(n)]`
-/

namespace A313846.P7134346169744339600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313846.P7134346169744339600

noncomputable section

/-- A313846: Coordination sequence Gal.5.308.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313846.P7134346169744339600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313846 (n : ℕ) : ℤ :=
  A313846.P7134346169744339600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313859.P12307385577830529968

`A314884(n)+∑[A021913(n)]`
-/

namespace A313859.P12307385577830529968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313859.P12307385577830529968

noncomputable section

/-- A313859: Coordination sequence Gal.6.340.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313859.P12307385577830529968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313859 (n : ℕ) : ℤ :=
  A313859.P12307385577830529968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313978.P4030524710208457101

`A313836(n)+A315490(n)-A315413(n)`
-/

namespace A313978.P4030524710208457101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + (A315490 n - A315413 n)

end

end A313978.P4030524710208457101

noncomputable section

/-- A313978: Coordination sequence Gal.6.653.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313978.P4030524710208457101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. -/
def A313978 (n : ℕ) : ℤ :=
  A313978.P4030524710208457101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. -/
def A313978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314039.P14436885910708461975

`abs(A008592(n)-A315033(n))`
-/

namespace A314039.P14436885910708461975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315033 n|

end

end A314039.P14436885910708461975

noncomputable section

/-- A314039: Coordination sequence Gal.5.299.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314039.P14436885910708461975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314039 (n : ℕ) : ℤ :=
  A314039.P14436885910708461975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314069.P10164089610408818193

`A314061(n)+A314111(n)-A314100(n)`
-/

namespace A314069.P10164089610408818193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314061 n + (A314111 n - A314100 n)

end

end A314069.P10164089610408818193

noncomputable section

/-- A314069: Coordination sequence Gal.6.652.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314069.P10164089610408818193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314069 (n : ℕ) : ℤ :=
  A314069.P10164089610408818193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314684.P10439373234237939789

`abs(A008592(n)-A314239(n))`
-/

namespace A314684.P10439373234237939789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314239 n|

end

end A314684.P10439373234237939789

noncomputable section

/-- A314684: Coordination sequence Gal.6.149.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314684.P10439373234237939789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314684 (n : ℕ) : ℤ :=
  A314684.P10439373234237939789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315329.P14714097202250854664

`abs(A008592(n)-A310378(n))`
-/

namespace A315329.P14714097202250854664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310378 n|

end

end A315329.P14714097202250854664

noncomputable section

/-- A315329: Coordination sequence Gal.6.635.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315329.P14714097202250854664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A315329 (n : ℕ) : ℤ :=
  A315329.P14714097202250854664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A315329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315666.P9638974132160474731

`A314089(n)+A046978(A004396(n))`
-/

namespace A315666.P9638974132160474731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A046978 (A004396 n).toNat

end

end A315666.P9638974132160474731

noncomputable section

/-- A315666: Coordination sequence Gal.6.134.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315666.P9638974132160474731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315666 (n : ℕ) : ℤ :=
  A315666.P9638974132160474731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318250.P15576548995275800323

`n!*A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318250.P15576548995275800323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001157 (n + 1)

end

end A318250.P15576548995275800323

noncomputable section

/-- A318250: a(n) = (n - 1)! * sigma_2(n), where sigma_2(n) = sum of squares of divisors of n (A001157).

Offset 1, canonical program `A318250.P15576548995275800323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318250 (n : ℕ) : ℤ :=
  A318250.P15576548995275800323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320917.P139033327110249247

`A001157(n+1)*A001158(n+1)/A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320917.P139033327110249247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) * A001158 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A320917.P139033327110249247

noncomputable section

/-- A320917: a(n) = sigma_2(n)*sigma_3(n)/sigma(n).

Offset 1, canonical program `A320917.P139033327110249247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320917.P139033327110249247.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320941.P11750252740358871811

`(A000203(n+1)+3*A001157(n+1)+2*A001158(n+1))/6`
-/

namespace A320941.P11750252740358871811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 3 * A001157 (n + 1) + 2 * A001158 (n + 1) : ℚ) / 6

end

end A320941.P11750252740358871811

noncomputable section

/-- A320941: Expansion of Sum_{k>=1} x^k*(1 + x^k)/(1 - x^k)^4.

Offset 1, canonical program `A320941.P11750252740358871811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320941.P11750252740358871811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322812.P11194875774676953615

`A001221(A048675(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322812.P11194875774676953615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048675 (n + 2)).toNat

end

end A322812.P11194875774676953615

noncomputable section

/-- A322812: a(n) = A001221(A048675(n)).

Offset 2, canonical program `A322812.P11194875774676953615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322812 (n : ℕ) : ℤ :=
  A322812.P11194875774676953615.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322821.P8922676155250871452

`A048675(n+1)/gcd(A000079(n), A048675(n+1))`
-/

namespace A322821.P8922676155250871452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A048675 (n + 1)) : ℚ)

end

end A322821.P8922676155250871452

noncomputable section

/-- A322821: a(1) = 0; for n > 1, a(n) = A000265(A048675(n)).

Offset 1, canonical program `A322821.P8922676155250871452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322821.P8922676155250871452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322869.P13858766443451224919

`A000120(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322869.P13858766443451224919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048675 (n + 1)).toNat

end

end A322869.P13858766443451224919

noncomputable section

/-- A322869: a(n) = A000120(A048675(n)).

Offset 1, canonical program `A322869.P13858766443451224919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869 (n : ℕ) : ℤ :=
  A322869.P13858766443451224919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323741.P16006173371429215656

`A049711(A016754(n+1))`
-/

namespace A323741.P16006173371429215656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A016754 (n + 1)).toNat

end

end A323741.P16006173371429215656

noncomputable section

/-- A323741: a(n) = m-p where m = (2n+1)^2 and p is the largest prime < m.

Offset 1, canonical program `A323741.P16006173371429215656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323741 (n : ℕ) : ℤ :=
  A323741.P16006173371429215656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324286.P15965892089874497265

`A002487(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324286.P15965892089874497265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A048675 (n + 1)).toNat

end

end A324286.P15965892089874497265

noncomputable section

/-- A324286: a(n) = A002487(A048675(n)).

Offset 1, canonical program `A324286.P15965892089874497265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324286 (n : ℕ) : ℤ :=
  A324286.P15965892089874497265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327972.P3607971557437902118

`xor(A038184(n), A110240(n))`
-/

namespace A327972.P3607971557437902118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038184 n) (A110240 n)

end

end A327972.P3607971557437902118

noncomputable section

/-- A327972: Bitwise XOR of trajectories of rule 30 and rule 150, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A038184(n).

Offset 0, canonical program `A327972.P3607971557437902118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038184, A110240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327972 (n : ℕ) : ℤ :=
  A327972.P3607971557437902118.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038184, A110240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327973.P3149650232719123764

`xor(A110240(n+1), 2*A110240(n))`
-/

namespace A327973.P3149650232719123764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 (n + 1)) (2 * A110240 n)

end

end A327973.P3149650232719123764

noncomputable section

/-- A327973: Bitwise XOR of two successive generations (centrally aligned) in the trajectory of rule 30 started from a lone 1 cell: a(n) = A110240(n) XOR 2*A110240(n-1).

Offset 1, canonical program `A327973.P3149650232719123764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327973 (n : ℕ) : ℤ :=
  A327973.P3149650232719123764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328104.P17298012771272886420

`A163617(A110240(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328104.P17298012771272886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A110240 n).toNat

end

end A328104.P17298012771272886420

noncomputable section

/-- A328104: a(n) = A163617(A110240(n)) = A110240(n) OR 2*A110240(n).

Offset 0, canonical program `A328104.P17298012771272886420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328104 (n : ℕ) : ℤ :=
  A328104.P17298012771272886420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328259.P16400699147205299176

`(n+1)*A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328259.P16400699147205299176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001157 (n + 1)

end

end A328259.P16400699147205299176

noncomputable section

/-- A328259: a(n) = n * sigma_2(n).

Offset 1, canonical program `A328259.P16400699147205299176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328259 (n : ℕ) : ℤ :=
  A328259.P16400699147205299176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328490.P16825988426646783064

`∑{d}[n+1, A001157((n+1)/#)*A001157(#)]`
-/

namespace A328490.P16825988426646783064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A001157 d

end

end A328490.P16825988426646783064

noncomputable section

/-- A328490: Dirichlet g.f.: zeta(s)^2 * zeta(s-2)^2.

Offset 1, canonical program `A328490.P16825988426646783064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328490 (n : ℕ) : ℤ :=
  A328490.P16825988426646783064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329402.P5940628190842439666

`A038548(4*(n+1)²)`
-/

namespace A329402.P5940628190842439666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (4 * (n + 1) ^ 2)

end

end A329402.P5940628190842439666

noncomputable section

/-- A329402: Number of rectangles (w X h, w <= h) with integer side lengths w and h having area = n * perimeter.

Offset 1, canonical program `A329402.P5940628190842439666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329402 (n : ℕ) : ℤ :=
  A329402.P5940628190842439666.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329929.P12316207208201997715

`A336723(n+1)/A336722(n+1)`
-/

namespace A329929.P12316207208201997715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A336722 (n + 1) : ℚ)

end

end A329929.P12316207208201997715

noncomputable section

/-- A329929: a(n) = lcm(tau(n), sigma(n), pod(n)) / gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A329929.P12316207208201997715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329929.P12316207208201997715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330609.P14507470063012570889

`A271703(A091018(n))`
-/

namespace A330609.P14507470063012570889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A091018 n).toNat

end

end A330609.P14507470063012570889

noncomputable section

/-- A330609: T(n, k) = binomial(n-k-1, k-1)*(n-k)!/k! for n >= 0 and 0 <= k <= floor(n/2). Irregular triangle read by rows.

Offset 0, canonical program `A330609.P14507470063012570889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A330609 (n : ℕ) : ℤ :=
  A330609.P14507470063012570889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A330609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331079.P2155090531484907639

`∑[A038548(n+1)*A038548(n+2)]`
-/

namespace A331079.P2155090531484907639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) * A038548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331079.P2155090531484907639

noncomputable section

/-- A331079: a(n) = Sum_{i=1..n} u_2(i)*u_2(i+1), where u_2(n) = A038548(n).

Offset 1, canonical program `A331079.P2155090531484907639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331079 (n : ℕ) : ℤ :=
  A331079.P2155090531484907639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331750.P157088168861994408

`A048675(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331750.P157088168861994408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A000203 (n + 1)).toNat

end

end A331750.P157088168861994408

noncomputable section

/-- A331750: a(n) = A048675(sigma(n)).

Offset 1, canonical program `A331750.P157088168861994408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331750 (n : ℕ) : ℤ :=
  A331750.P157088168861994408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332813.P10985166550549235178

`A048675(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332813.P10985166550549235178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) 3

end

end A332813.P10985166550549235178

noncomputable section

/-- A332813: a(n) = A048675(n) mod 3.

Offset 1, canonical program `A332813.P10985166550549235178`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813 (n : ℕ) : ℤ :=
  A332813.P10985166550549235178.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332823.P6707942267644391447

`A102283(A048675(n+1))`
-/

namespace A332823.P6707942267644391447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A048675 (n + 1)).toNat

end

end A332823.P6707942267644391447

noncomputable section

/-- A332823: A 3-way classification indicator generated by the products of two consecutive primes and the cubes of primes. a(n) is -1, 0, or 1 such that a(n) == A048675(n) (mod 3).

Offset 1, canonical program `A332823.P6707942267644391447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823 (n : ℕ) : ℤ :=
  A332823.P6707942267644391447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333199.P5004072551827767386

`p?[A049441(n+1)+1]`
-/

namespace A333199.P5004072551827767386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333199.P5004072551827767386

noncomputable section

/-- A333199: Primes in A180646.

Offset 1, canonical program `A333199.P5004072551827767386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A333199 (n : ℕ) : ℤ :=
  A333199.P5004072551827767386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A333199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334109.P1143459477839108207

`A048675(A019554((n+1)/A019554(n+1)))`
-/

namespace A334109.P1143459477839108207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat).toNat

end

end A334109.P1143459477839108207

noncomputable section

/-- A334109: a(n) = A329697(A225546(n)).

Offset 1, canonical program `A334109.P1143459477839108207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109 (n : ℕ) : ℤ :=
  A334109.P1143459477839108207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335328.P9024646742360157798

`∩[A048109(n+1)-1, A048109(n+1)]`
-/

namespace A335328.P9024646742360157798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335328.P9024646742360157798

noncomputable section

/-- A335328: Number k such that both k and k+1 have an equal number of unitary and nonunitary divisors.

Offset 1, canonical program `A335328.P9024646742360157798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A335328 (n : ℕ) : ℤ :=
  (A335328.P9024646742360157798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A335328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335402.P11597769619180646528

`A185013(n)+A158611(n+1)`
-/

namespace A335402.P11597769619180646528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A158611 (n + 1)

end

end A335402.P11597769619180646528

noncomputable section

/-- A335402: Numbers m such that the only normal integer partition of m whose run-lengths are a palindrome is (1)^m.

Offset 1, canonical program `A335402.P11597769619180646528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335402 (n : ℕ) : ℤ :=
  A335402.P11597769619180646528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336415.P15157755128090898253

`A048675(n)+a(n-1)` with `a(0)=1`
-/

namespace A336415.P15157755128090898253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048675 n + a (n - 1)

end

end A336415.P15157755128090898253

noncomputable section

/-- A336415: Number of divisors of n! with equal prime multiplicities.

Offset 0, canonical program `A336415.P15157755128090898253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415 (n : ℕ) : ℤ :=
  A336415.P15157755128090898253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337156.P7925351017222445069

`A008784(eq[1, A008784(n+2)-A008784(n+1)]+1)`
-/

namespace A337156.P7925351017222445069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2) - A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337156.P7925351017222445069

noncomputable section

/-- A337156: Numbers k such that the k-th triangular number has all its prime factors congruent to 1 mod 4.

Offset 1, canonical program `A337156.P7925351017222445069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A337156 (n : ℕ) : ℤ :=
  A337156.P7925351017222445069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A337156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337175.P3535412205708800651

`A337174(n+1)-A038548(n+1)`
-/

namespace A337175.P3535412205708800651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337174 (n + 1) - A038548 (n + 1)

end

end A337175.P3535412205708800651

noncomputable section

/-- A337175: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and d1*d2 < n.

Offset 1, canonical program `A337175.P3535412205708800651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337175 (n : ℕ) : ℤ :=
  A337175.P3535412205708800651.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338090.P17959063363293433037

`comp[A037477(n)]`
-/

namespace A338090.P17959063363293433037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A338090.P17959063363293433037

noncomputable section

/-- A338090: Numbers having at least one 8 in their representation in base 9.

Offset 1, canonical program `A338090.P17959063363293433037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. -/
def A338090 (n : ℕ) : ℤ :=
  (A338090.P17959063363293433037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. -/
def A338090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338361.P5965664958947979086

`A369610(n+1)+Δ[n²]`
-/

namespace A338361.P5965664958947979086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369610 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A338361.P5965664958947979086

noncomputable section

/-- A338361: Indices of primes in A283312.

Offset 1, canonical program `A338361.P5965664958947979086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. -/
def A338361 (n : ℕ) : ℤ :=
  A338361.P5965664958947979086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. -/
def A338361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338510.P14820124329939672257

`2^n*A014210(n+1)²`
-/

namespace A338510.P14820124329939672257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014210 (n + 1) ^ 2

end

end A338510.P14820124329939672257

noncomputable section

/-- A338510: a(n) is smallest number in column n >= 0 of the triangle in A247687.

Offset 0, canonical program `A338510.P14820124329939672257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338510 (n : ℕ) : ℤ :=
  A338510.P14820124329939672257.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338521.P3726486366841375083

`A230980(n)-A230980(∑[A005171(n+1)])`
-/

namespace A338521.P3726486366841375083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338521.P3726486366841375083

noncomputable section

/-- A338521: The number of primes between n-primepi(n) and n.

Offset 1, canonical program `A338521.P3726486366841375083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338521 (n : ℕ) : ℤ :=
  A338521.P3726486366841375083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339370.P8095257519437507950

`(n+1)*A002541(n+1)-A153485(n+1)`
-/

namespace A339370.P8095257519437507950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002541 (n + 1) - A153485 (n + 1)

end

end A339370.P8095257519437507950

noncomputable section

/-- A339370: a(n) = Sum_{k=1..floor(n/2)} (n-k) * floor((n-k)/k).

Offset 1, canonical program `A339370.P8095257519437507950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339370 (n : ℕ) : ℤ :=
  A339370.P8095257519437507950.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342350.P14229369727761926340

`A139506(gcd(n, n+1)+1)^3+n`
-/

namespace A342350.P14229369727761926340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (Nat.gcd n (n + 1) + 1) ^ 3 + (n : ℤ)

end

end A342350.P14229369727761926340

noncomputable section

/-- A342350: Numbers k such that lcm(1,2,3,...,k)/21 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A342350.P14229369727761926340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342350 (n : ℕ) : ℤ :=
  A342350.P14229369727761926340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344392.P4317364181743092064

`A131689(A091018(n))`
-/

namespace A344392.P4317364181743092064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A091018 n).toNat

end

end A344392.P4317364181743092064

noncomputable section

/-- A344392: T(n, k) = k!*Stirling2(n - k, k), for n >= 0 and 0 <= k <= floor(n/2). Triangle read by rows.

Offset 0, canonical program `A344392.P4317364181743092064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1122 terms. -/
def A344392 (n : ℕ) : ℤ :=
  A344392.P4317364181743092064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1122 terms. -/
def A344392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346759.P7376657440773786324

`(A001157(n+1)-A001227(n+1))/4`
-/

namespace A346759.P7376657440773786324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) - A001227 (n + 1) : ℚ) / 4

end

end A346759.P7376657440773786324

noncomputable section

/-- A346759: a(n) = Sum_{d|n} floor(d^2/4).

Offset 1, canonical program `A346759.P7376657440773786324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346759 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346759.P7376657440773786324.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349005.P15599194683630198262

`A060866(n+1)+A038548(n+1)`
-/

namespace A349005.P15599194683630198262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + A038548 (n + 1)

end

end A349005.P15599194683630198262

noncomputable section

/-- A349005: a(n) = Sum_{d|n, d^2>=n} 1+d+n/d.

Offset 1, canonical program `A349005.P15599194683630198262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349005 (n : ℕ) : ℤ :=
  A349005.P15599194683630198262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353198.P877011731945880113

`filter[A024614(n+1), A353814(#)]`
-/

namespace A353198.P877011731945880113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A353198.P877011731945880113

noncomputable section

/-- A353198: Intersection of A000404 and A024614.

Offset 1, canonical program `A353198.P877011731945880113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. -/
def A353198 (n : ℕ) : ℤ :=
  A353198.P877011731945880113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. -/
def A353198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353350.P17688933372676458567

`A079978(A048675(n+1))`
-/

namespace A353350.P17688933372676458567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A048675 (n + 1)).toNat

end

end A353350.P17688933372676458567

noncomputable section

/-- A353350: a(n) = 1 if A048675(n) is a multiple of 3, otherwise 0.

Offset 1, canonical program `A353350.P17688933372676458567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350 (n : ℕ) : ℤ :=
  A353350.P17688933372676458567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353360.P3063535457221817968

`A006047(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353360.P3063535457221817968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A048675 (n + 1)).toNat

end

end A353360.P3063535457221817968

noncomputable section

/-- A353360: a(n) = A006047(A048675(n)).

Offset 1, canonical program `A353360.P3063535457221817968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353360 (n : ℕ) : ℤ :=
  A353360.P3063535457221817968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356345.P3854360656098395106

`∑[A000984(n+1)*A001157(n+1)]`
-/

namespace A356345.P3854360656098395106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P3854360656098395106

noncomputable section

/-- A356345: a(n) = Sum_{k=1..n} binomial(2*k, k) * sigma_2(k).

Offset 1, canonical program `A356345.P3854360656098395106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A356345 (n : ℕ) : ℤ :=
  A356345.P3854360656098395106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A356345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356533.P11774335523977616474

`A001157(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356533.P11774335523977616474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) ^ 2

end

end A356533.P11774335523977616474

noncomputable section

/-- A356533: a(n) = sigma_2(n)^2.

Offset 1, canonical program `A356533.P11774335523977616474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356533 (n : ℕ) : ℤ :=
  A356533.P11774335523977616474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359058.P8369782960568005774

`A359216(n)²+A359217(n)²`
-/

namespace A359058.P8369782960568005774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 n ^ 2 + A359217 n ^ 2

end

end A359058.P8369782960568005774

noncomputable section

/-- A359058: a(n) = squared distance to the origin of the n-th vertex on a counterclockwise undulating spiral in a square grid.

Offset 0, canonical program `A359058.P8369782960568005774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359216, A359217, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359058 (n : ℕ) : ℤ :=
  A359058.P8369782960568005774.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359216, A359217, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359832.P2867967108972259624

`A000035(n+1+A048675(n+1))`
-/

namespace A359832.P2867967108972259624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) + A048675 (n + 1)).toNat

end

end A359832.P2867967108972259624

noncomputable section

/-- A359832: a(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359832.P2867967108972259624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832 (n : ℕ) : ℤ :=
  A359832.P2867967108972259624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360429.P5562470391516954265

`∑{d}[n+1, A034714(#)]`
-/

namespace A360429.P5562470391516954265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d

end

end A360429.P5562470391516954265

noncomputable section

/-- A360429: Inverse Mobius transformation of A034714.

Offset 1, canonical program `A360429.P5562470391516954265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360429 (n : ℕ) : ℤ :=
  A360429.P5562470391516954265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361063.P1577983195630285595

`∏{e}[n+1, A001157(#)]`
-/

namespace A361063.P1577983195630285595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001157 (Nat.factorization (f1 n) p)

end

end A361063.P1577983195630285595

noncomputable section

/-- A361063: Multiplicative with a(p^e) = sigma_2(e), where sigma_2 = A001157.

Offset 1, canonical program `A361063.P1577983195630285595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361063 (n : ℕ) : ℤ :=
  A361063.P1577983195630285595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361822.P6850116414336837406

`∩[A038604(n+1), A038613(n+1)]`
-/

namespace A361822.P6850116414336837406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P6850116414336837406

noncomputable section

/-- A361822: Primes without {2, 5} as digits.

Offset 1, canonical program `A361822.P6850116414336837406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822 (n : ℕ) : ℤ :=
  (A361822.P6850116414336837406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362030.P1231653781431482654

`A062050(A258410(n+1))`
-/

namespace A362030.P1231653781431482654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A258410 (n + 1)).toNat

end

end A362030.P1231653781431482654

noncomputable section

/-- A362030: Irregular triangle read by rows where row n contains the balanced binary words of length 2n interpreted as binary numbers.

Offset 1, canonical program `A362030.P1231653781431482654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030 (n : ℕ) : ℤ :=
  A362030.P1231653781431482654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366135.P4017335287159148948

`(n+1)*((n+1)*A000203(n+1)+A001157(n+1))/2`
-/

namespace A366135.P4017335287159148948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 1 : ℤ) * A000203 (n + 1) + A001157 (n + 1)) : ℚ) / 2

end

end A366135.P4017335287159148948

noncomputable section

/-- A366135: Expansion of Sum_{k>=1} k^3 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A366135.P4017335287159148948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366135.P4017335287159148948.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369253.P11097286628827511262

`A000035(A038548(n+1))`
-/

namespace A369253.P11097286628827511262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A038548 (n + 1)).toNat

end

end A369253.P11097286628827511262

noncomputable section

/-- A369253: Parity of A038548, where A038548(n) is the number of divisors of n that are at most sqrt(n).

Offset 1, canonical program `A369253.P11097286628827511262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369253 (n : ℕ) : ℤ :=
  A369253.P11097286628827511262.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371672.P8531591036181247015

`floor(log2(A105425(n+1)))`
-/

namespace A371672.P8531591036181247015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A105425 (n + 1)).toNat

end

end A371672.P8531591036181247015

noncomputable section

/-- A371672: a(n) = floor(log_phi(n)) with phi = A001622.

Offset 1, canonical program `A371672.P8531591036181247015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672 (n : ℕ) : ℤ :=
  (A371672.P8531591036181247015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372466.P16049166336239421302

`A051903(A036537(n+1))`
-/

namespace A372466.P16049166336239421302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A036537 (n + 1)).toNat

end

end A372466.P16049166336239421302

noncomputable section

/-- A372466: The maximal exponent in the prime factorization of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372466.P16049166336239421302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372466 (n : ℕ) : ℤ :=
  A372466.P16049166336239421302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372468.P1330154070991715833

`A000005(A036537(n+1))`
-/

namespace A372468.P1330154070991715833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036537 (n + 1)).toNat

end

end A372468.P1330154070991715833

noncomputable section

/-- A372468: The number of divisors of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372468.P1330154070991715833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372468 (n : ℕ) : ℤ :=
  A372468.P1330154070991715833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372690.P6818816879152483449

`A036537(record[n/Δ[A036537(n+1)]]+1)`
-/

namespace A372690.P6818816879152483449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A372690.P6818816879152483449

noncomputable section

/-- A372690: Numbers k such that k and k+1 are both numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372690.P6818816879152483449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690 (n : ℕ) : ℤ :=
  A372690.P6818816879152483449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372691.P3029882331532059219

`∩[A175496(n+1)-1, A175496(n+1)]`
-/

namespace A372691.P3029882331532059219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372691.P3029882331532059219

noncomputable section

/-- A372691: Numbers k such that k and k+1 are both nonsquarefree numbers whose number of divisors is a power of 2 (A175496).

Offset 1, canonical program `A372691.P3029882331532059219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691 (n : ℕ) : ℤ :=
  (A372691.P3029882331532059219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378366.P5705427883801254966

`n+1-A378367(n+1)`
-/

namespace A378366.P5705427883801254966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378367 (n + 1)

end

end A378366.P5705427883801254966

noncomputable section

/-- A378366: Difference between n and the greatest non prime power <= n (allowing 1).

Offset 1, canonical program `A378366.P5705427883801254966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378366 (n : ℕ) : ℤ :=
  A378366.P5705427883801254966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379812.P10955070158037639960

`A000203(n+1)*A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379812.P10955070158037639960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001157 (n + 1)

end

end A379812.P10955070158037639960

noncomputable section

/-- A379812: a(n) = sigma_1(n) * sigma_2(n).

Offset 1, canonical program `A379812.P10955070158037639960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379812 (n : ℕ) : ℤ :=
  A379812.P10955070158037639960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379814.P16691352175471226694

`A001157(n+1)*A001158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379814.P16691352175471226694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A001158 (n + 1)

end

end A379814.P16691352175471226694

noncomputable section

/-- A379814: a(n) = sigma_2(n) * sigma_3(n).

Offset 1, canonical program `A379814.P16691352175471226694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379814 (n : ℕ) : ℤ :=
  A379814.P16691352175471226694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380048.P12805935202259720765

`A000045(n)*A001003(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380048.P12805935202259720765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001003 n

end

end A380048.P12805935202259720765

noncomputable section

/-- A380048: a(n) = A000045(n) * A001003(n).

Offset 0, canonical program `A380048.P12805935202259720765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380048 (n : ℕ) : ℤ :=
  A380048.P12805935202259720765.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380906.P1124574358086231309

`∩[A038611(n+1), A038613(n+1)]`
-/

namespace A380906.P1124574358086231309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P1124574358086231309

noncomputable section

/-- A380906: Primes without {3, 5} as digits.

Offset 1, canonical program `A380906.P1124574358086231309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906 (n : ℕ) : ℤ :=
  (A380906.P1124574358086231309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381608.P6073522075897922791

`eq[A005812(n), A053735(n)]`
-/

namespace A381608.P6073522075897922791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P6073522075897922791

noncomputable section

/-- A381608: Nonnegative integers whose ternary expansion does not contain pairs of 2's only separated by (zero or more) 1's, with offset 0.

Offset 0, canonical program `A381608.P6073522075897922791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608 (n : ℕ) : ℤ :=
  (A381608.P6073522075897922791.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382417.P6349824024149082196

`comp[A255805(n+1)]`
-/

namespace A382417.P6349824024149082196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382417.P6349824024149082196

noncomputable section

/-- A382417: Numbers with at least one zero in their base-8 representation.

Offset 1, canonical program `A382417.P6349824024149082196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417 (n : ℕ) : ℤ :=
  (A382417.P6349824024149082196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383276.P2452328598663142777

`eq[1, A383277(n+1)]+1`
-/

namespace A383276.P2452328598663142777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383276.P2452328598663142777

noncomputable section

/-- A383276: Numbers of the form A034444(k) * k.

Offset 1, canonical program `A383276.P2452328598663142777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276 (n : ℕ) : ℤ :=
  (A383276.P2452328598663142777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386032.P1209115764652298695

`∩[A160337(n+1), A386335(n+1)]`
-/

namespace A386032.P1209115764652298695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P1209115764652298695

noncomputable section

/-- A386032: Primes having only {0, 1, 5, 7} as digits.

Offset 1, canonical program `A386032.P1209115764652298695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A386032 (n : ℕ) : ℤ :=
  (A386032.P1209115764652298695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A386032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386133.P16322278265495054683

`∩[A030096(n+1), A386335(n+1)]`
-/

namespace A386133.P16322278265495054683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P16322278265495054683

noncomputable section

/-- A386133: Primes having only {1, 5, 7, 9} as digits.

Offset 1, canonical program `A386133.P16322278265495054683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133 (n : ℕ) : ℤ :=
  (A386133.P16322278265495054683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386337.P5423590144065966214

`∩[A038604(n+1), A038614(n+1)]`
-/

namespace A386337.P5423590144065966214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P5423590144065966214

noncomputable section

/-- A386337: Primes without {2, 6} as digits.

Offset 1, canonical program `A386337.P5423590144065966214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337 (n : ℕ) : ℤ :=
  (A386337.P5423590144065966214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386338.P12113303320728621064

`∩[A038604(n+1), A038616(n+1)]`
-/

namespace A386338.P12113303320728621064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P12113303320728621064

noncomputable section

/-- A386338: Primes without {2, 8} as digits.

Offset 1, canonical program `A386338.P12113303320728621064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338 (n : ℕ) : ℤ :=
  (A386338.P12113303320728621064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386341.P11111794436961837809

`∩[A038611(n+1), A038614(n+1)]`
-/

namespace A386341.P11111794436961837809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P11111794436961837809

noncomputable section

/-- A386341: Primes without {3, 6} as digits.

Offset 1, canonical program `A386341.P11111794436961837809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341 (n : ℕ) : ℤ :=
  (A386341.P11111794436961837809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386343.P17130214579981136633

`∩[A038611(n+1), A038616(n+1)]`
-/

namespace A386343.P17130214579981136633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P17130214579981136633

noncomputable section

/-- A386343: Primes without {3, 8} as digits.

Offset 1, canonical program `A386343.P17130214579981136633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343 (n : ℕ) : ℤ :=
  (A386343.P17130214579981136633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386350.P2011497625234474322

`∩[A038613(n+1), A038614(n+1)]`
-/

namespace A386350.P2011497625234474322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P2011497625234474322

noncomputable section

/-- A386350: Primes without {5, 6} as digits.

Offset 1, canonical program `A386350.P2011497625234474322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350 (n : ℕ) : ℤ :=
  (A386350.P2011497625234474322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386352.P14653844485856961628

`∩[A038613(n+1), A038616(n+1)]`
-/

namespace A386352.P14653844485856961628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P14653844485856961628

noncomputable section

/-- A386352: Primes without {5, 8} as digits.

Offset 1, canonical program `A386352.P14653844485856961628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6593 terms. -/
def A386352 (n : ℕ) : ℤ :=
  (A386352.P14653844485856961628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6593 terms. -/
def A386352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386355.P6323683761705395638

`∩[A038614(n+1), A038616(n+1)]`
-/

namespace A386355.P6323683761705395638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P6323683761705395638

noncomputable section

/-- A386355: Primes without {6, 8} as digits.

Offset 1, canonical program `A386355.P6323683761705395638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6614 terms. -/
def A386355 (n : ℕ) : ℤ :=
  (A386355.P6323683761705395638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6614 terms. -/
def A386355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389065.P446033477229377007

`filter[A052485(n+1), A005171(#)]`
-/

namespace A389065.P446033477229377007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A389065.P446033477229377007

noncomputable section

/-- A389065: Numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A389065.P446033477229377007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. -/
def A389065 (n : ℕ) : ℤ :=
  A389065.P446033477229377007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. -/
def A389065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391958.P4973106280450321391

`A187059(n)+A187059(n)+A011371(n)`
-/

namespace A391958.P4973106280450321391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + (A187059 n + A011371 n)

end

end A391958.P4973106280450321391

noncomputable section

/-- A391958: First column of A391957.

Offset 0, canonical program `A391958.P4973106280450321391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958 (n : ℕ) : ℤ :=
  A391958.P4973106280450321391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312944.P10352977025746883391

`A004396(A314253(n)+n)`
-/

namespace A312944.P10352977025746883391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314253 n + (n : ℤ)).toNat

end

end A312944.P10352977025746883391

noncomputable section

/-- A312944: Coordination sequence Gal.6.245.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312944.P10352977025746883391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A312944 (n : ℕ) : ℤ :=
  A312944.P10352977025746883391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A312944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316098.P17152426692604565992

`A005101(A316096(n+1))`
-/

namespace A316098.P17152426692604565992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A316096 (n + 1)).toNat

end

end A316098.P17152426692604565992

noncomputable section

/-- A316098: Abundant numbers that differ from the next abundant number by 4.

Offset 1, canonical program `A316098.P17152426692604565992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316096, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316098 (n : ℕ) : ℤ :=
  A316098.P17152426692604565992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316096, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316099.P17206935582006049341

`A005101(A316097(n+1))`
-/

namespace A316099.P17206935582006049341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A316097 (n + 1)).toNat

end

end A316099.P17206935582006049341

noncomputable section

/-- A316099: Abundant numbers that differ from the next abundant number by 6.

Offset 1, canonical program `A316099.P17206935582006049341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316099 (n : ℕ) : ℤ :=
  A316099.P17206935582006049341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317335.P6494193205708932808

`A317332(n+1)-8*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317335.P6494193205708932808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1) - (8 * (n + 1) : ℤ)

end

end A317335.P6494193205708932808

noncomputable section

/-- A317335: a(n) = A317332(n) - 8*n.

Offset 1, canonical program `A317335.P6494193205708932808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317335 (n : ℕ) : ℤ :=
  A317335.P6494193205708932808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317332, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317838.P14369629829777606586

`A317837(n+1)+A002487(n+1)`
-/

namespace A317838.P14369629829777606586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (n + 1) + A002487 (n + 1)

end

end A317838.P14369629829777606586

noncomputable section

/-- A317838: a(n) = Sum_{d|n} A002487(d).

Offset 1, canonical program `A317838.P14369629829777606586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317838 (n : ℕ) : ℤ :=
  A317838.P14369629829777606586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318307.P12888497718899274042

`2^A318306(n+1)`
-/

namespace A318307.P12888497718899274042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318306 (n + 1) : ℤ)

end

end A318307.P12888497718899274042

noncomputable section

/-- A318307: Multiplicative with a(p^e) = 2^A002487(e).

Offset 1, canonical program `A318307.P12888497718899274042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318307.P12888497718899274042.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318675.P6460778612345656945

`A048250(n+1)-A318674(n+1)`
-/

namespace A318675.P6460778612345656945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A318674 (n + 1)

end

end A318675.P6460778612345656945

noncomputable section

/-- A318675: Sum of squarefree divisors of n that have an odd number of prime factors.

Offset 1, canonical program `A318675.P6460778612345656945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318675 (n : ℕ) : ℤ :=
  A318675.P6460778612345656945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319713.P11183865929377716110

`∑{d}[n+1, A276150(#%(n+1))]`
-/

namespace A319713.P11183865929377716110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276150 (d % (n + 1))

end

end A319713.P11183865929377716110

noncomputable section

/-- A319713: Sum of A276150(d) over proper divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319713.P11183865929377716110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319713 (n : ℕ) : ℤ :=
  A319713.P11183865929377716110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320015.P7908202895752596579

`A320001(n+1)+A320005(n+1)`
-/

namespace A320015.P7908202895752596579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (n + 1) + A320005 (n + 1)

end

end A320015.P7908202895752596579

noncomputable section

/-- A320015: Number of proper divisors of n that are either of the form 6*k+1 or 6*k + 5.

Offset 1, canonical program `A320015.P7908202895752596579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320001, A320005, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320015 (n : ℕ) : ℤ :=
  A320015.P7908202895752596579.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320001, A320005, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322360.P129739376014566701

`abs(A046970(n+1))`
-/

namespace A322360.P129739376014566701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046970 (n + 1)|

end

end A322360.P129739376014566701

noncomputable section

/-- A322360: Multiplicative with a(p^e) = p^2 - 1.

Offset 1, canonical program `A322360.P129739376014566701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322360 (n : ℕ) : ℤ :=
  A322360.P129739376014566701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326047.P17688091439761473015

`gcd(n+1-A050449(n+1), n+1-A050452(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326047.P17688091439761473015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A050449 (n + 1)) ((n + 1 : ℤ) - A050452 (n + 1))

end

end A326047.P17688091439761473015

noncomputable section

/-- A326047: a(n) = gcd(n-A050449(n), n-A050452(n)), where A050449 and A050452 give the sum of divisors of the form 4k+1 and of the form 4k+3, respectively.

Offset 1, canonical program `A326047.P17688091439761473015`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326047 (n : ℕ) : ℤ :=
  (A326047.P17688091439761473015.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326052.P4438226606935639787

`n+1-A050452(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326052.P4438226606935639787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050452 (n + 1)

end

end A326052.P4438226606935639787

noncomputable section

/-- A326052: a(n) = n - A050452(n), where A050452 is the sum of divisors of the form 4k+3.

Offset 1, canonical program `A326052.P4438226606935639787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326052 (n : ℕ) : ℤ :=
  A326052.P4438226606935639787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326732.P16179678050265044032

`2*A230877(n)-A000120(n)²`
-/

namespace A326732.P16179678050265044032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230877 n - A000120 n ^ 2

end

end A326732.P16179678050265044032

noncomputable section

/-- A326732: Number of iterations of A326731(x) starting at x = n to reach 0.

Offset 0, canonical program `A326732.P16179678050265044032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326732 (n : ℕ) : ℤ :=
  A326732.P16179678050265044032.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333777.P17376492726482821964

`A053644(n)+a(A030109(n))` with `a(0)=0`
-/

namespace A333777.P17376492726482821964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 n + a (A030109 n).toNat

end

end A333777.P17376492726482821964

noncomputable section

/-- A333777: Inverse permutation to A333776.

Offset 0, canonical program `A333777.P17376492726482821964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777 (n : ℕ) : ℤ :=
  A333777.P17376492726482821964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334913.P14278215368688331790

`A000120(A184615(n))-A000120(A184616(n))`
-/

namespace A334913.P14278215368688331790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184615 n).toNat - A000120 (A184616 n).toNat

end

end A334913.P14278215368688331790

noncomputable section

/-- A334913: a(n) is the sum of digits of n in signed binary nonadjacent form.

Offset 0, canonical program `A334913.P14278215368688331790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, A184616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334913 (n : ℕ) : ℤ :=
  A334913.P14278215368688331790.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, A184616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344584.P9009511371490729863

`A319684(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344584.P9009511371490729863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A001065 (n + 1)

end

end A344584.P9009511371490729863

noncomputable section

/-- A344584: Difference between the inverse Möbius transform of the arithmetic derivative of n and the sum of the proper divisors of n: a(n) = A319684(n) - A001065(n).

Offset 1, canonical program `A344584.P9009511371490729863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344584 (n : ℕ) : ℤ :=
  A344584.P9009511371490729863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344931.P13007748442361514407

`∑{p}[n+1, #]-A344908(n+1)`
-/

namespace A344931.P13007748442361514407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A344908 (n + 1)

end

end A344931.P13007748442361514407

noncomputable section

/-- A344931: Sum of the distinct even-indexed prime divisors, p_{2k}, of n.

Offset 1, canonical program `A344931.P13007748442361514407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344931 (n : ℕ) : ℤ :=
  A344931.P13007748442361514407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344997.P7955148698695542917

`A173557(n+1)*A344753(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344997.P7955148698695542917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A344753 (n + 1)

end

end A344997.P7955148698695542917

noncomputable section

/-- A344997: a(n) = A173557(n) * A344753(n).

Offset 1, canonical program `A344997.P7955148698695542917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344997 (n : ℕ) : ℤ :=
  A344997.P7955148698695542917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345266.P10002656146987510819

`A056169(n+1)+A063958(n+1)`
-/

namespace A345266.P10002656146987510819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A063958 (n + 1)

end

end A345266.P10002656146987510819

noncomputable section

/-- A345266: a(n) = Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A345266.P10002656146987510819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345266 (n : ℕ) : ℤ :=
  A345266.P10002656146987510819.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345278.P16777163800638418964

`A344908(n+1)+A324967(n+1)`
-/

namespace A345278.P16777163800638418964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) + A324967 (n + 1)

end

end A345278.P16777163800638418964

noncomputable section

/-- A345278: a(n) = Sum_{p|n} p^(pi(p) mod 2).

Offset 1, canonical program `A345278.P16777163800638418964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345278 (n : ℕ) : ℤ :=
  A345278.P16777163800638418964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348341.P11276104296330033514

`A000005(n+1)-A037445(n+1)`
-/

namespace A348341.P11276104296330033514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A037445 (n + 1)

end

end A348341.P11276104296330033514

noncomputable section

/-- A348341: a(n) is the number of noninfinitary divisors of n.

Offset 1, canonical program `A348341.P11276104296330033514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348341 (n : ℕ) : ℤ :=
  A348341.P11276104296330033514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348952.P11377291942820923715

`A010052(n+1)-A305152(n+1)`
-/

namespace A348952.P11377291942820923715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) - A305152 (n + 1)

end

end A348952.P11377291942820923715

noncomputable section

/-- A348952: a(n) = -Sum_{d|n, d < sqrt(n)} (-1)^(d + n/d).

Offset 1, canonical program `A348952.P11377291942820923715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A305152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348952 (n : ℕ) : ℤ :=
  A348952.P11377291942820923715.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A305152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349469.P7810597205795784660

`(n+1)*A340850(n+1)`
-/

namespace A349469.P7810597205795784660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340850 (n + 1)

end

end A349469.P7810597205795784660

noncomputable section

/-- A349469: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s-1)*zeta(s-3)/(zeta(s-2))^2.

Offset 1, canonical program `A349469.P7810597205795784660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349469 (n : ℕ) : ℤ :=
  A349469.P7810597205795784660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351746.P13626312203566205031

`A351711(n+1)-A248577(n+1)`
-/

namespace A351746.P13626312203566205031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (n + 1) - A248577 (n + 1)

end

end A351746.P13626312203566205031

noncomputable section

/-- A351746: a(n) = Sum_{p|n, p prime} (p-1) * tau(n/p).

Offset 1, canonical program `A351746.P13626312203566205031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248577, A351711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351746 (n : ℕ) : ℤ :=
  A351746.P13626312203566205031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248577, A351711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354036.P7262506403534622663

`A000035(n+1)-A354035(n+1)`
-/

namespace A354036.P7262506403534622663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A354035 (n + 1)

end

end A354036.P7262506403534622663

noncomputable section

/-- A354036: a(n) = 1 if n is odd and sigma(n^2) == 1 (mod 4), otherwise 0.

Offset 1, canonical program `A354036.P7262506403534622663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354036 (n : ℕ) : ℤ :=
  A354036.P7262506403534622663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359151.P11123410445715459201

`filter[A077425(n+1), A354035(#)]`
-/

namespace A359151.P11123410445715459201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A359151.P11123410445715459201

noncomputable section

/-- A359151: Numbers of the form 4u+1 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359151.P11123410445715459201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. -/
def A359151 (n : ℕ) : ℤ :=
  A359151.P11123410445715459201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. -/
def A359151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359495.P14356946249672535810

`A230877(n)-A029931(n)`
-/

namespace A359495.P14356946249672535810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A029931 n

end

end A359495.P14356946249672535810

noncomputable section

/-- A359495: Sum of positions of 1's in binary expansion minus sum of positions of 1's in reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

Offset 0, canonical program `A359495.P14356946249672535810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495 (n : ℕ) : ℤ :=
  A359495.P14356946249672535810.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360125.P8640991440014561384

`A319684(gcd(xor(1, n²), ∑[n]))%2`
-/

namespace A360125.P8640991440014561384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319684 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A360125.P8640991440014561384

noncomputable section

/-- A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360125.P8640991440014561384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125 (n : ℕ) : ℤ :=
  A360125.P8640991440014561384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360128.P10742742717207604320

`A000007(A088722(n+1))`
-/

namespace A360128.P10742742717207604320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A088722 (n + 1)).toNat

end

end A360128.P10742742717207604320

noncomputable section

/-- A360128: a(n) = 1 if there are no divisors d>1 of n such that also d+1 is a divisor of n, otherwise 0.

Offset 1, canonical program `A360128.P10742742717207604320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360128 (n : ℕ) : ℤ :=
  A360128.P10742742717207604320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363359.P5416786752996279757

`A050452(4*(n+1)-1)`
-/

namespace A363359.P5416786752996279757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * (n + 1) - 1)

end

end A363359.P5416786752996279757

noncomputable section

/-- A363359: Sum of divisors of 4*n-1 of form 4*k+3.

Offset 1, canonical program `A363359.P5416786752996279757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363359 (n : ℕ) : ℤ :=
  A363359.P5416786752996279757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363392.P17888585954708400925

`A050452(4*(n+1)-2)`
-/

namespace A363392.P17888585954708400925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * (n + 1) - 2)

end

end A363392.P17888585954708400925

noncomputable section

/-- A363392: Sum of divisors of 4*n-2 of form 4*k+3.

Offset 1, canonical program `A363392.P17888585954708400925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363392 (n : ℕ) : ℤ :=
  A363392.P17888585954708400925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363407.P16355104600949627013

`A050452(4*n+1)`
-/

namespace A363407.P16355104600949627013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * n + 1)

end

end A363407.P16355104600949627013

noncomputable section

/-- A363407: Sum of divisors of 4*n-3 of form 4*k+3.

Offset 1, canonical program `A363407.P16355104600949627013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407 (n : ℕ) : ℤ :=
  A363407.P16355104600949627013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363904.P4106271239872733580

`(A001842(n+1)+A050452(n+1))/4`
-/

namespace A363904.P4106271239872733580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001842 (n + 1) + A050452 (n + 1) : ℚ) / 4

end

end A363904.P4106271239872733580

noncomputable section

/-- A363904: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(4*k))^2.

Offset 1, canonical program `A363904.P4106271239872733580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363904.P4106271239872733580.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364082.P5750381891829572794

`A363903(3*(n+1)+n)`
-/

namespace A364082.P5750381891829572794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (3 * (n + 1) + n)

end

end A364082.P5750381891829572794

noncomputable section

/-- A364082: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(4*k-3)).

Offset 1, canonical program `A364082.P5750381891829572794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082 (n : ℕ) : ℤ :=
  A364082.P5750381891829572794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364083.P15159461776881463796

`A363903(4*n+1)`
-/

namespace A364083.P15159461776881463796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (4 * n + 1)

end

end A364083.P15159461776881463796

noncomputable section

/-- A364083: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-3)).

Offset 1, canonical program `A364083.P15159461776881463796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083 (n : ℕ) : ℤ :=
  A364083.P15159461776881463796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`
-/

namespace A367076.P8374161418526432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A367076.P8374161418526432458

noncomputable section

/-- A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

Offset 0, canonical program `A367076.P8374161418526432458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076 (n : ℕ) : ℤ :=
  A367076.P8374161418526432458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368058.P11609945365760646763

`(n+1)*A294602(n+1)-A294487(n+1)`
-/

namespace A368058.P11609945365760646763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294602 (n + 1) - A294487 (n + 1)

end

end A368058.P11609945365760646763

noncomputable section

/-- A368058: Sum of the smaller parts of the partitions of n into two distinct parts with larger part prime.

Offset 1, canonical program `A368058.P11609945365760646763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294487, A294602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368058 (n : ℕ) : ℤ :=
  A368058.P11609945365760646763.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294487, A294602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368106.P645412121077292751

`A037445(A057521(n+1))`
-/

namespace A368106.P645412121077292751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A057521 (n + 1)).toNat

end

end A368106.P645412121077292751

noncomputable section

/-- A368106: The number of infinitary divisors of the powerful part of n.

Offset 1, canonical program `A368106.P645412121077292751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368106 (n : ℕ) : ℤ :=
  A368106.P645412121077292751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368170.P17133771726429753802

`A057521(A350390(n+1))`
-/

namespace A368170.P17133771726429753802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A350390 (n + 1)).toNat

end

end A368170.P17133771726429753802

noncomputable section

/-- A368170: The largest cubefull exponentially odd divisor of n.

Offset 1, canonical program `A368170.P17133771726429753802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170 (n : ℕ) : ℤ :=
  A368170.P17133771726429753802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369032.P9747696111945326450

`A105560(n+1)^A304438(n+1)²`
-/

namespace A369032.P9747696111945326450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105560 (n + 1) : ℚ) ^ (A304438 (n + 1) ^ 2 : ℤ)

end

end A369032.P9747696111945326450

noncomputable section

/-- A369032: LCM-transform of permutation A241909.

Offset 1, canonical program `A369032.P9747696111945326450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369032.P9747696111945326450.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369743.P5377607149347298905

`A105221(n+1)*A252736(n+1)`
-/

namespace A369743.P5377607149347298905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1) * A252736 (n + 1)

end

end A369743.P5377607149347298905

noncomputable section

/-- A369743: a(n) = Sum_{p|n, p prime} p * Omega(n/p).

Offset 1, canonical program `A369743.P5377607149347298905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369743 (n : ℕ) : ℤ :=
  A369743.P5377607149347298905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373299.P1347449349989211872

`A151800(A022885(n+1))`
-/

namespace A373299.P1347449349989211872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A022885 (n + 1)).toNat

end

end A373299.P1347449349989211872

noncomputable section

/-- A373299: Numbers prime(k) such that prime(k) - prime(k-1) = prime(k+2) - prime(k+1).

Offset 1, canonical program `A373299.P1347449349989211872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299 (n : ℕ) : ℤ :=
  A373299.P1347449349989211872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378543.P12831466803385793164

`∑{d}[n+1, A359372(#)*A373188((n+1)/#)]`
-/

namespace A378543.P12831466803385793164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359372 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P12831466803385793164

noncomputable section

/-- A378543: Sum of divisors d of n such that n/d has an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378543.P12831466803385793164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378543 (n : ℕ) : ℤ :=
  A378543.P12831466803385793164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378549.P13326407963315648607

`A000203(n+1)-A378548(n+1)`
-/

namespace A378549.P13326407963315648607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378548 (n + 1)

end

end A378549.P13326407963315648607

noncomputable section

/-- A378549: Sum of divisors d of n such that n/d is not an odd number with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378549.P13326407963315648607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378549 (n : ℕ) : ℤ :=
  A378549.P13326407963315648607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382490.P15041511037275720396

`A037445(A065331(n+1))`
-/

namespace A382490.P15041511037275720396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A065331 (n + 1)).toNat

end

end A382490.P15041511037275720396

noncomputable section

/-- A382490: The number of infinitary 3-smooth divisors of n.

Offset 1, canonical program `A382490.P15041511037275720396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382490 (n : ℕ) : ℤ :=
  A382490.P15041511037275720396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383008.P10745250568338898044

`A013928(A160785(n+1))`
-/

namespace A383008.P10745250568338898044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A160785 (n + 1)).toNat

end

end A383008.P10745250568338898044

noncomputable section

/-- A383008: Indices of the even terms in the sequence of squarefree numbers.

Offset 1, canonical program `A383008.P10745250568338898044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008 (n : ℕ) : ℤ :=
  A383008.P10745250568338898044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385859.P8395933161954360156

`A227428(3*n+1)+A227428(A000027(3*n+2))`
-/

namespace A385859.P8395933161954360156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 1) + A227428 (A000027 (3 * n + 2)).toNat

end

end A385859.P8395933161954360156

noncomputable section

/-- A385859: a(n) = Sum_{k=0..n} (C(n,k) mod 3)^2.

Offset 0, canonical program `A385859.P8395933161954360156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A385859 (n : ℕ) : ℤ :=
  A385859.P8395933161954360156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A385859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394085.P10152136709517601280

`A000203(n+1)-A063956(n+1)+A056169(n+1)`
-/

namespace A394085.P10152136709517601280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A063956 (n + 1) + A056169 (n + 1)

end

end A394085.P10152136709517601280

noncomputable section

/-- A394085: a(n) = sigma(n) - Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394085.P10152136709517601280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394085 (n : ℕ) : ℤ :=
  A394085.P10152136709517601280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394651.P12518876512393771500

`A000005(n+1)+A063956(n+1)-A056169(n+1)`
-/

namespace A394651.P12518876512393771500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A063956 (n + 1) - A056169 (n + 1)

end

end A394651.P12518876512393771500

noncomputable section

/-- A394651: a(n) = tau(n) + Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394651.P12518876512393771500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394651 (n : ℕ) : ℤ :=
  A394651.P12518876512393771500.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`
-/

namespace A396409.P16372428509261204668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A025480 n).toNat

end

end A396409.P16372428509261204668

noncomputable section

/-- A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

Offset 0, canonical program `A396409.P16372428509261204668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409 (n : ℕ) : ℤ :=
  A396409.P16372428509261204668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316388.P10220908694329927643

`a(A000010(n+1)-1)+a(n-A000010(n+1))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316388.P10220908694329927643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (A000010 (n + 1) - 1).toNat + a ((n : ℤ) - A000010 (n + 1)).toNat

end

end A316388.P10220908694329927643

noncomputable section

/-- A316388: a(n) = a(phi(n)) + a(n-phi(n)) with a(1) = a(2) = a(3) = 1.

Offset 1, canonical program `A316388.P10220908694329927643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A316388 (n : ℕ) : ℤ :=
  (A316388.P10220908694329927643.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A316388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317253.P478334919827293391

`∪[A317331(n+1), A317332(n+1)]`
-/

namespace A317253.P478334919827293391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317253.P478334919827293391

noncomputable section

/-- A317253: Indices m for which A317414(m) = 1.

Offset 1, canonical program `A317253.P478334919827293391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A317253 (n : ℕ) : ℤ :=
  (A317253.P478334919827293391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A317253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318464.P588851004892053715

`∑{e}[n+1, A007895(#)]`
-/

namespace A318464.P588851004892053715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007895 (Nat.factorization (f1 n) p)

end

end A318464.P588851004892053715

noncomputable section

/-- A318464: Additive with a(p^e) = A007895(e), where A007895(n) gives the number of terms in Zeckendorf representation of n.

Offset 1, canonical program `A318464.P588851004892053715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318464 (n : ℕ) : ℤ :=
  A318464.P588851004892053715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318623.P74548259302421611

`(2^A000010(n+1))%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318623.P74548259302421611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000010 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A318623.P74548259302421611

noncomputable section

/-- A318623: a(n) = 2^phi(n) mod n.

Offset 1, canonical program `A318623.P74548259302421611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318623 (n : ℕ) : ℤ :=
  A318623.P74548259302421611.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318827.P912740374414188072

`n+1-gcd(n, A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318827.P912740374414188072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n : ℤ) (A000010 (n + 1)) : ℤ)

end

end A318827.P912740374414188072

noncomputable section

/-- A318827: a(n) = n - gcd(n - 1, phi(n)).

Offset 1, canonical program `A318827.P912740374414188072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318827 (n : ℕ) : ℤ :=
  A318827.P912740374414188072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318830.P3911767718648996760

`A000010(n+1)-gcd(A000010(n+1), n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318830.P3911767718648996760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (Int.gcd (A000010 (n + 1)) (n : ℤ) : ℤ)

end

end A318830.P3911767718648996760

noncomputable section

/-- A318830: a(n) = phi(n) - gcd(phi(n), n-1).

Offset 1, canonical program `A318830.P3911767718648996760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318830 (n : ℕ) : ℤ :=
  A318830.P3911767718648996760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318830.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318840.P4824797439622119668

`A000010(n+1)-A063994(n+1)`
-/

namespace A318840.P4824797439622119668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A063994 (n + 1)

end

end A318840.P4824797439622119668

noncomputable section

/-- A318840: a(n) = phi(n) - Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318840.P4824797439622119668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318840 (n : ℕ) : ℤ :=
  A318840.P4824797439622119668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319183.P15126436683614476302

`A000010((n+2)^(n+2)-1)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319183.P15126436683614476302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 2) ^ (n + 2) - 1) : ℚ) / (n + 2 : ℚ)

end

end A319183.P15126436683614476302

noncomputable section

/-- A319183: a(n) = phi(n^n - 1)/n where phi is A000010.

Offset 2, canonical program `A319183.P15126436683614476302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319183 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319183.P15126436683614476302.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319210.P2475304011012633793

`A000010((n+2)²-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319210.P2475304011012633793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 2) ^ 2 - 1) : ℚ) / 2

end

end A319210.P2475304011012633793

noncomputable section

/-- A319210: a(n) = phi(n^2 - 1)/2 where phi is A000010.

Offset 2, canonical program `A319210.P2475304011012633793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319210.P2475304011012633793.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319213.P1431763501550862561

`A000010((n+2)^3-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319213.P1431763501550862561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 2) ^ 3 - 1) : ℚ) / 3

end

end A319213.P1431763501550862561

noncomputable section

/-- A319213: a(n) = phi(n^3 - 1)/3 where phi is A000010.

Offset 2, canonical program `A319213.P1431763501550862561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319213 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319213.P1431763501550862561.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319214.P435217209022396964

`A000010((n+2)^5-1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319214.P435217209022396964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 2) ^ 5 - 1) : ℚ) / 5

end

end A319214.P435217209022396964

noncomputable section

/-- A319214: a(n) = phi(n^5 - 1)/5 where phi is A000010.

Offset 2, canonical program `A319214.P435217209022396964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319214 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319214.P435217209022396964.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319281.P15976617881653790280

`record[and(A097262(n)+1, n+1)]`
-/

namespace A319281.P15976617881653790280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097262 n + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319281.P15976617881653790280

noncomputable section

/-- A319281: Numbers of the form 16^i*(16*j + 1).

Offset 1, canonical program `A319281.P15976617881653790280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A319281 (n : ℕ) : ℤ :=
  A319281.P15976617881653790280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A319281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319340.P918367480918848699

`A000010(n+1)+A023900(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319340.P918367480918848699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A023900 (n + 1)

end

end A319340.P918367480918848699

noncomputable section

/-- A319340: Sum of Euler totient function and its Dirichlet inverse: a(n) = A000010(n) + A023900(n).

Offset 1, canonical program `A319340.P918367480918848699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319340 (n : ℕ) : ℤ :=
  A319340.P918367480918848699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319341.P11516969970215772159

`A000010(n+1)-A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319341.P11516969970215772159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A173557 (n + 1)

end

end A319341.P11516969970215772159

noncomputable section

/-- A319341: a(n) = A000010(n) - A173557(n).

Offset 1, canonical program `A319341.P11516969970215772159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319341 (n : ℕ) : ℤ :=
  A319341.P11516969970215772159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323511.P13166536761734004681

`A008966(n+1)*A079559(A048675(n+1))`
-/

namespace A323511.P13166536761734004681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A079559 (A048675 (n + 1)).toNat

end

end A323511.P13166536761734004681

noncomputable section

/-- A323511: a(n) = 1 if n is squarefree and A079559(A048675(n)) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A323511.P13166536761734004681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323511 (n : ℕ) : ℤ :=
  A323511.P13166536761734004681.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324046.P17445629398137156881

`gcd(A324047(n+1)+A094471(n+1), A153152(n))`
-/

namespace A324046.P17445629398137156881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324047 (n + 1) + A094471 (n + 1)) (A153152 n)

end

end A324046.P17445629398137156881

noncomputable section

/-- A324046: a(n) = gcd(n, A106316(n)).

Offset 1, canonical program `A324046.P17445629398137156881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324046 (n : ℕ) : ℤ :=
  (A324046.P17445629398137156881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324291.P13103428598125600832

`∏{p}[n+1, A000040(n%A000010(#)+1)]`
-/

namespace A324291.P13103428598125600832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (Int.tmod (n : ℤ) (A000010 p) + 1).toNat

end

end A324291.P13103428598125600832

noncomputable section

/-- A324291: Product prime(1+((n-1) mod (p-1))), where p ranges over distinct prime divisors of n.

Offset 1, canonical program `A324291.P13103428598125600832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324291 (n : ℕ) : ℤ :=
  A324291.P13103428598125600832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324331.P7732218609313798886

`n²-A000010(n+1)*A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324331.P7732218609313798886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000010 (n + 1) * A000203 (n + 1)

end

end A324331.P7732218609313798886

noncomputable section

/-- A324331: a(n) = (n-1)^2 - phi(n)*sigma(n), where phi is A000010 and sigma is A000203.

Offset 1, canonical program `A324331.P7732218609313798886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324331 (n : ℕ) : ℤ :=
  A324331.P7732218609313798886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324337.P2577203300185584379

`A002487(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324337.P2577203300185584379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A006068 n).toNat

end

end A324337.P2577203300185584379

noncomputable section

/-- A324337: a(n) = A002487(A006068(n)).

Offset 0, canonical program `A324337.P2577203300185584379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324337 (n : ℕ) : ℤ :=
  A324337.P2577203300185584379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324338.P10012383172274989098

`A002487(1+A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324338.P10012383172274989098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A006068 n).toNat

end

end A324338.P10012383172274989098

noncomputable section

/-- A324338: a(n) = A002487(1+A006068(n)).

Offset 0, canonical program `A324338.P10012383172274989098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324338 (n : ℕ) : ℤ :=
  A324338.P10012383172274989098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326674.P12564829722531985873

`A356352(A006068(n+1))`
-/

namespace A326674.P12564829722531985873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A006068 (n + 1)).toNat

end

end A326674.P12564829722531985873

noncomputable section

/-- A326674: GCD of the set of positions of 1's in the reversed binary expansion of n.

Offset 1, canonical program `A326674.P12564829722531985873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326674 (n : ℕ) : ℤ :=
  A326674.P12564829722531985873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327030.P6329466770021811722

`∑{d}[n, A000010(#)*(n/#)!]`
-/

namespace A327030.P6329466770021811722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat : ℤ)

end

end A327030.P6329466770021811722

noncomputable section

/-- A327030: a(n) = Sum_{d|n} phi(d)*(n/d)! for n > 0, a(0) = 0.

Offset 0, canonical program `A327030.P6329466770021811722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327030 (n : ℕ) : ℤ :=
  A327030.P6329466770021811722.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327171.P16996833286360269017

`A000010(n+1)*A007913(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327171.P16996833286360269017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A007913 (n + 1)

end

end A327171.P16996833286360269017

noncomputable section

/-- A327171: a(n) = phi(n) * core(n), where phi is Euler totient function, and core gives the squarefree part of n.

Offset 1, canonical program `A327171.P16996833286360269017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327171 (n : ℕ) : ℤ :=
  A327171.P16996833286360269017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327474.P6382581631706258001

`2*a(n-1)-a(n-2)+A000010(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A327474.P6382581631706258001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + A000010 (n - 1)

end

end A327474.P6382581631706258001

noncomputable section

/-- A327474: Number of distinct means of subsets of {1..n}, where {} has mean 0.

Offset 0, canonical program `A327474.P6382581631706258001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327474 (n : ℕ) : ℤ :=
  A327474.P6382581631706258001.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327570.P12080735759108807353

`(n+1)*A000010(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327570.P12080735759108807353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) ^ 2

end

end A327570.P12080735759108807353

noncomputable section

/-- A327570: a(n) = n*phi(n)^2, phi = A000010.

Offset 1, canonical program `A327570.P12080735759108807353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327570 (n : ℕ) : ℤ :=
  A327570.P12080735759108807353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328749.P17846108739945119774

`A289814(n)-A289813(n)`
-/

namespace A328749.P17846108739945119774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289813 n

end

end A328749.P17846108739945119774

noncomputable section

/-- A328749: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of n.

Offset 0, canonical program `A328749.P17846108739945119774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A328749 (n : ℕ) : ℤ :=
  A328749.P17846108739945119774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A328749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332054.P16273750245262081445

`(9^a(A000010(n+1)-1))%(n+1)` with `a(0)=0`
-/

namespace A332054.P16273750245262081445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 ^ a (A000010 (n + 1) - 1).toNat % (n + 1)

end

end A332054.P16273750245262081445

noncomputable section

/-- A332054: Tower of 9's modulo n.

Offset 1, canonical program `A332054.P16273750245262081445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332054 (n : ℕ) : ℤ :=
  (A332054.P16273750245262081445.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332055.P7854422566057198404

`(8^(A000010(n+1)+a(A000010(n+1)-1)))%(n+1)` with `a(0)=0`
-/

namespace A332055.P7854422566057198404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A000010 (n + 1) + a (A000010 (n + 1) - 1).toNat : ℤ))) (n + 1 : ℤ)

end

end A332055.P7854422566057198404

noncomputable section

/-- A332055: Tower of 8's modulo n.

Offset 1, canonical program `A332055.P7854422566057198404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332055 (n : ℕ) : ℤ :=
  A332055.P7854422566057198404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332268.P2564217565351011238

`∑{d}[n+1, A188641(#)]`
-/

namespace A332268.P2564217565351011238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188641 d

end

end A332268.P2564217565351011238

noncomputable section

/-- A332268: a(n) is the number of divisors of n that are Niven numbers.

Offset 1, canonical program `A332268.P2564217565351011238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332268 (n : ℕ) : ℤ :=
  A332268.P2564217565351011238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332498.P11951412772554313620

`A006068(A289814(n))`
-/

namespace A332498.P11951412772554313620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A289814 n).toNat

end

end A332498.P11951412772554313620

noncomputable section

/-- A332498: a(n) = y(w+1) where y(0) = 0 and y(k+1) = 2^(k+1)-1-y(k) (resp. y(k)) when d_k = 2 (resp. d_k <> 2) and Sum_{k=0..w} d_k*3^k is the ternary representation of n. Sequence A332497 gives corresponding x's.

Offset 0, canonical program `A332498.P11951412772554313620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332498 (n : ℕ) : ℤ :=
  A332498.P11951412772554313620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332513.P9883121993506999507

`eq[4, A000010(n+1)%12]+1`
-/

namespace A332513.P9883121993506999507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332513.P9883121993506999507

noncomputable section

/-- A332513: Numbers k such that phi(k) == 4 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332513.P9883121993506999507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7755 terms. -/
def A332513 (n : ℕ) : ℤ :=
  (A332513.P9883121993506999507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7755 terms. -/
def A332513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332514.P10691463017122802451

`eq[6, A000010(n+1)%12]+1`
-/

namespace A332514.P10691463017122802451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332514.P10691463017122802451

noncomputable section

/-- A332514: Numbers k such that phi(k) == 6 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332514.P10691463017122802451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A332514 (n : ℕ) : ℤ :=
  (A332514.P10691463017122802451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A332514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332515.P15703317837093587620

`eq[8, A000010(n+1)%12]+1`
-/

namespace A332515.P15703317837093587620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332515.P15703317837093587620

noncomputable section

/-- A332515: Numbers k such that phi(k) == 8 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332515.P15703317837093587620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5592 terms. -/
def A332515 (n : ℕ) : ℤ :=
  (A332515.P15703317837093587620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5592 terms. -/
def A332515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332713.P16432043159449943199

`∑{d}[n+1, A000010((n+1)/gcd(n+1, #²))]`
-/

namespace A332713.P16432043159449943199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (d ^ 2) : ℚ))).toNat

end

end A332713.P16432043159449943199

noncomputable section

/-- A332713: a(n) = Sum_{d|n} phi(d/gcd(d, n/d)).

Offset 1, canonical program `A332713.P16432043159449943199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332713 (n : ℕ) : ℤ :=
  A332713.P16432043159449943199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333169.P11111623842642408816

`A000010(n²+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333169.P11111623842642408816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n ^ 2 + 1)

end

end A333169.P11111623842642408816

noncomputable section

/-- A333169: a(n) = phi(n^2 + 1), where phi is the Euler totient function (A000010).

Offset 0, canonical program `A333169.P11111623842642408816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333169 (n : ℕ) : ℤ :=
  A333169.P11111623842642408816.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333415.P142928759278303053

`A007088(A145341(n+1))`
-/

namespace A333415.P142928759278303053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145341 (n + 1)).toNat

end

end A333415.P142928759278303053

noncomputable section

/-- A333415: Odd positive integers in base 2 read backwards.

Offset 1, canonical program `A333415.P142928759278303053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333415 (n : ℕ) : ℤ :=
  A333415.P142928759278303053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333558.P15456896144681005881

`∑{d}[n+1, A000040(#)*A000010(#)]`
-/

namespace A333558.P15456896144681005881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A000010 d

end

end A333558.P15456896144681005881

noncomputable section

/-- A333558: a(n) = Sum_{d|n} phi(d) * prime(d).

Offset 1, canonical program `A333558.P15456896144681005881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333558 (n : ℕ) : ℤ :=
  A333558.P15456896144681005881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333698.P12169548625343565124

`∑{p}[n+1, A000010(A000720(#))]`
-/

namespace A333698.P12169548625343565124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A000720 p).toNat

end

end A333698.P12169548625343565124

noncomputable section

/-- A333698: G.f.: Sum_{k>=1} phi(k) * x^prime(k) / (1 - x^prime(k)).

Offset 1, canonical program `A333698.P12169548625343565124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333698 (n : ℕ) : ℤ :=
  A333698.P12169548625343565124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335182.P8782257902307896353

`A349322(n+1)-A349658(n+1)`
-/

namespace A335182.P8782257902307896353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (n + 1) - A349658 (n + 1)

end

end A335182.P8782257902307896353

noncomputable section

/-- A335182: Sum of the refactorable divisors of n.

Offset 1, canonical program `A335182.P8782257902307896353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335182 (n : ℕ) : ℤ :=
  A335182.P8782257902307896353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336477.P16648333239125872670

`A209229(A000010(n+1))`
-/

namespace A336477.P16648333239125872670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000010 (n + 1)).toNat

end

end A336477.P16648333239125872670

noncomputable section

/-- A336477: a(n) = 1 if a regular n-gon is constructible with ruler (or, more precisely, an unmarked straightedge) and compass, 0 otherwise.

Offset 1, canonical program `A336477.P16648333239125872670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336477 (n : ℕ) : ℤ :=
  A336477.P16648333239125872670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337937.P1586791548103088812

`A000010(floor((3*(n+1)-1)/2))`
-/

namespace A337937.P1586791548103088812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌊((3 * (n + 1) : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A337937.P1586791548103088812

noncomputable section

/-- A337937: a(n) = Euler totient function phi = A000010 evaluated at N(n) = floor((3*n-1)/2) = A001651(n), for n >= 1.

Offset 1, canonical program `A337937.P1586791548103088812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337937 (n : ℕ) : ℤ :=
  A337937.P1586791548103088812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338522.P13173507621041795602

`A000010(n+1)*A000142(n+1)`
-/

namespace A338522.P13173507621041795602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000142 (n + 1)

end

end A338522.P13173507621041795602

noncomputable section

/-- A338522: Number of cyclic Latin squares of order n.

Offset 1, canonical program `A338522.P13173507621041795602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338522 (n : ℕ) : ℤ :=
  A338522.P13173507621041795602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338524.P14576734370194940708

`A006068(A000040(n+1))`
-/

namespace A338524.P14576734370194940708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A000040 (n + 1)).toNat

end

end A338524.P14576734370194940708

noncomputable section

/-- A338524: prime(n) Gray code decoding.

Offset 1, canonical program `A338524.P14576734370194940708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338524 (n : ℕ) : ℤ :=
  A338524.P14576734370194940708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338655.P5624696802713603670

`∑{d}[n+1, A000010(#)*C(#+(n+1)/#-1, #)]`
-/

namespace A338655.P5624696802713603670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((d : ℚ) + (n + 1 : ℚ) / (d : ℚ) - 1)).toNat d : ℤ)

end

end A338655.P5624696802713603670

noncomputable section

/-- A338655: a(n) = Sum_{d|n} phi(d) * binomial(d+n/d-1, d).

Offset 1, canonical program `A338655.P5624696802713603670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338655 (n : ℕ) : ℤ :=
  A338655.P5624696802713603670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338691.P3970477865839426901

`∪[A343500(n+1), A004767(n)]`
-/

namespace A338691.P3970477865839426901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338691.P3970477865839426901

noncomputable section

/-- A338691: Positions of (-1)'s in A209615.

Offset 1, canonical program `A338691.P3970477865839426901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338691 (n : ℕ) : ℤ :=
  (A338691.P3970477865839426901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338976.P3724280392145629394

`p?[A089227(n+1)]`
-/

namespace A338976.P3724280392145629394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338976.P3724280392145629394

noncomputable section

/-- A338976: Primes p such that p*A007953(p)+1 is prime.

Offset 1, canonical program `A338976.P3724280392145629394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A338976 (n : ℕ) : ℤ :=
  A338976.P3724280392145629394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A338976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338997.P1215819385443990744

`∑{d}[n+1, A000010(#)^3]`
-/

namespace A338997.P1215819385443990744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 3

end

end A338997.P1215819385443990744

noncomputable section

/-- A338997: Number of (i,j,k) in {1,2,...,n}^3 such that gcd(n,i) = gcd(n,j) = gcd(n,k).

Offset 1, canonical program `A338997.P1215819385443990744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338997 (n : ℕ) : ℤ :=
  A338997.P1215819385443990744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339211.P8081689652907168540

`comp[A007895(n)+n]`
-/

namespace A339211.P8081689652907168540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A339211.P8081689652907168540

noncomputable section

/-- A339211: Zeckendorf self numbers: numbers not of the form k + A007895(k).

Offset 1, canonical program `A339211.P8081689652907168540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1177 terms. -/
def A339211 (n : ℕ) : ℤ :=
  (A339211.P8081689652907168540.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1177 terms. -/
def A339211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340265.P16762526161692690489

`n+2-a(A000010(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340265.P16762526161692690489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - a (A000010 (n + 1) - 1).toNat

end

end A340265.P16762526161692690489

noncomputable section

/-- A340265: a(n) = n + 1 - a(phi(n)).

Offset 1, canonical program `A340265.P16762526161692690489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340265 (n : ℕ) : ℤ :=
  A340265.P16762526161692690489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340461.P4637614112348525884

`2*A000203(A000010(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340461.P4637614112348525884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (A000010 (n + 1)).toNat - (n + 1 : ℤ)

end

end A340461.P4637614112348525884

noncomputable section

/-- A340461: a(n) = 2*sigma(phi(n)) - n.

Offset 1, canonical program `A340461.P4637614112348525884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340461 (n : ℕ) : ℤ :=
  A340461.P4637614112348525884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340762.P17623527530836035086

`eq[2, A000005(a(A000010(n)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A340762.P17623527530836035086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 2] fun n f2 =>
  A000005 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340762.P17623527530836035086

noncomputable section

/-- A340762: Numbers k such that iterations of phi(k), phi(phi(k)), ... end in ... 4, 2, 1.

Offset 1, canonical program `A340762.P17623527530836035086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340762 (n : ℕ) : ℤ :=
  (A340762.P17623527530836035086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341002.P16832887161860960795

`eq[1, abs(A071650(n+1))]+1`
-/

namespace A341002.P16832887161860960795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341002.P16832887161860960795

noncomputable section

/-- A341002: Numbers whose sum of even digits and sum of odd digits differ by 1.

Offset 1, canonical program `A341002.P16832887161860960795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A341002 (n : ℕ) : ℤ :=
  (A341002.P16832887161860960795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A341002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341003.P14604439664991033148

`eq[2, abs(A071650(n+1))]+1`
-/

namespace A341003.P14604439664991033148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341003.P14604439664991033148

noncomputable section

/-- A341003: Numbers whose sum of even digits and sum of odd digits differ by 2.

Offset 1, canonical program `A341003.P14604439664991033148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A341003 (n : ℕ) : ℤ :=
  (A341003.P14604439664991033148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A341003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341004.P484656656138415432

`eq[3, abs(A071650(n+1))]+1`
-/

namespace A341004.P484656656138415432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341004.P484656656138415432

noncomputable section

/-- A341004: Numbers whose sum of even digits and sum of odd digits differ by 3.

Offset 1, canonical program `A341004.P484656656138415432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A341004 (n : ℕ) : ℤ :=
  (A341004.P484656656138415432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A341004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341005.P1029475103496540761

`eq[4, abs(A071650(A028310(n)))]`
-/

namespace A341005.P1029475103496540761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341005.P1029475103496540761

noncomputable section

/-- A341005: Numbers whose sum of even digits and sum of odd digits differ by 4.

Offset 1, canonical program `A341005.P1029475103496540761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A341005 (n : ℕ) : ℤ :=
  (A341005.P1029475103496540761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A341005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341006.P8486897643190546407

`eq[5, abs(A071650(n+1))]+1`
-/

namespace A341006.P8486897643190546407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341006.P8486897643190546407

noncomputable section

/-- A341006: Numbers whose sum of even digits and sum of odd digits differ by 5.

Offset 1, canonical program `A341006.P8486897643190546407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A341006 (n : ℕ) : ℤ :=
  (A341006.P8486897643190546407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A341006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341007.P4711020374910811574

`eq[36, A071650(A028310(n))²]`
-/

namespace A341007.P4711020374910811574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341007.P4711020374910811574

noncomputable section

/-- A341007: Numbers whose sum of even digits and sum of odd digits differ by 6.

Offset 1, canonical program `A341007.P4711020374910811574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A341007 (n : ℕ) : ℤ :=
  (A341007.P4711020374910811574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A341007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341008.P8270698989946765103

`eq[7, abs(A071650(A028310(n)))]`
-/

namespace A341008.P8270698989946765103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341008.P8270698989946765103

noncomputable section

/-- A341008: Numbers whose sum of even digits and sum of odd digits differ by 7.

Offset 1, canonical program `A341008.P8270698989946765103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A341008 (n : ℕ) : ℤ :=
  (A341008.P8270698989946765103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A341008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341009.P6779292514282715490

`eq[8, abs(A071650(A028310(n)))]`
-/

namespace A341009.P6779292514282715490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341009.P6779292514282715490

noncomputable section

/-- A341009: Numbers whose sum of even digits and sum of odd digits differ by 8.

Offset 1, canonical program `A341009.P6779292514282715490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A341009 (n : ℕ) : ℤ :=
  (A341009.P6779292514282715490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A341009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341010.P431178045612450557

`eq[9, abs(A071650(A028310(n)))]`
-/

namespace A341010.P431178045612450557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341010.P431178045612450557

noncomputable section

/-- A341010: Numbers whose sum of even digits and sum of odd digits differ by 9.

Offset 1, canonical program `A341010.P431178045612450557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 644 terms. -/
def A341010 (n : ℕ) : ℤ :=
  (A341010.P431178045612450557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 644 terms. -/
def A341010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342036.P14204125781141140411

`A007088(A048701(n))`
-/

namespace A342036.P14204125781141140411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048701 n).toNat

end

end A342036.P14204125781141140411

noncomputable section

/-- A342036: Palindromes of even length only using 0 or 1.

Offset 0, canonical program `A342036.P14204125781141140411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036 (n : ℕ) : ℤ :=
  A342036.P14204125781141140411.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342422.P8429940433587817569

`∑{d}[n+1, A000010((n+1)/#)*((n+1)/#)^#]`
-/

namespace A342422.P8429940433587817569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * ((n + 1 : ℚ) / (d : ℚ)) ^ d

end

end A342422.P8429940433587817569

noncomputable section

/-- A342422: a(n) = Sum_{k=1..n} (n/gcd(k,n))^gcd(k,n).

Offset 1, canonical program `A342422.P8429940433587817569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A342422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342422.P8429940433587817569.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A342422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342424.P4079614756208477528

`∑{d}[n+1, ((n+1)/#)^#*A000010(#)]`
-/

namespace A342424.P4079614756208477528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d * (A000010 d : ℚ)

end

end A342424.P4079614756208477528

noncomputable section

/-- A342424: a(n) = Sum_{k=1..n} gcd(k,n)^(n/gcd(k,n)).

Offset 1, canonical program `A342424.P4079614756208477528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A342424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342424.P4079614756208477528.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A342424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342470.P2285810494831413333

`∑{d}[n+1, A000010(#)^4]`
-/

namespace A342470.P2285810494831413333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 4

end

end A342470.P2285810494831413333

noncomputable section

/-- A342470: a(n) = Sum_{d|n} phi(d)^4.

Offset 1, canonical program `A342470.P2285810494831413333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342470 (n : ℕ) : ℤ :=
  A342470.P2285810494831413333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342471.P53467521156759386

`∑{d}[n+1, A000010(#)^(n+1)]`
-/

namespace A342471.P53467521156759386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 1)

end

end A342471.P53467521156759386

noncomputable section

/-- A342471: a(n) = Sum_{d|n} phi(d)^n.

Offset 1, canonical program `A342471.P53467521156759386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342471 (n : ℕ) : ℤ :=
  A342471.P53467521156759386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342473.P1212100716746415246

`∑{d}[n+1, A000010(#)^#]`
-/

namespace A342473.P1212100716746415246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ d

end

end A342473.P1212100716746415246

noncomputable section

/-- A342473: a(n) = Sum_{d|n} phi(d)^d.

Offset 1, canonical program `A342473.P1212100716746415246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342473 (n : ℕ) : ℤ :=
  A342473.P1212100716746415246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342485.P7553701451819094382

`∑{d}[n+1, A000010(#)^(#+1)]`
-/

namespace A342485.P7553701451819094382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (d + 1)

end

end A342485.P7553701451819094382

noncomputable section

/-- A342485: a(n) = Sum_{d|n} phi(d)^(d+1).

Offset 1, canonical program `A342485.P7553701451819094382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342485 (n : ℕ) : ℤ :=
  A342485.P7553701451819094382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342487.P14234691519251316654

`∑{d}[n+1, A000010(#)^(n+2)]`
-/

namespace A342487.P14234691519251316654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 2)

end

end A342487.P14234691519251316654

noncomputable section

/-- A342487: a(n) = Sum_{d|n} phi(d)^(n+1).

Offset 1, canonical program `A342487.P14234691519251316654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342487 (n : ℕ) : ℤ :=
  A342487.P14234691519251316654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342488.P2014245499126753136

`∑{d}[n+1, A000010(#)^((n+1)/#+1)]`
-/

namespace A342488.P2014245499126753136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + 1 : ℝ)

end

end A342488.P2014245499126753136

noncomputable section

/-- A342488: a(n) = Sum_{d|n} phi(d)^(n/d+1).

Offset 1, canonical program `A342488.P2014245499126753136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342488.P2014245499126753136.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342489.P14892594995084121903

`∑{d}[n+1, A000010(#)^(#-1)]`
-/

namespace A342489.P14892594995084121903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A342489.P14892594995084121903

noncomputable section

/-- A342489: a(n) = Sum_{d|n} phi(d)^(d-1).

Offset 1, canonical program `A342489.P14892594995084121903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342489 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342489.P14892594995084121903.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342490.P5422289700660606895

`∑{d}[n+1, A000010(#)^n]`
-/

namespace A342490.P5422289700660606895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ n

end

end A342490.P5422289700660606895

noncomputable section

/-- A342490: a(n) = Sum_{d|n} phi(d)^(n-1).

Offset 1, canonical program `A342490.P5422289700660606895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342490 (n : ℕ) : ℤ :=
  A342490.P5422289700660606895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342534.P14977343384539830503

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)²]`
-/

namespace A342534.P14977343384539830503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ 2

end

end A342534.P14977343384539830503

noncomputable section

/-- A342534: a(n) = Sum_{k=1..n} phi(gcd(k, n))^2.

Offset 1, canonical program `A342534.P14977343384539830503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342534 (n : ℕ) : ℤ :=
  A342534.P14977343384539830503.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342535.P13268357458306932432

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^3]`
-/

namespace A342535.P13268357458306932432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ 3

end

end A342535.P13268357458306932432

noncomputable section

/-- A342535: a(n) = Sum_{k=1..n} phi(gcd(k, n))^3.

Offset 1, canonical program `A342535.P13268357458306932432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342535 (n : ℕ) : ℤ :=
  A342535.P13268357458306932432.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342539.P15134519083303666003

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^(n+1)]`
-/

namespace A342539.P15134519083303666003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ (n + 1)

end

end A342539.P15134519083303666003

noncomputable section

/-- A342539: a(n) = Sum_{k=1..n} phi(gcd(k, n))^n.

Offset 1, canonical program `A342539.P15134519083303666003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342539 (n : ℕ) : ℤ :=
  A342539.P15134519083303666003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342540.P5508283151527662987

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^n]`
-/

namespace A342540.P5508283151527662987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ n

end

end A342540.P5508283151527662987

noncomputable section

/-- A342540: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(n-1).

Offset 1, canonical program `A342540.P5508283151527662987`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342540 (n : ℕ) : ℤ :=
  A342540.P5508283151527662987.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342541.P5724264600942304568

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^((n+1)/#)]`
-/

namespace A342541.P5724264600942304568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℝ) * (A000010 d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ)

end

end A342541.P5724264600942304568

noncomputable section

/-- A342541: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(n/gcd(k, n)).

Offset 1, canonical program `A342541.P5724264600942304568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342541.P5724264600942304568.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342542.P12561197941591774611

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^((n+1)/#-1)]`
-/

namespace A342542.P12561197941591774611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℝ) * (A000010 d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) - 1 : ℝ)

end

end A342542.P12561197941591774611

noncomputable section

/-- A342542: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(n/gcd(k, n) - 1).

Offset 1, canonical program `A342542.P12561197941591774611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342542.P12561197941591774611.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342543.P938359411798834154

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^#]`
-/

namespace A342543.P938359411798834154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ d

end

end A342543.P938359411798834154

noncomputable section

/-- A342543: a(n) = Sum_{k=1..n} phi(gcd(k, n))^gcd(k, n).

Offset 1, canonical program `A342543.P938359411798834154`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342543 (n : ℕ) : ℤ :=
  A342543.P938359411798834154.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342544.P4850078711706310498

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^(#-1)]`
-/

namespace A342544.P4850078711706310498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (A000010 d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A342544.P4850078711706310498

noncomputable section

/-- A342544: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(gcd(k, n) - 1).

Offset 1, canonical program `A342544.P4850078711706310498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342544.P4850078711706310498.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342607.P1887899099928198745

`∑{d}[n+1, A000010(#)^(n+1-#)]`
-/

namespace A342607.P1887899099928198745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ)

end

end A342607.P1887899099928198745

noncomputable section

/-- A342607: a(n) = Sum_{d|n} phi(d)^(n-d).

Offset 1, canonical program `A342607.P1887899099928198745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342607.P1887899099928198745.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342608.P908983890750534239

`∑{d}[n+1, A000010(#)^(n+1+#)]`
-/

namespace A342608.P908983890750534239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 1 + d)

end

end A342608.P908983890750534239

noncomputable section

/-- A342608: a(n) = Sum_{d|n} phi(d)^(n+d).

Offset 1, canonical program `A342608.P908983890750534239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342608 (n : ℕ) : ℤ :=
  A342608.P908983890750534239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342612.P8907929799852970286

`∑{d}[n+1, A000010((n+1)/#)^(n+1-#)]`
-/

namespace A342612.P8907929799852970286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ)

end

end A342612.P8907929799852970286

noncomputable section

/-- A342612: a(n) = Sum_{d|n} phi(n/d)^(n-d).

Offset 1, canonical program `A342612.P8907929799852970286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342612.P8907929799852970286.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342613.P11176546402380791999

`∑{d}[n+1, A000010((n+1)/#)^(n+1+#)]`
-/

namespace A342613.P11176546402380791999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ (n + 1 + d)

end

end A342613.P11176546402380791999

noncomputable section

/-- A342613: a(n) = Sum_{d|n} phi(n/d)^(n+d).

Offset 1, canonical program `A342613.P11176546402380791999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342613 (n : ℕ) : ℤ :=
  A342613.P11176546402380791999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342617.P6027933273147753272

`∑{d}[n+1, A000010(#)^(n+1-#+1)]`
-/

namespace A342617.P6027933273147753272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) + 1 : ℤ)

end

end A342617.P6027933273147753272

noncomputable section

/-- A342617: a(n) = Sum_{d|n} phi(d)^(n-d+1).

Offset 1, canonical program `A342617.P6027933273147753272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342617.P6027933273147753272.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342618.P11173609996329705879

`∑{d}[n+1, A000010(#)^(n+1+#+1)]`
-/

namespace A342618.P11173609996329705879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 1 + d + 1)

end

end A342618.P11173609996329705879

noncomputable section

/-- A342618: a(n) = Sum_{d|n} phi(d)^(n+d+1).

Offset 1, canonical program `A342618.P11173609996329705879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342618 (n : ℕ) : ℤ :=
  A342618.P11173609996329705879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342619.P957468625863859045

`∑{d}[n+1, A000010((n+1)/#)^(n+1-#+1)]`
-/

namespace A342619.P957468625863859045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) + 1 : ℤ)

end

end A342619.P957468625863859045

noncomputable section

/-- A342619: a(n) = Sum_{d|n} phi(n/d)^(n-d+1).

Offset 1, canonical program `A342619.P957468625863859045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342619.P957468625863859045.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342620.P14881825194004203680

`∑{d}[n+1, A000010((n+1)/#)^(n+1+#+1)]`
-/

namespace A342620.P14881825194004203680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ (n + 1 + d + 1)

end

end A342620.P14881825194004203680

noncomputable section

/-- A342620: a(n) = Sum_{d|n} phi(n/d)^(n+d+1).

Offset 1, canonical program `A342620.P14881825194004203680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342620 (n : ℕ) : ℤ :=
  A342620.P14881825194004203680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343497.P5131747724074345410

`∑{d}[n+1, #^3*A000010((n+1)/#)]`
-/

namespace A343497.P5131747724074345410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 3 : ℤ) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P5131747724074345410

noncomputable section

/-- A343497: a(n) = Sum_{k=1..n} gcd(k, n)^3.

Offset 1, canonical program `A343497.P5131747724074345410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343497 (n : ℕ) : ℤ :=
  A343497.P5131747724074345410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343517.P5816521876407712740

`∑{d}[n+1, A000010((n+1)/#)*C(n+1+#-1, n+1)]`
-/

namespace A343517.P5816521876407712740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose ((n + 1 + d : ℤ) - 1).toNat (n + 1) : ℤ)

end

end A343517.P5816521876407712740

noncomputable section

/-- A343517: a(n) = Sum_{1 <= x_1 <= x_2 <= ... <= x_n <= n} gcd(x_1, x_2, ... , x_n, n).

Offset 1, canonical program `A343517.P5816521876407712740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343517 (n : ℕ) : ℤ :=
  A343517.P5816521876407712740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343518.P8941559449026881362

`∑{d}[n+1, A000010((n+1)/#)*C(#+3, 4)]`
-/

namespace A343518.P8941559449026881362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (d + 3) 4 : ℤ)

end

end A343518.P8941559449026881362

noncomputable section

/-- A343518: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= n} gcd(x_1, x_2, x_3 , x_4, n).

Offset 1, canonical program `A343518.P8941559449026881362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343518 (n : ℕ) : ℤ :=
  A343518.P8941559449026881362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343519.P12278953464218784593

`∑{d}[n+1, A000010((n+1)/#)*C(#+4, 5)]`
-/

namespace A343519.P12278953464218784593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (d + 4) 5 : ℤ)

end

end A343519.P12278953464218784593

noncomputable section

/-- A343519: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, n).

Offset 1, canonical program `A343519.P12278953464218784593`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343519 (n : ℕ) : ℤ :=
  A343519.P12278953464218784593.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343520.P11113529330379184782

`∑{d}[n+1, A000010((n+1)/#)*C(#+5, 6)]`
-/

namespace A343520.P11113529330379184782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (d + 5) 6 : ℤ)

end

end A343520.P11113529330379184782

noncomputable section

/-- A343520: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= x_6 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, x_6, n).

Offset 1, canonical program `A343520.P11113529330379184782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343520 (n : ℕ) : ℤ :=
  A343520.P11113529330379184782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343521.P12215829752090485773

`∑{d}[n+1, A000010((n+1)/#)*C(#+6, 7)]`
-/

namespace A343521.P12215829752090485773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose (d + 6) 7 : ℤ)

end

end A343521.P12215829752090485773

noncomputable section

/-- A343521: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= x_6 <= x_7 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, x_6, x_7, n).

Offset 1, canonical program `A343521.P12215829752090485773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343521 (n : ℕ) : ℤ :=
  A343521.P12215829752090485773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343553.P6074432099491582450

`∑{d}[n+1, A000010((n+1)/#)*C(#+n+1-2, n)]`
-/

namespace A343553.P6074432099491582450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (Nat.choose ((d + (n + 1) : ℤ) - 2).toNat n : ℤ)

end

end A343553.P6074432099491582450

noncomputable section

/-- A343553: a(n) = Sum_{1 <= x_1 <= x_2 <= ... <= x_n = n} gcd(x_1, x_2, ... , x_n).

Offset 1, canonical program `A343553.P6074432099491582450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343553 (n : ℕ) : ℤ :=
  A343553.P6074432099491582450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344224.P938351998722366507

`∑{d}[n+1, A000010(#)*A062319((n+1)/#)]`
-/

namespace A344224.P938351998722366507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A062319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344224.P938351998722366507

noncomputable section

/-- A344224: a(n) = Sum_{k=1..n} tau(gcd(k,n)^gcd(k,n)), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344224.P938351998722366507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344224 (n : ℕ) : ℤ :=
  A344224.P938351998722366507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344484.P17175931869047417338

`∑{d}[n+1, ((n+1)/#)^A000010(#)]`
-/

namespace A344484.P17175931869047417338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A000010 d : ℤ)

end

end A344484.P17175931869047417338

noncomputable section

/-- A344484: a(n) = Sum_{d|n} d^phi(n/d).

Offset 1, canonical program `A344484.P17175931869047417338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A344484 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344484.P17175931869047417338.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A344484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345891.P1680838059371173555

`n+1+n*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345891.P1680838059371173555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n : ℤ) * A000010 (n + 1)

end

end A345891.P1680838059371173555

noncomputable section

/-- A345891: a(n) = n + (n - 1) * phi(n).

Offset 1, canonical program `A345891.P1680838059371173555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345891 (n : ℕ) : ℤ :=
  A345891.P1680838059371173555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345892.P16235346904455731503

`n+1+n*(n+1-A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345892.P16235346904455731503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n : ℤ) * ((n + 1 : ℤ) - A000010 (n + 1))

end

end A345892.P16235346904455731503

noncomputable section

/-- A345892: a(n) = n + (n - 1) * (n - phi(n)).

Offset 1, canonical program `A345892.P16235346904455731503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345892 (n : ℕ) : ℤ :=
  A345892.P16235346904455731503.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345893.P9142068273855579266

`∑{d}[n+1, (n+1)^A000010(#)]`
-/

namespace A345893.P9142068273855579266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A000010 d : ℤ)

end

end A345893.P9142068273855579266

noncomputable section

/-- A345893: a(n) = Sum_{d|n} n^phi(d).

Offset 1, canonical program `A345893.P9142068273855579266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345893.P9142068273855579266.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347935.P14454853274330969859

`lt[n, A294889(n+1)]+1`
-/

namespace A347935.P14454853274330969859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347935.P14454853274330969859

noncomputable section

/-- A347935: Numbers k such that A187795(k) > 2*k.

Offset 1, canonical program `A347935.P14454853274330969859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A347935 (n : ℕ) : ℤ :=
  (A347935.P14454853274330969859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A347935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348011.P1343026742483923121

`A000010((n+1)²)*∑{d}[n+1, 2^A001221(#)/#]`
-/

namespace A348011.P1343026742483923121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A001221 d : ℤ) / (d : ℚ))

end

end A348011.P1343026742483923121

noncomputable section

/-- A348011: a(n) = phi(n^2) * Sum_{d|n} 2^omega(d) / d.

Offset 1, canonical program `A348011.P1343026742483923121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348011.P1343026742483923121.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349306.P17180493539953707188

`lt[(A000010(n+1)^3)%(n+1)², 1]+1`
-/

namespace A349306.P17180493539953707188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) ^ 3) ((n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349306.P17180493539953707188

noncomputable section

/-- A349306: Numbers k that divide A092694(k).

Offset 1, canonical program `A349306.P17180493539953707188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349306 (n : ℕ) : ℤ :=
  (A349306.P17180493539953707188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349679.P14975392500775805578

`A000010(n+1)+A067392(n+1)`
-/

namespace A349679.P14975392500775805578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A067392 (n + 1)

end

end A349679.P14975392500775805578

noncomputable section

/-- A349679: a(n) = n*(n+1)/2 - (n-2)*phi(n)/2 for n >= 2, with a(1)=1.

Offset 1, canonical program `A349679.P14975392500775805578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349679 (n : ℕ) : ℤ :=
  A349679.P14975392500775805578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353768.P17327586202766964254

`A000010(n+1)%4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353768.P17327586202766964254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 4

end

end A353768.P17327586202766964254

noncomputable section

/-- A353768: a(n) = phi(n) mod 4; Euler totient function reduced modulo 4.

Offset 1, canonical program `A353768.P17327586202766964254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353768 (n : ℕ) : ℤ :=
  A353768.P17327586202766964254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353768.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354099.P1471750204109004553

`A007949(A000010(n+1))`
-/

namespace A354099.P1471750204109004553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A000010 (n + 1)).toNat

end

end A354099.P1471750204109004553

noncomputable section

/-- A354099: The 3-adic valuation of Euler totient function phi.

Offset 1, canonical program `A354099.P1471750204109004553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354099 (n : ℕ) : ℤ :=
  A354099.P1471750204109004553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356248.P4382023687688512763

`A289813(n)+1`
-/

namespace A356248.P4382023687688512763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + 1

end

end A356248.P4382023687688512763

noncomputable section

/-- A356248: Image of 1 under repeated application of the map k -> (2k-1,2k,2k-1).

Offset 0, canonical program `A356248.P4382023687688512763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356248 (n : ℕ) : ℤ :=
  A356248.P4382023687688512763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357460.P2237439147357638215

`eq[A080226(n+1), A341620(n+1)]+1`
-/

namespace A357460.P2237439147357638215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357460.P2237439147357638215

noncomputable section

/-- A357460: Numbers whose number of deficient divisors is equal to their number of nondeficient divisors.

Offset 1, canonical program `A357460.P2237439147357638215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A357460 (n : ℕ) : ℤ :=
  (A357460.P2237439147357638215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A357460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358039.P2500782259090983351

`A000010(A004709(n+1))`
-/

namespace A358039.P2500782259090983351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004709 (n + 1)).toNat

end

end A358039.P2500782259090983351

noncomputable section

/-- A358039: a(n) is the Euler totient function phi applied to the n-th cubefree number.

Offset 1, canonical program `A358039.P2500782259090983351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358039 (n : ℕ) : ℤ :=
  A358039.P2500782259090983351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358061.P11370879182037350058

`A000010(n+1)%A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358061.P11370879182037350058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000005 (n + 1))

end

end A358061.P11370879182037350058

noncomputable section

/-- A358061: a(n) = phi(n) mod tau(n).

Offset 1, canonical program `A358061.P11370879182037350058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358061 (n : ℕ) : ℤ :=
  A358061.P11370879182037350058.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358714.P18170188776639681660

`A000010(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358714.P18170188776639681660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 3

end

end A358714.P18170188776639681660

noncomputable section

/-- A358714: a(n) = phi(n)^3.

Offset 1, canonical program `A358714.P18170188776639681660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358714 (n : ℕ) : ℤ :=
  A358714.P18170188776639681660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358978.P4910650545126068101

`eq[1, gcd(n, A007895(n))]`
-/

namespace A358978.P4910650545126068101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007895 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358978.P4910650545126068101

noncomputable section

/-- A358978: Numbers that are coprime to the number of terms in their Zeckendorf representation (A007895).

Offset 1, canonical program `A358978.P4910650545126068101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. -/
def A358978 (n : ℕ) : ℤ :=
  (A358978.P4910650545126068101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. -/
def A358978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359101.P1485161176348405782

`A000010(5*(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359101.P1485161176348405782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (5 * (n + 1)) : ℚ) / 4

end

end A359101.P1485161176348405782

noncomputable section

/-- A359101: a(n) = phi(5 * n)/4.

Offset 1, canonical program `A359101.P1485161176348405782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359101 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359101.P1485161176348405782.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359102.P16470667107721400162

`A000010(7*(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359102.P16470667107721400162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (7 * (n + 1)) : ℚ) / 6

end

end A359102.P16470667107721400162

noncomputable section

/-- A359102: a(n) = phi(7 * n)/6.

Offset 1, canonical program `A359102.P16470667107721400162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359102.P16470667107721400162.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359371.P15865394443635031041

`lt[0, A359370(n+1)]+1`
-/

namespace A359371.P15865394443635031041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359371.P15865394443635031041

noncomputable section

/-- A359371: Nonmultiples of 4 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359371.P15865394443635031041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371 (n : ℕ) : ℤ :=
  (A359371.P15865394443635031041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359429.P17076319737236321028

`A212793(n+1)-A008966(n+1)`
-/

namespace A359429.P17076319737236321028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) - A008966 (n + 1)

end

end A359429.P17076319737236321028

noncomputable section

/-- A359429: a(n) = 1 if n is cubefree, but not squarefree, otherwise 0.

Offset 1, canonical program `A359429.P17076319737236321028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359429 (n : ℕ) : ℤ :=
  A359429.P17076319737236321028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360525.P13636672009762808303

`lt[2*n+3, A360522(n+1)]+1`
-/

namespace A360525.P13636672009762808303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360525.P13636672009762808303

noncomputable section

/-- A360525: Numbers k such that A360522(k) > 2*k.

Offset 1, canonical program `A360525.P13636672009762808303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525 (n : ℕ) : ℤ :=
  (A360525.P13636672009762808303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360639.P11777009454422486410

`∩[A175522(n+1)-2, A175522(n+1)]`
-/

namespace A360639.P11777009454422486410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360639.P11777009454422486410

noncomputable section

/-- A360639: Numbers k such that k and k+2 are both A000120-perfect numbers (A175522).

Offset 1, canonical program `A360639.P11777009454422486410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639 (n : ℕ) : ℤ :=
  (A360639.P11777009454422486410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361148.P11789135483042854749

`A000010(n+1)^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361148.P11789135483042854749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 4

end

end A361148.P11789135483042854749

noncomputable section

/-- A361148: a(n) = phi(n)^4.

Offset 1, canonical program `A361148.P11789135483042854749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361148 (n : ℕ) : ℤ :=
  A361148.P11789135483042854749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362296.P9810890298712702943

`A000010(gcd(p?[2*n+1]+2, p?[2*n+5]))`
-/

namespace A362296.P9810890298712702943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)))

end

end A362296.P9810890298712702943

noncomputable section

/-- A362296: Greatest common divisor of composite numbers between the n-th and (n+1)st primes.

Offset 2, canonical program `A362296.P9810890298712702943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9600 terms. -/
def A362296 (n : ℕ) : ℤ :=
  A362296.P9810890298712702943.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9600 terms. -/
def A362296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362334.P13106116435762041529

`A000010(n+1)+A000010(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362334.P13106116435762041529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000010 (n + 3)

end

end A362334.P13106116435762041529

noncomputable section

/-- A362334: a(n) = A000010(n) + A000010(n+2), where A000010 is the Euler phi-function.

Offset 1, canonical program `A362334.P13106116435762041529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362334 (n : ℕ) : ℤ :=
  A362334.P13106116435762041529.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363097.P17271158366728405100

`n+A000010(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363097.P17271158366728405100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) + A000010 (a (n - 1)).toNat

end

end A363097.P17271158366728405100

noncomputable section

/-- A363097: a(0) = 1, a(n) = n + phi(a(n-1)), where phi is Euler totient function.

Offset 0, canonical program `A363097.P17271158366728405100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363097 (n : ℕ) : ℤ :=
  A363097.P17271158366728405100.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363258.P12380158314372331947

`A363903(Δ[n²])`
-/

namespace A363258.P12380158314372331947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363258.P12380158314372331947

noncomputable section

/-- A363258: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(4*k-3)).

Offset 1, canonical program `A363258.P12380158314372331947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258 (n : ℕ) : ℤ :=
  A363258.P12380158314372331947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363700.P260169160626922395

`A000010(2*A000040(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363700.P260169160626922395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A000040 (n + 1) + 1).toNat

end

end A363700.P260169160626922395

noncomputable section

/-- A363700: a(n) = phi(2*prime(n)+1).

Offset 1, canonical program `A363700.P260169160626922395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363700 (n : ℕ) : ℤ :=
  A363700.P260169160626922395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364020.P9511425186973274188

`∑{d}[n+1, A000010(#)*A364044((n+1)/#)]`
-/

namespace A364020.P9511425186973274188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364020.P9511425186973274188

noncomputable section

/-- A364020: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364020.P9511425186973274188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020 (n : ℕ) : ℤ :=
  A364020.P9511425186973274188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364021.P12955701881080745028

`∑{d}[n+1, A000010(#)*A364045((n+1)/#)]`
-/

namespace A364021.P12955701881080745028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364021.P12955701881080745028

noncomputable section

/-- A364021: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364021.P12955701881080745028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021 (n : ℕ) : ℤ :=
  A364021.P12955701881080745028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364022.P2819897864541114288

`∑{d}[n+1, A000010(#)*A364046((n+1)/#)]`
-/

namespace A364022.P2819897864541114288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364022.P2819897864541114288

noncomputable section

/-- A364022: Expansion of Sum_{k>0} k * x^(4*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364022.P2819897864541114288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364022 (n : ℕ) : ℤ :=
  A364022.P2819897864541114288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364210.P17643407421165452863

`∑{d}[n+1, 3^((n+1)/#-1)*A000010(3*#)/(2*(n+1))]`
-/

namespace A364210.P17643407421165452863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) - 1 : ℝ) * (A000010 (3 * d) : ℝ) / (2 * (n + 1) : ℝ)

end

end A364210.P17643407421165452863

noncomputable section

/-- A364210: a(n) = (1/(2*n)) * Sum_{d|n} 3^(n/d-1) * phi(3*d).

Offset 1, canonical program `A364210.P17643407421165452863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364210.P17643407421165452863.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364211.P15389645717758358226

`∑{d}[n+1, 5^((n+1)/#-1)*A000010(5*#)/(4*(n+1))]`
-/

namespace A364211.P15389645717758358226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (5 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) - 1 : ℝ) * (A000010 (5 * d) : ℝ) / (4 * (n + 1) : ℝ)

end

end A364211.P15389645717758358226

noncomputable section

/-- A364211: a(n) = (1/(4*n)) * Sum_{d|n} 5^(n/d-1) * phi(5*d).

Offset 1, canonical program `A364211.P15389645717758358226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364211 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364211.P15389645717758358226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364212.P1613814659871976731

`∑{d}[n+1, 7^((n+1)/#-1)*A000010(7*#)/(6*(n+1))]`
-/

namespace A364212.P1613814659871976731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (7 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) - 1 : ℝ) * (A000010 (7 * d) : ℝ) / (6 * (n + 1) : ℝ)

end

end A364212.P1613814659871976731

noncomputable section

/-- A364212: a(n) = (1/(6*n)) * Sum_{d|n} 7^(n/d-1) * phi(7*d).

Offset 1, canonical program `A364212.P1613814659871976731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364212 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364212.P1613814659871976731.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364932.P6679838922947751694

`A000010(A001615(n+1))`
-/

namespace A364932.P6679838922947751694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001615 (n + 1)).toNat

end

end A364932.P6679838922947751694

noncomputable section

/-- A364932: a(n) = phi(psi(n)).

Offset 1, canonical program `A364932.P6679838922947751694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364932 (n : ℕ) : ℤ :=
  A364932.P6679838922947751694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366579.P6102170090150103030

`A000010(3^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366579.P6102170090150103030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 ^ n + 1)

end

end A366579.P6102170090150103030

noncomputable section

/-- A366579: a(n) = phi(3^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366579.P6102170090150103030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366579 (n : ℕ) : ℤ :=
  A366579.P6102170090150103030.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366579.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366608.P14428264045241228728

`A000010(4^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366608.P14428264045241228728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 ^ n + 1)

end

end A366608.P14428264045241228728

noncomputable section

/-- A366608: a(n) = phi(4^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366608.P14428264045241228728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366608 (n : ℕ) : ℤ :=
  A366608.P14428264045241228728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366618.P1242546695547909899

`A000010(5^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366618.P1242546695547909899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (5 ^ n + 1)

end

end A366618.P1242546695547909899

noncomputable section

/-- A366618: a(n) = phi(5^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366618.P1242546695547909899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366618 (n : ℕ) : ℤ :=
  A366618.P1242546695547909899.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366623.P10921304423502030396

`A000010(6^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366623.P10921304423502030396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (6 ^ (n + 1) - 1)

end

end A366623.P10921304423502030396

noncomputable section

/-- A366623: a(n) = phi(6^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366623.P10921304423502030396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366623 (n : ℕ) : ℤ :=
  A366623.P10921304423502030396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366630.P7833096479860234076

`A000010(6^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366630.P7833096479860234076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (6 ^ n + 1)

end

end A366630.P7833096479860234076

noncomputable section

/-- A366630: a(n) = phi(6^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366630.P7833096479860234076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366630 (n : ℕ) : ℤ :=
  A366630.P7833096479860234076.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366635.P16262625894692020405

`A000010(7^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366635.P16262625894692020405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (7 ^ (n + 1) - 1)

end

end A366635.P16262625894692020405

noncomputable section

/-- A366635: a(n) = phi(7^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366635.P16262625894692020405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366635 (n : ℕ) : ℤ :=
  A366635.P16262625894692020405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366639.P15705943546318512133

`A000010(7^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366639.P15705943546318512133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (7 ^ n + 1)

end

end A366639.P15705943546318512133

noncomputable section

/-- A366639: a(n) = phi(7^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366639.P15705943546318512133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366639 (n : ℕ) : ℤ :=
  A366639.P15705943546318512133.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366654.P17838431318588604415

`A000010(8^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366654.P17838431318588604415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (8 ^ (n + 1) - 1)

end

end A366654.P17838431318588604415

noncomputable section

/-- A366654: a(n) = phi(8^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366654.P17838431318588604415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366654 (n : ℕ) : ℤ :=
  A366654.P17838431318588604415.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366658.P7749406703637050937

`A000010(8^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366658.P7749406703637050937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (8 ^ n + 1)

end

end A366658.P7749406703637050937

noncomputable section

/-- A366658: a(n) = phi(8^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366658.P7749406703637050937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366658 (n : ℕ) : ℤ :=
  A366658.P7749406703637050937.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366663.P7873663613885470208

`A000010(9^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366663.P7873663613885470208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (9 ^ (n + 1) - 1)

end

end A366663.P7873663613885470208

noncomputable section

/-- A366663: a(n) = phi(9^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366663.P7873663613885470208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366663 (n : ℕ) : ℤ :=
  A366663.P7873663613885470208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366667.P5330459095434243766

`A000010(9^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366667.P5330459095434243766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (9 ^ n + 1)

end

end A366667.P5330459095434243766

noncomputable section

/-- A366667: a(n) = phi(9^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366667.P5330459095434243766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366667 (n : ℕ) : ℤ :=
  A366667.P5330459095434243766.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366669.P17181409498340462994

`A000010(10^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366669.P17181409498340462994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (10 ^ n + 1)

end

end A366669.P17181409498340462994

noncomputable section

/-- A366669: a(n) = phi(10^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366669.P17181409498340462994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366669 (n : ℕ) : ℤ :=
  A366669.P17181409498340462994.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366690.P16892203957467446152

`A000010(11^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366690.P16892203957467446152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (11 ^ n + 1)

end

end A366690.P16892203957467446152

noncomputable section

/-- A366690: a(n) = phi(11^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366690.P16892203957467446152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366690 (n : ℕ) : ℤ :=
  A366690.P16892203957467446152.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366716.P13975333095110016672

`A000010(12^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366716.P13975333095110016672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (12 ^ n + 1)

end

end A366716.P13975333095110016672

noncomputable section

/-- A366716: a(n) = phi(12^n+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366716.P13975333095110016672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366716 (n : ℕ) : ℤ :=
  A366716.P13975333095110016672.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366759.P17009330357194776424

`A000010((n+2)!-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366759.P17009330357194776424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (n + 2) - 1)

end

end A366759.P17009330357194776424

noncomputable section

/-- A366759: a(n) = phi(n!-1), where phi is Euler's totient function (A000010).

Offset 2, canonical program `A366759.P17009330357194776424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366759 (n : ℕ) : ℤ :=
  A366759.P17009330357194776424.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366760.P17451491675430043369

`A000010(n!+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366760.P17451491675430043369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial n + 1)

end

end A366760.P17451491675430043369

noncomputable section

/-- A366760: a(n) = phi(n!+1), where phi is Euler's totient function (A000010).

Offset 0, canonical program `A366760.P17451491675430043369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366760 (n : ℕ) : ℤ :=
  A366760.P17451491675430043369.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366773.P9585367470475040452

`A000010(A001045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366773.P9585367470475040452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001045 (n + 1)).toNat

end

end A366773.P9585367470475040452

noncomputable section

/-- A366773: a(n) = A000010(A001045(n)).

Offset 1, canonical program `A366773.P9585367470475040452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366773 (n : ℕ) : ℤ :=
  A366773.P9585367470475040452.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366810.P13408643324010375878

`A000010(A057588(n+1))`
-/

namespace A366810.P13408643324010375878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057588 (n + 1)).toNat

end

end A366810.P13408643324010375878

noncomputable section

/-- A366810: a(n) = phi(prime(n)#-1) where phi is the Euler totient function and p# is the product of all the primes from 2 to p inclusive.

Offset 1, canonical program `A366810.P13408643324010375878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366810 (n : ℕ) : ℤ :=
  A366810.P13408643324010375878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366821.P12837437574763757681

`A000010((n+2)^(n+2)-1)`
-/

namespace A366821.P12837437574763757681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2) ^ (n + 2) - 1)

end

end A366821.P12837437574763757681

noncomputable section

/-- A366821: a(n) is phi(n^n-1) where phi is the Euler totient function.

Offset 2, canonical program `A366821.P12837437574763757681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366821 (n : ℕ) : ℤ :=
  A366821.P12837437574763757681.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366822.P9287568416294420465

`A000010(n^n+1)`
-/

namespace A366822.P9287568416294420465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n ^ n + 1)

end

end A366822.P9287568416294420465

noncomputable section

/-- A366822: a(n) is phi(n^n + 1) where phi is the Euler totient function.

Offset 0, canonical program `A366822.P9287568416294420465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366822 (n : ℕ) : ℤ :=
  A366822.P9287568416294420465.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366833.P13396481099192282929

`Δ[A024620(n+1)]`
-/

namespace A366833.P13396481099192282929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P13396481099192282929

noncomputable section

/-- A366833: Number of times n appears in A362965 (number of primes <= the n-th prime power).

Offset 1, canonical program `A366833.P13396481099192282929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833 (n : ℕ) : ℤ :=
  A366833.P13396481099192282929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366955.P14364530625403978192

`A000010(A007908(n+1))`
-/

namespace A366955.P14364530625403978192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007908 (n + 1)).toNat

end

end A366955.P14364530625403978192

noncomputable section

/-- A366955: a(n) is the Euler totient function of the concatenation of 1,2,3,...,n.

Offset 1, canonical program `A366955.P14364530625403978192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366955 (n : ℕ) : ℤ :=
  A366955.P14364530625403978192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367132.P13460630829077045525

`A000010(A000058(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367132.P13460630829077045525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000058 n).toNat

end

end A367132.P13460630829077045525

noncomputable section

/-- A367132: a(n) = phi(A000058(n)) where phi is the Euler totient function and A000058 is Sylvester's sequence.

Offset 0, canonical program `A367132.P13460630829077045525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367132 (n : ℕ) : ℤ :=
  A367132.P13460630829077045525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368610.P12539630653234803959

`A368616(n+1)+A368611(n+1)`
-/

namespace A368610.P12539630653234803959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) + A368611 (n + 1)

end

end A368610.P12539630653234803959

noncomputable section

/-- A368610: a(n) = Sum_{k=1..n} pi(k) * ceiling(n/k).

Offset 1, canonical program `A368610.P12539630653234803959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368610 (n : ℕ) : ℤ :=
  A368610.P12539630653234803959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368642.P2583294438814666232

`A013928(n+1)+A008966(n+1)+A064608(n+1)-A034444(n+1)`
-/

namespace A368642.P2583294438814666232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) + A008966 (n + 1) + A064608 (n + 1) - A034444 (n + 1)

end

end A368642.P2583294438814666232

noncomputable section

/-- A368642: a(n) = Sum_{k=1..n} mu(k)^2 * ceiling(n/k), where mu is the Möbius function (A008683).

Offset 1, canonical program `A368642.P2583294438814666232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, A034444, A064608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368642 (n : ℕ) : ℤ :=
  A368642.P2583294438814666232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, A034444, A064608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368738.P15555068762873214386

`∑{d}[n+1, A000010(#)*A038502((n+1)/#)]`
-/

namespace A368738.P15555068762873214386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368738.P15555068762873214386

noncomputable section

/-- A368738: a(n) = Sum_{k = 1..n} gcd(3*k + 1, n).

Offset 1, canonical program `A368738.P15555068762873214386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368738 (n : ℕ) : ℤ :=
  A368738.P15555068762873214386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368741.P3043197867533134676

`∑{d}[n+1, A000010(#)*A132739((n+1)/#)]`
-/

namespace A368741.P3043197867533134676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A132739 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368741.P3043197867533134676

noncomputable section

/-- A368741: a(n) = Sum_{k = 1..n} gcd(5*k + 1, n).

Offset 1, canonical program `A368741.P3043197867533134676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368741 (n : ℕ) : ℤ :=
  A368741.P3043197867533134676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371176.P2878950055265495219

`2*a(A005206(n+1)-1)-A003849(n+1)*2^A007895(n)` with `a(0)=1`
-/

namespace A371176.P2878950055265495219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A005206 (n + 1) - 1).toNat - (A003849 (n + 1) : ℚ) * (2 : ℚ) ^ (A007895 n : ℤ)

end

end A371176.P2878950055265495219

noncomputable section

/-- A371176: Numbers k such that A000120(k) <= A001511(k).

Offset 1, canonical program `A371176.P2878950055265495219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371176.P2878950055265495219.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371238.P16159629807628423493

`A000010(A048701(n+1))`
-/

namespace A371238.P16159629807628423493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048701 (n + 1)).toNat

end

end A371238.P16159629807628423493

noncomputable section

/-- A371238: Euler totient function applied to the binary palindromes of even length.

Offset 1, canonical program `A371238.P16159629807628423493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371238 (n : ℕ) : ℤ :=
  A371238.P16159629807628423493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371241.P3336735415354653583

`A000010(A032924(n+1))`
-/

namespace A371241.P3336735415354653583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A032924 (n + 1)).toNat

end

end A371241.P3336735415354653583

noncomputable section

/-- A371241: Euler totient function applied to the zeroless numbers in base 3 (A032924).

Offset 1, canonical program `A371241.P3336735415354653583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371241 (n : ℕ) : ℤ :=
  A371241.P3336735415354653583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371256.P3370008578592475256

`A006068(A060585(n))`
-/

namespace A371256.P3370008578592475256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A060585 n).toNat

end

end A371256.P3370008578592475256

noncomputable section

/-- A371256: The run lengths transform of the ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371256.P3370008578592475256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256 (n : ℕ) : ℤ :=
  A371256.P3370008578592475256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372671.P17546061291256239223

`A000010(6*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372671.P17546061291256239223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (6 * (n + 1)) : ℚ) / 2

end

end A372671.P17546061291256239223

noncomputable section

/-- A372671: a(n) = phi(6 * n)/2.

Offset 1, canonical program `A372671.P17546061291256239223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372671.P17546061291256239223.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372672.P14872725161075484027

`A000010(10*(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372672.P14872725161075484027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (10 * (n + 1)) : ℚ) / 4

end

end A372672.P14872725161075484027

noncomputable section

/-- A372672: a(n) = phi(10 * n)/4.

Offset 1, canonical program `A372672.P14872725161075484027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372672.P14872725161075484027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372673.P1110409581010015708

`A000010((row(n)-col(n)+1)*(col(n)+1))/A000010(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372673.P1110409581010015708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)).toNat : ℚ) / (A000010 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℚ)

end

end A372673.P1110409581010015708

noncomputable section

/-- A372673: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = phi(k*n) / phi(k).

Offset 1, canonical program `A372673.P1110409581010015708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372673.P1110409581010015708.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372676.P15790127988286486849

`A000010(11*(n+1))/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372676.P15790127988286486849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (11 * (n + 1)) : ℚ) / 10

end

end A372676.P15790127988286486849

noncomputable section

/-- A372676: a(n) = phi(11 * n)/10.

Offset 1, canonical program `A372676.P15790127988286486849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372676.P15790127988286486849.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372677.P11425686602575924852

`A000010(13*(n+1))/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372677.P11425686602575924852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (13 * (n + 1)) : ℚ) / 12

end

end A372677.P11425686602575924852

noncomputable section

/-- A372677: a(n) = phi(13 * n)/12.

Offset 1, canonical program `A372677.P11425686602575924852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372677.P11425686602575924852.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372678.P11541192377231951914

`A000010(14*(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372678.P11541192377231951914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (14 * (n + 1)) : ℚ) / 6

end

end A372678.P11541192377231951914

noncomputable section

/-- A372678: a(n) = phi(14 * n)/6.

Offset 1, canonical program `A372678.P11541192377231951914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372678.P11541192377231951914.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372679.P3371014466593383256

`A000010(15*(n+1))/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372679.P3371014466593383256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (15 * (n + 1)) : ℚ) / 8

end

end A372679.P3371014466593383256

noncomputable section

/-- A372679: a(n) = phi(15 * n)/8.

Offset 1, canonical program `A372679.P3371014466593383256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372679.P3371014466593383256.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372681.P11737842190484124597

`A000010(17*(n+1))/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372681.P11737842190484124597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (17 * (n + 1)) : ℚ) / 16

end

end A372681.P11737842190484124597

noncomputable section

/-- A372681: a(n) = phi(17 * n)/16.

Offset 1, canonical program `A372681.P11737842190484124597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372681 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372681.P11737842190484124597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372885.P14839180436812864898

`A000040(A372886(n+1))`
-/

namespace A372885.P14839180436812864898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372886 (n + 1)).toNat

end

end A372885.P14839180436812864898

noncomputable section

/-- A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372885.P14839180436812864898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885 (n : ℕ) : ℤ :=
  A372885.P14839180436812864898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373319.P7142569383289786764

`(n+1)*∏{p}[n+1, #]/A126864((n+1)*∏{p}[n+1, #])`
-/

namespace A373319.P7142569383289786764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A126864 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)) : ℚ)

end

end A373319.P7142569383289786764

noncomputable section

/-- A373319: Denominator of the asymptotic density of numbers that are unitarily divided by n.

Offset 1, canonical program `A373319.P7142569383289786764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A373319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373319.P7142569383289786764.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A373319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374352.P10560180475903247223

`∑[A061884(n+1)]`
-/

namespace A374352.P10560180475903247223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374352.P10560180475903247223

noncomputable section

/-- A374352: a(n) = [n>1] * a(n-1) + Sum_{d|n} phi(lcm(d,n/d)) where [] is an Iverson bracket.

Offset 1, canonical program `A374352.P10560180475903247223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374352 (n : ℕ) : ℤ :=
  A374352.P10560180475903247223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375337.P16252604061458685989

`C(A000040(n+1), A000010(A000040(n+1)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375337.P16252604061458685989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A000010 (A000040 (n + 1) + 1).toNat).toNat

end

end A375337.P16252604061458685989

noncomputable section

/-- A375337: a(n) = binomial(prime(n), phi(prime(n) + 1)).

Offset 1, canonical program `A375337.P16252604061458685989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375337 (n : ℕ) : ℤ :=
  (A375337.P16252604061458685989.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376482.P11893054064687087602

`A000010(2^(2*(n+1))+2^(n+1)+1)/(6*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376482.P11893054064687087602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 ^ (2 * (n + 1)) + 2 ^ (n + 1) + 1) : ℚ) / (6 * (n + 1) : ℚ)

end

end A376482.P11893054064687087602

noncomputable section

/-- A376482: a(n) = phi( 2^(2*n) + 2^n + 1 ) / (6*n), where phi() is Euler's totient function (A000010).

Offset 1, canonical program `A376482.P11893054064687087602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376482.P11893054064687087602.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377121.P11187764455851854479

`record[(n+1)/A090387(A000010(n+1))]`
-/

namespace A377121.P11187764455851854479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090387 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377121.P11187764455851854479

noncomputable section

/-- A377121: Numbers whose totient is refactorable.

Offset 1, canonical program `A377121.P11187764455851854479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377121.P11187764455851854479.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377674.P170343768578475093

`A000010((n+1)^(n+1)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377674.P170343768578475093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ (n + 1) + (n + 1))

end

end A377674.P170343768578475093

noncomputable section

/-- A377674: a(n) = phi(n^n + n) where phi is the Euler totient function.

Offset 1, canonical program `A377674.P170343768578475093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377674 (n : ℕ) : ℤ :=
  A377674.P170343768578475093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377678.P8224559732058865124

`A000010((n+2)^(n+2)-(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377678.P8224559732058865124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2) ^ (n + 2) - (n + 2))

end

end A377678.P8224559732058865124

noncomputable section

/-- A377678: a(n) = phi(n^n - n) where phi is the Euler totient function.

Offset 2, canonical program `A377678.P8224559732058865124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377678 (n : ℕ) : ℤ :=
  A377678.P8224559732058865124.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378299.P15957382925163367627

`A006068(A030101(n))`
-/

namespace A378299.P15957382925163367627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030101 n).toNat

end

end A378299.P15957382925163367627

noncomputable section

/-- A378299: Read the binary representation of n from the most to least significant bit then perform a cumulative XOR and store by reading from least to most significant bit.

Offset 0, canonical program `A378299.P15957382925163367627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378299 (n : ℕ) : ℤ :=
  A378299.P15957382925163367627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378508.P9814380838425537592

`eq[1, char[A000010(A000010(n+1))]]`
-/

namespace A378508.P9814380838425537592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378508.P9814380838425537592

noncomputable section

/-- A378508: Values taken by phi(phi(m)) (A010554).

Offset 1, canonical program `A378508.P9814380838425537592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A378508 (n : ℕ) : ℤ :=
  (A378508.P9814380838425537592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A378508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378514.P5051623705849836862

`ceil((2^(n+1)-1-A000010(2^(n+1)-1))/2)`
-/

namespace A378514.P5051623705849836862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ (n + 1) : ℤ) - 1 - A000010 (2 ^ (n + 1) - 1) : ℚ) / 2⌉

end

end A378514.P5051623705849836862

noncomputable section

/-- A378514: Number of partitions of 2^n-1 into two summands >= 0 having a common divisor > 1.

Offset 1, canonical program `A378514.P5051623705849836862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378514 (n : ℕ) : ℤ :=
  A378514.P5051623705849836862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378986.P11070086807176810028

`2*A000010(2*(n+1))-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378986.P11070086807176810028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A378986.P11070086807176810028

noncomputable section

/-- A378986: a(n) = 2*phi(2*n) - 2*n, where phi is Euler totient function.

Offset 1, canonical program `A378986.P11070086807176810028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378986 (n : ℕ) : ℤ :=
  A378986.P11070086807176810028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380160.P4546654920462723161

`A000010(A057521(n+1))`
-/

namespace A380160.P4546654920462723161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057521 (n + 1)).toNat

end

end A380160.P4546654920462723161

noncomputable section

/-- A380160: a(n) is the value of the Euler totient function when applied to the powerful part of n.

Offset 1, canonical program `A380160.P4546654920462723161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380160 (n : ℕ) : ℤ :=
  A380160.P4546654920462723161.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380161.P11294645984776540590

`A000010(A055231(n+1))`
-/

namespace A380161.P11294645984776540590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat

end

end A380161.P11294645984776540590

noncomputable section

/-- A380161: a(n) is the value of the Euler totient function when applied to the powerfree part of n.

Offset 1, canonical program `A380161.P11294645984776540590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380161 (n : ℕ) : ℤ :=
  A380161.P11294645984776540590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380162.P3923099972505538438

`A000010(A008833(n+1))`
-/

namespace A380162.P3923099972505538438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008833 (n + 1)).toNat

end

end A380162.P3923099972505538438

noncomputable section

/-- A380162: a(n) is the value of the Euler totient function when applied to the largest square dividing n.

Offset 1, canonical program `A380162.P3923099972505538438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380162 (n : ℕ) : ℤ :=
  A380162.P3923099972505538438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380163.P2401699286330584637

`A000010(A007913(n+1))`
-/

namespace A380163.P2401699286330584637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007913 (n + 1)).toNat

end

end A380163.P2401699286330584637

noncomputable section

/-- A380163: a(n) is the value of the Euler totient function when applied to the squarefree part of n.

Offset 1, canonical program `A380163.P2401699286330584637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380163 (n : ℕ) : ℤ :=
  A380163.P2401699286330584637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380500.P102637748916631371

`A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380500.P102637748916631371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat ^ SequenceMachineLib.triCol n).toNat).toNat

end

end A380500.P102637748916631371

noncomputable section

/-- A380500: Table T(n,k) = phi(phi(prime(n)^k)), n >= 1, k >= 0, read by upwards antidiagonals, where phi = A000010.

Offset 1, canonical program `A380500.P102637748916631371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380500 (n : ℕ) : ℤ :=
  A380500.P102637748916631371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382999.P5519289136988691999

`∑{d}[n+1, A000010(#)*A122803((n+1)/#-1)]`
-/

namespace A382999.P5519289136988691999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A122803 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A382999.P5519289136988691999

noncomputable section

/-- A382999: a(n) = Sum_{d|n} phi(n/d) * (-2)^(d-1).

Offset 1, canonical program `A382999.P5519289136988691999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A382999 (n : ℕ) : ℤ :=
  A382999.P5519289136988691999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A382999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383000.P9620831116770953657

`∑{d}[n+1, A000010(#)*A352779((n+1)/#-1)]`
-/

namespace A383000.P9620831116770953657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A352779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A383000.P9620831116770953657

noncomputable section

/-- A383000: a(n) = Sum_{d|n} phi(n/d) * (-3)^(d-1).

Offset 1, canonical program `A383000.P9620831116770953657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A383000 (n : ℕ) : ℤ :=
  A383000.P9620831116770953657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A383000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384042.P14644639506772566122

`A000010(A065331(n+1))*A065330(n+1)`
-/

namespace A384042.P14644639506772566122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384042.P14644639506772566122

noncomputable section

/-- A384042: The number of integers k from 1 to n such that gcd(n,k) is a 5-rough number (A007310).

Offset 1, canonical program `A384042.P14644639506772566122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384042 (n : ℕ) : ℤ :=
  A384042.P14644639506772566122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384050.P7808103291810137926

`A000010(A055231(n+1))*A057521(n+1)`
-/

namespace A384050.P7808103291810137926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat * A057521 (n + 1)

end

end A384050.P7808103291810137926

noncomputable section

/-- A384050: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a powerful number.

Offset 1, canonical program `A384050.P7808103291810137926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384050 (n : ℕ) : ℤ :=
  A384050.P7808103291810137926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384422.P13713361955298330699

`∑{e}[n+1, A000010(#)]`
-/

namespace A384422.P13713361955298330699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (Nat.factorization (f1 n) p)

end

end A384422.P13713361955298330699

noncomputable section

/-- A384422: The number of prime powers (not including 1) p^e that divide n such that e is coprime to the p-adic valuation of n.

Offset 1, canonical program `A384422.P13713361955298330699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384422 (n : ℕ) : ℤ :=
  A384422.P13713361955298330699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384655.P11515566326129581330

`∑{d}[n+1, A000010(#)*A051903((n+1)/#)]`
-/

namespace A384655.P11515566326129581330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384655.P11515566326129581330

noncomputable section

/-- A384655: a(n) = Sum_{k=1..n} A051903(gcd(n,k)).

Offset 1, canonical program `A384655.P11515566326129581330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384655 (n : ℕ) : ℤ :=
  A384655.P11515566326129581330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384716.P11863616275653796637

`A000010(A061537(n+1))`
-/

namespace A384716.P11863616275653796637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061537 (n + 1)).toNat

end

end A384716.P11863616275653796637

noncomputable section

/-- A384716: The totient of the product of unitary divisors of n.

Offset 1, canonical program `A384716.P11863616275653796637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384716 (n : ℕ) : ℤ :=
  A384716.P11863616275653796637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384763.P13786111190154472342

`A000010(n+1)^(A034444(n+1)/2)`
-/

namespace A384763.P13786111190154472342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℝ) ^ ((A034444 (n + 1) : ℚ) / 2 : ℝ)

end

end A384763.P13786111190154472342

noncomputable section

/-- A384763: Product of the Euler totients of the unitary divisors of n.

Offset 1, canonical program `A384763.P13786111190154472342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384763.P13786111190154472342.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385113.P9615886296806253472

`A106469(A309307(n+1))-A008966(n+1)`
-/

namespace A385113.P9615886296806253472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A309307 (n + 1)).toNat - A008966 (n + 1)

end

end A385113.P9615886296806253472

noncomputable section

/-- A385113: a(1) = 0, a(n) = 1 + 2*[omega(n) > 1] + [bigomega(n) > omega(n)], Iverson brackets, where omega = A001221 and bigomega = A001222.

Offset 1, canonical program `A385113.P9615886296806253472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113 (n : ℕ) : ℤ :=
  A385113.P9615886296806253472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385133.P8884467150607010099

`∑{d}[n+1, A000010(#)*A381955((n+1)/#)]`
-/

namespace A385133.P8884467150607010099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A381955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385133.P8884467150607010099

noncomputable section

/-- A385133: The number of integers k from 1 to n such that gcd(n, k) has an odd maximum exponent in its prime factorization.

Offset 1, canonical program `A385133.P8884467150607010099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385133 (n : ℕ) : ℤ :=
  A385133.P8884467150607010099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385663.P12077718086945892519

`A007088(A001969(n+1))`
-/

namespace A385663.P12077718086945892519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001969 (n + 1)).toNat

end

end A385663.P12077718086945892519

noncomputable section

/-- A385663: Binary numbers with an even number of 1s.

Offset 1, canonical program `A385663.P12077718086945892519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385663 (n : ℕ) : ℤ :=
  A385663.P12077718086945892519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387944.P5952151805390949890

`n-∑[A106743(n+1)²]`
-/

namespace A387944.P5952151805390949890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387944.P5952151805390949890

noncomputable section

/-- A387944: Number of squarefree composites <= n.

Offset 1, canonical program `A387944.P5952151805390949890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944 (n : ℕ) : ℤ :=
  A387944.P5952151805390949890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390608.P15575497196567576275

`A000010(n+1)*A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390608.P15575497196567576275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001221 (n + 1)

end

end A390608.P15575497196567576275

noncomputable section

/-- A390608: a(n) = phi(n) * omega(n).

Offset 1, canonical program `A390608.P15575497196567576275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390608 (n : ℕ) : ℤ :=
  A390608.P15575497196567576275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390752.P14431979490250258811

`A000010(A019554(n+1))`
-/

namespace A390752.P14431979490250258811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019554 (n + 1)).toNat

end

end A390752.P14431979490250258811

noncomputable section

/-- A390752: The Euler totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A390752.P14431979490250258811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390752 (n : ℕ) : ℤ :=
  A390752.P14431979490250258811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390755.P10814338958508066738

`A000010(A197863(n+1))`
-/

namespace A390755.P10814338958508066738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A197863 (n + 1)).toNat

end

end A390755.P10814338958508066738

noncomputable section

/-- A390755: The Euler totient of the smallest powerful number divisible by n.

Offset 1, canonical program `A390755.P10814338958508066738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390755 (n : ℕ) : ℤ :=
  A390755.P10814338958508066738.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390756.P11425298169468382512

`A000010(A356193(n+1))`
-/

namespace A390756.P11425298169468382512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A356193 (n + 1)).toNat

end

end A390756.P11425298169468382512

noncomputable section

/-- A390756: The Euler totient of the smallest cubefull number divisible by n.

Offset 1, canonical program `A390756.P11425298169468382512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390756 (n : ℕ) : ℤ :=
  A390756.P11425298169468382512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391701.P296484889807869590

`A000010(n+1)*(A000203(n+1)-A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391701.P296484889807869590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (A000203 (n + 1) - A000005 (n + 1))

end

end A391701.P296484889807869590

noncomputable section

/-- A391701: a(n) = phi(n) * (sigma(n) - tau(n)).

Offset 1, canonical program `A391701.P296484889807869590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391701 (n : ℕ) : ℤ :=
  A391701.P296484889807869590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391883.P2614756072055188463

`A000010(n+3)%A048865(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391883.P2614756072055188463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 3)) (A048865 (n + 3))

end

end A391883.P2614756072055188463

noncomputable section

/-- A391883: a(n) = A000010(n) mod A048865(n).

Offset 3, canonical program `A391883.P2614756072055188463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391883 (n : ℕ) : ℤ :=
  A391883.P2614756072055188463.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392236.P3767480464349034148

`eq[A145037(n), A393336(n)]`
-/

namespace A392236.P3767480464349034148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392236.P3767480464349034148

noncomputable section

/-- A392236: Positions of zeros in A309983.

Offset 1, canonical program `A392236.P3767480464349034148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236 (n : ℕ) : ℤ :=
  (A392236.P3767480464349034148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393976.P13235993701100155495

`A000010(n+1)²+A000010(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393976.P13235993701100155495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 + A000010 (n + 1) + 1

end

end A393976.P13235993701100155495

noncomputable section

/-- A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

Offset 1, canonical program `A393976.P13235993701100155495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393976 (n : ℕ) : ℤ :=
  A393976.P13235993701100155495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321150.P15680473520445349144

`p?[A066566(n+1)]`
-/

namespace A321150.P15680473520445349144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321150.P15680473520445349144

noncomputable section

/-- A321150: Primes p such that p minus its digit sum is a square.

Offset 1, canonical program `A321150.P15680473520445349144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A321150 (n : ℕ) : ℤ :=
  A321150.P15680473520445349144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A321150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325470.P15058644850768859444

`A187794(n+1)+A000120(A059268(n))`
-/

namespace A325470.P15058644850768859444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A000120 (A059268 n).toNat

end

end A325470.P15058644850768859444

noncomputable section

/-- A325470: a(n) is the sum of divisors d of n such that d divides sigma(d).

Offset 1, canonical program `A325470.P15058644850768859444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A325470 (n : ℕ) : ℤ :=
  A325470.P15058644850768859444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A325470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333814.P13105421635871502220

`∩[A062753(n+1), A019557(n)]`
-/

namespace A333814.P13105421635871502220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P13105421635871502220

noncomputable section

/-- A333814: Multiples of 12 whose sum of digits is 12.

Offset 1, canonical program `A333814.P13105421635871502220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A333814 (n : ℕ) : ℤ :=
  (A333814.P13105421635871502220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A333814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338242.P14287517740341381952

`-A338241(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338242.P14287517740341381952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (2 * n)

end

end A338242.P14287517740341381952

noncomputable section

/-- A338242: a(n) = -A338241(2*n) for any n >= 0.

Offset 0, canonical program `A338242.P14287517740341381952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338242 (n : ℕ) : ℤ :=
  A338242.P14287517740341381952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338243.P15957865261195193101

`abs(A338241(A004273(n)))`
-/

namespace A338243.P15957865261195193101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A338241 (A004273 n).toNat|

end

end A338243.P15957865261195193101

noncomputable section

/-- A338243: a(0) = 0, a(n) = A338241(2*n-1) for any n > 0.

Offset 0, canonical program `A338243.P15957865261195193101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A338243 (n : ℕ) : ℤ :=
  A338243.P15957865261195193101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A338243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341619.P13364510289438970610

`A063524(A341620(n+1))`
-/

namespace A341619.P13364510289438970610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A341620 (n + 1)).toNat

end

end A341619.P13364510289438970610

noncomputable section

/-- A341619: Characteristic function of primitive nondeficient numbers (A006039): a(n) = 1 if proper multiples of n are all abundant, and proper divisors of n are all deficient, 0 otherwise.

Offset 1, canonical program `A341619.P13364510289438970610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341619 (n : ℕ) : ℤ :=
  A341619.P13364510289438970610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352375.P700649589614720325

`A007618(n+2)-A007618(n+1)`
-/

namespace A352375.P700649589614720325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007618 (n + 2) - A007618 (n + 1)

end

end A352375.P700649589614720325

noncomputable section

/-- A352375: Sum of digits of A007618.

Offset 1, canonical program `A352375.P700649589614720325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352375 (n : ℕ) : ℤ :=
  A352375.P700649589614720325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358089.P6226920074506255654

`Δ[A126706(n+1)]`
-/

namespace A358089.P6226920074506255654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358089.P6226920074506255654

noncomputable section

/-- A358089: First differences of A126706.

Offset 1, canonical program `A358089.P6226920074506255654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358089 (n : ℕ) : ℤ :=
  A358089.P6226920074506255654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358839.P16533912957850485554

`A359370(n+1)-A359372(n+1)`
-/

namespace A358839.P16533912957850485554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1) - A359372 (n + 1)

end

end A358839.P16533912957850485554

noncomputable section

/-- A358839: Dirichlet inverse of A353627, the characteristic function of the squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A358839.P16533912957850485554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839 (n : ℕ) : ℤ :=
  A358839.P16533912957850485554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365783.P2702609335400610260

`A007947(A126706(n+1))`
-/

namespace A365783.P2702609335400610260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A126706 (n + 1)).toNat

end

end A365783.P2702609335400610260

noncomputable section

/-- A365783: a(n) = squarefree kernel of A126706(n).

Offset 1, canonical program `A365783.P2702609335400610260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365783 (n : ℕ) : ℤ :=
  A365783.P2702609335400610260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367455.P9702420708223161966

`filter[A126706(n+1), A097325(#)]`
-/

namespace A367455.P9702420708223161966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367455.P9702420708223161966

noncomputable section

/-- A367455: Numbers not divisible by 6 that are neither squarefree nor prime powers.

Offset 1, canonical program `A367455.P9702420708223161966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A367455 (n : ℕ) : ℤ :=
  A367455.P9702420708223161966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A367455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378480.P8315309591831248702

`filter[A007304(n+1), A294934(#)]`
-/

namespace A378480.P8315309591831248702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A378480.P8315309591831248702

noncomputable section

/-- A378480: Products of 3 distinct prime numbers (or sphenics) that are deficient.

Offset 1, canonical program `A378480.P8315309591831248702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480 (n : ℕ) : ℤ :=
  A378480.P8315309591831248702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380857.P17828759353417711251

`A126706(n+1)²`
-/

namespace A380857.P17828759353417711251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) ^ 2

end

end A380857.P17828759353417711251

noncomputable section

/-- A380857: Squares of numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A380857.P17828759353417711251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857 (n : ℕ) : ℤ :=
  A380857.P17828759353417711251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394619.P12031009564495718433

`A391713(A126706(n+1))`
-/

namespace A394619.P12031009564495718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (A126706 (n + 1)).toNat

end

end A394619.P12031009564495718433

noncomputable section

/-- A394619: Number of divisors d | k such that d is neither squarefree nor squareful (in A332785) and k = A126706(n).

Offset 1, canonical program `A394619.P12031009564495718433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619 (n : ℕ) : ℤ :=
  A394619.P12031009564495718433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385640.P9288820387589926577

`filter[A385656(n+1), A188641(#)]`
-/

namespace A385640.P9288820387589926577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A385640.P9288820387589926577

noncomputable section

/-- A385640: Numbers k such that the sum of the digits of k divides k and the sum of the digits of k^2 divides k^2.

Offset 1, canonical program `A385640.P9288820387589926577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640 (n : ℕ) : ℤ :=
  A385640.P9288820387589926577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640.provenance : SequenceMachineLib.Provenance := .conjectured

